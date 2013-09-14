unit PolicyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,DateUtils,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,ppCtrls,
  TntButtons, DBActns, ActnList, dxBar, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxGrClEx, ElCLabel, ElLabel, IBODataset, dxLayout,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppEndUsr, ppComm, ppRelatv,
  ppDB, ppDBPipe;

type
  TPolicyFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdObj: TdxDBGrid;
    locFormGrd: TdxLayoutItem;
    grdObj_ID: TdxDBGridColumn;
    grdObj_Name: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    grdObj_Other: TdxDBGridColumn;
    grdObj_Sub1: TdxDBGridColumn;
    grdObj_Sub2: TdxDBGridColumn;
    grdObj_Note: TdxDBGridColumn;
    locFormItem3: TdxLayoutItem;
    TntBitBtn1: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn2: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn3: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn4: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn5: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    TntBitBtn6: TELPopupButton;
    locFormGroup1: TdxLayoutGroup;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    grdObjGrp: TdxDBGridPopupColumn;
    grdObjINSURER_ID: TdxDBGridPopupColumn;
    grdObjCREATE_DATE: TdxDBGridDateColumn;
    qryPolicy: TIBOQuery;
    qryPolicyOBJECT_STATUS: TSmallintField;
    qryPolicyOBJECT_NAME: TWideStringField;
    qryPolicyOTHER_NAME: TWideStringField;
    qryPolicySUBINFO_1: TWideStringField;
    qryPolicySUBINFO_2: TWideStringField;
    qryPolicyOBJECT_NOTES: TWideStringField;
    qryPolicyOBJGRP_ID: TWideStringField;
    qryPolicyOACCOUNT_ID: TWideStringField;
    qryPolicyDEBT_LEN: TSmallintField;
    qryPolicyMAKH: TWideStringField;
    qryPolicyLOAIKH: TSmallintField;
    qryPolicyCREATE_DATE: TDateField;
    dsPolicy: TDataSource;
    qryPolicyPOLICY_ID: TWideStringField;
    qryPolicyPOLICY_TYPE: TSmallintField;
    qryPolicyINVOICE_DATE: TDateField;
    qryPolicyINVOICE_RECEIVE: TDateField;
    qryPolicyINVOICE_SEND: TDateField;
    grdObjINVOICE_DATE: TdxDBGridDateColumn;
    grdObjINVOICE_RECEIVE: TdxDBGridDateColumn;
    grdObjINVOICE_SEND: TdxDBGridDateColumn;
    grdObjOBJECT_STATUS: TdxDBGridCheckColumn;
    qrySubPolicy: TIBOQuery;
    qryPolicyPTHOAHONG: TIBOFloatField;
    grdObjPTHOAHONG: TdxDBGridMaskColumn;
    qryPolicyTIENTE: TWideStringField;
    qryPolicyTYGIAHT: TIBOFloatField;
    grdObjTIENTE: TdxDBGridPopupColumn;
    grdObjPRIMIUM: TdxDBGridCalcColumn;
    qryPolicyCUSTOMER_ID: TWideStringField;
    qryPolicyCUSTOMER_TYPE: TSmallintField;
    qryPolicyINSURER_ID: TWideStringField;
    qryPolicyINSURER_TYPE: TSmallintField;
    grdObjCUSTOMER_ID: TdxDBGridPopupColumn;
    grdObjMAKH: TdxDBGridPopupColumn;
    qryPolicyPREMIUM: TIBOFloatField;
    qryPolicyTAX_VALUE: TIBOFloatField;
    qryPolicyPTTHUE: TSmallintField;
    grdObjTAX_VALUE: TdxDBGridMaskColumn;
    grdObjPTTHUE: TdxDBGridMaskColumn;
    grdObjTOTALNT: TdxDBGridColumn;
    grdObjTOTALVND: TdxDBGridColumn;
    grdObjHOAHONGNT: TdxDBGridColumn;
    grdObjTIENTHUENT: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    qryPolicyBRANCH_ID: TWideStringField;
    grdObjBRANCH_ID: TdxDBGridPopupColumn;
    qryPolicyTOTALVND: TIBOFloatField;
    qryPolicyTOTALNT: TIBOFloatField;
    deditDenngay: TdxDateEdit;
    locFormItem1: TdxLayoutItem;
    deditTuNgay: TdxDateEdit;
    locFormItem10: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    chkInv: TdxCheckEdit;
    locFormItem12: TdxLayoutItem;
    chkInfo: TdxCheckEdit;
    locFormItem13: TdxLayoutItem;
    qryPolicyHOAHONGNT: TIBOFloatField;
    qryPolicyHOAHONGVND: TIBOFloatField;
    qryPolicyTIENTHUENT: TIBOFloatField;
    qryPolicyTIENTHUEVND: TIBOFloatField;
    qryPolicyPTTHUENT: TIBOFloatField;
    qryPolicyTHUENT_NT: TIBOFloatField;
    qryPolicyTHUENT_VND: TIBOFloatField;
    qryPolicyDATRA_NT: TIBOFloatField;
    qryPolicyDATRA_VN: TIBOFloatField;
    qryPolicyCONLAI_NT: TIBOFloatField;
    qryPolicyCONLAI_VN: TIBOFloatField;
    qryPolicyLOAIBH: TWideStringField;
    qryPolicySHTKPTRA: TWideStringField;
    qryPolicyINSURER_NAME: TWideStringField;
    qryPolicyINSURER_ADDR: TWideStringField;
    qryPolicyINSURER_TAXCODE: TWideStringField;
    qryPolicyCUSTOMER_NAME: TWideStringField;
    qryPolicyCUSTOMER_ADDR: TWideStringField;
    qryPolicyCUSTOMER_TAXCODE: TWideStringField;
    qryPolicyOBJECT_ID: TWideStringField;
    qryPolicyOTYPE_ID: TSmallintField;
    grdObjHOAHONGVND: TdxDBGridColumn;
    grdObjTIENTHUEVND: TdxDBGridColumn;
    grdObjSPTHU: TdxDBGridMaskColumn;
    grdObjPTTHUENT: TdxDBGridMaskColumn;
    grdObjTHUENT_NT: TdxDBGridMaskColumn;
    grdObjTHUENT_VND: TdxDBGridMaskColumn;
    grdObjDATRA_NT: TdxDBGridMaskColumn;
    grdObjDATRA_VN: TdxDBGridMaskColumn;
    grdObjCONLAI_NT: TdxDBGridMaskColumn;
    grdObjCONLAI_VN: TdxDBGridMaskColumn;
    grdObjINSURER_NAME: TdxDBGridColumn;
    grdObjINSURER_ADDR: TdxDBGridColumn;
    grdObjINSURER_TAXCODE: TdxDBGridColumn;
    grdObjCUSTOMER_NAME: TdxDBGridColumn;
    grdObjCUSTOMER_ADDR: TdxDBGridColumn;
    grdObjCUSTOMER_TAXCODE: TdxDBGridColumn;
    qryPolicyINSURER_EMAIL: TWideStringField;
    btnSendMail: TElPopupButton;
    locFormItem14: TdxLayoutItem;
    qryPolicySOTIEN_NT: TIBOFloatField;
    qryPolicySOTIEN_VN: TIBOFloatField;
    qryPolicyKYHT: TSmallintField;
    qryPolicyCUSTOMER_EMAIL: TWideStringField;
    ElPopupButton4: TElPopupButton;
    locFormItem15: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    locFormItem16: TdxLayoutItem;
    qryPolicyCUSTOMER_SUB2: TWideStringField;
    qryPolicyCUSTOMER_SUB3: TWideStringField;
    qryPolicyCUSTOMER_SUB4: TWideStringField;
    qryPolicyCUSTOMER_SUB5: TWideStringField;
    qryPolicyCUSTOMER_SUB6: TWideStringField;
    dbpPolicy: TppDBPipeline;
    dsgPolicy: TppDesigner;
    ReportPolicy: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryPolicyINSURER_SUB3: TWideStringField;
    qrySubPolicyPOLICY_ID: TWideStringField;
    qrySubPolicyPOLICY_TYPE: TSmallintField;
    qrySubPolicyINVOICE_DATE: TDateField;
    qrySubPolicyINVOICE_RECEIVE: TDateField;
    qrySubPolicyINVOICE_SEND: TDateField;
    qrySubPolicyPREMIUM: TIBOFloatField;
    qrySubPolicyTAX_VALUE: TIBOFloatField;
    qrySubPolicyTOTALNT: TIBOFloatField;
    qrySubPolicyTIENTE: TWideStringField;
    qrySubPolicyPTHOAHONG: TIBOFloatField;
    qrySubPolicyHOAHONGNT: TIBOFloatField;
    qrySubPolicyPTTHUE: TSmallintField;
    qrySubPolicyTIENTHUENT: TIBOFloatField;
    qrySubPolicyPTTHUENT: TIBOFloatField;
    qrySubPolicyTHUENT_NT: TIBOFloatField;
    qrySubPolicyCUSTOMER_ID: TWideStringField;
    qrySubPolicyCUSTOMER_TYPE: TSmallintField;
    qrySubPolicyINSURER_ID: TWideStringField;
    qrySubPolicyINSURER_TYPE: TSmallintField;
    qrySubPolicyBRANCH_ID: TWideStringField;
    qrySubPolicyBRANCH_TYPE: TSmallintField;
    qryPolicySUBINFO_3: TWideStringField;
    qryPolicySUBINFO_4: TWideStringField;
    qryPolicySUBINFO_5: TWideStringField;
    qryPolicySUBINFO_6: TWideStringField;
    grdObj_SUB3: TdxDBGridColumn;
    grdObj_SUB4: TdxDBGridColumn;
    grdObj_SUB5: TdxDBGridColumn;
    grdObj_SUB6: TdxDBGridColumn;
    grdObjTYGIAHT: TdxDBGridColumn;
    qryPolicyOBJECT_VALUE: TIBOFloatField;
    qryPolicyLASTUSER_MODIFY: TWideStringField;
    ElPopupButton7: TElPopupButton;
    locFormItem18: TdxLayoutItem;
    qryPolicyNGAYTHU: TDateField;
    grdObjNGAYTHU: TdxDBGridDateColumn;
    qryPolicySPTHU: TWideStringField;
    grdObjINPUT_DATE: TdxDBGridDateColumn;
    qryPolicyINPUT_DATE: TDateField;
    qrySubPolicyINPUT_DATE: TDateField;
    qryPolicyPHAITHUNT: TIBOFloatField;
    qryPolicyPHAITHUVND: TIBOFloatField;
    qryPolicyDATHUNT: TIBOFloatField;
    qryPolicyDATHUVND: TIBOFloatField;
    qryPolicyCONTHUNT: TIBOFloatField;
    qryPolicyCONTHUVND: TIBOFloatField;
    grdObjPHAITHUNT: TdxDBGridColumn;
    grdObjPHAITHUVND: TdxDBGridColumn;
    grdObjDATHUNT: TdxDBGridColumn;
    grdObjDATHUVND: TdxDBGridColumn;
    grdObjCONTHUNT: TdxDBGridColumn;
    grdObjCONTHUVND: TdxDBGridColumn;
    qryPolicyTYGIA: TIBOFloatField;
    grdObjTYGIA: TdxDBGridColumn;
    grdObjDEBT_LEN: TdxDBGridCheckColumn;
    ElPopupButton8: TElPopupButton;
    locFormItem19: TdxLayoutItem;
    dplHoadon: TppDBPipeline;
    rptHoadon: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    DsgHoaDon: TppDesigner;
    pmPrint: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    bbtnInHD: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton1: TdxBarButton;
    qryUpdChk: TIBOQuery;
    qryPolicyCHECKED: TSmallintField;
    IBOStoredProc1: TIBOStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdObjGrpCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjAccCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjINSURER_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryPolicyNewRecord(DataSet: TDataSet);
    procedure qryPolicyAfterDelete(DataSet: TDataSet);
    procedure qryPolicyAfterInsert(DataSet: TDataSet);
    procedure qryPolicyAfterPost(DataSet: TDataSet);
    procedure qryPolicyBeforeDelete(DataSet: TDataSet);
    procedure qryPolicyBeforeEdit(DataSet: TDataSet);
    procedure qryPolicyBeforeInsert(DataSet: TDataSet);
    procedure qryPolicyBeforePost(DataSet: TDataSet);
    procedure qryPolicyDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdObjTIENTECloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjCUSTOMER_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdObjMAKHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure qryPolicyTIENTEChange(Sender: TField);
    procedure qryPolicyPTHOAHONGChange(Sender: TField);
    procedure qryPolicyPTTHUEChange(Sender: TField);
    procedure qryPolicyMAKHChange(Sender: TField);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure qryPolicyPREMIUMChange(Sender: TField);
    procedure qryPolicyTAX_VALUEChange(Sender: TField);
    procedure grdObjBRANCH_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure chkInvChange(Sender: TObject);
    procedure chkInfoChange(Sender: TObject);
    procedure qryPolicyCUSTOMER_IDChange(Sender: TField);
    procedure qryPolicyINSURER_IDChange(Sender: TField);
    procedure qryPolicyBRANCH_IDChange(Sender: TField);
    procedure qryPolicyHOAHONGNTChange(Sender: TField);
    procedure qryPolicyPTTHUENTChange(Sender: TField);
    procedure btnSendMailClick(Sender: TObject);
    procedure qryPolicyTOTALNTChange(Sender: TField);
    procedure qryPolicyTHUENT_NTChange(Sender: TField);
    procedure qryPolicyTIENTHUENTChange(Sender: TField);
    procedure qryPolicyPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryPolicyOBJGRP_IDChange(Sender: TField);
    procedure qrySubPolicyPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdObjChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure qryPolicyFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryPolicyAfterCancel(DataSet: TDataSet);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure grdObjChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure ElPopupButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton8ArrowClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure bbtnInHDClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure grdObjGrpInitPopup(Sender: TObject);
  private
    NgayGuiHD:TDate;
    LOAIDTCHINH,LOAIDTTC:Smallint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PolicyFrm: TPolicyFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, PopupForm, ThuTienBHForm, FactorDetailForm,
  Math, GhiDTBHForm, InsurPriceForm,
  HoadonBHForm, ThayTheHDBHForm, CM_PopupForm, DBFunctions, CM_Functions;


