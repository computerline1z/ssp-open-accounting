unit CCDCinf;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  TntStdCtrls, dxLayout, DBActns, ActnList, DB, IBODataset, ElCaption,
  dxLayoutLookAndFeels, dxLayoutControl, ElPopBtn, ExtCtrls, ElPanel,
  ElGroupBox, ElCheckItemGrp, ElXPThemedControl, ElBtnCtl, ElCheckCtl,
  dxEdLib, dxDBELib, dxEditor, cxControls, ComCtrls, TntComCtrls, ElCLabel,
  ElLabel, dxDBTLCl, dxGrClms;

type
  TCCDCINFFrm = class(TForm)
    TntPageControl1: TTntPageControl;
    TntTabSheet1: TTntTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    pedtTK: TdxDBPopupEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    spnTGSD: TdxDBSpinEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBPopupEdit1: TdxDBPopupEdit;
    rbPBBENNO: TElRadioButton;
    dxDBPopupEdit5: TdxDBPopupEdit;
    popBranch: TdxDBPopupEdit;
    dxDBEdit6: TdxDBEdit;
    ElPopupButton3: TElPopupButton;
    BitBtn2: TElPopupButton;
    BitBtn3: TElPopupButton;
    BitBtn1: TElPopupButton;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    top: TdxLayoutGroup;
    topleft: TdxLayoutGroup;
    dxLayoutControl10Group1: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    lciTK: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Item45: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    locDT: TdxLayoutItem;
    locYT: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    lciLuyke: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryDTPB_lst: TIBOQuery;
    qryDTPB_lstOTYPE_ID: TSmallintField;
    qryDTPB_lstOBJECT_STATUS: TSmallintField;
    qryDTPB_lstBINC_DATE: TDateField;
    qryDTPB_lstAMOR_METHOD: TSmallintField;
    qryDTPB_lstUSEOTYPE_ID: TIntegerField;
    qryDTPB_lstBEGIN_MONTH: TSmallintField;
    qryDTPB_lstBEGIN_YEAR: TIntegerField;
    qryDTPB_lstOBJECT_ID: TWideStringField;
    qryDTPB_lstOBJECT_NAME: TWideStringField;
    qryDTPB_lstOTHER_NAME: TWideStringField;
    qryDTPB_lstSUBINFO_1: TWideStringField;
    qryDTPB_lstSUBINFO_2: TWideStringField;
    qryDTPB_lstOBJECT_NOTES: TWideStringField;
    qryDTPB_lstAMORTISE_ACC: TWideStringField;
    qryDTPB_lstALLOCATE_ACC: TWideStringField;
    qryDTPB_lstBINC_ID: TWideStringField;
    qryDTPB_lstUSEOBJECT_ID: TWideStringField;
    qryDTPB_lstAMOR_VALUE: TIBOFloatField;
    qryDTPB_lstNGUYENGIA: TIBOFloatField;
    qryDTPB_lstHAOMON: TIBOFloatField;
    qryDTPB_lstGTCL: TIBOFloatField;
    qryDTPB_lstOBJGRP_ID: TWideStringField;
    qryDTPB_lstOACCOUNT_ID: TWideStringField;
    qryDTPB_lstLASTUSER_MODIFY: TWideStringField;
    qryDTPB_lstNAM_THANG: TSmallintField;
    qryDTPB_lstUSING_LIFE: TIBOFloatField;
    qryDTPB_lstAMOR_PERCENT: TIBOFloatField;
    qryDTPB_lstUSEOBJECT_DETAIL: TWideStringField;
    qryDTPB_lstUSEDTYPE_ID: TSmallintField;
    qryDTPB_lstOBRANCH_ID: TWideStringField;
    dsDTPB_lst: TDataSource;
    qryDTPB: TIBOQuery;
    dsDTPB: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    qryDTPBOTYPE_ID: TSmallintField;
    qryDTPBALLOCATE_ACC: TWideStringField;
    qryDTPBAMORTISE_ACC: TWideStringField;
    qryDTPBBINC_ID: TWideStringField;
    qryDTPBBINC_DATE: TDateField;
    qryDTPBUSING_LIFE: TIBOFloatField;
    qryDTPBAMOR_METHOD: TSmallintField;
    qryDTPBAMOR_PERCENT: TIBOFloatField;
    qryDTPBAMOR_VALUE: TIBOFloatField;
    qryDTPBUSEOBJECT_ID: TWideStringField;
    qryDTPBUSEOTYPE_ID: TSmallintField;
    qryDTPBUSEOBJECT_DETAIL: TWideStringField;
    qryDTPBUSEDTYPE_ID: TSmallintField;
    qryDTPBBEGIN_MONTH: TSmallintField;
    qryDTPBBEGIN_YEAR: TSmallintField;
    qryDTPBNAM_THANG: TSmallintField;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    qryDTPBOBJECT_ID: TWideStringField;
    qryDTPBUSEOBJECT_DETAIL_1: TWideStringField;
    qryDTPBUSEDTYPE_ID_1: TSmallintField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    popOBJ: TdxDBPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    rbPBBENCO: TElRadioButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    pnlkyphanbo: TElPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    btnpnlClose: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    grdkyphanbo: TdxDBGrid;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    qrykyphanbo: TIBOQuery;
    dskyphanbo: TDataSource;
    dxLayoutControl1Item13: TdxLayoutItem;
    btnkyphanbo: TElPopupButton;
    qrykyphanboTHOIGIANPB: TSmallintField;
    qrykyphanboOBJECT_NAME: TWideStringField;
    qrykyphanboOTYPE_ID: TSmallintField;
    qrykyphanboOBJECT_ID: TWideStringField;
    qrykyphanboRMONTH: TSmallintField;
    grdkyphanboTHOIGIANPB: TdxDBGridMaskColumn;
    grdkyphanboOBJECT_NAME: TdxDBGridMaskColumn;
    qrykyphanboRYEAR: TSmallintField;
    ActionList1: TActionList;
    acpost: TDataSetPost;
    qrykyphanboPERIOD_ID: TSmallintField;
    qrykyphanboGTPS: TIBOFloatField;
    grdkyphanboGTPS: TdxDBGridMaskColumn;
    AcDel: TDataSetDelete;
    acIns: TDataSetInsert;
    grdkyphanboRMONTH: TdxDBGridSpinColumn;
    grdkyphanboRYEAR: TdxDBGridSpinColumn;
    qrykyphanboBMONTH: TSmallintField;
    qrykyphanboBYEAR: TSmallintField;
    qrykyphanboKYBATDAUPB: TSmallintField;
    grdkyphanboBMONTH: TdxDBGridSpinColumn;
    grdkyphanboBYEAR: TdxDBGridSpinColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure qryDTPB_lstBeforeEdit(DataSet: TDataSet);
    procedure qryDTPB_lstBeforeInsert(DataSet: TDataSet);
    procedure qryDTPB_lstBeforePost(DataSet: TDataSet);
    procedure pedtTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtTKEnter(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2Enter(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure dxDBPopupEdit3InitPopup(Sender: TObject);
    procedure pedtTKInitPopup(Sender: TObject);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5Enter(Sender: TObject);
    procedure dxDBPopupEdit4Enter(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryDTPB_lstPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KIemtraTKDTPB:Boolean;
    function KIemtraYTPB:Boolean;
    function KIemtraDTPB:Boolean;
    function KIemtraTKPB:Boolean;
    procedure rbPBBENNOClick(Sender: TObject);
    procedure rbPBBENCOClick(Sender: TObject);
    procedure popOBJCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure popOBJEnter(Sender: TObject);
    procedure qryDTPBPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDTPBOBJECT_IDChange(Sender: TField);
    procedure qryDTPB_lstBeforeOpen(DataSet: TDataSet);
    procedure qryDTPBAfterOpen(DataSet: TDataSet);
    procedure qryDTPBBeforeDelete(DataSet: TDataSet);
    procedure dxDBPopupEdit7CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit7Enter(Sender: TObject);
    procedure dxDBPopupEdit7InitPopup(Sender: TObject);
    procedure qryDTPBBeforePost(DataSet: TDataSet);
    procedure qryDTPBNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryDTPBInfBeforePost(DataSet: TDataSet);
    procedure qryDTPBBeforeEdit(DataSet: TDataSet);
    procedure qryDTPBBeforeInsert(DataSet: TDataSet);
    procedure qryDTPBALLOCATE_ACCChange(Sender: TField);
    procedure btnpnlCloseClick(Sender: TObject);
    procedure btnkyphanboClick(Sender: TObject);
    procedure qrykyphanboBeforeOpen(DataSet: TDataSet);
    procedure qryDTPBAfterPost(DataSet: TDataSet);
    procedure qrykyphanboRYEARChange(Sender: TField);
    procedure qrykyphanboRMONTHChange(Sender: TField);
    procedure qrykyphanboNewRecord(DataSet: TDataSet);
    procedure qrykyphanboAfterPost(DataSet: TDataSet);
    procedure qrykyphanboBeforeDelete(DataSet: TDataSet);
    procedure grdkyphanboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrykyphanboPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dxDBPopupEdit2Exit(Sender: TObject);
    procedure qrykyphanboBMONTHChange(Sender: TField);
    procedure qrykyphanboBYEARChange(Sender: TField);
    procedure qrykyphanboBeforePost(DataSet: TDataSet);
   procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3Enter(Sender: TObject);
  private
     isChangeAsset:Boolean;//Co bao hieu co thay doi thong tin tren TSCD hoac Thong tin khau hao khong?
    PreviousAccFilterType:Smallint;//Nho lai loai tk truoc khi vao form nay
    PrevObjTypeID:Integer;
    function SaveAsset():Boolean;
  public
    { Public declarations }
  end;

var
  CCDCINFFrm: TCCDCINFFrm;

implementation

uses MainDataMdl, PopupForm, GlobalUnit, Functions, CM_PopupForm,
  CM_Functions, DBFunctions, HtmlHlp, Math;

{$R *.dfm}

procedure TCCDCINFFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 with qryDTPB do
  begin
    if State in [dsInsert, dsEdit] then
      Cancel;
    Close;
  end;
end;

procedure TCCDCINFFrm.FormCreate(Sender: TObject);
begin
  LastModifyItemID:='';
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self,0);
  dxLayoutControl1.EndUpdate;

  if prmUSEUPPERCASE then
  begin
    popOBJ.CharCase := ecUpperCase;
    dxDBPopupEdit1.CharCase := ecUpperCase;
    dxDBPopupEdit2.CharCase := ecUpperCase;
    dxDBPopupEdit3.CharCase := ecUpperCase;
    dxDBPopupEdit4.CharCase := ecUpperCase;
    pedtTK.CharCase := ecUpperCase;
  end;

  qryDTPB_lstNGUYENGIA.DisplayFormat := TIENTE_FORMAT;
  qryDTPB_lstHAOMON.DisplayFormat := TIENTE_FORMAT;
  qryDTPB_lstGTCL.DisplayFormat := TIENTE_FORMAT;
  qryDTPB_lstAMOR_VALUE.DisplayFormat := TIENTE_FORMAT;

  qryDTPB.Close;
  qryDTPB.ParamByName('OBJECT_ID').Value := DTPB_ID;
  qryDTPB.ParamByName('OTYPE_ID').Value := DTPB_OTYPE_ID;
  qryDTPB.Open;


  qryDTPB_Lst.Open;

  PreviousAccFilterType := FilterAccType;
  with MainDM do
  begin
    qryPAcc.Open;
    qryPObjGrp.Open;
  end;
end;

procedure TCCDCINFFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/KetoanTSCD.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TCCDCINFFrm.FormShow(Sender: TObject);
begin
 if DTPB_ID = '' then
 begin
    qryDTPB.Insert;
 end
  else begin
    qryDTPB.Edit;
    qryDTPB_lst.Edit;
  end;
  rbPBBENNO.Checked := qryDTPBAMOR_METHOD.AsInteger = 0;
  rbPBBENCO.Checked := qryDTPBAMOR_METHOD.AsInteger = 1;
 // rbGrpPPKH.ItemIndex:=qryDTPBAMOR_METHOD.AsInteger;
 {if qryDTPBNAM_THANG.AsInteger=0 then
    rbNam.Checked:=True
  else
    rbThang.Checked:=True;   }
  //Enable box doi tuong, yeu to theo tk
  if IsHasData(qryDTPBALLOCATE_ACC) then
  begin
    MainDM.qryPAcc.Open;
    MainDM.qryPAcc.locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
    locDT.Enabled := not MainDM.qryPAccOTYPE_ID.IsNull;
    locYT.Enabled := not MainDM.qryPAccDTYPE_ID.IsNull;
  end;
  //--------------------------------

  if MainDM.qryBranchMain.RecordCount = 1 then
    popBranch.Enabled := FALSE;

  qrykyphanboGTPS.DisplayFormat := TIENTE_FORMAT;
  qrykyphanbo.Open;

  SetVisible(Self);
end;

procedure TCCDCINFFrm.ElPopupButton3Click(Sender: TObject);
begin
if qryDTPB.State in [dsInsert, dsEdit] then
    If ShowMessageUnicode(21, '', 4) = 6 then
    begin
      if not SaveAsset then
        exit;
    end
    else
      exit;

  DTPB_ID:='';
  AssetAccountID:=qryDTPB_lstOACCOUNT_ID.Value;
  AssetDocInID:=qryDTPB_lstBINC_ID.Value;
  AssetDocInDate:=qryDTPB_lstBINC_DATE.Value;
  IsChangeList:=True;
  qryDTPB.Insert;
end;

procedure TCCDCINFFrm.qryDTPB_lstBeforeEdit(DataSet: TDataSet);
var
  nthang, nnam :Smallint;
begin
if Not MainDM.CheckAllowEdit(3) then Abort;

end;

procedure TCCDCINFFrm.qryDTPB_lstBeforeInsert(DataSet: TDataSet);
begin
if Not MainDM.CheckAllowInsert(3) then Abort;
end;

procedure TCCDCINFFrm.qryDTPB_lstBeforePost(DataSet: TDataSet);
begin
  if prmUseDocumentLog then
    qryDTPB_lstLASTUSER_MODIFY.Value:=CurrentUser
  else
    qryDTPB_lstLASTUSER_MODIFY.Clear;

end;

function TCCDCINFFrm.SaveAsset():Boolean;
begin
  Result:=False;
    if IsNotHasData(qryDTPBOBJECT_ID) then
    begin

      ShowHintBoxInComponent(self,qryDTPB,'OBJECT_ID',65);
      exit;
    end;
    if KIemtraTKDTPB=False then exit;
    //if KIemtraNhom=False then exit;
    if KIemtraTKPB=False then exit;
    if KIemtraDTPB=False then exit;
    if KIemtraYTPB=False then exit;
    //if KIemtraTKKH=False then exit;} 

    if rbPBBENNO.Checked then qryDTPBAMOR_METHOD.AsInteger:= 0;
    if rbPBBENCO.Checked then qryDTPBAMOR_METHOD.AsInteger:= 1;

    if ((qryDTPBAMOR_METHOD.AsInteger=1) and (qryDTPBUSING_LIFE.AsFloat=0)) then
    begin

      ShowHintBoxInComponent(self,qryDTPB,'USING_LIFE',156);
      Abort;
    end;
    AssetAccountID := qryDTPB_lstOACCOUNT_ID.Value;
    vpItemID     := qryDTPBOBJECT_ID.Value;
    vpItemName   := qryDTPB_lstOBJECT_NAME.Value;

    try
      if qryDTPB.State in [dsEdit, dsInsert] then
        qryDTPB.Post;
    except
      exit;
    end;

  LastModifyItemID:=qryDTPBOBJECT_ID.Value;

    //if isChangeAsset then
    qryDTPB.edit;
    qryDTPB_Lst.Edit;
    //qryDTPB_LstOBJECT_ID.Value := qryDTPBOBJECT_ID.Value;
    //qryDTPB_LstOTYPE_ID.AsInteger := qryDTPBOTYPE_ID.AsInteger;
    qryDTPB_LstALLOCATE_ACC.Value :=qryDTPBALLOCATE_ACC.Value;
    qryDTPB_LstAMORTISE_ACC.Value := qryDTPBAMORTISE_ACC.Value;
    qryDTPB_LstBEGIN_MONTH.Value := qryDTPBBEGIN_MONTH.Value;
    qryDTPB_LstBEGIN_YEAR.Value := qryDTPBBEGIN_YEAR.Value;
    //qryDTPBBINC_ID.Value := qryDTPB_LstBINC_ID.Value;
    //qryDTPBBINC_DATE.AsDateTime := qryDTPB_LstBINC_Date.AsDateTime;
    qryDTPB_LstUSING_LIFE.AsFloat := qryDTPBUSING_LIFE.AsFloat;
    qryDTPB_LstAMOR_METHOD.AsInteger := qryDTPBAMOR_METHOD.AsInteger;
    qryDTPB_LstAMOR_PERCENT.AsFloat := qryDTPBAMOR_PERCENT.AsFloat;
    qryDTPB_LstAMOR_VALUE.AsFloat := qryDTPBAMOR_VALUE.AsFloat;
    qryDTPB_LstNAM_THANG.AsInteger := qryDTPBNAM_THANG.AsInteger;

    // PHLQP bo 2005-08-16

    if qryDTPBUSEOBJECT_ID.IsNull then
    begin
      qryDTPB.Edit;
      qryDTPB.FieldByName('USEOBJECT_ID').Clear;
      qryDTPB.FieldByName('USEOTYPE_ID').Clear;
    end
    else
    begin
      qryDTPBUSEOBJECT_ID.Value := qryDTPBUSEOBJECT_ID.Value;
      qryDTPBUSEOTYPE_ID.Value := qryDTPBUSEOTYPE_ID.Value;
    end;

    if qryDTPBUSEOBJECT_DETAIL.IsNull then
    begin
      qryDTPB.FieldByName('USEOBJECT_DETAIL').Clear;
      qryDTPB.FieldByName('USEDTYPE_ID').Clear;
    end
    else
    begin
      qryDTPBUSEOBJECT_DETAIL.Value := qryDTPBUSEOBJECT_DETAIL.Value;
      qryDTPBUSEDTYPE_ID.Value := qryDTPBUSEDTYPE_ID.Value;
    end;

    if qryDTPB.State in [dsedit,dsinsert] then qryDTPB.Post;
    if qryDTPB_lst.State in [dsedit,dsinsert] then qryDTPB_lst.Post;


  Result:=True;

end;
procedure TCCDCINFFrm.pedtTKCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
 if Accept then
 begin
    qrydtpb_lst.edit;
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
  end
end;

procedure TCCDCINFFrm.pedtTKEnter(Sender: TObject);
begin
  if IsNotHasData(qryDTPBOBJECT_ID) then
  begin
    ShowMessageUnicode(46);
    qryDTPBOBJECT_ID.FocusControl;
    exit;
  end;
  if FilterAccType<>0 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TCCDCINFFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryDTPB.Edit;
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
    qryDTPBALLOCATE_ACC.Value:=MainDM.qryPAccACCOUNT_ID.Value;
    if not MainDM.qryPAccOTYPE_ID.IsNull then
      qryDTPBUSEOTYPE_ID.Value:=MainDM.qryPAccOTYPE_ID.Value;
    if not MainDM.qryPAccDTYPE_ID.IsNull then
      qryDTPBUSEDTYPE_ID.Value:=MainDM.qryPAccOTYPE_ID.Value;
  end;
end;

procedure TCCDCINFFrm.dxDBPopupEdit2Enter(Sender: TObject);
begin
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TCCDCINFFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TCCDCINFFrm.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
  begin
    qryDTPB.Edit;
    Text := MainDM.qryPAccACCOUNT_ID.Value;
    qryDTPBAMORTISE_ACC.Value:= MainDM.qryPAccACCOUNT_ID.Value;
    qryDTPBOTYPE_ID.Value := MainDM.qryPAccOTYPE_ID.Value;

  end;
end;

procedure TCCDCINFFrm.BitBtn2Click(Sender: TObject);
begin

    self.Close;

end;

procedure TCCDCINFFrm.dxDBPopupEdit3InitPopup(Sender: TObject);
begin

// tradtt bo, dua qua su kien OnEnter, de phong nguoi dung khong so popup ma go so TK truc tiep

 // if FilterAccType<>27 then
//  begin
//    MainDM.qryPAcc.Filtered := false;
//    FilterAccType:=27;
//    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
//    MainDM.qryPAcc.Filtered := True;
//  end;
//  MainDM.qryPAcc.DisableControls;
//  MainDM.qryPAcc.Refresh;
//  MainDM.qryPAcc.EnableControls;
end;

procedure TCCDCINFFrm.pedtTKInitPopup(Sender: TObject);
begin
   if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TCCDCINFFrm.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TCCDCINFFrm.dxDBPopupEdit5Enter(Sender: TObject);
begin
 if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
  MainDM.CurObjTypeID:=MainDM.qryPAccDTYPE_ID.AsInteger;
end;

procedure TCCDCINFFrm.dxDBPopupEdit4Enter(Sender: TObject);
begin
  if qryDTPBAMORTISE_ACC.IsNull then
  begin
    MainDM.CurObjTypeID:= 0;
    exit;
  end
  else
 if FilterAccType<>27 then
  begin
    FilterAccType:=27;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBAMORTISE_ACC.Value,[]);
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TCCDCINFFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
  begin
    qryDTPB.Edit;
    text := vpItemID;
  end
end;

procedure TCCDCINFFrm.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
  begin
    qryDTPB.Edit;
    text := vpItemID;
  end
end;

procedure TCCDCINFFrm.qryDTPB_lstPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  kq:integer;
begin
  Action := daAbort;
  
end;

function TCCDCINFFrm.KIemtraYTPB: Boolean;
var
  LoaiTKPB:Smallint;
begin
  Result:=True;
  if Not (qryDTPB.State in [dsInsert, dsEdit]) then  exit;

  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
  LoaiTKPB:=MainDM.qryPAccDTYPE_ID.AsInteger;

  if IsNotHasData(qryDTPBUSEOBJECT_DETAIL) then
  begin
    if LoaiTKPB=0 then
    begin
      qryDTPBUSEOBJECT_DETAIL.Clear;
      qryDTPBUSEDTYPE_ID.Clear;
      exit;
    end;
  end;

  Result:=False;
  MainDM.dsPComObj.DataSet.Open;
  if qryDTPBUSEOBJECT_DETAIL.Value <> MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
  begin
    if Not MainDM.CheckObject(qryDTPBUSEOBJECT_DETAIL.Value,LoaiTKPB) then
    begin
      ShowHintBoxInComponent(self,qryDTPB,'USEOBJECT_DETAIL',46);
      exit;
    end;
    if qryDTPBUSEOBJECT_DETAIL.Value <>MainDM.CurObjID then
      qryDTPBUSEOBJECT_DETAIL.Value := MainDM.CurObjID;
  end;
  qryDTPBUSEDTYPE_ID.AsInteger:=MainDM.qryPAccDTYPE_ID.AsInteger;

  Result:=True;

end;

function TCCDCINFFrm.KIemtraDTPB: Boolean;
var
  LoaiTKPB:Smallint;
begin
  Result:=True;
  if Not (qryDTPB.State in [dsInsert, dsEdit]) then  exit;

  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
  LoaiTKPB:=MainDM.qryPAccOTYPE_ID.AsInteger;

  if qryDTPBUSEOBJECT_ID.IsNull then
  begin
    if LoaiTKPB=0 then exit;
    Result:=False;
    ShowHintBoxInComponent(self,qryDTPB,'USEOBJECT_ID',65);
    exit;
  end;
  if IsNotHasData(qryDTPBUSEOBJECT_ID) then
  begin
    if LoaiTKPB=0 then
    begin
      qryDTPBUSEOBJECT_ID.Clear;
      qryDTPBUSEOTYPE_ID.Clear;
      exit;
    end;
    Result:=False;
    //ShowMessageUnicode(176);
    //qryDTPBUSEOBJECT_ID.FocusControl;
    ShowHintBoxInComponent(self,qryDTPB,'USEOBJECT_ID',65);
    exit;
  end;

  Result:=False;
  MainDM.dsPComObj.DataSet.Open;
  if qryDTPBUSEOBJECT_ID.Value <> MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
  begin
    if Not MainDM.CheckObject(qryDTPBUSEOBJECT_ID.Value,LoaiTKPB) then
    begin
      ShowHintBoxInComponent(self,qryDTPB,'USEOBJECT_ID',46);
      exit;
    end;
    if qryDTPBUSEOBJECT_ID.Value <>MainDM.CurObjID then
      qryDTPBUSEOBJECT_ID.Value := MainDM.CurObjID;
  end;
  qryDTPBUSEOTYPE_ID.AsInteger:=MainDM.qryPAccOTYPE_ID.AsInteger;

  Result:=True;

end;

procedure TCCDCINFFrm.rbPBBENNOClick(Sender: TObject);
begin
  qryDTPB.edit;
end;

procedure TCCDCINFFrm.rbPBBENCOClick(Sender: TObject);
begin
  qryDTPB.edit;
end;

procedure TCCDCINFFrm.popOBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
  begin
    qryDTPB.Edit;
    text := vpItemID;
  end
end;

procedure TCCDCINFFrm.popOBJEnter(Sender: TObject);
begin
if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBAMORTISE_ACC.Value,[]);
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TCCDCINFFrm.qryDTPBPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var kq :integer;
  begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  MainDM.qryPAcc.Filtered:=False;
  kq:=ProcessErr(E,'CCDC');
  if kq=-803 then
    qryDTPBOBJECT_ID.FocusControl;

  with MainDM do
  if kq=-530 then
  begin
    if FilterAccType<>1 then
    begin
      FilterAccType:=1;
      qryPAcc.OnFilterRecord:= qryPAccFilterRecord;
      qryPAcc.Filtered := True;
    end;

    qryPAcc.Open;
    if qryPAcc.Locate('Account_id', qryDTPB_lstOACCOUNT_ID.Value,[])=False then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryDTPB_lstOACCOUNT_ID.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryDTPBALLOCATE_ACC.Value,[])=False then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryDTPBALLOCATE_ACC.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryDTPBAMORTISE_ACC.Value,[])=False then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryDTPBAMORTISE_ACC.FocusControl;
      exit;
    end;
{    IF qryDTPBOBRANCH_ID.Value = '' then
    begin
      ShowHintBoxInComponent(self,qryAsset,'BRANCH_ID',254);
      exit;
    end;
}
    ShowMessageUnicode(157,e.Message,0);
    qryDTPB_lstOBJGRP_ID.FocusControl;
    exit;
  end;

  MainDM.qryPAcc.Open;
  if kq=-836 then
  with MainDM do
  begin
    if FilterAccType<>1 then
    begin
      FilterAccType:=1;
      qryPAcc.OnFilterRecord:= qryPAccFilterRecord;
      qryPAcc.Filtered := True;
    end;

    ShowMessageUnicode(27,e.Message,0);
    if qryPAcc.Locate('Account_id', qryDTPB_lstOACCOUNT_ID.Value,[]) then
    if qryPAccISMIN.AsInteger=0 then
    begin
      qryDTPB_lstOACCOUNT_ID.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryDTPBALLOCATE_ACC.Value,[]) then
    if qryPAccISMIN.AsInteger=0 then
    begin
      qryDTPBALLOCATE_ACC.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryDTPBAMORTISE_ACC.Value,[]) then
    if qryPAccISMIN.AsInteger=0 then
    begin
      qryDTPBAMORTISE_ACC.FocusControl;
      exit;
    end;
  end;
