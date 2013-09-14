unit PolicyAriseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,DateUtils,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  TntButtons, DBActns, ActnList, dxBar, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxGrClEx, ElCLabel, ElLabel, IBODataset, dxLayout,
  IpUtils, IpSock, IpMsg, IpSmtp;

type
  TPolicyAriseFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdObj: TdxDBGrid;
    locFormGrd: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormItem7: TdxLayoutItem;
    TntBitBtn5: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    TntBitBtn6: TELPopupButton;
    locFormGroup1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    qryPolicy: TIBOQuery;
    dsPolicy: TDataSource;
    ElPopupButton2: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    deditDenngay: TdxDateEdit;
    locFormItem1: TdxLayoutItem;
    deditTuNgay: TdxDateEdit;
    locFormItem10: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    IpSmtpClient1: TIpSmtpClient;
    qryPolicyOBJECT_ID: TWideStringField;
    qryPolicyOTYPE_ID: TSmallintField;
    qryPolicyOBJECT_NAME: TWideStringField;
    qryPolicyOTHER_NAME: TWideStringField;
    qryPolicySUBINFO_1: TWideStringField;
    qryPolicySUBINFO_2: TWideStringField;
    qryPolicyOBJECT_NOTES: TWideStringField;
    qryPolicyOBJECT_STATUS: TSmallintField;
    qryPolicyOBJGRP_ID: TWideStringField;
    qryPolicyOACCOUNT_ID: TWideStringField;
    qryPolicyDEBT_LEN: TSmallintField;
    qryPolicyMAKH: TWideStringField;
    qryPolicyLOAIKH: TSmallintField;
    qryPolicyCREATE_DATE: TDateField;
    qryPolicyPOLICY_ID: TWideStringField;
    qryPolicyPOLICY_TYPE: TSmallintField;
    qryPolicyINVOICE_SERI: TWideStringField;
    qryPolicyINVOICE_NO: TWideStringField;
    qryPolicyINVOICE_DATE: TDateField;
    qryPolicyINVOICE_RECEIVE: TDateField;
    qryPolicyINVOICE_SEND: TDateField;
    qryPolicyCUSTOMER_ID: TWideStringField;
    qryPolicyINSURER_ID: TWideStringField;
    qryPolicyPREMIUM: TIBOFloatField;
    qryPolicyTAX_VALUE: TIBOFloatField;
    qryPolicyTOTALNT: TIBOFloatField;
    qryPolicyTIENTE: TWideStringField;
    qryPolicyTYGIAHT: TIBOFloatField;
    qryPolicyTOTALVND: TIBOFloatField;
    qryPolicyPTHOAHONG: TIBOFloatField;
    qryPolicyHOAHONGNT: TIBOFloatField;
    qryPolicyHOAHONGVND: TIBOFloatField;
    qryPolicyPTTHUE: TSmallintField;
    qryPolicyTIENTHUENT: TIBOFloatField;
    qryPolicyTIENTHUEVND: TIBOFloatField;
    qryPolicyPTTHUENT: TIBOFloatField;
    qryPolicyTHUENT_NT: TIBOFloatField;
    qryPolicyTHUENT_VND: TIBOFloatField;
    qryPolicyDATRA_NT: TIBOFloatField;
    qryPolicyDATRA_VN: TIBOFloatField;
    qryPolicyCONLAI_NT: TIBOFloatField;
    qryPolicyCONLAI_VN: TIBOFloatField;
    qryPolicySPTHU: TWideStringField;
    qryPolicyNGAYTHU: TDateField;
    qryPolicyKYHTTHU: TSmallintField;
    qryPolicyBRANCH_ID: TWideStringField;
    qryPolicyPOLICY_NO: TWideStringField;
    qryPolicyENDORSEMENT: TWideStringField;
    qryPolicyLOAIBH: TWideStringField;
    qryPolicySHTKPTRA: TWideStringField;
    qryPolicyINSURER_TYPE: TSmallintField;
    qryPolicyINSURER_NAME: TWideStringField;
    qryPolicyINSURER_ADDR: TWideStringField;
    qryPolicyINSURER_EMAIL: TWideStringField;
    qryPolicyINSURER_TAXCODE: TWideStringField;
    qryPolicyCUSTOMER_TYPE: TSmallintField;
    qryPolicyCUSTOMER_NAME: TWideStringField;
    qryPolicyCUSTOMER_ADDR: TWideStringField;
    qryPolicyCUSTOMER_TAXCODE: TWideStringField;
    grdObjOBJECT_ID: TdxDBGridMaskColumn;
    grdObjOBJECT_NAME: TdxDBGridMaskColumn;
    grdObjOTHER_NAME: TdxDBGridMaskColumn;
    grdObjSUBINFO_1: TdxDBGridMaskColumn;
    grdObjSUBINFO_2: TdxDBGridMaskColumn;
    grdObjOBJECT_NOTES: TdxDBGridMaskColumn;
    grdObjOBJGRP_ID: TdxDBGridMaskColumn;
    grdObjMAKH: TdxDBGridMaskColumn;
    grdObjCREATE_DATE: TdxDBGridDateColumn;
    grdObjINVOICE_SERI: TdxDBGridMaskColumn;
    grdObjINVOICE_NO: TdxDBGridMaskColumn;
    grdObjINVOICE_DATE: TdxDBGridDateColumn;
    grdObjINVOICE_RECEIVE: TdxDBGridDateColumn;
    grdObjINVOICE_SEND: TdxDBGridDateColumn;
    grdObjCUSTOMER_ID: TdxDBGridMaskColumn;
    grdObjINSURER_ID: TdxDBGridMaskColumn;
    grdObjPREMIUM: TdxDBGridMaskColumn;
    grdObjTAX_VALUE: TdxDBGridMaskColumn;
    grdObjTOTALNT: TdxDBGridMaskColumn;
    grdObjTIENTE: TdxDBGridMaskColumn;
    grdObjTYGIAHT: TdxDBGridMaskColumn;
    grdObjTOTALVND: TdxDBGridMaskColumn;
    grdObjPTHOAHONG: TdxDBGridMaskColumn;
    grdObjHOAHONGNT: TdxDBGridMaskColumn;
    grdObjHOAHONGVND: TdxDBGridMaskColumn;
    grdObjPTTHUE: TdxDBGridMaskColumn;
    grdObjTIENTHUENT: TdxDBGridMaskColumn;
    grdObjTIENTHUEVND: TdxDBGridMaskColumn;
    grdObjPTTHUENT: TdxDBGridMaskColumn;
    grdObjTHUENT_NT: TdxDBGridMaskColumn;
    grdObjTHUENT_VND: TdxDBGridMaskColumn;
    grdObjDATRA_NT: TdxDBGridMaskColumn;
    grdObjDATRA_VN: TdxDBGridMaskColumn;
    grdObjCONLAI_NT: TdxDBGridMaskColumn;
    grdObjCONLAI_VN: TdxDBGridMaskColumn;
    grdObjSPTHU: TdxDBGridMaskColumn;
    grdObjNGAYTHU: TdxDBGridDateColumn;
    grdObjBRANCH_ID: TdxDBGridMaskColumn;
    grdObjPOLICY_NO: TdxDBGridMaskColumn;
    grdObjENDORSEMENT: TdxDBGridMaskColumn;
    grdObjLOAIBH: TdxDBGridMaskColumn;
    grdObjSHTKPTRA: TdxDBGridMaskColumn;
    grdObjINSURER_NAME: TdxDBGridMaskColumn;
    grdObjINSURER_ADDR: TdxDBGridMaskColumn;
    grdObjINSURER_EMAIL: TdxDBGridMaskColumn;
    grdObjINSURER_TAXCODE: TdxDBGridMaskColumn;
    grdObjCUSTOMER_NAME: TdxDBGridMaskColumn;
    grdObjCUSTOMER_ADDR: TdxDBGridMaskColumn;
    grdObjCUSTOMER_TAXCODE: TdxDBGridMaskColumn;
    grdObjOBJECT_STATUS: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    LOAIDTCHINH,LOAIDTTC:Smallint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PolicyAriseFrm: TPolicyAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, PopupForm, ThuTienBHForm, FactorDetailForm;