{$R *.dfm}

procedure TPolicyFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
    grdObj_ID.CharCase:=ecUpperCase;

  SetOnFormCreate(Sender as TControl);
  MainDM.CurObjTypeID:=8;

  if PolicyFlagChar='N' then
    deditTungay.Date:= EncodeDate(CurYear-1, CurMonth,1)
  else
  begin
    if CurMonth=1 then
      deditTungay.Date:= EncodeDate(CurYear-1, 11,1)
    else if CurMonth=2 then
      deditTungay.Date:= EncodeDate(CurYear-1, 12,1)
    else
      deditTungay.Date:= EncodeDate(CurYear, CurMonth-2,1);
  end;

  deditDenngay.Date:=EndOfTheMonth(WorkingDate) ;
  qryPolicy.ParamByName('tungay').AsDate:=deditTuNgay.Date;
  qryPolicy.ParamByName('denngay').AsDate:=deditDenNgay.Date;
  qryPolicy.ParamByName('user_id').Value:=CurrentUser;
  qryPolicy.ParamByName('PolicyFlag').AsString:=PolicyFlagChar;

  qryPolicyCREATE_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryPolicyINVOICE_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryPolicyINVOICE_RECEIVE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryPolicyINVOICE_SEND.DisplayFormat:=NGAYTHANG_FORMAT;
  qryPolicyINPUT_DATE.DisplayFormat:=NGAYTHANG_FORMAT;

  qryPolicyTOTALVND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyTOTALNT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyTYGIAHT.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyPREMIUM.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyTAX_VALUE.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyHOAHONGNT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyHOAHONGVND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyTIENTHUENT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyTIENTHUEVND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyTHUENT_NT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyTHUENT_VND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyDATRA_NT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyDATRA_VN.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyCONLAI_NT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyCONLAI_VN.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyPHAITHUNT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyDATHUNT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyCONTHUNT.DisplayFormat:=NGOAITE_FORMAT;
  qryPolicyPHAITHUVND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyDATHUVND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyCONTHUVND.DisplayFormat:=TIENTE_FORMAT;
  qryPolicyTYGIA.DisplayFormat:=TIENTE_FORMAT;

  qryPolicy.Open;

  if SSPUserRight[22].IR=False then
    acInsert.DataSource := MainDM.dsBanana;
  if SSPUserRight[22].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