end;

procedure TCCDCINFFrm.qryDTPBOBJECT_IDChange(Sender: TField);
begin
  qryDTPB_lst.close;
  qryDTPB_lst.open;

end;

procedure TCCDCINFFrm.qryDTPB_lstBeforeOpen(DataSet: TDataSet);
begin
  qryDTPB_lst.ParamByName('OBJECT_ID_IN').Value := qryDTPBOBJECT_ID.Value;
  qryDTPB_lst.ParamByName('OTYPE_ID_IN').Value := qryDTPBOTYPE_ID.Value;
  qryDTPB_lst.ParamByName('KYHT').Value := CurrentPeriod;
  qryDTPB_lst.ParamByName('BRANCH_ID').Value := vpBranch_id;

end;

procedure TCCDCINFFrm.qryDTPBAfterOpen(DataSet: TDataSet);
begin
isChangeAsset:=False;
end;

procedure TCCDCINFFrm.qryDTPBBeforeDelete(DataSet: TDataSet);
begin
{if prmUseDocumentLog then
    GhiNhatKyXoaPhieu('',0,'Xóa tài sản : '+ UTF8Encode(qryDTPBOBJECT_ID.Value));}
end;

procedure TCCDCINFFrm.dxDBPopupEdit7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TCCDCINFFrm.dxDBPopupEdit7Enter(Sender: TObject);
begin
if IsNotHasData(qryDTPBOBJECT_ID) then
  begin
    ShowMessageUnicode(46);
    qryDTPBOBJECT_ID.FocusControl;
    exit;
  end;
  if FilterAccType<>0 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  qryDTPB_lst.Edit;
