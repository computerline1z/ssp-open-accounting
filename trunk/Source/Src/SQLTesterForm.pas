unit SQLTesterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption, ElACtrls, ElBtnCtl, ElPopBtn, ElPgCtl,
  ElXPThemedControl, ImgList, IBODataset, DBActns, ActnList, ElPanel;

type
  TSQLTesterFrm = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    Splitter1: TSplitter;
    gridResult: TdxDBGrid;
    qrySQLLOG: TIBOQuery;
    dsSQLLOG: TDataSource;
    qryExecuteSQL: TIBOQuery;
    dsExecuteSQL: TDataSource;
    qrySQLLOGSQL_ID: TSmallintField;
    qrySQLLOGSQL_NAME: TWideStringField;
    qrySQLLOGSQL_TEXT: TMemoField;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acPost: TDataSetPost;
    acRun: TAction;
    ElFormCaption1: TElFormCaption;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    acDelete: TDataSetDelete;
    acCancel: TDataSetCancel;
    ElPanel1: TElPanel;
    ElPageControl1: TElPageControl;
    ElTabSheet1: TElTabSheet;
    memoSQLEdit: TdxDBMemo;
    ElTabSheet2: TElTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1SQL_ID: TdxDBGridMaskColumn;
    dxDBGrid1SQL_NAME: TdxDBGridMaskColumn;
    dxDBGrid1SQL_TEXT: TdxDBGridMemoColumn;
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure qrySQLLOGNewRecord(DataSet: TDataSet);
    procedure acRunExecute(Sender: TObject);
    procedure gridResultMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qrySQLLOGBeforeDelete(DataSet: TDataSet);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridResultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryExecuteSQLError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrySQLLOGAfterInsert(DataSet: TDataSet);
  private
  SQL_ID:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLTesterFrm: TSQLTesterFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, AccountArise, Functions,
  SQLParamsForm, HtmlHlp;


{$R *.dfm}

procedure TSQLTesterFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
    
  SQLTesterFrm:=nil;
end;

procedure TSQLTesterFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TSQLTesterFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  qrySQLLOG.Open;
  qrySQLLOG.Last;
  SQL_ID:=qrySQLLOGSQL_ID.AsInteger+1;
end;

procedure TSQLTesterFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  qrySQLLOG.Close;
end;

procedure TSQLTesterFrm.dxDBGrid2DblClick(Sender: TObject);
begin
    ElPageControl1.ActivePage:=ElTabSheet1;
end;

procedure TSQLTesterFrm.qrySQLLOGNewRecord(DataSet: TDataSet);
begin
  qrySQLLOGSQL_ID.AsInteger:=SQL_ID;
  SQL_ID:=SQL_ID+1;
end;

procedure TSQLTesterFrm.acRunExecute(Sender: TObject);
var col: TdxDBTreeListColumn;
    i,col_Count:integer;
    SQLStatement : string;
    totalWidth:integer;
    rsInputParam:Integer;
begin
  totalWidth:=0;
  if qryExecuteSQL.Active then qryExecuteSQL.Close;
  SQLStatement:=SSPDecode(trim(memoSQLEdit.Text));

  if SQLStatement='' then Exit;

    qryExecuteSQL.SQL.Clear;
    qryExecuteSQL.SQL.Add(SQLStatement);
    qryExecuteSQL.Tag:=0;
    qryExecuteSQL.Prepare;

  rsInputParam:=mrOK;
    if qryExecuteSQL.Tag=1 then exit;
    if qryExecuteSQL.ParamCount>0 then
    begin
      with TSQLParamsFrm.Create(self) do
      try
        rsInputParam:= ShowModal;
      finally
        Free;
      end;
    end;
    
  if rsInputParam=mrCancel then Exit;

    if (SQLStatement[1]<>'S') and (SQLStatement[1]<>'s') then
    begin
      if ShowMessageUnicode(189,'',4)=7 then
        exit;
    end;

    qryExecuteSQL.ExecSQL;

  col_Count:=qryExecuteSQL.Fields.Count;
  gridResult.DestroyColumns;
  gridResult.Refresh;
  for i:=0 to col_Count-1 do
  begin
    if (i=0) then
      gridResult.KeyField:=qryExecuteSQL.Fields[i].FieldName;

    if qryExecuteSQL.Fields[i] is TIBOFloatField then
      (qryExecuteSQL.Fields[i] as TIBOFloatField).DisplayFormat:=NGOAITE_FORMAT
    else if qryExecuteSQL.Fields[i] is TDateField then
      (qryExecuteSQL.Fields[i] as TDateField).DisplayFormat:=NGAYTHANG_FORMAT;


    col:=gridResult.CreateColumn(TdxDBGridColumn);
    if qryExecuteSQL.Fields[i] is TIBOFloatField then
      col.SummaryFooterFormat:=NGOAITE_FORMAT;
    col.Caption:=qryExecuteSQL.Fields[i].FieldName;
    col.FieldName:=qryExecuteSQL.Fields[i].FieldName;
    col.HeaderAlignment:=taCenter;
    if col.Width>150 then col.Width:=150;
    totalWidth:=totalWidth+col.Width;
  end;
  if (totalWidth<gridResult.Width+100) then
    gridResult.OptionsView := gridResult.OptionsView + [edgoAutoWidth]
  else
    gridResult.OptionsView := gridResult.OptionsView - [edgoAutoWidth];
end;

procedure TSQLTesterFrm.gridResultMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TSQLTesterFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TSQLTesterFrm.qrySQLLOGBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TSQLTesterFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TSQLTesterFrm.gridResultKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(gridResult, Key, Shift, False);
end;

procedure TSQLTesterFrm.qryExecuteSQLError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  RaiseException:=False;
  qryExecuteSQL.Tag:=1;
  ShowMessageUnicode(188,ErrorMessage.Text,0);
end;

procedure TSQLTesterFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TSQLTesterFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TSQLTesterFrm.qrySQLLOGAfterInsert(DataSet: TDataSet);
begin
  qrySQLLOGSQL_TEXT.FocusControl;
end;

end.