end;

procedure TPolicyFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryPolicy do
  begin
    if State in [dsInsert, dsEdit] then
      Post;
  end;
  qryPolicy.Close;
  qrySubPolicy.Close;
end;

procedure TPolicyFrm.FormShow(Sender: TObject);
begin
  with MainDM do
  begin
    if not qryObjectType.Active then qryObjectType.Open;

    qryObjectType.Locate('OTYPE_ID',8,[]);
    
    LOAIDTCHINH:=8;
    LOAIDTTC:=qryObjectTypeLOAIDTTC.AsInteger;
    if Not qryObjectTypeLOAIDTTC.IsNull then
      grdObjMAKH.Caption:=qryObjectTypeTENDTTC.Value;
    grdObjMAKH.Visible:=Not qryObjectTypeLOAIDTTC.IsNull;
    grdObjMAKH.DisableEditor:=qryObjectTypeLOAIDTTC.IsNull;

    grdObjGrp.Caption:=qryObjectTypeGROUP_NAME.Value;

    //qryObject.Open;
    ElFormCaption1.Texts[0].Caption := qryObjectTypeOTYPE_NAME.Value;
    grdObj_ID.Caption := qryObjectTypeID_CAPTION.Value;

    grdObj_Name.Visible:=IsHasData(qryObjectTypeNAME_CAPTION);
    if grdObj_Name.Visible then
      grdObj_Name.Caption := qryObjectTypeNAME_CAPTION.Value;

    grdObj_Other.Visible := IsHasData(qryObjectTypeOTHER_CAPTION);
    if grdObj_Other.Visible then
      grdObj_Other.Caption := qryObjectTypeOTHER_CAPTION.Value;

    grdObj_Sub1.Visible := IsHasData(qryObjectTypeSUB1_CAPTION);
    if grdObj_Sub1.Visible then
      grdObj_Sub1.Caption := qryObjectTypeSUB1_CAPTION.Value;

    grdObj_Sub2.Visible := IsHasData(qryObjectTypeSUB2_CAPTION);
    if grdObj_Sub2.Visible then
      grdObj_Sub2.Caption := qryObjectTypeSUB2_CAPTION.Value;

    grdObj_Sub3.Visible:=IsHasData(qryObjectTypeSUB3_CAPTION);
    if grdObj_Sub3.Visible then
      grdObj_Sub3.Caption := qryObjectTypeSUB3_CAPTION.Value;

    grdObj_Sub4.Visible:=IsHasData(qryObjectTypeSUB4_CAPTION);
    if grdObj_Sub4.Visible then
      grdObj_Sub4.Caption := qryObjectTypeSUB4_CAPTION.Value;

    grdObj_Sub5.Visible:=IsHasData(qryObjectTypeSUB5_CAPTION);
    if grdObj_Sub5.Visible then
      grdObj_Sub5.Caption := qryObjectTypeSUB5_CAPTION.Value;

    grdObj_Sub6.Visible:=IsHasData(qryObjectTypeSUB6_CAPTION);
    if grdObj_Sub6.Visible then
      grdObj_Sub6.Caption := qryObjectTypeSUB6_CAPTION.Value;

    grdObjCREATE_DATE.Visible := IsHasData(qryObjectTypeDATE_CAPTION);
    if grdObjCREATE_DATE.Visible then
      grdObjCREATE_DATE.Caption := qryObjectTypeDATE_CAPTION.Value;

    grdObj_Note.Visible:=IsHasData(qryObjectTypeNOTE_CAPTION);
    if grdObj_Note.Visible then
      grdObj_Note.Caption := qryObjectTypeNOTE_CAPTION.Value;

    qryPObjGrp.Open;
  end;
  //SetVisible(Self);
  if PolicyFlagChar='D' then
  begin
    ElFormCaption1.Texts[0].Caption:='Certificate';
    grdObj_ID.Caption:='Certificate No.';
    grdObj_Other.Caption:='Insuree';
    grdObj_Other.CharCase:=ecNormal;
    //grdObjINVOICE_RECEIVE.Caption:=UTF8Decode('In gộp');
  end
  else
    grdObj_Other.CharCase:=ecUpperCase;
    
  //qryPolicy.Open;
  //qrySubPolicy.Open;
end;

procedure TPolicyFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key=VK_F7) and (grdObj.FocusedField.FieldName='PREMIUM')) then
  begin
    SelectedPrice:=0;
    with TInsurPriceFrm.Create(Self) do
    try
      Selecting:=True;
      ShowModal;
    finally
      Free;
    end;
    if SelectedPrice<>0 then
    begin
      qryPolicy.Edit;
      qryPolicyPREMIUM.AsFloat:=SelectedPrice;
    end;
  end
  else
    ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TPolicyFrm.grdObjMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TPolicyFrm.grdObjGrpCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
