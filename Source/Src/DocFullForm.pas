unit DocFullForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, HtmlHlp,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib,
  dxEditor, dxLayoutControl, cxControls, StdCtrls, dxLayoutLookAndFeels, Forms,
  Buttons, dxDBTLCl, dxGrClEx, dxGrClms, ExtCtrls, DB, IBODataset, DBActns,
  ActnList, IB_NavigationBar, DBCtrls, dxBar, ppDB, ppBands, ppCtrls,
  ppClass, ppCache, ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppEndUsr, ppVar, Math, TntButtons, Unicode,
  TntStdCtrls, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  ElCLabel, ElLabel, dxLayout, ElPanel, Menus, dxExGrEd, dxExELib, Registry,
  IB_Components, IB_Events;

type
  TDocFullFrm = class(TForm)
    locFrmGroup_Root: TdxLayoutGroup;
    locFrm: TdxLayoutControl;
    locFrmGroup1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
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
    locFrmItem15: TdxLayoutItem;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acPost: TAction;
    acCancel: TAction;
    locFrmGroup9: TdxLayoutGroup;
    dxDBEdit5: TdxDBEdit;
    locFrmDC: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
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
    pmDT: TdxDBPopupEdit;
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
    acSetPriceDef: TAction;
    dxBarButton4: TdxBarButton;
    acPrintDirect: TAction;
    btnInvoice: TElPopupButton;
    locFrmItem8: TdxLayoutItem;
    btnPSPXK: TElPopupButton;
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
    grdDetailDEBIT_ACC: TdxDBGridPopupColumn;
    grdDetailDEBIT_OBJ: TdxDBGridPopupColumn;
    grdDetailCREDIT_ACC: TdxDBGridPopupColumn;
    grdDetailCREDIT_OBJ: TdxDBGridPopupColumn;
    grdDetailENTRY_NOTE: TdxDBGridColumn;
    grdDetailENTRY_VALUE: TdxDBGridCalcColumn;
    grdDetailCURRENCY_ID: TdxDBGridPopupColumn;
    qryDocEntryCURRENCY_ID: TWideStringField;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    grdDetailTYGIANT: TdxDBGridExtLookupColumn;
    bbtnPSTheoDM: TdxBarButton;
    dxDBPopupEdit3: TdxDBPopupEdit;
    locToWare: TdxLayoutItem;
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
    btnFirst: TElPopupButton;
    locFirst: TdxLayoutItem;
    btnBack: TElPopupButton;
    locBack: TdxLayoutItem;
    btnNext: TElPopupButton;
    locNext: TdxLayoutItem;
    btnLast: TElPopupButton;
    locEnd: TdxLayoutItem;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dxDBDateEdit2: TdxDBDateEdit;
    locFrmItem3: TdxLayoutItem;
    qryDocumentPAY_DATE: TDateField;
    dxDBPopupEdit4: TdxDBPopupEdit;
    locFrmWork: TdxLayoutItem;
    dxDBDateEdit3: TdxDBDateEdit;
    locFrmItem18: TdxLayoutItem;
    qryDocumentVOUCHER_DATE: TDateField;
    grdDetailENTRY_ID: TdxDBGridMaskColumn;
    qryEntryGrp: TIBOQuery;
    dsEntryGrp: TDataSource;
    qryEntryGrpDEBIT_ACC: TWideStringField;
    qryEntryGrpCREDIT_ACC: TWideStringField;
    qryEntryGrpSOTIEN: TIBOFloatField;
    dplEntryGrp: TppDBPipeline;
    qryDocumentLASTMODIFY: TWideStringField;
    qryDocumentDIACHIKH: TWideStringField;
    qryDocumentMASOTHUE: TWideStringField;
    qryDocumentTENKH: TWideStringField;
    qryDocumentTEMPLATE_ID: TIntegerField;
    qryDocumentWORK_NAME: TWideStringField;
    qryDocEntryVAT_PERCENT: TIBOFloatField;
    grdDetailSUBNO_1: TdxDBGridMaskColumn;
    grdDetailSUBNO_2: TdxDBGridMaskColumn;
    grdDetailSUBCO_1: TdxDBGridMaskColumn;
    grdDetailSUBCO_2: TdxDBGridMaskColumn;
    grdDetailENTRY_PRICE: TdxDBGridCalcColumn;
    qryDocEntryDEBIT_DETAIL: TWideStringField;
    qryDocEntryDEBIT_DTYPE: TSmallintField;
    qryDocEntryCREDIT_DETAIL: TWideStringField;
    qryDocEntryCREDIT_DTYPE: TSmallintField;
    grdDetailDEBIT_DETAIL: TdxDBGridPopupColumn;
    grdDetailCREDIT_DETAIL: TdxDBGridPopupColumn;
    bbtnPSTraBaohiem: TdxBarButton;
    qryEntryGrpSOTIENNT: TIBOFloatField;
    qryHesoDH: TIBOQuery;
    qryHesoDHHESOQUIDOI: TIBOFloatField;
    qryHesoDHTUMAHANG: TWideStringField;
    qryHesoDHDENMAHANG: TWideStringField;
    qryDocEntryACTICLE_ID: TWideStringField;
    grdDetailACTICLE_ID: TdxDBGridPopupColumn;
    qryDocEntryPAYFOR_DOC: TWideStringField;
    qryDocEntryPAYFOR_PERIOD: TSmallintField;
    grdDetailPAYFOR_DOC: TdxDBGridColumn;
    dsEntryGrpObj: TDataSource;
    qryEntryGrpObj: TIBOQuery;
    dplEntryGrpObj: TppDBPipeline;
    qryEntryGrpObjDOC_ID: TWideStringField;
    qryEntryGrpObjPERIOD_ID: TSmallintField;
    qryEntryGrpObjDEBIT_ACC: TWideStringField;
    qryEntryGrpObjDEBIT_OBJ: TWideStringField;
    qryEntryGrpObjCREDIT_ACC: TWideStringField;
    qryEntryGrpObjCREDIT_OBJ: TWideStringField;
    qryEntryGrpObjSOTIEN: TIBOFloatField;
    qryGiayTT: TIBOQuery;
    dsGiayTT: TDataSource;
    dplGiayTT: TppDBPipeline;
    qryGiayTTSOPHIEU: TWideStringField;
    qryGiayTTNGAYLAP: TDateField;
    qryGiayTTSOTIEN: TIBOFloatField;
    qryGiayTTSODUDAUKY: TIBOFloatField;
    qryGiayTTSOCHIKYNAY: TIBOFloatField;
    qryGiayTTSOTTKYNAY: TIBOFloatField;
    qryGiayTTSOTUCONLAI: TIBOFloatField;
    qryGiayTTSOQUATU: TIBOFloatField;
    qryGiayTTTKDU: TWideStringField;
    qryGiayTTTONGSOTU: TIBOFloatField;
    grdDetailVAT_PERCENT: TdxDBGridColumn;
    dxDBPopupEdit2: TdxDBPopupEdit;
    locFrmItem21: TdxLayoutItem;
    dxDBCalcEdit1: TdxDBCalcEdit;
    locFrmItem22: TdxLayoutItem;
    locFrmMiddle: TdxLayoutGroup;
    qryDocumentMASODT: TWideStringField;
    qryDocumentLOAI_DT: TSmallintField;
    qryDocumentDOC_AMOUNT: TIBOFloatField;
    ElPopupButton5: TElPopupButton;
    locFrmItem23: TdxLayoutItem;
    locFrmItem24: TdxLayoutItem;
    pedtTKCO: TdxPopupEdit;
    locFrmItem25: TdxLayoutItem;
    pedtTKNO: TdxPopupEdit;
    pmBtnGenDocs: TdxBarPopupMenu;
    bbtnCopy: TdxBarButton;
    bbtnPSHangKM: TdxBarButton;
    bbtnPSHangKMMoi: TdxBarButton;
    bbtnThuNhaBH: TdxBarButton;
    qryDocumentDOCUMENT_TAG: TSmallintField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    locFrmItem26: TdxLayoutItem;
    locFrmGroup15: TdxLayoutGroup;
    qryDocEntryDISCOUNT_SCALE: TIBOFloatField;
    qryDocEntryDISCOUNT_VALUE: TIBOFloatField;
    grdDetailDISCOUNT_SCALE: TdxDBGridColumn;
    grdDetailDISCOUNT_VALUE: TdxDBGridColumn;
    ElPopupButton2: TElPopupButton;
    locFrmItem27: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    locFrmItem28: TdxLayoutItem;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    qryDocEntryMASTER_TAG: TSmallintField;
    qryDocEntryMASTER_DATE: TDateField;
    qryDocEntryMASTER_WARE: TWideStringField;
    qryDocEntryMASTER_TOWARE: TWideStringField;
    btnHistory: TElPopupButton;
    locFrmItem29: TdxLayoutItem;
    qryDocEntryINVOICE_ID: TSmallintField;
    grdDetailINVOICE_ID: TdxDBGridExtLookupColumn;
    dppInvoice: TdxDBGridLayout;
    bbtnPSBTXGV: TdxBarButton;
    bbtnPSPXGV: TdxBarButton;
    bbtnXemPXK: TdxBarButton;
    qryDocEntryAPP_UPDATE: TSmallintField;
    ElPopupButton7: TElPopupButton;
    locFrmItem30: TdxLayoutItem;
    acInsDetail: TAction;
    grdDetailENTRY_ID1: TdxDBGridColumn;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    bbtnOutDetail: TdxBarButton;
    bbtnOutAll: TdxBarButton;
    qryDocEntryORIGIN_PRICE: TIBOFloatField;
    grdDetailORIGIN_PRICE: TdxDBGridCalcColumn;
    dxDBEdit2: TdxDBEdit;
    locFrmItem31: TdxLayoutItem;
    qryDocEntryNGUYENTE: TFloatField;
    grdDetailNGUYENTE: TdxDBGridColumn;
    qryDocumentWORK_ID: TWideStringField;
    btnPSPNHBTL: TdxBarButton;
    qryDocEntryORIGIN_VALUE: TFloatField;
    grdDetailColumn30: TdxDBGridColumn;
    qryPriceKH: TIBOQuery;
    qryPriceKHDONGIA_OUT: TIBOFloatField;
    dsPriceKH: TDataSource;
    qryDocEntryDEBIT_DETAIL_1: TWideStringField;
    qryDocEntryDEBIT_DTYPE_1: TSmallintField;
    qryDocEntryCREDIT_DETAIL_1: TWideStringField;
    qryDocEntryCREDIT_DTYPE_1: TSmallintField;
    grdDetailCREDIT_DETAIL_1: TdxDBGridPopupColumn;
    grdDetailDEBIT_DETAIL_1: TdxDBGridPopupColumn;
    acF6: TAction;
    qryDefaultUnit: TIBOQuery;
    dsDefaultUnit: TDataSource;
    qryDefaultUnitDEFAULT_UNIT_OUT: TWideStringField;
    qryUnit_Scale: TIBOQuery;
    dsUnit_Scale: TDataSource;
    qryUnit_ScaleSCALE_OUT: TIBOFloatField;
    qryDocEntryBRANCH_ID: TWideStringField;
    qryDocumentBRANCH_ID: TWideStringField;
    qryInTachThue: TIBOQuery;
    dsInTachThue: TDataSource;
    qryInTachThueDOC_ID: TWideStringField;
    qryInTachThueENTRY_ID: TSmallintField;
    qryInTachThuePERIOD_ID: TSmallintField;
    qryInTachThueDEBIT_ACC: TWideStringField;
    qryInTachThueCREDIT_ACC: TWideStringField;
    qryInTachThueDEBIT_OBJ: TWideStringField;
    qryInTachThueDEBIT_TYPE: TSmallintField;
    qryInTachThueCREDIT_OBJ: TWideStringField;
    qryInTachThueCREDIT_TYPE: TSmallintField;
    qryInTachThueENTRY_AMOUNT: TIBOFloatField;
    qryInTachThueENTRY_PRICE: TIBOFloatField;
    qryInTachThueENTRY_VALUE: TIBOFloatField;
    qryInTachThueTYGIANT: TIBOFloatField;
    qryInTachThueENTRY_NOTE: TWideStringField;
    qryInTachThueNGUOINHAP: TWideStringField;
    qryInTachThueCURRENCY_ID: TWideStringField;
    qryInTachThueTENDTNO: TWideStringField;
    qryInTachThueSUBNO_1: TWideStringField;
    qryInTachThueSUBNO_2: TWideStringField;
    qryInTachThueTENDTCO: TWideStringField;
    qryInTachThueSUBCO_1: TWideStringField;
    qryInTachThueSUBCO_2: TWideStringField;
    qryInTachThueVAT_PERCENT: TIBOFloatField;
    qryInTachThueDEBIT_DETAIL: TWideStringField;
    qryInTachThueDEBIT_DTYPE: TSmallintField;
    qryInTachThueCREDIT_DETAIL: TWideStringField;
    qryInTachThueCREDIT_DTYPE: TSmallintField;
    qryInTachThueACTICLE_ID: TWideStringField;
    qryInTachThuePAYFOR_DOC: TWideStringField;
    qryInTachThuePAYFOR_PERIOD: TSmallintField;
    qryInTachThueDISCOUNT_SCALE: TIBOFloatField;
    qryInTachThueDISCOUNT_VALUE: TIBOFloatField;
    qryInTachThueMASTER_TAG: TSmallintField;
    qryInTachThueMASTER_DATE: TDateField;
    qryInTachThueMASTER_WARE: TWideStringField;
    qryInTachThueMASTER_TOWARE: TWideStringField;
    qryInTachThueINVOICE_ID: TSmallintField;
    qryInTachThueAPP_UPDATE: TSmallintField;
    qryInTachThueORIGIN_PRICE: TIBOFloatField;
    qryInTachThueTONGTIEN: TIBOFloatField;
    qryInTachThueSL: TIBOFloatField;
    qryInTachThueTONGTIEN_CK: TIBOFloatField;
    qryInTachThueTONGTIENTHUE: TIBOFloatField;
    qryInTachThueUNIT_AMOUNT: TIBOFloatField;
    qryInTachThueTONGPTTHUE: TIBOFloatField;
    qryDocumentTEMPLATE: TSmallintField;
    locFrmItem7: TdxLayoutItem;
    btnTemplate: TElPopupButton;
    pmTemplate: TdxBarPopupMenu;
    bbtnPhieuDK: TdxBarButton;
    bbtnPhieuNC: TdxBarButton;
    locFrmItem11: TdxLayoutItem;
    pedtBranch: TdxDBExtLookupEdit;
    locFrmGroup20: TdxLayoutGroup;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    locFrmGroup14: TdxLayoutGroup;
    qryComBranch: TIBOQuery;
    qryComBranchBRANCH_ID: TWideStringField;
    qryComBranchFULLNAME: TWideStringField;
    qryComBranchSHORTNAME: TWideStringField;
    qryComBranchISMIN: TSmallintField;
    qryComBranchPBRANCH_ID: TWideStringField;
    qryComBranchCOMPANY_ID: TSmallintField;
    dsComBranch: TDataSource;
    grdDetailENTRY_AMOUNT: TdxDBGridCalcColumn;
    locFrmGroup16: TdxLayoutGroup;
    locFrmGroup7: TdxLayoutGroup;
    locFrmGroup13: TdxLayoutGroup;
    qryCheckBal: TIBOQuery;
    qryCheckBalBENNO: TIBOFloatField;
    qryCheckBalBENCO: TIBOFloatField;
    qryInTachThuePTTHUENK: TIBOFloatField;
    qryDocEntryUNIT_ID: TWideStringField;
    qryDocEntryUNIT_AMOUNT: TIBOFloatField;
    qryDocEntryPTTHUENK: TIBOFloatField;
    dxBarButton7: TdxBarButton;
    qryDocEntryENTRY_QUANTITY: TIBOFloatField;
    grdDetailENTRY_QUANTITY: TdxDBGridMaskColumn;
    qryInTachThueENTRY_QUANTITY: TIBOFloatField;
    qryBenNo: TIBOQuery;
    qryBenNoDEBIT_ACC: TWideStringField;
    qryBenNoENTRY_VALUE: TIBOFloatField;
    qryBenCo: TIBOQuery;
    IBOFloatField1: TIBOFloatField;
    qryBenCoCREDIT_ACC: TWideStringField;
    dsBenCo: TDataSource;
    dsBenNo: TDataSource;
    dplBenNo: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    dplBenCo: TppDBPipeline;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    ppField53: TppField;
    ppField54: TppField;
    ppField55: TppField;
    ppField56: TppField;
    ppField57: TppField;
    ppField58: TppField;
    ppField59: TppField;
    ppField60: TppField;
    ppField61: TppField;
    ppField62: TppField;
    ppField63: TppField;
    ppField64: TppField;
    ppField65: TppField;
    ppField66: TppField;
    ppField67: TppField;
    ppField68: TppField;
    ppField69: TppField;
    ppField70: TppField;
    ppField71: TppField;
    ppField72: TppField;
    ppField73: TppField;
    ppField74: TppField;
    ppField75: TppField;
    ppField76: TppField;
    ppField77: TppField;
    ppField78: TppField;
    ppField79: TppField;
    ppField80: TppField;
    ppField81: TppField;
    ppField82: TppField;
    ppField83: TppField;
    ppField84: TppField;
    ppField85: TppField;
    ppField86: TppField;
    ppField87: TppField;
    ppField88: TppField;
    ppField89: TppField;
    ppField90: TppField;
    ppField91: TppField;
    ppField92: TppField;
    ppField93: TppField;
    ppField94: TppField;
    dplInGop: TppDBPipeline;
    dsInGop: TDataSource;
    qryInGop: TIBOQuery;
    qryInGopMASO: TWideStringField;
    qryInGopTENHH: TWideStringField;
    qryInGopDVT: TWideStringField;
    qryInGopQUICACH: TWideStringField;
    qryInGopSOLUONG: TIBOFloatField;
    qryInGopDONGIANT: TIBOFloatField;
    qryInGopNGUYENTE: TIBOFloatField;
    qryInGopDONGIAVND: TIBOFloatField;
    qryInGopTHANHTIEN: TIBOFloatField;
    qryDocEntryTENYTNO: TWideStringField;
    qryDocEntryYSUBNO_1: TWideStringField;
    qryDocEntryYSUBNO_2: TWideStringField;
    qryDocEntryTENYTCO: TWideStringField;
    qryDocEntryYSUBCO_1: TWideStringField;
    qryDocEntryYSUBCO_2: TWideStringField;
    qryDocEntryTENYTNO2: TWideStringField;
    qryDocEntryY2SUBNO_1: TWideStringField;
    qryDocEntryY2SUBNO_2: TWideStringField;
    qryDocEntryTENYTCO2: TWideStringField;
    qryDocEntryY2SUBCO_1: TWideStringField;
    qryDocEntryY2SUBCO_2: TWideStringField;
    locFrmItem12: TdxLayoutItem;
    btnPrintBatch: TElPopupButton;
    locTygia: TdxLayoutItem;
    edtTygia: TdxDBEdit;
    locFrmItem32: TdxLayoutItem;
    edtNgoaite: TdxDBPopupEdit;
    locFrmGroup19: TdxLayoutGroup;
    qryDocumentTYGIA: TIBOFloatField;
    qryDocumentCURRENCY_ID: TWideStringField;
    qryDocEntryVAT_ID: TSmallintField;
    grdDetailVAT_ID: TdxDBGridPopupColumn;
    qryDocEntryMETHOD_ID: TSmallintField;
    qryDocEntryENTRY_PRICE_VAT: TIBOFloatField;
    qryDocEntryINVENTORY_AMOUNT: TIBOFloatField;
    grdDetailINVENTORY_AMOUNT: TdxDBGridMaskColumn;
    qryInTachThueTENYTNO: TWideStringField;
    qryInTachThueYSUBNO_1: TWideStringField;
    qryInTachThueYSUBNO_2: TWideStringField;
    qryInTachThueTENYTCO: TWideStringField;
    qryInTachThueYSUBCO_1: TWideStringField;
    qryInTachThueYSUBCO_2: TWideStringField;
    qryInTachThueTENYTNO2: TWideStringField;
    qryInTachThueY2SUBNO_1: TWideStringField;
    qryInTachThueY2SUBNO_2: TWideStringField;
    qryInTachThueTENYTCO2: TWideStringField;
    qryInTachThueY2SUBCO_1: TWideStringField;
    qryInTachThueY2SUBCO_2: TWideStringField;
    qryInTachThueTONGTIEN_OUT: TIBOFloatField;
    qryInTachThueSUBNO_3: TWideStringField;
    qryInTachThueSUBNO_4: TWideStringField;
    qryInTachThueSUBNO_5: TWideStringField;
    qryInTachThueSUBCO_3: TWideStringField;
    qryInTachThueSUBCO_4: TWideStringField;
    qryInTachThueSUBCO_5: TWideStringField;
    qryInTachThueYSUBNO_3: TWideStringField;
    qryInTachThueYSUBNO_4: TWideStringField;
    qryInTachThueYSUBNO_5: TWideStringField;
    qryInTachThueYSUBCO_3: TWideStringField;
    qryInTachThueYSUBCO_4: TWideStringField;
    qryInTachThueYSUBCO_5: TWideStringField;
    qryInTachThueY2SUBNO_3: TWideStringField;
    qryInTachThueY2SUBNO_4: TWideStringField;
    qryInTachThueY2SUBNO_5: TWideStringField;
    qryInTachThueY2SUBCO_3: TWideStringField;
    qryInTachThueY2SUBCO_4: TWideStringField;
    qryInTachThueY2SUBCO_5: TWideStringField;
    dplIntachThue: TppDBPipeline;
    grdDetailENTRY_PRICE_VAT: TdxDBGridCalcColumn;
    IB_Events1: TIB_Events;
    IBOQuery1: TIBOQuery;
    grdDetailORIGIN_VALUE: TdxDBGridColumn;
    grdDetailPTTHUENK: TdxDBGridCalcColumn;
    qryDocEntryIS_NOTLOGICAL: TSmallintField;
    grdDetailIS_NOTLOGICAL: TdxDBGridCheckColumn;
    qryDocumentIS_GHD_IMPORT: TSmallintField;
    is_import: TdxDBCheckEdit;
    locFrmItem13: TdxLayoutItem;
    qryDocEntryJRNL_ENTRY: TIBOFloatField;
    grdDetailJRNL_ENTRY: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure grdDetailEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure grdDetailObjCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPostExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure btnInsClick(Sender: TObject);
    function LaDongHangBan: WideString;
    function LaDongHangMua: Boolean;
    function LaDongHangTP: Boolean;
    function LaDongHangXuat: Boolean;

    procedure acInExecute(Sender: TObject);
    procedure InPhieu(IsDirect: Boolean);
    procedure acDesignExecute(Sender: TObject);
    procedure acSetbeforePrintExecute(Sender: TObject);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure pmDTCloseUp(Sender: TObject; var Text: WideString;
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
    procedure NavigatorDocClick(btn: Smallint);
    function KiemtraDoituong(): Boolean;
    function KiemtraKhohang(): Boolean;
    function KiemtraKhoden(): Boolean;
    function KiemtraCongtrinh(): Boolean;
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure acSetPriceDefExecute(Sender: TObject);
    procedure acPrintDirectExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton1Click(Sender: TObject);
    procedure grdDetailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnInvoiceClick(Sender: TObject);
    procedure qryDocEntryTYGIANTChange(Sender: TField);
    procedure btnPSPXKClick(Sender: TObject);
    procedure btnPSPXKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdDetailDEBIT_OBJInitPopup(Sender: TObject);
    procedure grdDetailDEBIT_ACCCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailDEBIT_OBJCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailCREDIT_OBJCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryDocEntryAfterDelete(DataSet: TDataSet);
    procedure grdDetailDEBIT_ACCInitPopup(Sender: TObject);
    procedure grdDetailCREDIT_ACCInitPopup(Sender: TObject);
    procedure qryDocEntryDEBIT_ACCChange(Sender: TField);
    procedure qryDocEntryCREDIT_ACCChange(Sender: TField);
    procedure grdDetailCURRENCY_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure bbtnPSTheoDMClick(Sender: TObject);
    procedure bbtnHTNTClick(Sender: TObject);
    procedure qryDocEntryDEBIT_OBJChange(Sender: TField);
    procedure qryDocEntryCREDIT_OBJChange(Sender: TField);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxDBPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure grdDetailCREDIT_OBJInitPopup(Sender: TObject);
    procedure qryDocumentWAREHOUSE_IDChange(Sender: TField);
    procedure dxDBPopupEdit3Exit(Sender: TObject);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4Exit(Sender: TObject);
    procedure qryDocumentDOC_DATEChange(Sender: TField);
    procedure dxDBPopupEdit3Enter(Sender: TObject);
    procedure dxDBPopupEdit4Enter(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
    procedure pmDTEnter(Sender: TObject);
    procedure qryDocumentMADOITUONGChange(Sender: TField);
    procedure grdDetailDEBIT_DETAILCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailCREDIT_DETAILCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailDEBIT_DETAILInitPopup(Sender: TObject);
    procedure grdDetailCREDIT_DETAILInitPopup(Sender: TObject);
    procedure grdDetailTYGIANTCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailTYGIANTInitPopup(Sender: TObject);
    procedure qryDocEntryCURRENCY_IDChange(Sender: TField);
    procedure qryDocEntryDEBIT_DETAILChange(Sender: TField);
    procedure qryDocEntryCREDIT_DETAILChange(Sender: TField);
    procedure qryDocEntryFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure grdDetailACTICLE_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryGiayTTBeforeOpen(DataSet: TDataSet);
    procedure qryDocEntryVAT_PERCENTChange(Sender: TField);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure dxDBPopupEdit2Enter(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtTKNOInitPopup(Sender: TObject);
    procedure pedtTKCOInitPopup(Sender: TObject);
    procedure pedtTKNOCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure pmDTInitPopup(Sender: TObject);
    procedure bbtnCopyClick(Sender: TObject);
    procedure bbtnPSHangKMClick(Sender: TObject);
    procedure bbtnPSHangKMMoiClick(Sender: TObject);
    procedure dxDBCalcEdit1Validate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure qryDocEntryDISCOUNT_SCALEChange(Sender: TField);
    procedure qryDocEntryENTRY_VALUEChange(Sender: TField);
    procedure btnInsArrowClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure grdDetailINVOICE_IDInitPopup(Sender: TObject);
    procedure bbtnPSBTXGVClick(Sender: TObject);
    procedure bbtnPSPXGVClick(Sender: TObject);
    procedure bbtnXemPXKClick(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure acInsDetailExecute(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure bbtnOutDetailClick(Sender: TObject);
    procedure bbtnOutAllClick(Sender: TObject);
    procedure qryDocEntryORIGIN_PRICEChange(Sender: TField);
    procedure qryDocEntryDISCOUNT_VALUEChange(Sender: TField);
    procedure qryDocumentDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDocEntryDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDocumentAfterOpen(DataSet: TDataSet);
    procedure qryDocEntryCalcFields(DataSet: TDataSet);
    procedure btnPSPNHBTLClick(Sender: TObject);
    procedure qryDocEntryDEBIT_DETAIL_1Change(Sender: TField);
    procedure qryDocEntryCREDIT_DETAIL_1Change(Sender: TField);
    procedure grdDetailDEBIT_DETAIL_1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailDEBIT_DETAIL_1InitPopup(Sender: TObject);
    procedure grdDetailCREDIT_DETAIL_1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailCREDIT_DETAIL_1InitPopup(Sender: TObject);
    procedure acF6Execute(Sender: TObject);
    procedure grdDetailENTRY_VALUEChange(Sender: TObject);
    procedure grdDetailUNITChange(Sender: TObject);
    procedure grdDetailUNITInitPopup(Sender: TObject);
    procedure grdDetailUNITCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure GetDefaultUnit(mahh: WideString);
    procedure ComputeUnitAmount;
    procedure qryDocEntryUNIT_AMOUNTChange(Sender: TField);
    procedure btnTemplateClick(Sender: TObject);
    procedure bbtnPhieuDKClick(Sender: TObject);
    procedure bbtnPhieuNCClick(Sender: TObject);
    procedure qryDocEntryUNIT_IDChange(Sender: TField);
    procedure pedtBranchInitPopup(Sender: TObject);
    procedure pedtBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    function IsExistDocID_Branchs : WideString;
    procedure dxBarButton7Click(Sender: TObject);
    procedure qryBenNoBeforeOpen(DataSet: TDataSet);
    procedure qryBenCoBeforeOpen(DataSet: TDataSet);
    procedure qryInGopBeforeOpen(DataSet: TDataSet);
    procedure btnPrintBatchClick(Sender: TObject);
    procedure edtNgoaiteCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryDocumentTYGIAChange(Sender: TField);
    procedure qryDocumentCURRENCY_IDChange(Sender: TField);
    procedure grdDetailVAT_IDInitPopup(Sender: TObject);
    procedure grdDetailVAT_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryDocEntryVAT_IDChange(Sender: TField);
    procedure dxDBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryInTachThueFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryDocEntryENTRY_PRICE_VATChange(Sender: TField);
    procedure TinhGTPriceNotTax;
    procedure TinhGTPriceTax;
    procedure IB_Events1EventAlert(Sender: TObject; AEventName: String;
      AEventCount: Integer);
    procedure edtNgoaiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDocEntryPTTHUENKChange(Sender: TField);
    procedure grdDetailPTTHUENKChange(Sender: TObject);
  private
    BeforePostAppUpd: Smallint; //Ghi nhan lai so nay truoc khi Post, neu post loi thi tra lai
    PreviousDebitAcc: WideString; //Dung de ghi nho lai tai khoan truoc do
    PreviousDebitObj: WideString;
    PreviousDebitType: Smallint;
    PreviousCreditAcc: WideString;
    PreviousCreditType: Smallint;
    PreviousCreditObj: WideString;
    PreviousCreditDetail :WideString;
    PreviousCreditDType: Smallint;
    PreviousDebitDetail :WideString;
    PreviousDebitDType: Smallint;
    PreviousCreditDetail_1 :WideString;
    PreviousCreditDType_1: Smallint;
    PreviousDebitDetail_1 :WideString;
    PreviousDebitDType_1: Smallint;


    BBNhapDTChinh: Boolean;
    isPressSave: Boolean;
    LoaiDTMaster: Smallint;

    IsChangeDT: Boolean;
    EditStatusDoc: Boolean; //Trang thai cua phieu hien tai la dang sua
    DONGIAXUATRA: Double; //Dung de xu ly cat hang ra
    MAHANGXUATRA: WideString;
    MyBookMark: TBookmark; //Thinh - ghi nhan lai vi tri con tro cua BGDoc
    F6_Flag: smallint;
    ischanged : boolean;
    ischangebranch_id :smallint;
    doctemplate : smallint;
    Calculating : BOOLEAN;
    IsFixValue : BOOLEAN;
  public
    procedure CallHelp();
  end;
var
  DocFullFrm: TDocFullFrm;
  SPXUATCHUYENKHO: WideString;

implementation

uses MainDataMdl, PopupForm, MainForm,
  AssetForm, GlobalUnit, Functions, GenDocForm,
  DateUtils, MsgDlgForm, DMInterface, dxTreeGridMenus,
  InvoiceListForm, GenDocDMForm, InvoiceForm, StrUtils,
  ObjDocBalForm, GenAutoDocForm, OutDetailForm,
  NhapTraLaiForm, SSP_Library;
{$R *.dfm}

procedure TDocFullFrm.FormCreate(Sender: TObject);
var Reg:Tregistry;
begin
  maindm.qryPComObj.Close;
  F6_Flag := 1;
  IsSystemPost := False;
  VATTaxTotal := 0;
  DocFullFormCount := DocFullFormCount + 1;
  locFrm.BeginUpdate;
  SetOnFormCreate(Self);
  isfixvalue := false;

  IB_Events1.Events.Add('Refresh');
  IB_Events1.RegisterEvents;

  //Phat sinh theo dinh muc
  locFrmMiddle.Visible := ((MainDM.qryDocTypeDOCTYPE_ID.AsInteger = 610) or (MainDM.qryDocTypePDOC_TYPE.AsInteger = 610));
  if locFrmMiddle.Visible then
  begin
    pedtTKNO.Text := MainDM.qryDocTypeTKNO.Value;
    pedtTKCO.Text := MainDM.qryDocTypeTKCO.Value;
  end;

  locFrm.EndUpdate;

  grdDetailENTRY_AMOUNT.SummaryFooterFormat := SOLUONG_FORMAT;
  grdDetailNGUYENTE.SummaryFooterFormat := NGOAITE_FORMAT;
  grdDetailENTRY_PRICE.SummaryFooterFormat := NGOAITE_FORMAT;
  grdDetailENTRY_VALUE.SummaryFooterFormat := TIENTE_FORMAT;
  grdDetailDISCOUNT_VALUE.SummaryFooterFormat := TIENTE_FORMAT;
  //grdDetailUNIT_AMOUNT.SummaryFooterFormat := SOLUONG_FORMAT;

  qryDocumentDOC_DATE.DisplayFormat := NGAYTHANG_FORMAT;
  qryDocumentVOUCHER_DATE.DisplayFormat := NGAYTHANG_FORMAT;
  qryDocumentPAY_DATE.DisplayFormat := NGAYTHANG_FORMAT;
  qryDocEntryENTRY_AMOUNT.DisplayFormat := SOLUONG_FORMAT;
  qryDocEntryTYGIANT.DisplayFormat := TIENTE_FORMAT;
  qryDocEntryNGUYENTE.DisplayFormat := NGOAITE_FORMAT;
  qryDocEntryENTRY_PRICE.DisplayFormat := NGOAITE_FORMAT;
  qryDocEntryORIGIN_PRICE.DisplayFormat := NGOAITE_FORMAT;
  qryDocEntryENTRY_VALUE.DisplayFormat := TIENTE_FORMAT;
  qryDocEntryDISCOUNT_VALUE.DisplayFormat := TIENTE_FORMAT;
  qryDocEntryORIGIN_VALUE.DisplayFormat := TIENTE_FORMAT;
  qryDocEntryUNIT_AMOUNT.DisplayFormat := SOLUONG_FORMAT;
  qryDocEntryINVENTORY_AMOUNT.DisplayFormat := SOLUONG_FORMAT;
  MainDM.qryPTyGia.DataSource := dsDocEntry;

  IsChangeDoc_ID := False;
  with MainDM do
  begin
    if IsHasData(qryDocTypeCOTMANO) then
      grdDetailDEBIT_OBJ.Caption := qryDocTypeCOTMANO.Value;
    if IsHasData(qryDocTypeCOTTENNO) then
      grdDetailTENDTNO.Caption := qryDocTypeCOTTENNO.Value;
    if IsHasData(qryDocTypeCOTMACO) then
      grdDetailCREDIT_OBJ.Caption := qryDocTypeCOTMACO.Value;
    if IsHasData(qryDocTypeCOTTENCO) then
      grdDetailTENDTCO.Caption := qryDocTypeCOTTENCO.Value;

    PreviousDebitAcc := qryDocTypeTKNO.Value;
    PreviousCreditAcc := qryDocTypeTKCO.Value;
    PreviousDebitType := 0;
    PreviousCreditType := 0;
  end;

  btnHistory.Enabled := SSPUserRight[15].RR and prmUseDocumentLog;

  qryDocument.Close;
  qryDocument.ParamByName('PERIOD_ID').AsInteger := BeginLoadPeriodID;
  qryDocument.ParamByName('DOC_ID').Value := BeginLoadDocID;
  qryDocument.ParamByName('BRANCH_ID').Value := BeginLoadBranchID;
  qryDocument.Open;
  qryDocEntry.Open;

  if (MainDM.qryDocTypeALLOWINSERT.AsInteger = 0) then
    btnIns.Enabled := False;
  if (MainDM.qryDocTypeALLOWDELETE.AsInteger = 0) then
    acDelete.DataSource := MainDM.dsBanana;

  if MainDM.qryBranch.RecordCount = 1 then pedtBranch.Enabled:=FALSE;

  if vpBranch_IsMin = 0 then
  begin
    btnIns.Enabled := False;
    qryDocument.ReadOnly := TRUE;
    qryDocEntry.ReadOnly := TRUE;
  end;


  Reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey(RMAIN_KEY +'\DocTemplate', FALSE) then
      //if reg.KeyExists(IntToStr(maindm.qryDocTypeDOCTYPE_ID.Value)) then
      if reg.ValueExists(IntToStr(maindm.qryDocTypeDOCTYPE_ID.Value)) then
        InPhieuDangDK := reg.ReadInteger(IntToStr(maindm.qryDocTypeDOCTYPE_ID.Value)) =1
      else
      begin
        reg.WriteInteger(IntToStr(maindm.qryDocTypeDOCTYPE_ID.Value),0);
      end;
    reg.CloseKey;
  finally
      reg.Free;
  end;

end;

function TDocFullFrm.LaDongHangBan: WideString;
begin
  Result := '';

  if ((qryDocEntryCREDIT_TYPE.AsInteger = 2) and (copy(qryDocEntryCREDIT_ACC.Value,1,3) <> '338')) then
  begin
    MainDM.qryAutoOut.Open;
    if MainDM.qryAutoOut.Locate('TK_DT', qryDocEntryCREDIT_ACC.Value, []) then
    begin
      if MainDM.qryAutoOutTK_HH.IsNull then
        Result := ''
      else
        Result := MainDM.qryAutoOutTK_HH.Value;
    end;
  end;
end;

function TDocFullFrm.LaDongHangMua: Boolean;
begin
  Result := False;
  if ((qryDocEntryDEBIT_TYPE.AsInteger = 2)and (copy(qryDocEntryDEBIT_ACC.Value,1,3) <> '138')
  and (qryDocEntryCREDIT_TYPE.AsInteger = 1)) then
  begin
    MainDM.qryAutoOut.Open;
    if not MainDM.qryAutoOut.Locate('TK_TL', qryDocEntryDEBIT_ACC.Value, []) then
      Result := True;
  end;
end;

function TDocFullFrm.LaDongHangXuat: Boolean;
begin
  Result := False;

  if ((qryDocEntryCREDIT_TYPE.AsInteger = 2)and (copy(qryDocEntryCREDIT_ACC.Value,1,3) <> '338')) then
  begin
    MainDM.qryAutoOut.Open;
    if not MainDM.qryAutoOut.Locate('TK_DT', qryDocEntryCREDIT_ACC.Value, []) then
      Result := True;
  end;
end;

function TDocFullFrm.LaDongHangTP: Boolean;
begin
  if ((qryDocEntryDEBIT_TYPE.AsInteger = 2) and (qryDocEntryCREDIT_TYPE.AsInteger = 6)) then
    Result := True
  else
    Result := False;
end;

procedure TDocFullFrm.grdDetailEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
{var
  TTBENNO, LOAIDTTT : Smallint;
  SHTKTT,  MADTTT : WideString; }
begin
{  if grdDetail.FocusedField.FieldName = 'ENTRY_VALUE' then
  if qryDocEntryENTRY_VALUE.AsFloat   = 0 then
  if qryDocEntry.State = dsInsert then
  begin
    F6_Flag := 0;
    if ((grdDetail.FocusedField.FieldName = 'DEBIT_OBJ') and IsHasData(qryDocEntryDEBIT_OBJ)) then
    begin
      if qryDocEntry.State in [dsEdit,dsInsert] then qryDocEntry.Post;

      TTBENNO := 1;
      SHTKTT := qryDocEntryDEBIT_ACC.Value;
      MADTTT := qryDocEntryDEBIT_OBJ.Value;
      LOAIDTTT := qryDocEntryDEBIT_TYPE.AsInteger;
    end
    else if ((grdDetail.FocusedField.FieldName = 'CREDIT_OBJ') and IsHasData(qryDocEntryCREDIT_OBJ)) then
    begin
      if qryDocEntry.State in [dsEdit,dsInsert] then qryDocEntry.Post;

      TTBENNO := 0;
      SHTKTT := qryDocEntryCREDIT_ACC.Value;
      MADTTT := qryDocEntryCREDIT_OBJ.Value;
      LOAIDTTT := qryDocEntryCREDIT_TYPE.AsInteger;
    end
    else
      Exit;

    if ImportingFromXLS then Exit;

    with TObjDocBalFrm.Create(Self) do
    try
      if qryDocEntryPAYFOR_DOC.IsNull then
        ISFIRST := 1
      else
        ISFIRST := 0;

      MADT := MADTTT;
      LOAIDT := LOAIDTTT;
      SHTK := SHTKTT;
      SOPHIEU := qryDocEntryDOC_ID.Value;
      KYHT := qryDocEntryPERIOD_ID.Value;
      STTDONGHT := qryDocEntryENTRY_ID.AsInteger;
      STTLONNHAT := qryDocEntry.RecordCount;
      DANGBENNO := TTBENNO;
      ShowModal;
    finally
      Free;
    end;
    qryDocEntry.Refresh;
    F6_Flag := 1;
  end;
}
  if prmCHOSUATHANHTIEN = 0 then
    if grdDetail.FocusedField.FieldName = 'ENTRY_VALUE' then
      if ((qryDocEntryDEBIT_TYPE.AsInteger = 2) or (qryDocEntryCREDIT_TYPE.AsInteger = 2)) then
      begin
        Allow := False;
        exit;
      end;

  if grdDetail.FocusedField.FieldName = 'TYGIANT' then
  begin
    Allow := IsHasData(qryDocEntryCURRENCY_ID);
    exit;
  end;

  if grdDetail.FocusedField.FieldName = 'ENTRY_PRICE' then
  begin
    if ((prmCHOSUAGIAMUA = 0) and (LaDongHangMua)) then
    begin
      Allow := False;
      exit;
    end;
    if (prmCHOSUAGIAKH = 0) and LaDongHangTP then
    begin
      Allow := False;
      exit;
    end;
    if (prmCHOSUAGIABAN = 0) and (LaDongHangBan <> '') then
    begin
      Allow := False;
      exit;
    end;
    if (prmCHOSUAGIABQ = 0) and LaDongHangXuat then
    begin
      Allow := False;
      exit;
    end;
  end;

  if grdDetail.FocusedField.FieldName = 'DEBIT_OBJ' then
  begin
    if qryDocEntryDEBIT_TYPE.IsNull then
      Allow := False
    else
    begin
      MainDM.CurObjTypeID := qryDocEntryDEBIT_TYPE.AsInteger;
      if MainDM.CurObjTypeID = 3 then
      begin
        SohieuTSCD := '';
        AssetAccountID := qryDocEntryDEBIT_ACC.Value;
        AssetDocInID := qryDocEntryDOC_ID.Value;
        AssetDocInDate := qryDocumentDOC_DATE.AsDateTime;
      end;
    end;
  end
  else
    if grdDetail.FocusedField.FieldName = 'DEBIT_DETAIL' then
    begin
      if qryDocEntryDEBIT_DTYPE.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryDocEntryDEBIT_DTYPE.AsInteger;
    end
    else
      if grdDetail.FocusedField.FieldName = 'DEBIT_DETAIL_1' then
      begin
        if qryDocEntryDEBIT_DTYPE_1.IsNull then
          Allow := False
        else
          MainDM.CurObjTypeID := qryDocEntryDEBIT_DTYPE_1.AsInteger;
      end;

  if grdDetail.FocusedField.FieldName = 'CREDIT_OBJ' then
  begin
    if qryDocEntryCREDIT_TYPE.IsNull then
      Allow := False
    else
      MainDM.CurObjTypeID := qryDocEntryCREDIT_TYPE.AsInteger;
  end
  else
    if grdDetail.FocusedField.FieldName = 'CREDIT_DETAIL' then
    begin
      if qryDocEntryCREDIT_DTYPE.IsNull then
        Allow := False
      else
        MainDM.CurObjTypeID := qryDocEntryCREDIT_DTYPE.AsInteger;
    end
    else
      if grdDetail.FocusedField.FieldName = 'CREDIT_DETAIL_1' then
      begin
        if qryDocEntryCREDIT_DTYPE_1.IsNull then
          Allow := False
        else
          MainDM.CurObjTypeID := qryDocEntryCREDIT_DTYPE_1.AsInteger;
      end;
end;

procedure TDocFullFrm.grdDetailObjCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := vpItemID;
    acAfterSelect.Execute;
  end;
end;

procedure TDocFullFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  kq, tmp: integer;
begin
  with MainDM do
  begin
    if (qryDocEntry.RecordCount <> 0) or (isPressSave) then
      if ((acPost.Enabled) and (qryDocument.RecordCount <> 0)) then
      begin
        kq := ShowMessageUnicode(21, '', 3);
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
    if qryDocEntry.RecordCount = 0 then
      if qryDocument.RecordCount > 0 then
        if (not isPressSave) and (vpBranch_IsMin =1) then
        begin
          tmp := optConfirmDelete;
          optConfirmDelete := 0;
          qryDocument.Delete;
          optConfirmDelete := tmp;
        end;

    qryDocEntry.Close;
    qryDocument.Close;
    qryGiaBan.Close;
    qryGiaMua.Close;
    qryGiaKH.Close;
    qryDefaultUnit.Close;
  end;

  MainDM.qryInvoiceList.Close;

  FilterAccType := -1;
  DocFullFormCount := DocFullFormCount - 1;
  if DocFullFormCount = 0 then
    PopupFrm.PnlBalance.Visible := False;

  grdDetail.SaveToRegistry(RMAIN_KEY + '\DocFull\' + MainDM.qryDocTypeDOCTYPE_ID.AsString);
end;

procedure TDocFullFrm.acPostExecute(Sender: TObject);
begin
  with MainDM do
  begin
    isPressSave := True;
    if qryDocument.state in [dsInsert, dsEdit] then
      qryDocument.Post;
    if qryDocEntry.state in [dsInsert, dsEdit] then
      qryDocEntry.Post;
  end;
end;

procedure TDocFullFrm.acCancelExecute(Sender: TObject);
begin
  with MainDM do
  begin
    if qryDocument.state in [dsInsert, dsEdit] then
      qryDocument.Cancel;
    if qryDocEntry.state in [dsInsert, dsEdit] then
      qryDocEntry.Cancel;
  end;
end;

procedure TDocFullFrm.FormShow(Sender: TObject);
begin
  grdDetailENTRY_ID.Width := 20;
  if CurLanguage = 2 then
    ElFormCaption1.Texts[0].Caption := MainDM.qryDocTypeENGLISH_NAME.Value
  else
    ElFormCaption1.Texts[0].Caption := MainDM.qryDocTypeDOCTYPE_NAME.Value;

  LoaiDTMaster := MainDM.qryDocTypeLOAIDT.AsInteger;

  if IsHasData(MainDM.qryDocTypeOBJECT_CAP) then
    locFrmDT.Caption := MainDM.qryDocTypeOBJECT_CAP.Value;
  if IsHasData(MainDM.qryDocTypePERSON_CAP) then
    locFrmHT.Caption := MainDM.qryDocTypePERSON_CAP.Value;

  bbtnGenDoc.Enabled := MainDM.qryDocTypeALLOWINSERT.AsInteger = 1;
  bbtnGenDoc.Enabled :=(vpBranch_IsMin = 1);
  ElPopupButton2.Enabled := (vpBranch_IsMin = 1);
  acInsDetail.Enabled := (vpBranch_IsMin = 1);
  bbtnGenDoc.Enabled  := (vpBranch_IsMin = 1);

  //Nut phat sinh phieu xuat
  MainDM.qryRegForBills.Open;
  locFrmBtnPSPXK.Visible := MainDM.qryRegForBills.Locate('LOAIPBH', MainDM.qryDocTypeDOCTYPE_ID.AsInteger, []);
  MainDM.qryRegForBills.Close;
  if locFrmBtnPSPXK.Visible then
  begin
    bbtnPSBTXGV.Visible := ivAlways;
    bbtnPSPXGV.Visible := ivAlways;
    bbtnXemPXK.Visible := ivAlways;
  end
  else
  begin
    bbtnPSBTXGV.Visible := ivNever;
    bbtnPSPXGV.Visible := ivNever;
    bbtnXemPXK.Visible := ivNever;
  end;

  grdDetailVAT_PERCENT.Visible := MainDM.qryDocTypeDOCTYPE_ID.AsInteger = 560;
  grdDetailPAYFOR_DOC.Visible := False;
  locWare.Visible := MainDM.qryDocTypeWARE_FLAG.AsInteger > 0;
  qryDocumentWAREHOUSE_ID.Required := locWare.Visible;
  locToWare.Visible := MainDM.qryDocTypeWARE_FLAG.AsInteger = 2;
  qryDocumentTO_WAREHOUSE.Required := locToWare.Visible;
  locFrmWork.Visible := MainDM.qryDocTypeWARE_FLAG.AsInteger = 3;
  qryDocumentWORK_NAME.Required := locFrmWork.Visible;
  if MainDM.qryDocTypeWARE_FLAG.AsInteger = 1 then
  begin
    bbtnGenDoc.Visible := ivAlways;
    bbtnPSTheoDM.Visible := ivAlways;
    dxBarButton7.Visible := ivAlways;
  end
  else
  begin
    bbtnGenDoc.Visible := ivNever;
    bbtnPSTheoDM.Visible := ivNever;
    dxBarButton7.Visible := ivAlways;
  end;

  grdDetailORIGIN_PRICE.Visible := grdDetailDISCOUNT_SCALE.Visible and prmDirectDiscount;
  grdDetailDISCOUNT_VALUE.Visible := grdDetailDISCOUNT_SCALE.Visible;
  bbtnGenDoc.Enabled := MainDM.qryDocTypeALLOWINSERT.AsInteger = 1;

  //----Hach toan ngoai te------------
  isPressSave := False;
  EditStatusDoc := IsHasData(qryDocumentDOC_ID);
  if IsNotHasData(qryDocumentDOC_ID) and (vpBranch_IsMin =1) then
    qryDocument.Edit
  else
    isPressSave := True;

  if MainDM.qryDocTypeLOAIDT.AsInteger <> 1 then
    bbtnPSTraBaohiem.Visible := ivNever
  else
    bbtnPSTraBaohiem.Visible := ivAlways;


  grdDetailDEBIT_DETAIL.Visible := False;
  grdDetailCREDIT_DETAIL.Visible := False;

  grdDetailDEBIT_DETAIL_1.Visible := False;
  grdDetailCREDIT_DETAIL_1.Visible := False;

  qryDocEntry.First;
  while not qryDocEntry.Eof do
  begin
    if IsHasData(qryDocEntryDEBIT_DETAIL) then
      grdDetailDEBIT_DETAIL.Visible := True;
    if IsHasData(qryDocEntryCREDIT_DETAIL) then
      grdDetailCREDIT_DETAIL.Visible := True;

    if IsHasData(qryDocEntryDEBIT_DETAIL_1) then
      grdDetailDEBIT_DETAIL_1.Visible := True;
    if IsHasData(qryDocEntryCREDIT_DETAIL_1) then
      grdDetailCREDIT_DETAIL_1.Visible := True;

    qryDocEntry.Next;
  end;
  qryDocEntry.First;

  SetVisible(Self);

  grdDetail.LoadFromRegistry(RMAIN_KEY + '\DocFull\' + MainDM.qryDocTypeDOCTYPE_ID.AsString);
end;

procedure TDocFullFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if vpBranch_IsMin = 0 then exit;
  if Accept then
    with MainDM do
    begin
      qryDocument.Edit;
      Text := qryPWareWAREHOUSE_ID.Value;
      qryDocumentWAREHOUSE_ID.Value := qryPWareWAREHOUSE_ID.Value;
    end;
end;

procedure TDocFullFrm.btnInsClick(Sender: TObject);
begin
  if acPost.Enabled then
    acPost.Execute;
  acInsert.Execute;
end;

procedure TDocFullFrm.acInExecute(Sender: TObject);
begin
  InPhieu(False);
end;

procedure TDocFullFrm.InPhieu(IsDirect: Boolean);
var
  tmp: Widestring;
begin
  if acPost.Enabled then
    acPost.Execute;

  qryDocEntry.DisableControls;
  qryDocEntry.OnFilterRecord := qryDocEntryFilterRecord;
  qryDocEntry.Filtered := True;
  qryintachthue.OnFilterRecord := qryintachthueFilterRecord;
  qryintachthue.Filtered := True;

  tmp := MainDM.qryDocTypeTEMPLATE_FILE.AsString;
  //Thinh them --
  {if ({maindm.qryDocTypeTEMPLATE_TYPE.IsNull or (maindm.qryDocTypeTEMPLATE_TYPE.Value =0) then
    InPhieuDangDK := FALSE
  else
    InPhieuDangDK := TRUE;}
  //-------------
  if InPhieuDangDK then
  begin
    if (CurLanguage=2) then
      rptDocReport.Template.FileName := TemplatePath + 'Eng\' + tmp
    else
      rptDocReport.Template.FileName := TemplatePath + 'PhieuDK\' + tmp;
  end
  else
  begin
    if (CurLanguage=2) then
      rptDocReport.Template.FileName := TemplatePath + 'Eng\' + tmp
    else
      rptDocReport.Template.FileName := TemplatePath + 'PhieuNC\' + tmp;
  end;
  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  rptDocReport.Template.LoadFromFile;

  //qryIn.Open;
  qryInTachThue.Open;

  acSetbeforePrint.Execute;

  if IsDirect then
    rptDocReport.DeviceType := 'Printer'
  else
    rptDocReport.DeviceType := 'Screen';
  qryEntryGrp.Open;
  rptDocReport.PreviewFormSettings.WindowState := wsMaximized;
  rptDocReport.PreviewFormSettings.ZoomPercentage := 100;
  //If Not rptDocReport.PrintReport then
//    ShowMessageUnicode(210);
  try
    rptDocReport.PrintReport
  except
    ShowMessageUnicode(210);
  end;
  qryEntryGrp.Close;
  qryGiayTT.Close;
  //qryIn.close;
  qryIntachThue.close;
  
  qryDocEntry.Filtered := False;
  qryDocEntry.Filtered := False;
  qryDocEntry.EnableControls;
end;

procedure TDocFullFrm.acDesignExecute(Sender: TObject);
var
  tmp: Widestring;
begin
  tmp := MainDM.qryDocTypeTEMPLATE_FILE.AsString;

  if InPhieuDangDK then
    rptDocReport.Template.FileName := TemplatePath + 'PhieuDK\' + tmp
  else
    rptDocReport.Template.FileName := TemplatePath + 'PhieuNC\' + tmp;

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
  qryGiayTT.Close;
  qryDocEntry.Filtered := False;
end;

procedure TDocFullFrm.acSetbeforePrintExecute(Sender: TObject);
var
  TKNO, TKCO, Sotien, SotienA, SotienB, TenTiente: WideString;
  strlstNo, strlstCo: TWideStringList;
  i: Integer;
  CompName, CompCap: string;
  CompCaption, wStrTmp: WideString;
  Tongtien, TongChietKhau, Tongtienhang, Sothanhtoan, TongtienNT, Soluong, TYGIAQD: Double;
  Chietkhau521 ,TongtienSauCK : double;
begin
  strlstNo := TWideStringList.Create;
  strlstCo := TWideStringList.Create;
  qryDocEntry.First;
  Tongtien := 0;
  TongtienNT := 0;
  TenTiente := '';
  TongChietKhau := 0;

  while not qryDocEntry.Eof do
  begin
    wStrTmp := qryDocEntryDEBIT_ACC.Value;
    if ((not qryDocEntryDEBIT_OBJ.IsNull) and optInCoMaSoChitiet) then
      wStrTmp := wStrTmp + qryDocEntryDEBIT_OBJ.Value;
    if (not strlstNo.Find(wStrTmp, i)) then strlstNo.Add(wStrTmp);

    wStrTmp := qryDocEntryCREDIT_ACC.Value;
    if ((not qryDocEntryCREDIT_OBJ.IsNull) and optInCoMaSoChitiet) then
      wStrTmp := wStrTmp + qryDocEntryCREDIT_OBJ.Value;
    if not strlstCo.Find(wStrTmp, i) then strlstCo.Add(wStrTmp);

    if IsHasData(qryDocEntryCURRENCY_ID) then
      TenTiente := qryDocEntryCURRENCY_ID.Value;

    Tongtien := Tongtien + qryDocEntryENTRY_VALUE.Value;
    TongChietKhau := TongChietKhau + qryDocEntryDISCOUNT_VALUE.Value;

    Soluong := qryDocEntryENTRY_AMOUNT.Value;
    if Soluong = 0 then Soluong := 1;
    TongtienNT := TongtienNT + qryDocEntryENTRY_PRICE.Value * Soluong;

    qryDocEntry.Next;
  end;


  Tongtienhang := Tongtien - TongChietKhau;
  Sothanhtoan := Tongtienhang - TongChietKhau;

  if TongtienNT = 0 then TYGIAQD := 1
  else TYGIAQD := Tongtien / TongtienNT;

  TKNO := '';
  for i := 0 to strlstNo.Count - 1 do
    if TKNO = '' then
      TKNO := strlstNo.Strings[i]
    else
      TKNO := TKNO + ',' + strlstNo.Strings[i];
  TKCO := '';
  for i := 0 to strlstCo.Count - 1 do
    if TKCO = '' then
      TKCO := strlstCo.Strings[i]
    else
      TKCO := TKCO + ',' + strlstCo.Strings[i];

  if CurLanguage <> 2 then
     Sotien := DocSoThanhChu(FloatToStr(Tongtien))
  else
     if qryDocEntryCURRENCY_ID.isnull then
      Sotien := DocSoThanhChu_eng(FloatToStr(Tongtien),'VND')
     else
      Sotien := DocSoThanhChu_eng(FloatToStr(Tongtien),qryDocEntryCURRENCY_ID.value);


  CatDoiChuoi(Sotien, StrToInt(ReadValueFromInniFile('PhieuChung', 'PrintOptions', '50')));

  SotienA := StrOutput1;
  Sotienb := StrOutput2;

  for i := 0 to ComponentCount - 1 do
  begin
    if not (Components[i] is TppLabel) then
      Continue;
    //Cho nay khac ben template
    if (Components[i] as TppLabel).Width = 0 then
      (Components[i] as TppLabel).Width := 1;
    if (Components[i] as TppLabel).Height = 0 then
      (Components[i] as TppLabel).Height := 0.2;

    //Lay ten va caption cua component nay
    CompName := Components[i].Name;
    CompCap := (Components[i] as TppLabel).Caption;
    CompName := LowerCase(CompName);
    CompCap := LowerCase(CompCap);

    CompCaption := '///\\\';

    if (CompName = 'lbltkno') or (CompCap = 'lbltkno') then
      CompCaption := TKNO
    else
      if (CompName = 'lbltkco') or (CompCap = 'lbltkco') then
        CompCaption := TKCO
      else
        if (CompName = 'lblsotien') or (CompCap = 'lblsotien') then
          CompCaption := Sotien
        else
          if (CompName = 'lblsotiena') or (CompCap = 'lblsotiena') then
            CompCaption := SotienA
          else
            if (CompName = 'lblsotienb') or (CompCap = 'lblsotienb') then
              CompCaption := SotienB
            else
              if (CompName = 'lbltygia') or (CompCap = 'lbltygia') then
                CompCaption := FormatFloat(TIENTE_FORMAT, TYGIAQD)
              else
                if (CompName = 'lbltongtien') or (CompCap = 'lbltongtien') then
                  CompCaption := FormatFloat(TIENTE_FORMAT, Tongtien)
                else
                  if (CompCap = 'lbltienthanhtoan') then
                    CompCaption := FormatFloat(TIENTE_FORMAT, Sothanhtoan)
                  else
                    if (CompCap = 'lbltienhang') then
                      CompCaption := FormatFloat(TIENTE_FORMAT, Tongtienhang)
                    else
                      if (CompName = 'lbltongngoaite') or (CompCap = 'lbltongngoaite') then
                        CompCaption := FormatFloat(TIENTE_FORMAT, TongtienNT)
                      else
                        if (CompCap = 'lbltiente') then
                          CompCaption := TenTiente
                        else
                          if (CompCap = 'lblsotienttsauck') then
                            if CurLanguage <> 2 then
                              CompCaption := DocSoThanhChu(FloatToStr(qryInTachThueTONGTIEN_OUT.Value))
                            else if CurLanguage = 2 then
                              CompCaption := DocSoThanhChu_Eng(FloatToStr(qryInTachThueTONGTIEN_OUT.Value),maindm.qryCurrencyCURRENCY_ID.Value);

    if CompCaption <> '///\\\' then
      (Components[i] as TppLabel).Caption := CompCaption;
  end;
end;

procedure TDocFullFrm.dxDBEdit1Enter(Sender: TObject);
begin
  with qryDocEntry do
    if State in [dsInsert, dsEdit] then
// tradtt: sua loi 1133
     try
      Post;
     except
      abort;
     end
end;

procedure TDocFullFrm.BitBtn7Click(Sender: TObject);
begin
//  CallHelp();
  if HtmlHelp(Self.handle, 'HDSDKT.chm::/Nhapchungtu.htm', HH_DISPLAY_TOPIC, 0) = 0 then
    ShowMessageUnicode(182);
end;

procedure TDocFullFrm.pmDTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if vpBranch_IsMin = 0 then exit;
  if Accept then
  begin
    qryDocument.Edit;
    Text := vpItemID;
    qryDocumentLOAIDOITUONG.AsInteger := vpOtypeID;
    qryDocumentMADOITUONG.Value := vpItemID;
  end;
end;

procedure TDocFullFrm.bbtnGenDocClick(Sender: TObject);
begin
  if qryDocument.RecordCount = 0 then exit;
  if qryDocEntry.RecordCount = 0 then exit;
  SPPHATSINHRA := '';
  with TGenDocFrm.Create(Application) do
  try
    GenFromDocID := qryDocumentDOC_ID.Value;
    GenFromPeriod := qryDocumentPERIOD_ID.AsInteger;
    GenFromBranch := qryDocumentBRANCH_ID.Value;
    ShowModal;
  finally
    Free;
  end;

  if SPPHATSINHRA <> '' then
  begin
    if SPPHATSINHRA <> qryDocumentDOC_ID.Value then
      MainDM.Suachungtu(SPPHATSINHRA, qryDocumentPERIOD_ID.AsInteger,qryDocumentBRANCH_ID.value)
    else
      qryDocEntry.Refresh;
  end;
  IsPosted := True;
end;

procedure TDocFullFrm.grdDetailEnter(Sender: TObject);
begin
  if qryDocument.State in [dsInsert, dsEdit] then
    qryDocument.Post;

  if not (qryDocument.State in [dsEdit, dsInsert]) then //Post thanh cong
    if qryDocEntry.RecordCount = 0 then
    begin
      if not qryDocEntry.ReadOnly then
        qryDocEntry.Insert;
    end;
end;

procedure TDocFullFrm.btnCopyClick(Sender: TObject);
var
  spphatsinh: WideString;
begin
  if acPost.Enabled then
    acPost.Execute;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 0) then Abort;

  if ShowMessageUnicode(148, '', 4) = 7 then
    exit;

  IsPosted := True;

  spphatsinh := MainDM.Phatsinhsophieu;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure sp_phatsinhphieumoi (:SOPHIEUCU, :KYHTCU, :NGAYLAP, :SOPHIEUMOI, :KYHTMOI, :NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEUCU').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHTCU').Value := qryDocumentPERIOD_ID.Value;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    ParamByName('SOPHIEUMOI').Value := spphatsinh;
    ParamByName('KYHTMOI').Value := CurrentPeriod;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;

    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;

  with MainDM do
  begin
    qryDocEntry.Close;
    qryDocument.Close;

    qryDocument.ParamByName('PERIOD_ID').Value := CurrentPeriod;
    qryDocument.ParamByName('DOC_ID').Value := spphatsinh;
    qryDocument.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryDocument.Open;

    qryDocEntry.Open;
  end;
  IsPosted := True;
end;

procedure TDocFullFrm.qryDocumentAfterCancel(DataSet: TDataSet);
begin
  IsChangeDoc_ID := False;
  acPost.Enabled := False;
  acCancel.Enabled := False;
  IsChangeDT := False;
end;

procedure TDocFullFrm.qryDocumentAfterDelete(DataSet: TDataSet);
begin
  isPressSave := True;
  IsChangeDoc_ID := False;
  acPost.Enabled := False;
  acCancel.Enabled := False;
  VATTaxTotal := 0;

  IsPosted := True;
  MainDM.qryDocList.Refresh; //De phu hop voi Navigator. tuy nhien se lam cham chuong trinh
  EditStatusDoc := True;

  if prmUseDocumentLog then
    GhiNhatKyXoaPhieu(DeletedDocID, DeletedPeriod, DeletedComment);
end;

procedure TDocFullFrm.qryDocumentAfterEdit(DataSet: TDataSet);
begin
  acPost.Enabled := True;
  acCancel.Enabled := True;
end;

procedure TDocFullFrm.qryDocumentAfterInsert(DataSet: TDataSet);
begin
  acPost.Enabled := True;
  acCancel.Enabled := True;
  VATTaxTotal := 0;
  qryDocumentDOC_ID.FocusControl;
  EditStatusDoc := False;
end;

procedure TDocFullFrm.qryDocumentAfterPost(DataSet: TDataSet);
begin
  acPost.Enabled := False;
  acCancel.Enabled := False;
  IsPosted := True;
  if IsChangeDoc_ID then
    qryDocEntry.Refresh;
  IsChangeDoc_ID := False;
  if IsChangeDT and (qryDocumentLOAIDOITUONG.AsInteger <> 0) then
  begin
    qryDocEntry.First;
    while not qryDocEntry.Eof do
    begin
      if qryDocEntryDEBIT_TYPE.AsInteger = qryDocumentLOAIDOITUONG.AsInteger then
        if qryDocEntryDEBIT_OBJ.Value <> qryDocumentMADOITUONG.Value then
        begin
          qryDocEntry.Edit;
          qryDocEntryDEBIT_OBJ.Value := qryDocumentMADOITUONG.Value;
          qryDocEntry.Post;
        end;
      if qryDocEntryCREDIT_TYPE.AsInteger = qryDocumentLOAIDOITUONG.AsInteger then
        if qryDocEntryCREDIT_OBJ.Value <> qryDocumentMADOITUONG.Value then
        begin
          qryDocEntry.Edit;
          qryDocEntryCREDIT_OBJ.Value := qryDocumentMADOITUONG.Value;
          qryDocEntry.Post;
        end;

      qryDocEntry.Next;
    end;
    IsChangeDT := False;
  end;

  if ischangebranch_id = 1 then
    ShowMessageUnicode(258,'',5) ;

end;

procedure TDocFullFrm.qryDocumentBeforeDelete(DataSet: TDataSet);
begin
  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 2) then Abort;

  if ((qryDocEntry.RecordCount > 0) and (MainDM.qryDocTypeALLOWDELETE.AsInteger = 0)) then
  begin
    ShowMessageUnicode(25);
    Abort;
    Exit;
  end;

  if optConfirmDelete = 1 then
    if ShowMessageUnicode(23, '', 4) = 7 then
      Abort;

  if prmUseDocumentLog then
  begin
    DeletedDocID := qryDocumentDOC_ID.Value;
    DeletedPeriod := 0;
    DeletedComment := 'Delete voucher : ' + UTF8Encode(qryDocumentDOC_ID.Value);
  end;
end;

procedure TDocFullFrm.qryDocumentBeforeEdit(DataSet: TDataSet);
begin
  if qryDocEntry.State in [dsInsert, dsEdit] then
    qryDocEntry.Post;

  if ((MainDM.qryDocTypeALLOWEDIT.AsInteger = 0) and (EditStatusDoc)) then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 1) then Abort;
  IsChangeDT := False;
end;

procedure TDocFullFrm.qryDocumentBeforeInsert(DataSet: TDataSet);
begin
  //--Neu la phien ban khong co license thi Khong cho phep them vuot qua 1000 phieu--//
  if Not HasLicense then
  begin
    With MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text := 'select count(*) as num from DOCUMENTS';
      Open;
  end;
  //Hoaipt sua cho may dung tam cua GHD
  //if (YearOf(workingdate)*12+ MonthOf(workingdate) > 2009*12+7) then
  {if ((YearOf(now)*12+ MonthOf(now) > 2010*12+3) or (YearOf(workingdate)*12+ MonthOf(workingdate) > 2009*12+7)) then
    begin
      ShowMessageUnicode(261);
      MainDM.qryCommon.Close;
      Abort;
      exit;
    end;
    MainDM.qryCommon.Close;
  end; }
  if (MainDM.qryCommon.FieldByName('num').Value >= 1000) then
    begin
      ShowMessageUnicode(261);
      MainDM.qryCommon.Close;
      Abort;
      exit;
    end;
    MainDM.qryCommon.Close;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 0) then Abort;
  if (MainDM.qryDocTypeALLOWINSERT.AsInteger = 0) then
  begin
    ShowMessageUnicode(26);
    Abort;
    Exit;
  end;
  IsChangeDT := False;
end;

procedure TDocFullFrm.qryDocumentBeforePost(DataSet: TDataSet);
begin
  if prmUseDocumentLog then
    qryDocumentLASTMODIFY.Value := CurrentUser
  else
    qryDocumentLASTMODIFY.Clear;
  
  if IsSystemPost then exit;

  //Thinh - canh bao trung phieu tren 1 don vi khac
  {if IsExistDocID_Branchs <> '' then
    qryDocumentDOC_ID.FocusControl;
    //if ShowMessageUnicode(149,);
}
  //===============================================
  if IsNotHasData(qryDocumentDOC_ID) then
  begin

    HintBox(149,self,dxDBEdit1);

    Abort;
    exit;
  end;

  if qryDocumentDOC_DATE.IsNull then
  begin

    HintBox(170,self,dxDBDateEdit1);

    Abort;
    exit;
  end;

  if locWare.Visible then
    if IsNotHasData(qryDocumentWAREHOUSE_ID) then
    begin
      HintBox(150,self,dxDBPopupEdit1);
      Abort;
      exit;
  end;

  if KiemtraKhohang = False then Abort;
  if KiemtraKhoDen = False then Abort;
  if KiemtraDoituong=False then Abort;
  if KiemtraCongtrinh = False then Abort;

  if YearOf(qryDocumentDOC_DATE.AsDateTime) * 12 + MonthOf(qryDocumentDOC_DATE.AsDateTime) <> qryDocumentPERIOD_ID.AsInteger then
  begin
    HintBox(151,self,dxDBDateEdit1);
    //ShowMessageUnicode(151);
    //qryDocumentDOC_DATE.FocusControl;
    if prmRangbuocNgay then
      Abort;
  end;
  if EditStatusDoc and optRemindBeforeSave then
    if ShowMessageUnicode(35, '', 4) = 7 then
    begin
      qryDocument.Cancel;
      Abort;
      Exit;
    end;

  if not qryDocumentMASODT.IsNull then qryDocumentLOAI_DT.AsInteger := 2;

  if MainDM.qryDocTypeWARE_FLAG.AsInteger <> 2 then
  begin
    if qryDocumentWAREHOUSE_ID.IsNull then
      qryDocumentTO_WAREHOUSE.Clear
    else
      qryDocumentTO_WAREHOUSE.Value := qryDocumentWAREHOUSE_ID.Value;
  end;
end;

procedure TDocFullFrm.qryDocumentNewRecord(DataSet: TDataSet);
begin
  PreviousDebitObj := '';
  PreviousCreditObj := '';
  PreviousCreditDetail := '';
  PreviousDebitDetail :='';
  PreviousCreditDetail_1 := '';
  PreviousDebitDetail_1 :='';


  qryDocumentDOC_AMOUNT.AsFloat := 1;
  qryDocumentDOCUMENT_TAG.AsInteger := 0;

  try
    qryDocumentPERIOD_ID.Value := CurrentPeriod;
    qryDocumentDOCTYPE_ID.AsInteger := MainDM.qryDocTypeDOCTYPE_ID.AsInteger;
    qryDocumentDOC_DATE.AsDateTime := WorkingDate;
    qryDocumentPAY_DATE.AsDateTime := WorkingDate;
    qryDocumentBRANCH_ID.Value := vpBranch_id;
    qryDocumentTYGIA.Value:= 1;
    if optAutoGenDocNo = 1 then
      qryDocumentDOC_ID.Value := MainDM.Phatsinhsophieu();
  except
  end;
  IsSystemPost := True;
  try
    if not qryDocumentDOC_ID.IsNull then
      qryDocument.Post;
  except

    HintBox(171,self,dxDBEdit1);
    IsSystemPost := False;
    exit;
  end;
  IsSystemPost := False;
  MainDM.qryDocList.Refresh; //De phu hop voi Navigator
  //qryDocument.Edit;
  isPressSave := False;
end;

procedure TDocFullFrm.qryDocumentPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs: Integer;
begin
  Action := daAbort;
  ErrImportMsg := e.Message;
  if ImportingFromXLS then Exit;

  rs := ProcessErr(E, 'phiếu');
  if rs = -803 then
    qryDocumentDOC_ID.FocusControl;

  if rs = -530 then //Khoa ngoai
  begin
    if ((locWare.Enabled) and IsHasData(qryDocumentWAREHOUSE_ID)) then
    begin
      MainDM.qryPWare.Open;
      if MainDM.qryPWare.Locate('WAREHOUSE_ID', qryDocumentWAREHOUSE_ID.Value, []) = False then
      begin
        ShowMessageUnicode(172, e.Message, 0);
        qryDocumentWAREHOUSE_ID.FocusControl;
        exit;
      end;
    end;
    //Ma so doi tuong
    {sua loi bug ID_812}
    if IsNotHasData(qryDocumentMADOITUONG) then
    {end sua loi bug ID_812}    
    begin
      ShowMessageUnicode(153, e.Message, 0);
      qryDocumentMADOITUONG.FocusControl;
      exit;
    end
    else
    begin
      ShowMessageUnicode(154, e.Message, 0);
      exit;
    end
  end;
end;

procedure TDocFullFrm.qryDocEntryAfterCancel(DataSet: TDataSet);
begin
  acPost.Enabled := False;
  acCancel.Enabled := False;
end;

procedure TDocFullFrm.qryDocEntryAfterEdit(DataSet: TDataSet);
begin
  acPost.Enabled := True;
  acCancel.Enabled := True;
end;

procedure TDocFullFrm.qryDocEntryAfterInsert(DataSet: TDataSet);
begin
  acPost.Enabled := True;
  acCancel.Enabled := True;
  if grdDetail.VisibleColumns[0].Field.FieldName = 'ENTRY_ID' then
    grdDetail.VisibleColumns[1].Field.FocusControl
  else
    grdDetail.VisibleColumns[0].Field.FocusControl;
end;

procedure TDocFullFrm.qryDocEntryAfterPost(DataSet: TDataSet);
var
  TKHHXuatKho: WideString;
{  TTBENNO,LOAIDTTT:Smallint;
  SHTKTT,MADTTT:WideString; }
begin
  if ImportingFromXLS then Exit;

  acPost.Enabled := False;
  acCancel.Enabled := False;

  IsPosted := True;

  if qryDocEntryENTRY_AMOUNT.AsFloat > 0 then
    if optAutoRemindInstock and not prmChophepXuatam then
      if IsHasData(qryDocEntryCREDIT_OBJ) and (qryDocEntryCREDIT_TYPE.AsInteger = 2) then
        with MainDM do
        begin
          if LaDongHangXuat then
          begin
            if not TKHangChothue(qryDocEntryCREDIT_ACC.Value) then
              KiemtraTonkhoAm(qryDocumentPERIOD_ID.Value, qryDocumentWAREHOUSE_ID.Value, qryDocEntryCREDIT_OBJ.Value, qryDocEntryCREDIT_ACC.Value);
          end
          else
          begin
            maindm.qryAutoDocOut.ParamByName('DOC_ID').Value := qryDocumentDOC_ID.Value;
            maindm.qryAutoDocOut.ParamByName('PERIOD_ID').Value := qryDocumentPERIOD_ID.Value;
            maindm.qryAutoDocOut.ParamByName('BRANCH_ID').Value := vpBranch_id;
            maindm.qryAutoDocOut.prepare;
            maindm.qryAutoDocOut.open;

            TKHHXuatKho := LaDongHangBan;
            if (TKHHXuatKho <> '') and (maindm.qryAutoDocOutIS_ACTIVE.Value = 1 ) then
              KiemtraTonkhoAm(qryDocumentPERIOD_ID.Value, qryDocumentWAREHOUSE_ID.Value, qryDocEntryCREDIT_OBJ.Value, TKHHXuatKho);
          end;
        end;

  if Copy(qryDocEntryCREDIT_ACC.Value,1,2)='11' then
  begin
    qryCheckBal.Close;
    qryCheckBal.ParamByName('SHTK').Value:=qryDocEntryCREDIT_ACC.Value;
    qryCheckBal.ParamByName('DENNGAY').Value:=qryDocumentDOC_DATE.Value;
    qryCheckBal.ParamByName('BRANCH_ID').Value:=qryDocEntryBRANCH_ID.Value;
    qryCheckBal.Open;
    if qryCheckBalBENNO.AsFloat-qryCheckBalBENCO.AsFloat<0 then
      ShowMessageUnicode(260);
  end;
{  if ((copy(qryDocEntryCREDIT_ACC.Value,1,4) = '3331') or (copy(qryDocEntryDEBIT_ACC.Value,1,3) = '521')
  or (copy(qryDocEntryDEBIT_ACC.Value,1,3) = '133'))
  then begin
    qryDocEntry.DisableControls;
    qryDocEntry.Refresh;
    qryDocEntry.EnableControls;
  end     }
{
  if not ImportingFromXLS then Exit;

  if F6_Flag = 0 then exit;
  if ((qryDocEntryDEBIT_TYPE.AsInteger = 1) and IsHasData(qryDocEntryDEBIT_OBJ)) then
    begin
      if qryDocEntry.State in [dsEdit,dsInsert] then qryDocEntry.Post;

      TTBENNO  := 1;
      SHTKTT   := qryDocEntryDEBIT_ACC.Value;
      MADTTT   := qryDocEntryDEBIT_OBJ.Value;
      LOAIDTTT := qryDocEntryDEBIT_TYPE.AsInteger;
    end
    else if ((qryDocEntryCREDIT_TYPE.AsInteger = 1) and IsHasData(qryDocEntryCREDIT_OBJ)) then
    begin
      if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

      TTBENNO  := 0;
      SHTKTT   := qryDocEntryCREDIT_ACC.Value;
      MADTTT   := qryDocEntryCREDIT_OBJ.Value;
      LOAIDTTT := qryDocEntryCREDIT_TYPE.AsInteger;
    end
    else
      Exit;

    with TObjDocBalFrm.Create(Self) do
    try
      if qryDocEntryPAYFOR_DOC.IsNull then
        ISFIRST := 1
      else
        ISFIRST := 0;

      MADT := MADTTT;
      LOAIDT := LOAIDTTT;
      SHTK := SHTKTT;
      SOPHIEU := qryDocEntryDOC_ID.Value;
      KYHT := qryDocEntryPERIOD_ID.Value;
      STTDONGHT := qryDocEntryENTRY_ID.AsInteger;
      STTLONNHAT := qryDocEntry.RecordCount;
      DANGBENNO := TTBENNO;
      ShowModal;
    finally
      Free;
    end;

    qryDocEntry.Refresh;

    Exit;
}
    qryDocEntry.Refresh;
end;

procedure TDocFullFrm.qryDocEntryBeforeDelete(DataSet: TDataSet);
begin
  if ((MainDM.qryDocTypeALLOWEDIT.AsInteger = 0) and (EditStatusDoc)) then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 2) then Abort;

  if qryDocEntry.State in [dsInsert] then
  begin
    qryDocEntry.Cancel;
    Exit;
  end;

  if optConfirmDelete = 1 then
    if ShowMessageUnicode(23, '', 4) = 7 then
      Abort;

  if qryDocEntry.State in [dsEdit] then
  begin
    qryDocEntry.Cancel;
    Exit;
  end;

  if prmUseDocumentLog then
  begin
    DeletedDocID := qryDocEntryDOC_ID.Value;
    DeletedPeriod := qryDocEntryPERIOD_ID.AsInteger;
    DeletedComment := 'Delete Row : ' + qryDocEntryENTRY_ID.AsString;
  end;
end;

procedure TDocFullFrm.qryDocEntryBeforeEdit(DataSet: TDataSet);
begin
  if ((MainDM.qryDocTypeALLOWEDIT.AsInteger = 0) and (EditStatusDoc)) then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 1) then Abort;

  {if LaDongHangXuat then
  begin
    FocusFieldName:=grdDetail.FocusedField.FieldName;
    if ((FocusFieldName='CREDIT_ACC') or (FocusFieldName='CREDIT_OBJ') or (FocusFieldName='ENTRY_AMOUNT')) then
    begin
      ShowMessageUnicode(34);
      Abort;
    end;
  end;}
end;

procedure TDocFullFrm.qryDocEntryBeforeInsert(DataSet: TDataSet);
begin
  if ((MainDM.qryDocTypeALLOWEDIT.AsInteger = 0) and (EditStatusDoc)) then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;

  if NotUnLockData(qryDocumentPERIOD_ID.AsInteger, 0) then Abort;
end;

procedure TDocFullFrm.qryDocEntryBeforePost(DataSet: TDataSet);
var
  szLOAITKNO, szLOAITKCO: string;
begin
  if ImportingFromXLS then Exit;
  if IsSystemPost then Exit;

  if ((qryDocEntryENTRY_AMOUNT.AsFloat<0)or(qryDocEntryENTRY_PRICE.AsFloat<0))then
  begin
    ShowMessageUnicode(162);
    Abort;
    exit;
  end;

  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered := True;
  MainDM.qryPAcc.Open;
  if IsNotHasData(qryDocEntryDEBIT_ACC) then
  begin
    grdDetailDEBIT_ACC.Visible := True;
    //ShowMessageUnicode(67);
    //qryDocEntryDEBIT_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_ACC',67);
    Abort;
    exit;
  end;
  with MainDM do
    if qryDocEntryDEBIT_ACC.Value <> qryPAccACCOUNT_ID.Value then
      if not qryPAcc.Locate('ACCOUNT_ID', qryDocEntryDEBIT_ACC.Value, []) then
      begin
        //ShowMessageUnicode(42);
        grdDetailDEBIT_ACC.Visible := True;
        //qryDocEntryDEBIT_ACC.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_ACC',42);
        Abort;
      end;
  if MainDM.qryPAccISMIN.AsInteger = 0 then
  begin
    //ShowMessageUnicode(27);
    grdDetailDEBIT_ACC.Visible := True;
    //qryDocEntryDEBIT_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_ACC',27);
    Abort;
  end;

  if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
  begin
    qryDocEntryDEBIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
    if IsNotHasData(qryDocEntryDEBIT_OBJ) then
    begin
      //ShowMessageUnicode(65);
      grdDetailDEBIT_OBJ.Visible := True;
      //qryDocEntryDEBIT_OBJ.FocusControl;
      ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_OBJ',65);
      Abort;
      exit;
    end;
  end
  else
    if not qryDocEntryDEBIT_OBJ.IsNull then
      qryDocEntryDEBIT_OBJ.Clear;

  if prmBBNHAPYT = 1 then
  begin
    if not qryDocEntryDEBIT_DTYPE.IsNull then
      if IsNotHasData(qryDocEntryDEBIT_DETAIL) then
      begin
        //ShowMessageUnicode(65);
        grdDetailDEBIT_DETAIL.Visible := True;
        //qryDocEntryDEBIT_DETAIL.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_DETAIL',65);
        Abort;
        exit;
      end;

    if not qryDocEntryDEBIT_DTYPE_1.IsNull then
      if IsNotHasData(qryDocEntryDEBIT_DETAIL_1) then
      begin
        //ShowMessageUnicode(65);
        grdDetailDEBIT_DETAIL_1.Visible := True;
        //qryDocEntryDEBIT_DETAIL_1.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_DETAIL_1',65);
        Abort;
        exit;
      end;
  end
  else
    if IsNotHasData(qryDocEntryDEBIT_DETAIL) then
      qryDocEntryDEBIT_DETAIL.Clear;

  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenCORecord;
  MainDM.qryPAcc.Filtered := True;
  if IsNotHasData(qryDocEntryCREDIT_ACC) then
  begin

    //ShowMessageUnicode(42);
    grdDetailCREDIT_ACC.Visible := True;
    //qryDocEntryCREDIT_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryDocEntry,'CREDIT_ACC',42);
    Abort;
    exit;
  end;
  with MainDM do
    if qryDocEntryCREDIT_ACC.Value <> qryPAccACCOUNT_ID.Value then
      if not qryPAcc.Locate('ACCOUNT_ID', qryDocEntryCREDIT_ACC.Value, []) then
      begin
        //ShowMessageUnicode(42);
        grdDetailCREDIT_ACC.Visible := True;
        //qryDocEntryCREDIT_ACC.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'CREDIT_ACC',42);
        Abort;
      end;
  if MainDM.qryPAccISMIN.AsInteger = 0 then
  begin
    //ShowMessageUnicode(27);
    grdDetailCREDIT_ACC.Visible := True;
    //qryDocEntryCREDIT_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryDocEntry,'CREDIT_ACC',27);
    Abort;
  end;

  with MainDM do
    if MainDM.qryPAccOTYPE_ID.AsInteger <> 0 then
    begin
      qryDocEntryCREDIT_TYPE.AsInteger := MainDM.qryPAccOTYPE_ID.AsInteger;
      if IsNotHasData(qryDocEntryCREDIT_OBJ) then
      begin
        //ShowMessageUnicode(65);
        grdDetailCREDIT_OBJ.Visible := True;
        //qryDocEntryCREDIT_OBJ.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'CREDIT_OBJ',65);
        Abort;
        exit;
      end;
    end
    else
      if not qryDocEntryCREDIT_OBJ.IsNull then
        qryDocEntryCREDIT_OBJ.Clear;

  if prmBBNHAPYT = 1 then
  begin
    if not qryDocEntryCREDIT_DTYPE.IsNull then
      if IsNotHasData(qryDocEntryCREDIT_DETAIL) then
      begin
        //ShowMessageUnicode(65);
        qryDocEntryCREDIT_DETAIL.Visible := True;
        grdDetailCREDIT_DETAIL.Visible := True;
        //qryDocEntryCREDIT_DETAIL.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'CREDIT_DETAIL',65);
        Abort;
        exit;
      end;
    if not qryDocEntryCREDIT_DTYPE_1.IsNull then
      if IsNotHasData(qryDocEntryCREDIT_DETAIL_1) then
      begin
        //ShowMessageUnicode(65);
        qryDocEntryCREDIT_DETAIL_1.Visible := True;
        grdDetailCREDIT_DETAIL_1.Visible := True;
        //qryDocEntryCREDIT_DETAIL_1.FocusControl;
        ShowHintBoxInComponent(self,qryDocEntry,'CREDIT_DETAIL_1',65);
        Abort;
        exit;
      end;
  end
  else
  begin
    if IsNotHasData(qryDocEntryCREDIT_DETAIL) then
      qryDocEntryCREDIT_DETAIL.Clear;

    if IsNotHasData(qryDocEntryCREDIT_DETAIL_1) then
      qryDocEntryCREDIT_DETAIL_1.Clear;
  end;

  szLOAITKNO := Copy(qryDocEntryDEBIT_ACC.AsString, 1, 1);
  szLOAITKCO := Copy(qryDocEntryCREDIT_ACC.AsString, 1, 1);
  if (((szLOAITKNO = '0') and (szLOAITKCO <> '0')) or ((szLOAITKNO <> '0') and (szLOAITKCO = '0'))) then
  begin
   // ShowMessageUnicode(158);
    grdDetailDEBIT_ACC.Visible := True;
    //qryDocEntryDEBIT_ACC.FocusControl;
    ShowHintBoxInComponent(self,qryDocEntry,'DEBIT_ACC',158);
    Abort;
  end;

  if EditStatusDoc and optRemindBeforeSave then
    if ShowMessageUnicode(35, '', 4) = 7 then
    begin
      qryDocEntry.Cancel;
      Abort;
      Exit;
    end;

  qryDocEntryDOC_ID.Value := qryDocumentDOC_ID.Value;
  qryDocEntryPERIOD_ID.Value := qryDocumentPERIOD_ID.Value;

  if prmUseDocumentLog then
    qryDocEntryNGUOINHAP.Value := CurrentUser
  else
    qryDocEntryNGUOINHAP.Clear;

  PreviousDebitAcc := qryDocEntryDEBIT_ACC.Value;
  PreviousDebitObj := qryDocEntryDEBIT_OBJ.Value;
  PreviousDebitType := qryDocEntryDEBIT_TYPE.AsInteger;
  PreviousCreditAcc := qryDocEntryCREDIT_ACC.Value;
  PreviousCreditObj := qryDocEntryCREDIT_OBJ.Value;
  PreviousCreditType := qryDocEntryCREDIT_TYPE.AsInteger;
  PreviousCreditDetail := qryDocEntryCREDIT_DETAIL.Value;
  PreviousCreditDType := qryDocEntryCREDIT_DTYPE.Value;
  PreviousCreditDetail_1 := qryDocEntryCREDIT_DETAIL_1.Value;
  PreviousCreditDType_1 := qryDocEntryCREDIT_DTYPE_1.Value;


  if qryDocEntryCREDIT_TYPE.AsInteger = 2 then
  begin
    DONGIAXUATRA := qryDocEntryENTRY_PRICE.Value;
    MAHANGXUATRA := qryDocEntryCREDIT_OBJ.Value;
  end;
  if ((IsNotHasData(qryDocEntryPAYFOR_DOC)) and (not qryDocEntryPAYFOR_PERIOD.IsNull)) then
    qryDocEntryPAYFOR_PERIOD.Clear;

  qryDocEntryMASTER_TAG.Value := qryDocumentDOCUMENT_TAG.Value;
  qryDocEntryMASTER_DATE.Value := qryDocumentDOC_DATE.Value;
  qryDocEntryMASTER_WARE.Value := qryDocumentWAREHOUSE_ID.Value;
  qryDocEntryMASTER_TOWARE.Value := qryDocumentTO_WAREHOUSE.Value;

  BeforePostAppUpd := qryDocEntryAPP_UPDATE.AsInteger;
  //Dung random de tranh truong hop trung voi 1 nguoi nao khac cung mo len 1 luot
  //Ghi lai so ban dau neu post loi de tranh truong hop post loi, random 1 hoi bang dung so cu
  qryDocEntryAPP_UPDATE.AsInteger := RandomRange(-32765, 32765);
  if qryDocEntryAPP_UPDATE.AsInteger = BeforePostAppUpd then
    qryDocEntryAPP_UPDATE.AsInteger := BeforePostAppUpd + 1;   
end;

procedure TDocFullFrm.qryDocEntryNewRecord(DataSet: TDataSet);
begin

  if locWare.Visible then
    if IsNotHasData(qryDocumentWAREHOUSE_ID) then
    begin
      HintBox(150,self,dxDBPopupEdit1);
      Abort;
      exit;
  end;

  if prmUseDocumentLog then
    qryDocEntryNGUOINHAP.Value := CurrentUser;

  qryDocEntryAPP_UPDATE.AsInteger := 0;
  qryDocEntryPERIOD_ID.Value := qryDocumentPERIOD_ID.Value;
  qryDocEntryENTRY_ID.AsInteger := qryDocEntry.RecNo;
  qryDocEntryDOC_ID.Value := qryDocumentDOC_ID.Value;

  if not qryDocumentCURRENCY_ID.IsNull then
    qryDocEntryCURRENCY_ID.Value := qryDocumentCURRENCY_ID.AsString;

  if not qryDocumentTYGIA.IsNull then
    qryDocEntryTYGIANT.Value := qryDocumentTYGIA.asfloat
  else
    qryDocEntryTYGIANT.Value := 1;

  qryDocEntryBRANCH_ID.Value := vpBranch_id;

//  if not ImportingFromXLS then Exit;

  if PreviousDebitAcc <> '' then qryDocEntryDEBIT_ACC.Value := PreviousDebitAcc;
  if PreviousCreditAcc <> '' then qryDocEntryCREDIT_ACC.Value := PreviousCreditAcc;
  if PreviousDebitType <> 0 then qryDocEntryDEBIT_TYPE.AsInteger := PreviousDebitType;
  if PreviousCreditType <> 0 then qryDocEntryCREDIT_TYPE.AsInteger := PreviousCreditType;
  if PreviousDebitDType <> 0 then qryDocEntryDEBIT_DTYPE.AsInteger := PreviousDebitDType;
  if PreviousCreditDType <> 0 then qryDocEntryCREDIT_DTYPE.AsInteger := PreviousCreditDType;
  if PreviousDebitDType_1 <> 0 then qryDocEntryDEBIT_DTYPE_1.AsInteger := PreviousDebitDType_1;
  if PreviousCreditDType_1 <> 0 then qryDocEntryCREDIT_DTYPE_1.AsInteger := PreviousCreditDType_1;

  if (PreviousDebitType <> 0) and (PreviousDebitType <> 2) and (PreviousDebitObj <> '') then
    qryDocEntryDEBIT_OBJ.Value := PreviousDebitObj;
  if (PreviousCreditType <> 0) and (PreviousCreditType <> 2) and (PreviousCreditObj <> '') then
    qryDocEntryCREDIT_OBJ.Value := PreviousCreditObj;
  if (PreviousDebitDType <> 0) and (PreviousDebitDType <> 2) and (PreviousDebitDetail <> '') then
    qryDocEntryDEBIT_DETAIL.Value := PreviousDebitDetail;
  if (PreviousCreditDType <> 0) and (PreviousCreditDType <> 2) and (PreviousCreditDetail <> '') then
    qryDocEntryCREDIT_DETAIL.Value := PreviousCreditDetail;
  if (PreviousDebitDType_1 <> 0) and (PreviousDebitDType_1 <> 2) and (PreviousDebitDetail_1 <> '') then
    qryDocEntryDEBIT_DETAIL_1.Value := PreviousDebitDetail_1;
  if (PreviousCreditDType_1 <> 0) and (PreviousCreditDType_1 <> 2) and (PreviousCreditDetail_1 <> '') then
    qryDocEntryCREDIT_DETAIL_1.Value := PreviousCreditDetail_1;

end;

procedure TDocFullFrm.qryDocEntryPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  kq: integer;
begin
  Action := daAbort;
  ErrImportMsg := e.Message;
 // if ImportingFromXLS then Exit;

  qryDocEntryAPP_UPDATE.AsInteger := BeforePostAppUpd;

  kq := ProcessErr(E, '', 0);
  if kq = -803 then
  begin
    qryDocEntryENTRY_ID.AsInteger := qryDocEntryENTRY_ID.AsInteger + 1;
    qryDocEntry.Post;
    exit;
  end
  else
    if kq = -530 then
    begin
      if IsHasData(qryDocEntryDEBIT_OBJ) then
        if not MainDM.CheckObject(qryDocEntryDEBIT_OBJ.Value, qryDocEntryDEBIT_TYPE.AsInteger, False) then
        begin
          grdDetailDEBIT_OBJ.Visible := True;
          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryDEBIT_OBJ.FocusControl;
          exit;
        end;
      if IsHasData(qryDocEntryDEBIT_DETAIL) then
        if not MainDM.CheckObject(qryDocEntryDEBIT_DETAIL.Value, qryDocEntryDEBIT_DTYPE.AsInteger, False) then
        begin
          grdDetailDEBIT_DETAIL.Visible := True;
          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryDEBIT_DETAIL.FocusControl;
          exit;
        end;

      if IsHasData(qryDocEntryDEBIT_DETAIL_1) then
        if not MainDM.CheckObject(qryDocEntryDEBIT_DETAIL_1.Value, qryDocEntryDEBIT_DTYPE_1.AsInteger, False) then
        begin
          grdDetailDEBIT_DETAIL_1.Visible := True;
          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryDEBIT_DETAIL_1.FocusControl;
          exit;
        end;

      if IsHasData(qryDocEntryCREDIT_OBJ) then
        if not MainDM.CheckObject(qryDocEntryCREDIT_OBJ.Value, qryDocEntryCREDIT_TYPE.Value, False) then
        begin
          grdDetailCREDIT_OBJ.Visible := True;
          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryCREDIT_OBJ.FocusControl;
          exit;
        end;

      if IsHasData(qryDocEntryCREDIT_DETAIL) then
        if not MainDM.CheckObject(qryDocEntryCREDIT_DETAIL.Value, qryDocEntryCREDIT_DTYPE.Value, False) then
        begin
          grdDetailCREDIT_DETAIL.Visible := True;
          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryCREDIT_DETAIL.FocusControl;
          exit;
        end;

      if IsHasData(qryDocEntryCREDIT_DETAIL_1) then
        if not MainDM.CheckObject(qryDocEntryCREDIT_DETAIL_1.Value, qryDocEntryCREDIT_DTYPE_1.Value, False) then
        begin
          grdDetailCREDIT_DETAIL_1.Visible := True;
          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryCREDIT_DETAIL_1.FocusControl;
          exit;
        end;

      if IsHasData(qryDocEntryCURRENCY_ID) then
        if not MainDM.CheckCurrency(qryDocEntryCURRENCY_ID) then
        begin
          grdDetailCURRENCY_ID.Visible := True;
//          ShowMessageUnicode(46, E.Message, 0);
          qryDocEntryCURRENCY_ID.FocusControl;
          exit;
        end;

      ShowMessageUnicode(46, E.Message, 0);
      qryDocEntryACTICLE_ID.FocusControl;
    end
  else
    if kq = -836 then
    begin
     // tradtt sua: if (e.Message = 'Khong cho phep ton kho <0') then
     if (e.Message = 'NEGATIVE_INSTOCK') then
        ShowMessageUnicode(39, E.Message, 0)
          // ShowMessageUnicode(39)
      { QuynhND - Cau thong bao hien len so luong ton kho toi thieu }
      else
     // tradtt sua: if (e.Message = 'So luong ton kho < so luong ton toi thieu') then
     if (e.Message = 'MINIMUM_INSTOCK') then
        ShowMessageUnicode(221, e.Message, 0);
      //ShowMessageUnicode(221);

      qryDocEntryENTRY_AMOUNT.FocusControl;
    end
  else
    ShowMessage(e.Message);
end;

procedure TDocFullFrm.qryDocumentDOC_IDChange(Sender: TField);
begin
  if qryDocument.State = dsEdit then
    IsChangeDoc_ID := True;
end;

{Modified by hangdtt on August 18th
Tinh so luong goc theo don vi tinh mac dinh}
procedure TDocFullFrm.ComputeUnitAmount;
begin

  if ((qryDocEntryDEBIT_TYPE.Value = 2) or (qryDocEntryCREDIT_TYPE.Value = 2)) then
    if ((qryDocEntryUNIT_AMOUNT.AsFloat <> 0) and (qryDocEntryUNIT_ID.Value <> null)) then
    begin
      if ((qryDefaultUnitDEFAULT_UNIT_OUT.AsString = '') and (qryDocEntryDEBIT_TYPE.Value = 2)) then
        GetDefaultUnit(qryDocEntryDEBIT_OBJ.Value)
      else
        if ((qryDefaultUnitDEFAULT_UNIT_OUT.AsString = '') and (qryDocEntryCREDIT_TYPE.Value = 2)) then
          GetDefaultUnit(qryDocEntryCREDIT_OBJ.Value);

      if (qryDocEntryUNIT_ID.Value = qryDefaultUnitDEFAULT_UNIT_OUT.Value) then
        qryDocEntryENTRY_AMOUNT.Value := qryDocEntryUNIT_AMOUNT.Value
      else
      begin
        qryUnit_Scale.Close;
        qryUnit_Scale.ParamByName('FROM_UNIT_IN').Value := qryDocEntryUNIT_ID.Value;
        qryUnit_Scale.ParamByName('TO_UNIT_IN').Value := qryDefaultUnitDEFAULT_UNIT_OUT.Value;
        qryUnit_Scale.ExecSQL;
        qryUnit_Scale.Open;
        IsSystemPost := true;
        qryDocEntryENTRY_AMOUNT.Value := qryDocEntryUNIT_AMOUNT.Value * qryUnit_ScaleSCALE_OUT.Value;
        IsSystemPost := false;
      end;
    end;
end;

procedure TDocFullFrm.qryDocEntryENTRY_AMOUNTChange(Sender: TField);
var
  GTXuat,SLTon,Price: Double;
  Heso: Double;
begin
  if IsSystemPost then exit;
  if ImportingFromXLS then Exit;

  if (qryDocEntryENTRY_AMOUNT.AsFloat<0)then
  begin
    ShowMessageUnicode(162);
    Abort;
    exit;
  end;

//  if ((prmPPXUATKHO=0) and (prmSDGIABQ=1)) then


  if ((qryDocEntryENTRY_PRICE.AsFloat <> 0) and (qryDocEntryENTRY_AMOUNT.AsFloat <> 0)) then
    qryDocEntryENTRY_VALUE.AsFloat := SSP_RoundTo(qryDocEntryENTRY_AMOUNT.AsFloat * qryDocEntryENTRY_PRICE.AsFloat * qryDocEntryTYGIANT.AsFloat, -prmDECIMALTT_LEN);

  if qryDocEntryCREDIT_TYPE.Value = 2 then
  begin
    Price := MainDM.DonGiaXuat(qryDocumentMADOITUONG.Value, qryDocumentWORK_ID.Value
          , qryDocumentWAREHOUSE_ID.Value, qryDocEntryCREDIT_OBJ.Value
          , qryDocEntryCREDIT_ACC.Value, qryDocEntryDOC_ID.Value
          , qryDocEntryENTRY_ID.Value, qryDocEntryENTRY_AMOUNT.AsFloat, GTXuat,SLTon);
    qryDocEntryINVENTORY_AMOUNT.Value := SLTon - qryDocEntryENTRY_AMOUNT.Value;
  end;

  if (prmSDGIABQ = 1) then
    if LaDongHangXuat then //Tu dong tinh gia xuat kho
    begin

      //qryDocEntryENTRY_PRICE.AsFloat:=MainDM.DonGiaBinhQuan(qryDocumentMADOITUONG.Value,qryDocumentWORK_ID.Value,qryDocumentWAREHOUSE_ID.Value,qryDocEntryCREDIT_OBJ.Value,qryDocEntryCREDIT_ACC.Value, qryDocEntryENTRY_AMOUNT.AsFloat,GTXuat);

     { QuynhND - Goi ham nay goi tu ham DonGiaXuat de tinh gia thep phuong phap xuat kho theo tung
       mat hang}
      qryDocEntryENTRY_PRICE.AsFloat := Price;

      if GTXuat <> 0 then
        qryDocEntryENTRY_VALUE.AsFloat := GTXuat;
    end;

  if prmDirectDiscount then
    if grdDetailDISCOUNT_VALUE.Visible then
    begin
      Heso := qryDocEntryENTRY_AMOUNT.AsFloat;
      if Heso = 0 then Heso := 1;
      if qryDocEntryTYGIANT.AsFloat <> 0 then
        Heso := Heso * qryDocEntryTYGIANT.AsFloat;

      qryDocEntryDISCOUNT_VALUE.AsFloat := SSP_RoundTo(Heso * qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryORIGIN_PRICE.AsFloat / 100, -prmDECIMALDG_LEN);
    end;
    
end;

procedure TDocFullFrm.qryDocEntryENTRY_PRICEChange(Sender: TField);
var
  Soluong: Double;
  amount2 :double;
  label line_end;
begin
  if IsSystemPost then Exit;
  if ImportingFromXLS then Exit;
  if (qryDocEntryENTRY_PRICE.AsFloat<0)then
  begin
    ShowMessageUnicode(162);
    Abort;
    exit;
  end;

  Soluong := qryDocEntryENTRY_AMOUNT.AsFloat;
  amount2 := qryDocEntryENTRY_QUANTITY.AsFloat;
  if amount2 = 0 then amount2 :=1;
  if Soluong = 0 then Soluong := 1;
  if ((qryDocEntryENTRY_PRICE.AsFloat <> 0) and (isfixvalue <> true)) then
    qryDocEntryENTRY_VALUE.AsFloat := (Soluong *amount2 *qryDocEntryENTRY_PRICE.AsFloat * qryDocEntryTYGIANT.AsFloat);
  if (prmSDGIABAN = 1) and (LaDongHangBan <> '') then //Tu dong tinh gia ban hang
    with MainDM do
    begin
      if not qryGiaBan.Active then qryGiaBan.Open;

      if qryGiaBan.Locate('OBJECT_ID', qryDocEntryCREDIT_OBJ.Value, []) then
      begin
        if ((qryDocEntryDEBIT_TYPE.AsInteger = 1) and (qryDocEntryCREDIT_TYPE.AsInteger = 2)) then
        begin
          if qryPriceKH.Active then qryPriceKH.close;
          qryPriceKH.ParamByName('MAHH').Value := qryDocEntryCREDIT_OBJ.Value;
          qryPriceKH.ParamByName('MAKH').Value := qryDocEntryDEBIT_OBJ.Value;
          qryPriceKH.Open;
          if qryPriceKHDONGIA_OUT.AsFloat <= 0 then
            //exit;
            goto line_end;
        end;
      //------------------------
        if (qryDocEntryENTRY_PRICE.AsFloat > qryGiaBanSALE_MAX.AsFloat) and (qryGiaBanSALE_MAX.AsFloat <> 0) then
        begin
          //ShowMessageUnicode(180);
          ShowHintBoxInComponent(self,qryDocEntry,'ENTRY_PRICE',180);
          qryDocEntryENTRY_PRICE.AsFloat := qryGiaBanSALE_MAX.AsFloat;
        end;
        if (qryDocEntryENTRY_PRICE.AsFloat < qryGiaBanSALE_MIN.AsFloat) and (qryGiaBanSALE_MIN.AsFloat <> 0) then
        begin
          //ShowMessageUnicode(181);
          ShowHintBoxInComponent(self,qryDocEntry,'ENTRY_PRICE',181);
          qryDocEntryENTRY_PRICE.AsFloat := qryGiaBanSALE_MIN.AsFloat;
        end;
      end;
    end;

  if (qryDocEntryORIGIN_PRICE.Value <> qryDocEntryENTRY_PRICE.Value) and (qryDocEntryDISCOUNT_SCALE.AsFloat <= 0) then
    qryDocEntryORIGIN_PRICE.Value := qryDocEntryENTRY_PRICE.Value;

  if (prmSDGIAMUA = 1) and LaDongHangMua then //Tu dong tinh gia mua hang
    with MainDM do
    begin
      if not qryGiaMua.Active then qryGiaMua.Open;
      if qryGiaMua.Locate('OBJECT_ID', qryDocEntryDEBIT_OBJ.Value, []) then
      begin
        if (qryDocEntryENTRY_PRICE.AsFloat > qryGiaMuaBUY_MAX.AsFloat) and (qryGiaMuaBUY_MAX.AsFloat <> 0) then
        begin
          //ShowMessageUnicode(180);
          ShowHintBoxInComponent(self,qryDocEntry,'ENTRY_PRICE',180);
          qryDocEntryENTRY_PRICE.AsFloat := qryGiaMuaBUY_MAX.AsFloat;
        end;
        if (qryDocEntryENTRY_PRICE.AsFloat < qryGiaMuaBUY_MIN.AsFloat) and (qryGiaMuaBUY_MIN.AsFloat <> 0) then
        begin
          //ShowMessageUnicode(181);
          ShowHintBoxInComponent(self,qryDocEntry,'ENTRY_PRICE',181);
          qryDocEntryENTRY_PRICE.AsFloat := qryGiaMuaBUY_MIN.AsFloat;
        end;
      end;
    end;

    line_end:
    if not qryDocEntryVAT_PERCENT.IsNull then
      TinhGTPriceTax;
end;

procedure TDocFullFrm.grdDetailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  TTBENNO, LOAIDTTT: Smallint;
  SHTKTT, MADTTT: WideString;
begin
  if (Key = VK_F6) and (vpBranch_IsMin =1) then
  begin
    if ((grdDetail.FocusedField.FieldName = 'DEBIT_OBJ') and IsHasData(qryDocEntryDEBIT_OBJ)) then
    begin
      if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

      TTBENNO := 1;
      SHTKTT := qryDocEntryDEBIT_ACC.Value;
      MADTTT := qryDocEntryDEBIT_OBJ.Value;
      LOAIDTTT := qryDocEntryDEBIT_TYPE.AsInteger;
    end
    else
      if ((grdDetail.FocusedField.FieldName = 'CREDIT_OBJ') and IsHasData(qryDocEntryCREDIT_OBJ)) then
      begin
        if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

        TTBENNO := 0;
        SHTKTT := qryDocEntryCREDIT_ACC.Value;
        MADTTT := qryDocEntryCREDIT_OBJ.Value;
        LOAIDTTT := qryDocEntryCREDIT_TYPE.AsInteger;
      end
      else
        Exit;

    with TObjDocBalFrm.Create(Self) do
    try
      if qryDocEntryPAYFOR_DOC.IsNull then
        ISFIRST := 1
      else
        ISFIRST := 0;

          MADT := MADTTT;
          LOAIDT := LOAIDTTT;
          SHTK := SHTKTT;
          SOPHIEU := qryDocEntryDOC_ID.Value;
          KYHT := qryDocEntryPERIOD_ID.Value;
          STTDONGHT := qryDocEntryENTRY_ID.AsInteger;
          STTLONNHAT := qryDocEntry.RecordCount;
          DANGBENNO := TTBENNO;
          ShowModal;
        finally
          Free;
        end;
      qryDocEntry.Refresh;
      // tradtt: sua loi 1773 - luoi ben ngoai khong cap nhat so tien trong phieu
      maindm.qryDocList.Refresh;
      maindm.qryDocList.Locate('doc_id',qryDocEntryDOC_ID.Value,[]);
      //-----------------------------------------
      Exit;
    end;

  if ((Key = 68) and (ssCtrl in Shift)) then
//  if (prmPPXUATKHO > 1) and LaDongHangXuat then

    if LaDongHangXuat then
      bbtnOutDetailClick(Sender);

  ProcessKeyDownInGrid(grdDetail, Key, Shift, True);
end;

procedure TDocFullFrm.NavigatorDocClick(btn: Smallint);
begin
  if acPost.Enabled then
    acPost.Execute;

  qryBgDocList.GotoBookmark(MyBookMark);

  case btn of
    1: qryBgDocList.First;
    2: qryBgDocList.Prior;
    3: qryBgDocList.Next;
    4: qryBgDocList.Last;
  end;

  btnFirst.Enabled := not qryBgDocList.Bof;
  btnBack.Enabled := btnFirst.Enabled;
  btnLast.Enabled := not qryBgDocList.Eof;
  btnNext.Enabled := btnLast.Enabled;

  if ((qryDocumentDOC_ID.Value = qryBgDocList.FieldByName(DocIDFieldName).Value)
    and (qryDocumentPERIOD_ID.Value = qryBgDocList.FieldByName(PeriodFieldName).Value)
    and (qryDocumentBRANCH_ID.Value = qryBgDocList.FieldByName(BranchIDFieldName).Value)) then
      Exit;

  qryDocument.Close;
  qryDocEntry.Close;
  qryDocument.ParamByName('PERIOD_ID').AsInteger := qryBgDocList.FieldByName(PeriodFieldName).Value;
  qryDocument.ParamByName('DOC_ID').Value := qryBgDocList.FieldByName(DocIDFieldName).Value;
  qryDocument.ParamByName('BRANCH_ID').Value := qryBgDocList.FieldByName(BranchIDFieldName).Value;
  qryDocument.Open;

  if MainDM.qryDocTypeDOCTYPE_ID.AsInteger <> qryDocumentDOCTYPE_ID.AsInteger then
  begin
    MainDM.qryDocType.Locate('DOCTYPE_ID', qryDocumentDOCTYPE_ID.AsInteger, []);
    ElFormCaption1.Texts[0].Caption := MainDM.qryDocTypeDOCTYPE_NAME.Value;
  end;
  qryDocEntry.Open;
  EditStatusDoc := True;
  VATTaxTotal := 0;

  qryInTachThue.Close;
  qryInTachThue.Open;
  qryBenNo.Close;
  qryBenNo.Open;
  qryBenco.Close;
  qryBenco.Open;
  qryEntryGrp.Close;
  qryEntryGrp.Open;
  qryEntryGrpObj.Close;
  qryEntryGrpObj.Open;
  
  MyBookMark := qryBgDocList.GetBookmark;
end;

function TDocFullFrm.KiemtraKhohang(): Boolean;
begin
  Result := True;
  if locWare.Visible = False then exit;
  if not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  Result := False;

  if IsNotHasData(qryDocumentWAREHOUSE_ID) then
  begin
    begin
      //ShowMessageUnicode(150);
      ShowHintBoxInComponent(self,qryDocument,'WAREHOUSE_ID',150);
      //qryDocumentWAREHOUSE_ID.FocusControl;
      exit;
    end
  end;

  MainDM.qryPWare.Open;
  MainDM.qryPWare.Filtered := False;
  if qryDocumentWAREHOUSE_ID.Value <> MainDM.qryPWareWAREHOUSE_ID.Value then
    if not MainDM.qryPWARE.Locate('WAREHOUSE_ID', qryDocumentWAREHOUSE_ID.Value, []) then
    begin
      //ShowMessageUnicode(172);

      //qryDocumentWAREHOUSE_ID.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'WAREHOUSE_ID',172);
      exit;
    end;
  MainDM.qryPWare.Filtered := True;
  Result := True;
end;

function TDocFullFrm.KiemtraKhoDen(): Boolean;
begin
  Result := True;
  if locToWare.Visible = False then exit;
  if not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  Result := False;

  if IsNotHasData(qryDocumentTO_WAREHOUSE) then
  begin
    begin
      //ShowMessageUnicode(150);

      //qryDocumentTO_WAREHOUSE.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'WAREHOUSE_ID',150);
      Exit;
    end
  end;

  MainDM.qryPWare.Open;
  MainDM.qryPWare.Filtered := False;
  if qryDocumentTO_WAREHOUSE.Value <> MainDM.qryPWareWAREHOUSE_ID.Value then
    if not MainDM.qryPWARE.Locate('WAREHOUSE_ID', qryDocumentTO_WAREHOUSE.Value, []) then
    begin
      //ShowMessageUnicode(172);
      //qryDocumentTO_WAREHOUSE.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'WAREHOUSE_ID',172);
      exit;
    end;
  MainDM.qryPWare.Filtered := True;
  Result := True;
end;

function TDocFullFrm.KiemtraDoituong(): Boolean;
begin
  Result := True;
  if not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  if BBNhapDTChinh then
  begin
    if IsNotHasData(qryDocumentMADOITUONG) then
    begin
      //ShowMessageUnicode(65);
      //qryDocumentMADOITUONG.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'WAREHOUSE_ID',65);
      Result := False;
      Exit;
    end;
  end
  else
  begin
    if qryDocumentMADOITUONG.IsNull then Exit;
    if IsNotHasData(qryDocumentMADOITUONG) then
    begin
      qryDocumentMADOITUONG.Clear;
      qryDocumentLOAIDOITUONG.Clear;
      Exit;
    end;
  end;

  Result := False;
  with MainDM do
  begin
    if not CheckObject(qryDocumentMADOITUONG.Value, LoaiDTMaster) then
    begin
      //ShowMessageUnicode(46);

      //qryDocumentMADOITUONG.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'MADOITUONG',46);
//      SendKeyOpenPopup;
      Exit;
    end;
  end;
  Result := True;
end;

procedure TDocFullFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  KiemtraKhohang();
end;

procedure TDocFullFrm.acSetPriceDefExecute(Sender: TObject);
begin
  with MainDM do
  begin
    // Thinh
    if optSDGIAMUAGANNHAT and (qryDocEntryDEBIT_TYPE.Value = 2) and (not qryDocEntryDEBIT_OBJ.IsNull)
        and (LeftStr(qryDocEntryDEBIT_ACC.Value,1) = '1') then
    begin
          maindm.qryCommon.SQL.Clear;
          maindm.qryCommon.Params.Clear;
          maindm.qryCommon.SQL.Text := 'select first 1 entry_price from full_entrys where debit_acc starting with ''1'' and debit_type = 2 and debit_obj = '''
                  + qryDocEntryDEBIT_OBJ.Value + ''' and master_tag = 0 order by master_date desc';
          maindm.qryCommon.Open;
          if maindm.qryCommon.FieldByName('entry_price').IsNull then
            qryDocEntryENTRY_PRICE.Value := 0
          else
            qryDocEntryENTRY_PRICE.Value := maindm.qryCommon.FieldByName('entry_price').Value;
    end;
    // TalentNet - Tu dong lay Object_value -> Price - Khong xai nua
   { if qryDocEntryCREDIT_TYPE.Value = 4 then
    begin
        qryObjectType.Open;
        qryObject.Open;
        qryObjectType.Locate('OTYPE_ID',4,[]);
        qryObject.Locate('OBJECT_ID',qryDocEntryCREDIT_OBJ.Value,[]);
        qryDocEntryENTRY_PRICE.Value := qryObjectOBJECT_VALUE.Value;
    end;}

    if (prmSDGIABAN = 1) and (LaDongHangBan <> '') then //Tu dong tinh gia ban hang
    begin
      if not qryGiaBan.Active then qryGiaBan.Open;

      if qryPriceKH.Active then qryPriceKH.Close;
      qryPriceKH.ParamByName('MAHH').Value := qryDocEntryCREDIT_OBJ.Value;
      qryPriceKH.ParamByName('MAKH').Value := qryDocEntryDEBIT_OBJ.Value;
      qryPriceKH.Open;
      if qryPriceKHDONGIA_OUT.AsFloat <= 0 then
      begin
        qryDocEntryENTRY_PRICE.Clear;
        Exit;
      end;

      if ((qryDocEntryDEBIT_TYPE.AsInteger = 1) and (qryDocEntryCREDIT_TYPE.AsInteger = 2)) then
      begin
        qryDocEntryENTRY_PRICE.AsFloat := qryPriceKHDONGIA_OUT.AsFloat;
        qryPriceKH.Close;
        Exit;
      end;

      {if qryGiaBan.Locate('OBJECT_ID',qryDocEntryCREDIT_OBJ.Value,[]) then
        qryDocEntryENTRY_PRICE.AsFloat:=qryGiaBanSALEPRICE.AsFloat
      else
        qryDocEntryENTRY_PRICE.Clear;}
    end;
    if (prmSDGIAMUA = 1) and LaDongHangMua then //Tu dong lay gia mua
    begin
      if not qryGiaMua.Active then qryGiaMua.Open;

      if qryGiaMua.Locate('OBJECT_ID', qryDocEntryDEBIT_OBJ.Value, []) then
        qryDocEntryENTRY_PRICE.AsFloat := qryGiaMuaBUYPRICE.AsFloat
      //else
        //qryDocEntryENTRY_PRICE.Clear;
    end;

    if (prmSDGIAKH = 1) and LaDongHangTP then //Tu dong tinh gia ke hoach nhap thanh pham
    begin
      if not qryGiaKH.Active then qryGiaKH.Open;

      if qryGiaKH.Locate('OBJECT_ID', qryDocEntryDEBIT_OBJ.Value, []) then
        qryDocEntryENTRY_PRICE.AsFloat := qryGiaKHPLANPRICE.AsFloat
      else
        qryDocEntryENTRY_PRICE.Clear;
    end;
  end;

  if MainDM.qryDocTypeDOCTYPE_ID.AsInteger = 560 then
    if ((qryDocEntryDEBIT_TYPE.AsInteger = 2) and IsHasData(qryDocEntryDEBIT_OBJ)) then
    begin
      qryHesoDH.Open;
      if qryHesoDH.Locate('TUMAHANG,DENMAHANG', VarArrayOf([MAHANGXUATRA, qryDocEntryDEBIT_OBJ.Value]), []) then
      begin
        qryDocEntryVAT_PERCENT.Value := qryHesoDHHESOQUIDOI.AsFloat;
      //qryDocEntryENTRY_PRICE.Value:= SSP_RoundTo(DONGIAXUATRA*qryHesoDHHESOQUIDOI.AsFloat,-prmDECIMALDG_LEN);
      end;
    end;
end;

procedure TDocFullFrm.acPrintDirectExecute(Sender: TObject);
begin
  InPhieu(True);
end;

procedure TDocFullFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_F1 then
//    CallHelp();
    if HtmlHelp(Self.handle, 'HDSDKT.chm::/Nhapchungtu.htm', HH_DISPLAY_TOPIC, 0) = 0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);

  if not (ssCtrl in Shift) then
    Exit;

  with MainDM do
    case Key of
      Ord('N'), Ord('n'):
        begin
          btnInsClick(Sender);
          Exit;
        end;

      VK_Home:
        NavigatorDocClick(1);
      VK_PRIOR:
        NavigatorDocClick(2);
      VK_NEXT:
        NavigatorDocClick(3);
      VK_End:
        NavigatorDocClick(4);
    end;
end;

procedure TDocFullFrm.dxBarButton1Click(Sender: TObject);
begin
  qryDocEntry.Append;
end;

procedure TDocFullFrm.grdDetailMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

{  if (prmPPXUATKHO > 1) and LaDongHangXuat then
    bbtnOutDetail.Visible := ivAlways
  else
    bbtnOutDetail.Visible := ivNever;
}
  if LaDongHangXuat then
    bbtnOutDetail.Visible := ivAlways
  else
    bbtnOutDetail.Visible := ivNever;

  bbtnOutAll.Visible := bbtnOutDetail.Visible;
  pmEntry.PopupFromCursorPos;
end;

procedure TDocFullFrm.btnInvoiceClick(Sender: TObject);
var
  flag: boolean;
  vat_id1, vat_id2: smallint;
  dem: integer;
  HDVAT_Tienthue2: double;
begin
  flag := FALSE;
  VATTaxTotal := 0;
  qryCurDocEntry := qryDocEntry;

  if qryDocEntry.State in [dsInsert, dsEdit] then
    qryDocEntry.Post;

  qryDocEntry.First;
  HDVAT_Soluong := 0;
  HDVAT_TriGia := 0;
  HDVAT_Mathang := '';
  HDVAT_Tienthue := 0;
  HDVAT_LOAIHD := 1;
  vat_id1 := 0;
  vat_id2 := 0;
  dem := 0;
  //tradtt loi 1496
  maindm.qryCommon.sql.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text :=
    'Select sum(tongthue)TONGTHUE From SP_TINHGIATRITHUE_HD(:KYHT, :SOPHIEU, :BRANCH_ID_IN);';
  maindm.qryCommon.ParamByName('KYHT').Value := qryDocumentPERIOD_ID.Value;
  maindm.qryCommon.ParamByName('SOPHIEU').Value := qryDocumentDOC_ID.Value;
  maindm.qryCommon.ParamByName('BRANCH_ID_IN').Value := qryDocumentBRANCH_ID.Value;
  maindm.qryCommon.Open;
  HDVAT_Tienthue2 := maindm.qryCommon.FieldByName('TONGTHUE').Value;
  while not qryDocEntry.Eof do
  begin
    if not qryDocEntryCURRENCY_ID.IsNull then
    begin
      HDVAT_CURRENCY_ID := qryDocEntryCURRENCY_ID.Value;
      HDVAT_Tygia := qryDocEntryTYGIANT.AsFloat;
    end;

    if Copy(qryDocEntryCREDIT_ACC.Value, 1, 2) = '51' then
      HDVAT_LOAIHD := -1;
    if Copy(qryDocEntryCREDIT_ACC.Value, 1, 1) = '7' then
      HDVAT_LOAIHD := -1;

      if Copy(qryDocEntryCREDIT_ACC.Value, 1, 4) = '3331' then
        HDVAT_LOAIHD := -1;

      // tradtt: sua loi 1130 - giam tai san la HD ban ra
      if Copy(qryDocEntryCREDIT_ACC.Value, 1, 2) = '21' then
        HDVAT_LOAIHD := -1;

      // tradtt sua loi 5.0 ID_1698
      if HDVAT_ID = 0 then
         begin
          if qryDocEntryVAT_ID.AsFloat <> 0  then
            HDVAT_ID := qryDocEntryVAT_ID.Value;
         end
         else
          begin
          if qryDocEntryVAT_ID.AsFloat <> 0  then
            HDVAT_ID := (HDVAT_ID + qryDocEntryVAT_ID.value)div 2;
          end;
         //=============
      if ((Copy(qryDocEntryDEBIT_ACC.Value, 1, 3) = '133') or
        (Copy(qryDocEntryCREDIT_ACC.Value, 1, 4) = '3331')) then
        begin
          HDVAT_Tienthue := HDVAT_Tienthue + qryDocEntryENTRY_VALUE.AsFloat;
          // tradtt sua loi 5.0 ID_1698
          if HDVAT_ID = 0 then
            begin
              if qryDocEntryVAT_ID.AsFloat <> 0 then
                HDVAT_ID := qryDocEntryVAT_ID.Value;
            end
          else
            begin
              if qryDocEntryVAT_ID.AsFloat <> 0 then
                HDVAT_ID := (HDVAT_ID + qryDocEntryVAT_ID.value) div 2;
            end;
          //=============
        end
		    //tradtt: loi 1496 - Ko tinh dong hach toan thua vao tien hang
      else
        if ((Copy(qryDocEntryDEBIT_ACC.Value, 1, 4) = '3331') or
        (Copy(qryDocEntryCREDIT_ACC.Value, 1, 3) = '133')) then
        begin
          HDVAT_Tienthue := HDVAT_Tienthue - qryDocEntryENTRY_VALUE.AsFloat;
          HDVAT_ID := qryDocEntryVAT_ID.Value;
        end
      else
      //Hoaipt them 20090714: Thue tinh sai khi co hang thua thieu
       if (Copy(qryDocEntryDEBIT_ACC.Value, 1, 3) = '521') then
         begin
            HDVAT_TriGia := HDVAT_TriGia - qryDocEntryENTRY_VALUE.AsFloat;
         end
      else
       if (Copy(qryDocEntryDEBIT_ACC.Value, 1, 3) <> '138') and (Copy(qryDocEntryCREDIT_ACC.Value, 1, 3) <> '338') then  //het Hoaipt them
          HDVAT_TriGia := HDVAT_TriGia + qryDocEntryENTRY_VALUE.AsFloat;

    HDVAT_Soluong := HDVAT_Soluong + qryDocEntryENTRY_AMOUNT.AsFloat;
    if qryDocEntryDEBIT_TYPE.AsInteger = 2 then
    begin
      if HDVAT_Mathang = '' then
        HDVAT_Mathang := qryDocEntryTENDTNO.Value
      else
        //HDVAT_Mathang := HDVAT_Mathang + ', ' + qryDocEntryTENDTNO.Value;
        //Hang sua
        begin
        if (Length(HDVAT_Mathang) + Length(qryDocEntryTENDTNO.Value) < 240) then
          HDVAT_Mathang := HDVAT_Mathang//HDVAT_Mathang := HDVAT_Mathang + ', ' + qryDocEntryTENDTNO.Value
        else
          if not flag then
          begin
            HDVAT_Mathang := HDVAT_Mathang + ',...';
            flag := true;
          end
        end
    end
    else
      //if qryDocEntryCREDIT_TYPE.AsInteger = 2 then
      if (Copy(qryDocEntryCREDIT_ACC.Value, 1, 1) = '5') or
         (qryDocEntryCREDIT_TYPE.AsInteger = 2) then
      begin
        if HDVAT_Mathang = '' then
          HDVAT_Mathang := qryDocEntryTENDTCO.Value
        else
          //HAng sua
          //HDVAT_Mathang := HDVAT_Mathang + ', ' + qryDocEntryTENDTCO.Value;
          begin
          if (Length(HDVAT_Mathang) + Length(qryDocEntryTENDTCO.Value) < 240) then
            HDVAT_Mathang := HDVAT_Mathang + ', ' + qryDocEntryTENDTCO.Value
          else
            if not flag then
            begin
              HDVAT_Mathang := HDVAT_Mathang + ',...';
              flag := true;
            end
        end

      end;
    qryDocEntry.Next;
  end;
  qryDocEntry.First;
  // tradtt sua theo Dai Viet
  //Hoaipt che ngay 20090416
  //if HDVAT_TriGia <> 0 then
  //  HDVAT_PTGTGT := Round(HDVAT_Tienthue * 100 / HDVAT_TriGia)
  //else
  //  HDVAT_TriGia := 0;
  //Hoai them 20090327: Khi chua co dong hach toan thue thi lay tien thue HD theo tien hang
  HDVAT_PTGTGT := vat_id2;
  HDVAT_ID := vat_id2;
  if HDVAT_PTGTGT = 0 then
    HDVAT_PTGTGT := 10;
  if HDVAT_Tienthue = 0 then
    HDVAT_Tienthue := Round(HDVAT_TriGia * HDVAT_PTGTGT / 100);
  if HDVAT_Tienthue2 <> 0 then
    HDVAT_Tienthue := HDVAT_Tienthue2;
  HDVAT_Sophieu := qryDocumentDOC_ID.Value;
  HDVAT_Person := qryDocumentDOC_PERSON.Value;
  HDVAT_KyHT := qryDocumentPERIOD_ID.Value;
  vpDocBranch_id := qryDocumentBRANCH_ID.Value;

  if qryDocumentMADOITUONG.IsNull then
    HDVAT_MASODT := ''
  else
    HDVAT_MASODT := qryDocumentMADOITUONG.Value;

  HDVAT_Ngay := qryDocumentDOC_DATE.AsDateTime;

  with MainDM.qryInvoiceList do
  begin
    ParamByName('DOC_ID').Value := HDVAT_Sophieu;
    ParamByName('PERIOD_ID').Value := HDVAT_KyHT;
    ParamByName('BRANCH_ID').Value := vpDocBranch_id;
    Open;
  end;

  IsChangeInvoiceType := 0;


  with MainDM do
    if (vpBranch_IsMin = 1) and (qryInvoiceList.RecordCount = 0) then
    begin
      with TInvoiceFrm.Create(Self) do
      try
        HDVAT_SoTTCT := 1;
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

  if optAutoUpdVATValue and (VATTaxTotal <> 0) then
  begin
    qryDocEntry.First;
    while not qryDocEntry.Eof do
    begin
      if IsChangeInvoiceType > 0 then
        if Copy(qryDocEntryDEBIT_ACC.Value, 1, 3) = '133' then
        begin
          IsSystemPost := True;
          qryDocEntry.Edit;
          qryDocEntryENTRY_VALUE.AsFloat := VATTaxTotal;
          qryDocEntry.Post;

          IsSystemPost := False;
          Break;
        end;
      if (((IsChangeInvoiceType < 0) or (IsChangeInvoiceType = 10)) and (vpBranch_IsMin = 1)) then
        if Copy(qryDocEntryCREDIT_ACC.Value, 1, 4) = '3331' then
        begin
          IsSystemPost := True;
          qryDocEntry.Edit;
          qryDocEntryENTRY_VALUE.AsFloat := VATTaxTotal;
          qryDocEntry.Post;

          IsSystemPost := False;
          Break;
        end;

      qryDocEntry.Next;
    end;
  end;
  if AutoUpdateInvDocNote then
  begin
    qryDocument.edit;
    qryDocumentDOC_NOTES.Value := ItemsContent;
  end
end;

procedure TDocFullFrm.qryDocEntryTYGIANTChange(Sender: TField);
var
  Tygia, Soluong: Double;
begin
  if ImportingFromXLS then Exit;

  Tygia := qryDocEntryTYGIANT.AsFloat;
  Soluong := qryDocEntryENTRY_AMOUNT.AsFloat;
  if Tygia = 0 then Tygia := 1;
  if Soluong = 0 then Soluong := 1;
  if (qryDocEntryENTRY_PRICE.AsFloat <> 0) then
    qryDocEntryENTRY_VALUE.AsFloat := SSP_RoundTo(Soluong * qryDocEntryENTRY_PRICE.AsFloat * Tygia, -prmDECIMALTT_LEN);

  if prmDirectDiscount then
    if grdDetailDISCOUNT_VALUE.Visible then
      qryDocEntryDISCOUNT_VALUE.AsFloat := SSP_RoundTo(Tygia * Soluong * qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryORIGIN_PRICE.AsFloat / 100, -prmDECIMALDG_LEN);
end;

procedure TDocFullFrm.btnPSPXKClick(Sender: TObject);
var
  LoaiCTHT: Smallint;
begin
  MyBookMark := qryBgDocList.GetBookmark;

  LoaiCTHT := MainDM.qryDocTypeDOCTYPE_ID.AsInteger;

  with MainDM do
  begin
    qryGetDoc.Close;

    qryGetDoc.ParamByName('PERIOD_ID').Value := qryDocumentPERIOD_ID.AsInteger;
    qryGetDoc.ParamByName('DOC_ID').Value := 'sys' + qryDocumentDOC_ID.Value;
    qryGetDoc.ParamByName('BRANCH_ID').Value := qryDocumentBRANCH_ID.Value;
    qryGetDoc.Open;
    if qryGetDoc.RecordCount = 1 then
    begin
      Screen.Cursor := crDefault;
      qryGetDoc.Close;
      if ShowMessageUnicode(174, '', 4) = 7 then
        exit;
    end;
  end;

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure sp_pspxk(:SOPHIEU, :KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.AsInteger;
    ParamByName('SOPHIEU').Value := qryDocumentDOC_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;
  MainDM.Suachungtu('sys' + qryDocumentDOC_ID.Value, qryDocumentPERIOD_ID.AsInteger,qryDocumentBRANCH_ID.value);

  MainDM.qryDocType.Locate('DOCTYPE_ID', LoaiCTHT, []);
end;

procedure TDocFullFrm.btnPSPXKMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  LoaiCTHT: Smallint;
begin
  LoaiCTHT := MainDM.qryDocTypeDOCTYPE_ID.AsInteger;

  if Button = mbRight then
  begin
    MainDM.Suachungtu('sys' + qryDocumentDOC_ID.Value, qryDocumentPERIOD_ID.AsInteger,qryDocumentBRANCH_ID.Value);

    MainDM.qryDocType.Locate('DOCTYPE_ID', LoaiCTHT, []);
  end;
end;

procedure TDocFullFrm.grdDetailDEBIT_OBJInitPopup(Sender: TObject);
begin
  if qryDocumentTO_WAREHOUSE.IsNull then
    MainDM.OpenBalanceObj(qryDocEntryDEBIT_ACC.Value, qryDocumentWAREHOUSE_ID.Value, qryDocumentDOC_DATE.Value)
  else
    MainDM.OpenBalanceObj(qryDocEntryDEBIT_ACC.Value, qryDocumentTO_WAREHOUSE.Value, qryDocumentDOC_DATE.Value);

  if qryDocEntryDEBIT_OBJ.IsNull then
  begin
    MainDM.CurObjTypeID := qryDocEntryDEBIT_TYPE.AsInteger;
    {MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;}
    exit;
  end;
  with MainDM do
  begin
    CurObjTypeID := qryDocEntryDEBIT_TYPE.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;

      PreObjTypeID := MainDM.CurObjTypeID;
    end;
    //qryPComObj.Close;
    //qryPComObj.Open;
    PopupFrm.grdCommonObj.DataSource.DataSet.Open;

    {if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_OBJ.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocEntryDEBIT_OBJ.Value, []);}
     if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_OBJ.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocEntryDEBIT_OBJ.Value, []);
    //PopupFrm.grdCommonObj.FullExpand;

   end;
end;

procedure TDocFullFrm.grdDetailDEBIT_ACCCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDocFullFrm.GetDefaultUnit(mahh: WideString);
begin
  qryDefaultUnit.Close;
  qryDefaultUnit.ParamByName('MaHH').Value := mahh;
  qryDefaultUnit.ExecSQL;
  qryDefaultUnit.Open;
end;

procedure TDocFullFrm.grdDetailDEBIT_OBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  TTBENNO, LOAIDTTT: Smallint;
  SHTKTT, MADTTT: WideString;
begin
  if Accept then
    Text := vpItemID
  else exit;

  //modified by hangdtt on August 17th
  //Lay don vi tinh mac dinh neu ma no la hang hoa (DEBIT_TYPE=2)
  if (qryDocEntryDEBIT_TYPE.Value = 2) then
  begin
    GetDefaultUnit(Text);
    qryDocEntry.Edit;
    qryDocEntryUNIT_ID.Value := qryDefaultUnitDEFAULT_UNIT_OUT.Value;
  end;

{  if  qryDocEntryDEBIT_TYPE.AsInteger <> 1 then exit;
  if qryDocEntry.State in [dsEdit,dsInsert] then qryDocEntry.Post;
  qryDocEntryDEBIT_OBJ.Value := vpItemID;
  TTBENNO:=1;
  SHTKTT:=qryDocEntryDEBIT_ACC.Value;
  MADTTT:= qryDocEntryDEBIT_OBJ.Value;
  LOAIDTTT:= qryDocEntryDEBIT_TYPE.AsInteger;
    with TObjDocBalFrm.Create(Self) do
    try
      if qryDocEntryPAYFOR_DOC.IsNull then
        ISFIRST:=1
      else
        ISFIRST:=0;

      MADT:=MADTTT;
      LOAIDT:=LOAIDTTT;
      SHTK:=SHTKTT;
      SOPHIEU:=qryDocEntryDOC_ID.Value;
      KYHT:=qryDocEntryPERIOD_ID.Value;
      STTDONGHT:=qryDocEntryENTRY_ID.AsInteger;
      STTLONNHAT:=qryDocEntry.RecordCount;
      DANGBENNO:=TTBENNO;
      ShowModal;
    finally
      Free;
    end;
}
end;

procedure TDocFullFrm.grdDetailCREDIT_OBJCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  TTBENNO, LOAIDTTT: Smallint;
  SHTKTT, MADTTT: WideString;
begin
  if Accept then
    Text := vpItemID
  else exit;

  
{  if  qryDocEntryCREDIT_TYPE.AsInteger <> 1 then exit;

  qryDocEntryCREDIT_OBJ.Value := vpItemID;
        if qryDocEntry.State in [dsEdit,dsInsert] then qryDocEntry.Post;
  TTBENNO:=1;
  SHTKTT:=qryDocEntryCREDIT_ACC.Value;
  MADTTT:= qryDocEntryCREDIT_OBJ.Value;
  LOAIDTTT:= qryDocEntryCREDIT_TYPE.AsInteger;
    with TObjDocBalFrm.Create(Self) do
    try
      if qryDocEntryPAYFOR_DOC.IsNull then
        ISFIRST:=1
      else
        ISFIRST:=0;

      MADT:=MADTTT;
      LOAIDT:=LOAIDTTT;
      SHTK:=SHTKTT;
      SOPHIEU:=qryDocEntryDOC_ID.Value;
      KYHT:=qryDocEntryPERIOD_ID.Value;
      STTDONGHT:=qryDocEntryENTRY_ID.AsInteger;
      STTLONNHAT:=qryDocEntry.RecordCount;
      DANGBENNO:=TTBENNO;
      ShowModal;
    finally
      Free;
    end;
}
end;

procedure TDocFullFrm.qryDocEntryAfterDelete(DataSet: TDataSet);
var
  OldInd: Smallint;
begin
  IsPosted := True;
  IsSystemPost := True;
  OldInd := qryDocEntryENTRY_ID.AsInteger;
  if qryDocEntry.RecordCount > 0 then
    while ((not qryDocEntry.Eof) or (qryDocEntryENTRY_ID.AsInteger <> qryDocEntry.RecNo)) do
    begin
      qryDocEntry.Edit;
      qryDocEntryENTRY_ID.AsInteger := qryDocEntry.RecNo;
      qryDocEntry.Post;
      qryDocEntry.Next;
    end;
  IsSystemPost := False;
  qryDocEntry.Locate('ENTRY_ID', OldInd, []);

  if prmUseDocumentLog then
    GhiNhatKyXoaPhieu(DeletedDocID, DeletedPeriod, DeletedComment);
end;

procedure TDocFullFrm.grdDetailDEBIT_ACCInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered := True;

  with MainDM do
    if not qryDocEntryDEBIT_ACC.IsNull then
    begin
      qryPAcc.Open;
      qryPAcc.Locate('ACCOUNT_ID', qryDocEntryDEBIT_ACC.Value, []);
    end;
end;

procedure TDocFullFrm.grdDetailCREDIT_ACCInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenCORecord;
  MainDM.qryPAcc.Filtered := True;

  with MainDM do
    if not qryDocEntryCREDIT_ACC.IsNull then
    begin
      qryPAcc.Open;
      qryPAcc.Locate('ACCOUNT_ID', qryDocEntryCREDIT_ACC.Value, []);
    end;
end;

procedure TDocFullFrm.qryDocEntryDEBIT_ACCChange(Sender: TField);
begin
  with MainDM do
  begin
    qryPAcc.OnFilterRecord := qryPAccFilterBenNORecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    if qryDocEntryDEBIT_ACC.Value <> qryPAccACCOUNT_ID.Value then
      if not qryPAcc.Locate('ACCOUNT_ID', qryDocEntryDEBIT_ACC.Value, []) then
      begin
        if not ImportingFromXLS then
          ShowMessageUnicode(42);

        qryDocEntryDEBIT_ACC.FocusControl;
        Abort;
      end;
    if not ImportingFromXLS then
      if qryPAccISMIN.AsInteger = 0 then
      begin
        if XulyTaikhoan(qryPAccACCOUNT_ID.Value) = '' then
          Exit
        else
          qryDocEntryDEBIT_ACC.Value := SHTIEUKHOAN;
      end;

    if (qryPAccDTYPE_ID.IsNull) then
    begin
      qryDocEntryDEBIT_DTYPE.Clear;
      if not qryDocEntryDEBIT_DETAIL.IsNull then
        qryDocEntryDEBIT_DETAIL.Clear;
    end
    else
    begin
      qryDocEntryDEBIT_DTYPE.AsInteger := qryPAccDTYPE_ID.AsInteger;
      grdDetailDEBIT_DETAIL.Visible := True;
    end;

    if (qryPAccDTYPE_ID_1.IsNull) then
    begin
      qryDocEntryDEBIT_DTYPE_1.Clear;
      if not qryDocEntryDEBIT_DETAIL_1.IsNull then
        qryDocEntryDEBIT_DETAIL_1.Clear;
    end
    else
    begin
      qryDocEntryDEBIT_DTYPE_1.AsInteger := qryPAccDTYPE_ID_1.AsInteger;
      grdDetailDEBIT_DETAIL_1.Visible := True;
    end;

    if (qryPAccOTYPE_ID.AsInteger = 0) then
    begin
      qryDocEntryDEBIT_TYPE.Clear;
      if not qryDocEntryDEBIT_OBJ.IsNull then
      begin
        qryDocEntryDEBIT_OBJ.Clear;
        qryDocEntryTENDTNO.Clear;
        qryDocEntrySUBNO_1.Clear;
        qryDocEntrySUBNO_2.Clear;
      end;
    end
    else
    begin
      qryDocEntryDEBIT_TYPE.AsInteger := qryPAccOTYPE_ID.AsInteger;
      if ((qryPAccOTYPE_ID.AsInteger = qryDocumentLOAIDOITUONG.AsInteger) and (qryDocEntryDEBIT_OBJ.IsNull)) then
        qryDocEntryDEBIT_OBJ.Value := qryDocumentMADOITUONG.Value;
    end;


  end;

  if not ImportingFromXLS then

    if optAutoUpdVATValue and (VATTaxTotal <> 0) then
      if qryDocEntry.State = dsInsert then
        if Copy(qryDocEntryDEBIT_ACC.Value, 1, 3) = '133' then
          qryDocEntryENTRY_VALUE.Value := VATTaxTotal;
end;

procedure TDocFullFrm.qryDocEntryCREDIT_ACCChange(Sender: TField);
begin
  with MainDM do
  begin
    qryPAcc.OnFilterRecord := qryPAccFilterBenCORecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
    if qryDocEntryCREDIT_ACC.Value <> qryPAccACCOUNT_ID.Value then
      if not qryPAcc.Locate('ACCOUNT_ID', qryDocEntryCREDIT_ACC.Value, []) then
      begin
        if not ImportingFromXLS then
          ShowMessageUnicode(42);

        qryDocEntryCREDIT_ACC.FocusControl;
        Abort;
      end;

    if not ImportingFromXLS then
      if qryPAccISMIN.AsInteger = 0 then
      begin
        if XulyTaikhoan(qryPAccACCOUNT_ID.Value) = '' then
          exit
        else
          qryDocEntryCREDIT_ACC.Value := SHTIEUKHOAN;
      end;

      if ((qryDocEntryCREDIT_DTYPE.AsInteger = qryDocEntryDEBIT_DTYPE.AsInteger) and (qryDocEntryCREDIT_DETAIL.IsNull)) then
      if not qryDocEntryDEBIT_DETAIL.IsNull then
        if IsHasData(qryDocEntryDEBIT_DETAIL) then
          qryDocEntryCREDIT_DETAIL.Value := qryDocEntryDEBIT_DETAIL.Value;

    if ((qryDocEntryCREDIT_DTYPE_1.AsInteger = qryDocEntryDEBIT_DTYPE_1.AsInteger) and (qryDocEntryCREDIT_DETAIL_1.IsNull)) then
      if not qryDocEntryDEBIT_DETAIL_1.IsNull then
        if IsHasData(qryDocEntryDEBIT_DETAIL_1) then
          qryDocEntryCREDIT_DETAIL_1.Value := qryDocEntryDEBIT_DETAIL_1.Value;

    if (qryPAccDTYPE_ID.IsNull) then
    begin
      qryDocEntryCREDIT_DTYPE.Clear;
      if not qryDocEntryCREDIT_DETAIL.IsNull then
        qryDocEntryCREDIT_DETAIL.Clear;
    end
    else
    begin
      qryDocEntryCREDIT_DTYPE.AsInteger := qryPAccDTYPE_ID.AsInteger;

      if IsNotHasData(qryDocEntryCREDIT_DETAIL) then
        if qryDocEntryDEBIT_DTYPE.AsInteger = qryDocEntryCREDIT_DTYPE.AsInteger then
          if IsHasData(qryDocEntryDEBIT_DETAIL) then
            qryDocEntryCREDIT_DETAIL.Value := qryDocEntryDEBIT_DETAIL.Value;
      grdDetailCREDIT_DETAIL.Visible := True;
    end;

    if (qryPAccDTYPE_ID_1.IsNull) then
    begin
      qryDocEntryCREDIT_DTYPE_1.Clear;
      if not qryDocEntryCREDIT_DETAIL_1.IsNull then
        qryDocEntryCREDIT_DETAIL_1.Clear;
    end
    else
    begin
      qryDocEntryCREDIT_DTYPE_1.AsInteger := qryPAccDTYPE_ID_1.AsInteger;

      if IsNotHasData(qryDocEntryCREDIT_DETAIL_1) then
        if qryDocEntryDEBIT_DTYPE_1.AsInteger = qryDocEntryCREDIT_DTYPE_1.AsInteger then
          if IsHasData(qryDocEntryDEBIT_DETAIL_1) then
            qryDocEntryCREDIT_DETAIL_1.Value := qryDocEntryDEBIT_DETAIL_1.Value;
      grdDetailCREDIT_DETAIL_1.Visible := True;
    end;
    
    if (qryPAccOTYPE_ID.AsInteger = 0) then
    begin
      qryDocEntryCREDIT_TYPE.Clear;
      if not qryDocEntryCREDIT_OBJ.IsNull then
      begin
        qryDocEntryCREDIT_OBJ.Clear;
        qryDocEntryTENDTNO.Clear;
        qryDocEntrySUBNO_1.Clear;
        qryDocEntrySUBNO_2.Clear;
      end;
    end
    else
    begin
      qryDocEntryCREDIT_TYPE.AsInteger := qryPAccOTYPE_ID.AsInteger;

      if ((qryPAccOTYPE_ID.AsInteger = qryDocumentLOAIDOITUONG.AsInteger) and (qryDocEntryCREDIT_OBJ.IsNull)) then
      begin
        qryDocEntryCREDIT_OBJ.Value := qryDocumentMADOITUONG.Value;
      end
      else
        if ((qryDocEntryCREDIT_TYPE.AsInteger = qryDocEntryDEBIT_TYPE.AsInteger) and (qryDocEntryCREDIT_OBJ.IsNull)) then
          if not qryDocEntryDEBIT_OBJ.IsNull then
          begin
            qryDocEntryCREDIT_OBJ.Value := qryDocEntryDEBIT_OBJ.Value;
            qryDocEntryTENDTCO.Value := qryDocEntryTENDTNO.Value;
          end;
    end;


  end;

  if not ImportingFromXLS then

    if optAutoUpdVATValue and (VATTaxTotal <> 0) then
      if qryDocEntry.State = dsInsert then
        if Copy(qryDocEntryCREDIT_ACC.Value, 1, 4) = '3331' then
          qryDocEntryENTRY_VALUE.Value := VATTaxTotal;
end;

procedure TDocFullFrm.grdDetailCURRENCY_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TDocFullFrm.bbtnPSTheoDMClick(Sender: TObject);
var
  SP: WideString;
begin
  SP := qryDocumentDOC_ID.Value;
  with TGenDocDMFrm.Create(Self) do
  try
    SOPHIEU := qryDocumentDOC_ID.Value;
    MAKHO := qryDocumentWAREHOUSE_ID.Value;
    GenFromPeriod := qryDocumentPERIOD_ID.AsInteger;
    MADOITUONGDU := qryDocumentMADOITUONG.Value;
    LOAIDTDU := qryDocumentLOAIDOITUONG.AsInteger;
    ShowModal;
  finally
    Free;
  end;
  qryDocument.ParamByName('DOC_ID').Value := SP;
  qryDocument.Refresh;
  qryDocEntry.Refresh;
  IsPosted := True;
end;

procedure TDocFullFrm.bbtnHTNTClick(Sender: TObject);
begin
  grdDetailCURRENCY_ID.Visible := bbtnHTNT.Down;
  grdDetailTYGIANT.Visible := bbtnHTNT.Down;
  grdDetailNGUYENTE.Visible := ((bbtnHTNT.Down) and (grdDetailENTRY_AMOUNT.Visible));
  grdDetailENTRY_PRICE.Visible := ((bbtnHTNT.Down) or (grdDetailENTRY_AMOUNT.Visible));
end;

procedure TDocFullFrm.qryDocEntryDEBIT_OBJChange(Sender: TField);
begin
  if ImportingFromXLS then Exit;

  if ((IsNotHasData(qryDocEntryDEBIT_OBJ)) and (qryDocEntryDEBIT_TYPE.AsInteger = 0)) then exit;

  with MainDM do
  begin
    CurObjTypeID := qryDocEntryDEBIT_TYPE.AsInteger;
    //if dsPComObj.DataSet.FieldByName('OBJECT_ID').Value<>qryDocEntryDEBIT_OBJ.Value then
    if not CheckObject(qryDocEntryDEBIT_OBJ.Value, qryDocEntryDEBIT_TYPE.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryDocEntryDEBIT_OBJ.FocusControl;
      Exit;
    end;
    if qryDocEntryDEBIT_OBJ.Value <> CurObjID then
      qryDocEntryDEBIT_OBJ.Value := CurObjID;
    GetCurObjInfo;

    qryDocEntryTENDTNO.Value := CurObjName;
    qryDocEntrySUBNO_1.Value := CurObjSub1;
    qryDocEntrySUBNO_2.Value := CurObjSub2;
    if ((grdDetailDISCOUNT_SCALE.Visible) and (CurObjDisCntDef <> 0)) then
      qryDocEntryDISCOUNT_SCALE.AsFloat := CurObjDisCntDef;


    if (RefObjType = qryDocEntryDEBIT_DTYPE.AsInteger) and (RefObjType <> 0) then
      qryDocEntryDEBIT_DETAIL.Value := RefObjID;

    if (RefObjType = qryDocEntryDEBIT_DTYPE_1.AsInteger) and (RefObjType <> 0) then
      qryDocEntryDEBIT_DETAIL_1.Value := RefObjID;
  end;

  if ((qryDocEntryDEBIT_TYPE.AsInteger = qryDocEntryCREDIT_TYPE.AsInteger) and (qryDocEntryCREDIT_TYPE.AsInteger = 2)) then
    if qryDocEntryCREDIT_OBJ.Value <> qryDocEntryDEBIT_OBJ.Value then
      qryDocEntryCREDIT_OBJ.Value := qryDocEntryDEBIT_OBJ.Value;

  if not ImportingFromXLS then
    acSetPriceDef.Execute;

//  if ((grdDetail.FocusedField.FieldName = 'DEBIT_OBJ') and IsHasData(qryDocEntryDEBIT_OBJ)) then

   //Xu ly F6 tu dong - Error - Tam ngung cho sua chua
  {if IsHasData(qryDocEntryDEBIT_OBJ) then
    if ((Copy(qryDocEntryDEBIT_ACC.AsString, 1, 1) = '3') or (Copy(qryDocEntryDEBIT_ACC.AsString, 1, 1) = '4')) then
    begin
      if qryDocEntryDEBIT_ACC.Value <> MainDM.qryPAccACCOUNT_ID.Value then
        if not MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDocEntryDEBIT_ACC.Value, []) then
          Exit;

      if MainDM.qryPAccFOLLOW_DOCBAL.AsInteger = 1 then
      begin
        qryDocEntryDEBIT_OBJ.FocusControl;
        acF6.Execute;
      end;
    end;}
end;

procedure TDocFullFrm.qryDocEntryCREDIT_OBJChange(Sender: TField);
var Price,SLTon :double;
begin
  if ImportingFromXLS then Exit;

  with MainDM do
  begin
    CurObjTypeID := qryDocEntryCREDIT_TYPE.AsInteger;
    if ((IsNotHasData(qryDocEntryCREDIT_OBJ)) and (qryDocEntryCREDIT_TYPE.AsInteger = 0)) then exit;
    //if dsPComObj.DataSet.FieldByName('OBJECT_ID').Value<>qryDocEntryCREDIT_OBJ.Value then
    if not CheckObject(qryDocEntryCREDIT_OBJ.Value, qryDocEntryCREDIT_TYPE.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryDocEntryCREDIT_OBJ.FocusControl;
      Exit;
    end;
    if qryDocEntryCREDIT_OBJ.Value <> CurObjID then
      qryDocEntryCREDIT_OBJ.Value := CurObjID;

    GetCurObjInfo;

    qryDocEntryTENDTCO.Value := CurObjName;
    qryDocEntrySUBCO_1.Value := CurObjSub1;
    qryDocEntrySUBCO_2.Value := CurObjSub2;

    if ((grdDetailDISCOUNT_SCALE.Visible) and (CurObjDisCntDef <> 0)) then
      qryDocEntryDISCOUNT_SCALE.AsFloat := CurObjDisCntDef;

    if ((qryDocEntryDEBIT_TYPE.AsInteger = qryDocEntryCREDIT_TYPE.AsInteger) and (qryDocEntryCREDIT_TYPE.AsInteger = 2)) then
      if ((qryDocEntryDEBIT_OBJ.IsNull) or (grdDetailDEBIT_OBJ.Visible = False)) then
        qryDocEntryDEBIT_OBJ.Value := qryDocEntryCREDIT_OBJ.Value;

    if (RefObjType = qryDocEntryCREDIT_DTYPE.AsInteger) and (RefObjType <> 0) then
      qryDocEntryCREDIT_DETAIL.Value := RefObjID;

    if (RefObjType = qryDocEntryCREDIT_DTYPE_1.AsInteger) and (RefObjType <> 0) then
      qryDocEntryCREDIT_DETAIL_1.Value := RefObjID;
  end;

  if not ImportingFromXLS then
    acSetPriceDef.Execute;

  //Xu ly F6 tu dong - Error - Tam ngung cho sua chua - Thinh
  {if IsHasData(qryDocEntryCREDIT_OBJ) then
    if ((Copy(qryDocEntryCREDIT_ACC.AsString, 1, 1) = '1') or (Copy(qryDocEntryCREDIT_ACC.AsString, 1, 1) = '2')) then
    begin
      if qryDocEntryCREDIT_ACC.Value <> MainDM.qryPAccACCOUNT_ID.Value then
        if not MainDM.qryPAcc.Locate('ACCOUNT_ID', qryDocEntryCREDIT_ACC.Value, []) then
          Exit;

      if MainDM.qryPAccFOLLOW_DOCBAL.AsInteger = 1 then
      begin
        //if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;
        qryDocEntryCREDIT_OBJ.FocusControl;
        acF6.Execute;
      end;
  end;}

  //modified by hangdtt on August 17th
  //Lay don vi tinh mac dinh neu ma co la hang hoa (CREDIT_TYPE=2)
  if (qryDocEntryCREDIT_TYPE.Value = 2) then
  begin
    GetDefaultUnit(qryDocEntryDEBIT_OBJ.Value);
    if(qryDefaultUnitDEFAULT_UNIT_OUT.Value<>'') then
      qryDocEntryUNIT_ID.Value := qryDefaultUnitDEFAULT_UNIT_OUT.Value;
  end;

  //Thinh them phan hien thi ton kho
  if (qryDocEntryCREDIT_TYPE.Value = 2) then
  begin
    Price := MainDM.DonGiaXuat(qryDocumentMADOITUONG.Value, qryDocumentWORK_ID.Value
        , qryDocumentWAREHOUSE_ID.Value, qryDocEntryCREDIT_OBJ.Value
        , qryDocEntryCREDIT_ACC.Value, qryDocEntryDOC_ID.Value
        , qryDocEntryENTRY_ID.Value, qryDocEntryENTRY_AMOUNT.AsFloat, Price,SLTon);
    qryDocEntryINVENTORY_AMOUNT.Value := SLTon;
  end
end;

procedure TDocFullFrm.dxBarButton3Click(Sender: TObject);
begin
  if grdDetail.IsCustomizing then
    grdDetail.EndColumnsCustomizing
  else
    grdDetail.ColumnsCustomizing;
end;

procedure TDocFullFrm.dxDBPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if vpBranch_IsMin = 0 then exit;
  if Accept then
    Text := MainDM.qryPWareWAREHOUSE_ID.Value;
end;

procedure TDocFullFrm.ElPopupButton4Click(Sender: TObject);
begin
  acDesign.Execute;
end;

procedure TDocFullFrm.ElPopupButton3Click(Sender: TObject);
begin
  InPhieu(True);
end;

procedure TDocFullFrm.btnFirstClick(Sender: TObject);
begin
  NavigatorDocClick(1);
end;

procedure TDocFullFrm.btnBackClick(Sender: TObject);
begin
  NavigatorDocClick(2);
end;

procedure TDocFullFrm.btnNextClick(Sender: TObject);
begin
  NavigatorDocClick(3);
end;

procedure TDocFullFrm.btnLastClick(Sender: TObject);
begin
  NavigatorDocClick(4);
end;

procedure TDocFullFrm.grdDetailCREDIT_OBJInitPopup(Sender: TObject);
begin
  MainDM.OpenBalanceObj(qryDocEntryCREDIT_ACC.Value, qryDocumentWAREHOUSE_ID.Value, qryDocumentDOC_DATE.Value);

  if qryDocEntryCREDIT_OBJ.IsNull then
  begin
    MainDM.CurObjTypeID := qryDocEntryCREDIT_type.AsInteger;
    MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;
    exit;
  end;
  with MainDM do
  begin
    CurObjTypeID := qryDocEntryCREDIT_TYPE.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;
      PreObjTypeID := CurObjTypeID;
    end;
    {qryPComObj.Close;
    qryPComObj.Open;

    if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryCREDIT_OBJ.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocEntryCREDIT_OBJ.Value, []);}

    PopupFrm.grdCommonObj.DataSource.DataSet.Open;
    if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryCREDIT_OBJ.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocEntryCREDIT_OBJ.Value, []);

    //PopupFrm.grdCommonObj.FullExpand;
  end;
end;

procedure TDocFullFrm.qryDocumentWAREHOUSE_IDChange(Sender: TField);
begin
  if locToWare.Visible then
    qryDocumentTO_WAREHOUSE.Value := qryDocumentWAREHOUSE_ID.Value;
end;

procedure TDocFullFrm.dxDBPopupEdit3Exit(Sender: TObject);
begin
  KiemtraKhoden();
end;

procedure TDocFullFrm.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if vpBranch_IsMin = 0 then exit;
  if Accept then
  begin
    qryDocument.Edit;
    qryDocumentWORK_ID.Value := MainDM.qryPWorkWORK_ID.Value;
    Text := MainDM.qryPWorkWORK_NAME.Value;
  end;
end;

function TDocFullFrm.KiemtraCongtrinh(): Boolean;
begin
  Result := True;
  if locFrmWork.Visible = False then exit;
  if not (qryDocument.State in [dsEdit, dsInsert]) then exit;
  Result := False;

  if (qryDocumentWORK_ID.IsNull) then
  begin
    begin
      //ShowMessageUnicode(92);
      //ShowMessageUnicode(160);

      //qryDocumentWORK_NAME.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'WORK_NAME',160);
      exit;
    end
  end;

  MainDM.qryPWork.Open;
  if qryDocumentWORK_ID.Value <> MainDM.qryPWorkWORK_ID.Value then
    if not MainDM.qryPWork.Locate('WORK_ID', qryDocumentWORK_ID.Value, []) then
    begin
      //ShowMessageUnicode(173);
      //qryDocumentWORK_NAME.FocusControl;
      ShowHintBoxInComponent(self,qryDocument,'WORK_NAME',173);
      exit;
    end;
  Result := True;
end;

procedure TDocFullFrm.dxDBPopupEdit4Exit(Sender: TObject);
begin
  KiemtraCongtrinh;
end;

procedure TDocFullFrm.qryDocumentDOC_DATEChange(Sender: TField);
begin
  qryDocumentVOUCHER_DATE.AsDateTime := qryDocumentDOC_DATE.AsDateTime;
end;

procedure TDocFullFrm.dxDBPopupEdit3Enter(Sender: TObject);
begin
  if (Sender as TdxDBPopupEdit).Text = '' then
    SendKeyOpenPopup;
  with qryDocEntry do
    if State in [dsInsert, dsEdit] then
// tradtt: sua loi 1133
     try
      Post;
     except
      abort;
     end
end;

procedure TDocFullFrm.dxDBPopupEdit4Enter(Sender: TObject);
begin
  if (Sender as TdxDBPopupEdit).Text = '' then
    SendKeyOpenPopup;
  with qryDocEntry do
    if State in [dsInsert, dsEdit] then
// tradtt: sua loi 1133
     try
      Post;
     except
      abort;
     end
end;

procedure TDocFullFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  if (Sender as TdxDBPopupEdit).Text = '' then
    SendKeyOpenPopup;
  with qryDocEntry do
    if State in [dsInsert, dsEdit] then
     // tradtt: sua loi 1133
     try
      Post;
     except
      abort;
     end
end;
procedure TDocFullFrm.CallHelp();
var pDoctype: integer;
begin
  with IBOQuery1 do
  begin
    ParamByName('loaiphieu').AsInteger := qryDocumentDOCTYPE_ID.AsInteger;
    Open;
    pDoctype:= fieldbyname('PDOC_TYPE').AsInteger;
    Close;
  end;
  case pDoctype of
    -100:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/23-Ketoanthuchi.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -200:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/23-Ketoanthuchi.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -300:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/24-Ketoanbanhang.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -400:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/25-KetoanTSCD.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -500:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/26-Ketoannhapxuat.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -600:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/27-Ketoansanxuat.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -800:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/28-Ketoantonghop.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
    -900:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/29-Ketoanngoaibang.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
       0:  if HtmlHelp(Self.handle, 'HDSDKT.chm::/29a-Ketoantudong.htm', HH_DISPLAY_TOPIC, 0) = 0 then
              ShowMessageUnicode(182);
  end
end;
procedure TDocFullFrm.pmDTEnter(Sender: TObject);
begin
  if (Sender as TdxDBPopupEdit).Text = '' then
    SendKeyOpenPopup;
  with qryDocEntry do
    if State in [dsInsert, dsEdit] then
     // tradtt: sua loi 1133
     try
      Post;
     except
      abort;
     end ;
  if MainDM.CurObjTypeID <> LoaiDTMaster then
    MainDM.CurObjTypeID := LoaiDTMaster;
end;

procedure TDocFullFrm.qryDocumentMADOITUONGChange(Sender: TField);
begin
  if ((BBNhapDTChinh) and (IsNotHasData(qryDocumentMADOITUONG))) then
  begin
    //ShowMessageUnicode(65);
    //qryDocumentMADOITUONG.FocusControl;
    ShowHintBoxInComponent(self,qryDocument,'MADOITUONG',65);
    exit;
  end
  else
  begin
    if (KiemtraDoituong and (vpBranch_IsMin = 1)) then
      if IsHasData(qryDocumentMADOITUONG) then
        with MainDM do
        begin

          qryDocument.Edit;
          GetCurObjInfo;

          qryDocumentTENKH.Value := CurObjName;
          qryDocumentDIACHIKH.Value := CurObjSub1;
          qryDocumentMASOTHUE.Value := CurObjSub2;
          qryDocumentDOC_PERSON.Value := CurObjName;
          qryDocumentDOC_PERSONADDR.Value := CurObjSub1;

          if qryDocumentDOC_NOTES.IsNull then
            qryDocumentDOC_NOTES.Value := qryDocTypeDOCTYPE_NAME.Value + ' ' + CurObjName;

          qryDocumentPAY_DATE.AsDateTime := qryDocumentDOC_DATE.AsDateTime + dsPComObj.DataSet.FieldByName('DEBT_LEN').AsInteger;
          qryDocumentLOAIDOITUONG.AsInteger := LoaiDTMaster;

          if qryDocumentMADOITUONG.Value <> CurObjID then
            qryDocumentMADOITUONG.Value := CurObjID;
        end;
  end;

  IsChangeDT := True;
  if (LoaiDTMaster = 3) and IsHasData(qryDocumentMADOITUONG) then //Giam tscd
    if (qryDocEntry.RecordCount = 0) then
      with MainDM.qryCommon do
      begin
        if qryDocument.State in [dsEdit, dsInsert] then
          qryDocument.Post;

        Close;
        SQL.Clear;
        Params.Clear;
        SQL.Text := 'select nguyengia, khauhao, shtk, tkno from SP_BTGIAMTS(:sophieu, :kyht,:loaict, :shts,:branch_id)';
        Prepare;

        ParamByName('sophieu').Value := qryDocumentDOC_ID.Value;
        ParamByName('kyht').AsInteger := qryDocumentPERIOD_ID.AsInteger;
        ParamByName('loaict').AsInteger := qryDocumentDOCTYPE_ID.AsInteger;
        ParamByName('shts').Value := qryDocumentMADOITUONG.Value;
        ParamByName('branch_id').Value := vpBranch_id;
        Open;
        qryDocEntry.Refresh;
        if FieldByName('tkno').IsNull then
        begin
          qryDocEntry.Insert;
          qryDocEntryCREDIT_ACC.Value := FieldByName('shtk').Value;
          qryDocEntryCREDIT_OBJ.Value := qryDocumentMADOITUONG.Value;
          qryDocEntryCREDIT_TYPE.AsInteger := 3;
          qryDocEntryENTRY_VALUE.AsFloat := FieldByName('nguyengia').AsFloat - FieldByName('khauhao').AsFloat;

          grdDetail.SetFocus;
        end;
        Close;
      end;
end;

procedure TDocFullFrm.grdDetailDEBIT_DETAILCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocFullFrm.grdDetailCREDIT_DETAILCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocFullFrm.grdDetailDEBIT_DETAILInitPopup(Sender: TObject);
begin
  if qryDocumentTO_WAREHOUSE.IsNull then
    MainDM.OpenBalanceObj(qryDocEntryDEBIT_ACC.Value, qryDocumentWAREHOUSE_ID.Value, qryDocumentDOC_DATE.Value)
  else
    MainDM.OpenBalanceObj(qryDocEntryDEBIT_ACC.Value, qryDocumentTO_WAREHOUSE.Value, qryDocumentDOC_DATE.Value);

  if qryDocEntryDEBIT_DETAIL.IsNull then begin
    MainDM.CurObjTypeID := qryDocEntryDEBIT_DTYPE.AsInteger;
    MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;
    exit;
  end;
  with MainDM do
  begin
    CurObjTypeID := qryDocEntryDEBIT_DTYPE.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;

      PreObjTypeID := MainDM.CurObjTypeID;
    end;
    {qryPComObj.Close;
    qryPComObj.Open;

    if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_DETAIL.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocEntryDEBIT_DETAIL.Value, []);
    }
    PopupFrm.grdCommonObj.DataSource.DataSet.Open;
    if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_DETAIL.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocEntryDEBIT_DETAIL.Value, []);

  end;
end;

procedure TDocFullFrm.grdDetailCREDIT_DETAILInitPopup(Sender: TObject);
begin
  MainDM.OpenBalanceObj(qryDocEntryCREDIT_ACC.Value, qryDocumentWAREHOUSE_ID.Value, qryDocumentDOC_DATE.Value);

  if qryDocEntryCREDIT_DETAIL.IsNull then
  begin
    MainDM.CurObjTypeID := qryDocEntryCREDIT_DTYPE.AsInteger;
    MainDM.qryPComObj.close;
    MainDM.qryPComObj.Open;
    exit;
  end;
  //if qryDocEntryCREDIT_DTYPE.IsNull then exit;
  with MainDM do
  begin
    CurObjTypeID := qryDocEntryCREDIT_DTYPE.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;
      PreObjTypeID := CurObjTypeID;
    end;
    {qryPComObj.Close;
    qryPComObj.Open;

    if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryCREDIT_DETAIL.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocEntryCREDIT_DETAIL.Value, []);
    }
    PopupFrm.grdCommonObj.DataSource.DataSet.Open;
    if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryCREDIT_DETAIL.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocEntrycredit_DETAIL.Value, []);

  end;
end;

procedure TDocFullFrm.grdDetailTYGIANTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPTyGiaEXCHANGERATE.AsVariant;
end;

procedure TDocFullFrm.grdDetailTYGIANTInitPopup(Sender: TObject);
begin
  if not MainDM.qryPTyGia.Active then
    MainDM.qryPTyGia.Open;
end;

procedure TDocFullFrm.qryDocEntryCURRENCY_IDChange(Sender: TField);
begin
  if ImportingFromXLS then Exit;

  if IsNotHasData(qryDocEntryCURRENCY_ID) then
  begin
    qryDocEntryTYGIANT.Value := 1;
    Exit;
  end;

  MainDM.qryPCurrency.Open;
  if qryDocEntryCURRENCY_ID.Value <> MainDM.qryPCurrencyCURRENCY_ID.Value then
    if MainDM.qryPCurrency.Locate('CURRENCY_ID', qryDocEntryCURRENCY_ID.Value, [loCaseInsensitive, loPartialKey]) then
      qryDocEntryCURRENCY_ID.Value := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TDocFullFrm.qryDocEntryDEBIT_DETAILChange(Sender: TField);
begin
  if ImportingFromXLS then Exit;

  if ((IsNotHasData(qryDocEntryDEBIT_DETAIL)) or (qryDocEntryDEBIT_DTYPE.AsInteger = 0)) then exit;

  with MainDM do
  begin
    CurObjTypeID := qryDocEntryDEBIT_DTYPE.AsInteger;
    if not CheckObject(qryDocEntryDEBIT_DETAIL.Value, qryDocEntryDEBIT_DTYPE.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryDocEntryDEBIT_DETAIL.FocusControl;
      Exit;
    end
    else
      if qryDocEntryDEBIT_DETAIL.Value <> CurObjID then
      begin
        if IsHasData(qryDocEntryDEBIT_DETAIL) then
          qryDocEntryDEBIT_DETAIL.Value := CurObjID
        else
          qryDocEntryDEBIT_DETAIL.Clear;
      end;
  end;
end;

procedure TDocFullFrm.qryDocEntryCREDIT_DETAILChange(Sender: TField);
begin
  if ImportingFromXLS then Exit;

  with MainDM do
  begin
    CurObjTypeID := qryDocEntryCREDIT_DTYPE.AsInteger;
    if ((IsNotHasData(qryDocEntryCREDIT_DETAIL)) or (qryDocEntryCREDIT_DTYPE.AsInteger = 0)) then exit;

    if not CheckObject(qryDocEntryCREDIT_DETAIL.Value, qryDocEntryCREDIT_DTYPE.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryDocEntryCREDIT_DETAIL.FocusControl;
      Exit;
    end;
    if qryDocEntryCREDIT_DETAIL.Value <> CurObjID then
    begin
      if IsHasData(qryDocEntryCREDIT_DETAIL) then
        qryDocEntryCREDIT_DETAIL.Value := CurObjID
      else
        qryDocEntryCREDIT_DETAIL.Clear;
    end;
  end;
end;

procedure TDocFullFrm.qryDocEntryFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if IsNotHasData(MainDM.qryDocTypeTKNOKHIIN) then
    Accept := True
  else
    Accept := PosEx(MainDM.qryDocTypeTKNOKHIIN.Value, qryDocEntryDEBIT_ACC.Value) = 1;

  if (Accept and IsHasData(MainDM.qryDocTypeTKCOKHIIN)) then
    Accept := PosEx(MainDM.qryDocTypeTKCOKHIIN.Value, qryDocEntryCREDIT_ACC.Value) = 1;
end;

procedure TDocFullFrm.grdDetailACTICLE_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if vpBranch_IsMin = 0 then exit;
  if Accept then
  begin
    qryDocEntry.Edit;
    if not MainDM.qryPActicleTKNO.IsNull then
      qryDocEntryDEBIT_ACC.Value := MainDM.qryPActicleTKNO.Value;
    if not MainDM.qryPActicleTKCO.IsNull then
      qryDocEntryCREDIT_ACC.Value := MainDM.qryPActicleTKCO.Value;
    Text := MainDM.qryPActicleACTICLE_ID.Value;
  end;
end;

procedure TDocFullFrm.qryGiayTTBeforeOpen(DataSet: TDataSet);
begin
  qryGiayTT.ParamByName('sptt').Value := qryDocumentDOC_ID.Value;
  qryGiayTT.ParamByName('kytt').Value := qryDocumentPERIOD_ID.Value;
  qryGiayTT.ParamByName('ngaytt').Value := qryDocumentDOC_DATE.Value;
  qryGiayTT.ParamByName('masonv').Value := qryDocEntryCredit_obj.Value;
  qryGiayTT.ParamByName('shtktu').Value := qryDocEntryCredit_acc.Value;
  qryGiayTT.ParamByName('branch_id').Value := vpBranch_id;
end;

procedure TDocFullFrm.qryDocEntryVAT_PERCENTChange(Sender: TField);
begin
  //if not ImportingFromXLS then
    //qryDocEntryENTRY_PRICE.Value := SSP_RoundTo(DONGIAXUATRA * qryDocEntryVAT_PERCENT.AsFloat, -prmDECIMALDG_LEN);
end;

procedure TDocFullFrm.ElPopupButton5Click(Sender: TObject);
begin
  if qryDocument.State in [dsInsert, dsEdit] then
    qryDocument.Post;

  if IsNotHasData(qryDocumentMASODT) then
  begin
    //ShowMessageUnicode(133);
    //qryDocumentMASODT.FocusControl;
    ShowHintBoxInComponent(self,qryDocument,'MASODT',133);
    exit;
  end;
  if pedtTKNO.Text = '' then
  begin
    ShowMessageUnicode(67);
    pedtTKNO.SetFocus;
    exit;
  end;
  MainDM.qryPAcc.Open;
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered := True;
  if not MainDM.qryPAcc.Locate('ACCOUNT_ID', pedtTKNO.Text, []) then
  begin
    //ShowMessageUnicode(42);
    //pedtTKNO.SetFocus;
    HintBox(42,self,pedtTKNO);
    exit;
  end;

  if pedtTKCO.Text = '' then
  begin
    //ShowMessageUnicode(67);
    //pedtTKCO.SetFocus;
    HintBox(67,self,pedtTKCO);
    exit;
  end;
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenCORecord;
  MainDM.qryPAcc.Filtered := True;
  if not MainDM.qryPAcc.Locate('ACCOUNT_ID', pedtTKCO.Text, []) then
  begin
    //ShowMessageUnicode(42);
    //pedtTKCO.SetFocus;
    HintBox(42,self,pedtTKCO);
    exit;
  end;

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure sp_phatsinhtheodm(:SOPHIEU,:KYHT,:MASANPHAM,:SOLUONG,:TKNO,:TKCO,:MADT,:LOAIDT,:MAKHO,:NGUOINHAP,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEU').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.AsInteger;
    ParamByName('MASANPHAM').Value := qryDocumentMASODT.Value;
    ParamByName('SOLUONG').Value := qryDocumentDOC_AMOUNT.AsFloat;
    ParamByName('TKNO').Value := pedtTKNO.Text;
    ParamByName('TKCO').Value := pedtTKCO.Text;
    ParamByName('MADT').Value := qryDocumentMADOITUONG.Value;
    ParamByName('LOAIDT').Value := qryDocumentLOAIDOITUONG.AsInteger;
    ParamByName('MAKHO').Value := qryDocumentWAREHOUSE_ID.Value;
    if prmUseDocumentLog then
      ParamByName('NGUOINHAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;
  qryDocEntry.Refresh;
end;

procedure TDocFullFrm.dxDBPopupEdit2Enter(Sender: TObject);
begin
  if MainDM.CurObjTypeID <> 2 then
    MainDM.CurObjTypeID := 2;
end;

procedure TDocFullFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    if vpBranch_IsMin = 0 then exit;
    
    qryDocument.Edit;
    Text := vpItemID;
    qryDocumentLOAI_DT.AsInteger := 2;
    qryDocumentMASODT.Value := vpItemID;
  end;
end;

procedure TDocFullFrm.pedtTKNOInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered := True;
end;

procedure TDocFullFrm.pedtTKCOInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenCORecord;
  MainDM.qryPAcc.Filtered := True;
end;

procedure TDocFullFrm.pedtTKNOCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDocFullFrm.FormActivate(Sender: TObject);
begin
  if MainDM.qryDocTypeDOCTYPE_ID.AsInteger <> qryDocumentDOCTYPE_ID.AsInteger then
    MainDM.qryDocType.Locate('DOCTYPE_ID', qryDocumentDOCTYPE_ID.AsInteger, []);
  //PopupFrm.PnlBalance.Visible:=True;
end;

procedure TDocFullFrm.pmDTInitPopup(Sender: TObject);
begin
  MainDM.OpenBalanceObj('', qryDocumentWAREHOUSE_ID.Value,
    qryDocumentDOC_DATE.AsDateTime);
  if qryDocumentMADOITUONG.IsNull then
    exit;

  with MainDM do
  begin
    qryPComObj.Open;
    if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_OBJ.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocumentMADOITUONG.Value, []);

    {CurObjTypeID := LoaiDTMaster;//qryDocumentLOAI_DT.Value;
    {qryPComObj.close;
    qryPComObj.Open;}
    {PopupFrm.grdCommonObj.DataSource.DataSet.Open;
    if PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_OBJ.Value then
      PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocumentMADOITUONG.Value, []);
    {if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_OBJ.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocumentMADOITUONG.Value, []);}

  end;
end;

procedure TDocFullFrm.bbtnCopyClick(Sender: TObject);
begin
  btnCopyClick(Sender);
end;

procedure TDocFullFrm.bbtnPSHangKMClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure SP_PSHANGKHUYENMAI(:OLDDOC, :KYHT, :NEWDOC, :NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('OLDDOC').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.Value;
    ParamByName('NEWDOC').Value := qryDocumentDOC_ID.Value;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id;

    ExecSQL;
    Close;
  end;
  qryDocEntry.Refresh;
  IsPosted := True;
end;

procedure TDocFullFrm.bbtnPSHangKMMoiClick(Sender: TObject);
var
  SPMOI: WideString;
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure SP_PSHANGKHUYENMAI(:OLDDOC,:KYHT,:NEWDOC,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('OLDDOC').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.Value;
    SPMOI := MainDM.Phatsinhsophieu;
    ParamByName('NEWDOC').Value := SPMOI;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;

  MainDM.Suachungtu(SPMOI, qryDocumentPERIOD_ID.AsInteger,qryDocumentBRANCH_ID.Value);
  IsPosted := True;
end;

procedure TDocFullFrm.dxDBCalcEdit1Validate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if dxDBCalcEdit1.Text = '' then
    dxDBCalcEdit1.Text := '0';
end;

procedure TDocFullFrm.qryDocEntryDISCOUNT_SCALEChange(Sender: TField);
var
  Heso: Double;
begin
  if ImportingFromXLS then Exit;

  if IsSystemPost then exit;

  if prmDirectDiscount then
  begin
    Heso := qryDocEntryENTRY_AMOUNT.AsFloat;
    if Heso = 0 then Heso := 1;
    if qryDocEntryTYGIANT.AsFloat <> 0 then
      Heso := Heso * qryDocEntryTYGIANT.AsFloat;

    qryDocEntryDISCOUNT_VALUE.AsFloat := SSP_RoundTo(Heso * qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryORIGIN_PRICE.AsFloat / 100, -prmDECIMALDG_LEN);
    IsSystemPost := TRUE;
    qryDocEntryENTRY_PRICE.AsFloat := qryDocEntryORIGIN_PRICE.AsFloat * (100 - qryDocEntryDISCOUNT_SCALE.AsFloat) / 100;
    IsSystemPost := FALSE;
  end
  else
    begin
      qryDocEntryDISCOUNT_VALUE.AsFloat := Round(qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryENTRY_VALUE.AsFloat / 100);
    end
end;

procedure TDocFullFrm.qryDocEntryENTRY_VALUEChange(Sender: TField);
begin
  if not ImportingFromXLS then
  begin
    {thuyttb them lam tron thanh tien khi nguoi dung edit gia tri thanh tien}
    if not IsSystemPost then
    begin
      IsSystemPost:=True;
//        qryDocEntryORIGIN_VALUE.Value := SSP_RoundTo(qryDocEntryENTRY_VALUE.Value, -prmDECIMALTT_LEN);
        qryDocEntryENTRY_VALUE.Value := SSP_RoundTo(qryDocEntryENTRY_VALUE.Value, -prmDECIMALTT_LEN);
      IsSystemPost:=False;
    end;
    {end thuyttb them }

    if not prmDirectDiscount then
    begin
      if grdDetailDISCOUNT_VALUE.Visible then
        qryDocEntryDISCOUNT_VALUE.AsFloat := Round(qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryENTRY_VALUE.AsFloat / 100);
      IsFixValue := true;
{      if (qryDocEntryENTRY_VALUE.Value>=0)then}
      if  (SSP_RoundTo(qryDocEntryENTRY_PRICE.Value * qryDocEntryENTRY_AMOUNT.Value*qryDocEntryTYGIANT.Value, -prmDECIMALTT_LEN) <> qryDocEntryENTRY_VALUE.Value) and (qryDocEntryENTRY_AMOUNT.Value <>0) then
          qryDocEntryENTRY_PRICE.Value := SSP_RoundTo(qryDocEntryENTRY_VALUE.Value / qryDocEntryENTRY_AMOUNT.Value/qryDocEntryTYGIANT.Value, -prmDECIMALDG_LEN);
      IsFixValue := false;
    end;

  end;
end;

procedure TDocFullFrm.btnInsArrowClick(Sender: TObject);
begin
  btnPSPNHBTL.Enabled := ((qryDocEntry.RecordCount <> 0) and (MainDM.qryDocTypeALLOWINSERT.AsInteger = 1) and (not qryDocumentWAREHOUSE_ID.IsNull));
  pmBtnGenDocs.PopupFromCursorPos;
end;

procedure TDocFullFrm.btnHistoryClick(Sender: TObject);
begin
  MainDM.Xemnhatky(qryDocumentDOC_ID.Value, qryDocumentPERIOD_ID.AsInteger,qryDocumentBranch_id.value);
end;

procedure TDocFullFrm.grdDetailINVOICE_IDInitPopup(Sender: TObject);
begin
  with MainDM do
    if not qryInvoiceList.Active then
    begin
      qryInvoiceList.ParamByName('DOC_ID').Value := qryDocumentDOC_ID.Value;
      qryInvoiceList.ParamByName('PERIOD_ID').Value := qryDocumentPERIOD_ID.Value;
      qryInvoiceList.ParamByName('BRANCH_ID').Value := vpBranch_id;
      qryInvoiceList.Open;
    end;
end;

procedure TDocFullFrm.bbtnPSBTXGVClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure sp_psbtxgv(:SOPHIEU,:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEU').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;
  qryDocEntry.Refresh;
  IsPosted := True;
end;

procedure TDocFullFrm.bbtnPSPXGVClick(Sender: TObject);
begin
  btnPSPXKClick(Sender);
end;

procedure TDocFullFrm.bbtnXemPXKClick(Sender: TObject);
begin
  btnPSPXKMouseUp(Sender, mbRight, [], 0, 0);
end;

procedure TDocFullFrm.ElPopupButton2Click(Sender: TObject);
begin
  qryDocEntry.Append;
end;

procedure TDocFullFrm.acInsDetailExecute(Sender: TObject);
var
  ind: Smallint;
  IsBOF: Boolean;
begin
  if (qryDocEntry.State = dsInsert) then
    begin
      grdDetail.SetFocus;
      Exit;
    end;

   // tradtt: sua loi 1133 - neu state dang edit thi post truoc roi moi insert dong moi
   if (qryDocEntry.State = dsEdit) then
    try
      qryDocEntry.Post;
    except
      Exit;
    end;
   if (qryDocEntry.State = dsEdit) then exit;

  IsSystemPost := True;
  ind := qryDocEntryENTRY_ID.AsInteger;
  IsBOF := qryDocEntry.RecNo = 1;
  qryDocEntry.Last;

  while (qryDocEntryENTRY_ID.AsInteger >= ind) do
  begin
    qryDocEntry.Edit;
    qryDocEntryENTRY_ID.AsInteger := qryDocEntryENTRY_ID.AsInteger + 1;
    qryDocEntry.Post;
    if qryDocEntry.RecNo = 1 then
      Break;
    qryDocEntry.Prior;
  end;
  if not IsBOF then
    qryDocEntry.Next;
  qryDocEntry.Insert;
  IsSystemPost := False;
  //qryDocEntryENTRY_ID.AsInteger:=ind;
end;

procedure TDocFullFrm.dxBarButton5Click(Sender: TObject);
begin
  with TGenAutoDocFrm.Create(Self) do
  try
    ThuHayChi := 1;
    FromDocID := qryDocumentDOC_ID.Value;
    FromPeriodID := qryDocumentPERIOD_ID.Value;
    ShowModal;
  finally
    Free;
  end;
  IsPosted := True;
end;

procedure TDocFullFrm.dxBarButton6Click(Sender: TObject);
begin
  with TGenAutoDocFrm.Create(Self) do
  try
    ThuHayChi := -1;
    FromDocID := qryDocumentDOC_ID.Value;
    FromPeriodID := qryDocumentPERIOD_ID.Value;
    ShowModal;
  finally
    Free;
  end;
  IsPosted := True;
end;

procedure TDocFullFrm.bbtnOutDetailClick(Sender: TObject);
begin
  with TOutDetailFrm.Create(Self) do
  try
      //Truyen vo 1 so tham so nhu dong xuat, kho hang,...
    OutDocID := qryDocumentDOC_ID.Value;
    OutPeriod := qryDocEntryPERIOD_ID.AsInteger;
    OutEntryID := qryDocEntryENTRY_ID.AsInteger;
    WareID := qryDocumentWAREHOUSE_ID.Value;
    AccID := qryDocEntryCREDIT_ACC.Value;
    ObjID := qryDocEntryCREDIT_Obj.Value;
    SoluongXuat := qryDocEntryEntry_Amount.AsFloat;
    OutDate := qryDocumentDOC_DATE.AsDateTime;
    ShowModal;
  finally
    if IsChangeData then
      if ((qryDocEntryENTRY_AMOUNT.AsFloat <> TotalAmount)
        or (qryDocEntryENTRY_VALUE.AsFloat <> TotalValue)) then
      begin
        qryDocEntry.Edit;
        qryDocEntryENTRY_AMOUNT.AsFloat := TotalAmount;
        if TotalAmount <> 0 then
          qryDocEntryENTRY_PRICE.AsFloat := SSP_RoundTo(TotalValue / TotalAmount, -prmDECIMALDG_LEN);
        qryDocEntryENTRY_VALUE.AsFloat := TotalValue;
        IsSystemPost := True;
        qryDocEntry.Post;
        IsSystemPost := False;
        IsPosted := True;
      end;
    Free;
  end;
end;

procedure TDocFullFrm.bbtnOutAllClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure SP_OUT_DOC(:ODOC_ID,:OPERIOD_ID,:PPXK,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('ODOC_ID').Value := qryDocumentDOC_ID.Value;
    ParamByName('OPERIOD_ID').Value := qryDocumentPERIOD_ID.Value;
    ParamByName('PPXK').Value := prmPPXUATKHO;
    ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;

  qryDocEntry.Refresh;
  IsPosted := True;
end;

procedure TDocFullFrm.qryDocEntryORIGIN_PRICEChange(Sender: TField);
var
  Heso: Double;
begin
  if prmDirectDiscount then
  begin
    Heso := qryDocEntryENTRY_AMOUNT.AsFloat;
    if Heso = 0 then Heso := 1;
    if qryDocEntryTYGIANT.AsFloat <> 0 then
      Heso := Heso * qryDocEntryTYGIANT.AsFloat;

    if qryDocEntryDISCOUNT_VALUE.AsFloat <> (SSP_RoundTo(Heso * qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryORIGIN_PRICE.AsFloat / 100, -prmDECIMALDG_LEN)) then
      qryDocEntryDISCOUNT_VALUE.AsFloat := SSP_RoundTo(Heso * qryDocEntryDISCOUNT_SCALE.AsFloat * qryDocEntryORIGIN_PRICE.AsFloat / 100, -prmDECIMALDG_LEN);

    if qryDocEntryENTRY_PRICE.AsFloat <> (qryDocEntryORIGIN_PRICE.AsFloat * (100 - qryDocEntryDISCOUNT_SCALE.AsFloat) / 100) then
      qryDocEntryENTRY_PRICE.AsFloat := qryDocEntryORIGIN_PRICE.AsFloat * (100 - qryDocEntryDISCOUNT_SCALE.AsFloat) / 100;
  end;
end;

procedure TDocFullFrm.qryDocEntryDISCOUNT_VALUEChange(Sender: TField);
var
  Heso, TongCong: Double;
begin
  if prmDirectDiscount then
  begin
    Heso := qryDocEntryENTRY_AMOUNT.AsFloat;
    if Heso = 0 then Heso := 1;
    if qryDocEntryTYGIANT.AsFloat <> 0 then
      Heso := Heso * qryDocEntryTYGIANT.AsFloat;

    TongCong := Heso * qryDocEntryORIGIN_PRICE.AsFloat;

    qryDocEntryENTRY_VALUE.AsFloat := SSP_RoundTo(TongCong - qryDocEntryDISCOUNT_VALUE.AsFloat, -prmDECIMALTT_LEN);
  end;
end;

procedure TDocFullFrm.qryDocumentDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29, e.Message, 0);
end;

procedure TDocFullFrm.qryDocEntryDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29, e.Message, 0);
end;

procedure TDocFullFrm.qryDocumentAfterOpen(DataSet: TDataSet);
begin
  VATTaxTotal := 0;
  MainDM.qryInvoiceList.CLose;
end;

procedure TDocFullFrm.qryDocEntryCalcFields(DataSet: TDataSet);
begin
  {thuyttb dong}
{  if qryDocEntryENTRY_AMOUNT.AsFloat = 0 then
    qryDocEntryNGUYENTE.AsFloat := qryDocEntryENTRY_PRICE.AsFloat
  else
    qryDocEntryNGUYENTE.AsFloat := qryDocEntryENTRY_PRICE.AsFloat * qryDocEntryENTRY_AMOUNT.AsFloat;}
  {thuyttb sua}
    if ((not qryDocEntryTYGIANT.IsNull)and( qryDocEntryTYGIANT.AsFloat <>0))then
      qryDocEntryNGUYENTE.AsFloat := qryDocEntryENTRY_VALUE.AsFloat/qryDocEntryTYGIANT.AsFloat
    else
      qryDocEntryNGUYENTE.AsFloat := qryDocEntryENTRY_VALUE.AsFloat/1;
  // PHLQP 2005-08-08: them theo yeu cau anh Oanh, tinh gia tri nguyen gia

  qryDocEntryORIGIN_VALUE.Value := qryDocEntryORIGIN_PRICE.Value * qryDocEntryENTRY_AMOUNT.Value;
end;

procedure TDocFullFrm.btnPSPNHBTLClick(Sender: TObject);
var
  LoaiCTHT: Smallint;
begin
  LoaiCTHT := MainDM.qryDocTypeDOCTYPE_ID.AsInteger;

  with TNhapTraLaiFrm.Create(Self) do
  try
    SPCU := qryDocumentDOC_ID.Value;
    KYCU := qryDocumentPERIOD_ID.Value;
    ShowModal;
  finally
    Free;
  end;

  MainDM.qryDocType.Locate('DOCTYPE_ID', LoaiCTHT, []);
  IsPosted := True;
end;

procedure TDocFullFrm.qryDocEntryDEBIT_DETAIL_1Change(Sender: TField);
begin
  if ImportingFromXLS then Exit;

  if ((IsNotHasData(qryDocEntryDEBIT_DETAIL_1)) or (qryDocEntryDEBIT_DTYPE_1.AsInteger = 0)) then exit;

  with MainDM do
  begin
    CurObjTypeID := qryDocEntryDEBIT_DTYPE_1.AsInteger;
    if not CheckObject(qryDocEntryDEBIT_DETAIL_1.Value, qryDocEntryDEBIT_DTYPE_1.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryDocEntryDEBIT_DETAIL_1.FocusControl;
      Exit;
    end
    else
      if qryDocEntryDEBIT_DETAIL_1.Value <> CurObjID then
      begin
        if IsHasData(qryDocEntryDEBIT_DETAIL_1) then
          qryDocEntryDEBIT_DETAIL_1.Value := CurObjID
        else
          qryDocEntryDEBIT_DETAIL_1.Clear;
      end;
  end;
end;

procedure TDocFullFrm.qryDocEntryCREDIT_DETAIL_1Change(Sender: TField);
begin
  if ImportingFromXLS then Exit;

  with MainDM do
  begin
    CurObjTypeID := qryDocEntryCREDIT_DTYPE_1.AsInteger;
    if ((IsNotHasData(qryDocEntryCREDIT_DETAIL_1)) or (qryDocEntryCREDIT_DTYPE_1.AsInteger = 0)) then exit;

    if not CheckObject(qryDocEntryCREDIT_DETAIL_1.Value, qryDocEntryCREDIT_DTYPE_1.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryDocEntryCREDIT_DETAIL_1.FocusControl;
      Exit;
    end;
    if qryDocEntryCREDIT_DETAIL_1.Value <> CurObjID then
    begin
      if IsHasData(qryDocEntryCREDIT_DETAIL_1) then
        qryDocEntryCREDIT_DETAIL_1.Value := CurObjID
      else
        qryDocEntryCREDIT_DETAIL_1.Clear;
    end;
  end;
end;

procedure TDocFullFrm.grdDetailDEBIT_DETAIL_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocFullFrm.grdDetailDEBIT_DETAIL_1InitPopup(Sender: TObject);
begin
  if qryDocumentTO_WAREHOUSE.IsNull then
    MainDM.OpenBalanceObj(qryDocEntryDEBIT_ACC.Value, qryDocumentWAREHOUSE_ID.Value, qryDocumentDOC_DATE.Value)
  else
    MainDM.OpenBalanceObj(qryDocEntryDEBIT_ACC.Value, qryDocumentTO_WAREHOUSE.Value, qryDocumentDOC_DATE.Value);

  if qryDocEntryDEBIT_DETAIL_1.IsNull then begin
    MainDM.CurObjTypeID := qryDocEntryDEBIT_DTYPE_1.AsInteger;
    MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;
    exit;
    exit;
  end;
  with MainDM do
  begin
    CurObjTypeID := qryDocEntryDEBIT_DTYPE_1.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;

      PreObjTypeID := MainDM.CurObjTypeID;
    end;
    {qryPComObj.close;
    qryPComObj.Open;

    if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_DETAIL_1.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocEntryDEBIT_DETAIL_1.Value, []);
    }
    PopupFrm.grdCommonObj.DataSource.DataSet.Open;
     if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryDEBIT_DETAIL_1.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocEntryDEBIT_DETAIL_1.Value, []);

  end;
end;

procedure TDocFullFrm.grdDetailCREDIT_DETAIL_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TDocFullFrm.grdDetailCREDIT_DETAIL_1InitPopup(Sender: TObject);
begin
  MainDM.OpenBalanceObj(qryDocEntryCREDIT_ACC.Value, qryDocumentWAREHOUSE_ID.Value, qryDocumentDOC_DATE.Value);

  if qryDocEntryCREDIT_DETAIL_1.IsNull then
  begin
    MainDM.CurObjTypeID := qryDocEntryCREDIT_DTYPE_1.AsInteger;
    MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;
    exit;
  end;
  //if qryDocEntryCREDIT_DTYPE_1.IsNull then exit;
  with MainDM do
  begin
    CurObjTypeID := qryDocEntryCREDIT_DTYPE_1.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;
      PreObjTypeID := CurObjTypeID;
    end;
    {qryPComObj.Close;
    qryPComObj.Open;
    if qryPComObj.FieldByName('OBJECT_ID').Value <> qryDocEntryCREDIT_DETAIL_1.Value then
      qryPComObj.Locate('OBJECT_ID', qryDocEntryCREDIT_DETAIL_1.Value, []);
    }
    PopupFrm.grdCommonObj.DataSource.DataSet.Open;
    if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryDocEntryCREDIT_DETAIL_1.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryDocEntrycredit_DETAIL_1.Value, []);

  end;
end;

procedure TDocFullFrm.acF6Execute(Sender: TObject);
var
  TTBENNO, LOAIDTTT: Smallint;
  SHTKTT, MADTTT: WideString;
begin
  F6_Flag := 0;
  if ((grdDetail.FocusedField.FieldName = 'DEBIT_OBJ') and IsHasData(qryDocEntryDEBIT_OBJ)) then
  begin
    if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

    TTBENNO := 1;
    SHTKTT := qryDocEntryDEBIT_ACC.Value;
    MADTTT := qryDocEntryDEBIT_OBJ.Value;
    LOAIDTTT := qryDocEntryDEBIT_TYPE.AsInteger;
  end
  else
    if ((grdDetail.FocusedField.FieldName = 'CREDIT_OBJ') and IsHasData(qryDocEntryCREDIT_OBJ)) then
    begin
      if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

      TTBENNO := 0;
      SHTKTT := qryDocEntryCREDIT_ACC.Value;
      MADTTT := qryDocEntryCREDIT_OBJ.Value;
      LOAIDTTT := qryDocEntryCREDIT_TYPE.AsInteger;
    end
    else
      Exit;

  if ImportingFromXLS then Exit;

  with TObjDocBalFrm.Create(Self) do
  try
    if qryDocEntryPAYFOR_DOC.IsNull then
      ISFIRST := 1
    else
      ISFIRST := 0;

    MADT := MADTTT;
    LOAIDT := LOAIDTTT;
    SHTK := SHTKTT;
    SOPHIEU := qryDocEntryDOC_ID.Value;
    KYHT := qryDocEntryPERIOD_ID.Value;
    STTDONGHT := qryDocEntryENTRY_ID.AsInteger;
    STTLONNHAT := qryDocEntry.RecordCount;
    DANGBENNO := TTBENNO;
    ShowModal;
  finally
    Free;
  end;
  qryDocEntry.Refresh;
  F6_Flag := 1;
end;

procedure TDocFullFrm.grdDetailENTRY_VALUEChange(Sender: TObject);
var
  TTBENNO, LOAIDTTT: Smallint;
  SHTKTT, MADTTT: WideString;
begin
  if grdDetail.FocusedField.FieldName = 'ENTRY_VALUE' then
    if qryDocEntryENTRY_VALUE.AsFloat = 0 then
      if qryDocEntry.State = dsInsert then
      begin
//    F6_Flag := 0;
        if ((grdDetail.FocusedField.FieldName = 'DEBIT_OBJ') and IsHasData(qryDocEntryDEBIT_OBJ)) then
        begin
          if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

          TTBENNO := 1;
          SHTKTT := qryDocEntryDEBIT_ACC.Value;
          MADTTT := qryDocEntryDEBIT_OBJ.Value;
          LOAIDTTT := qryDocEntryDEBIT_TYPE.AsInteger;
        end
        else
          if ((grdDetail.FocusedField.FieldName = 'CREDIT_OBJ') and IsHasData(qryDocEntryCREDIT_OBJ)) then
          begin
            if qryDocEntry.State in [dsEdit, dsInsert] then qryDocEntry.Post;

            TTBENNO := 0;
            SHTKTT := qryDocEntryCREDIT_ACC.Value;
            MADTTT := qryDocEntryCREDIT_OBJ.Value;
            LOAIDTTT := qryDocEntryCREDIT_TYPE.AsInteger;
          end
          else
            Exit;

        if ImportingFromXLS then Exit;

        with TObjDocBalFrm.Create(Self) do
        try
          if qryDocEntryPAYFOR_DOC.IsNull then
            ISFIRST := 1
          else
            ISFIRST := 0;

          MADT := MADTTT;
          LOAIDT := LOAIDTTT;
          SHTK := SHTKTT;
          SOPHIEU := qryDocEntryDOC_ID.Value;
          KYHT := qryDocEntryPERIOD_ID.Value;
          STTDONGHT := qryDocEntryENTRY_ID.AsInteger;
          STTLONNHAT := qryDocEntry.RecordCount;
          DANGBENNO := TTBENNO;
          ShowModal;
        finally
          Free;
        end;
        qryDocEntry.Refresh;
//    F6_Flag := 1;
      end;

end;

procedure TDocFullFrm.grdDetailUNITChange(Sender: TObject);
begin
  with MainDM do
  begin
    if grdDetail.FocusedField.FieldName = 'UNIT' then
    begin
      if (qryDocEntryCREDIT_TYPE.AsInteger = 2) then
      begin
        if qryDefaultUnit.Active then
          qryDefaultUnit.Close;

        qryDefaultUnit.ParamByName('MAHH').Value := qryDocEntryCREDIT_OBJ.Value;
        qryDefaultUnit.Open;
      end;

      if (qryDocEntryUNIT_ID.AsString <> '') then
      begin
        //ShowMessageUnicode(180);
        ShowHintBoxInComponent(self,qryDocEntry,'UNIT_ID',180);
        qryDocEntryUNIT_ID.AsString := qryDefaultUnitDEFAULT_UNIT_OUT.AsString;
      end;
    end;
  end;
end;

procedure TDocFullFrm.grdDetailUNITInitPopup(Sender: TObject);
begin
  MainDM.qryUnit.Open;
end;

procedure TDocFullFrm.grdDetailUNITCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryUnitUNIT_ID.Value;
  MainDM.qryUnit.Close;
end;

procedure TDocFullFrm.qryDocEntryUNIT_AMOUNTChange(Sender: TField);
begin
//Tinh UnitAmount
    ComputeUnitAmount;
end;

procedure TDocFullFrm.btnTemplateClick(Sender: TObject);
begin
    bbtnPhieuDK.Down := InPhieuDangDK = TRUE; //(maindm.qryDocTypeTEMPLATE_TYPE.value = 1);
    bbtnPhieuNC.Down := InPhieuDangDK = FALSE;//(maindm.qryDocTypeTEMPLATE_TYPE.value = 0);
    pmTemplate.PopupFromCursorPos;
end;

procedure TDocFullFrm.bbtnPhieuDKClick(Sender: TObject);
var   Reg: TRegistry;
begin
  InPhieuDangDK := TRUE;
   //if vpBranch_IsMin = 0 then exit;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY +'\DocTemplate',True) then
    begin
      reg.WriteInteger(IntToStr(qryDocumentDOCTYPE_ID.Value),1);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;

    {qryDocument.Edit;
    qryDocumentTEMPLATE.Value := 1;}
end;

procedure TDocFullFrm.bbtnPhieuNCClick(Sender: TObject);
var Reg:Tregistry;
begin
  InPhieuDangDK := FALSE;
    //if vpBranch_IsMin = 0 then exit;
    Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY +'\DocTemplate',True) then
    begin
      reg.WriteInteger(IntToStr(qryDocumentDOCTYPE_ID.Value),0);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;

    {qryDocument.Edit;
    qryDocumentTEMPLATE.Value := 0;}
end;

procedure TDocFullFrm.qryDocEntryUNIT_IDChange(Sender: TField);
begin
 ComputeUnitAmount;
end;

procedure TDocFullFrm.pedtBranchInitPopup(Sender: TObject);
begin
    Maindm.qryBranch.OnFilterRecord := Maindm.qryBranchFilterRecord;
    Maindm.qryBranch.Filtered := TRUE;


end;

procedure TDocFullFrm.pedtBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Maindm.qryBranch.Filtered := FALSE;

  if accept then
  //Neu luu lai thay doi Branch thi close form
    IsChangeBranch_ID := 1;

end;

function TDocFullFrm.IsExistDocID_Branchs: widestring;
begin

  result := '';

  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select first 1 doc_id, branch_id from documents where '
                        + ' doc_id = :doc_id and period_id = :period_id';
  maindm.qryCommon.ParamByName('doc_id').value := qryDocumentDOC_ID.Value;;
  maindm.qryCommon.ParamByName('period_id').value := qryDocumentPERIOD_ID.Value;
  maindm.qryCommon.Open;

  if maindm.qryCommon.FieldByName('doc_id').IsNull  then
    result := ''
  else
    result := MainDM.qryCommon.Fieldbyname('branch_id').value;

end;

procedure TDocFullFrm.dxBarButton7Click(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure ASP_PSTHUENK(:SOPHIEU, :KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEU').Value := qryDocumentDOC_ID.Value;
    ParamByName('KYHT').Value := qryDocumentPERIOD_ID.Value;
    ParamByName('BRANCH_ID').Value := qryDocumentBRANCH_ID.Value;    
    ExecSQL;
    Close;
  end;
  qryDocEntry.Refresh;
  IsPosted := True;
end;

procedure TDocFullFrm.qryBenNoBeforeOpen(DataSet: TDataSet);
begin
  qryBenNo.ParamByName('DOC_ID').Value:=qryDocumentDOC_ID.Value;
  qryBenNo.ParamByName('PERIOD_ID').Value:=qryDocumentPERIOD_ID.Value;
  qryBenNo.ParamByName('BRANCH_ID').Value:=qryDocumentBRANCH_ID.Value
end;

procedure TDocFullFrm.qryBenCoBeforeOpen(DataSet: TDataSet);
begin
  qryBenCo.ParamByName('DOC_ID').Value:=qryDocumentDOC_ID.Value;
  qryBenco.ParamByName('PERIOD_ID').Value:=qryDocumentPERIOD_ID.Value;
  qryBenco.ParamByName('BRANCH_ID').Value:=qryDocumentBRANCH_ID.Value
end;

procedure TDocFullFrm.qryInGopBeforeOpen(DataSet: TDataSet);
begin
  qryInGop.ParamByName('DOCID').Value:=qryDocumentDOC_ID.Value;
  qryInGop.ParamByName('PERIOD').Value:=qryDocumentPERIOD_ID.Value;
  qryInGop.ParamByName('BRANCH_ID').Value:=qryDocumentBRANCH_ID.Value;
end;

procedure TDocFullFrm.btnPrintBatchClick(Sender: TObject);
begin
  if (ShowMessageUnicode(262,'',4) = 7) then
    exit;
  NavigatorDocClick(1);
  while btnLast.Enabled do
  begin
    InPhieu(True);
    NavigatorDocClick(3);
  end;
end;

procedure TDocFullFrm.edtNgoaiteCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin

  if Accept then
  begin
    text := maindm.qryPCurrencyCURRENCY_ID.Value;
    qryDocument.Edit;
    qryDocumentCURRENCY_ID.Value :=maindm.qryPCurrencyCURRENCY_ID.Value;

  end
end;

procedure TDocFullFrm.qryDocumentTYGIAChange(Sender: TField);
begin
  if (vpBranch_IsMin <> 1) then exit;


  qryDocEntry.First;
  while (not qryDocEntry.Eof)
  do begin
    qryDocEntry.Edit;
    if qryDocumentTYGIA.IsNull then
      qryDocEntryTYGIANT.Clear
    else
      qryDocEntryTYGIANT.Value := qryDocumentTYGIA.Value;
    qryDocEntry.Next;
  end

end;

procedure TDocFullFrm.qryDocumentCURRENCY_IDChange(Sender: TField);
var cur_id : widestring;
begin
  if (vpBranch_IsMin <> 1) then exit;
  MainDM.qryPCurrency.Open;

//  if (not MainDM.qryPCurrency.Locate('CURRENCY_ID', qryDocumentCURRENCY_ID.Value, [loCaseInsensitive, loPartialKey])) then
  if (not MainDM.qryPCurrency.Locate('CURRENCY_ID', qryDocumentCURRENCY_ID.Value, [])) then
    if qryDocumentCURRENCY_ID.Value <> MainDM.qryPCurrencyCURRENCY_ID.Value then
    begin
    {sua loi bug ID_812}
      if (not qryDocumentCURRENCY_ID.IsNull) then
      if (qryDocumentCURRENCY_ID.Value<>'')then
      begin
        qryDocument.Edit;
        qryDocumentCURRENCY_ID.Value := MainDM.qryPCurrencyCURRENCY_ID.Value;
      end
      else
        qryDocumentCURRENCY_ID.Clear;
    {end sua loi bug ID_812}
    end;


  qryDocEntry.First;           

  while (not qryDocEntry.Eof)
  do begin
    qryDocEntry.Edit;
    if qryDocumentCURRENCY_ID.IsNull then
      qryDocEntryCURRENCY_ID.Clear
    else
      qryDocEntryCURRENCY_ID.Value := qryDocumentCURRENCY_ID.Value;
    qryDocEntry.Next;
  end
end;

procedure TDocFullFrm.grdDetailVAT_IDInitPopup(Sender: TObject);
begin
  maindm.qryVATList.open;
  if not qryDocEntryVAT_ID.IsNull then
    maindm.qryVATList.Locate('VAT_ID',qryDocEntryVAT_ID.Value,[]);

end;

procedure TDocFullFrm.grdDetailVAT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if vpBranch_IsMin <> 1 then exit;
  if Accept then
    text := IntToStr(MainDM.qryVATListVAT_ID.value);
end;

procedure TDocFullFrm.qryDocEntryVAT_IDChange(Sender: TField);

begin
  maindm.qryVATList.Open;

  if not maindm.qryVATList.Locate('VAT_ID', qryDocEntryVAT_ID.Value,[loCaseInsensitive,loPartialKey]) then
  begin
      ShowMessageUnicode(46);
      qryDocEntryVAT_ID.FocusControl;
      Exit;
  end;
  qryDocEntryMETHOD_ID.Value := MainDM.qryVATListMETHOD_ID.Value;
  qryDocEntryVAT_PERCENT.Value := MainDM.qryVATListVAT_PER.Value;

  if qrydocentryMETHOD_ID.Value = 10 then
    TinhGTPriceTax
  else
    TinhGTPriceNotTax;
end;

procedure TDocFullFrm.dxDBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_return) then
    keybd_event(VK_TAB,0,0,0);
end;

procedure TDocFullFrm.qryInTachThueFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if IsNotHasData(MainDM.qryDocTypeTKNOKHIIN) then
    Accept := True
  else
    Accept := PosEx(MainDM.qryDocTypeTKNOKHIIN.Value, qryintachthueDEBIT_ACC.Value) = 1;

  if (Accept and IsHasData(MainDM.qryDocTypeTKCOKHIIN)) then
    Accept := PosEx(MainDM.qryDocTypeTKCOKHIIN.Value, qryintachthueCREDIT_ACC.Value) = 1;
end;

procedure TDocFullFrm.TinhGTPriceNotTax;
var Price,amount1,amount2 :double;
begin

  Price := 0; amount1 := 0;amount2:=0;

  if qryDocEntryMETHOD_ID.Value = 10 then
      price := SSP_RoundTo(qrydocentryentry_PRICE_VAT.AsFloat / (1+ qryDocEntryVAT_PERCENT.Value/100),-6);
  if qrydocentryMETHOD_ID.Value = 11 then
      price := SSP_RoundTo( qrydocentryentry_PRICE_VAT.AsFloat * (1-qryDocEntryVAT_PERCENT.Value/100),-6);

  if qrydocentryentry_PRICE.Value <> price then
    begin
      Calculating := TRUE;
      qrydocentryentry_PRICE.Value := price;
    end;

  calculating := FALSE;
end;

procedure TDocFullFrm.TinhGTPriceTax;
var vatPrice,amount1 :double;
    //amount2 : double;
begin
  {Tinh VAT theo cach binh thuong}

  if Calculating then exit;
  vatPrice := 0;

  if qrydocentryMETHOD_ID.Value = 10 then
    vatPrice := SSP_RoundTo(qrydocentryentry_PRICE.AsFloat+ (qrydocentryentry_PRICE.AsFloat*qryDocEntryVAT_PERCENT.Value/100),-6);
  if qrydocentryMETHOD_ID.Value = 11 then
    vatPrice := SSP_RoundTo( qrydocentryentry_PRICE.AsFloat / (1-qryDocEntryVAT_PERCENT.Value/100),-6);

   if qrydocentryentry_PRICE_VAT.Value <> vatPrice then
   begin
    Calculating := TRUE;
    qrydocentryentry_PRICE_VAT.Value := vatPrice;
   end;

  calculating := FALSE;
end;

procedure TDocFullFrm.qryDocEntryENTRY_PRICE_VATChange(Sender: TField);
//var amount1,amount2 : double;
begin

  TinhGTPriceNotTax;

  {if (qryDocEntryCURRENCY_ID.IsNull) or (qryDocEntryCURRENCY_ID.Value = 'VND') then
    qrydocentryentry_VALUE.AsFloat := SSP_RoundTo(amount1*qrydocentryentry_PRICE.AsFloat,-prmDECIMALTT_LEN)
  else
    qrydocentryentry_VALUE.AsFloat := SSP_RoundTo(amount1*qrydocentryentry_PRICE.AsFloat,-2);
  }
end;
procedure TDocFullFrm.IB_Events1EventAlert(Sender: TObject;
  AEventName: String; AEventCount: Integer);
var colnum : Integer;
begin
  {colnum := grdDetail.FocusedColumn;
  if qryDocEntry.State = dsbrowse then
  begin
    qryDocEntry.DisableControls;
    qryDocEntry.Refresh;
    qryDocEntry.EnableControls;
  end

  {qryDocEntry.Last;
  grdDetail.FocusedColumn := colnum ;}

end;

procedure TDocFullFrm.edtNgoaiteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {dong  sua loi bug ID_812}
{  Abort;
  Exit;}
  {end sua loi bug ID_812}
end;

procedure TDocFullFrm.qryDocEntryPTTHUENKChange(Sender: TField);
begin
if qryDocEntryPTTHUENK.IsNull then
   qryDocEntryPTTHUENK.Value := 0;
end;

procedure TDocFullFrm.grdDetailPTTHUENKChange(Sender: TObject);
begin
if (qryDocEntryPTTHUENK.IsNull) then
   qryDocEntryPTTHUENK.Value := 0;
//If IsHasData(qryDocEntryPTTHUENK)then
//   qryDocEntryPTTHUENK.Value := 0;
end;

end.