{$R *.dfm}

procedure TPolicyAriseFrm.FormCreate(Sender: TObject);
var
  i:Smallint;
begin
  for i:=0 to grdObj.ColumnCount-1 do
  if grdObj.Columns[i].Field is TIBOFloatField then
  begin
    grdObj.Columns[i].SummaryFooterField:=grdObj.Columns[i].Field.FieldName;
    grdObj.Columns[i].SummaryFooterFormat:=TIENTE_FORMAT;
    grdObj.Columns[i].SummaryFooterType:=cstSum;
  end;

  SetOnFormCreate(Sender as TControl);
  SetDisplayFormat(Self);

  MainDM.CurObjTypeID:=8;

  deditTungay.Date:= EncodeDate(CurYear, CurMonth,1) ;
  deditDenngay.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(deditTungay.Date)) ;
  qryPolicy.ParamByName('tungay').AsDate:=deditTuNgay.Date;
  qryPolicy.ParamByName('denngay').AsDate:=deditDenNgay.Date;
  qryPolicy.Open;
end;

procedure TPolicyAriseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryPolicy do
  begin
    if State in [dsInsert, dsEdit] then
      Post;
    Close;
  end;
end;

procedure TPolicyAriseFrm.FormShow(Sender: TObject);
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

    qryObject.Open;
    ElFormCaption1.Texts[0].Caption := qryObjectTypeOTYPE_NAME.Value;
    if qryObjectTypeNAME_CAPTION.Value='' then
      grdObjOBJECT_NAME.Visible:=False
    else
      grdObjOBJECT_Name.Caption := qryObjectTypeNAME_CAPTION.Value;
    if qryObjectTypeOTHER_CAPTION.Value='' then
      grdObjOTHER_NAME.Visible := False
    else
      grdObjOTHER_NAME.Caption := qryObjectTypeOTHER_CAPTION.Value;
    if qryObjectTypeSUB1_CAPTION.Value='' then
      grdObjSUBINFO_1.Visible := False
    else
      grdObjSUBINFO_1.Caption := qryObjectTypeSUB1_CAPTION.Value;
    if qryObjectTypeSUB2_CAPTION.Value='' then
      grdObjSUBINFO_2.Visible := False
    else
      grdObjSUBINFO_2.Caption := qryObjectTypeSUB2_CAPTION.Value;
    if qryObjectTypeDATE_CAPTION.Value='' then
      grdObjCREATE_DATE.Visible := False
    else
      grdObjCREATE_DATE.Caption := qryObjectTypeDATE_CAPTION.Value;

    if qryObjectTypeNOTE_CAPTION.Value='' then
      grdObjOBJECT_NOTES.Visible:=False
    else
      grdObjOBJECT_NOTES.Caption := qryObjectTypeNOTE_CAPTION.Value;
  end;
end;

procedure TPolicyAriseFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, False);
end;

procedure TPolicyAriseFrm.grdObjMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TPolicyAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TPolicyAriseFrm.ElPopupButton2Click(Sender: TObject);
begin
  with TFactorDetailFrm.Create(Self) do
    try
      MAYT:=qryPolicyOBJECT_ID.Value;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TPolicyAriseFrm.ElPopupButton3Click(Sender: TObject);
begin
  qryPolicy.Close;
  qryPolicy.ParamByName('tungay').AsDate:=deditTuNgay.Date;
  qryPolicy.ParamByName('denngay').AsDate:=deditDenNgay.Date;
  qryPolicy.Open;
end;

procedure TPolicyAriseFrm.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(21);
end;

end.