//[NXHop sua]
{  if Accept then
    Text := MainDM.qryPObjGrpOBJGRP_ID.Value;
}
  OnPopupCloseUp(Accept, MainDM.qryPObjGrp,
      qryPolicy, 'OBJGRP_ID',
        'OBJGRP_ID', 'OBJGRP_ID', Text);
  MainDM.qryPObjGrp.Close;
  MainDM.qryPObjGrp.SQLWhere.Clear;
end;

procedure TPolicyFrm.grdObjAccCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TPolicyFrm.grdObjINSURER_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TPolicyFrm.grdObjEditing(Sender: TObject; Node: TdxTreeListNode;
  var Allow: Boolean);
begin
  if grdObj.FocusedField.FieldName='TYGIAHT' then
  if ((IsNotHasData(qryPolicyTIENTE)) or (qryPolicyTIENTE.Value='VND')) then
    Allow:=False;

  if grdObj.FocusedField.FieldName='INSURER_ID' then
    MainDM.CurObjTypeID:=1
  else if grdObj.FocusedField.FieldName='CUSTOMER_ID' then
    MainDM.CurObjTypeID:=1
  else if grdObj.FocusedField.FieldName='BRANCH_ID' then
    MainDM.CurObjTypeID:=9
  else if grdObj.FocusedField.FieldName='MAKH' then
    MainDM.CurObjTypeID:=LOAIDTTC
  else if grdObj.FocusedField.FieldName='OBJGRP_ID' then
    MainDM.CurObjTypeID:=LOAIDTCHINH
  else if grdObj.FocusedField.FieldName='DEBT_LEN' then
    Allow:= IsNotHasData(qryPolicySPTHU);
end;

procedure TPolicyFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TPolicyFrm.qryPolicyNewRecord(DataSet: TDataSet);
begin
  qryPolicySUBINFO_6.AsString:=PolicyFlagChar;
  
  qryPolicyINPUT_DATE.AsDateTime:=Now;
  qryPolicyOTHER_NAME.Value:='NEW';
  qryPolicyOTYPE_ID.AsInteger:=8;
  qryPolicyOBJECT_STATUS.AsInteger:=1;
  qryPolicyTYGIAHT.Value:=1;
end;

procedure TPolicyFrm.qryPolicyAfterDelete(DataSet: TDataSet);
begin
  IsChangeList:=True;
  MainDM.qryPComObj.Close;
end;

procedure TPolicyFrm.qryPolicyAfterInsert(DataSet: TDataSet);
begin
  grdObj.OptionsBehavior:=grdObj.OptionsBehavior+[edgoEditing];
  grdObj.VisibleColumns[0].Field.FocusControl;
end;

procedure TPolicyFrm.qryPolicyAfterPost(DataSet: TDataSet);
begin
  IsChangeList:=True;
  MainDM.qryPComObj.Close;
  qrySubPolicy.Open;
  qrySubPolicy.Refresh;
  qrySubPolicy.Edit;
  qrySubPolicyPOLICY_ID.Value:=qryPolicyOBJECT_ID.Value;
  qrySubPolicyPOLICY_TYPE.Value:=8;

  if qryPolicyINVOICE_DATE.IsNull then
    qrySubPolicyINVOICE_DATE.Clear
  else
    qrySubPolicyINVOICE_DATE.Value:=qryPolicyINVOICE_DATE.Value;
  if qryPolicyINVOICE_RECEIVE.IsNull then
    qrySubPolicyINVOICE_RECEIVE.Clear
  else
    qrySubPolicyINVOICE_RECEIVE.Value:=qryPolicyINVOICE_RECEIVE.Value;
  if qryPolicyINVOICE_SEND.IsNull then
    qrySubPolicyINVOICE_SEND.Clear
  else
    qrySubPolicyINVOICE_SEND.Value:=qryPolicyINVOICE_SEND.Value;
  qrySubPolicyPREMIUM.Value:=qryPolicyPREMIUM.Value;
  qrySubPolicyTAX_VALUE.Value:=qryPolicyTAX_VALUE.Value;
  if qryPolicyINPUT_DATE.IsNull then
    qrySubPolicyINPUT_DATE.Clear
  else
    qrySubPolicyINPUT_DATE.Value:=qryPolicyINPUT_DATE.Value;
  qrySubPolicyPTHOAHONG.Value:=qryPolicyPTHOAHONG.Value;
  if qryPolicyTIENTE.IsNull then
    qrySubPolicyTIENTE.Clear
  else
    qrySubPolicyTIENTE.Value:=qryPolicyTIENTE.Value;

  qrySubPolicyTOTALNT.AsFloat:= qryPolicyTOTALNT.AsFloat;
  qrySubPolicyHOAHONGNT.AsFloat:= qryPolicyHOAHONGNT.AsFloat;
  qrySubPolicyPTTHUE.AsFloat:= qryPolicyPTTHUE.AsFloat;
  qrySubPolicyTIENTHUENT.AsFloat:= qryPolicyTIENTHUENT.AsFloat;
  qrySubPolicyPTTHUENT.AsFloat:= qryPolicyPTTHUENT.AsFloat;
  qrySubPolicyTHUENT_NT.AsFloat:= qryPolicyTHUENT_NT.AsFloat;

  if qryPolicyCUSTOMER_ID.IsNull then
  begin
    qrySubPolicyCUSTOMER_ID.Clear;
    qrySubPolicyCUSTOMER_TYPE.Clear;
  end
  else
  begin
    qrySubPolicyCUSTOMER_ID.Value:= qryPolicyCUSTOMER_ID.Value;
    qrySubPolicyCUSTOMER_TYPE.Value:=1;
  end;
  if qryPolicyINSURER_ID.IsNull then
  begin
    qrySubPolicyINSURER_ID.Clear;
    qrySubPolicyINSURER_TYPE.Clear;
  end
  else
  begin
    qrySubPolicyINSURER_ID.Value:= qryPolicyINSURER_ID.Value;
    qrySubPolicyINSURER_TYPE.Value:=1;
  end;
  if qryPolicyBRANCH_ID.IsNull then
  begin
    qrySubPolicyBRANCH_ID.Clear;
    qrySubPolicyBRANCH_TYPE.Clear;
  end
  else
  begin
    qrySubPolicyBRANCH_ID.Value:= qryPolicyBRANCH_ID.Value;
    qrySubPolicyBRANCH_TYPE.Value:=9;
  end;

  qrySubPolicy.Post;
  grdObj.OptionsBehavior:=grdObj.OptionsBehavior-[edgoEditing];
  qrySubPolicy.Close;

  IBOStoredProc1.ParamByName('policy_id').Value:=qryPolicyOBJECT_ID.Value;
  IBOStoredProc1.ParamByName('user_id').Value:=CurrentUser;
  IBOStoredProc1.ParamByName('checked').AsInteger:=qryPolicyCHECKED.AsInteger;

  IBOStoredProc1.ExecProc;
end;

procedure TPolicyFrm.qryPolicyBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,22) then Abort;
  if prmUseDocumentLog then
    GhiNhatKyXoaPhieu('',0,'Xóa Debit/Credit Note : '+ UTF8Encode(qryPolicyOBJECT_ID.Value));
end;

