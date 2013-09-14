unit BalFactorForeign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  TBalFactorForeignFrm = class(TForm)
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
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
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
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryBalForeign: TIBOQuery;
    qryBalForeignOTYPE_ID: TSmallintField;
    qryBalForeignPERIOD_ID: TSmallintField;
    qryBalForeignOBJECT_ID: TWideStringField;
    qryBalForeignACCOUNT_ID: TWideStringField;
    qryBalForeignOBJECT_NAME: TWideStringField;
    qryBalForeignCURRENCY_ID: TWideStringField;
    qryBalForeignBEGIN_DEBIT: TIBOFloatField;
    qryBalForeignBEGIN_CREDIT: TIBOFloatField;
    dsBalForeign: TDataSource;
    qryBalForeignFACTOR_ID: TWideStringField;
    qryBalForeignFACTOR_TYPE: TSmallintField;
    grdObjFACTOR_ID: TdxDBGridPopupColumn;
    grdObjCURRENCY_ID: TdxDBGridPopupColumn;
    qryBalForeignKF: TWideStringField;
    qryBalForeignBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure Col_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjEnter(Sender: TObject);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjFACTOR_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjCURRENCY_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryBalForeignAfterInsert(DataSet: TDataSet);
    procedure qryBalForeignNewRecord(DataSet: TDataSet);
    procedure grdObjEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure qryBalForeignBeforePost(DataSet: TDataSet);
    procedure qryBalForeignPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryBalForeignBeforeDelete(DataSet: TDataSet);
    procedure qryBalForeignBeforeEdit(DataSet: TDataSet);
    procedure qryBalForeignBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BalFactorForeignFrm: TBalFactorForeignFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Functions;


{$R *.dfm}

procedure TBalFactorForeignFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  Col_No.SummaryFooterFormat:=NGOAITE_FORMAT;
  Col_Co.SummaryFooterFormat:=NGOAITE_FORMAT;
  qryBalForeignBEGIN_DEBIT.DisplayFormat:=NGOAITE_FORMAT;
  qryBalForeignBEGIN_CREDIT.DisplayFormat:=NGOAITE_FORMAT;

  if prmUSEUPPERCASE then
  begin
    Col_ID.CharCase:=ecUpperCase;
    dxDBPopupEdit1.CharCase:=ecUpperCase;
  end;

  with MainDM do
  begin
    FilterAccType:=21;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
  qryBalForeign.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBalForeign.ParamByName('BRANCH_ID').Value:= vpBranch_id;
  qryBalForeign.Open;



  with MainDM do
  begin
    qryPCurrency.Open;
    qryPAcc.Open;

    if CurrentPeriod=BeginPeriod then
    begin
      qryBalForeign.ReadOnly := False;
    end
    else
    begin
      btnIns.Visible:=False;
      btnDel.Visible:=False;
      btnPost.Visible:=False;
      btnCancel.Visible:=False;
      qryBalForeign.ReadOnly := True;
      col_ID.DisableEditor:=True;
      grdObj.ShowNewItemRow:=False;
    end;
  end;
  if vpBranch_IsMin <> 1 then
    qryBalForeign.ReadOnly := TRUE
  else qryBalForeign.ReadOnly := FALSE; 

  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TBalFactorForeignFrm.Col_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryBalForeign.Edit;
    qryBalForeignOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryBalForeignOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TBalFactorForeignFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF qryBalForeign.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBalForeign.Post;

  qryBalForeign.Close;
end;

procedure TBalFactorForeignFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  if qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    qryPAccACCOUNT_ID.FocusControl;
    exit;
  end;
  MainDM.CurObjTypeID:= MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TBalFactorForeignFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TBalFactorForeignFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TBalFactorForeignFrm.grdObjEnter(Sender: TObject);
begin
  if qryBalForeign.RecordCount=0 then
    qryBalForeign.Insert;
end;

procedure TBalFactorForeignFrm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBalFactorForeignFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TBalFactorForeignFrm.grdObjFACTOR_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TBalFactorForeignFrm.grdObjCURRENCY_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TBalFactorForeignFrm.qryBalForeignAfterInsert(DataSet: TDataSet);
begin
  qryBalForeignOBJECT_ID.FocusControl;
end;

procedure TBalFactorForeignFrm.qryBalForeignNewRecord(DataSet: TDataSet);
begin
  qryBalForeignOTYPE_ID.Value:=MainDM.qryPAccOTYPE_ID.Value;
  qryBalForeignFACTOR_TYPE.Value:=MainDM.qryPAccDTYPE_ID.Value;
  qryBalForeignACCOUNT_ID.Value:=MainDM.qryPAccACCOUNT_ID.Value;
  qryBalForeignPERIOD_ID.Value:=CurrentPeriod;
  qryBalForeignBRANCH_ID.Value := vpBranch_id;
end;

procedure TBalFactorForeignFrm.grdObjEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  if grdObj.FocusedField.FieldName='OBJECT_ID' then
    MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger
  else if grdObj.FocusedField.FieldName='FACTOR_ID' then
    MainDM.CurObjTypeID:=MainDM.qryPAccDTYPE_ID.AsInteger;
end;

procedure TBalFactorForeignFrm.qryBalForeignBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryBalForeignOBJECT_ID) then
  begin
    ShowMessageUnicode(65);
    qryBalForeignOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryBalForeignFACTOR_ID) then
  begin
    ShowMessageUnicode(65);
    qryBalForeignFACTOR_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryBalForeignCURRENCY_ID) then
  begin
    ShowMessageUnicode(65);
    qryBalForeignCURRENCY_ID.FocusControl;
    Abort;
    exit;
  end;
end;

procedure TBalFactorForeignFrm.qryBalForeignPostError(DataSet: TDataSet;
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
      qryBalForeignOBJECT_ID.FocusControl;
    end;
    -530://khoa ngoai
    begin
      if MainDM.CheckObjectField(qryBalForeignOBJECT_ID,MainDM.qryPAccOTYPE_ID.AsInteger) then
      if MainDM.CheckCurrency(qryBalForeignCURRENCY_ID) then
      begin
        qryBalForeignFACTOR_ID.FocusControl;
        ShowMessageUnicode(46,e.Message,0);
      end;
    end;
  end;
end;

procedure TBalFactorForeignFrm.qryBalForeignBeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TBalFactorForeignFrm.qryBalForeignBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TBalFactorForeignFrm.qryBalForeignBeforeInsert(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TBalFactorForeignFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
