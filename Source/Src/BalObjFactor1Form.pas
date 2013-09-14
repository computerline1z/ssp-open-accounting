unit BalObjFactor1Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption, XLSReadWriteII;

type
  TBalObjFactor1Frm = class(TForm)
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
    Col_Name: TdxDBGridColumn;
    Col_No: TdxDBGridCalcColumn;
    Col_Co: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    Col_ID: TdxDBGridPopupColumn;
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
    qryBeginObjOBJECT_ID: TWideStringField;
    qryBeginObjOTYPE_ID: TSmallintField;
    qryBeginObjACCOUNT_ID: TWideStringField;
    qryBeginObjFACTOR_ID: TWideStringField;
    qryBeginObjFACTOR_TYPE: TSmallintField;
    qryBeginObjPERIOD_ID: TSmallintField;
    qryBeginObjBEGIN_DEBIT: TIBOFloatField;
    qryBeginObjBEGIN_CREDIT: TIBOFloatField;
    qryBeginObjOBJECT_NAME: TWideStringField;
    grdObjFACTOR_ID: TdxDBGridPopupColumn;
    qryBeginObjKF: TWideStringField;
    qryBeginObjFACTOR_ID_1: TWideStringField;
    qryBeginObjFACTOR_TYPE_1: TSmallintField;
    grdObjFACTOR_ID_1: TdxDBGridPopupColumn;
    qryBeginObjBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure Col_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure qryBeginObjNewRecord(DataSet: TDataSet);
    procedure grdObjFACTOR_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryBeginObjAfterInsert(DataSet: TDataSet);
    procedure qryBeginObjBeforePost(DataSet: TDataSet);
    procedure qryBeginObjPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryBeginObjBeforeDelete(DataSet: TDataSet);
    procedure qryBeginObjBeforeEdit(DataSet: TDataSet);
    procedure qryBeginObjBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure grdObjFACTOR_ID_1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BalObjFactor1Frm: TBalObjFactor1Frm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm, Cell,
  dxTreeGridMenus, Functions;


{$R *.dfm}

procedure TBalObjFactor1Frm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  
  if prmUSEUPPERCASE then
  begin
    Col_ID.CharCase:=ecUpperCase;
    dxDBPopupEdit1.CharCase:=ecUpperCase;
  end;
  Col_No.SummaryFooterFormat:=TIENTE_FORMAT;
  Col_Co.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBeginObjBEGIN_DEBIT.DisplayFormat:=TIENTE_FORMAT;
  qryBeginObjBEGIN_CREDIT.DisplayFormat:=TIENTE_FORMAT;

  with MainDM do
  begin
    FilterAccType:=26;
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
procedure TBalObjFactor1Frm.Col_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryBeginObj.Edit;
    qryBeginObjOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryBeginObjOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TBalObjFactor1Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF qryBeginObj.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBeginObj.Post;

  qryBeginObj.Close;
end;

procedure TBalObjFactor1Frm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  if qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    qryPAccACCOUNT_ID.FocusControl;
    exit;
  end;
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TBalObjFactor1Frm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TBalObjFactor1Frm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TBalObjFactor1Frm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    //TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBalObjFactor1Frm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TBalObjFactor1Frm.grdObjEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  if grdObj.FocusedField.FieldName='OBJECT_ID' then
    MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger
  else if grdObj.FocusedField.FieldName='FACTOR_ID' then
    MainDM.CurObjTypeID:=MainDM.qryPAccDTYPE_ID.AsInteger
  else if grdObj.FocusedField.FieldName='FACTOR_ID_1' then
    MainDM.CurObjTypeID:=MainDM.qryPAccDTYPE_ID_1.AsInteger;
end;

procedure TBalObjFactor1Frm.qryBeginObjNewRecord(DataSet: TDataSet);
begin
  qryBeginObjPERIOD_ID.AsInteger:=CurrentPeriod;
  qryBeginObjOTYPE_ID.AsInteger:=MainDM.qryPAccOTYPE_ID.AsInteger;
  qryBeginObjFACTOR_TYPE.AsInteger:=MainDM.qryPAccDTYPE_ID.AsInteger;
  qryBeginObjFACTOR_TYPE_1.AsInteger:=MainDM.qryPAccDTYPE_ID_1.AsInteger;
  qryBeginObjACCOUNT_ID.Value:=MainDM.qryPAccACCOUNT_ID.Value;
  qryBeginObjBRANCH_ID.Value := vpBranch_id;
end;

procedure TBalObjFactor1Frm.grdObjFACTOR_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TBalObjFactor1Frm.qryBeginObjAfterInsert(DataSet: TDataSet);
begin
  qryBeginObjOBJECT_ID.FocusControl;
end;

procedure TBalObjFactor1Frm.qryBeginObjBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then Exit;

  if IsNotHasData(qryBeginObjOBJECT_ID) then
  begin
    ShowMessageUnicode(65);
    qryBeginObjOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryBeginObjFACTOR_ID) then
  begin
    ShowMessageUnicode(65);
    qryBeginObjFACTOR_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryBeginObjFACTOR_ID_1) then
  begin
    ShowMessageUnicode(65);
    qryBeginObjFACTOR_ID_1.FocusControl;
    Abort;
    exit;
  end;
end;

procedure TBalObjFactor1Frm.qryBeginObjPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  rs:=ProcessErr(E,'',0);
  case rs of
    -803://Trung khoa
    begin
      ShowMessageUnicode(45,e.Message,0);
      qryBeginObjOBJECT_ID.FocusControl;
    end;
    -530://khoa ngoai
    begin
      if MainDM.CheckObjectField(qryBeginObjOBJECT_ID,MainDM.qryPAccOTYPE_ID.AsInteger) then
      begin
        qryBeginObjFACTOR_ID.FocusControl;
        ShowMessageUnicode(46,e.Message,0);
      end;
    end;
  end;
end;

procedure TBalObjFactor1Frm.qryBeginObjBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TBalObjFactor1Frm.qryBeginObjBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TBalObjFactor1Frm.qryBeginObjBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TBalObjFactor1Frm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TBalObjFactor1Frm.grdObjFACTOR_ID_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
	if Accept then
    Text := vpItemID;
end;

end.