procedure TPolicyFrm.qryPolicyBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(22) then Abort;
end;

procedure TPolicyFrm.qryPolicyBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(22) then Abort;
end;

procedure TPolicyFrm.qryPolicyBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if IsNotHasData(qryPolicyOBJECT_NAME) then
  begin
    ShowMessageUnicode(84);
    qryPolicyOBJECT_NAME.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryPolicyOTHER_NAME) then
  begin
    ShowMessageUnicode(84);
    qryPolicyOTHER_NAME.FocusControl;
    Abort;
    exit;
  end;
  if qryPolicyCREATE_DATE.IsNull then
  begin
    ShowMessageUnicode(84);
    qryPolicyCREATE_DATE.FocusControl;
    Abort;
    exit;
  end;

  if IsNotHasData(qryPolicyOBJECT_ID) then
  begin
    ShowMessageUnicode(65);
    qryPolicyOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryPolicyINSURER_ID) then
  begin
    ShowMessageUnicode(65);
    qryPolicyINSURER_ID.FocusControl;
    Abort;
    exit;
  end;                 

  if qryPolicy.State=dsInsert then
  begin
    //qryPolicyDEBT_LEN.AsInteger:=1;
    qryPolicyDEBT_LEN.AsInteger:=0;
    qryPolicyCHECKED.AsInteger:=1;
    qryPolicyINPUT_DATE.AsDateTime:=Now;
    qryPolicySUBINFO_1.Value:='';
    qryPolicySUBINFO_2.Value:='';
    qryPolicySPTHU.Clear;
    qryPolicyNGAYTHU.Clear;
  end
  else  if ((IsHasData(qryPolicySPTHU)) and (qryPolicyCHECKED.AsInteger=1)) then
  begin
    ShowMessageUnicode(186);
    qryPolicyCHECKED.AsInteger:=0;
  end;
  qryPolicyLASTUSER_MODIFY.Value:=CurrentUser;

  LastModifyItemID:=qryPolicyOBJECT_ID.Value;
end;

procedure TPolicyFrm.qryPolicyDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TPolicyFrm.grdObjTIENTECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text :=MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TPolicyFrm.grdObjCUSTOMER_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TPolicyFrm.grdObjMAKHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TPolicyFrm.ElPopupButton1Click(Sender: TObject);
var
  OldID:WideString;
begin
  if qryPolicy.State in [dsInsert, dsEdit] then
    qryPolicy.Post;

  if IsHasData(qryPolicySPTHU) then
  begin
    IsPosted:=False;
    MainDM.Suachungtu(qryPolicySPTHU.Value,qryPolicyKYHT.AsInteger);

    if IsPosted then
    begin
      OldID:=qryPolicyOBJECT_ID.Value;
      qryPolicy.Close;
      qryPolicy.Open;
      qryPolicy.Locate('OBJECT_ID',OldID,[]);
    end;
    
    Exit;
  end;
  
  with TThuTienBHFrm.Create(Self) do
  try
    if qryPolicyCUSTOMER_ID.IsNull then
      MAKH:=''
    else
      MAKH:=qryPolicyCUSTOMER_ID.Value;
    if qryPolicyINSURER_ID.IsNull then
      MANCC:=''
    else
      MANCC:=qryPolicyINSURER_ID.Value;
    if (qryPolicyTIENTE.IsNull) then
      MANT:=''
    else
      MANT:=qryPolicyTIENTE.Value;
    SOHD:=qryPolicyOBJECT_ID.Value;
    NGUYENTE:=qryPolicyTOTALNT.AsFloat;

    if ShowModal=mrOK then
    begin
      OldID:=qryPolicyOBJECT_ID.Value;
      qryPolicy.Close;
      qryPolicy.Open;
      qryPolicy.Locate('OBJECT_ID',OldID,[]);
    end;
  finally
    Free;
  end;
end;

procedure TPolicyFrm.ElPopupButton2Click(Sender: TObject);
begin
  with TFactorDetailFrm.Create(Self) do
    try
      MAYT:=qryPolicyOBJECT_ID.Value;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TPolicyFrm.qryPolicyTIENTEChange(Sender: TField);
