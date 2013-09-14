Unit DocTempForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib,
  dxEditor, dxLayoutControl, cxControls, StdCtrls, dxLayoutLookAndFeels, Forms,
  Buttons, dxDBTLCl, dxGrClEx, dxGrClms, ExtCtrls, DB, IBODataset, DBActns,
  ActnList, IB_NavigationBar, DBCtrls, dxBar, ppDB, ppBands, ppCtrls,
  ppClass, ppCache, ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppEndUsr, ppVar, Math, TntButtons,Unicode,
  TntStdCtrls, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  ElCLabel, ElLabel, dxLayout;

type
  TDocTempFrm = class(TForm)
    locFrmGroup_Root: TdxLayoutGroup;
    locFrm: TdxLayoutControl;
    locFrmGroup1: TdxLayoutGroup;
    edtSOPHIEU: TdxDBEdit;
    locFrmItem1: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    locFrmItem2: TdxLayoutItem;
    locFrmGroup5: TdxLayoutGroup;
    locFrmGroup4: TdxLayoutGroup;
    locFrmGroup6: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnIns: TELPopupButton;
    locbtnIns: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    locFrmItem14: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFrmItem16: TdxLayoutItem;
    BitBtn5: TELPopupButton;
    locFrmItem17: TdxLayoutItem;
    BitBtn7: TELPopupButton;
    locFrmItem19: TdxLayoutItem;
    BitBtn8: TELPopupButton;
    locFrmItem20: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    locCT: TdxLayoutItem;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acPost: TAction;
    acCancel: TAction;
    locFrmGroup9: TdxLayoutGroup;
    dxDBEdit5: TdxDBEdit;
    locFrmDC: TdxLayoutItem;
    popKhoHang: TdxDBPopupEdit;
    locWare: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    pmEntry: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acEntryDetail: TAction;
    acDelDetail: TDataSetDelete;
    acNewTSCD: TAction;
    btnPrint: TELPopupButton;
    locFrmItem10: TdxLayoutItem;
    dplDocReport: TppDBPipeline;
    acIn: TAction;
    acDesign: TAction;
    dplDocEntry: TppDBPipeline;
    acSetbeforePrint: TAction;
    dsgReport: TppDesigner;
    acAfterSelect: TAction;
    grdDetail: TdxDBGrid;
    acEditTSCD: TAction;
    popDT: TdxDBPopupEdit;
    locFrmDT: TdxLayoutItem;
    locFrmGroup11: TdxLayoutGroup;
    locFrmGroup8: TdxLayoutGroup;
    dxDBEdit8: TdxDBEdit;
    locFrmHT: TdxLayoutItem;
    locFrmGroup10: TdxLayoutGroup;
    locFrmGroup3: TdxLayoutGroup;
    locFrmGroup12: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    locFrmItem9: TdxLayoutItem;
    locFrmItem6: TdxLayoutItem;
    bbtnGenDoc: TdxBarButton;
    rptDocReport: TppReport;
    acXulyTK: TAction;
    btnCopy: TELPopupButton;
    locBtnCopy: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    locFrmGroup2: TdxLayoutGroup;
    qryDocument: TIBOQuery;
    dsDocument: TDataSource;
    qryDocEntry: TIBOQuery;
    dsDocEntry: TDataSource;
    qryDocumentDOC_ID: TWideStringField;
    qryDocumentPERIOD_ID: TSmallintField;
    qryDocumentDOCTYPE_ID: TIntegerField;
    qryDocumentDOC_DATE: TDateField;
    qryDocumentDOC_PERSON: TWideStringField;
    qryDocumentDOC_PERSONADDR: TWideStringField;
    qryDocumentDOC_VOUCHER: TWideStringField;
    qryDocumentDOC_NOTES: TWideStringField;
    qryDocumentWAREHOUSE_ID: TWideStringField;
    qryDocumentMADOITUONG: TWideStringField;
    qryDocumentLOAIDOITUONG: TSmallintField;
    locFrmGroup7: TdxLayoutGroup;
    acSetPriceDef: TAction;
    dxBarButton4: TdxBarButton;
    acPrintDirect: TAction;
    ElPopupButton1: TElPopupButton;
    locFrmInvoice: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFrmBtnPSPXK: TdxLayoutItem;
    qryDocEntryDOC_ID: TWideStringField;
    qryDocEntryENTRY_ID: TSmallintField;
    qryDocEntryPERIOD_ID: TSmallintField;
    qryDocEntryDEBIT_ACC: TWideStringField;
    qryDocEntryCREDIT_ACC: TWideStringField;
    qryDocEntryDEBIT_OBJ: TWideStringField;
    qryDocEntryDEBIT_TYPE: TSmallintField;
    qryDocEntryCREDIT_OBJ: TWideStringField;
    qryDocEntryCREDIT_TYPE: TSmallintField;
    qryDocEntryENTRY_AMOUNT: TIBOFloatField;
    qryDocEntryENTRY_PRICE: TIBOFloatField;
    qryDocEntryENTRY_VALUE: TIBOFloatField;
    qryDocEntryTYGIANT: TIBOFloatField;
    qryDocEntryENTRY_NOTE: TWideStringField;
    qryDocEntryNGUOINHAP: TWideStringField;
    grdDetailDEBIT_OBJ: TdxDBGridPopupColumn;
    grdDetailCREDIT_OBJ: TdxDBGridPopupColumn;
    grdDetailENTRY_NOTE: TdxDBGridColumn;
    grdDetailENTRY_VALUE: TdxDBGridCalcColumn;
    grdDetailCURRENCY_ID: TdxDBGridPopupColumn;
    qryDocEntryCURRENCY_ID: TWideStringField;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    grdDetailTYGIANT: TdxDBGridExtLookupColumn;
    bbtnPSTheoDM: TdxBarButton;
    popDenKho: TdxDBPopupEdit;
    locToWare: TdxLayoutItem;
    grdDetailENTRY_AMOUNT: TdxDBGridColumn;
    bbtnHTNT: TdxBarButton;
    qryDocEntryTENDTNO: TWideStringField;
    qryDocEntrySUBNO_1: TWideStringField;
    qryDocEntrySUBNO_2: TWideStringField;
    qryDocEntryTENDTCO: TWideStringField;
    qryDocEntrySUBCO_1: TWideStringField;
    qryDocEntrySUBCO_2: TWideStringField;
    grdDetailTENDTNO: TdxDBGridColumn;
    grdDetailTENDTCO: TdxDBGridColumn;
    dxBarButton3: TdxBarButton;
    qryDocumentTO_WAREHOUSE: TWideStringField;
    ElPopupButton3: TElPopupButton;
    locFrmItem4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFrmItem5: TdxLayoutItem;
    locFrmGroup13: TdxLayoutGroup;
    qryDocumentTEMPLATE_ID: TIntegerField;
    dxDBDateEdit2: TdxDBDateEdit;
    locNgayTT: TdxLayoutItem;
    qryDocumentPAY_DATE: TDateField;
    qryDocEntryTIENTHUE: TFloatField;
    grdDetailTIENTHUE: TdxDBGridColumn;
    grdDetailVAT_PERCENT: TdxDBGridSpinColumn;
    qryVAT: TIBOQuery;
    qryVATDOC_ID: TWideStringField;
    qryVATENTRY_ID: TSmallintField;
    qryVATPERIOD_ID: TSmallintField;
    qryVATDEBIT_ACC: TWideStringField;
    qryVATCREDIT_ACC: TWideStringField;
    qryVATDEBIT_OBJ: TWideStringField;
    qryVATDEBIT_TYPE: TSmallintField;
    qryVATCREDIT_OBJ: TWideStringField;
    qryVATCREDIT_TYPE: TSmallintField;
    qryVATENTRY_AMOUNT: TIBOFloatField;
    qryVATENTRY_PRICE: TIBOFloatField;
    qryVATENTRY_VALUE: TIBOFloatField;
    qryVATTYGIANT: TIBOFloatField;
    qryVATENTRY_NOTE: TWideStringField;
    qryVATNGUOINHAP: TWideStringField;
    qryVATCURRENCY_ID: TWideStringField;
    acVAT: TAction;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFrmWork: TdxLayoutItem;
    dxDBDateEdit3: TdxDBDateEdit;
    locFrmItem7: TdxLayoutItem;
    locFrmGroup14: TdxLayoutGroup;
    qryDocumentVOUCHER_DATE: TDateField;
    qryDocumentLASTMODIFY: TWideStringField;
    qryDocumentDIACHIKH: TWideStringField;
    qryDocumentMASOTHUE: TWideStringField;
    qryDocumentTENKH: TWideStringField;
    qryEntryGrp: TIBOQuery;
    qryEntryGrpDEBIT_ACC: TWideStringField;
    qryEntryGrpCREDIT_ACC: TWideStringField;
    qryEntryGrpSOTIEN: TIBOFloatField;
    dsEntryGrp: TDataSource;
    dplEntryGrp: TppDBPipeline;
    qryDocumentWORK_NAME: TWideStringField;
    qryDocEntryVAT_PERCENT: TIBOFloatField;
    qryVATVAT_PERCENT: TIBOFloatField;
    qryDocEntryDEBIT_DETAIL: TWideStringField;
    qryDocEntryDEBIT_DTYPE: TSmallintField;
    qryDocEntryCREDIT_DETAIL: TWideStringField;
    qryDocEntryCREDIT_DTYPE: TSmallintField;
    grdDetailSUBNO_2: TdxDBGridMaskColumn;
    grdDetailSUBCO_2: TdxDBGridMaskColumn;
    grdDetailDEBIT_DETAIL: TdxDBGridPopupColumn;
    grdDetailCREDIT_DETAIL: TdxDBGridPopupColumn;
    grdDetailENTRY_PRICE: TdxDBGridCalcColumn;
    qryDocEntryACTICLE_ID: TWideStringField;
    grdDetailACTICLE_ID: TdxDBGridPopupColumn;
    qryDocumentDOCUMENT_TAG: TSmallintField;
    qryDocEntryMASTER_TAG: TSmallintField;
    qryDocEntryMASTER_DATE: TDateField;
    qryDocEntryMASTER_WARE: TWideStringField;
    qryDocEntryMASTER_TOWARE: TWideStringField;
    qryDocumentWORK_ID: TWideStringField;
    qryDocumentBRANCH_ID: TWideStringField;
    qryDocEntryBRANCH_ID: TWideStringField;
    locFrmGroup15: TdxLayoutGroup;
    locBranch: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFrmGroup16: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure grdDetailEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPostExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure popKhoHangCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure btnInsClick(Sender: TObject);
    function LaDongHangBan:WideString;
    function LaDongHangMua:Boolean;
    function LaDongHangTP:Boolean;
    function LaDongHangXuat:Boolean;

    procedure acInExecute(Sender: TObject);
    procedure InPhieu(IsDirect:Boolean);
    procedure acDesignExecute(Sender: TObject);
    procedure acSetbeforePrintExecute(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure popDTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure bbtnGenDocClick(Sender: TObject);
    procedure grdDetailEnter(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure qryDocumentAfterCancel(DataSet: TDataSet);
    procedure qryDocumentAfterDelete(DataSet: TDataSet);
    procedure qryDocumentAfterEdit(DataSet: TDataSet);
    procedure qryDocumentAfterInsert(DataSet: TDataSet);
    procedure qryDocumentAfterPost(DataSet: TDataSet);
    procedure qryDocumentBeforeDelete(DataSet: TDataSet);
    procedure qryDocumentBeforeEdit(DataSet: TDataSet);
    procedure qryDocumentBeforeInsert(DataSet: TDataSet);
    procedure qryDocumentBeforePost(DataSet: TDataSet);
    procedure qryDocumentNewRecord(DataSet: TDataSet);
    procedure qryDocumentPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDocEntryAfterCancel(DataSet: TDataSet);
    procedure qryDocEntryAfterEdit(DataSet: TDataSet);
    procedure qryDocEntryAfterInsert(DataSet: TDataSet);
    procedure qryDocEntryAfterPost(DataSet: TDataSet);
    procedure qryDocEntryBeforeDelete(DataSet: TDataSet);
    procedure qryDocEntryBeforeEdit(DataSet: TDataSet);
    procedure qryDocEntryBeforeInsert(DataSet: TDataSet);
    procedure qryDocEntryBeforePost(DataSet: TDataSet);
    procedure qryDocEntryNewRecord(DataSet: TDataSet);
    procedure qryDocEntryPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDocumentDOC_IDChange(Sender: TField);
    procedure qryDocEntryENTRY_AMOUNTChange(Sender: TField);
    procedure qryDocEntryENTRY_PRICEChange(Sender: TField);
    procedure grdDetailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function KiemtraDoituong():Boolean;
    function KiemtraKhohang():Boolean;
    function  KiemtraKhoDen():Boolean;
    function  KiemtraCongtrinh():Boolean;
    procedure popKhoHangExit(Sender: TObject);
    procedure acSetPriceDefExecute(Sender: TObject);
    procedure acPrintDirectExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton1Click(Sender: TObject);
    procedure grdDetailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryDocEntryTYGIANTChange(Sender: TField);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdDetailDEBIT_OBJInitPopup(Sender: TObject);
    procedure grdDetailDEBIT_OBJCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailCREDIT_OBJCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryDocEntryAfterDelete(DataSet: TDataSet);
    procedure grdDetailCURRENCY_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure bbtnPSTheoDMClick(Sender: TObject);
    procedure bbtnHTNTClick(Sender: TObject);
    procedure qryDocEntryDEBIT_OBJChange(Sender: TField);
    procedure qryDocEntryCREDIT_OBJChange(Sender: TField);
    procedure dxBarButton3Click(Sender: TObject);
    procedure popDenKhoCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure grdDetailCREDIT_OBJInitPopup(Sender: TObject);
    procedure popDenKhoExit(Sender: TObject);
    procedure qryDocumentWAREHOUSE_IDChange(Sender: TField);
    procedure qryDocumentMADOITUONGChange(Sender: TField);
    procedure qryDocEntryCalcFields(DataSet: TDataSet);
    procedure qryVATNewRecord(DataSet: TDataSet);
    procedure acVATExecute(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure popDTEnter(Sender: TObject);
    procedure grdDetailDEBIT_DETAILCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailCREDIT_DETAILCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryDocEntryCURRENCY_IDChange(Sender: TField);
    procedure qryDocEntryDEBIT_DETAILChange(Sender: TField);
    procedure qryDocEntryCREDIT_DETAILChange(Sender: TField);
    procedure grdDetailTYGIANTInitPopup(Sender: TObject);
    procedure grdDetailTYGIANTCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailACTICLE_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryDocEntryDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDocumentDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    isPressSave:Boolean;
  public

  end;
var
  DocTempFrm: TDocTempFrm;
  SPXUATCHUYENKHO:WideString;
implementation

uses MainDataMdl, PopupForm, MainForm,
  AssetForm, GlobalUnit, Functions,  GenDocForm,
  DateUtils, MsgDlgForm, DMInterface, dxTreeGridMenus,
  InvoiceListForm, GenDocDMForm, InvoiceForm;

{$R *.dfm}


procedure TDocTempFrm.FormCreate(Sender: TObject);
var
  w,h:Integer;
begin
  if prmUSEUPPERCASE then
  begin
    edtSOPHIEU.CharCase:=ecUpperCase;
    popKhoHang.CharCase:=ecUpperCase;
    popDenKho.CharCase:=ecUpperCase;
    popDT.CharCase:=ecUpperCase;
    grdDetailDEBIT_OBJ.CharCase:=ecUpperCase;
    grdDetailCREDIT_OBJ.CharCase:=ecUpperCase;
  end;

  w :=Screen.DesktopWidth;
  h :=Screen.DesktopHeight;
  if w>800 then w:=800;
  if h>600 then h:=600;
  Self.Width:=w;
  Self.Height:=h;

  locFrm.BeginUpdate;
  SetOnFormCreate(Self);
  locFrm.EndUpdate;

  grdDetailENTRY_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdDetailENTRY_PRICE.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdDetailENTRY_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;
  grdDetailTIENTHUE.SummaryFooterFormat:=TIENTE_FORMAT;

  // Mo cac qry-----------------------
  qryDocumentDOC_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryDocumentVOUCHER_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryDocumentPAY_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryDocEntryENTRY_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryDocEntryTYGIANT.DisplayFormat:=TIENTE_FORMAT;
  qryDocEntryENTRY_PRICE.DisplayFormat:=NGOAITE_FORMAT;
  qryDocEntryENTRY_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryDocEntryTIENTHUE.DisplayFormat:=TIENTE_FORMAT;

  qryDocument.Close;
  qryDocument.ParamByName('PERIOD_ID').AsInteger:=CurTemp.KYHTBD;
  qryDocument.ParamByName('DOC_ID').Value:=CurTemp.SOPHIEUBD;
  qryDocument.ParamByName('BRANCH_ID').Value := vpBranch_id;
  qryDocument.Open;
  qryDocEntry.Open;
  if CurTemp.SHTKVAT<>'' then
    qryVAT.Open;

  MainDM.qryPTyGia.DataSource:=dsDocEntry;

  //--------------------------------------
  grdDetailDEBIT_OBJ.Visible:=False;
  grdDetailTENDTNO.Visible:=False;
  grdDetailCREDIT_OBJ.Visible:=False;
  grdDetailTENDTCO.Visible:=False;
  grdDetailDEBIT_DETAIL.Visible:=False;
  grdDetailSUBNO_2.Visible:=False;
  grdDetailCREDIT_DETAIL.Visible:=False;
  grdDetailSUBCO_2.Visible:=False;

  IsChangeDoc_ID:=False;
  locFrmInvoice.Visible:=CurTemp.SHTKVAT<>'';
  grdDetailVAT_PERCENT.Visible:=CurTemp.SHTKVAT<>'';
  grdDetailTIENTHUE.Visible:=CurTemp.SHTKVAT<>'';
  
  grdDetailENTRY_AMOUNT.Visible:=CurTemp.CTCOLUONG;
  grdDetailENTRY_PRICE.Visible:=(CurTemp.CTCOLUONG or CurTemp.HACHTOANNT);
  grdDetailCURRENCY_ID.Visible:=CurTemp.HACHTOANNT;
  grdDetailTYGIANT.Visible:=CurTemp.HACHTOANNT;
  bbtnHTNT.Down:=CurTemp.HACHTOANNT;
  
  if CurTemp.TENDTCHINH<>'' then
    locFrmDT.Caption:=CurTemp.TENDTCHINH;
  if CurTemp.LOAIDTPHU<>0 then
  begin
    if CurTemp.LOAITKNO=CurTemp.LOAIDTPHU then
    begin
      grdDetailDEBIT_OBJ.Visible:=True;
      grdDetailTENDTNO.Visible:=True;
      if CurTemp.LOAITKNO=2 then
        grdDetailSUBNO_2.Visible:=True;
      if CurTemp.TENDTPHU<>'' then
      begin
        grdDetailDEBIT_OBJ.Caption:= UTF8Decode('Mã ') + WideLowerCase(CurTemp.TENDTPHU);
        grdDetailTENDTNO.Caption:=UTF8Decode('Tên ') + WideLowerCase(CurTemp.TENDTPHU);
      end;
    end
    else 
    begin
      grdDetailCREDIT_OBJ.Visible:=True;
      grdDetailTENDTCO.Visible:=True;
      if CurTemp.LOAITKCO=2 then
        grdDetailSUBCO_2.Visible:=True;

      if CurTemp.TENDTPHU<>'' then
      begin
        grdDetailCREDIT_OBJ.Caption:= UTF8Decode('Mã ') + WideLowerCase(CurTemp.TENDTPHU);
        grdDetailTENDTCO.Caption:=UTF8Decode('Tên ') + WideLowerCase(CurTemp.TENDTPHU);
      end;        
    end;             
  end;
  grdDetailDEBIT_DETAIL.Visible:=(CurTemp.YEUTONO<>0);
  grdDetailCREDIT_DETAIL.Visible:=(CurTemp.YEUTOCO<>0);

  if (MainDM.qryDocTypeALLOWINSERT.AsInteger=0) then
  begin
    btnIns.Enabled:=False;
    btnCopy.Enabled:=False;
  end;
  if (MainDM.qryDocTypeALLOWDELETE.AsInteger=0) then
    acDelete.DataSource := MainDM.dsBanana;
end;

procedure TDocTempFrm.grdDetailEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  if prmCHOSUATHANHTIEN=0 then
  if grdDetail.FocusedField.FieldName = 'ENTRY_VALUE' then
  if ((qryDocEntryDEBIT_TYPE.AsInteger=2) or (qryDocEntryCREDIT_TYPE.AsInteger=2)) then
  begin
    Allow:=False;
    exit;
  end;
  if grdDetail.FocusedField.FieldName = 'TYGIANT' then
  begin
    Allow:=IsHasData(qryDocEntryCURRENCY_ID);
    exit;
  end;
  
  if grdDetail.FocusedField.FieldName = 'ENTRY_PRICE' then
  begin
    if ((prmCHOSUAGIAMUA=0) and (LaDongHangMua)) then
    begin
      Allow:=False;
      exit;
    end;
    if (prmCHOSUAGIAKH=0) and LaDongHangTP then
    begin
      Allow:=False;
      exit;
    end;
    if (prmCHOSUAGIABAN=0) and (LaDongHangBan<>'') then
    begin
      Allow:=False;
      exit;
    end;
    if (prmCHOSUAGIABQ=0) and LaDongHangXuat then
    begin
      Allow:=False;
      exit;
    end;
  end;

  if (grdDetail.FocusedField.FieldName = 'DEBIT_OBJ') then
  if CurTemp.LOAITKNO<>0 then
      MainDM.CurObjTypeID:=CurTemp.LOAITKNO;
  if (grdDetail.FocusedField.FieldName = 'DEBIT_DETAIL') then
  if CurTemp.YEUTONO<>0 then
      MainDM.CurObjTypeID:=CurTemp.YEUTONO;
  if (grdDetail.FocusedField.FieldName = 'CREDIT_OBJ') then
  if CurTemp.LOAITKCO<>0 then
      MainDM.CurObjTypeID:=CurTemp.LOAITKCO;
  if (grdDetail.FocusedField.FieldName = 'CREDIT_DETAIL') then
  if CurTemp.YEUTOCO<>0 then
      MainDM.CurObjTypeID:=CurTemp.YEUTOCO;

end;

procedure TDocTempFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  kq, tmp:integer;
begin
  with MainDM do
  begin
    if (qryDocEntry.RecordCount<>0) or (isPressSave) then
    if acPost.Enabled then
    begin
      kq := ShowMessageUnicode(21,'',3);
      case kq of
        7:
          acCancel.Execute;
        6:
          acPost.Execute;
        else
        begin
          Action := caNone;
          exit;
        end;
      end;
    end;
    if qryDocEntry.RecordCount=0 then
    if qryDocument.RecordCount>0 then
    if Not isPressSave then
    begin
      tmp:= optConfirmDelete;
      optConfirmDelete:=0;
      qryDocument.Delete;
      optConfirmDelete:=tmp;
    end;

    qryDocEntry.Close;
    qryDocument.Close;
    qryGiaBan.Close;
    qryGiaMua.Close;
    qryGiaKH.Close;
  end;

  grdDetail.SaveToRegistry('Software\SSP\AccV5.0\DocTemp\'+MainDM.qryDocTypeDOCTYPE_ID.AsString);
end;

function TDocTempFrm.LaDongHangBan:WideString;
begin
  Result:='';
  if (qryDocEntryCREDIT_TYPE.AsInteger=2) then
  begin
    MainDM.qryAutoOut.Open;
    if MainDM.qryAutoOut.Locate('TK_DT',qryDocEntryCREDIT_ACC.Value,[]) then
    begin
      if MainDM.qryAutoOutTK_HH.IsNull then
        Result:=''
      else
        Result:=MainDM.qryAutoOutTK_HH.Value;
    end;
  end;
end;
function TDocTempFrm.LaDongHangMua:Boolean;
begin
  Result:=False;
  if ((qryDocEntryDEBIT_TYPE.AsInteger=2) and (qryDocEntryCREDIT_TYPE.AsInteger=1)) then
  begin
    MainDM.qryAutoOut.Open;
    if not MainDM.qryAutoOut.Locate('TK_TL',qryDocEntryDEBIT_ACC.Value,[]) then
      Result:=True;
  end;
end;

function TDocTempFrm.LaDongHangXuat:Boolean;
begin
  Result:=False;
  if (qryDocEntryCREDIT_TYPE.AsInteger=2) then
  begin
    MainDM.qryAutoOut.Open;
    if Not MainDM.qryAutoOut.Locate('TK_DT',qryDocEntryCREDIT_ACC.Value,[]) then
      Result:=True;
  end;
end;

function TDocTempFrm.LaDongHangTP:Boolean;
begin
  if ((qryDocEntryDEBIT_TYPE.AsInteger=2) and (qryDocEntryCREDIT_TYPE.AsInteger=6)) then
      Result:=True
  else
      Result:=False;
end;

procedure TDocTempFrm.acPostExecute(Sender: TObject);
begin
  with MainDM do
  begin
    isPressSave:=True;
    if qryDocument.state in [dsInsert, dsEdit] then
      qryDocument.Post;
    if qryDocEntry.state in [dsInsert, dsEdit] then
      qryDocEntry.Post;
  end;
end;

procedure TDocTempFrm.acCancelExecute(Sender: TObject);
begin
  with MainDM do
  begin
    if qryDocument.state in [dsInsert, dsEdit] then
      qryDocument.Cancel;
    if qryDocEntry.state in [dsInsert, dsEdit] then
      qryDocEntry.Cancel;
  end;
end;

procedure TDocTempFrm.FormShow(Sender: TObject);
begin
  ElFormCaption1.Texts[0].Caption := CurTemp.TempName;

  //locGrpDT.Visible := (CurTemp.LOAIDTCHINH <> 0);
  locFrmDT.Visible := (CurTemp.LOAIDTCHINH <> 0);
  locngayTT.Visible := (CurTemp.LOAIDTCHINH <> 0);

  MainDM.qryObjType.Open;
  if CurTemp.LOAIDTCHINH <> 0 then
    if MainDM.qryObjType.Locate('OTYPE_ID', CurTemp.LOAIDTCHINH, []) then
      locFrmDT.Caption := MainDM.qryObjTypeSHORT_NAME.Value;

  if CurTemp.SHTKVAT <> '' then
  begin
    grdDetailENTRY_VALUE.Caption := UTF8Decode('Tiền chưa thuế');
    if CurTemp.NHAPGIACOTHUE then
      grdDetailENTRY_PRICE.Caption := UTF8Decode('Giá có thuế')
    else
      grdDetailENTRY_PRICE.Caption := UTF8Decode('Giá chưa thuế');
  end;
    
  bbtnGenDoc.Enabled := MainDM.qryDocTypeALLOWINSERT.AsInteger = 1;
  
  MainDM.qryRegForBills.Open;
  locFrmBtnPSPXK.Visible := MainDM.qryRegForBills.Locate('LOAIPBH', MainDM.qryDocTypeDOCTYPE_ID.AsInteger, []);
  MainDM.qryRegForBills.Close;

  locWare.Visible := MainDM.qryDocTypeWARE_FLAG.AsInteger > 0;
  locToWare.Visible := MainDM.qryDocTypeWARE_FLAG.AsInteger = 2;
  locFrmWork.Visible := MainDM.qryDocTypeWARE_FLAG.AsInteger = 3;
  if locToWare.Visible then
    locWare.Caption := UTF8Decode('Từ kho');

  bbtnGenDoc.Enabled := MainDM.qryDocTypeALLOWINSERT.AsInteger=1;

  //----Hach toan ngoai te------------
  with MainDM do
  begin
    while not qryDocEntry.Eof do
    begin
      if not qryDocEntryCURRENCY_ID.IsNull then
      begin
        qryDocEntry.First;
        grdDetailCURRENCY_ID.Visible:=True;
        grdDetailTYGIANT.Visible:=True;
        grdDetailENTRY_PRICE.Visible:=True;
        bbtnHTNT.Down:=True;
        Break;
      end;
      qryDocEntry.Next;
    end;
    qryDocEntry.First;
  end;
  //----------------

  isPressSave:=False;
  IF IsNotHasData(qryDocumentDOC_ID) THEN
    qryDocument.Edit
  else
  begin
    isPressSave:=True;
  end;

  SetVisible(Self);
  grdDetail.LoadFromRegistry('Software\SSP\AccV5.0\DocTemp\'+MainDM.qryDocTypeDOCTYPE_ID.AsString);
end;

procedure TDocTempFrm.popKhoHangCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryDocument.Edit;
    Text := qryPWareWAREHOUSE_ID.Value;
    qryDocumentWAREHOUSE_ID.Value := qryPWareWAREHOUSE_ID.Value;
  end;
end;

procedure TDocTempFrm.btnInsClick(Sender: TObject);
begin
  if acPost.Enabled then
    acPost.Execute;
  acInsert.Execute;
end;

procedure TDocTempFrm.acInExecute(Sender: TObject);
begin
  InPhieu(False);
end;

procedure TDocTempFrm.InPhieu(IsDirect:Boolean);
var
  tmp:Widestring;
begin
  if acPost.Enabled then
    acPost.Execute;

  qryDocEntry.DisableControls;

  tmp := MainDM.qryDocTypeTEMPLATE_FILE.AsString;

  if InPhieuDangDK then
    rptDocReport.Template.FileName := TemplatePath+ 'PhieuDK\'+ tmp
  else
    rptDocReport.Template.FileName := TemplatePath+ 'PhieuNC\'+tmp;

  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  rptDocReport.Template.LoadFromFile;
  acSetbeforePrint.Execute;

  if IsDirect then
    rptDocReport.DeviceType:='Printer'
  else
    rptDocReport.DeviceType:='Screen';

  qryEntryGrp.Open;
  rptDocReport.PreviewFormSettings.WindowState:=wsMaximized;
  rptDocReport.PreviewFormSettings.ZoomPercentage:=100;
//  If Not rptDocReport.PrintReport then
//    ShowMessageUnicode(210);
  try
    rptDocReport.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  qryEntryGrp.Close;

  qryDocEntry.Filtered := False;
  qryDocEntry.OnFilterRecord:=nil;
  qryDocEntry.EnableControls;
end;

procedure TDocTempFrm.acDesignExecute(Sender: TObject);
var
  tmp:Widestring;
begin
  tmp := MainDM.qryDocTypeTEMPLATE_FILE.AsString;

  if InPhieuDangDK then
    rptDocReport.Template.FileName := TemplatePath+ 'PhieuDK\'+ tmp
  else
    rptDocReport.Template.FileName := TemplatePath+ 'PhieuNC\'+tmp;

  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  rptDocReport.Template.LoadFromFile;
  //acSetbeforePrint.Execute;

  dsgReport.Report := rptDocReport;

  dsgReport.ShowModal;
  dsgReport.Report := nil;
  qryDocEntry.Filtered := False;
end;

procedure TDocTempFrm.acSetbeforePrintExecute(Sender: TObject);
var
  TKNO, TKCO,Sotien, SotienA, SotienB: WideString;
  strlstNo, strlstCo: TWideStringList;
  i:Integer;
  CompName, CompCap:string;
  CompCaption,wStrTmp:WideString;
  Tongtien:Double;
begin
  strlstNo := TWideStringList.Create;
  strlstCo := TWideStringList.Create;
  qryDocEntry.First;
  Tongtien:=0;
  while not qryDocEntry.Eof do
  begin
    wStrTmp:=qryDocEntryDEBIT_ACC.Value;
    if ((Not qryDocEntryDEBIT_OBJ.IsNull) and optInCoMaSoChitiet) then
      wStrTmp:=wStrTmp+qryDocEntryDEBIT_OBJ.Value;
    if (Not strlstNo.Find(wStrTmp,i)) then strlstNo.Add(wStrTmp);

    wStrTmp:=qryDocEntryCREDIT_ACC.Value;
    if ((Not qryDocEntryCREDIT_OBJ.IsNull) and optInCoMaSoChitiet) then
      wStrTmp:=wStrTmp+qryDocEntryCREDIT_OBJ.Value;
    if Not strlstCo.Find(wStrTmp,i) then strlstCo.Add(wStrTmp);

    Tongtien:=Tongtien+qryDocEntryENTRY_VALUE.Value;
    qryDocEntry.Next;
  end;
  if qryVAT.RecordCount=1 then
  begin
    if CurTemp.CTMOTNO then
      strlstCo.Add(qryVATCREDIT_ACC.Value)
    else
      strlstNo.Add(qryVATDEBIT_ACC.Value);
  end;
  
  TKNO:='';
  for i:=0 to strlstNo.Count-1 do
  if TKNO='' then
    TKNO:=strlstNo.Strings[i]
  else
    TKNO:=TKNO+','+strlstNo.Strings[i];
  TKCO:='';
  for i:=0 to strlstCo.Count-1 do
  if TKCO='' then
    TKCO:=strlstCo.Strings[i]
  else
    TKCO:=TKCO+','+strlstCo.Strings[i];


  //Sotien:= DocSoThanhChu(FloatToStr(Tongtien));
  //Thinh
  if CurLanguage <> 2 then
     Sotien := DocSoThanhChu(FloatToStr(Tongtien))
  else
     if qryDocEntryCURRENCY_ID.isnull then
      Sotien := DocSoThanhChu_eng(FloatToStr(Tongtien),'VND')
     else
      Sotien := DocSoThanhChu_eng(FloatToStr(Tongtien),qryDocEntryCURRENCY_ID.value);

  CatDoiChuoi(Sotien,StrToInt(ReadValueFromInniFile('PhieuChung','PrintOptions','50')));

  SotienA := StrOutput1;
  Sotienb := StrOutput2;

  for i:=0 to ComponentCount-1 do
  begin
    if not (Components[i] is TppLabel) then
      Continue;
    //Cho nay khac ben template
    if (Components[i] as TppLabel).Width=0 then
      (Components[i] as TppLabel).Width:=1;
    if (Components[i] as TppLabel).Height=0 then
      (Components[i] as TppLabel).Height:=0.2;

    //Lay ten va caption cua component nay
    CompName:=Components[i].Name;
    CompCap :=(Components[i] as TppLabel).Caption;
    CompName:=LowerCase(CompName);
    CompCap:=LowerCase(CompCap);

    CompCaption :='///\\\';

    if (CompName  = 'lbltkno') or (CompCap='lbltkno') then
      CompCaption := TKNO
    else if (CompName  = 'lbltkco') or (CompCap='lbltkco') then
      CompCaption :=TKCO
    else if (CompName  = 'lblsotien') or (CompCap='lblsotien') then
      CompCaption :=Sotien
    else if (CompName  = 'lblsotiena')or (CompCap='lblsotiena') then
      CompCaption :=SotienA
    else if (CompName  = 'lblsotienb') or (CompCap='lblsotienb') then
      CompCaption :=SotienB
    else if (CompName  = 'lbltongtien') or (CompCap='lbltongtien') then
      CompCaption := FormatFloat(TIENTE_FORMAT,Tongtien);

    if CompCaption <> '///\\\' then
      (Components[i] as TppLabel).Caption:=CompCaption;
  end;
end;

procedure TDocTempFrm.BitBtn7Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Nhapchungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TDocTempFrm.popDTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryDocument.Edit;
    qryDocumentMADOITUONG.Value := vpItemID;
    Text  := vpItemID;
    qryDocumentLOAIDOITUONG.AsInteger := vpOtypeID;
  end;
end;

procedure TDocTempFrm.bbtnGenDocClick(Sender: TObject);
begin
  if qryDocument.RecordCount=0 then exit;
  if qryDocEntry.RecordCount=0 then exit;
  SPPHATSINHRA := '';
  with TGenDocFrm.Create(Application) do
  try
    GenFromDocID:= qryDocumentDOC_ID.Value;
    GenFromPeriod:= qryDocumentPERIOD_ID.AsInteger;
    ShowModal;
  finally
    Free;
  end;
  
  if SPPHATSINHRA <>'' then
    MainDM.Suachungtu(SPPHATSINHRA,qryDocumentPERIOD_ID.AsInteger,vpBranch_id);
end;

procedure TDocTempFrm.grdDetailEnter(Sender: TObject);
begin
  qryDocument.Edit;
  qryDocument.Post;

  if not (qryDocument.State in [dsEdit, dsInsert]) then //Post thanh cong
  if qryDocEntry.RecordCount=0 then
    qryDocEntry.Insert;
end;

procedure TDocTempFrm.btnCopyClick(Sender: TObject);
var
  spphatsinh:WideString;
begin
  if acPost.Enabled then
    acPost.Execute;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 0) then Abort;

  if ShowMessageUnicode(148,'',4)=7 then
    exit;

  spphatsinh := MainDM.Phatsinhsophieu;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_phatsinhphieumoi (:SOPHIEUCU,:KYHTCU,:NGAYLAP,:SOPHIEUMOI,:KYHTMOI,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEUCU').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHTCU').Value := qryDocumentPERIOD_ID.Value;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    ParamByName('SOPHIEUMOI').Value := spphatsinh;
    ParamByName('KYHTMOI').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;
  end;

  with MainDM do
  begin
    qryDocEntry.Close;
    qryDocument.Close;

    qryDocument.ParamByName('PERIOD_ID').Value:= CurrentPeriod;
    qryDocument.ParamByName('DOC_ID').Value:=spphatsinh;
    qryDocument.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryDocument.Open;

    qryDocEntry.Open;
    if CurTemp.SHTKVAT<>'' then
      qryVAT.Open;
  end;
end;

procedure TDocTempFrm.qryDocumentAfterCancel(DataSet: TDataSet);
begin
  IsChangeDoc_ID := False;
  acPost.Enabled :=False;
  acCancel.Enabled :=False;
end;

procedure TDocTempFrm.qryDocumentAfterDelete(DataSet: TDataSet);
begin
  isPressSave:=True;
  IsChangeDoc_ID := False;
  

  IsPosted:=True;
  MainDM.qryDocList.Refresh;//De phu hop voi Navigator. tuy nhien se lam cham chuong trinh

  if prmUseDocumentLog then
    GhiNhatKyXoaPhieu(DeletedDocID,DeletedPeriod,DeletedComment);
end;

procedure TDocTempFrm.qryDocumentAfterEdit(DataSet: TDataSet);
begin
  acPost.Enabled :=True;
  acCancel.Enabled :=True;
end;

procedure TDocTempFrm.qryDocumentAfterInsert(DataSet: TDataSet);
begin
  acPost.Enabled :=True;
  acCancel.Enabled :=True;
  qryDocumentDOC_ID.FocusControl;
end;

procedure TDocTempFrm.qryDocumentAfterPost(DataSet: TDataSet);
begin
  acPost.Enabled :=False;
  acCancel.Enabled :=False;
  IsPosted:=True;
  if IsChangeDoc_ID then
    qryDocEntry.Refresh;
  IsChangeDoc_ID := False;
end;

procedure TDocTempFrm.qryDocumentBeforeDelete(DataSet: TDataSet);
begin
  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger,2) then Abort;

  if optConfirmDelete=1 then
  if ShowMessageUnicode( 23,'', 4)=7 then
    Abort;

  if prmUseDocumentLog then
  begin
    DeletedDocID:=qryDocumentDOC_ID.Value;
    DeletedPeriod:=0;
    DeletedComment:='Delete voucher : '+ UTF8Encode(qryDocumentDOC_ID.Value);
  end;
end;

procedure TDocTempFrm.qryDocumentBeforeEdit(DataSet: TDataSet);
begin
  if qryDocEntry.State in [dsInsert, dsEdit] then
    qryDocEntry.Post;

  if MainDM.qryDocTypeALLOWEDIT.AsInteger=0 then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger,1) then Abort;
end;

procedure TDocTempFrm.qryDocumentBeforeInsert(DataSet: TDataSet);
begin
  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger,0) then Abort;
end;

procedure TDocTempFrm.qryDocumentBeforePost(DataSet: TDataSet);
begin
  if prmUseDocumentLog then
    qryDocumentLASTMODIFY.Value:=CurrentUser
  else
    qryDocumentLASTMODIFY.Clear;
    
  if IsSystemPost then exit;

  if IsNotHasData(qryDocumentDOC_ID) then
  begin
    ShowMessageUnicode(149);
    qryDocumentDOC_ID.FocusControl;
    Abort;
    exit;
  end;

  if qryDocumentDOC_DATE.IsNull then
  begin
    ShowMessageUnicode(170);
    qryDocumentDOC_DATE.FocusControl;
    Abort;
    exit;
  end;
  if locWare.Visible then
  if IsNotHasData(qryDocumentWAREHOUSE_ID) then
  begin
    ShowMessageUnicode(150);
    qryDocumentWAREHOUSE_ID.FocusControl;
    Abort;
    exit;
  end;

  if KiemtraKhohang=False then Abort;
  if KiemtraKhoDen=False then Abort;
  if KiemtraCongtrinh=False then Abort;

  if MainDM.qryDocTypeWARE_FLAG.AsInteger<>2 then
  begin
    if qryDocumentWAREHOUSE_ID.IsNull then
      qryDocumentTO_WAREHOUSE.Clear
    else
      qryDocumentTO_WAREHOUSE.Value:=qryDocumentWAREHOUSE_ID.Value;
  end;

  if YearOf(qryDocumentDOC_DATE.AsDateTime)*12+MonthOf(qryDocumentDOC_DATE.AsDateTime)<>qryDocumentPERIOD_ID.AsInteger then
  begin
    ShowMessageUnicode(151);
    qryDocumentDOC_DATE.FocusControl;
    if prmRangbuocNgay then
      Abort;
  end;
end;

procedure TDocTempFrm.qryDocumentNewRecord(DataSet: TDataSet);
begin
  try
    qryDocumentBRANCH_ID.Value := vpBranch_id; 
    qryDocumentTEMPLATE_ID.AsInteger := CurTemp.TempID;
    qryDocumentDOCUMENT_TAG.AsInteger := CurTemp.CHODUYET;
    if CurTemp.Warehouse_ID<>'' then
      qryDocumentWAREHOUSE_ID.Value:=CurTemp.Warehouse_ID;
    qryDocumentPERIOD_ID.Value := CurrentPeriod;
    qryDocumentDOCTYPE_ID.AsInteger := MainDM.qryDocTypeDOCTYPE_ID.AsInteger;
    qryDocumentDOC_DATE.AsDateTime := WorkingDate;
    qryDocumentPAY_DATE.AsDateTime := WorkingDate;
    qryDocumentDOC_NOTES.Value:=CurTemp.Comment;
    if optAutoGenDocNo=1 then
      qryDocumentDOC_ID.Value := MainDM.Phatsinhsophieu();

    if ((CurTemp.LOAITKNO=CurTemp.LOAIDTCHINH) and (CurTemp.MADTNO<>'')) then
    begin
      qryDocumentMADOITUONG.Value:=CurTemp.MADTNO;
      qryDocumentLOAIDOITUONG.Value:=CurTemp.LOAITKNO;
    end
    else if ((CurTemp.LOAITKCO=CurTemp.LOAIDTCHINH) and (CurTemp.MADTCO<>'')) then
    begin
      qryDocumentMADOITUONG.Value:=CurTemp.MADTCO;
      qryDocumentLOAIDOITUONG.Value:=CurTemp.LOAITKCO;
    end;
  except
  end;
  IsSystemPost := True;
  try
    if Not qryDocumentDOC_ID.IsNull then
      qryDocument.Post;
  except
    ShowMessageUnicode(171);
    //qryDocument.Cancel;
    qryDocumentDOC_ID.FocusControl;
    IsSystemPost := False;
    exit;
  end;
  IsSystemPost := False;
  MainDM.qryDocList.Refresh;//De phu hop voi Navigator
  //qryDocument.Edit;
  isPressSave:=False;
end;

procedure TDocTempFrm.qryDocumentPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs:=ProcessErr(E,'phiếu');
  if rs=-803 then
    qryDocumentDOC_ID.FocusControl;
    
  if rs=-530 then//Khoa ngoai
  begin
    if ((locWare.Enabled) and ( IsHasData(qryDocumentWAREHOUSE_ID))) then
    begin
      MainDM.qryPWare.Open;
      if MainDM.qryPWare.Locate('WAREHOUSE_ID',qryDocumentWAREHOUSE_ID.Value,[]) =False then
      begin
        ShowMessageUnicode(172,e.Message,0);
        qryDocumentWAREHOUSE_ID.FocusControl;
        exit;
      end;
    end;
    //Ma so doi tuong
    if IsHasData(qryDocumentMADOITUONG) then
    begin
      ShowMessageUnicode(153,e.Message,0);
      qryDocumentMADOITUONG.FocusControl;
      exit;
    end
    else
    begin
      ShowMessageUnicode(154,e.Message,0);
      exit;
    end
  end;
end;

procedure TDocTempFrm.qryDocEntryAfterCancel(DataSet: TDataSet);
begin
  acPost.Enabled :=False;
  acCancel.Enabled :=False;
end;

procedure TDocTempFrm.qryDocEntryAfterEdit(DataSet: TDataSet);
begin
  acPost.Enabled :=True;
  acCancel.Enabled :=True;
end;

procedure TDocTempFrm.qryDocEntryAfterInsert(DataSet: TDataSet);
begin
  acPost.Enabled :=True;
  acCancel.Enabled :=True;
  grdDetail.VisibleColumns[0].Field.FocusControl;
end;

procedure TDocTempFrm.qryDocEntryAfterPost(DataSet: TDataSet);
var
  TKHHXuatKho:WideString;
begin
  acPost.Enabled :=False;
  acCancel.Enabled :=False;

  IsPosted:=True;
  acVAT.Execute;

  if optAutoRemindInstock and IsHasData(qryDocEntryCREDIT_OBJ) and (qryDocEntryCREDIT_TYPE.AsInteger=2) then
  With MainDM do
  begin
    if LaDongHangXuat then
      KiemtraTonkhoAm(qryDocumentPERIOD_ID.Value,qryDocumentWAREHOUSE_ID.Value, qryDocEntryCREDIT_OBJ.Value,qryDocEntryCREDIT_ACC.Value)
    else
    begin
      TKHHXuatKho:=LaDongHangBan;
      if TKHHXuatKho<>'' then
        KiemtraTonkhoAm(qryDocumentPERIOD_ID.Value,qryDocumentWAREHOUSE_ID.Value, qryDocEntryCREDIT_OBJ.Value,TKHHXuatKho);
    end;
  end;
end;

procedure TDocTempFrm.qryDocEntryBeforeDelete(DataSet: TDataSet);
begin
  if MainDM.qryDocTypeALLOWEDIT.AsInteger=0 then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger,2) then Abort;

  if qryDocEntry.State in [dsInsert] then
  begin
    qryDocEntry.Cancel;
    Exit;
  end;

  if optConfirmDelete=1 then
  if ShowMessageUnicode( 23,'', 4)=7 then
    Abort;

  if qryDocEntry.State in [dsEdit] then
  begin
     qryDocEntry.Cancel;
     Exit;
  end;

  if prmUseDocumentLog then
  begin
    DeletedDocID:=qryDocEntryDOC_ID.Value;
    DeletedPeriod:=qryDocEntryPERIOD_ID.AsInteger;
    DeletedComment:='Delete Row : '+ qryDocEntryENTRY_ID.AsString;
  end;     
