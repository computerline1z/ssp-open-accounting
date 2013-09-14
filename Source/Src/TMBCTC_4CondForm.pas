unit TMBCTC_4CondForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList;

type
  TTMBCTC_4CondFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryDKSXKD: TIBOQuery;
    dsDKSXKD: TDataSource;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    dxDBGrid1TKNOBDV: TdxDBGridColumn;
    dxDBGrid1TKCOBDV: TdxDBGridColumn;
    dxDBGrid1GHICHU: TdxDBGridColumn;
    qryDKSXKDID: TSmallintField;
    qryDKSXKDTKNOBDV: TWideStringField;
    qryDKSXKDTKCOBDV: TWideStringField;
    qryDKSXKDGHICHU: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryDKSXKDNewRecord(DataSet: TDataSet);
    procedure qryDKSXKDAfterInsert(DataSet: TDataSet);
    procedure qryDKSXKDBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDKSXKDPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryDKSXKDDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDKSXKDBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    CurID:SmallInt;//ID hien tai cua chi tieu ben kia
    { Public declarations }
  end;

var
  TMBCTC_4CondFrm: TTMBCTC_4CondFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions , TMBCTC_4Form, HtmlHlp;


{$R *.dfm}

procedure TTMBCTC_4CondFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TTMBCTC_4CondFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryDKSXKD do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TTMBCTC_4CondFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TTMBCTC_4CondFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TTMBCTC_4CondFrm.qryDKSXKDNewRecord(DataSet: TDataSet);
begin
  qryDKSXKD.FieldByName('ID').AsInteger:= CurID;
end;

procedure TTMBCTC_4CondFrm.qryDKSXKDAfterInsert(DataSet: TDataSet);
begin
  qryDKSXKD.FieldByName('TKNOBDV').FocusControl;
end;

procedure TTMBCTC_4CondFrm.qryDKSXKDBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryDKSXKDTKNOBDV) then
  begin
    ShowMessageUnicode(67);
    qryDKSXKDTKNOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryDKSXKDTKCOBDV) then
  begin
    ShowMessageUnicode(67);
    qryDKSXKDTKCOBDV.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TTMBCTC_4CondFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTMBCTC_4CondFrm.qryDKSXKDPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
   if ProcessErr(E,'') =-803 then
    qryDKSXKD.FieldByName('TKNOBDV').FocusControl;
end;

procedure TTMBCTC_4CondFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TTMBCTC_4CondFrm.qryDKSXKDDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TTMBCTC_4CondFrm.qryDKSXKDBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TTMBCTC_4CondFrm.FormShow(Sender: TObject);
begin
   qryDKSXKD.ParamByName('ID').AsInteger:=CurID;
   qryDKSXKD.Open;

  SetVisible(Self);   
end;

end.