begin
  if ImportingFromXLS then exit;
  
  {if ((IsNotHasData(qryPolicyTIENTE)) or (qryPolicyTIENTE.Value='VND')) then
  begin
    qryPolicyTYGIAHT.Value:=1;
    qryPolicyTHUENT_NT.AsFloat:=0;
    qryPolicyTOTALNT.AsFloat:=0;
    qryPolicyHOAHONGNT.AsFloat:=0;
    qryPolicyTIENTHUENT.AsFloat:=0;
    qryPolicyCONLAI_NT.AsFloat:=0;
  end
  else  {}
    MainDM.CheckCurrency(qryPolicyTIENTE);
end;

procedure TPolicyFrm.qryPolicyPTHOAHONGChange(Sender: TField);
begin
  //if ((qryPolicyTIENTE.IsNull) or (qryPolicyTIENTE.Value='VND'))  then
  //  qryPolicyHOAHONGNT.AsFloat:=0
  //else
    qryPolicyHOAHONGNT.AsFloat:=RoundTo(qryPolicyPREMIUM.AsFloat*qryPolicyPTHOAHONG.AsFloat/100,-2);

  //qryPolicyHOAHONGVND.AsFloat:=Round(qryPolicyPREMIUM.AsFloat*qryPolicyTYGIAHT.AsFloat*qryPolicyPTHOAHONG.AsFloat/100);
end;

procedure TPolicyFrm.qryPolicyPTTHUEChange(Sender: TField);
begin
  qryPolicyTIENTHUENT.AsFloat:=RoundTo(qryPolicyHOAHONGNT.AsFloat*qryPolicyPTTHUE.AsFloat/100,-2);
  //qryPolicyTIENTHUEVND.AsFloat:=Round(qryPolicyHOAHONGVND.AsFloat*qryPolicyPTTHUE.AsFloat/100);
end;

procedure TPolicyFrm.qryPolicyMAKHChange(Sender: TField);
begin
  if IsNotHasData(qryPolicyMAKH) then
    qryPolicyLOAIKH.Clear
  else
  begin
    qryPolicyLOAIKH.AsInteger:=LOAIDTTC;

    if ImportingFromXLS then exit;

    if MainDM.CheckObjectField(qryPolicyMAKH,LOAIDTTC) then
    if qryPolicyMAKH.Value<>MainDM.CurObjID then
      qryPolicyMAKH.Value:=MainDM.CurObjID;
  end;
end;

procedure TPolicyFrm.ElPopupButton3Click(Sender: TObject);
begin
  qryPolicy.Close;
  qryPolicy.SQL.Text:='SELECT * FROM SP_POLICY(:tungay,:denngay,:user_id,0,:PolicyFlag) order by INSURER_ID, CREATE_DATE desc';
  qryPolicy.ParamByName('tungay').AsDate:=deditTuNgay.Date;
  qryPolicy.ParamByName('denngay').AsDate:=deditDenNgay.Date;
  qryPolicy.ParamByName('user_id').Value:=CurrentUser;
  qryPolicy.ParamByName('PolicyFlag').AsString:=PolicyFlagChar;
  qryPolicy.Prepare;
  qryPolicy.Open;
end;

procedure TPolicyFrm.qryPolicyPREMIUMChange(Sender: TField);
begin
  {if ((qryPolicyTIENTE.IsNull) or (qryPolicyTIENTE.Value='VND')) then
  begin
    qryPolicyTOTALNT.AsFloat:=0;
    qryPolicyHOAHONGNT.AsFloat:=0;
    qryPolicyTHUENT_NT.AsFloat:=0;
    qryPolicyTOTALNT.AsFloat:=0;
  end
  else
  begin}
    qryPolicyTHUENT_NT.AsFloat:=RoundTo(qryPolicyPREMIUM.AsFloat*qryPolicyPTTHUENT.AsFloat/100,-2);
    qryPolicyHOAHONGNT.AsFloat:=RoundTo(qryPolicyPREMIUM.AsFloat*qryPolicyPTHOAHONG.AsFloat/100,-2);
    qryPolicyTOTALNT.AsFloat:=qryPolicyPREMIUM.AsFloat+qryPolicyTAX_VALUE.AsFloat+qryPolicyTHUENT_NT.AsFloat;
  //end;

  //qryPolicyTHUENT_VND.AsFloat:=Round(qryPolicyPREMIUM.AsFloat*qryPolicyPTTHUENT.AsFloat*qryPolicyTYGIAHT.AsFloat/100);

  //qryPolicyTOTALVND.AsFloat:=Round((qryPolicyPREMIUM.AsFloat+qryPolicyTAX_VALUE.AsFloat)*qryPolicyTYGIAHT.AsFloat+qryPolicyTHUENT_VND.AsFloat);
  //qryPolicyHOAHONGVND.AsFloat:=Round(qryPolicyPREMIUM.AsFloat*qryPolicyTYGIAHT.AsFloat*qryPolicyPTHOAHONG.AsFloat/100);
end;

procedure TPolicyFrm.qryPolicyTAX_VALUEChange(Sender: TField);
begin
  //if ((qryPolicyTIENTE.IsNull) or (qryPolicyTIENTE.Value='VND')) then
  //  qryPolicyTOTALNT.AsFloat:=0
  //else
    qryPolicyTOTALNT.AsFloat:=qryPolicyPREMIUM.AsFloat+qryPolicyTAX_VALUE.AsFloat+qryPolicyTHUENT_NT.AsFloat;
  //qryPolicyTOTALVND.AsFloat:=Round((qryPolicyPREMIUM.AsFloat+qryPolicyTAX_VALUE.AsFloat)*qryPolicyTYGIAHT.AsFloat+qryPolicyTHUENT_VND.AsFloat);
end;

procedure TPolicyFrm.grdObjBRANCH_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TPolicyFrm.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(21);
end;

procedure TPolicyFrm.chkInvChange(Sender: TObject);
begin
  grdObj.Bands[4].Visible:=chkInv.Checked;
end;

procedure TPolicyFrm.chkInfoChange(Sender: TObject);
begin
  grdObj.Bands[2].Visible:=chkInfo.Checked;
end;

procedure TPolicyFrm.qryPolicyCUSTOMER_IDChange(Sender: TField);
begin
  if ImportingFromXLS then exit;
  
  if MainDM.CheckObjectField(qryPolicyCUSTOMER_ID,1) then
  begin
    if qryPolicyCUSTOMER_ID.Value<>MainDM.CurObjID then
      qryPolicyCUSTOMER_ID.Value:=MainDM.CurObjID;
    qryPolicyCUSTOMER_NAME.Value:=MainDM.CurObjName;
    qryPolicyCUSTOMER_ADDR.Value:=MainDM.CurObjSub1;
    qryPolicyCUSTOMER_TAXCODE.Value:=MainDM.CurObjSub2;
  end;
end;

procedure TPolicyFrm.qryPolicyINSURER_IDChange(Sender: TField);
begin
  if ImportingFromXLS then exit;
  
  if MainDM.CheckObjectField(qryPolicyINSURER_ID,1) then
  begin
    if qryPolicyINSURER_ID.Value<>MainDM.CurObjID then
      qryPolicyINSURER_ID.Value:=MainDM.CurObjID;

    qryPolicyINSURER_NAME.Value:=MainDM.CurObjName;
    qryPolicyINSURER_ADDR.Value:=MainDM.CurObjSub1;
    qryPolicyINSURER_TAXCODE.Value:=MainDM.CurObjSub2;
  end;
end;

procedure TPolicyFrm.qryPolicyBRANCH_IDChange(Sender: TField);
begin
  if ImportingFromXLS then exit;
  
  if MainDM.CheckObjectField(qryPolicyBRANCH_ID,9) then
    if qryPolicyBRANCH_ID.Value<>MainDM.CurObjID then
      qryPolicyBRANCH_ID.Value:=MainDM.CurObjID;
end;

procedure TPolicyFrm.qryPolicyHOAHONGNTChange(Sender: TField);
begin
  qryPolicyTIENTHUENT.AsFloat:=RoundTo(qryPolicyHOAHONGNT.AsFloat*qryPolicyPTTHUE.AsFloat/100,-2);

  qryPolicyCONLAI_NT.AsFloat:=qryPolicyTOTALNT.AsFloat-qryPolicyHOAHONGNT.AsFloat-qryPolicyTIENTHUENT.AsFloat-qryPolicyTHUENT_NT.AsFloat;
end;

procedure TPolicyFrm.qryPolicyPTTHUENTChange(Sender: TField);
begin
  //if ((qryPolicyTIENTE.IsNull) or (qryPolicyTIENTE.Value='VND')) then
  //  qryPolicyTHUENT_NT.AsFloat:=0
  //else
    qryPolicyTHUENT_NT.AsFloat:=RoundTo(qryPolicyPREMIUM.AsFloat*qryPolicyPTTHUENT.AsFloat/100,-2);

  //qryPolicyTHUENT_VND.AsFloat:=Round(qryPolicyPREMIUM.AsFloat*qryPolicyPTTHUENT.AsFloat*qryPolicyTYGIAHT.AsFloat/100);
end;

procedure TPolicyFrm.btnSendMailClick(Sender: TObject);
var
  AllowSendMail:Boolean;
  MASO,DiachiEmail:WideString;
  strName: string;
  SaveDlg: TSaveDialog;
begin
  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'Excel Files|*.xls';
  SaveDlg.DefaultExt := 'xls';
  strName := GetCurrentDir + '\data.xls';
  SaveDlg.FileName := strName;
  try
    if SaveDlg.Execute then
      strName := SaveDlg.FileName
    else
      Exit;

    grdObj.SaveToXLS(strName, true)
  except
    ShowMessageUnicode(55);
    Exit;
  end;

  AllowSendMail:=True;
  if grdObj.FocusedField.FieldName='CUSTOMER_ID' then
  begin
    MASO:=qryPolicyCUSTOMER_ID.Value;
    DiachiEmail:=qryPolicyCUSTOMER_EMAIL.Value;
    grdObj.GotoFirst;
    while Not grdObj.IsEOF do
    begin
      if MASO<>qryPolicyCUSTOMER_ID.Value then
      begin
        AllowSendMail:=False;
        Break;
      end;
      grdObj.GotoNext(False);
    end;
  end
  else
  if grdObj.FocusedField.FieldName='INSURER_ID' then
  begin
    MASO:=qryPolicyINSURER_ID.Value;
    DiachiEmail:=qryPolicyINSURER_EMAIL.Value;
    grdObj.GotoFirst;
    while Not grdObj.IsEOF do
    begin
      if MASO<>qryPolicyINSURER_ID.Value then
      begin
        AllowSendMail:=False;
        Break;
      end;
      grdObj.GotoNext(False);
    end;
  end
  else
    AllowSendMail:=False;

  if Not AllowSendMail then
  begin
    ShowMessageUnicode(185);
    Exit;
  end;
  SendMail(DiachiEmail,strName);
end;

procedure TPolicyFrm.qryPolicyTOTALNTChange(Sender: TField);
begin
//  qryPolicyTHUENT_VND.AsFloat:=Round(qryPolicyTOTALNT.AsFloat*qryPolicyPTTHUENT.AsFloat/100);
  qryPolicyCONLAI_NT.AsFloat:=qryPolicyTOTALNT.AsFloat-qryPolicyHOAHONGNT.AsFloat-qryPolicyTIENTHUENT.AsFloat-qryPolicyTHUENT_NT.AsFloat;
end;

procedure TPolicyFrm.qryPolicyTHUENT_NTChange(Sender: TField);
begin
  //if ((qryPolicyTIENTE.IsNull) or (qryPolicyTIENTE.Value='VND')) then
  //  qryPolicyTOTALNT.AsFloat:=0
  //else
    qryPolicyTOTALNT.AsFloat:=qryPolicyPREMIUM.AsFloat+qryPolicyTAX_VALUE.AsFloat+qryPolicyTHUENT_NT.AsFloat;

  //qryPolicyTHUENT_VND.AsFloat:=qryPolicyTHUENT_NT.AsFloat*qryPolicyTYGIAHT.AsFloat;
  //qryPolicyCONLAI_NT.AsFloat:=qryPolicyTOTALNT.AsFloat-qryPolicyHOAHONGNT.AsFloat-qryPolicyTIENTHUENT.AsFloat-qryPolicyTHUENT_NT.AsFloat;
end;

procedure TPolicyFrm.qryPolicyTIENTHUENTChange(Sender: TField);
begin
  qryPolicyCONLAI_NT.AsFloat:=qryPolicyTOTALNT.AsFloat-qryPolicyHOAHONGNT.AsFloat-qryPolicyTIENTHUENT.AsFloat-qryPolicyTHUENT_NT.AsFloat;
end;

procedure TPolicyFrm.qryPolicyPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'Debit/Credit Note') =-803 then
    qryPolicyOBJECT_ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