end;

procedure TDocTempFrm.qryDocEntryBeforeEdit(DataSet: TDataSet);
begin
  if MainDM.qryDocTypeALLOWEDIT.AsInteger=0 then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;
    
  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger,1) then Abort;
end;

procedure TDocTempFrm.qryDocEntryBeforeInsert(DataSet: TDataSet);
begin
  if MainDM.qryDocTypeALLOWEDIT.AsInteger=0 then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;
  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger,0) then Abort;
end;

procedure TDocTempFrm.qryDocEntryBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then Exit;

  if qryDocEntryDEBIT_TYPE.AsInteger<>0 then
  begin
    if IsNotHasData(qryDocEntryDEBIT_OBJ) then
    begin
      ShowMessageUnicode(65);
      grdDetailDEBIT_OBJ.Visible:=True;
      qryDocEntryDEBIT_OBJ.FocusControl;
      Abort;
      exit;
    end;
    if Not MainDM.CheckObject(qryDocEntryDEBIT_OBJ.Value,qryDocEntryDEBIT_TYPE.AsInteger) then
    begin
      ShowMessageUnicode(66);
      grdDetailDEBIT_OBJ.Visible:=True;
      qryDocEntryDEBIT_OBJ.FocusControl;
      Abort;
      exit;
    end;
    if qryDocEntryDEBIT_OBJ.Value<>MainDM.CurObjID then
      qryDocEntryDEBIT_OBJ.Value:=MainDM.CurObjID;
  end
  else if not qryDocEntryDEBIT_OBJ.IsNull then
    qryDocEntryDEBIT_OBJ.Clear;

  with MainDM do
  if qryDocEntryCREDIT_TYPE.AsInteger<>0 then
  begin
    if IsNotHasData(qryDocEntryCREDIT_OBJ) then
    begin
      ShowMessageUnicode(65);
      grdDetailCREDIT_OBJ.Visible:=True;
      qryDocEntryCREDIT_OBJ.FocusControl;
      Abort;
      exit;
    end;
    if Not CheckObject(qryDocEntryCREDIT_OBJ.Value,qryDocEntryCREDIT_TYPE.Value) then
    begin
      ShowMessageUnicode(66);
      grdDetailCREDIT_OBJ.Visible:=True;
      qryDocEntryCREDIT_OBJ.FocusControl;
      Abort;
      exit;
    end;
    if qryDocEntryCREDIT_OBJ.Value<>MainDM.CurObjID then
      qryDocEntryCREDIT_OBJ.Value:=MainDM.CurObjID;
  end
  else if not qryDocEntryCREDIT_OBJ.IsNull then
    qryDocEntryCREDIT_OBJ.Clear;

  qryDocEntryENTRY_VALUE.AsFloat:=Roundto(qryDocEntryENTRY_VALUE.AsFloat, - prmDECIMALTT_LEN);
  qryDocEntryDOC_ID.Value :=qryDocumentDOC_ID.Value;
  qryDocEntryPERIOD_ID.Value :=qryDocumentPERIOD_ID.Value;
  qryDocEntryBRANCH_ID.Value := vpBranch_id;
  
  if prmUseDocumentLog then
    qryDocEntryNGUOINHAP.Value:=CurrentUser
  else
    qryDocEntryNGUOINHAP.Clear;

  qryDocEntryMASTER_DATE.Value:=qryDocumentDOC_DATE.Value;
  qryDocEntryMASTER_TAG.Value:=qryDocumentDOCUMENT_TAG.Value;
  qryDocEntryMASTER_TOWARE.Value:=qryDocumentTO_WAREHOUSE.Value;
  qryDocEntryMASTER_WARE.Value:=qryDocumentWAREHOUSE_ID.Value;
