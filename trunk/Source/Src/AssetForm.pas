unit AssetForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClEx, IBODataset, dxBar, Menus,
  TntStdCtrls, TntButtons, ElXPThemedControl, ElEdits, ElCaption,
  ElCheckCtl, ElBtnCtl, ElPopBtn, ElPanel, ElGroupBox, ElCheckItemGrp,
  ElSplit;

type
  TAssetFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    pedtTK: TdxDBPopupEdit;
    lciTK: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxDBPopupEdit4: TdxDBPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    lciLuyke: TdxLayoutGroup;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    spnPTKH: TdxDBSpinEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    spnTGSD: TdxDBSpinEdit;
    dxLayoutControl1Item45: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locDT: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    qryAsset: TIBOQuery;
    qryAssetOTYPE_ID: TSmallintField;
    qryAssetOBJECT_STATUS: TSmallintField;
    qryAssetBINC_DATE: TDateField;
    qryAssetAMOR_METHOD: TSmallintField;
    qryAssetUSEOTYPE_ID: TIntegerField;
    qryAssetBEGIN_MONTH: TSmallintField;
    qryAssetBEGIN_YEAR: TIntegerField;
    qryAssetOBJECT_ID: TWideStringField;
    qryAssetOBJECT_NAME: TWideStringField;
    qryAssetOTHER_NAME: TWideStringField;
    qryAssetSUBINFO_1: TWideStringField;
    qryAssetSUBINFO_2: TWideStringField;
    qryAssetOBJECT_NOTES: TWideStringField;
    qryAssetALLOCATE_ACC: TWideStringField;
    qryAssetAMORTISE_ACC: TWideStringField;
    qryAssetBINC_ID: TWideStringField;
    qryAssetUSEOBJECT_ID: TWideStringField;
    dsAsset: TDataSource;
    qryAsset_Lst: TIBOQuery;
    qryAsset_LstOTYPE_ID: TSmallintField;
    qryAsset_LstBINC_DATE: TDateField;
    qryAsset_LstUSEOTYPE_ID: TIntegerField;
    qryAsset_LstBEGIN_MONTH: TSmallintField;
    qryAsset_LstBEGIN_YEAR: TIntegerField;
    qryAsset_LstASSET_ID: TWideStringField;
    qryAsset_LstALLOCATE_ACC: TWideStringField;
    qryAsset_LstAMORTISE_ACC: TWideStringField;
    qryAsset_LstBINC_ID: TWideStringField;
    qryAsset_LstUSEOBJECT_ID: TWideStringField;
    dsAsset_Lst: TDataSource;
    qryAsset_LstAMOR_VALUE: TIBOFloatField;
    qryAssetAMOR_VALUE: TIBOFloatField;
    qryAssetNGUYENGIA: TIBOFloatField;
    qryAssetHAOMON: TIBOFloatField;
    qryAssetGTCL: TIBOFloatField;
    qryAssetOBJGRP_ID: TWideStringField;
    qryAssetOACCOUNT_ID: TWideStringField;
    qryAssetLASTUSER_MODIFY: TWideStringField;
    rbGrpPPKH: TElRadioGroup;
    rbNam: TElRadioButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    rbThang: TElRadioButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    qryAssetNAM_THANG: TSmallintField;
    qryAsset_LstNAM_THANG: TSmallintField;
    qryAssetUSING_LIFE: TIBOFloatField;
    qryAssetAMOR_PERCENT: TIBOFloatField;
    qryAsset_LstAMOR_METHOD: TSmallintField;
    qryAsset_LstAMOR_PERCENT: TIBOFloatField;
    qryAsset_LstUSING_LIFE: TIBOFloatField;
    dxLayoutControl1Item20: TdxLayoutItem;
    locYT: TdxLayoutItem;
    dxDBPopupEdit5: TdxDBPopupEdit;
    qryAssetUSEOBJECT_DETAIL: TWideStringField;
    qryAssetUSEDTYPE_ID: TSmallintField;
    qryAsset_LstUSEOBJECT_DETAIL: TWideStringField;
    qryAsset_LstUSEDTYPE_ID: TSmallintField;
    dxLayoutControl1Item26: TdxLayoutItem;
    popBranch: TdxDBPopupEdit;
    qryAssetOBRANCH_ID: TWideStringField;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    top: TdxLayoutGroup;
    topleft: TdxLayoutGroup;
    ElPanel1: TElPanel;
    grdObj: TdxDBGrid;
    grdObj_ID: TdxDBGridColumn;
    grdObj_Name: TdxDBGridColumn;
    grdObjGrp: TdxDBGridPopupColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TElPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    BitBtn3: TElPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    BitBtn1: TElPopupButton;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    locYT2: TdxLayoutItem;
    dxDBPopupEdit6: TdxDBPopupEdit;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ElSplitter1: TElSplitter;
    dxLayoutControl10Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    dxLayoutControl1Item28: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    DataSetCancel1: TDataSetCancel;
    qryAssetUSEOBJECT_DETAIL_1: TWideStringField;
    qryAssetUSEDTYPE_ID_1: TSmallintField;
    qryAsset_LstUSEOBJECT_DETAIL_1: TWideStringField;
    qryAsset_LstUSEDTYPE_ID_1: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pedtTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryAssetAfterOpen(DataSet: TDataSet);
    procedure qryAssetAfterPost(DataSet: TDataSet);
    procedure qryAssetBeforeEdit(DataSet: TDataSet);
    procedure qryAssetNewRecord(DataSet: TDataSet);
    procedure qryAssetPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryAsset_LstPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryAssetUSING_LIFEChange(Sender: TField);
    procedure qryAssetAMOR_PERCENTChange(Sender: TField);
    function SaveAsset():Boolean;
    procedure ElPopupButton3Click(Sender: TObject);
    procedure qryAssetAfterInsert(DataSet: TDataSet);
    procedure pedtTKEnter(Sender: TObject);
    procedure dxDBPopupEdit2Enter(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
    procedure dxDBPopupEdit3Enter(Sender: TObject);
    function KIemtraTKTS:Boolean;
    function KIemtraNhom:Boolean;
    function KIemtraTKPB:Boolean;
    function KIemtraDTPB:Boolean;
    function KIemtraYTPB:Boolean;
    function KIemtraTKKH:Boolean;
    procedure qryAssetBeforeInsert(DataSet: TDataSet);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBCalcEdit1Validate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure qryAssetOACCOUNT_IDChange(Sender: TField);
    procedure qryAssetOBJGRP_IDChange(Sender: TField);
    procedure qryAssetALLOCATE_ACCChange(Sender: TField);
    procedure qryAssetAMORTISE_ACCChange(Sender: TField);
    procedure qryAssetUSEOBJECT_IDChange(Sender: TField);
    procedure qryAssetBeforeDelete(DataSet: TDataSet);
    procedure rbGrpPPKHClick(Sender: TObject);
    procedure rbNamClick(Sender: TObject);
    procedure rbThangClick(Sender: TObject);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5Enter(Sender: TObject);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryAssetUSEOBJECT_DETAILChange(Sender: TField);
    procedure popBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElSplitter1Click(Sender: TObject);
    procedure qryAssetAMOR_METHODChange(Sender: TField);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit6Enter(Sender: TObject);
  private
    isChangeAsset:Boolean;//Co bao hieu co thay doi thong tin tren TSCD hoac Thong tin khau hao khong?
    PreviousAccFilterType:Smallint;//Nho lai loai tk truoc khi vao form nay
    PrevObjTypeID:Integer;
    { Private declarations }
  public
    fromwhere:Smallint;//Goi tu form nao, =1: tu chung tu, 0: tu danh sach
  end;

var
  AssetFrm: TAssetFrm;

implementation

uses MainDataMdl, PopupForm, GlobalUnit, Functions, CM_PopupForm,
  CM_Functions, DBFunctions, HtmlHlp, Math, DateUtils;


{$R *.dfm}

procedure TAssetFrm.FormCreate(Sender: TObject);
begin
  LastModifyItemID:='';

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self,0);
  dxLayoutControl1.EndUpdate;

  if prmUSEUPPERCASE then
  begin
    dxDBEdit2.CharCase := ecUpperCase;
    dxDBPopupEdit1.CharCase := ecUpperCase;
    dxDBPopupEdit2.CharCase := ecUpperCase;
    dxDBPopupEdit3.CharCase := ecUpperCase;
    dxDBPopupEdit4.CharCase := ecUpperCase;
    pedtTK.CharCase := ecUpperCase;
  end;
  qryAssetNGUYENGIA.DisplayFormat := TIENTE_FORMAT;
  qryAssetHAOMON.DisplayFormat := TIENTE_FORMAT;
  qryAssetGTCL.DisplayFormat := TIENTE_FORMAT;
  qryAssetAMOR_VALUE.DisplayFormat := TIENTE_FORMAT;

  PrevObjTypeID := MainDM.CurObjTypeID;
  MainDM.CurObjTypeID := 3;
  qryAsset.Close;
  qryAsset.ParamByName('SHTS').Value := SohieuTSCD;
  qryAsset.ParamByName('KYHT').Value := CurrentPeriod;
  qryAsset.ParamByName('BRANCH_ID').Value := vpBranch_id;
  qryAsset.Open;
  PreviousAccFilterType := FilterAccType;
  with MainDM do
  begin
    qryPAcc.Open;
    qryPObjGrp.Open;
  end;
  ElSplitter1.Snap(FALSE);
