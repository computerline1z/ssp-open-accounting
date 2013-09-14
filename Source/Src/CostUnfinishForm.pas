unit CostUnfinishForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TCostUnfinishFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    lociKH: TdxLayoutItem;
    colMaTP: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxPopupEdit1: TdxPopupEdit;
    locFormItem1: TdxLayoutItem;
    dxEdit1: TdxEdit;
    locFormItem3: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qryCostlUnfinish: TIBOQuery;
    dsCostUnfinish: TDataSource;
    grdKHColSLCK: TdxDBGridCalcColumn;
    grdKHColGTCK: TdxDBGridCalcColumn;
    grdKH_PER_CK: TdxDBGridCalcColumn;
    qryCostlUnfinishPERIOD_ID: TSmallintField;
    qryCostlUnfinishMAPX: TWideStringField;
    qryCostlUnfinishMALOAI: TSmallintField;
    qryCostlUnfinishPRODUCTION_ID: TWideStringField;
    qryCostlUnfinishPRODUCTION_TYPE: TSmallintField;
    qryCostlUnfinishUNFINISH_AMOUNT: TIBOFloatField;
    qryCostlUnfinishUNFINISH_VALUE: TIBOFloatField;
    qryCostlUnfinishLABOUR_COST: TIBOFloatField;
    qryCostlUnfinishMATERIAL_COST: TIBOFloatField;
    qryCostlUnfinishOTHER_COST: TIBOFloatField;
    qryCostlUnfinishOBJECT_NAME: TWideStringField;
    grdKHLABOUR_COST: TdxDBGridMaskColumn;
    grdKHMATERIAL_COST: TdxDBGridMaskColumn;
    grdKHOTHER_COST: TdxDBGridMaskColumn;
    locFormItem9: TdxLayoutItem;
    btnPreCal: TElPopupButton;
    locFormItem10: TdxLayoutItem;
    spnFromMonth: TdxSpinEdit;
    locFormItem11: TdxLayoutItem;
    spnFromYear: TdxSpinEdit;
    qryCostlUnfinishCOMPLETE_PERCENT: TIBOFloatField;
    qryCostlUnfinishEXTRA_MAT_PERCENT: TIBOFloatField;
    qryCostlUnfinishOTHER_PERCENT: TIBOFloatField;
    qryCostlUnfinishLABOR_PERCENT: TIBOFloatField;
    qryCostlUnfinishMATERIAL_PERCENT: TIBOFloatField;
    grdKHCOMPLETE_PERCENT: TdxDBGridCalcColumn;
    grdKHEXTRA_MAT_PERCENT: TdxDBGridCalcColumn;
    grdKHOTHER_PERCENT: TdxDBGridCalcColumn;
    grdKHLABOR_PERCENT: TdxDBGridCalcColumn;
    grdKHMATERIAL_PERCENT: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure colMaTPCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure qryCostlUnfinishAfterInsert(DataSet: TDataSet);
    procedure qryCostlUnfinishBeforeDelete(DataSet: TDataSet);
    procedure qryCostlUnfinishBeforeEdit(DataSet: TDataSet);
    procedure qryCostlUnfinishBeforeInsert(DataSet: TDataSet);
    procedure qryCostlUnfinishBeforePost(DataSet: TDataSet);
    procedure qryCostlUnfinishNewRecord(DataSet: TDataSet);
    procedure qryCostlUnfinishPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
   
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure spnFromMonthChange(Sender: TObject);
    procedure spnFromYearChange(Sender: TObject);
    procedure qryCostlUnfinishAfterPost(DataSet: TDataSet);
    procedure qryCostlUnfinishCOMPLETE_PERCENTChange(Sender: TField);
  private
    prev_per_NC : double;
    prev_per_NVL: double;
    prev_per_SXC: double;
    prev_per_NVLP: double;
  public
    { Public declarations }
  end;

var
  CostUnfinishFrm: TCostUnfinishFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp, DateUtils;


{$R *.dfm}

procedure TCostUnfinishFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxPopupEdit1.CharCase:=ecUpperCase;
    colMaTP.CharCase:=ecUpperCase;
  end;

  {locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;}

  spnFromMonth.IntValue := MonthOf(workingdate);
  spnFromYear.IntValue := YearOf(workingdate);

  grdKHColSLCK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHColGTCK.SummaryFooterFormat:=TIENTE_FORMAT;

  qryCostlUnfinishUNFINISH_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryCostlUnfinishMATERIAL_COST.DisplayFormat:=TIENTE_FORMAT;
  qryCostlUnfinishLABOUR_COST.DisplayFormat:=TIENTE_FORMAT;
  qryCostlUnfinishOTHER_COST.DisplayFormat:=TIENTE_FORMAT;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TCostUnfinishFrm.colMaTPCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryCostlUnfinish.Edit;
    qryCostlUnfinishPRODUCTION_ID.Value := vpItemID;
    Text := vpItemID;
    qryCostlUnfinishOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TCostUnfinishFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCostlUnfinish.Close;
end;

procedure TCostUnfinishFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TCostUnfinishFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TCostUnfinishFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TCostUnfinishFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TCostUnfinishFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TCostUnfinishFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active:=dxBarButton1.Down;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishAfterInsert(
  DataSet: TDataSet);
begin
  qryCostlUnfinishPRODUCTION_ID.FocusControl;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishBeforeDelete(
  DataSet: TDataSet);