end;

procedure TDocTempFrm.qryDocEntryNewRecord(DataSet: TDataSet);
begin
  qryDocEntryBRANCH_ID.Value := vpDocBranch_id;
  if prmUseDocumentLog then
    qryDocEntryNGUOINHAP.Value:=CurrentUser;

  qryDocEntryPERIOD_ID.Value := qryDocumentPERIOD_ID.Value;
  qryDocEntryENTRY_ID.AsInteger := qryDocEntry.RecNo;
  qryDocEntryDOC_ID.Value := qryDocumentDOC_ID.Value;
  qryDocEntryTYGIANT.Value := 1;

  qryDocEntryDEBIT_ACC.Value:=CurTemp.SHTKNO;
  if CurTemp.LOAITKNO<>0 then
  begin
    qryDocEntryDEBIT_TYPE.AsInteger:=CurTemp.LOAITKNO;
    if CurTemp.LOAITKNO=CurTemp.LOAIDTCHINH then
      qryDocEntryDEBIT_OBJ.Value:=qryDocumentMADOITUONG.Value;
  end;
  qryDocEntryCREDIT_ACC.Value:=CurTemp.SHTKCO;
  if CurTemp.LOAITKCO<>0 then
  begin
    qryDocEntryCREDIT_TYPE.AsInteger:=CurTemp.LOAITKCO;
    if CurTemp.LOAITKCO=CurTemp.LOAIDTCHINH then
      qryDocEntryCREDIT_OBJ.Value:=qryDocumentMADOITUONG.Value;
  end;
  if CurTemp.YEUTONO<>0 then
    qryDocEntryDEBIT_DTYPE.AsInteger:=CurTemp.YEUTONO;
  if CurTemp.YEUTOCO<>0 then
    qryDocEntryCREDIT_DTYPE.AsInteger:=CurTemp.YEUTOCO;

  if ((IsNotHasData(qryDocEntryDEBIT_OBJ)) and (CurTemp.MADTNO<>'') and (qryDocEntryDEBIT_TYPE.AsInteger<>0)) then
    qryDocEntryDEBIT_OBJ.Value:=CurTemp.MADTNO;
  if ((IsNotHasData(qryDocEntryCREDIT_OBJ)) and (CurTemp.MADTCO<>'') and (qryDocEntryCREDIT_TYPE.AsInteger<>0)) then
    qryDocEntryCREDIT_OBJ.Value:=CurTemp.MADTCO;