end;

procedure TAssetFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with qryAsset do
  begin
    if State in [dsInsert, dsEdit] then
      Cancel;
    Close;
  end;
  AssetDocInID := '';
  if FilterAccType <> PreviousAccFilterType then
  begin
    FilterAccType:=PreviousAccFilterType;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.CurObjTypeID := PrevObjTypeID;
  if MainDM.qryAssetList.Active then
    MainDM.qryAssetList.Refresh;
end;

procedure TAssetFrm.pedtTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TAssetFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryAsset.Edit;
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
    qryAssetALLOCATE_ACC.Value:=MainDM.qryPAccACCOUNT_ID.Value;
  end;
end;

procedure TAssetFrm.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryAsset.Edit;
    Text := MainDM.qryPAccACCOUNT_ID.Value;
    qryAssetAMORTISE_ACC.Value:= MainDM.qryPAccACCOUNT_ID.Value;
  end;
end;

procedure TAssetFrm.BitBtn1Click(Sender: TObject);
var soTS:widestring;
begin
  if SaveAsset then
  begin
    IsChangeList:=True;
    //ModalResult := mrOk;

    // tradtt: sau khi luu refresh lai de doc lai nguyen gia neu co thay doi
    try
      soTS:= qryAssetOBJECT_ID.Value;
      qryAsset.refresh;
      if not qryAsset.Active then qryAsset.Open;
      qryAsset.Locate('OBJECT_ID',soTS,[]);
    
    except
    end;

  end;