end;

procedure TCCDCINFFrm.dxDBPopupEdit7InitPopup(Sender: TObject);
begin
 if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TCCDCINFFrm.qryDTPBBeforePost(DataSet: TDataSet);
var i : integer;
begin

end;

procedure TCCDCINFFrm.qryDTPBNewRecord(DataSet: TDataSet);
var nthang, nnam :Smallint;
begin
  nthang:=CurMonth;
  nnam := CurYear;
  if CurMonth=12 then
  begin
    nthang:=1;
    nnam:=nnam+1;
  end
  else
    nthang:=nthang+1;

  if CurrentPeriod<>BeginPeriod then
  begin
    qryDTPBBEGIN_MONTH.Value := nthang;
    qryDTPBBEGIN_YEAR.Value := nnam;
  end
  else
  begin
    qryDTPBBEGIN_MONTH.Value := CurMonth;
    qryDTPBBEGIN_YEAR.Value := CurYear;
  end;
  qryDTPBNAM_THANG.AsInteger:=0;
  //qryDTPB_lstOBJECT_STATUS.AsInteger:=1;
  qryDTPBUSING_LIFE.AsFloat := 12;
  qryDTPBAMOR_METHOD.AsInteger := 0;


  qryDTPBBINC_ID.Value := AssetDocInID;
  qryDTPBBINC_DATE.AsDateTime := AssetDocInDate;

   // tradtt: loi 1710, khong bung popup thi thieu otype_id
  qryDTPBOTYPE_ID.Value := MainDM.qryDTPBListOTYPE_ID.Value;

