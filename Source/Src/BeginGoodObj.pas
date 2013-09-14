unit BeginGoodObj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption, XLSReadWriteII;

type
  TBeginGoodObjFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdObj: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    acDelete: TDataSetDelete;
    qryBeginObj: TIBOQuery;
    dsBeginObj: TDataSource;
    qryBeginObjGOODS_OBJ: TWideStringField;
    qryBeginObjGOODS_TYPE: TSmallintField;
    qryBeginObjOBJECT_ID: TWideStringField;
    qryBeginObjOTYPE_ID: TSmallintField;
    qryBeginObjACCOUNT_ID: TWideStringField;
    qryBeginObjPERIOD_ID: TSmallintField;
    qryBeginObjBEGIN_AMOUNT: TIBOFloatField;
    qryBeginObjBEGIN_VALUE: TIBOFloatField;
    grdObjBEGIN_AMOUNT: TdxDBGridMaskColumn;
    grdObjBEGIN_VALUE: TdxDBGridMaskColumn;
    grdObjOBJECT_ID: TdxDBGridPopupColumn;
    grdObjGOODS_OBJ: TdxDBGridPopupColumn;
    qryBeginObjBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryBeginObjNewRecord(DataSet: TDataSet);
    procedure grdObjOBJECT_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure qryBeginObjAfterInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryBeginObjPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormShow(Sender: TObject);
    procedure qryBeginObjBeforePost(DataSet: TDataSet);
    procedure qryBeginObjBeforeDelete(DataSet: TDataSet);
    procedure qryBeginObjBeforeEdit(DataSet: TDataSet);
    procedure qryBeginObjBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeginGoodObjFrm: TBeginGoodObjFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm, Cell,
  dxTreeGridMenus, Math, Functions;
                                                       

{$R *.dfm}

procedure TBeginGoodObjFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  grdObjBEGIN_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdObjBEGIN_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBeginObjBEGIN_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryBeginObjBEGIN_VALUE.DisplayFormat:=TIENTE_FORMAT;
  with MainDM do
  begin
    FilterAccType:=25;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
  qryBeginObj.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBeginObj.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryBeginObj.Open;
  if vpBranch_IsMin <> 1 then
    qryBeginObj.ReadOnly := TRUE
  else
    qryBeginObj.ReadOnly := FALSE;
    
  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
end;
procedure TBeginGoodObjFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If qryBeginObj.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBeginObj.Post;

  qryBeginObj.Close;
end;

procedure TBeginGoodObjFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  if qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    qryPAccACCOUNT_ID.FocusControl;
    exit;
  end;
end;

procedure TBeginGoodObjFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TBeginGoodObjFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TBeginGoodObjFrm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TBeginGoodObjFrm.qryBeginObjNewRecord(DataSet: TDataSet);
begin
  qryBeginObjPERIOD_ID.AsInteger:=CurrentPeriod;
  qryBeginObjACCOUNT_ID.Value:=MainDM.qryPAccACCOUNT_ID.Value;
  qryBeginObjGOODS_TYPE.AsInteger:=2;
  qryBeginObjOTYPE_ID.AsInteger:=MainDM.qryPAccDTYPE_ID.AsInteger;
  qryBeginObjBRANCH_ID.Value := vpBranch_id;
end;

procedure TBeginGoodObjFrm.grdObjOBJECT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TBeginGoodObjFrm.grdObjEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  if grdObj.FocusedField.FieldName='GOODS_OBJ' then
    MainDM.CurObjTypeID:=2;
  if grdObj.FocusedField.FieldName='OBJECT_ID' then
    MainDM.CurObjTypeID:=MainDM.qryPAccDTYPE_ID.AsInteger;
end;

procedure TBeginGoodObjFrm.qryBeginObjAfterInsert(DataSet: TDataSet);
begin
  qryBeginObjOBJECT_ID.FocusControl;
end;

procedure TBeginGoodObjFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBeginGoodObjFrm.qryBeginObjPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  kq:Integer;
begin
  Action:=daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  kq:=ProcessErr(E,'',1);
  if kq=-530 then//Khoa ngoai
    ShowMessageUnicode(162,e.Message,0);

  qryBeginObjOBJECT_ID.FocusControl;
end;

procedure TBeginGoodObjFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TBeginGoodObjFrm.qryBeginObjBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TBeginGoodObjFrm.qryBeginObjBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TBeginGoodObjFrm.qryBeginObjBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TBeginGoodObjFrm.qryBeginObjBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

end.