end;

procedure TAssetFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/KetoanTSCD.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TAssetFrm.FormShow(Sender: TObject);
begin
  if SohieuTSCD='' then
    qryAsset.Insert;

  rbGrpPPKH.ItemIndex:=qryAssetAMOR_METHOD.AsInteger;
  if qryAssetNAM_THANG.AsInteger=0 then
    rbNam.Checked:=True
  else
    rbThang.Checked:=True;
  //Enable box doi tuong, yeu to theo tk
  if IsHasData(qryAssetALLOCATE_ACC) then
  begin
    MainDM.qryPAcc.Open;
    MainDM.qryPAcc.locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
    locDT.Enabled := not MainDM.qryPAccOTYPE_ID.IsNull;
    locYT.Enabled := not MainDM.qryPAccDTYPE_ID.IsNull;
    locYT2.Enabled := not MainDM.qryPAccDTYPE_ID_1.IsNull;    
  end;
  //--------------------------------

  if MainDM.qryBranchMain.RecordCount = 1 then
    popBranch.Enabled := FALSE;

  SetVisible(Self);
end;

procedure TAssetFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    qryAsset.Edit;
    qryAssetUSEOTYPE_ID.Value := CurObjTypeID;
    qryAssetUSEOBJECT_ID.Value := vpItemID;
  end;
end;

function TAssetFrm.SaveAsset():Boolean;
begin
  Result:=False;
    if IsNotHasData(qryAssetOBJECT_ID) then
    begin

      ShowHintBoxInComponent(self,qryAsset,'OBJECT_ID',155);
      exit;
    end;
    if KIemtraTKTS=False then exit;
    if KIemtraNhom=False then exit;
    if KIemtraTKPB=False then exit;
    if KIemtraDTPB=False then exit;
    if KIemtraYTPB=False then exit;
    if KIemtraTKKH=False then exit;

    if ((qryAssetAMOR_METHOD.AsInteger=1) and (qryAssetUSING_LIFE.AsFloat=0)) then
    begin

      ShowHintBoxInComponent(self,qryAsset,'USING_LIFE',156);
      Abort;
    end;
    AssetAccountID := qryAssetOACCOUNT_ID.Value;
    vpItemID     := qryAssetOBJECT_ID.Value;
    vpItemName   := qryAssetOBJECT_NAME.Value;

    try
      if qryAsset.State in [dsEdit, dsInsert] then
      begin
        if prmUseDocumentLog then
          qryAssetLASTUSER_MODIFY.Value:=CurrentUser
        else
          qryAssetLASTUSER_MODIFY.Clear;
        qryAsset.Post;
      end;
    except
      exit;
    end;

  LastModifyItemID:=qryAssetOBJECT_ID.Value;
  Result:=True;
end;

procedure TAssetFrm.qryAssetAfterOpen(DataSet: TDataSet);
begin
  isChangeAsset:=False;
end;