end;

procedure TDocTempFrm.qryDocEntryPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  kq:integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  kq:= ProcessErr(E,'',0);
  if kq=-803 then
  begin
    qryDocEntryENTRY_ID.AsInteger:=qryDocEntryENTRY_ID.AsInteger+1;
    qryDocEntry.Post;
    exit;
  end
  else
  if kq=-530 then
  begin
    ShowMessageUnicode(46,e.Message,0);
    if IsHasData(qryDocEntryDEBIT_OBJ) then
    if Not MainDM.CheckObject(qryDocEntryDEBIT_OBJ.Value,qryDocEntryDEBIT_TYPE.Value) then
    begin
      qryDocEntryDEBIT_OBJ.FocusControl;
      exit;
    end;
    if IsHasData(qryDocEntryDEBIT_DETAIL) then
    if Not MainDM.CheckObject(qryDocEntryDEBIT_DETAIL.Value,qryDocEntryDEBIT_DTYPE.Value) then
    begin
      qryDocEntryDEBIT_DETAIL.FocusControl;
      exit;
    end;
    if IsHasData(qryDocEntryCREDIT_OBJ) then
    if Not MainDM.CheckObject(qryDocEntryCREDIT_OBJ.Value,qryDocEntryCREDIT_TYPE.Value) then
    begin
      qryDocEntryCREDIT_OBJ.FocusControl;
      exit;
    end;
    if IsHasData(qryDocEntryCREDIT_DETAIL) then
    if Not MainDM.CheckObject(qryDocEntryCREDIT_DETAIL.Value,qryDocEntryCREDIT_DTYPE.Value) then
    begin
      qryDocEntryCREDIT_DETAIL.FocusControl;
      exit;
    end;
    qryDocEntryACTICLE_ID.FocusControl;
  end
  else
  if kq=-836 then
  begin
    ShowMessageUnicode(39,e.Message,0);
    qryDocEntryENTRY_AMOUNT.FocusControl;
  end
  else ShowMessage(e.Message);
