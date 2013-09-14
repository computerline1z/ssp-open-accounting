unit AccBalDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption, XLSReadWriteII;

type
  TAccBalDetailFrm = class(TForm)
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
    locFormItem4: TdxLayoutItem;
    btnUpdateBal: TElPopupButton;
    acUpdateAccBal: TAction;
    procedure FormCreate(Sender: TObject);
    procedure Col_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure acUpdateAccBalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccBalDetailFrm: TAccBalDetailFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm, Cell,
  dxTreeGridMenus;


{$R *.dfm}

procedure TAccBalDetailFrm.FormCreate(Sender: TObject);
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

  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    qryBeginObj.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryBeginObj.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryBeginObj.Open;

    if vpBranch_IsMin <> 1  then
      qryBeginObj.ReadOnly := TRUE
    else
      qryBeginObj.ReadOnly := FALSE;


  end;
  acUpdateAccBal.Enabled := (vpBranch_IsMin = 1);

  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
end;
procedure TAccBalDetailFrm.Col_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryBeginObj.Edit;
    qryBeginObjOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryBeginObjOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TAccBalDetailFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM do
  begin
    IF qryBeginObj.State in [dsInsert, dsEdit] then
      if ShowMessageUnicode(21,'',4)=6 then
        qryBeginObj.Post;

    qryBeginObj.Close;
  end;
end;

procedure TAccBalDetailFrm.dxDBPopupEdit1Exit(Sender: TObject);
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

procedure TAccBalDetailFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TAccBalDetailFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TAccBalDetailFrm.grdObjChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if grdObj.FocusedField.FieldName<>'OBJECT_ID' then
    if MainDM.KiemtrahopleBeginObj=False then
    begin
      MainDM.qryBeginObjOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TAccBalDetailFrm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TAccBalDetailFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAccBalDetailFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TAccBalDetailFrm.acUpdateAccBalExecute(Sender: TObject);
var begindebit, begincredit: double;
begin

    if not ShowMessageUnicode(239,'',4) = 7 then exit;
    with maindm do begin
        qryCommon.SQL.clear;
        qryCommon.params.clear;
        qryCommon.SQL.Text := 'delete from account_bal where period_id = :period_id and account_id = :account_id and branch_id = :branch_id';
        qryCommon.ParamByName('account_id').Value := qryPAccACCOUNT_ID.Value;
        qryCommon.ParamByName('period_id').Value := CurrentPeriod;
        qryCommon.ParamByName('branch_id').Value := vpBranch_id;
        qryCommon.ExecSQL;

        qryCommon.SQL.clear;
        qryCommon.params.clear;
        {sua loi bug ID 804}
        qryCommon.SQL.Text := 'delete from object_bal where period_id = :period_id and account_id = :account_id and branch_id = :branch_id and otype_id <> :otype';
        {end sua loi bug ID 804}
        qryCommon.ParamByName('account_id').Value := qryPAccACCOUNT_ID.Value;
        qryCommon.ParamByName('period_id').Value := CurrentPeriod;
        qryCommon.ParamByName('branch_id').Value := vpBranch_id;
        qryCommon.ParamByName('otype').Value := qryBeginObjOTYPE_ID.Value;
        qryCommon.ExecSQL;

        qryCommon.SQL.clear;
        qryCommon.SQL.Text := 'select sum(begin_debit) begin_debit,sum(begin_credit) begin_credit from object_bal where period_id =:period_id and account_id = :account_id and branch_id = :branch_id';
        qryCommon.Prepare;
        qryCommon.open;
        begincredit := qryCommon.FieldByName('begin_credit').AsFloat;
        begindebit := qryCommon.FieldByName('begin_debit').AsFloat;
        qryCommon.ParamByName('branch_id').Value := vpBranch_id;

        qryCommon.SQL.clear;
        qryCommon.SQL.Text := 'insert into account_bal (account_id,begin_credit,begin_debit,period_id,branch_id) values (:account_id,:begin_credit,:begin_debit,:period_id,:branch_id)';
        qryCommon.ParamByName('begin_credit').value := begincredit;
        qryCommon.ParamByName('begin_debit').value :=  begindebit;
        qryCommon.ParamByName('branch_id').value := vpBranch_id;
        qryCommon.ExecSQL;
    end
end;

end.