end;

procedure TPolicyFrm.qryPolicyOBJGRP_IDChange(Sender: TField);
begin
  if ImportingFromXLS then exit;
  
  with MainDM do
  begin
    qryPObjGrp.Open;
    CurObjTypeID:=8;
    if qryPObjGrpOTYPE_ID.AsInteger<>8 then
    begin
      qryPObjGrp.OnFilterRecord:=qryPObjGrpFilterRecord;
      qryPObjGrp.Filtered:=True;
    end;

    if qryPolicyOBJGRP_ID.Value<>qryPObjGrpOBJGRP_ID.Value then
    if qryPObjGrp.Locate('OBJGRP_ID',qryPolicyOBJGRP_ID.Value,[loCaseInsensitive,loPartialKey]) then
    if qryPolicyOBJGRP_ID.Value<>qryPObjGrpOBJGRP_ID.Value then
      qryPolicyOBJGRP_ID.Value:=qryPObjGrpOBJGRP_ID.Value;
  end;
end;

procedure TPolicyFrm.qrySubPolicyPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'Debit/Credit Note') =-803 then
    qryPolicyOBJECT_ID.FocusControl;
end;

procedure TPolicyFrm.grdObjChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  btnSendMail.Enabled:=((grdObj.FocusedField.FieldName='CUSTOMER_ID') or (grdObj.FocusedField.FieldName='INSURER_ID'));
end;

procedure TPolicyFrm.ElPopupButton4Click(Sender: TObject);
begin
  qryPolicy.Close;
  qryPolicy.SQL.Text:='SELECT * FROM SP_POLICY(:tungay,:denngay,:user_id,-1,:PolicyFlag) order by INSURER_ID, CREATE_DATE desc';
  qryPolicy.ParamByName('tungay').AsDate:=deditTuNgay.Date;
  qryPolicy.ParamByName('denngay').AsDate:=deditDenNgay.Date;
  qryPolicy.ParamByName('user_id').Value:=CurrentUser;
  qryPolicy.ParamByName('PolicyFlag').AsString:=PolicyFlagChar;
  qryPolicy.Prepare;
  qryPolicy.Open;
end;

procedure TPolicyFrm.ElPopupButton5Click(Sender: TObject);
begin
  qryPolicy.Close;
  qryPolicy.SQL.Text:='SELECT * FROM SP_POLICY(:tungay,:denngay,:user_id,1,:PolicyFlag) order by INSURER_ID, CREATE_DATE desc';
  qryPolicy.ParamByName('tungay').AsDate:=deditTuNgay.Date;
  qryPolicy.ParamByName('denngay').AsDate:=deditDenNgay.Date;
  qryPolicy.ParamByName('user_id').Value:=CurrentUser;
  qryPolicy.ParamByName('PolicyFlag').AsString:=PolicyFlagChar;
  qryPolicy.Prepare;
  qryPolicy.Open;
end;

procedure TPolicyFrm.qryPolicyFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=(qryPolicyINVOICE_SEND.AsDateTime=NgayGuiHD);
end;

procedure TPolicyFrm.qryPolicyAfterCancel(DataSet: TDataSet);
begin
  grdObj.OptionsBehavior:=grdObj.OptionsBehavior-[edgoEditing];
end;

procedure TPolicyFrm.ElPopupButton7Click(Sender: TObject);
begin
  grdObj.OptionsBehavior:=grdObj.OptionsBehavior+[edgoEditing];
  grdObj.ShowEditor;
  grdObj.SetFocus;
end;

procedure TPolicyFrm.grdObjChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  grdObj.OptionsBehavior:=grdObj.OptionsBehavior-[edgoEditing];
end;

procedure TPolicyFrm.ElPopupButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  OldID:WideString;
begin
  if (Button<>mbRight) then exit;

  if qryPolicy.State in [dsInsert, dsEdit] then
    qryPolicy.Post;

  if IsHasData(qryPolicySPTHU) then
  begin
    IsPosted:=False;
    MainDM.Suachungtu(qryPolicySPTHU.Value,qryPolicyKYHT.AsInteger);
    if IsPosted then
    begin
      OldID:=qryPolicyOBJECT_ID.Value;
      qryPolicy.Close;
      qryPolicy.Open;
      qryPolicy.Locate('OBJECT_ID',OldID,[]);
    end;

    Exit;
  end;

  with TGhiDTBHFrm.Create(Self) do
  try
    SOHD:=qryPolicyOBJECT_ID.Value;

    if ShowModal=mrOK then
    begin
      OldID:=qryPolicyOBJECT_ID.Value;
      qryPolicy.Close;
      qryPolicy.Open;
      qryPolicy.Locate('OBJECT_ID',OldID,[]);
    end;
  finally
    Free;
  end;