end;

procedure TDocTempFrm.qryDocumentDOC_IDChange(Sender: TField);
begin
  if qryDocument.State = dsEdit then
    IsChangeDoc_ID:=True;
end;

procedure TDocTempFrm.qryDocEntryENTRY_AMOUNTChange(Sender: TField);
begin
  if IsSystemPost then exit;

  if IsSystemPost then exit;
  
  if ((qryDocEntryENTRY_PRICE.AsFloat<>0) and (qryDocEntryENTRY_AMOUNT.AsFloat<>0)) then
  begin
    if CurTemp.NHAPGIACOTHUE then
      qryDocEntryENTRY_VALUE.AsFloat:=Round(qryDocEntryENTRY_AMOUNT.AsFloat*qryDocEntryENTRY_PRICE.AsFloat*qryDocEntryTYGIANT.AsFloat*100/(100+qryDocEntryVAT_PERCENT.AsInteger))
    else
      qryDocEntryENTRY_VALUE.AsFloat:=Round(qryDocEntryENTRY_AMOUNT.AsFloat*qryDocEntryENTRY_PRICE.AsFloat*qryDocEntryTYGIANT.AsFloat);
  end;
end;

procedure TDocTempFrm.qryDocEntryENTRY_PRICEChange(Sender: TField);
var
  Soluong,TyGia:Double;
