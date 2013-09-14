unit DK_KQKDFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,IBODataset,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList, DefRptTHKQHDKDFrm;

type
  TFrmDK_KQKD = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryDK_KQKD: TIBOQuery;
    dsDK_KQKD: TDataSource;
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
    qryDK_KQKDID: TSmallintField;
    qryDK_KQKDTKNOBDV: TWideStringField;
    qryDK_KQKDTKCOBDV: TWideStringField;
    qryDK_KQKDGHICHU: TWideStringField;
    dxDBGrid1TKNOBDV: TdxDBGridColumn;
    dxDBGrid1TKCOBDV: TdxDBGridColumn;
    dxDBGrid1GHICHU: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryDK_KQKDNewRecord(DataSet: TDataSet);
    procedure qryDK_KQKDAfterInsert(DataSet: TDataSet);
    procedure qryDK_KQKDBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDK_KQKDPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryDK_KQKDDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDK_KQKDBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    ID : integer;  
  public
    constructor create(AOwner : TComponent; AID : integer) ; overload;
  end;

var
  FrmDK_KQKD: TFrmDK_KQKD;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, HtmlHlp;


{$R *.dfm}

procedure TFrmDK_KQKD.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qryDK_KQKD.ParamByName('ID').AsInteger:= ID; //qrDefTongHopKQKD.fieldByName('ID').AsInteger;
  qryDK_KQKD.Open;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TFrmDK_KQKD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryDK_KQKD do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TFrmDK_KQKD.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TFrmDK_KQKD.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TFrmDK_KQKD.qryDK_KQKDNewRecord(DataSet: TDataSet);
begin
  qryDK_KQKD.fieldByname('ID').AsInteger:= ID;//MainDm.qrDefTongHopKQKD.fieldByname('ID').AsInteger;
end;

procedure TFrmDK_KQKD.qryDK_KQKDAfterInsert(DataSet: TDataSet);
begin
  qryDK_KQKD.fieldByName('TKNOBDV').FocusControl;
end;

procedure TFrmDK_KQKD.qryDK_KQKDBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryDK_KQKDTKNOBDV) then
  begin
    ShowMessageUnicode(67);
    qryDK_KQKDTKNOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryDK_KQKDTKCOBDV) then
  begin
    ShowMessageUnicode(67);
    qryDK_KQKDTKCOBDV.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TFrmDK_KQKD.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDK_KQKD.qryDK_KQKDPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'') =-803 then
    qryDK_KQKD.fieldByName('TKNOBDV').FocusControl;
end;

procedure TFrmDK_KQKD.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TFrmDK_KQKD.qryDK_KQKDDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TFrmDK_KQKD.qryDK_KQKDBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

constructor TFrmDK_KQKD.create(AOwner: TComponent; AID: integer);
begin
  ID := AID;
  inherited create(AOwner);
end;

procedure TFrmDK_KQKD.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