procedure TAssetFrm.qryAssetAfterPost(DataSet: TDataSet);
begin
  if MainDM.qryAssetList.Active then
    MainDM.qryAssetList.Refresh;
  if MainDM.qryObject.Active then MainDM.qryObject.Refresh;
  MainDM.qryPTS.Close;
  //if isChangeAsset then
  begin
    qryAsset_Lst.Open;
    qryAsset_Lst.Edit;
    qryAsset_LstASSET_ID.Value := qryAssetOBJECT_ID.Value;
    qryAsset_LstOTYPE_ID.AsInteger := qryAssetOTYPE_ID.AsInteger;
    qryAsset_LstALLOCATE_ACC.Value :=qryAssetALLOCATE_ACC.Value;
    qryAsset_LstAMORTISE_ACC.Value := qryAssetAMORTISE_ACC.Value;
    qryAsset_LstBEGIN_MONTH.Value := qryAssetBEGIN_MONTH.Value;
    qryAsset_LstBEGIN_YEAR.Value := qryAssetBEGIN_YEAR.Value;
    qryAsset_LstBINC_ID.Value := qryAssetBINC_ID.Value;
    qryAsset_LstBINC_DATE.Value := qryAssetBINC_Date.Value;
    qryAsset_LstUSING_LIFE.AsFloat := qryAssetUSING_LIFE.AsFloat;
    qryAsset_LstAMOR_METHOD.AsInteger := qryAssetAMOR_METHOD.AsInteger;
    qryAsset_LstAMOR_PERCENT.AsFloat := qryAssetAMOR_PERCENT.AsFloat;
    qryAsset_LstAMOR_VALUE.AsFloat := qryAssetAMOR_VALUE.AsFloat;
    qryAsset_LstNAM_THANG.AsInteger := qryAssetNAM_THANG.AsInteger;

    // PHLQP bo 2005-08-16
    if qryAssetUSEOBJECT_ID.IsNull then
    begin
      qryAsset_lst.FieldByName('USEOBJECT_ID').Value := null;
      qryAsset_lst.FieldByName('USEOTYPE_ID').Value := null;
    end
    else
    begin
      qryAsset_LstUSEOBJECT_ID.Value := qryAssetUSEOBJECT_ID.Value;
      qryAsset_LstUSEOTYPE_ID.Value := qryAssetUSEOTYPE_ID.Value;
    end;

    if qryAssetUSEOBJECT_DETAIL.IsNull then
    begin
      qryAsset_lst.FieldByName('USEOBJECT_DETAIL').Value := null;
      qryAsset_lst.FieldByName('USEDTYPE_ID').Value := null;
    end
    else
    begin
      qryAsset_LstUSEOBJECT_DETAIL.Value := qryAssetUSEOBJECT_DETAIL.Value;
      qryAsset_LstUSEDTYPE_ID.Value := qryAssetUSEDTYPE_ID.Value;
    end;

    qryAsset_Lst.Post;
    qryAsset_Lst.Close;
  end;
end;

procedure TAssetFrm.qryAssetBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(3) then Abort;
end;

procedure TAssetFrm.qryAssetNewRecord(DataSet: TDataSet);
var
  nthang, nnam :Smallint;
begin
  nthang:=CurMonth;
  nnam := CurYear;
  if CurMonth=12 then
  begin
    nthang:=1;
    nnam:=nnam+1;
  end ;
  // tradtt bo: loi 1830, thang bat dau khau hao la thang hien tai
 // else
//    nthang:=nthang+1;

  if CurrentPeriod<>BeginPeriod then
  begin
    qryAssetBEGIN_MONTH.Value := nthang;
    qryAssetBEGIN_YEAR.Value := nnam;
  end
  else
  begin
    qryAssetBEGIN_MONTH.Value := CurMonth;
    qryAssetBEGIN_YEAR.Value := CurYear;
  end;
  qryAssetNAM_THANG.AsInteger:=0;
  qryAssetOBJECT_STATUS.AsInteger:=0;
  qryAssetOtype_id.AsInteger := 3;
  qryAssetUSING_LIFE.AsFloat := 20;
  qryAssetAMOR_PERCENT.AsFloat := 5;
  qryAssetAMOR_METHOD.AsInteger := 0;
  if AssetAccountID<>'' then
    qryAssetOACCOUNT_ID.Value := AssetAccountID;
  qryAssetBINC_ID.Value := AssetDocInID;
  if AssetDocInDate<>0 then
    qryAssetBINC_DATE.AsDateTime := AssetDocInDate
  else
    qryAssetBINC_DATE.AsDateTime := Today;
end;

procedure TAssetFrm.qryAssetPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
var
  kq:integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  MainDM.qryPAcc.Filtered:=False;
  kq:=ProcessErr(E,'tài sản');
  if kq=-803 then
    qryAssetOBJECT_ID.FocusControl;

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
    if qryPAcc.Locate('Account_id', qryAssetOACCOUNT_ID.Value,[])=False then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryAssetOACCOUNT_ID.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryAssetALLOCATE_ACC.Value,[])=False then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryAssetALLOCATE_ACC.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryAssetAMORTISE_ACC.Value,[])=False then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryAssetAMORTISE_ACC.FocusControl;
      exit;
    end;
    IF qryAssetOBRANCH_ID.Value = '' then
    begin
      ShowHintBoxInComponent(self,qryAsset,'BRANCH_ID',254);
      exit;
    end;

    ShowMessageUnicode(157,e.Message,0);
    qryAssetOBJGRP_ID.FocusControl;
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
    if qryPAcc.Locate('Account_id', qryAssetOACCOUNT_ID.Value,[]) then
    if qryPAccISMIN.AsInteger=0 then
    begin
      qryAssetOACCOUNT_ID.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryAssetALLOCATE_ACC.Value,[]) then
    if qryPAccISMIN.AsInteger=0 then
    begin
      qryAssetALLOCATE_ACC.FocusControl;
      exit;
    end;
    if qryPAcc.Locate('Account_id', qryAssetAMORTISE_ACC.Value,[]) then
    if qryPAccISMIN.AsInteger=0 then
    begin
      qryAssetAMORTISE_ACC.FocusControl;
      exit;
    end;
  end;
end;

procedure TAssetFrm.qryAsset_LstPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ProcessErr(E,'',0);
end;