begin
  if IsSystemPost then exit;

  if (prmSDGIABAN=1) and (LaDongHangBan<>'') then//Tu dong tinh gia ban hang
  with MainDM do
  begin
    if Not qryGiaBan.Active then  qryGiaBan.Open;

    if qryGiaBan.Locate('OBJECT_ID',qryDocEntryCREDIT_OBJ.Value,[]) then
    begin
      if (qryDocEntryENTRY_PRICE.AsFloat>qryGiaBanSALE_MAX.AsFloat) and (qryGiaBanSALE_MAX.AsFloat<>0) then
      begin
        ShowMessageUnicode(180);
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaBanSALE_MAX.AsFloat;
      end;
      if (qryDocEntryENTRY_PRICE.AsFloat<qryGiaBanSALE_MIN.AsFloat) and (qryGiaBanSALE_MIN.AsFloat<>0) then
      begin
        ShowMessageUnicode(181);
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaBanSALE_MIN.AsFloat;
      end;
    end;
  end;
  if (prmSDGIAMUA=1) and LaDongHangMua then//Tu dong tinh gia mua hang
  with MainDM do
  begin
    if Not qryGiaMua.Active then qryGiaMua.Open;
    if qryGiaMua.Locate('OBJECT_ID',qryDocEntryDEBIT_OBJ.Value,[]) then
    begin
      if (qryDocEntryENTRY_PRICE.AsFloat>qryGiaMuaBUY_MAX.AsFloat) and (qryGiaMuaBUY_MAX.AsFloat<>0) then
      begin
        ShowMessageUnicode(180);
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaMuaBUY_MAX.AsFloat;
      end;
      if (qryDocEntryENTRY_PRICE.AsFloat<qryGiaMuaBUY_MIN.AsFloat) and(qryGiaMuaBUY_MIN.AsFloat<>0) then
      begin
        ShowMessageUnicode(181);
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaMuaBUY_MIN.AsFloat;
      end;
    end;
  end;

  Soluong:= qryDocEntryENTRY_AMOUNT.AsFloat;
  TyGia:= qryDocEntryTYGIANT.AsFloat;
  if Soluong=0 then Soluong:=1;
  if TyGia=0 then TyGia:=1;
  if (qryDocEntryENTRY_PRICE.AsFloat<>0) then
  begin
    if CurTemp.NHAPGIACOTHUE then
      qryDocEntryENTRY_VALUE.AsFloat:=Round(Soluong*qryDocEntryENTRY_PRICE.AsFloat*TyGia*100/(100+qryDocEntryVAT_PERCENT.AsInteger))
    else
      qryDocEntryENTRY_VALUE.AsFloat:=Round(Soluong*qryDocEntryENTRY_PRICE.AsFloat*TyGia);
  end;
end;

procedure TDocTempFrm.grdDetailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdDetail, Key, Shift,True);
end;

function  TDocTempFrm.KiemtraKhohang():Boolean;
begin
  Result:=True;
  if locWare.Visible=False then exit;
  if Not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  Result:=False;

  if IsNotHasData(qryDocumentWAREHOUSE_ID) then
  begin
    begin
      ShowMessageUnicode(150);

      qryDocumentWAREHOUSE_ID.FocusControl;
      exit;
    end
  end;

  MainDM.qryPWare.Open;
  if qryDocumentWAREHOUSE_ID.Value <> MainDM.qryPWareWAREHOUSE_ID.Value then
  if Not MainDM.qryPWARE.Locate('WAREHOUSE_ID',qryDocumentWAREHOUSE_ID.Value,[]) then
  begin
    ShowMessageUnicode(172);

    qryDocumentWAREHOUSE_ID.FocusControl;
    exit;
  end;
  Result:=True;
end;

function  TDocTempFrm.KiemtraKhoDen():Boolean;
begin
  Result:=True;
  if locToWare.Visible=False then exit;
  if Not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  Result:=False;

  if IsNotHasData(qryDocumentTO_WAREHOUSE) then
  begin
    begin
      ShowMessageUnicode(150);

      qryDocumentTO_WAREHOUSE.FocusControl;
      exit;
    end
  end;

  MainDM.qryPWare.Open;
  if qryDocumentTO_WAREHOUSE.Value <> MainDM.qryPWareWAREHOUSE_ID.Value then
  if Not MainDM.qryPWARE.Locate('WAREHOUSE_ID',qryDocumentTO_WAREHOUSE.Value,[]) then
  begin
    ShowMessageUnicode(172);

    qryDocumentTO_WAREHOUSE.FocusControl;
    exit;
  end;
  Result:=True;
end;

function  TDocTempFrm.KiemtraCongtrinh():Boolean;
begin
  Result:=True;
  if locFrmWork.Visible=False then exit;
  if Not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  Result:=False;

  if (qryDocumentWORK_ID.IsNull) then
  begin
    begin
      ShowMessageUnicode(92);

      qryDocumentWORK_NAME.FocusControl;
      exit;
    end
  end;

  MainDM.qryPWork.Open;
  if qryDocumentWORK_ID.Value <> MainDM.qryPWorkWORK_ID.Value then
  if Not MainDM.qryPWork.Locate('WORK_ID',qryDocumentWORK_ID.Value,[]) then
  begin
    ShowMessageUnicode(173);

    qryDocumentWORK_NAME.FocusControl;
    exit;
  end;
  Result:=True;
end;

function TDocTempFrm.KiemtraDoituong():Boolean;
begin
  Result:=True;
  if CurTemp.LOAIDTCHINH=0 then Exit;
  if Not (qryDocument.State in [dsEdit, dsInsert]) then exit;

  if IsNotHasData(qryDocumentMADOITUONG) then
  begin
    ShowMessageUnicode(65);
    qryDocumentMADOITUONG.FocusControl;
    Result:=False;
    exit;
  end;

  Result:=False;
  with MainDM do
  begin
    if Not CheckObject(qryDocumentMADOITUONG.Value,CurTemp.LOAIDTCHINH) then
    begin
      ShowMessageUnicode(65);
      qryDocumentMADOITUONG.FocusControl;
      exit;
    end;
    if qryDocumentMADOITUONG.Value<>CurObjID then
      qryDocumentMADOITUONG.Value:=CurObjID;
  end;
  Result:=True;
end;

procedure TDocTempFrm.popKhoHangExit(Sender: TObject);
begin
  KiemtraKhohang();
end;

procedure TDocTempFrm.acSetPriceDefExecute(Sender: TObject);
var
  GTXuat:Double;
begin
  if Not (qryDocEntry.State in [dsEdit,dsInsert]) then exit;
  with MainDM do
  begin
    if (prmSDGIABQ=1) and LaDongHangXuat then//Tu dong tinh gia xuat kho
    begin
      qryDocEntryENTRY_PRICE.AsFloat:=DonGiaBinhQuan(qryDocumentMADOITUONG.Value,qryDocumentWORK_ID.Value, qryDocumentWAREHOUSE_ID.Value,qryDocEntryCREDIT_OBJ.Value,qryDocEntryCREDIT_ACC.Value, qryDocEntryENTRY_AMOUNT.AsFloat,GTXuat);
      if GTXuat<>0 then
        qryDocEntryENTRY_VALUE.AsFloat:=GTXuat;
    end;

    if (prmSDGIABAN=1) and (LaDongHangBan<>'') then//Tu dong tinh gia ban hang
    begin
      if not qryGiaBan.Active then qryGiaBan.Open;

      if qryGiaBan.Locate('OBJECT_ID',qryDocEntryCREDIT_OBJ.Value,[]) then
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaBanSALEPRICE.AsFloat
      else
        qryDocEntryENTRY_PRICE.Clear;
    end;
    if (prmSDGIAMUA=1) and LaDongHangMua then//Tu dong lay gia mua
    begin
      if not qryGiaMua.Active then qryGiaMua.Open;

      if qryGiaMua.Locate('OBJECT_ID',qryDocEntryDEBIT_OBJ.Value,[]) then
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaMuaBUYPRICE.AsFloat
      else
        qryDocEntryENTRY_PRICE.Clear;
    end;

    if (prmSDGIAKH=1) and LaDongHangTP then//Tu dong tinh gia ke hoach nhap thanh pham
    begin
      if not qryGiaKH.Active then qryGiaKH.Open;

      if qryGiaKH.Locate('OBJECT_ID',qryDocEntryDEBIT_OBJ.Value,[]) then
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaKHPLANPRICE.AsFloat
      else
        qryDocEntryENTRY_PRICE.Clear;
    end;
  end;