end;

procedure TCCDCINFFrm.BitBtn1Click(Sender: TObject);
begin
  if SaveAsset then
    self.Close;
end;

procedure TCCDCINFFrm.qryDTPBInfBeforePost(DataSet: TDataSet);
begin
MessageDlg('345', mtWarning, [mbOK], 0);
end;

procedure TCCDCINFFrm.qryDTPBBeforeEdit(DataSet: TDataSet);
begin
if Not MainDM.CheckAllowEdit(3) then Abort;
end;

procedure TCCDCINFFrm.qryDTPBBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(3) then Abort;
end;

procedure TCCDCINFFrm.qryDTPBALLOCATE_ACCChange(Sender: TField);
begin
  if IsHasData(qryDTPBALLOCATE_ACC) then
  begin
    MainDM.qryPAcc.Open;
    MainDM.qryPAcc.locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
    locDT.Enabled := not MainDM.qryPAccOTYPE_ID.IsNull;
    locYT.Enabled := not MainDM.qryPAccDTYPE_ID.IsNull;
  end;
end;

procedure TCCDCINFFrm.btnpnlCloseClick(Sender: TObject);
begin
  if qrykyphanbo.State = dsedit then
    qrykyphanbo.Post;
  pnlkyphanbo.Visible := false;
end;