procedure TAssetFrm.qryAssetUSING_LIFEChange(Sender: TField);
begin
  isChangeAsset:=True;
  if qryAssetAMOR_METHOD.AsInteger<>1 then Exit;

  if qryAssetUSING_LIFE.AsFloat<>0 then
  begin
    if qryAssetNAM_THANG.AsInteger=0 then
      qryAssetAMOR_VALUE.AsFloat := Round(qryAssetNGUYENGIA.AsFloat/(qryAssetUSING_LIFE.AsFloat*12))
    else
      qryAssetAMOR_VALUE.AsFloat := Round(qryAssetNGUYENGIA.AsFloat/ qryAssetUSING_LIFE.AsFloat);
  end;
  if qryAssetAMOR_VALUE.AsFloat> qryAssetGTCL.AsFloat then
    qryAssetAMOR_VALUE.AsFloat:=qryAssetGTCL.AsFloat;
end;

procedure TAssetFrm.qryAssetAMOR_PERCENTChange(Sender: TField);
begin
  isChangeAsset:=True;
  if qryAssetAMOR_METHOD.AsInteger<>0 then Exit;

  if qryAssetNAM_THANG.AsInteger=0 then
    qryAssetAMOR_VALUE.AsFloat := Round(qryAssetNGUYENGIA.AsFloat*qryAssetAMOR_PERCENT.AsFloat/1200)
  else
    qryAssetAMOR_VALUE.AsFloat := Round(qryAssetNGUYENGIA.AsFloat*qryAssetAMOR_PERCENT.AsFloat/100);
  if qryAssetAMOR_VALUE.AsFloat> qryAssetGTCL.AsFloat then
    qryAssetAMOR_VALUE.AsFloat:=qryAssetGTCL.AsFloat;
end;

procedure TAssetFrm.ElPopupButton3Click(Sender: TObject);
begin
  if qryAsset.State in [dsInsert, dsEdit] then
    If ShowMessageUnicode(21, '', 4) = 6 then
    begin
      if not SaveAsset then
        exit;
    end
    else
      exit;

  SohieuTSCD:='';
  AssetAccountID:=qryAssetOACCOUNT_ID.Value;
  AssetDocInID:=qryAssetBINC_ID.Value;
  AssetDocInDate:=qryAssetBINC_DATE.Value;
  IsChangeList:=True;
  qryAsset.Insert;

end;

procedure TAssetFrm.qryAssetAfterInsert(DataSet: TDataSet);
begin
  qryAssetOBJECT_ID.FocusControl;
end;

procedure TAssetFrm.pedtTKEnter(Sender: TObject);
begin
  if FilterAccType<>4 then
  begin
    FilterAccType:=4;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TAssetFrm.dxDBPopupEdit2Enter(Sender: TObject);
begin
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TAssetFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TAssetFrm.dxDBPopupEdit3Enter(Sender: TObject);
begin
  if FilterAccType<>5 then
  begin
    FilterAccType:=5;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;
function TAssetFrm.KiemtraTKTS:Boolean;
begin
  if Not (qryAsset.State in [dsInsert, dsEdit]) then
  begin
    Result:=True;
    exit;
  end;
  MainDM.qryPAcc.Open;
  if FilterAccType<>4 then
  begin
    FilterAccType:=4;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  Result:=False;

  if IsNotHasData(qryAssetOACCOUNT_ID) then
  begin
    //ShowMessageUnicode(67);
    //qryAssetOACCOUNT_ID.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'OACCOUNT_ID',67);
    exit;
  end;

  if MainDM.qryPAccAccount_ID.Value<>qryAssetOACCOUNT_ID.Value then
  if Not MainDM.qryPAcc.Locate('Account_ID',qryAssetOACCOUNT_ID.Value,[]) then
  begin
    //ShowMessageUnicode(42);
    //qryAssetOACCOUNT_ID.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'OACCOUNT_ID',42);
    exit;
  end;
  if MainDM.qryPAccISMIN.AsInteger <>1 then
  begin
    if XulyTaikhoan(qryAssetOACCOUNT_ID.Value)='' then
      exit
    else
      qryAssetOACCOUNT_ID.Value:=SHTIEUKHOAN;
  end;
  Result:=True;
end;

function TAssetFrm.KIemtraNhom:Boolean;
begin
  Result:=True;
  if Not (qryAsset.State in [dsEdit, dsInsert]) then exit;

  if IsNotHasData(qryAssetOBJGRP_ID) then
  begin
    //ShowMessageUnicode(175);
    //qryAssetOBJGRP_ID.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'OBJGRP_ID',175);
    Result:=False;
    exit;
  end;
  MainDM.qryPObjGrp.Open;
  if (qryAssetOBJGRP_ID.Value<>MainDM.qryPObjGrpOBJGRP_ID.Value) then
  if Not MainDM.qryPObjGrp.Locate('OBJGRP_ID',qryAssetOBJGRP_ID.Value,[]) then
  begin
    //ShowMessageUnicode(175);
    //qryAssetOBJGRP_ID.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'OBJGRP_ID',42);
    Result:=False;
    exit;
  end;

  Result:=True;