end;

procedure TDocTempFrm.acPrintDirectExecute(Sender: TObject);
begin
  InPhieu(True);
end;

procedure TDocTempFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Nhapchungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if not (ssCtrl in Shift) then
    Exit;

  with MainDM do
  case Key of
    Ord('N'),Ord('n'):
    begin
      btnInsClick(Sender);
      Exit;
    end;
  end;
end;

procedure TDocTempFrm.dxBarButton1Click(Sender: TObject);
begin
  qryDocEntry.Append;
end;

procedure TDocTempFrm.grdDetailMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmEntry.PopupFromCursorPos;
end;

procedure TDocTempFrm.ElPopupButton1Click(Sender: TObject);
begin
  qryCurDocEntry:=qryDocEntry;
  
    if qryDocEntry.State in [dsInsert, dsEdit] then
      qryDocEntry.Post;

    //-------
    qryDocEntry.First;
    HDVAT_Soluong:=0;
    HDVAT_TriGia:=0;
    HDVAT_Tienthue:=0;
    HDVAT_Mathang:='';
    HDVAT_LOAIHD:=1;
    while not qryDocEntry.Eof do
    begin
      if Copy(qryDocEntryCREDIT_ACC.Value,1,2)='51' then
         HDVAT_LOAIHD:=-1;
      if Copy(qryDocEntryCREDIT_ACC.Value,1,1)='7' then
         HDVAT_LOAIHD:=-1;
      if Copy(qryDocEntryCREDIT_ACC.Value,1,4)='3331' then
         HDVAT_LOAIHD:=-1;

      HDVAT_TriGia:=HDVAT_TriGia+qryDocEntryENTRY_VALUE.AsFloat;
      HDVAT_Tienthue:=HDVAT_Tienthue+qryDocEntryTIENTHUE.AsFloat;
      
      HDVAT_Soluong:=HDVAT_Soluong+qryDocEntryENTRY_AMOUNT.AsFloat;
      if qryDocEntryDEBIT_TYPE.AsInteger=2 then
      begin
        if HDVAT_Mathang='' then
          HDVAT_Mathang:=qryDocEntryTENDTNO.Value
        else
          HDVAT_Mathang:=HDVAT_Mathang+', '+qryDocEntryTENDTNO.Value;
      end
      else if qryDocEntryCREDIT_TYPE.AsInteger=2 then
      begin
        if HDVAT_Mathang='' then
          HDVAT_Mathang:=qryDocEntryTENDTCO.Value
        else
          HDVAT_Mathang:=HDVAT_Mathang+', '+qryDocEntryTENDTCO.Value;
      end;

      qryDocEntry.Next;
    end;
    qryDocEntry.First;
    //--------
    if HDVAT_TriGia=0 then
      HDVAT_PTGTGT:=0
    else
      HDVAT_PTGTGT:=Round(HDVAT_Tienthue*100/HDVAT_TriGia);
    HDVAT_Sophieu := qryDocumentDOC_ID.Value;
    HDVAT_Person := qryDocumentDOC_PERSON.Value;
    HDVAT_KyHT := qryDocumentPERIOD_ID.Value;
    if qryDocumentMADOITUONG.IsNull then
      HDVAT_MASODT := ''
    else
      HDVAT_MASODT := qryDocumentMADOITUONG.Value;
    HDVAT_Ngay := qryDocumentDOC_DATE.AsDateTime;

  with MainDM.qryInvoiceList do
  begin
    ParamByName('DOC_ID').Value:=HDVAT_Sophieu;
    ParamByName('PERIOD_ID').Value:=HDVAT_KyHT;
    ParamByName('BRANCH_ID').Value:=vpBranch_id;
    Open;
  end;
  with MainDM do
  if (qryInvoiceList.RecordCount=0) and (vpBranch_IsMin = 1) then
  begin
    with TInvoiceFrm.Create(Self) do
    try
      HDVAT_SoTTCT:=1;
      qryInvoiceList.Edit;
      ShowModal;
    finally
      Free;
    end;
    qryInvoiceList.Close;
  end
  else
    with TInvoiceListFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TDocTempFrm.qryDocEntryTYGIANTChange(Sender: TField);
var
  Soluong,Tygia:Double;
begin
  Soluong:= qryDocEntryENTRY_AMOUNT.AsFloat;
  Tygia:=qryDocEntryTYGIANT.AsFloat;
  if Soluong=0 then Soluong:=1;
  if TyGia=0 then TyGia:=1;

  if Tygia=0 then Tygia:=1;
  if (qryDocEntryENTRY_PRICE.AsFloat<>0) then
    qryDocEntryENTRY_VALUE.AsFloat:=Round(Soluong*qryDocEntryENTRY_PRICE.AsFloat*Tygia);
end;

procedure TDocTempFrm.ElPopupButton2Click(Sender: TObject);
var
  LoaiCTHT:Smallint;