procedure TCCDCINFFrm.btnkyphanboClick(Sender: TObject);
begin
  pnlkyphanbo.Visible := true;
  pnlkyphanbo.Left := btnkyphanbo.Left - pnlkyphanbo.Width + btnkyphanbo.Width;
  pnlkyphanbo.Top := btnkyphanbo.Top - pnlkyphanbo.Height;

end;

procedure TCCDCINFFrm.qrykyphanboBeforeOpen(DataSet: TDataSet);
begin
  qrykyphanbo.ParamByName('OBJECT_ID').Value := qryDTPBOBJECT_ID.Value;
  qrykyphanbo.ParamByName('OTYPE_ID').Value := qryDTPBOTYPE_ID.Value;
  qrykyphanbo.ParamByName('BRANCH_ID').Value := qryDTPB_lstOBRANCH_ID.Value;

end;

procedure TCCDCINFFrm.qryDTPBAfterPost(DataSet: TDataSet);
begin
  qrykyphanbo.Close;
  qrykyphanbo.open;
end;

function TCCDCINFFrm.KIemtraTKDTPB: Boolean;
begin
  if Not (qryDTPB.State in [dsInsert, dsEdit]) then
  begin
    Result:=True;
    exit;
  end;
  MainDM.qryPAcc.Open;
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  Result:=False;

  if IsNotHasData(qryDTPB_lstOACCOUNT_ID) then
  begin
    ShowHintBoxInComponent(self,qryDTPB_lst,'OACCOUNT_ID',67);
    exit;
  end;

  if MainDM.qryPAccAccount_ID.Value<>qryDTPB_lstOACCOUNT_ID.Value then
  if Not MainDM.qryPAcc.Locate('Account_ID',qryDTPB_lstOACCOUNT_ID.Value,[]) then
  begin

    ShowHintBoxInComponent(self,qryDTPB_lst,'OACCOUNT_ID',42);
    exit;
  end;
  if MainDM.qryPAccISMIN.AsInteger <>1 then
  begin
    if XulyTaikhoan(qryDTPB_lstOACCOUNT_ID.Value)='' then
      exit
    else
      qryDTPB_lstOACCOUNT_ID.Value:=SHTIEUKHOAN;
  end;
  Result:=True;