end;

function TAssetFrm.KIemtraTKPB:Boolean;
begin
  if Not (qryAsset.State in [dsInsert, dsEdit]) then
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

  if IsNotHasData(qryAssetALLOCATE_ACC) then
  begin
    //ShowMessageUnicode(67);
    //qryAssetALLOCATE_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'ALLOCATE_ACC',67);
    exit;
  end;

  if MainDM.qryPAccAccount_ID.Value<>qryAssetALLOCATE_ACC.Value then
  if Not MainDM.qryPAcc.Locate('Account_ID',qryAssetALLOCATE_ACC.Value,[]) then
  begin
    //ShowMessageUnicode(42);
    //qryAssetALLOCATE_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'ALLOCATE_ACC',42);
    exit;
  end;
  if MainDM.qryPAccISMIN.AsInteger <>1 then
  begin
    if XulyTaikhoan(qryAssetALLOCATE_ACC.Value)='' then
      exit
    else
    begin
      qryAssetALLOCATE_ACC.Value:=SHTIEUKHOAN;
      MainDM.qryPAcc.Locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
    end;
  end;
  if MainDM.qryPAccOTYPE_ID.AsInteger<>qryAssetUSEOTYPE_ID.AsInteger then
  begin
    qryAsset.Edit;
    if Not qryAssetUSEOBJECT_ID.IsNull then
      qryAssetUSEOBJECT_ID.Clear;
    qryAssetUSEOTYPE_ID.Clear;
  end;
  locDT.Enabled:= Not MainDM.qryPAccOTYPE_ID.IsNull;
  // PHLQP Them 2005-08-16
  if MainDM.qryPAccDTYPE_ID.AsInteger<>qryAssetUSEDTYPE_ID.AsInteger then
  begin
    qryAsset.Edit;
    if not qryAssetUSEOBJECT_DETAIL.IsNull then
      qryAssetUSEOBJECT_DETAIL.Clear;
    qryAssetUSEDTYPE_ID.clear;
  end;
  locYT.Enabled := Not MainDM.qryPAccDTYPE_ID.IsNull;
//  thuyttb them 2009-04-23
  if MainDM.qryPAccDTYPE_ID_1.AsInteger<>qryAssetUSEDTYPE_ID_1.AsInteger then
  begin
    qryAsset.Edit;
    if not qryAssetUSEOBJECT_DETAIL_1.IsNull then
      qryAssetUSEOBJECT_DETAIL_1.Clear;
    qryAssetUSEDTYPE_ID_1.clear;
  end;
  locYT2.Enabled := Not MainDM.qryPAccDTYPE_ID_1.IsNull;

  // PHLQP Them 2005-08-16
  if Not locDT.Enabled then
    qryAssetAMORTISE_ACC.FocusControl;

  Result:=True;
end;

function TAssetFrm.KIemtraDTPB:Boolean;
var
  LoaiTKPB:Smallint;
begin
  Result:=True;
  if Not (qryAsset.State in [dsInsert, dsEdit]) then  exit;

  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
  LoaiTKPB:=MainDM.qryPAccOTYPE_ID.AsInteger;

  if qryAssetUSEOBJECT_ID.IsNull then
  begin
    if LoaiTKPB=0 then exit;
    Result:=False;
    //ShowMessageUnicode(176);
    //qryAssetUSEOBJECT_ID.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'USEOBJECT_ID',176);
    exit;
  end;
  if IsNotHasData(qryAssetUSEOBJECT_ID) then
  begin
    if LoaiTKPB=0 then
    begin
      qryAssetUSEOBJECT_ID.Clear;
      qryAssetUSEOTYPE_ID.Clear;
      exit;
    end;
    Result:=False;
    //ShowMessageUnicode(176);
    //qryAssetUSEOBJECT_ID.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'USEOBJECT_ID',176);
    exit;
  end;

  Result:=False;
  MainDM.dsPComObj.DataSet.Open;
  if qryAssetUSEOBJECT_ID.Value <> MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
  begin
    if Not MainDM.CheckObject(qryAssetUSEOBJECT_ID.Value,LoaiTKPB) then
    begin
      //ShowMessageUnicode(46);
      //qryAssetUSEOBJECT_ID.FocusControl;
      ShowHintBoxInComponent(self,qryAsset,'USEOBJECT_ID',46);
      exit;
    end;
    if qryAssetUSEOBJECT_ID.Value <>MainDM.CurObjID then
      qryAssetUSEOBJECT_ID.Value := MainDM.CurObjID;
  end;
  qryAssetUSEOTYPE_ID.AsInteger:=MainDM.qryPAccOTYPE_ID.AsInteger;

  Result:=True;
end;

function TAssetFrm.KIemtraYTPB:Boolean;
var
  LoaiTKPB:Smallint;