begin

  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishBeforeEdit(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishBeforeInsert(DataSet: TDataSet);
begin
  
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishBeforePost(
  DataSet: TDataSet);
begin
  if KiemtraHople = False then
  begin
    ShowHintBoxInComponent(self,qryCostlUnfinish,'PRODUCTION_ID',46);
    //ShowMessageUnicode(46);
    //qryCostlUnfinishPRODUCTION_ID.FocusControl;
    Abort;
    exit;
  end;
  //qryCostlUnfinishPERIOD_ID.Value := CurrentPeriod;
  qryCostlUnfinishPERIOD_ID.Value := spnFromYear.IntValue * 12 + spnFromMonth.IntValue;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishNewRecord(
  DataSet: TDataSet);
begin
  qryCostlUnfinishMAPX.Value := dxPopupEdit1.Text;
  qryCostlUnfinishMALOAI.AsInteger :=6;
  qryCostlUnfinishPRODUCTION_TYPE.AsInteger:=2;

  qryCostlUnfinishLABOR_PERCENT.Value := prev_per_NC ;
  qryCostlUnfinishMATERIAL_PERCENT.Value  := prev_per_NVL ;
  qryCostlUnfinishOTHER_PERCENT.Value := prev_per_SXC ;
  qryCostlUnfinishEXTRA_MAT_PERCENT.Value := prev_per_NVLP ;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
rs : Integer;
begin
  Action := daAbort;
  rs:=ProcessErr(E,'',0);
  case rs of
    -803://Trung khoa
    begin
      ShowMessageUnicode(163);
    end;
    -530://khoa ngoai
    begin
      ShowMessageUnicode(164);
    end;
  end;
end;

function TCostUnfinishFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryCostlUnfinish.State in [dsInsert, dsEdit]) then exit;
  
  Result:=MainDM.CheckObject(qryCostlUnfinishPRODUCTION_ID.Value,2);
  if Result then
  begin
    if qryCostlUnfinishPRODUCTION_ID.Value <> MainDM.CurObjID then
      qryCostlUnfinishPRODUCTION_ID.Value := MainDM.CurObjID;

    qryCostlUnfinishOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryCostlUnfinishOBJECT_NAME.Clear;
end;

procedure TCostUnfinishFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'PRODUCTION_ID') then
    if KiemtraHople=False then
    begin
      qryCostlUnfinishPRODUCTION_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TCostUnfinishFrm.dxPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;
end;

procedure TCostUnfinishFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
end;

procedure TCostUnfinishFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit1.Text:= MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value;
    //Thinh sua
    if MainDM.qryPComObjOBJECT_NAME.IsNull then
      dxEdit1.Text:= ''
    else
      dxEdit1.Text:=MainDM.qryPComObjOBJECT_NAME.value;
      //dsPComObj.DataSet.FieldByName('OBJECT_NAME').Value;
      
    grdKH.SetFocus;
  end;
end;

procedure TCostUnfinishFrm.dxPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  begin
      if not CheckObject(dxPopupEdit1.Text,6) then
      begin
        HintBox(100,self,dxPopupEdit1);
        //ShowMessageUnicode(100);
        //dxPopupEdit1.SetFocus;
        exit;
      end;
    if dxPopupEdit1.Text<>CurObjID then
      dxPopupEdit1.Text:=CurObjID;
    dxEdit1.Text:=CurObjName;
  end;
  if qryCostlUnfinish.Active then exit;
  qryCostlUnfinish.ParamByName('MAPX').Value:=dxPopupEdit1.Text;
  qryCostlUnfinish.ParamByName('PERIOD_ID').Value:=spnFromYear.IntValue*12+spnFromMonth.IntValue;
  qryCostlUnfinish.Open;
end;

procedure TCostUnfinishFrm.dxPopupEdit1Change(Sender: TObject);
begin
  qryCostlUnfinish.Close;
end;

procedure TCostUnfinishFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TCostUnfinishFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TCostUnfinishFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TCostUnfinishFrm.spnFromMonthChange(Sender: TObject);
begin
  qryCostlUnfinish.Close;
  dxPopupEdit1Exit(sender);
end;

procedure TCostUnfinishFrm.spnFromYearChange(Sender: TObject);
begin
  qryCostlUnfinish.Close;
  dxPopupEdit1Exit(sender);
end;

procedure TCostUnfinishFrm.qryCostlUnfinishAfterPost(DataSet: TDataSet);
begin
  prev_per_NC := qryCostlUnfinishLABOR_PERCENT.Value;
  prev_per_NVL := qryCostlUnfinishMATERIAL_PERCENT.Value;
  prev_per_SXC := qryCostlUnfinishOTHER_PERCENT.Value;
  prev_per_NVLP := qryCostlUnfinishEXTRA_MAT_PERCENT.Value;
end;

procedure TCostUnfinishFrm.qryCostlUnfinishCOMPLETE_PERCENTChange(
  Sender: TField);
begin
  qryCostlUnfinishLABOR_PERCENT.Value := qryCostlUnfinishCOMPLETE_PERCENT.Value;
  qryCostlUnfinishMATERIAL_PERCENT.Value  := 0 ;
  qryCostlUnfinishOTHER_PERCENT.Value := qryCostlUnfinishCOMPLETE_PERCENT.Value ;
  qryCostlUnfinishEXTRA_MAT_PERCENT.Value := qryCostlUnfinishCOMPLETE_PERCENT.Value ;
end;

end.