begin
  LoaiCTHT:=MainDM.qryDocTypeDOCTYPE_ID.AsInteger;

  with MainDM do
  begin
    qryGetDoc.Close;

    qryGetDoc.ParamByName('PERIOD_ID').Value:=qryDocumentPERIOD_ID.AsInteger;
    qryGetDoc.ParamByName('DOC_ID').Value:='sys'+qryDocumentDOC_ID.Value;
    qryGetDoc.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryGetDoc.Open;
    if qryGetDoc.RecordCount=1 then
    begin
      Screen.Cursor := crDefault;
      qryGetDoc.Close;
      if ShowMessageUnicode(174,'',4)=7 then
        exit;
    end;
  end;

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_pspxk(:SOPHIEU,:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.AsInteger;
    ParamByName('SOPHIEU').Value := qryDocumentDOC_ID.Value;
    ParamByName('BRANCH_ID').Value := qryDocumentBRANCH_ID.Value;
    ExecSQL;
    Close;
  end;
  MainDM.Suachungtu('sys' + qryDocumentDOC_ID.Value,qryDocumentPERIOD_ID.AsInteger,vpBranch_id);

  MainDM.qryDocType.Locate('DOCTYPE_ID',LoaiCTHT,[]);
end;

procedure TDocTempFrm.ElPopupButton2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  LoaiCTHT:Smallint;
begin
  LoaiCTHT:=MainDM.qryDocTypeDOCTYPE_ID.AsInteger;

  if Button=mbRight then
    MainDM.Suachungtu('sys'+qryDocumentDOC_ID.Value,qryDocumentPERIOD_ID.AsInteger,qryDocumentBRANCH_ID.value);

  MainDM.qryDocType.Locate('DOCTYPE_ID',LoaiCTHT,[]);
end;

procedure TDocTempFrm.grdDetailDEBIT_OBJInitPopup(Sender: TObject);
begin
  if qryDocEntryDEBIT_OBJ.IsNull then exit;

  with MainDM do
    begin
      dsPComObj.DataSet.Open;
      if dsPComObj.DataSet.FieldByName('OBJECT_ID').Value<>qryDocEntryDEBIT_OBJ.Value then
        dsPComObj.DataSet.Locate('OBJECT_ID,OTYPE_ID',VarArrayOf([qryDocEntryDEBIT_OBJ.Value,qryDocEntryDEBIT_TYPE.Value]),[]);
    end;
end;

procedure TDocTempFrm.grdDetailDEBIT_OBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocTempFrm.grdDetailCREDIT_OBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocTempFrm.qryDocEntryAfterDelete(DataSet: TDataSet);
var
  OldInd:Smallint;
begin
  IsPosted:=True;

  OldInd:=qryDocEntryENTRY_ID.AsInteger;
  while ((Not qryDocEntry.Eof) or (qryDocEntryENTRY_ID.AsInteger<>qryDocEntry.RecNo)) do
  begin
    qryDocEntry.Edit;
    qryDocEntryENTRY_ID.AsInteger:=qryDocEntry.RecNo;
    qryDocEntry.Post;
    qryDocEntry.Next;
  end;
  qryDocEntry.Locate('ENTRY_ID',OldInd,[]);
  
  acVAT.Execute;

  if prmUseDocumentLog then
    GhiNhatKyXoaPhieu(DeletedDocID,DeletedPeriod,DeletedComment);
end;

procedure TDocTempFrm.grdDetailCURRENCY_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TDocTempFrm.bbtnPSTheoDMClick(Sender: TObject);
var
  SP:WideString;
begin
  SP:=qryDocumentDOC_ID.Value;
  with TGenDocDMFrm.Create(Self) do
    try
      SOPHIEU:=qryDocumentDOC_ID.Value;
      MAKHO:=qryDocumentWAREHOUSE_ID.Value;
      GenFromPeriod:=qryDocumentPERIOD_ID.AsInteger;
      MADOITUONGDU:=qryDocumentMADOITUONG.Value;
      LOAIDTDU:=qryDocumentLOAIDOITUONG.AsInteger;
      ShowModal;
    finally
      Free;
    end;
  qryDocument.ParamByName('DOC_ID').Value:=SP;
  qryDocument.Refresh;
  qryDocEntry.Refresh;
end;

procedure TDocTempFrm.bbtnHTNTClick(Sender: TObject);
begin
  grdDetailCURRENCY_ID.Visible:=bbtnHTNT.Down;
  grdDetailTYGIANT.Visible:=bbtnHTNT.Down;
end;

procedure TDocTempFrm.qryDocEntryDEBIT_OBJChange(Sender: TField);
begin
  if ((IsNotHasData(qryDocEntryDEBIT_OBJ)) and (qryDocEntryDEBIT_TYPE.AsInteger=0)) then exit;
  with MainDM do
  begin
    if Not CheckObject(qryDocEntryDEBIT_OBJ.Value,qryDocEntryDEBIT_TYPE.AsInteger) then
    begin
      ShowMessageUnicode(46);
      qryDocEntryDEBIT_OBJ.FocusControl;
      Exit;
    end;
    if qryDocEntryDEBIT_OBJ.Value<>CurObjID then
      qryDocEntryDEBIT_OBJ.Value:= CurObjID;

    GetCurObjInfo;

    qryDocEntryTENDTNO.Value :=CurObjName;
    qryDocEntrySUBNO_1.Value :=CurObjSub1;
    qryDocEntrySUBNO_2.Value :=CurObjSub2;
  end;

  if ((qryDocEntryDEBIT_TYPE.AsInteger=qryDocEntryCREDIT_TYPE.AsInteger) and (qryDocEntryCREDIT_TYPE.AsInteger=2)) then
    if qryDocEntryCREDIT_OBJ.Value<>qryDocEntryDEBIT_OBJ.Value then
      qryDocEntryCREDIT_OBJ.Value:=qryDocEntryDEBIT_OBJ.Value;

  if ((CurTemp.LOAITKNO=CurTemp.LOAITKCO) and (CurTemp.LOAITKNO=2)) then
    qryDocEntryCREDIT_OBJ.Value:=qryDocEntryDEBIT_OBJ.Value;
  acSetPriceDef.Execute;
end;

procedure TDocTempFrm.qryDocEntryCREDIT_OBJChange(Sender: TField);
begin
  with MainDM do
  begin
    if ((IsNotHasData(qryDocEntryCREDIT_OBJ)) and (qryDocEntryCREDIT_TYPE.AsInteger=0)) then exit;

    if Not CheckObject(qryDocEntryCREDIT_OBJ.Value,qryDocEntryCREDIT_TYPE.AsInteger) then
    begin
      ShowMessageUnicode(46);
      qryDocEntryCREDIT_OBJ.FocusControl;
      exit;
    end;
    if qryDocEntryCREDIT_OBJ.Value<>CurObjID then
      qryDocEntryCREDIT_OBJ.Value:=CurObjID;

    GetCurObjInfo;

    qryDocEntryTENDTCO.Value :=CurObjName;
    qryDocEntrySUBCO_1.Value :=CurObjSub1;
    qryDocEntrySUBCO_2.Value :=CurObjSub2;

    if ((qryDocEntryDEBIT_TYPE.AsInteger=qryDocEntryCREDIT_TYPE.AsInteger) and (qryDocEntryCREDIT_TYPE.AsInteger=2)) then
      if ((qryDocEntryDEBIT_OBJ.IsNull) or (grdDetailDEBIT_OBJ.Visible=False)) then
        qryDocEntryDEBIT_OBJ.Value:=qryDocEntryCREDIT_OBJ.Value;

    acSetPriceDef.Execute;
  end;
end;

procedure TDocTempFrm.dxBarButton3Click(Sender: TObject);
begin
  if grdDetail.IsCustomizing then
    grdDetail.EndColumnsCustomizing
  else grdDetail.ColumnsCustomizing;
end;

procedure TDocTempFrm.popDenKhoCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPWareWAREHOUSE_ID.Value;
end;

procedure TDocTempFrm.ElPopupButton4Click(Sender: TObject);
begin
  acDesign.Execute;
end;

procedure TDocTempFrm.ElPopupButton3Click(Sender: TObject);
begin
  InPhieu(True);
end;

procedure TDocTempFrm.grdDetailCREDIT_OBJInitPopup(Sender: TObject);
begin
  if qryDocEntryCREDIT_OBJ.IsNull then exit;
  with MainDM do
    begin
      dsPComObj.DataSet.Open;
      if dsPComObj.DataSet.FieldByName('OBJECT_ID').Value<>qryDocEntryCREDIT_OBJ.Value then
        dsPComObj.DataSet.Locate('OBJECT_ID',qryDocEntryCREDIT_OBJ.Value,[]);
    end;
end;

procedure TDocTempFrm.popDenKhoExit(Sender: TObject);
begin
  KiemtraKhoDen();
end;

procedure TDocTempFrm.qryDocumentWAREHOUSE_IDChange(Sender: TField);
begin
  if locToWare.Visible then
    qryDocumentTO_WAREHOUSE.Value:=qryDocumentWAREHOUSE_ID.Value;
end;

procedure TDocTempFrm.qryDocumentMADOITUONGChange(Sender: TField);
begin
  if IsNotHasData(qryDocumentMADOITUONG) then
  begin
    ShowMessageUnicode(65);
    qryDocumentMADOITUONG.FocusControl;
    exit;
  end
  else
  begin
    if KiemtraDoituong then
    with MainDM do
    begin
      qryDocument.Edit;
      GetCurObjInfo;
      qryDocumentTENKH.Value:=CurObjID;
      qryDocumentDIACHIKH.Value:=CurObjSub1;
      qryDocumentMASOTHUE.Value:=CurObjSub2;
      qryDocumentDOC_PERSON.Value:=CurObjName;
      qryDocumentDOC_PERSONADDR.Value:=CurObjSub1;
      
      qryDocumentPAY_DATE.AsDateTime:=qryDocumentDOC_DATE.AsDateTime+ dsPComObj.DataSet.FieldByName('DEBT_LEN').AsInteger;
    end;
  end;
end;

procedure TDocTempFrm.qryDocEntryCalcFields(DataSet: TDataSet);
begin
  qryDocEntryTIENTHUE.AsFloat:= RoundTo(qryDocEntryENTRY_VALUE.AsFloat*qryDocEntryVAT_PERCENT.AsInteger/100,0);
end;

procedure TDocTempFrm.qryVATNewRecord(DataSet: TDataSet);
begin
  if prmUseDocumentLog then
    qryVATNGUOINHAP.Value:=CurrentUser;

  qryVATPERIOD_ID.Value := qryDocumentPERIOD_ID.Value;
  qryVATENTRY_ID.AsInteger := 0;
  qryVATDOC_ID.Value := qryDocumentDOC_ID.Value;
  qryVATTYGIANT.Value := 1;
  qryVATENTRY_NOTE.Value:=UTF8Decode('Tiền thuế VAT');
  if CurTemp.CTMOTNO then
  begin
    qryVATDEBIT_ACC.Value:=CurTemp.SHTKNO;
    qryVATCREDIT_ACC.Value:=CurTemp.SHTKVAT;
    if CurTemp.LOAITKNO<>0 then
    begin
      qryVATDEBIT_TYPE.AsInteger:=CurTemp.LOAITKNO;
      if CurTemp.LOAITKNO=CurTemp.LOAIDTCHINH then
        qryVATDEBIT_OBJ.Value:=qryDocumentMADOITUONG.Value;
    end;
  end
  else
  begin
    qryVATDEBIT_ACC.Value:=CurTemp.SHTKVAT;
    qryVATCREDIT_ACC.Value:=CurTemp.SHTKCO;
    if CurTemp.LOAITKCO<>0 then
    begin
      qryVATCREDIT_TYPE.AsInteger:=CurTemp.LOAITKCO;
      if CurTemp.LOAITKCO=CurTemp.LOAIDTCHINH then
        qryVATCREDIT_OBJ.Value:=qryDocumentMADOITUONG.Value;
    end;
  end;
end;

procedure TDocTempFrm.acVATExecute(Sender: TObject);
var
  STVAT:Double;
begin
  if CurTemp.SHTKVAT='' then exit;
  qryDocEntry.First;
  STVAT:=0;
  while not qryDocEntry.Eof do
  begin
    STVAT:=STVAT+qryDocEntryTIENTHUE.AsFloat;

    qryDocEntry.Next;
  end;
  if qryVATENTRY_VALUE.AsFloat<>STVAT then
  begin
    qryVAT.Edit;
    qryVATENTRY_VALUE.AsFloat:=STVAT;
    qryVAT.Post;
  end;
end;

procedure TDocTempFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryDocument.Edit;
    qryDocumentWORK_ID.Value:=MainDM.qryPWorkWORK_ID.Value;
    Text := MainDM.qryPWorkWORK_NAME.Value;
  end;
end;

procedure TDocTempFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  KiemtraCongtrinh;
end;

procedure TDocTempFrm.popDTEnter(Sender: TObject);
begin
  with qryDocEntry do
    if State in [dsInsert, dsEdit] then
      Post;
  MainDM.CurObjTypeID:=CurTemp.LOAIDTCHINH;
end;

procedure TDocTempFrm.grdDetailDEBIT_DETAILCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocTempFrm.grdDetailCREDIT_DETAILCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocTempFrm.qryDocEntryCURRENCY_IDChange(Sender: TField);
begin
  if IsNotHasData(qryDocEntryCURRENCY_ID) then
  begin
    qryDocEntryTYGIANT.Value:=1;
    Exit;
  end;
  
  MainDM.qryPCurrency.Open;
  if qryDocEntryCURRENCY_ID.Value<>MainDM.qryPCurrencyCURRENCY_ID.Value then
  if MainDM.qryPCurrency.Locate('CURRENCY_ID',qryDocEntryCURRENCY_ID.Value,[loCaseInsensitive,loPartialKey]) then
    qryDocEntryCURRENCY_ID.Value:=MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TDocTempFrm.qryDocEntryDEBIT_DETAILChange(Sender: TField);
begin
  if ((IsNotHasData(qryDocEntryDEBIT_DETAIL)) and (qryDocEntryDEBIT_DTYPE.AsInteger=0)) then exit;

  with MainDM do
  begin
    CurObjTypeID:=qryDocEntryDEBIT_DTYPE.AsInteger;
      if Not CheckObject(qryDocEntryDEBIT_DETAIL.Value,qryDocEntryDEBIT_DTYPE.Value) then
      begin
        ShowMessageUnicode(46);
        qryDocEntryDEBIT_DETAIL.FocusControl;
        Exit;
      end;
    if qryDocEntryDEBIT_DETAIL.Value<>CurObjID then
      qryDocEntryDEBIT_DETAIL.Value:=CurObjID;
  end;
end;

procedure TDocTempFrm.qryDocEntryCREDIT_DETAILChange(Sender: TField);
begin
  with MainDM do
  begin
    CurObjTypeID:=qryDocEntryCREDIT_DTYPE.AsInteger;
    if ((IsNotHasData(qryDocEntryCREDIT_DETAIL)) and (qryDocEntryCREDIT_DTYPE.AsInteger=0)) then exit;

      if Not CheckObject(qryDocEntryCREDIT_DETAIL.Value,qryDocEntryCREDIT_DTYPE.Value) then
      begin
        ShowMessageUnicode(46);
        qryDocEntryCREDIT_DETAIL.FocusControl;
        Exit;
      end;
    if qryDocEntryCREDIT_DETAIL.Value<>CurObjID then
      qryDocEntryCREDIT_DETAIL.Value:=CurObjID;
  end;
end;

procedure TDocTempFrm.grdDetailTYGIANTInitPopup(Sender: TObject);
begin
  if not MainDM.qryPTyGia.Active then
    MainDM.qryPTyGia.Open;
end;

procedure TDocTempFrm.grdDetailTYGIANTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPTyGiaEXCHANGERATE.AsString;
end;

procedure TDocTempFrm.grdDetailACTICLE_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPActicleACTICLE_ID.Value;
end;

procedure TDocTempFrm.qryDocEntryDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
end;

procedure TDocTempFrm.qryDocumentDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
end;

end.