begin
  Result:=True;
  if Not (qryAsset.State in [dsInsert, dsEdit]) then  exit;

  if FilterAccType<>1 then
  begin
    FilterAccType:=1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
  LoaiTKPB:=MainDM.qryPAccDTYPE_ID.AsInteger;

  {if qryAssetUSEOBJECT_DETAIL.IsNull then
  begin
    if LoaiTKPB=0 then exit;
    Result:=False;
    ShowMessageUnicode(176);
    qryAssetUSEOBJECT_DETAIL.FocusControl;
    exit;
  end;}
  if IsNotHasData(qryAssetUSEOBJECT_DETAIL) then
  begin
    if LoaiTKPB=0 then
    begin
      qryAssetUSEOBJECT_DETAIL.Clear;
      qryAssetUSEDTYPE_ID.Clear;
      exit;
    end;
    {Result:=False;
    ShowMessageUnicode(176);
    qryAssetUSEOBJECT_DETAIL.FocusControl;
    exit;}
  end;

  Result:=False;
  MainDM.dsPComObj.DataSet.Open;
  if qryAssetUSEOBJECT_DETAIL.Value <> MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
  begin
    if Not MainDM.CheckObject(qryAssetUSEOBJECT_DETAIL.Value,LoaiTKPB) then
    begin
      //ShowMessageUnicode(46);
      //qryAssetUSEOBJECT_DETAIL.FocusControl;
      ShowHintBoxInComponent(self,qryAsset,'USEOBJECT_DETAIL',46);
      exit;
    end;
    if qryAssetUSEOBJECT_DETAIL.Value <>MainDM.CurObjID then
      qryAssetUSEOBJECT_DETAIL.Value := MainDM.CurObjID;
  end;
  qryAssetUSEDTYPE_ID.AsInteger:=MainDM.qryPAccDTYPE_ID.AsInteger;

  Result:=True;
end;

function TAssetFrm.KIemtraTKKH:Boolean;
begin
  if Not (qryAsset.State in [dsInsert, dsEdit]) then
  begin
    Result:=True;
    exit;
  end;
  MainDM.qryPAcc.Open;
  if FilterAccType<>5 then
  begin
    FilterAccType:=5;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  Result:=False;
 // tradtt bo:
 //thuyttb mo
  if IsNotHasData(qryAssetAMORTISE_ACC) then
  begin
    ShowHintBoxInComponent(self,qryAsset,'AMORTISE_ACC',67);
    exit;
  end;
//thuyttb dong
{ if (dxDBPopupEdit3.Text='') then
  begin
    ShowHintBoxInComponent(self,qryAsset,'AMORTISE_ACC',67);
    exit;
  end;}

  if MainDM.qryPAccAccount_ID.Value<>qryAssetAMORTISE_ACC.Value then
  if Not MainDM.qryPAcc.Locate('Account_ID',qryAssetAMORTISE_ACC.Value,[]) then
  begin
    //ShowMessageUnicode(42);
    //qryAssetAMORTISE_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryAsset,'AMORTISE_ACC',42);
    exit;
  end;
  if MainDM.qryPAccISMIN.AsInteger <>1 then
  begin
    if XulyTaikhoan(qryAssetAMORTISE_ACC.Value)='' then
      exit
    else
      qryAssetAMORTISE_ACC.Value:=SHTIEUKHOAN;
  end;
  Result:=True;
end;


procedure TAssetFrm.qryAssetBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(3) then Abort;
end;

procedure TAssetFrm.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
//[NXHop sua]
{if Accept then
   Text := MainDM.qryPObjGrpOBJGRP_ID.Value;
}
  OnPopupCloseUp(Accept, MainDM.qryPObjGrp,
      qryAsset, 'OBJGRP_ID',
        'OBJGRP_ID', 'OBJGRP_ID', Text);
  MainDM.qryPObjGrp.Close;
  MainDM.qryPObjGrp.SQLWhere.Clear;
end;

procedure TAssetFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/KetoanTSCD.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
  if Key=VK_escape then
    if not ElSplitter1.SnappedRight then
      ElSplitter1.Snap(FALSE);
end;

procedure TAssetFrm.dxDBCalcEdit1Validate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if dxDBCalcEdit1.Text='' then
    dxDBCalcEdit1.Text:='0';
end;

procedure TAssetFrm.qryAssetOACCOUNT_IDChange(Sender: TField);
begin
  KIemtraTKTS;
end;

procedure TAssetFrm.qryAssetOBJGRP_IDChange(Sender: TField);
begin
  KIemtraNhom;
end;

procedure TAssetFrm.qryAssetALLOCATE_ACCChange(Sender: TField);
begin
  KIemtraTKPB;
end;

procedure TAssetFrm.qryAssetAMORTISE_ACCChange(Sender: TField);
begin
  KIemtraTKKH;
end;

procedure TAssetFrm.qryAssetUSEOBJECT_IDChange(Sender: TField);
begin
  if IsHasData(qryAssetUSEOBJECT_ID) then
    KiemtraDTPB;
end;

procedure TAssetFrm.qryAssetBeforeDelete(DataSet: TDataSet);
begin
  if prmUseDocumentLog then
    GhiNhatKyXoaPhieu('',0,'Xóa tài sản : '+ UTF8Encode(qryAssetOBJECT_ID.Value));
end;