end;

function TCCDCINFFrm.KIemtraTKPB: Boolean;
begin
  if Not (qryDTPB.State in [dsInsert, dsEdit]) then
  begin
    Result:=True;
    exit;
  end;
  MainDM.qryPAcc.Open;
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  Result:=False;

  if IsNotHasData(qryDTPBALLOCATE_ACC) then
  begin
    ShowHintBoxInComponent(self,qryDTPB,'ALLOCATE_ACC',67);
    exit;
  end;

  if MainDM.qryPAccAccount_ID.Value<>qryDTPBALLOCATE_ACC.Value then
  if Not MainDM.qryPAcc.Locate('Account_ID',qryDTPBALLOCATE_ACC.Value,[]) then
  begin

    ShowHintBoxInComponent(self,qryDTPB,'ALLOCATE_ACC',42);
    exit;
  end;
  if MainDM.qryPAccISMIN.AsInteger <>1 then
  begin
    if XulyTaikhoan(qryDTPBALLOCATE_ACC.Value)='' then
      exit
    else
    begin
      qryDTPBALLOCATE_ACC.Value:=SHTIEUKHOAN;
      MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDTPBALLOCATE_ACC.Value,[]);
    end;
  end;
  if MainDM.qryPAccOTYPE_ID.AsInteger<>qryDTPBUSEOTYPE_ID.AsInteger then
  begin
    qryDTPB.Edit;
    if Not qryDTPBUSEOBJECT_ID.IsNull then
      qryDTPBUSEOBJECT_ID.Clear;
    qryDTPBUSEOTYPE_ID.Clear;
  end;
  locDT.Enabled:= Not MainDM.qryPAccOTYPE_ID.IsNull;
  // PHLQP Them 2005-08-16
  if MainDM.qryPAccDTYPE_ID.AsInteger<>qryDTPBUSEDTYPE_ID.AsInteger then
  begin
    qryDTPB.Edit;
    if not qryDTPBUSEOBJECT_DETAIL.IsNull then
      qryDTPBUSEOBJECT_DETAIL.Clear;
    qryDTPBUSEDTYPE_ID.clear;
  end;
  locYT.Enabled := Not MainDM.qryPAccDTYPE_ID.IsNull;
  // PHLQP Them 2005-08-16
  if Not locDT.Enabled then
    qryDTPBAMORTISE_ACC.FocusControl;

  Result:=True;