end;

procedure TPolicyFrm.ElPopupButton8ArrowClick(Sender: TObject);
begin
  pmPrint.PopupFromCursorPos;
end;

procedure TPolicyFrm.dxBarButton3Click(Sender: TObject);
begin
  qryPolicy.DisableControls;
  NgayGuiHD:=qryPolicyINVOICE_SEND.AsDateTime;
  qryPolicy.OnFilterRecord:=qryPolicyFilterRecord;
  qryPolicy.Filtered:=True;
  ReportPolicy.Template.FileName := TemplatePath + '\Policy\Danhsach.rtm';
  ReportPolicy.Template.LoadFromFile;

  ReportPolicy.PreviewFormSettings.WindowState:=wsMaximized;
  ReportPolicy.PreviewFormSettings.ZoomPercentage:=100;
  //If Not ReportPolicy.PrintReport then
//    ShowMessageUnicode(210);
  try
    ReportPolicy.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  qryPolicy.Filtered:=False;
  qryPolicy.EnableControls;
end;

procedure TPolicyFrm.dxBarButton6Click(Sender: TObject);
begin
    qryPolicy.DisableControls;
    ReportPolicy.Template.FileName := TemplatePath + '\Policy\Danhsach.rtm';
    ReportPolicy.Template.Load;
    dsgPolicy.ShowModal;
    qryPolicy.EnableControls;
end;

procedure TPolicyFrm.bbtnInHDClick(Sender: TObject);
var
  i:Integer;
begin
  rptHoadon.Template.FileName := TemplatePath + '\Policy\Hoadon.rtm';
  rptHoadon.Template.LoadFromFile;

  rptHoadon.PreviewFormSettings.WindowState:=wsMaximized;
  rptHoadon.PreviewFormSettings.ZoomPercentage:=100;

  for i:=0 to ComponentCount-1 do
  if Components[i] is TppLabel then
  begin
    if (Components[i] as TppLabel).Caption='lbltongtien' then
      (Components[i] as TppLabel).Caption:=DocSoThanhChu(qryPolicyTOTALVND.AsString)
    else if (Components[i] as TppLabel).Caption='mst1' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,1,1)
    else if (Components[i] as TppLabel).Caption='mst2' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,2,1)
    else if (Components[i] as TppLabel).Caption='mst3' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,3,1)
    else if (Components[i] as TppLabel).Caption='mst4' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,4,1)
    else if (Components[i] as TppLabel).Caption='mst5' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,5,1)
    else if (Components[i] as TppLabel).Caption='mst6' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,6,1)
    else if (Components[i] as TppLabel).Caption='mst7' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,7,1)
    else if (Components[i] as TppLabel).Caption='mst8' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,8,1)
    else if (Components[i] as TppLabel).Caption='mst9' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,9,1)
    else if (Components[i] as TppLabel).Caption='mst10' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,10,1)
    else if (Components[i] as TppLabel).Caption='mst11' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,11,1)
    else if (Components[i] as TppLabel).Caption='mst12' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,12,1)
    else if (Components[i] as TppLabel).Caption='mst13' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,13,1)
    else if (Components[i] as TppLabel).Caption='mst14' then
      (Components[i] as TppLabel).Caption:=Copy(qryPolicyCUSTOMER_TAXCODE.Value,14,1);
  end;

  //If Not rptHoadon.PrintReport then
//    ShowMessageUnicode(210);
  try
    rptHoadon.PrintReport
  except
     ShowMessageUnicode(210);
  end;
end;

procedure TPolicyFrm.dxBarButton4Click(Sender: TObject);
begin
  rptHoadon.Template.FileName := TemplatePath + '\Policy\Hoadon.rtm';
  rptHoadon.Template.Load;
  DsgHoaDon.ShowModal;
end;

procedure TPolicyFrm.dxBarButton7Click(Sender: TObject);
begin
  with THoadonBHFrm.Create(Self) do
  try
    if ShowModal=mrOK then
      qryPolicy.Refresh;
  finally
    Free;
  end;
end;

procedure TPolicyFrm.dxBarButton2Click(Sender: TObject);
var
  i:Integer;
  First:Boolean;
  TongUSD,TongVND:Double;
begin
  rptHoadon.Template.FileName := TemplatePath + '\Policy\HoadonGop.rtm';
  rptHoadon.Template.LoadFromFile;

  rptHoadon.PreviewFormSettings.WindowState:=wsMaximized;
  rptHoadon.PreviewFormSettings.ZoomPercentage:=100;

    grdObj.GotoFirst;
    First:=True;
    TongUSD:=0;
    TongVND:=0;
    while ((Not grdObj.IsEOF) or First) do
    begin
      if (grdObj.IsEOF) then
        First:=False;

      TongUSD:=TongUSD+qryPolicyPREMIUM.AsFloat;
      TongVND:=TongVND+qryPolicyTOTALVND.AsFloat;

      grdObj.GotoNext(True);
    end;
  TongVND:=Round(TongVND);

  for i:=0 to ComponentCount-1 do
  if Components[i] is TppLabel then
  begin
    if (Components[i] as TppLabel).Caption='lbltongtien' then
      (Components[i] as TppLabel).Caption:=DocSoThanhChu(FloatToStr(TongVND))
    else if (Components[i] as TppLabel).Caption='tongtiennt' then
      (Components[i] as TppLabel).Caption:=FormatFloat(NGOAITE_FORMAT,TongUSD)
    else if (Components[i] as TppLabel).Caption='tongtienvnd' then
      (Components[i] as TppLabel).Caption:=FormatFloat(TIENTE_FORMAT,TongVND);
  end;

  //If Not rptHoadon.PrintReport then
//    ShowMessageUnicode(210);
  try
    rptHoadon.PrintReport
  except
     ShowMessageUnicode(210);
  end;
end;

procedure TPolicyFrm.dxBarButton5Click(Sender: TObject);
begin
  rptHoadon.Template.FileName := TemplatePath + '\Policy\HoadonGop.rtm';
  rptHoadon.Template.Load;
  DsgHoaDon.ShowModal;
end;

procedure TPolicyFrm.ElPopupButton8Click(Sender: TObject);
begin
  bbtnInHDClick(Sender);
end;

procedure TPolicyFrm.dxBarButton1Click(Sender: TObject);
begin
  with TThayTheHDBHFrm.Create(Self) do
  try
    if ShowModal=mrOK then
      qryPolicy.Refresh;
  finally
    Free;
  end;
end;

procedure TPolicyFrm.grdObjGrpInitPopup(Sender: TObject);
begin
  with MainDM.qryPObjGrp do
  begin
    if Active then Close;
    SQLWhere.Text:=' WHERE OTYPE_ID=:OTYPE_ID';
    ParamByName('OTYPE_ID').Value:=MainDM.CurObjTypeID;
    Open;
  end;
  InitPopupControl('dxlcObjGroup', CM_PopupFrm, Sender, 2,grdObj);
  CM_PopupFrm.dxtlObjGroup.FullExpand;
end;

end.