procedure TAssetFrm.rbGrpPPKHClick(Sender: TObject);
begin
  qryAsset.Edit;
  qryAssetAMOR_METHOD.AsInteger:=rbGrpPPKH.ItemIndex;
end;

procedure TAssetFrm.rbNamClick(Sender: TObject);
begin
  qryAsset.Edit;
  qryAssetNAM_THANG.AsInteger:=0;
  qryAssetUSING_LIFEChange(nil);
  qryAssetAMOR_PERCENTChange(nil);
end;

procedure TAssetFrm.rbThangClick(Sender: TObject);
begin
  qryAsset.Edit;
  qryAssetNAM_THANG.AsInteger:=1;
  qryAssetUSING_LIFEChange(nil);
  qryAssetAMOR_PERCENTChange(nil);
end;

procedure TAssetFrm.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:=3;
  with MainDM.qryPObjGrp do
  begin
    if Active then Close;
    SQLWhere.Text:=' WHERE OTYPE_ID=:OTYPE_ID';
    ParamByName('OTYPE_ID').Value:=MainDM.CurObjTypeID;
    Open;
  end;
  InitPopupControl('dxlcObjGroup', CM_PopupFrm, Sender, 2);
  CM_PopupFrm.dxtlObjGroup.FullExpand;  
end;

procedure TAssetFrm.dxDBPopupEdit5Enter(Sender: TObject);
begin
  if FilterAccType <> 1 then
  begin
    FilterAccType := 1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
  MainDM.CurObjTypeID := MainDM.qryPAccDTYPE_ID.AsInteger;
end;

procedure TAssetFrm.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    qryAsset.Edit;
    qryAssetUSEDTYPE_ID.Value := CurObjTypeID;
    qryAssetUSEOBJECT_DETAIL.Value := vpItemID;
  end;
end;

procedure TAssetFrm.qryAssetUSEOBJECT_DETAILChange(Sender: TField);
begin
  if IsHasData(qryAssetUSEOBJECT_DETAIL) then
    KiemtraYTPB;
end;

procedure TAssetFrm.popBranchCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
    //if MainDM.qryBranchISMIN.Value = 1 then
       Text :=MainDM.qryBranchBRANCH_ID.Value;
    //else
       //ShowHintBoxInComponent(self,qryAsset,'BRANCH_ID',254);

end;

procedure TAssetFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    MainDM.CurObjTypeID := 3;
    qryAsset.Close;
    qryAsset.ParamByName('SHTS').Value := MainDM.qryObjectOTYPE_ID.Value;
    qryAsset.ParamByName('KYHT').Value := CurrentPeriod;
    qryAsset.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryAsset.Open;
    PreviousAccFilterType := FilterAccType;
  end
end;

procedure TAssetFrm.ElSplitter1Click(Sender: TObject);
begin
   if not maindm.qryObjectType.Active then
        maindm.qryObjecttype.open;

   maindm.qryObjectType.Locate('OTYPE_ID',3,[]);

   if not maindm.qryObject.Active then
        maindm.qryObject.Open;
      grdObj.FullExpand;
end;
{  if IsNotHasData(qryAssetOBJECT_ID) then
  begin
    HintBox(65,self,dxDBEdit2);
    Abort;
    exit;
  end;
  if IsNotHasData(qryAssetOACCOUNT_ID) then
  begin
    HintBox(20,self,pedtTK);
    Abort;
    exit;
  end;
  if IsNotHasData(qryAssetALLOCATE_ACC) then
  begin
    HintBox(20,self,dxDBPopupEdit2);
    Abort;
    exit;
  end;
  if IsNotHasData(qryAssetAMORTISE_ACC) then
  begin
    HintBox(20,self,dxDBPopupEdit3);
    Abort;
    exit;
  end;
  if prmUseDocumentLog then
    qryAssetLASTUSER_MODIFY.Value:=CurrentUser
  else
    qryAssetLASTUSER_MODIFY.Clear;
  if (qryAssetBINC_DATE.AsDateTime=0)then
    qryAssetBINC_DATE.Value:=Today;}
procedure TAssetFrm.qryAssetAMOR_METHODChange(Sender: TField);
begin
  if qryAssetAMOR_METHOD.AsInteger=1 then
    qryAssetUSING_LIFEChange(Sender)
  else if qryAssetAMOR_METHOD.AsInteger=0 then
    qryAssetAMOR_PERCENTChange(Sender);
end;

procedure TAssetFrm.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    qryAsset.Edit;
    qryAssetUSEDTYPE_ID_1.Value := CurObjTypeID;
    qryAssetUSEOBJECT_DETAIL_1.Value := vpItemID;
  end;
end;

procedure TAssetFrm.dxDBPopupEdit6Enter(Sender: TObject);
begin
  if FilterAccType <> 1 then
  begin
    FilterAccType := 1;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
  MainDM.qryPAcc.Locate('ACCOUNT_ID', qryAssetALLOCATE_ACC.Value,[]);
  MainDM.CurObjTypeID := MainDM.qryPAccDTYPE_ID_1.AsInteger;
end;

end.