end;

procedure TCCDCINFFrm.qrykyphanboRYEARChange(Sender: TField);
begin
  qrykyphanboPERIOD_ID.Value := qrykyphanboRYEAR.Value * 12 + qrykyphanboRMONTH.Value; 
end;

procedure TCCDCINFFrm.qrykyphanboRMONTHChange(Sender: TField);
begin
  qrykyphanboPERIOD_ID.Value := qrykyphanboRYEAR.Value * 12 + qrykyphanboRMONTH.Value;
end;

procedure TCCDCINFFrm.qrykyphanboNewRecord(DataSet: TDataSet);
var ryear, rmonth : Smallint;
begin

  qrykyphanboOBJECT_ID.Value := qryDTPBOBJECT_ID.Value;
  qrykyphanboOTYPE_ID.Value := qryDTPBOTYPE_ID.Value;
  //qrykyphanboPERIOD_ID.Value := CurrentPeriod;
  qrykyphanboTHOIGIANPB.AsInteger := qryDTPBUSING_LIFE.AsInteger;

  ryear := CurrentPeriod div 12;
  rmonth := CurrentPeriod - ryear*12;
  if rmonth =0 then
  begin
    ryear := ryear -1;
    rmonth := 12;
  end;

  qrykyphanboRMONTH.Value := rmonth;
  qrykyphanboRYEAR.Value := ryear;
  qrykyphanbobMONTH.Value := rmonth;
  qrykyphanbobYEAR.Value := ryear;

end;

procedure TCCDCINFFrm.qrykyphanboAfterPost(DataSet: TDataSet);
begin
   qrykyphanbo.DisableControls;
   qrykyphanbo.Refresh;
   qrykyphanbo.EnableControls;
end;

procedure TCCDCINFFrm.qrykyphanboBeforeDelete(DataSet: TDataSet);
begin
 if not maindm.CheckAllowDelete(qrykyphanbo, 3) then abort; 
end;

procedure TCCDCINFFrm.grdkyphanboKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdkyphanbo, Key, Shift, True);
end;

procedure TCCDCINFFrm.qrykyphanboPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var kq :integer;
  begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  kq:=ProcessErr(E,'CCDC');
  if kq=-803 then
    qrykyphanboRMONTH.FocusControl;

end;

procedure TCCDCINFFrm.dxDBPopupEdit2Exit(Sender: TObject);
begin
    qryDTPB.Edit;
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
    qryDTPBALLOCATE_ACC.Value:=MainDM.qryPAccACCOUNT_ID.Value;
    if not MainDM.qryPAccOTYPE_ID.IsNull then
      qryDTPBUSEOTYPE_ID.Value:=MainDM.qryPAccOTYPE_ID.Value;
    if not MainDM.qryPAccDTYPE_ID.IsNull then
      qryDTPBUSEDTYPE_ID.Value:=MainDM.qryPAccOTYPE_ID.Value;
end;

procedure TCCDCINFFrm.qrykyphanboBMONTHChange(Sender: TField);
begin
  qrykyphanboKYBATDAUPB.Value := qrykyphanbobYEAR.Value * 12 + qrykyphanbobMONTH.Value;
end;

procedure TCCDCINFFrm.qrykyphanboBYEARChange(Sender: TField);
begin
  qrykyphanboKYBATDAUPB.Value := qrykyphanbobYEAR.Value * 12 + qrykyphanbobMONTH.Value;
end;

procedure TCCDCINFFrm.qrykyphanboBeforePost(DataSet: TDataSet);
begin
  if qrykyphanboKYBATDAUPB.Value < qrykyphanboPERIOD_ID.Value then
  begin
    abort;
    qrykyphanbobmonth.focuscontrol;
    exit;
  end
end;

procedure TCCDCINFFrm.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
   // tradtt them
  OnPopupCloseUp(Accept, MainDM.qryPObjGrp,
      qryDTPB_lst, 'OBJGRP_ID',
        'OBJGRP_ID', 'OBJGRP_ID', Text);
  MainDM.qryPObjGrp.Close;
  MainDM.qryPObjGrp.SQLWhere.Clear;
end;

procedure TCCDCINFFrm.dxDBPopupEdit3Enter(Sender: TObject);
begin
// tradtt them
 if FilterAccType<>27 then
  begin
    MainDM.qryPAcc.Filtered := false;
    FilterAccType:=27;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.DisableControls;
  MainDM.qryPAcc.Refresh;
  MainDM.qryPAcc.EnableControls;
end;

end.
