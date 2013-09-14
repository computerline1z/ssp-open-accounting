Unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxBar, ActnList, ToolWin, ComCtrls, ImgList, StdActns, ExtCtrls,
  StdCtrls, Buttons, dxLayoutLookAndFeels, dxLayoutControl, cxControls,
  IB_Events, IB_Metadata, dxExEdtr, dxExGrEd, dxExELib, Forms,
  dxCntner, dxEditor, dxEdLib, dxDBTL, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl,
  dxGrClms,dxTreeGridMenus, ExtActns, dxGrClEx, Menus, dxsbar,
  dxBarExtItems, DB, IBODataset,Registry, htmlhlp,
  GIFImage,jpeg,
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn, ElCLabel,
  ElLabel, ElPanel, ElHTMLHint, ElPgCtl, hhcomponent, IB_Components,
  IB_Process, IB_Script ,KTTKDTForm, ShellAPI, dxLayout, ElSplit;

type
  TMainFrm = class(TForm)
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    dxBarSubItem1: TdxBarSubItem;
    mniCompanyFile: TdxBarButton;
    mniUserManager: TdxBarButton;
    mniSetNorms: TdxBarSubItem;
    mniChgPwd: TdxBarButton;
    mniExit: TdxBarButton;
    mnView: TdxBarSubItem;
    mnTasks: TdxBarSubItem;
    mnList: TdxBarSubItem;
    mnTools: TdxBarSubItem;
    mnHelp: TdxBarSubItem;
    mnWindows: TdxBarSubItem;
    acCustomize: TAction;
    mniCustomize: TdxBarButton;
    acAccountList: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    bbWindowList: TdxBarListItem;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    acCustomerGrp: TAction;
    acCustomer: TAction;
    acGoods: TAction;
    acGoodsGrp: TAction;
    acAccDetail: TAction;
    dxBarButton29: TdxBarButton;
    dxBarButton31: TdxBarButton;
    acWarehouse: TAction;
    acHSCT: TAction;
    dxBarButton32: TdxBarButton;
    acToolsBar: TAction;
    dxBarButton33: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton5: TdxBarButton;
    acAssetGrp: TAction;
    PnlMain: TPanel;
    grdList: TdxDBGrid;
    dbtlDocType: TdxDBTreeList;
    dbtlDocTypeDOCTYPE_ID: TdxDBTreeListMaskColumn;
    dbtlDocTypeDOCTYPE_NAME: TdxDBTreeListMaskColumn;
    dbtlDocTypePDOC_TYPE: TdxDBTreeListMaskColumn;
    grdListHTNGUOI: TdxDBGridMaskColumn;
    acEditDoc: TAction;
    acReport: TAction;
    acTSCD: TAction;
    acRegTransfer: TAction;
    acRegAllocate: TAction;
    dxBarButton28: TdxBarButton;
    acOption: TAction;
    acNewDoc: TAction;
    pmGrid: TdxBarPopupMenu;
    dxBarButton43: TdxBarButton;
    bbtnDeleteDoc: TdxBarButton;
    dxBarButton45: TdxBarButton;
    acDelDoc: TAction;
    dxBarButton46: TdxBarButton;
    acShowData: TAction;
    acShowGroup: TAction;
    acAccountArise: TAction;
    acTonghop: TAction;
    dxBarButton15: TdxBarButton;
    acInstock: TAction;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton47: TdxBarButton;
    acNormLabour: TAction;
    acNormMaterial: TAction;
    acPlanPrice: TAction;
    acSalePrice: TAction;
    mnuSetBegin: TdxBarSubItem;
    dxBarButton48: TdxBarButton;
    acSetParam: TAction;
    dxBarButton50: TdxBarButton;
    acMaterialUnfinish: TAction;
    dxBarButton51: TdxBarButton;
    acDetailArise: TAction;
    dxBarButton52: TdxBarButton;
    acInOut: TAction;
    acThongkeKH: TAction;
    acThongkeNX: TAction;
    acThongkeDT: TAction;
    acThongkeCP: TAction;
    acThongkeLL: TAction;
    acThongkeBH: TAction;
    acThongkeTC: TAction;
    acThongkeSX: TAction;
    dxBarButton13: TdxBarButton;
    acUserManager: TAction;
    acFindDoc: TAction;
    dxBarButton14: TdxBarButton;
    acRegForBill: TAction;
    dxBarButton40: TdxBarButton;
    acProductInfo: TAction;
    acTemplateList: TAction;
    dxBarButton67: TdxBarButton;
    acSetUserRight: TAction;
    acBTKCCPNC: TAction;
    acBTKCCPNL: TAction;
    acBTKCCPSX: TAction;
    dxBarButton72: TdxBarButton;
    acTinhgiathanh: TAction;
    dxBarButton73: TdxBarButton;
    acBuyPrice: TAction;
    btnExeSQL: TdxBarButton;
    dxBarButton75: TdxBarButton;
    acEntrys: TAction;
    bbtnExportExcel: TdxBarButton;
    bbtnExportHTML: TdxBarButton;
    bbtnExportXML: TdxBarButton;
    acBangCDPS: TAction;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton63: TdxBarButton;
    acObjectType: TAction;
    dxBarButton64: TdxBarButton;
    acCurrency: TAction;
    acRate: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acBalForeign: TAction;
    bbtnAutoHeight: TdxBarButton;
    dxBarButton7: TdxBarButton;
    acDetailAriseNT: TAction;
    dxBarButton8: TdxBarButton;
    dxBarButton49: TdxBarButton;
    acItemList: TAction;
    acItemGroup: TAction;
    btnCalculator: TdxBarButton;
    bbtnPhieuKhongHople: TdxBarButton;
    grdDetail: TdxDBGrid;
    acOpenByTemplate: TAction;
    grdListColumn8: TdxDBGridColumn;
    dxBarButton20: TdxBarButton;
    acDefRptLCTT: TAction;
    grdListGHICHU: TdxDBGridColumn;
    bbtnDefRpts: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton39: TdxBarButton;
    bbtnTHCNNT: TdxBarButton;
    dxBarButton53: TdxBarButton;
    bbtnAssetArise: TdxBarButton;
    grdListColTemp: TdxDBGridButtonColumn;
    dxBarButton65: TdxBarButton;
    grdListColumn12: TdxDBGridColumn;
    grdListColumn13: TdxDBGridColumn;
    Panel1: TPanel;
    TntSpeedButton1: TELPopupButton;
    TntSpeedButton2: TELPopupButton;
    TntSpeedButton3: TELPopupButton;
    TntSpeedButton4: TELPopupButton;
    TntSpeedButton5: TELPopupButton;
    btnExportExcel: TELPopupButton;
    btnCaydulieu: TdxBarLargeButton;
    btnTKPS: TdxBarLargeButton;
    btnDTPS: TdxBarLargeButton;
    btnHHPS: TdxBarLargeButton;
    btnTSPS: TdxBarLargeButton;
    btnDMTK: TdxBarLargeButton;
    btnDMKH: TdxBarLargeButton;
    btnDMHH: TdxBarLargeButton;
    btnDMTS: TdxBarLargeButton;
    btnSearch: TdxBarLargeButton;
    btnReport: TdxBarLargeButton;
    dxBarButton66: TdxBarButton;
    BarStaticUserName: TdxBarStatic;
    BarStaticDB: TdxBarStatic;
    BarStaticMsg: TdxBarStatic;
    BarStaticStatus: TdxBarStatic;
    dxBarButton68: TdxBarButton;
    Timer1: TTimer;
    acNewDocByTemplate: TAction;
    dxBarButton74: TdxBarButton;
    acReLoadRight: TAction;
    ImageList1: TImageList;
    dxBarButton81: TdxBarButton;
    ImageList22: TImageList;
    bbtnNhacnho: TdxBarButton;
    dxBarButton56: TdxBarButton;
    grdListColumn9: TdxDBGridDateColumn;
    grdListColST: TdxDBGridCalcColumn;
    bbtnPXSX: TdxBarButton;
    dxBarButton57: TdxBarButton;
    PnlLeft: TELPanel;
    acSetStatusActions: TAction;
    bbtnPhanloaiCT: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    acSearchDoc: TAction;
    dxBarButton34: TdxBarButton;
    bbtnXemNhatky: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    BarStaticHelp: TdxBarStatic;
    bbtnXemNhatkyBiXoa: TdxBarButton;
    bbtnImportFromXLS: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    pmTree: TdxBarPopupMenu;
    ElHTMLHint1: TElHTMLHint;
    dxBarButton35: TdxBarButton;
    dxBarButton58: TdxBarButton;
    bbtnThongke: TdxBarSubItem;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    bbtnExpand: TdxBarButton;
    bbtnCollapse: TdxBarButton;
    grdDetailDEBIT_ACC: TdxDBGridMaskColumn;
    grdDetailCREDIT_ACC: TdxDBGridMaskColumn;
    grdDetailDEBIT_OBJ: TdxDBGridMaskColumn;
    grdDetailCREDIT_OBJ: TdxDBGridMaskColumn;
    grdDetailENTRY_AMOUNT: TdxDBGridMaskColumn;
    grdDetailENTRY_PRICE: TdxDBGridMaskColumn;
    grdDetailENTRY_VALUE: TdxDBGridMaskColumn;
    bbtnMsg: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton27: TdxBarButton;
    acChangePeriod: TAction;
    dxBarButton54: TdxBarButton;
    acCongtrinh: TAction;
    dxBarButton26: TdxBarButton;
    dxBarButton76: TdxBarButton;
    bbtnRegAutoOut1: TdxBarSubItem;
    dxBarButton77: TdxBarButton;
    bbtnRegEntrys: TdxBarSubItem;
    PgeCtrlList: TElPageControl;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    grdEntryList: TdxDBGrid;
    grdEntryListDOC_ID: TdxDBGridMaskColumn;
    grdEntryListDOC_DATE: TdxDBGridDateColumn;
    grdEntryListDEBIT_ACC: TdxDBGridMaskColumn;
    grdEntryListDEBIT_OBJ: TdxDBGridMaskColumn;
    grdEntryListCREDIT_ACC: TdxDBGridMaskColumn;
    grdEntryListCREDIT_OBJ: TdxDBGridMaskColumn;
    grdEntryListENTRY_AMOUNT: TdxDBGridMaskColumn;
    grdEntryListENTRY_PRICE: TdxDBGridMaskColumn;
    grdEntryListENTRY_VALUE: TdxDBGridMaskColumn;
    grdEntryListENTRY_NOTE: TdxDBGridMaskColumn;
    grdListDOC_VOUCHER: TdxDBGridMaskColumn;
    dxBarButton44: TdxBarButton;
    bbtnChitieuTC: TdxBarButton;
    dxBarButton83: TdxBarButton;
    grdListBUDGET_NO: TdxDBGridMaskColumn;
    dxBarButton82: TdxBarButton;
    dxBarButton85: TdxBarButton;
    bbtnLangDefault: TdxBarButton;
    bbtnLangVietNam: TdxBarButton;
    bbtnLangEnglish: TdxBarButton;
    bbtnCNQH: TdxBarButton;
    dxBarButton87: TdxBarButton;
    HtmlHelp1: THtmlHelp;
    dxBarButton88: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    bbtnYTPS: TdxBarButton;
    bbtnYTPSVND: TdxBarButton;
    bbtnDocTypeInfo: TdxBarButton;
    grdEntryListYEUTONO: TdxDBGridColumn;
    grdEntryListYEUTOCO: TdxDBGridColumn;
    dxBarButton97: TdxBarButton;
    bbtnHSCathang: TdxBarButton;
    dxBarButton99: TdxBarButton;
    bbtnHMPS: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton114: TdxBarButton;
    bbtnBCTMTC: TdxBarSubItem;
    dxBarButton115: TdxBarButton;
    dxBarButton116: TdxBarButton;
    dxBarButton117: TdxBarButton;
    bbtnScript: TdxBarButton;
    bbtnSQLEditor: TdxBarButton;
    bbtnCN131: TdxBarButton;
    bbtnParamArising: TdxBarButton;
    bbtnParamBalance: TdxBarButton;
    bbtnQuestion: TdxBarButton;
    grdDetailENTRY_ID: TdxDBGridMaskColumn;
    grdDetailCURRENCY_ID: TdxDBGridMaskColumn;
    grdDetailTYGIANT: TdxDBGridMaskColumn;
    grdDetailENTRY_NOTE: TdxDBGridMaskColumn;
    dxBarButton78: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dbtlDocTypeTHUTUSAPXEP: TdxDBTreeListColumn;
    bbtnInvType: TdxBarButton;
    bbtnHangKM: TdxBarButton;
    acBeforeExit: TAction;
    grdListDOCUMENT_TAG: TdxDBGridCheckColumn;
    bbtnCTGS: TdxBarButton;
    bbtnDkyCTGS: TdxBarButton;
    dxBarButton119: TdxBarButton;
    bbtnActiclePlan: TdxBarButton;
    dxBarButton55: TdxBarButton;
    bbtnOutNotLogic: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton98: TdxBarButton;
    mnuDatabaseBK2: TdxBarButton;
    mnuDatabaseBK1: TdxBarButton;
    mnuDatabaseBK3: TdxBarButton;
    ScrRestore: TIB_Script;
    OpenDialogRestore: TOpenDialog;
    dxBarButton121: TdxBarButton;
    dxBarButton122: TdxBarButton;
    mnuDynaReport: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton62: TdxBarButton;
    mnuDatabaseBK4: TdxBarButton;
    mnuDatabaseBK5: TdxBarButton;
    dxBarSDCTBDTYT2: TdxBarButton;
    dxBarTMBCTC: TdxBarButton;
    dxBarListUnit: TdxBarButton;
    dxBarListUnitScale: TdxBarButton;
    bbtnTranferRecieve: TdxBarButton;
    Timer2: TTimer;
    mnuReport: TdxBarSubItem;
    grdListBRANCH_NAME: TdxDBGridMaskColumn;
    btnSaveRestoreDoc: TdxBarButton;
    btnRestoreDoc: TdxBarButton;
    grdEntryListBRANCH_NAME: TdxDBGridMaskColumn;
    grdDetailCREDIT_DETAIL: TdxDBGridMaskColumn;
    grdDetailDEBIT_DETAIL: TdxDBGridMaskColumn;
    acSwitchBranch: TAction;
    bbtnBranchList: TdxBarButton;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    Panel2: TPanel;
    TntLabel2: TElLabel;
    pedtBranch: TdxDBExtLookupEdit;
    dedtCurDate: TdxDateEdit;
    btnRefresh: TElPopupButton;
    acBranch: TAction;
    acUnit: TAction;
    bbtnIdleList: TdxBarButton;
    ElSplitter1: TElSplitter;
    ElPanel1: TElPanel;
    Splitter1: TSplitter;
    bbtnKQHDKDHVS: TdxBarButton;
    bbtnAddon: TdxBarSubItem;
    bbtnSamudera: TdxBarSubItem;
    bbtnRegAutoOut: TdxBarButton;
    bbtnImportSam: TdxBarButton;
    bbtnReportSam: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    ElLabel1: TElLabel;
    bbtntkcust: TdxBarButton;
    bbtnThongkeTS: TdxBarButton;
    bbtntln_costdeclare: TdxBarButton;
    grdDetailTENDTNO: TdxDBGridMaskColumn;
    grdDetailTENDTCO: TdxDBGridMaskColumn;
    bbtnPlan: TdxBarSubItem;
    bbtnDutoanvattu: TdxBarButton;
    bbtnRegister: TdxBarButton;
    bbtnGroupMatNorm: TdxBarButton;
    acCCDC: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    ImageList2: TImageList;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    procedure acCustomizeExecute(Sender: TObject);
    procedure acAccountListExecute(Sender: TObject);
    procedure acHSCTExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acWarehouseExecute(Sender: TObject);
    procedure acAccDetailExecute(Sender: TObject);
    procedure acToolsBarExecute(Sender: TObject);
    procedure btnDMHHClick(Sender: TObject);
    procedure mniChgPwdClick(Sender: TObject);
    procedure mniExitClick(Sender: TObject);
    procedure acEditDocExecute(Sender: TObject);
    procedure dbtlDocTypeDblClick(Sender: TObject);
    procedure grdListDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbtlDocTypeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure grdListStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dbtlDocTypeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnDMTKClick(Sender: TObject);
    procedure btnDMKHClick(Sender: TObject);
    procedure acReportExecute(Sender: TObject);
    procedure btnRptClick(Sender: TObject);
    procedure acTSCDExecute(Sender: TObject);
    procedure acRegTransferExecute(Sender: TObject);
    procedure acRegAllocateExecute(Sender: TObject);
    procedure acNewDocExecute(Sender: TObject);
    procedure acDelDocExecute(Sender: TObject);
    procedure dbtlDocTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acShowDataExecute(Sender: TObject);
    procedure grdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbtlDocTypeChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure grdListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acAccountAriseExecute(Sender: TObject);
    procedure acOptionExecute(Sender: TObject);
    procedure acInstockExecute(Sender: TObject);
    procedure acMaterialUnfinishExecute(Sender: TObject);
    procedure acDetailAriseExecute(Sender: TObject);
    procedure acInOutExecute(Sender: TObject);
    procedure acSetParamExecute(Sender: TObject);
    procedure btnChitietPSClick(Sender: TObject);
    procedure btnInOutClick(Sender: TObject);
    procedure btnTSCDClick(Sender: TObject);
    procedure acTonghopExecute(Sender: TObject);
    procedure acUserManagerExecute(Sender: TObject);
    procedure acFindDocExecute(Sender: TObject);
    procedure dbtlDocTypeClick(Sender: TObject);
    procedure acRegForBillExecute(Sender: TObject);
    procedure acPlanPriceExecute(Sender: TObject);
    procedure acSalePriceExecute(Sender: TObject);
    procedure acNormLabourExecute(Sender: TObject);
    procedure acNormMaterialExecute(Sender: TObject);
    procedure acProductInfoExecute(Sender: TObject);
    procedure btnPhatsinhClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure acTemplateListExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure acSetUserRightExecute(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure acTinhgiathanhExecute(Sender: TObject);
    procedure acBuyPriceExecute(Sender: TObject);
    procedure bbWindowListClick(Sender: TObject);
    procedure bbWindowListGetData(Sender: TObject);
    procedure acEntrysExecute(Sender: TObject);
    procedure bbtnExportExcelClick(Sender: TObject);
    procedure bbtnExportHTMLClick(Sender: TObject);
    procedure bbtnExportXMLClick(Sender: TObject);
    procedure acBangCDPSExecute(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton80Click(Sender: TObject);
    procedure acObjectTypeExecute(Sender: TObject);
    procedure acCurrencyExecute(Sender: TObject);
    procedure acRateExecute(Sender: TObject);
    procedure acBalForeignExecute(Sender: TObject);
    procedure bbtnAutoHeightClick(Sender: TObject);
    procedure acDetailAriseNTExecute(Sender: TObject);
    procedure acItemListExecute(Sender: TObject);
    procedure acItemGroupExecute(Sender: TObject);
    procedure btnCalculatorClick(Sender: TObject);
    procedure bbtnPhieuKhongHopleClick(Sender: TObject);
    function LayPhieuKhongHople(AMinDocType:Smallint=0):Integer;
    procedure grdListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acOpenByTemplateExecute(Sender: TObject);
    procedure dbtlDocTypeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acDefRptLCTTExecute(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure bbtnTHCNNTClick(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure bbtnAssetAriseClick(Sender: TObject);
    procedure grdListColTempButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btnExportExcelClick(Sender: TObject);
    procedure btnCaydulieuClick(Sender: TObject);
    procedure btnTKPSClick(Sender: TObject);
    procedure btnDTPSClick(Sender: TObject);
    procedure btnHHPSClick(Sender: TObject);
    procedure btnTSPSClick(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure btnDMTSClick(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acNewDocByTemplateExecute(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure acReLoadRightExecute(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure bbtnNhacnhoClick(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure bbtnPXSXClick(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure acSetStatusActionsExecute(Sender: TObject);
    procedure bbtnPhanloaiCTClick(Sender: TObject);
    procedure acSearchDocExecute(Sender: TObject);
    procedure bbtnXemNhatkyClick(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure bbtnXemNhatkyBiXoaClick(Sender: TObject);
    procedure bbtnImportFromXLSClick(Sender: TObject);
    procedure dbtlDocTypeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton61Click(Sender: TObject);
    procedure bbtnExpandClick(Sender: TObject);
    procedure bbtnCollapseClick(Sender: TObject);
    procedure bbtnMsgClick(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure acCustomerExecute(Sender: TObject);
    procedure acGoodsExecute(Sender: TObject);
    procedure acChangePeriodExecute(Sender: TObject);
    procedure acCongtrinhExecute(Sender: TObject);
    procedure dedtCurDateExit(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure grdEntryListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure grdEntryListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PgeCtrlListChange(Sender: TObject);
    procedure grdEntryListDblClick(Sender: TObject);
    procedure grdEntryListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton44Click(Sender: TObject);
    procedure bbtnChitieuTCClick(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarButton82Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure bbtnLangDefaultClick(Sender: TObject);
    procedure bbtnLangVietNamClick(Sender: TObject);
    procedure bbtnLangEnglishClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnCNQHClick(Sender: TObject);
    procedure dxBarButton87Click(Sender: TObject);
    procedure dxBarButton90Click(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure bbtnYTPSClick(Sender: TObject);
    procedure bbtnYTPSVNDClick(Sender: TObject);
    procedure bbtnDocTypeInfoClick(Sender: TObject);
    procedure dxBarButton97Click(Sender: TObject);
    procedure bbtnHSCathangClick(Sender: TObject);
    procedure dxBarButton99Click(Sender: TObject);
    procedure bbtnHMPSClick(Sender: TObject);
    procedure dxBarButton101Click(Sender: TObject);
    procedure dxBarButton102Click(Sender: TObject);
    procedure dxBarButton110Click(Sender: TObject);
    procedure dxBarButton111Click(Sender: TObject);
    procedure dxBarButton114Click(Sender: TObject);
    procedure dxBarButton115Click(Sender: TObject);
    procedure dxBarButton116Click(Sender: TObject);
    procedure dxBarButton117Click(Sender: TObject);
    procedure bbtnScriptClick(Sender: TObject);
    procedure bbtnSQLEditorClick(Sender: TObject);
    procedure bbtnParamArisingClick(Sender: TObject);
    procedure bbtnParamBalanceClick(Sender: TObject);
    procedure bbtnQuestionClick(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton93Click(Sender: TObject);
    procedure dxBarButton94Click(Sender: TObject);
    procedure grdDetailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbtlDocTypeColumnSorting(Sender: TObject;
      Column: TdxTreeListColumn; var Allow: Boolean);
    procedure bbtnInvTypeClick(Sender: TObject);
    procedure bbtnHangKMClick(Sender: TObject);
    procedure acBeforeExitExecute(Sender: TObject);
    procedure bbtnCTGSClick(Sender: TObject);
    procedure bbtnDkyCTGSClick(Sender: TObject);
    procedure bbtnActiclePlanClick(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure bbtnOutNotLogicClick(Sender: TObject);
    procedure dxBarButton96Click(Sender: TObject);
    procedure dxBarButton98Click(Sender: TObject);
    procedure mnuDatabaseBK2Click(Sender: TObject);
    procedure mnuDatabaseBK1Click(Sender: TObject);
    procedure mnuDatabaseBK3Click(Sender: TObject);
    procedure ScrRestoreError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure ScrRestoreStatement(Sender: TIB_Script;
      var Statement: String; var SkipIt: Boolean);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarButton121Click(Sender: TObject);
    procedure mnuDynaReportClick(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure mnuDatabaseBK4Click(Sender: TObject);
    procedure mnuDatabaseBK5Click(Sender: TObject);
    procedure dxBarSDCTBDTYT2Click(Sender: TObject);
    procedure dxBarTMBCTCClick(Sender: TObject);
    procedure dxBarListUnitClick(Sender: TObject);
    procedure dxBarListUnitScaleClick(Sender: TObject);
    procedure bbtnTranferRecieveClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveRestoreDocClick(Sender: TObject);
    procedure pedtBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtBranchInitPopup(Sender: TObject);
    procedure acBranchExecute(Sender: TObject);
    procedure bbtnIdleListClick(Sender: TObject);
    procedure bbtnKQHDKDHVSClick(Sender: TObject);
    procedure bbtnRegAutoOutClick(Sender: TObject);
    procedure bbtnImportSamClick(Sender: TObject);
    procedure bbtnReportSamClick(Sender: TObject);
    procedure bbtntkcustClick(Sender: TObject);
    procedure bbtnThongkeTSClick(Sender: TObject);
    procedure bbtntln_costdeclareClick(Sender: TObject);
    procedure bbtnRegisterClick(Sender: TObject);
    procedure bbtnGroupMatNormClick(Sender: TObject);
    procedure bbtnDutoanvattuClick(Sender: TObject);
    procedure acCCDCExecute(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure dxBarButton122Click(Sender: TObject);
  private
    ErrRestoreCount,RestoreCount:Integer;
    SPDraging:Widestring;// Dung de chua so phieu dang drag, chuyen loai
    LoaiPhieuDraging:Integer;// Dung de chua loai phieu dang drag
    IsFirstActive:Boolean;
    bRefresh :boolean;
    { Private declarations }
    pMDIChildCount:Integer;

    procedure WMDIChildCount(AValue:integer);
  public

    { Public declarations }
    property MyMDIChildCount:Integer Read pMDIChildCount Write WMDIChildCount;
  end;

var
  MainFrm: TMainFrm;
implementation

uses AccountListForm, QuyettoanthueTNDN,
  CustumizeIntefaceForm, Functions,  HSCTForm, MainDataMdl,
  WarehouseForm, AccBalDetail,  ChangePass, LoginForm,
  AnalysisFrm, AssetListForm, RegAllocateForm,
  RegTransferForm, AccountArise, OptionForm, InstockForm,
  MaterialUnfinishForm, AccDetailArise, InOutForm, ParamsForm,
  GlobalUnit, TonghopForm,
  UserManagerForm, SearchForm, RegForBillForm,
  PlanPriceForm, SalePriceForm, LabourNormForm, MaterialNormForm,
  ProductInfoForm, TemplateListForm, PopupForm,
  TinhGTSPForm, BuyPriceForm,
  EntrysForm, SoduTKForm, ObjectTypeForm, CurrencyForm, RateForm, BalDetailForeign,
  AccDetailAriseNT, LookupFrm, GlobalInterface,
  DocListForm, Types, DefRptLCTTForm,
  DefRptBCDKTForm, DefRptKQHDKDBForm, AccountAriseNT, BeginForeign,
  AssetAriseForm, OtherNormForm, GroupListForm,
  ObjectForm, DocTypeForm, SearchDlgForm, BeginAssetForm,
  BeginAccountForm, ThongkeForm, ThongkeTKForm,
  ThongkeTCForm, ThongkeHMForm, ThongkeTKPSForm,
  DocFullForm, MsgListForm, InOutTypeForm,
  DocTempForm, DateUtils,
  WorkListForm, DefEntrysForm,
  RegAutoOutForm, BeginGoodObj, FinStardardForm,
  TonghopCPGTForm, HESOPBCPGTForm, ProductForm,
  CNQuahanForm, AccDetailForm, AccOptForm, BudgetForm,
  CPDodangForm, BalObjFactorForm, BalFactorForeign, FactorAriseNT,
  FactorArise, HeSoDoiHangForm, ActicleGroupForm, ActicleForm, DefRptKQHDKDForm,
  ActicleAriseForm, GroupNormForm, ObjDocBeginBalForm, DefRptTHKQHDKDFrm,
  TMBCTC_35Form, TMBCTC_36Form, TMBCTC_37Form, TMBCTC_4Form,
  DocTypeInfoForm, ScriptForm, SQLTesterForm, ParamArisingForm,
  ParamBalanceForm, QuestionForm, KETQUAPBCPForm, CHITIETCHIPHIForm, CHITIETPHANBOForm,
  TAPHOPCHIPHIForm, CHITIETPBSPForm, InvoiceTypeForm,
  PromotionScaleForm, ChungtuGhisoForm, ButtoanCTGSForm,
  ActiclePlanForm, ThongkeBALForm, AutoEntryForm, AutoTypesForm,
  BackupForm, VATTypeForm, ReportListForm, AboutForm, ImportForm,
  NewBackupFrm, BalObjFactor1Form, ThuyetminhBCTC, UnitForm, UnitScaleForm,
  TransferReciveForm,SaveRestoreDocForm,BranchForm, IdleJobForm,HVSKQHDKDForm,
  DefbaocaosamForm,ImportSamform,Thongke10khform,ThongkeTysuatForm,tln_costdeclareform,
  ThongbaoForm,MaterialProForm,CostUnfinishForm,REgisterform,groupmatnormform,
  materialestimateform , CCDCForm, XoaDLImportForm, ReportTHForm;


{$R *.dfm}

procedure TMainFrm.acCustomizeExecute(Sender: TObject);
begin
  with TFormCustumizeInteface.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acAccountListExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with TAccountListFrm.Create(Self) do
  try
    Screen.Cursor := crDefault;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acHSCTExecute(Sender: TObject);
begin
  with THSCTFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  if isLoginOK=False then
  begin
    Application.Terminate;
    exit;
  end;

  
  IsFirstActive:=True;
  bbtnLangDefault.Down:=False;
  bbtnLangVietNam.Down:=False;
  bbtnLangEnglish.Down:=False;
  case CurLanguage of
    0: bbtnLangDefault.Down:=True;
    1: bbtnLangVietNam.Down:=True;
    else bbtnLangEnglish.Down:=True;
  end;
  if CurLanguage=2 then
    dbtlDocTypeDOCTYPE_NAME.FieldName:='ENGLISH_NAME'
  else
    dbtlDocTypeDOCTYPE_NAME.FieldName:='DOCTYPE_NAME';


  UScreenHeight:= Screen.DesktopHeight;
  UScreenWidth:= Screen.DesktopWidth;

  SetOnFormCreate(Self,0);

  grdList.Font.Size:=optFontSize;
  grdListColST.SummaryFooterFormat:=TIENTE_FORMAT;

  //Set grid color
  grdList.GroupNodeColor := $00F2F2F0; // Thinh them 2007/01
  grdEntryList.GroupNodeColor := $00F2F2F0; // Thinh them 2007/01

  {Timer1.Interval:=optCheckMsgPeriod*60*1000;

  if optCheckMsgOnLoad then
  with MainDM.qryMsg do
  begin
    ParamByName('UserName').Value:=CurrentUser;
    Open;
    if RecordCount>0 then
    begin
      BarStaticMsg.Caption:=UTF8Decode('Có tin mới');
    end;
    Close;
  end;}

  dedtCurDate.Date:=WorkingDate;
  ElFormCaption1.Texts[1].Caption := IntToStr(CurMonth)+'/'+IntToStr(CurYear);
  ElFormCaption1.Texts[4].Caption := vpBranch_Name;

  BarStaticUserName.Caption := FullUserName;
  BarStaticDB.Caption := MainDM.cnMain.Database;
  if LockingData then
    BarStaticStatus.Caption :=UTF8Decode('Khóa sổ');

  MyMDIChildCount :=0;
  with MainDM do
  begin
    {qryDocType.ParamByName('GROUP_ID').Value := CurrentGroup;
    qryDocType.ParamByName('USERNAME').Value := CurrentUser;
    qryDocType.ParamByName('BRANCH_ID').Value := vpBranch_id;}
    qryDocType.Open;
    if qryDocType.RecordCount=0 then
    begin
      dbtlDocType.Enabled := False;
    end
    else
    begin
      qryTemplateList.Open;
      dbtlDocType.Enabled := True;
      qryDocList.ParamByName('KYHT').Value :=CurrentPeriod;
      qryDocList.Open;
      qryEntryList.ParamByName('KYHT').Value :=CurrentPeriod;
      qryEntryList.Open;
      qryDinhkhoan.Open;

    end;
    //Thinh them
      qryBranchMain.Open;
      qryBranchMain.locate('BRANCH_ID',vpLoginBranch,[]);
      qryBranch.Open;
      //-------------------------
  end;
  //Thinh them
  
  MainDm.qryTransferInfo.Open;
  vpIsFormTROpening :=FALSE;
  vpIsTransfered:=FALSE;

  acSetUserRight.Execute;

  if prmAllowChangeType=0 then
    grdList.DragMode :=dmManual
  else
    grdList.DragMode :=dmAutomatic;
end;

procedure TMainFrm.acWarehouseExecute(Sender: TObject);
begin
  with TWarehouseFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acAccDetailExecute(Sender: TObject);
begin
  with  TAccBalDetailFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acToolsBarExecute(Sender: TObject);
begin
  dxBarManager1.Bars[1].Visible:=not dxBarManager1.Bars[1].Visible;
  //PnlToolsBar.Visible := not PnlToolsBar.Visible;
  dxBarButton81.Enabled:=Not dxBarButton32.Down;
end;

procedure TMainFrm.btnDMHHClick(Sender: TObject);
begin
  acGoods.Execute;
end;

procedure TMainFrm.mniChgPwdClick(Sender: TObject);
begin
  with TChangePassFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.mniExitClick(Sender: TObject);
begin
  acBeforeExit.Execute;
  
  Application.Terminate;
end;

procedure TMainFrm.acEditDocExecute(Sender: TObject);
begin
  //if vpBranch_IsMin <> 1 then exit;
  if PnlMain.Visible=False then exit;
  with MainDM do

  if PgeCtrlList.ActivePageIndex=0 then
  begin
    if qryDocListDOC_ID.IsNull then exit;

    BeginLoadDocID:=qryDocListDOC_ID.Value;
    BeginLoadPeriodID:=qryDocListPERIOD_ID.Value;
    qryBgDocList:=qryDocList;
    DocIDFieldName:='DOC_ID';
    PeriodFieldName:='PERIOD_ID';
    BranchIDFieldName := 'BRANCH_ID';
    BeginLoadBranchId := qryDocListBRANCH_ID.Value;
    vpDocBranch_id := qryDocListBRANCH_ID.Value;
  end
  else
  begin
    if qryEntryListDOC_ID.IsNull then exit;

    BeginLoadDocID:=qryEntryListDOC_ID.Value;
    BeginLoadPeriodID:=qryEntryListPERIOD_ID.Value;
    BeginLoadBranchId := qryEntryListBRANCH_ID.Value;
    vpDocBranch_id := qryEntryListBRANCH_ID.Value;
    qryBgDocList:=qryEntryList;
    DocIDFieldName:='DOC_ID';
    PeriodFieldName:='PERIOD_ID';
    BranchIDFieldName := 'BRANCH_ID';
  end;

  IsPosted:=False;
  Screen.Cursor := crHourGlass;


    with TDocFullFrm.Create(Self) do
    try
      Screen.Cursor := crDefault;
      ShowModal;
    finally
      Free;
    end;
  if IsPosted then
  begin
    MainDM.qryDocList.DisableControls;
    MainDM.qryDocList.Refresh;
    MainDM.qryDocList.EnableControls;

    MainDM.qryDinhkhoan.Refresh;

    if MainDM.qryEntryList.Active then
    begin
      MainDM.qryEntryList.DisableControls;
      MainDM.qryEntryList.Refresh;
      MainDM.qryEntryList.EnableControls;
    end;
    
    acSetStatusActions.Execute;
  end;
end;

procedure TMainFrm.dbtlDocTypeDblClick(Sender: TObject);
begin
  acNewDoc.Execute;
end;

procedure TMainFrm.grdListDblClick(Sender: TObject);
begin
  if acEditDoc.Enabled then
    acEditDoc.Execute;
end;

procedure TMainFrm.FormShow(Sender: TObject);
begin
  acSetStatusActions.Execute;
  SetVisible(Self);

  grdList.LoadFromRegistry(RMAIN_KEY+'\MainFrm\grdList');
  grdEntryList.LoadFromRegistry(RMAIN_KEY+'\MainFrm\grdEntry');
  grdDetail.LoadFromRegistry(RMAIN_KEY+'\MainFrm\grdDetail');

   //Thinh them
  if vpBranch_IsMin = 1 then
  begin
    grdListBRANCH_NAME.GroupIndex := -1;
    grdListBRANCH_NAME.visible := FALSE;
    grdEntryListBRANCH_NAME.GroupIndex := -1;
    grdEntryListBRANCH_NAME.Visible := FALSE;
  end
  else
  begin
    grdListBRANCH_NAME.GroupIndex := 0;
    grdEntryListBRANCH_NAME.GroupIndex := 0;
  end;

  PgeCtrlList.ActivePage := ElTabSheet1;


  grdList.FullExpand;
  grdEntryList.FullExpand;

end;

procedure TMainFrm.dbtlDocTypeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  with dbtlDocType.FocusedNode do
  if HasChildren then
  begin
    Accept := False;
    if not Expanded then
      Expand(True);
  end
  else
    if Source = grdList then
      Accept := True;
end;

procedure TMainFrm.grdListStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  with MainDM do
  begin
    if qryDocList.RecordCount=0 then exit;

    SPDraging := qryDocListDOC_ID.Value;
    LoaiPhieuDraging := qryDocListDOCTYPE_ID.AsInteger;
  end;
end;

procedure TMainFrm.dbtlDocTypeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if vpBranch_IsMin <> 1 then exit; 
  if prmAllowChangeType=0 then
  begin
    ShowMessageUnicode(1);
    exit;
  end;
  if LoaiPhieuDraging=MainDM.qryDocTypeDOCTYPE_ID.AsInteger then
    exit;
  if (MainDM.qryDocTypeHASCHILD.AsInteger>0) then exit;
  with MainDM do
  if Source=grdList then
  begin
    qryUpdLoaiPhieu.ParamByName('doc_id').Value:= SPDraging;
    qryUpdLoaiPhieu.ParamByName('period_id').Value :=CurrentPeriod;
    qryUpdLoaiPhieu.ParamByName('doctype_id').AsInteger:= qryDocTypeDOCTYPE_ID.AsInteger;
    qryUpdLoaiPhieu.ExecSQL;
    qryUpdLoaiPhieu.Close;
    qryDocList.Refresh;
    if qryEntryList.Active then
      qryEntryList.Refresh;
    qryDinhkhoan.Refresh;
    acSetStatusActions.Execute;
  end;
end;

procedure TMainFrm.btnDMTKClick(Sender: TObject);
begin
  acAccountList.Execute;
end;

procedure TMainFrm.btnDMKHClick(Sender: TObject);
begin
  acCustomer.Execute;
end;

procedure TMainFrm.acReportExecute(Sender: TObject);
begin
  if isExpired then
  begin
    ShowMessageUnicode(2);
    exit;
  end;

  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAnalystFrm, AnalystFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.btnRptClick(Sender: TObject);
begin
  acReport.Execute;
end;

procedure TMainFrm.acTSCDExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAssetListFrm,AssetListFrm);
  Screen.Cursor := crDefault;
end;
procedure TMainFrm.WMDIChildCount(AValue:integer);
begin
  pMDIChildCount:=AValue;
  PnlMain.Visible := (pMDIChildCount=0);

  if bbWindowList.Items.Count=0 then
    ElFormCaption1.Texts[2].Caption:='';
end;

procedure TMainFrm.acRegTransferExecute(Sender: TObject);
begin
  with TAutoEntryFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
  {with TRegTransferFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;}
end;

procedure TMainFrm.acRegAllocateExecute(Sender: TObject);
begin
  with TRegAllocateFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acNewDocExecute(Sender: TObject);
begin
  if vpBranch_IsMin <> 1 then exit;

  if NotUnLockData(CurrentPeriod,0) then Abort;

  if PnlMain.Visible=False then exit;
  
  if MainDM.qryDocTypeALLOWINSERT.AsInteger=0 then
  begin
    ShowMessageUnicode(3);
    exit;
  end;

  qryBgDocList:=MainDM.qryDocList;
  DocIDFieldName:='DOC_ID';
  PeriodFieldName:='PERIOD_ID';


  Screen.Cursor := crHourGlass;
  BeginLoadDocID:='';
  BeginLoadPeriodID:=CurrentPeriod;
  
    with TDocFullFrm.Create(Self) do
    try
      Screen.Cursor := crDefault;
      ShowModal;
    finally
      Free;
    end;
    
  MainDM.qryDocList.Refresh;
  MainDM.qryDinhkhoan.Refresh;
  if MainDM.qryEntryList.Active then
    MainDM.qryEntryList.Refresh;
  acSetStatusActions.Execute;
end;

procedure TMainFrm.acDelDocExecute(Sender: TObject);
begin
  if MainDM.qryDocTypeALLOWDELETE.AsInteger =0 then
  begin
    ShowMessageUnicode(4);
    exit;
  end;

  if MainDM.qryDocList.RecordCount>0 then
    MainDM.qryDocList.Delete;
  grdList.SetFocus;
end;

procedure TMainFrm.dbtlDocTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    acNewDoc.Execute
  else
    ProcessKeyDownInTreeList(dbtlDocType, Key, Shift);
end;

procedure TMainFrm.acShowDataExecute(Sender: TObject);
begin
  PnlMain.Visible := True;
  if MainDM.qryDocType.RecordCount>0 then
    dbtlDocType.SetFocus;
end;

procedure TMainFrm.grdListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Delete then
  begin
    if mainDM.qryDocList.RecordCount>0 then
    acDelDoc.Execute;
  end
  else if Key=VK_Return then
  begin
    if acEditDoc.Enabled then
      acEditDoc.Execute;
  end
  else
    ProcessKeyDownInGrid(grdList, Key, Shift, False);
end;

procedure TMainFrm.dbtlDocTypeChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  grdListColTemp.DisableEditor := MainDM.qryDocListTEMPLATE_ID.IsNull;
  if ((grdListColTemp.DisableEditor = False) and (SSPUserRight[21].ER=False)) then
    grdListColTemp.DisableEditor := True;

  dbtlDocType.OptionsView:=dbtlDocType.OptionsView+[etoRowSelect];
  acSetStatusActions.Execute;
end;

procedure TMainFrm.grdListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  if PgeCtrlList.ActivePageIndex=0 then
    bbtnDeleteDoc.Visible:=ivAlways
  else
    bbtnDeleteDoc.Visible:=ivNever;

  pmGrid.PopupFromCursorPos;
end;

procedure TMainFrm.acAccountAriseExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAccountAriseFrm, AccountAriseFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.acOptionExecute(Sender: TObject);
begin
  with TOptionFrm.Create(Self) do
    try
      if ShowModal=mrOK then
        MainDM.acFormatData.Execute;
    finally
      Free;
    end;
  if dedtCurDate.Date=EndOfTheMonth(dedtCurDate.Date) then
  begin
    dedtCurDate.Date:=dedtCurDate.Date-1;
    dedtCurDate.Date:=dedtCurDate.Date+1;
  end
  else
  begin
    dedtCurDate.Date:=dedtCurDate.Date+1;
    dedtCurDate.Date:=dedtCurDate.Date-1;
  end;
end;

procedure TMainFrm.acInstockExecute(Sender: TObject);
begin
  with TInstockFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acMaterialUnfinishExecute(Sender: TObject);
begin
  with TMaterialUnfinishFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acDetailAriseExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAccDetailAriseFrm, AccDetailAriseFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.acInOutExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TInOutFrm, InOutFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.acSetParamExecute(Sender: TObject);
var
  kq:Integer;
begin
  with TParamsFrm.Create(Self) do
    try
      kq:=ShowModal;
    finally
      Free;
    end;

  if kq=mrCancel then exit;

  mnuSetBegin.Enabled := SSPUserRight[1].RR;
  if mnuSetBegin.Enabled then
    mnuSetBegin.Enabled := (CurrentPeriod=BeginPeriod);

  if prmAllowChangeType=0 then
    grdList.DragMode :=dmManual
  else
    grdList.DragMode :=dmAutomatic;
end;

procedure TMainFrm.btnChitietPSClick(Sender: TObject);
begin
  acDetailArise.Execute;
end;

procedure TMainFrm.btnInOutClick(Sender: TObject);
begin
  acInOut.Execute;
end;

procedure TMainFrm.btnTSCDClick(Sender: TObject);
begin
  acTSCD.Execute;
end;

procedure TMainFrm.acTonghopExecute(Sender: TObject);
begin
  if LayPhieuKhongHople(100) > 0 then exit;

  with MainDM do
  begin
    qryCommon.Close;
    qryCommon.SQL.Clear;
    qryCommon.SQL.Text := 'select sum(begin_debit-begin_credit) DK from account_bal where period_id = :KYHT and account_id not starting with ''0''';
    qryCommon.ParamByName('KYHT').Value := CurrentPeriod;
    qryCommon.Open;
    if abs(qryCommon.FieldByName('DK').AsFloat) >= 10 then
    begin
      ShowMessageUnicode(5);
      qryCommon.Close;
      exit;
    end;
  end;

  with TTonghopFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acUserManagerExecute(Sender: TObject);
begin
  with TUserManagerFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acFindDocExecute(Sender: TObject);
begin
  with TSearchFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.dbtlDocTypeClick(Sender: TObject);
begin
  if dbtlDocType.FocusedNode.HasChildren then
  begin
    if dbtlDocType.FocusedNode.Expanded then
      dbtlDocType.FocusedNode.Collapse(True)
    else
      dbtlDocType.FocusedNode.Expand(True);
  end;
  grdList.FullExpand;
  grdEntryList.FullExpand;
end;

procedure TMainFrm.acRegForBillExecute(Sender: TObject);
begin
  with TRegForBillFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acPlanPriceExecute(Sender: TObject);
begin
  with TPlanPriceFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acSalePriceExecute(Sender: TObject);
begin
  with TSalePriceFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acNormLabourExecute(Sender: TObject);
begin
  with TLabourFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acNormMaterialExecute(Sender: TObject);
begin
  with TMaterialNormFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acProductInfoExecute(Sender: TObject);
begin
  with TProductInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.btnPhatsinhClick(Sender: TObject);
begin
  acAccountArise.Execute;
end;

procedure TMainFrm.btnSearchClick(Sender: TObject);
begin
  acFindDoc.Execute;
end;

procedure TMainFrm.acTemplateListExecute(Sender: TObject);
begin
{  if PnlMain.Visible=False then exit;
  
  Screen.Cursor := crHourGlass;
  IsPosted:=False;
  with TTemplateListFrm.Create(Self) do
  try
    Screen.Cursor := crDefault;
    ShowModal;
  finally
    Free;
  end;
  if IsPosted then
  begin
    MainDM.qryDocList.DisableControls;
    MainDM.qryDocList.Refresh;
    MainDM.qryDocList.EnableControls;
    MainDM.qryDinhkhoan.Refresh;
    if MainDM.qryEntryList.Active then
      MainDM.qryEntryList.Refresh;
    acSetStatusActions.Execute;
  end;           }
end;

procedure TMainFrm.SpeedButton4Click(Sender: TObject);
begin
  acShowData.Execute;
end;

procedure TMainFrm.acSetUserRightExecute(Sender: TObject);
begin
  if CurrentUser='SSPAdmin' then
    btnExeSQL.Visible := ivAlways
  else
    btnExeSQL.Visible := ivNever;

  // Right on button report;
  Maindm.qryCommon.SQL.Clear;
  Maindm.qryCommon.Params.Clear;
  Maindm.qryCommon.SQL.Text := 'select has_right from SP_GETEXIST_REPORT_USER(:username,:group_id,:BRANCH_ID)';
  Maindm.qryCommon.ParamByName('GROUP_ID').Value := CurrentGroup;
  Maindm.qryCommon.ParamByName('USERNAME').Value := CurrentUser;
  Maindm.qryCommon.ParamByName('BRANCH_ID').Value := vpBranch_id;
  Maindm.qryCommon.open;
  if Maindm.qryCommon.FieldByName('has_right').Value = 0 then
    acReport.Enabled := FALSE
  else
    acReport.Enabled := TRUE;

  acFinddoc.Enabled := (Maindm.qryDocType.RecordCount <> 0);
  dxBarButton98.enabled := (Maindm.qryDocType.RecordCount <> 0);
  acSearchDoc.Enabled := (Maindm.qryDocType.RecordCount <> 0);
  //Right for Brand_ismin =1
  mnuSetBegin.Enabled := (SSPUserRight[1].RR) {and (vpBranch_IsMin = 1) chuyen sang readonly};

  if mnuSetBegin.Enabled then
    mnuSetBegin.Enabled := (CurrentPeriod=BeginPeriod);

  mniSetNorms.Enabled := (SSPUserRight[5].RR) and (vpBranch_IsMin = 1); //Phan he gia thanh san pham

  if MainDM.qryBranchMain.RecordCount = 1 then
    pedtBranch.Enabled := FALSE;

  //Right for Brand_ismin =0 and 1
  bbtnRegAutoOut.Enabled := (SSPUserRight[6].RR) ;
  bbtnRegEntrys.Enabled := (SSPUserRight[6].RR) ;

  bbtnHSCathang.Enabled := SSPUserRight[6].RR ;
//  bbtnHangKM.Enabled := SSPUserRight[6].RR ;
  bbtnDkyCTGS.Enabled := SSPUserRight[6].RR ;
  bbtnCTGS.Enabled := SSPUserRight[6].RR;
  bbtnSQLEditor.Enabled := SSPUserRight[6].IR and SSPUserRight[6].ER and SSPUserRight[6].DR ;
  bbtnScript.Enabled := bbtnSQLEditor.Enabled;
  acHSCT.Enabled :=SSPUserRight[2].RR;
  acUserManager.Enabled := SSPUserRight[4].RR;
  acTSCD.Enabled := (SSPUserRight[3].RR) ; //Danh sach tai san co dinh
  bbtnDefRpts.Enabled := SSPUserRight[6].RR; // Dinh nghia bao cao CDKT, LCTT, ...
  bbtnChitieuTC.Enabled := SSPUserRight[6].RR;
  bbtnBCTMTC.Enabled := SSPUserRight[6].RR; //
  bbtnParamBalance.Enabled := SSPUserRight[6].RR; // Cac tham so dua tren so du
  bbtnParamArising.Enabled := SSPUserRight[6].RR; // Cac tham so dua tren so PS
  acTemplateList.Enabled := SSPUserRight[20].RR;
  bbtnPhanloaiCT.Enabled := SSPUserRight[19].RR ;
  bbtnDocTypeInfo.Enabled := SSPUserRight[19].RR;
  acAccountList.Enabled := SSPUserRight[7].RR;
  bbtnMsg.Enabled := (SSPUserRight[6].RR);
  acSetParam.Enabled := (SSPUserRight[6].RR);
  bbtnQuestion.Enabled := SSPUserRight[6].RR;

  acCustomer.Enabled := SSPUserRight[9].RR;
  acAssetGrp.Enabled := SSPUserRight[3].RR;
  acGoods.Enabled := SSPUserRight[10].RR;
  acGoodsGrp.Enabled := SSPUserRight[10].RR;
  acWarehouse.Enabled := SSPUserRight[11].RR;
  acCongtrinh.Enabled := SSPUserRight[11].RR;
  acItemList.Enabled := SSPUserRight[11].RR;
  bbtnActiclePlan.Enabled := SSPUserRight[11].RR;
  bbtnInvType.Enabled := SSPUserRight[11].RR;
  acItemGroup.Enabled := SSPUserRight[11].RR;
  acUnit.Enabled := SSPUserRight[11].RR;
  acBranch.Enabled := SSPUserRight[11].RR;
  acAccountArise.Enabled := SSPUserRight[12].RR;
  acEntrys.Enabled := SSPUserRight[12].RR;
  acDetailArise.Enabled := SSPUserRight[12].RR;
  acDetailAriseNT.Enabled := SSPUserRight[12].RR;
  acInOut.Enabled := SSPUserRight[12].RR;
  acTonghop.Enabled := SSPUserRight[13].RR;
  acSalePrice.Enabled := SSPUserRight[5].RR;
  acTinhgiathanh.Enabled :=SSPUserRight[5].RR;
  acObjectType.Enabled  :=SSPUserRight[8].RR;
  acCurrency.Enabled  :=SSPUserRight[11].RR;
  acRate.Enabled  :=SSPUserRight[11].RR;
  dxBarListUnit.Enabled  :=SSPUserRight[11].RR;
  bbtnPXSX.Enabled :=SSPUserRight[11].RR;
  bbtnXemNhatky.Enabled:=SSPUserRight[15].RR and prmUseDocumentLog;
  bbtnXemNhatkyBiXoa.Enabled:=SSPUserRight[15].RR and prmUseDocumentLog;
  //Thinh them ----
  bbtnTranferRecieve.Enabled := SSPUserRight[25].RR; //Thinh them
  timer2.Enabled := SSPUserRight[25].RR;

{  mnuDynaReport.Enabled := SSPUserRight[23].RR;
  mnuDatabaseBK1.Enabled := SSPUserRight[24].RR;
  mnuDatabaseBK2.Enabled := SSPUserRight[24].RR;
  mnuDatabaseBK3.Enabled := SSPUserRight[24].RR;
  mnuDatabaseBK4.Enabled := SSPUserRight[24].RR;
  mnuDatabaseBK5.Enabled := SSPUserRight[24].RR;     }
  btnSaveRestoreDoc.Enabled := SSPUserRight[24].RR;
  //---------------
  bbtnTHCNNT.Enabled := acAccountArise.Enabled;
  acBangCDPS.Enabled := acAccountArise.Enabled;
  bbtnYTPS.Enabled := acAccountArise.Enabled;
  bbtnYTPSVND.Enabled := acAccountArise.Enabled;
  bbtnHMPS.Enabled := acAccountArise.Enabled;
  bbtnCNQH.Enabled := acAccountArise.Enabled;
  bbtnCN131.Enabled := acAccountArise.Enabled;
  bbtnPhieuKhongHople.Enabled := acAccountArise.Enabled;
//  bbtnOutNotLogic.Enabled := acAccountArise.Enabled and (prmPPXUATKHO>1);
  bbtnOutNotLogic.Enabled := acAccountArise.Enabled;
  bbtnThongke.Enabled := acAccountArise.Enabled;
  bbtnNhacnho.Enabled := acAccountArise.Enabled;

  bbtnAssetArise.Enabled := acDetailArise.Enabled;

  btnTKPS.Enabled := acAccountArise.Enabled;
  btnDTPS.Enabled := acDetailArise.Enabled;
  btnHHPS.Enabled := acInOut.Enabled;
  btnTSPS.Enabled := acDetailArise.Enabled;
  btnDMTK.Enabled := acAccountList.Enabled;
  btnDMKH.Enabled := acCustomer.Enabled;
  btnDMHH.Enabled := acGoods.Enabled;
  btnDMTS.Enabled := acTSCD.Enabled;
  btnSearch.Enabled := acFindDoc.Enabled;
  btnReport.Enabled:=acReport.Enabled;

end;

procedure TMainFrm.dxBarButton12Click(Sender: TObject);
begin
  //MainDM.sspLicense1.ShowAbout;
  with TAboutFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acTinhgiathanhExecute(Sender: TObject);
begin
  with TTinhGTSPFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acBuyPriceExecute(Sender: TObject);
begin
  with TBuyPriceFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbWindowListClick(Sender: TObject);
begin
  PnlMain.Visible:=False;
  with bbWindowList do
  begin
    TCustomForm(Items.Objects[ItemIndex]).Show;
    ElFormCaption1.Texts[2].Caption:=' - ' + Items.Strings[ItemIndex];
  end;
end;

procedure TMainFrm.bbWindowListGetData(Sender: TObject);
begin
   with bbWindowList do
   ItemIndex := Items.IndexOfObject(ActiveMDIChild);
end;

procedure TMainFrm.acEntrysExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TEntrysFrm, EntrysFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.bbtnExportExcelClick(Sender: TObject);
begin
  if PgeCtrlList.ActivePageIndex=0 then
    ExportToExcel(grdList)
  else
    ExportToExcel(grdEntryList);
end;

procedure TMainFrm.bbtnExportHTMLClick(Sender: TObject);
begin
  if PgeCtrlList.ActivePageIndex=0 then
    ExportToHTML(grdList)
  else
    ExportToHTML(grdEntryList);
end;

procedure TMainFrm.bbtnExportXMLClick(Sender: TObject);
begin
  if PgeCtrlList.ActivePageIndex=0 then
    ExportToXML(grdList)
  else
    ExportToXML(grdEntryList);
end;

procedure TMainFrm.acBangCDPSExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TSoduTKFrm,SoduTKFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.dxBarButton11Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm',HH_DISPLAY_TOPIC,0)=0 then
//  if ShellExecute(Application.Handle, 'Open',PAnsiChar(ApplicationDir+'\HelpAccounting.htm'), '', '', 0) = 0 then
    ShowMessageUnicode(182);
end;

procedure TMainFrm.dxBarButton80Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/gioithieu.htm',HH_DISPLAY_TOPIC,0)=0 then
// if ShellExecute(Application.Handle, 'Open',PAnsiChar(ApplicationDir+'\HelpAccounting.htm'), '', '', 0) = 0 then
    ShowMessageUnicode(182);
end;

procedure TMainFrm.acObjectTypeExecute(Sender: TObject);
begin
  with TObjectTypeFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acCurrencyExecute(Sender: TObject);
begin
  with TCurrencyFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acRateExecute(Sender: TObject);
begin
  with TRateFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acBalForeignExecute(Sender: TObject);
begin
  with TBalForeignFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnAutoHeightClick(Sender: TObject);
begin
  if bbtnAutoHeight.Down then
    grdList.OptionsView := grdList.OptionsView + [edgoRowAutoHeight]
  else
    grdList.OptionsView := grdList.OptionsView - [edgoRowAutoHeight];
end;

procedure TMainFrm.acDetailAriseNTExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAccDetailAriseNTFrm, AccDetailAriseNTFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.acItemListExecute(Sender: TObject);
begin
  with TActicleFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acItemGroupExecute(Sender: TObject);
begin
  with TActicleGroupFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.btnCalculatorClick(Sender: TObject);
var
  cfr: TCustomFileRun;
begin
  cfr := TCustomFileRun.Create(Self);
  cfr.FileName := 'calc.exe';
  cfr.Execute;
  cfr.Free
end;

procedure TMainFrm.bbtnPhieuKhongHopleClick(Sender: TObject);
begin
  //if LayPhieuKhongHople(0)=0 then
  if LayPhieuKhongHople(100)=0 then
    ShowMessageUnicode(6);
end;

function TMainFrm.LayPhieuKhongHople(AMinDocType:Smallint=0):Integer;
var sqlSel:Widestring;
begin
  Screen.Cursor := crHourGlass;
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    sqlSel :='SELECT DOC_ID,PERIOD_ID,DOCTYPE_ID,DOC_DATE,DOC_PERSON,DOC_VOUCHER,'+
    'DOC_TOTAL , DOC_NOTES , object_id,object_name, branch_id from sp_getdoc_notlogic('+ IntToStr(CurrentPeriod) + ', :branch_id ) where DOCTYPE_ID>:MINDOCTYPE order by doc_id';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('MINDOCTYPE').AsInteger:=AMinDocType;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').value:=vpBranch_id;
    qryDocListAnyWhere.Open;

    Result:=qryDocListAnyWhere.RecordCount;
    if Result=0 then
    begin
      qryDocListAnyWhere.Close;
      Screen.Cursor := crDefault;
      Exit;
    end;
  end;
  with MainDM do
  if Result=1 then
  begin
    Screen.Cursor := crDefault;
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.ElFormCaption1.Texts[0].Caption:=UTF8Decode('Danh sách phiếu không hợp lệ');
    DocListFrm.colLoaiKhonghople.Visible:=True;
    Screen.Cursor := crDefault;
    DocListFrm.ShowModal;
    DocListFrm.colLoaiKhonghople.Visible:=False;
  finally
    DocListFrm.Free;
  end;
end;

procedure TMainFrm.grdListChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  grdListColTemp.DisableEditor := MainDM.qryDocListTEMPLATE_ID.IsNull;

  if ((grdListColTemp.DisableEditor = False) and (SSPUserRight[21].ER=False)) then
    grdListColTemp.DisableEditor := True;

  acSetStatusActions.Execute;
end;

procedure TMainFrm.acOpenByTemplateExecute(Sender: TObject);
begin
  with MainDM do
  begin
    if PgeCtrlList.ActivePageIndex=0 then
    begin
      if qryDocListTEMPLATE_ID.IsNull then exit;
      if Not qryTemplateList.Locate('TEMPLATE_ID',qryDocListTEMPLATE_ID.AsInteger,[]) then
      begin
        ShowMessageUnicode(7);
        Exit;
      end;
      Screen.Cursor := crHourGlass;
      ReadTemplateInfo;

      CurTemp.SOPHIEUBD := qryDocListDOC_ID.Value;
      CurTemp.KYHTBD    := qryDocListPERIOD_ID.Value;
    end
    else
    begin
      if qryEntryListTEMPLATE_ID.IsNull then exit;
      if Not qryTemplateList.Locate('TEMPLATE_ID',qryEntryListTEMPLATE_ID.AsInteger,[]) then
      begin
        ShowMessageUnicode(7);
        Exit;
      end;
      Screen.Cursor := crHourGlass;
      ReadTemplateInfo;

      CurTemp.SOPHIEUBD := qryEntryListDOC_ID.Value;
      CurTemp.KYHTBD    := qryEntryListPERIOD_ID.Value;
    end
  end;

  with TDocTempFrm.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
  if IsPosted then
  begin
    MainDM.qryDocList.DisableControls;
    MainDM.qryDocList.Refresh;
    MainDM.qryDocList.EnableControls;
    MainDM.qryDinhkhoan.Refresh;

    if MainDM.qryEntryList.Active then
    begin
      MainDM.qryEntryList.DisableControls;
      MainDM.qryEntryList.Refresh;
      MainDM.qryEntryList.EnableControls;
    end;
  end;
  acSetStatusActions.Execute;
end;

procedure TMainFrm.dbtlDocTypeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Parent =nil then
  begin
    AFont.Size := optFontSize;

    AFont.Style :=[fsBold];
  end;
end;

procedure TMainFrm.acDefRptLCTTExecute(Sender: TObject);
begin
  with TDefRptLCTTFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.dxBarButton4Click(Sender: TObject);
begin
  with TDefRptBCDKTFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.dxBarButton39Click(Sender: TObject);
begin
  with TDefRptKQHDKDBFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnTHCNNTClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAccountAriseNTFrm, AccountAriseNTFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.dxBarButton53Click(Sender: TObject);
begin
  with TBeginForeignFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnAssetAriseClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAssetAriseFrm, AssetAriseFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.grdListColTempButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if MainDM.qryDocListTEMPLATE_ID.IsNull then exit;
  // Thinh sua acOpenByTemplate.Execute;  
end;

procedure TMainFrm.btnExportExcelClick(Sender: TObject);
begin
  if PgeCtrlList.ActivePageIndex=0 then
    ExportToExcel(grdList)
  else
    ExportToExcel(grdEntryList);
end;

procedure TMainFrm.btnCaydulieuClick(Sender: TObject);
begin
  acShowData.Execute;
end;

procedure TMainFrm.btnTKPSClick(Sender: TObject);
begin
  acAccountArise.Execute;
end;

procedure TMainFrm.btnDTPSClick(Sender: TObject);
begin
  acDetailArise.Execute;
end;

procedure TMainFrm.btnHHPSClick(Sender: TObject);
begin
  acInOut.Execute;
end;

procedure TMainFrm.btnTSPSClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TAssetAriseFrm, AssetAriseFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.dxBarLargeButton6Click(Sender: TObject);
begin
  acAccountList.Execute;
end;

procedure TMainFrm.dxBarLargeButton7Click(Sender: TObject);
begin
  acCustomer.Execute;
end;

procedure TMainFrm.dxBarLargeButton8Click(Sender: TObject);
begin
  acGoods.Execute;
end;

procedure TMainFrm.btnDMTSClick(Sender: TObject);
begin
  acTSCD.Execute;
end;

procedure TMainFrm.dxBarLargeButton10Click(Sender: TObject);
begin
  acFindDoc.Execute;
end;

procedure TMainFrm.btnReportClick(Sender: TObject);
begin
  acReport.Execute;
end;

procedure TMainFrm.dxBarButton66Click(Sender: TObject);
begin
  with TOtherNormFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.Timer1Timer(Sender: TObject);
begin
  with MainDM.qryMsg do
  begin
    try
      ParamByName('UserName').Value:=CurrentUser;
      Open;
      if RecordCount>0 then
      begin
        BarStaticMsg.Caption:=UTF8Decode('Có tin mới');
      end;
      Close;

    except
      Close;
    end;
  end;
end;

procedure TMainFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  flag:Boolean;
begin
  if ElFormCaption1<>nil then
    ElFormCaption1.Texts[3].Caption:='';
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name)
  else if Key=VK_F10 then
    LoadCaptionFormInfo(Self)
  else
  if Key<>VK_F8 then
  with MainDM do
  begin
    if Not qryTemplateList.Active then
      qryTemplateList.Open;

    qryTemplateList.First;
    while not qryTemplateList.Eof do
    begin
      flag:=False;
      if Key = qryTemplateListKEY_VALUE.Value then
      begin
        flag:=True;
        if (qryTemplateListISCTRL.Value=1) and not (ssCtrl in Shift) then
          flag:=False;
        if (qryTemplateListISCTRL.Value=0) and (ssCtrl in Shift) then
          flag:=False;
        if (qryTemplateListISALT.Value=1) and not (ssAlt in Shift) then
          flag:=False;
        if (qryTemplateListISALT.Value=0) and (ssAlt in Shift) then
          flag:=False;
        if (qryTemplateListISSHIFT.Value=1) and not (ssShift in Shift) then
          flag:=False;
        if (qryTemplateListISSHIFT.Value=0) and (ssShift in Shift) then
          flag:=False;
      end;
      if flag then
      Begin
        if vpBranch_IsMin <> 1 then exit;
        Key:=0;
        acNewDocByTemplate.Execute;
        Exit;
      end;

      qryTemplateList.Next;
    end;
  end;
end;

procedure TMainFrm.acNewDocByTemplateExecute(Sender: TObject);
begin
  with MainDM do
  begin
    ReadTemplateInfo;

    CurTemp.SOPHIEUBD := '';
    CurTemp.KYHTBD    := 0;
  end;
  with TDocTempFrm.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton74Click(Sender: TObject);
begin
  with TGroupListFrm.Create(Self) do
    try
      if ShowModal=mrOK then
        acReLoadRight.Execute;
    finally
      Free;
    end;
end;

procedure TMainFrm.acReLoadRightExecute(Sender: TObject);
var  DocType : Smallint;
begin
  DocType := MainDM.qryDocTypeDOCTYPE_ID.Value;

  with MainDM do
  begin
    qryDocType.Close;
    qryDocType.ParamByName('GROUP_ID').Value := CurrentGroup;
    qryDocType.ParamByName('USERNAME').Value := CurrentUser;
    qryDocType.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryDocType.Open;

    maindm.qryDocType.Locate('DOCTYPE_ID',doctype,[]);

    if qryDocType.RecordCount=0 then
      dbtlDocType.Enabled := False
    else
    begin
      dbtlDocType.Enabled := True;
      qryTemplateList.Open;
      dbtlDocType.Enabled := True;
      qryDocList.ParamByName('KYHT').Value :=CurrentPeriod;
      qryDocList.Open;
      qryEntryList.ParamByName('KYHT').Value :=CurrentPeriod;
      qryEntryList.Open;
      qryDinhkhoan.Open;
    end;

    acLoadUserRight.Execute;
    acSetUserRight.Execute;
  end;
end;

procedure TMainFrm.dxBarButton81Click(Sender: TObject);
begin
  btnCaydulieu.ShowCaption:= Not dxBarButton81.Down;
  btnTKPS.ShowCaption:= Not dxBarButton81.Down;
  btnDTPS.ShowCaption:= Not dxBarButton81.Down;
  btnHHPS.ShowCaption:= Not dxBarButton81.Down;
  btnTSPS.ShowCaption:= Not dxBarButton81.Down;
  btnDMTK.ShowCaption:= Not dxBarButton81.Down;
  btnDMKH.ShowCaption:= Not dxBarButton81.Down;
  btnDMHH.ShowCaption:= Not dxBarButton81.Down;
  btnDMTS.ShowCaption:= Not dxBarButton81.Down;
  btnSearch.ShowCaption:= Not dxBarButton81.Down;
  btnReport.ShowCaption:= Not dxBarButton81.Down;
end;

procedure TMainFrm.bbtnNhacnhoClick(Sender: TObject);
var sqlSel:Widestring;
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    sqlSel :='SELECT DOC_ID,PERIOD_ID,DOCTYPE_ID,DOC_DATE,DOC_PERSON,DOC_VOUCHER,'+
    'DOC_TOTAL , DOC_NOTES , object_id,object_name, branch_id from sp_getdoc_warning('+ IntToStr(CurrentPeriod) + ',:branch_id) order by doc_id';
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      ShowMessageUnicode(8);
      Exit;
    end;
  end;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
                qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.ElFormCaption1.Texts[0].Caption:=UTF8Decode('Các phiếu có bị cảnh báo, nhắc nhở');
    DocListFrm.colLoaiKhonghople.Visible:=True;
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
  MainDM.qryDocListAnyWhere.Close;
end;

procedure TMainFrm.dxBarButton56Click(Sender: TObject);
begin
  CallErrorForm('MainForm');
end;

procedure TMainFrm.bbtnPXSXClick(Sender: TObject);
begin
  MainDM.CurObjTypeID := 6;
  Screen.Cursor := crHourGlass;
  LastViewItemID:='';
  with TObjectFrm.Create(Self) do
  try
    Screen.Cursor := crDefault;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton57Click(Sender: TObject);
begin
  MainDM.acBackupData.Execute;
end;

procedure TMainFrm.acSetStatusActionsExecute(Sender: TObject);
begin
  with MainDM do
  begin
    acNewDoc.Enabled:= ((qryDocTypeALLOWINSERT.AsInteger=1) and (qryDocTypeHASCHILD.AsInteger=0) and (vpBranch_IsMin = 1));
    acTemplateList.Enabled := ((SSPUserRight[20].RR) and (qryDocTypeHASCHILD.AsInteger=0) and (vpBranch_IsMin = 1));

    if PgeCtrlList.ActivePageIndex=0 then
      bbtnXemNhatky.Enabled:= ((SSPUserRight[15].RR)and (qryDocList.RecordCount>0) and prmUseDocumentLog)
    else
      bbtnXemNhatky.Enabled:= ((SSPUserRight[15].RR)and (qryEntryList.RecordCount>0) and prmUseDocumentLog);

    if (qryDocTypeDOCTYPE_ID.Value<=0) then
    begin
      acTemplateList.Enabled :=False;
      acNewDoc.Enabled:=False;
    end;
    bbtnImportFromXLS.Enabled:=acNewDoc.Enabled;
    if PgeCtrlList.ActivePageIndex=0 then
      bbtnExportExcel.Enabled := (qryDocList.RecordCount>0)
    else
      bbtnExportExcel.Enabled := (qryEntryList.RecordCount>0);

    btnExportExcel.Enabled := bbtnExportExcel.Enabled;
    bbtnExportHTML.Enabled := bbtnExportExcel.Enabled;
    bbtnExportXML.Enabled := bbtnExportExcel.Enabled;

    acDelDoc.Enabled:= ((qryDocTypeALLOWDELETE.AsInteger=1) and (qryDocList.RecordCount>0) and (PgeCtrlList.ActivePageIndex=0) and (vpBranch_IsMin = 1));
    if PgeCtrlList.ActivePageIndex=0 then
      acEditDoc.Enabled:= ((qryDocTypeALLOWREAD.AsInteger=1) and (qryDocList.RecordCount>0))
    else
      acEditDoc.Enabled:= ((qryDocTypeALLOWREAD.AsInteger=1) and (qryEntryList.RecordCount>0));
    if PgeCtrlList.ActivePageIndex=0 then
      acOpenByTemplate.Enabled:= ((SSPUserRight[21].ER) and (qryDocListTEMPLATE_ID.IsNull=False) and (vpBranch_IsMin = 1))
    else
      acOpenByTemplate.Enabled:= ((SSPUserRight[21].ER) and (qryEntryListTEMPLATE_ID.IsNull=False) and (vpBranch_IsMin = 1));
  end;
end;

procedure TMainFrm.bbtnPhanloaiCTClick(Sender: TObject);
begin
  IsChangeDataDocType:=False;
  with TDocTypeFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  if IsChangeDataDocType then
  begin
    MainDM.qryDocType.Close;
    MainDM.qryDocType.Open;
  end;
end;

procedure TMainFrm.acSearchDocExecute(Sender: TObject);
begin
  with TSearchDlgFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;

  if SophieuCantim = '' then exit;
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSelectDocListForsearch + ' where DOC_ID like ''%' + UTF8Encode(SophieuCantim) + '%''';

    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=2000;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=2100*12;
    qryDocListAnyWhere.ParamByName('username').Value:=CurrentUser;
    qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      ShowMessageUnicode(9,'',0);
      Exit;
    end;
    if qryDocListAnyWhere.RecordCount=1 then
    begin
      Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
                  qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
      qryDocListAnyWhere.Close;
      Exit;
    end;
    DocListFrm:=TDocListFrm.Create(Self);
    try
      DocListFrm.ShowModal;
    finally
      DocListFrm.Free;
    end;
  end;
end;

procedure TMainFrm.bbtnXemNhatkyClick(Sender: TObject);
begin
  if PgeCtrlList.ActivePageIndex=0 then
    MainDM.Xemnhatky(MainDM.qryDocListDOC_ID.Value,MainDM.qryDocListPERIOD_ID.AsInteger,MainDM.qryDocListBranch_id.value)
  else
    MainDM.Xemnhatky(MainDM.qryEntryListDOC_ID.Value,MainDM.qryEntryListPERIOD_ID.AsInteger,MainDM.qryEntryListBranch_id.value);
end;

procedure TMainFrm.dxBarButton41Click(Sender: TObject);
begin
  with TBeginAssetFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton42Click(Sender: TObject);
begin
  with TBeginAccountFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnXemNhatkyBiXoaClick(Sender: TObject);
begin
  MainDM.XemnhatkyCacphieubiXoa;
end;

procedure TMainFrm.bbtnImportFromXLSClick(Sender: TObject);
begin
  if ShowMessageUnicode(10,'',4)=6 then
  begin
    MainDM.ImportDataFromExcel;
    acSetStatusActions.Execute;
  end;
end;

procedure TMainFrm.dbtlDocTypeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(False).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmTree.PopupFromCursorPos;
end;

procedure TMainFrm.dxBarButton35Click(Sender: TObject);
begin
  with TThongkeFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton58Click(Sender: TObject);
begin
  with TThongkeTKFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton59Click(Sender: TObject);
begin
  with TThongkeTCFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton60Click(Sender: TObject);
begin
  with TThongkeHMFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if ShowMessageUnicode(11,'',4)=7 then
  begin
    Action:=caNone;
    Exit;
  end;
  //Thinh them
  grdList.SaveToRegistry(RMAIN_KEY+'\MainFrm\grdList');
  grdEntryList.SaveToRegistry(RMAIN_KEY+'\MainFrm\grdEntry');
  grdDetail.SaveToRegistry(RMAIN_KEY+'\MainFrm\grdDetail');

  acBeforeExit.Execute;
end;

procedure TMainFrm.dxBarButton61Click(Sender: TObject);
begin
  with TThongkeTKPSFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnExpandClick(Sender: TObject);
begin
  dbtlDocType.FullExpand;
end;

procedure TMainFrm.bbtnCollapseClick(Sender: TObject);
begin
  dbtlDocType.FullCollapse;
end;

procedure TMainFrm.bbtnMsgClick(Sender: TObject);
begin
  with TMsgListFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton69Click(Sender: TObject);
begin
  with TInOutTypeFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.acCustomerExecute(Sender: TObject);
begin
  MainDM.CurObjTypeID := 1;
  Screen.Cursor := crHourGlass;
  LastViewItemID:='';
  with TObjectFrm.Create(Self) do
  try
    Screen.Cursor := crDefault;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acGoodsExecute(Sender: TObject);
begin
  MainDM.CurObjTypeID := 2;
  Screen.Cursor := crHourGlass;
  LastViewItemID:='';
  with TObjectFrm.Create(Self) do
  try
    Screen.Cursor := crDefault;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acChangePeriodExecute(Sender: TObject);
var
  KyHT : Smallint;

begin

  //if (dedtCurDate.Date=WorkingDate) then exit;
  
  KyHT:=CurrentPeriod;
  if AllowLogin(MonthOf(dedtCurDate.Date),Yearof(dedtCurDate.Date))=False then
  begin
    dedtCurDate.SetFocus;
    exit;
  end;

  WorkingDate:=dedtCurDate.Date;
  MainDM.qrySysLog.Close;
  MainDM.qrySysLog.Open;

  if (KyHT<>CurrentPeriod) or (bRefresh)  then
  with MainDM do
  begin
    qryDocList.Close;
    qryDocList.ParamByName('KYHT').Value :=CurrentPeriod;
     //Thinh them
    qryDocList.ParamByName('BRANCH_ID').Value :=vpBranch_id;
    qryDocList.Open;

    qryEntryList.Close;
    qryEntryList.ParamByName('KYHT').Value :=CurrentPeriod;
    //Thinh them
    qryEntryList.ParamByName('BRANCH_ID').Value :=vpBranch_id;
    qryEntryList.Open;
  end;

  mnuSetBegin.Enabled := SSPUserRight[1].RR; //and (vpBranch_IsMin = 1);

  if mnuSetBegin.Enabled then
    mnuSetBegin.Enabled := (CurrentPeriod=BeginPeriod);
  acSetStatusActions.Execute;
  ElFormCaption1.Texts[1].Caption := IntToStr(CurMonth)+'/'+IntToStr(CurYear);
  if LockingData then
    BarStaticStatus.Caption := UTF8Decode('Khóa sổ')
  else
    BarStaticStatus.Caption := '';

  grdList.FullExpand;
  grdEntryList.FullExpand;
  ElFormCaption1.Texts[4].Caption := vpBranch_Name;
  Application.ProcessMessages;
end;

procedure TMainFrm.acCongtrinhExecute(Sender: TObject);
begin
  with TWorkListFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.dedtCurDateExit(Sender: TObject);
begin

  if (dedtCurDate.Date=WorkingDate) then exit;

  acChangePeriod.Execute;
end;

procedure TMainFrm.dxBarButton76Click(Sender: TObject);
begin
  with TDefEntrysFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton77Click(Sender: TObject);
begin
  with TRegAutoOutFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.grdEntryListChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  acSetStatusActions.Execute;
end;

procedure TMainFrm.grdEntryListMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  if PgeCtrlList.ActivePageIndex=0 then
    bbtnDeleteDoc.Visible:=ivAlways
  else
    bbtnDeleteDoc.Visible:=ivNever;

  pmGrid.PopupFromCursorPos;
end;

procedure TMainFrm.PgeCtrlListChange(Sender: TObject);
begin
  acSetStatusActions.Execute;
end;

procedure TMainFrm.grdEntryListDblClick(Sender: TObject);
begin
  if acEditDoc.Enabled then
    acEditDoc.Execute;
end;

procedure TMainFrm.grdEntryListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    if acEditDoc.Enabled then
      acEditDoc.Execute;
  end
  else
    ProcessKeyDownInGrid(grdEntryList, Key, Shift, True,4);
end;

procedure TMainFrm.dxBarButton44Click(Sender: TObject);
begin
  with TBeginGoodObjFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbtnChitieuTCClick(Sender: TObject);
begin
  with TFinStardardFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton83Click(Sender: TObject);
begin
  with TTonghopCPGTFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton82Click(Sender: TObject);
begin
  with THESOPBCPGTFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.dxBarButton85Click(Sender: TObject);
begin
  {with TProductFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;}
  //Thinh sua - Dung form moi theo PP SP hoan thanh tuong duong, sau nay lam them cac PP khac
  with TCostUnfinishFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnLangDefaultClick(Sender: TObject);
var
  i:Smallint;
begin
  bbtnLangDefault.Down:=True;
  bbtnLangVietNam.Down:=False;
  bbtnLangEnglish.Down:=False;
  dbtlDocTypeDOCTYPE_NAME.FieldName:='DOCTYPE_NAME';
  CurLanguage:=0;

  SetCaption(Self,False);
  SetCaption(PopupFrm,False);
  for i:=0 to Self.MDIChildCount-1 do
    SetCaption(Self.MDIChildren[i],False);

  try
    AnalystFrm.TreeReportColName.FieldName := 'REPORT_NAME';
    AnalystFrm.dxDBEdit1.DataField :='REPORT_NAME';
    AnalystFrm.TreeReportENGGROUP.GroupIndex := -1;
    AnalystFrm.TreeReportENGGROUP.Visible := FALSE;
    AnalystFrm.TreeReportTENNHOM.GroupIndex:=0;
    AnalystFrm.TreeReportTENNHOM.Visible := fALSE;
  except
  end;
end;

procedure TMainFrm.bbtnLangVietNamClick(Sender: TObject);
var
  i:Smallint;
begin
  bbtnLangDefault.Down := False;
  bbtnLangVietNam.Down := True;
  bbtnLangEnglish.Down := False;
  CurLanguage := 1;
  dbtlDocTypeDOCTYPE_NAME.FieldName := 'DOCTYPE_NAME';
  SetCaption(Self);
  SetCaption(PopupFrm);
  for i := 0 to Self.MDIChildCount - 1 do
    SetCaption(Self.MDIChildren[i]);
  try
    AnalystFrm.TreeReportColName.FieldName := 'REPORT_NAME';
    AnalystFrm.dxDBEdit1.DataField :='REPORT_NAME';
    AnalystFrm.TreeReportENGGROUP.GroupIndex := -1;
    AnalystFrm.TreeReportENGGROUP.Visible := FALSE;
    AnalystFrm.TreeReportTENNHOM.GroupIndex:=0;
    AnalystFrm.TreeReportTENNHOM.Visible := fALSE;
  except
  end;
end;

procedure TMainFrm.bbtnLangEnglishClick(Sender: TObject);
var
  i:Smallint;
begin
  bbtnLangDefault.Down := False;
  bbtnLangVietNam.Down := False;
  bbtnLangEnglish.Down := True;
  CurLanguage := 2;
  dbtlDocTypeDOCTYPE_NAME.FieldName := 'ENGLISH_NAME';
  SetCaption(Self);
  SetCaption(PopupFrm);
  for i := 0 to Self.MDIChildCount-1 do
    SetCaption(Self.MDIChildren[i]);

  try
  AnalystFrm.TreeReportColName.FieldName := 'ENGLISH_NAME';
  AnalystFrm.dxDBEdit1.DataField :='ENGLISH_NAME' ;
  AnalystFrm.TreeReportTENNHOM.GroupIndex:=-1;
  AnalystFrm.TreeReportTENNHOM.Visible := fALSE;
  AnalystFrm.TreeReportENGGROUP.GroupIndex := 0;
  AnalystFrm.TreeReportENGGROUP.Visible := FALSE;
  except
  end;
end;

procedure TMainFrm.FormActivate(Sender: TObject);
begin
  ElFormCaption1.Texts[3].Caption:='';

  if Not IsFirstActive then Exit;
  if Not SSPUserRight[12].RR then Exit;

  IsFirstActive:=False;

  if Not bbtnCNQH.Enabled then exit;

  MainDM.qryCNQuahan.Close;
  MainDM.qryCNQuahan.ParamByName('ngayxem').AsDate:=WorkingDate;
  MainDM.qryCNQuahan.ParamByName('thoihan').AsInteger:=optTuoinoQuahan;
  MainDM.qryCNQuahan.ParamByName('branch_id').Value := vpBranch_id;
  MainDM.qryCNQuahan.Open;

  if MainDM.qryCNQuahan.RecordCount >0 then
    with TCNQuahanFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;

  MainDM.qryThongbao.Close;
  MainDM.qryThongbao.ParamByName('ngayxem').AsDate:=WorkingDate;
  MainDM.qryThongbao.Open;

  if MainDM.qryThongbao.RecordCount >0 then
    with TThongbaoFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;


end;

procedure TMainFrm.bbtnCNQHClick(Sender: TObject);
begin
  MainDM.qryCNQuahan.Close;
  MainDM.qryCNQuahan.ParamByName('ngayxem').AsDate := WorkingDate;
  MainDM.qryCNQuahan.ParamByName('thoihan').AsInteger := optTuoinoQuahan;
  MainDM.qryCNQuahan.ParamByName('branch_id').Value := vpBranch_id;
  MainDM.qryCNQuahan.Open;
  if MainDM.qryCNQuahan.RecordCount > 0 then
    with TCNQuahanFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end
  else
    ShowMessageUnicode(209);
end;

procedure TMainFrm.dxBarButton87Click(Sender: TObject);
begin
  with TAccOptFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton90Click(Sender: TObject);
begin
  With TCPDodangFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton91Click(Sender: TObject);
begin
  with TBalObjFactorFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton92Click(Sender: TObject);
begin
  with TBalFactorForeignFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnYTPSClick(Sender: TObject);
begin
  ShowMDIForm(TFactorlAriseNTFrm, FactorlAriseNTFrm);
end;

procedure TMainFrm.bbtnYTPSVNDClick(Sender: TObject);
begin
  ShowMDIForm(TFactorlAriseFrm, FactorlAriseFrm);
end;

procedure TMainFrm.bbtnDocTypeInfoClick(Sender: TObject);
var
  LuuLaiLoaiCu : Smallint;
begin
  IsChangeDataDocType:=False;
  MainDM.qryDocTypeList.Open;
  MainDM.qryDocTypeList.Locate('DOCTYPE_ID', MainDM.qryDocTypeDOCTYPE_ID.AsInteger, []);
  with TDocTypeInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  if IsChangeDataDocType then
  begin
    LuuLaiLoaiCu := MainDM.qryDocTypeDOCTYPE_ID.AsInteger;
    MainDM.qryDocType.Close;
    MainDM.qryDocType.Open;
    MainDM.qryDocType.Locate('DOCTYPE_ID', LuuLaiLoaiCu,[]);
  end;
end;

procedure TMainFrm.dxBarButton97Click(Sender: TObject);
begin
  LoadCaptionFormInfo(Self);
end;

procedure TMainFrm.bbtnHSCathangClick(Sender: TObject);
begin
  with THeSoDoiHangFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton99Click(Sender: TObject);
begin
  with TDefRptKQHDKDFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnHMPSClick(Sender: TObject);
begin
  with TActicleAriseFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton101Click(Sender: TObject);
begin
  with TGroupNormFrm.Create(Self) do
  try
    LOAICHIPHI:=1;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton102Click(Sender: TObject);
begin
  with TGroupNormFrm.Create(Self) do
  try
    LOAICHIPHI := 0;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton110Click(Sender: TObject);
begin
  with TObjDocBeginBalFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton111Click(Sender: TObject);
begin
  with TFrmDefRptTHKQHD.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton114Click(Sender: TObject);
begin
  with TTMBCTC_35Frm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton115Click(Sender: TObject);
begin
  with TTMBCTC_36Frm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton116Click(Sender: TObject);
begin
  with TTMBCTC_37Frm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton117Click(Sender: TObject);
begin
  with TTMBCTC_4Frm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnScriptClick(Sender: TObject);
begin
  with TScriptFrm.Create(self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnSQLEditorClick(Sender: TObject);
begin
  ShowMDIForm(TSQLTesterFrm,SQLTesterFrm);
end;

procedure TMainFrm.bbtnParamArisingClick(Sender: TObject);
begin
  with TParamArisingFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnParamBalanceClick(Sender: TObject);
begin
  with TParamBalanceFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnQuestionClick(Sender: TObject);
begin
  with TQuestionFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton78Click(Sender: TObject);
begin
  with TKETQUAPBCPFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton86Click(Sender: TObject);
begin
  with TCHITIETCHIPHIFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.dxBarButton89Click(Sender: TObject);
begin
  with TCHITIETPHANBOFrm.Create(self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton93Click(Sender: TObject);
begin
  with TTAPHOPCHIPHIFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton94Click(Sender: TObject);
begin
  with TCHITIETPBSPFrm.Create(self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.grdDetailMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TMainFrm.dbtlDocTypeColumnSorting(Sender: TObject;
  Column: TdxTreeListColumn; var Allow: Boolean);
begin
  Allow:=Column=dbtlDocTypeTHUTUSAPXEP;
end;

procedure TMainFrm.bbtnInvTypeClick(Sender: TObject);
begin
  with TInvoiceTypeFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnHangKMClick(Sender: TObject);
begin
  with TPromotionScaleFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.acBeforeExitExecute(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
    begin
      reg.WriteInteger('LastLanguage',CurLanguage);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TMainFrm.bbtnCTGSClick(Sender: TObject);
begin
  with TChungtuGhisoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnDkyCTGSClick(Sender: TObject);
begin
  with TButtoanCTGSFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnActiclePlanClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  ShowMDIForm(TActiclePlanFrm,ActiclePlanFrm);
  Screen.Cursor := crDefault;

  {with TActiclePlanFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;}
{  with TForm2.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;}
end;

procedure TMainFrm.dxBarButton55Click(Sender: TObject);
begin
  with TThongkeBALFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnOutNotLogicClick(Sender: TObject);
var
  sqlSel:Widestring;
  RowCount:Integer;
begin
  Screen.Cursor := crHourGlass;
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    sqlSel :='SELECT DOC_ID,PERIOD_ID,DOCTYPE_ID,DOC_DATE,DOC_PERSON,DOC_VOUCHER,'+
    'DOC_TOTAL , DOC_NOTES , object_id,object_name,branch_id from sp_getdoc_not_equal('+ IntToStr(CurrentPeriod) + ',''' + vpBranch_id + ''') order by doc_id';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.Open;

    RowCount:=qryDocListAnyWhere.RecordCount;
    if RowCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Screen.Cursor := crDefault;
      ShowMessageUnicode(6);
      Exit;
    end;
  end;
  with MainDM do
  if RowCount=1 then
  begin
    Screen.Cursor := crDefault;
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    Screen.Cursor := crDefault;
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
end;

procedure TMainFrm.dxBarButton96Click(Sender: TObject);
begin
  with TAutoTypesFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton98Click(Sender: TObject);
begin
  if ShowMessageUnicode(10,'',4)=6 then
  begin
    MainDM.ImportDataFromExcel(False);
    acSetStatusActions.Execute;
  end;
end;

procedure TMainFrm.mnuDatabaseBK2Click(Sender: TObject);
begin
  with TBackupFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.mnuDatabaseBK1Click(Sender: TObject);
begin
  MainDM.acBackupData.Execute;
end;

procedure TMainFrm.mnuDatabaseBK3Click(Sender: TObject);
var
  ts:TStringList;
begin
  if Not OpenDialogRestore.Execute then exit;

  ErrRestoreCount:=0;
  RestoreCount:=0;
  Screen.Cursor := crHourGlass;

  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text :='execute procedure sp_change_trigger_active(1,0)';
  MainDM.qryCommon.ExecSQL;

  ts:=TStringList.Create;
  ts.LoadFromFile(OpenDialogRestore.FileName);
  ScrRestore.SQL.Text:=SSPDecode(Trim(ts.Text));
  ScrRestore.Execute;

  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text :='execute procedure sp_change_trigger_active(1,1)';
  MainDM.qryCommon.ExecSQL;

  Screen.Cursor := crDefault;
  //if ErrRestoreCount=0 then
    ShowMessageUnicode(216);
  {else
  begin
    msg:=UTF8Encode(GetMessage(217));
    msg:=StringReplace(msg,'#SUCCESS#',IntToStr(RestoreCount-ErrRestoreCount),[rfReplaceAll]);
    msg:=StringReplace(msg,'#ERROR#',IntToStr(ErrRestoreCount),[rfReplaceAll]);
    ShowMessageUniText(UTF8Decode(msg));
  end;}
end;

procedure TMainFrm.ScrRestoreError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
  RaiseException:=False;
  ErrRestoreCount:=ErrRestoreCount+1;
end;

procedure TMainFrm.ScrRestoreStatement(Sender: TIB_Script;
  var Statement: String; var SkipIt: Boolean);
begin
  RestoreCount:=RestoreCount+1;
end;

procedure TMainFrm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ElFormCaption1<>nil then
    ElFormCaption1.Texts[3].Caption:='';
end;

procedure TMainFrm.dxBarButton121Click(Sender: TObject);
begin
  with TVATTypeFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.mnuDynaReportClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TfrmReportList, frmReportList);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.dxBarButton30Click(Sender: TObject);
begin
  with TFormKTTKDT.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton36Click(Sender: TObject);
begin
  with TfrmQuyettoanthueTNDN.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarButton62Click(Sender: TObject);
begin
  with TImportFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.mnuDatabaseBK4Click(Sender: TObject);
begin
  with TfrmNewBackup.Create(Self,0) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

procedure TMainFrm.mnuDatabaseBK5Click(Sender: TObject);
begin
  with TfrmNewBackup.Create(Self,1) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarSDCTBDTYT2Click(Sender: TObject);
begin
  with TBalObjFactor1Frm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarTMBCTCClick(Sender: TObject);
begin
  with TThuyetminhBCTCFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarListUnitClick(Sender: TObject);
begin
  with TUnitFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.dxBarListUnitScaleClick(Sender: TObject);
begin
  with TUnitScaleFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnTranferRecieveClick(Sender: TObject);
begin
  with TTransferReceivefrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.Timer2Timer(Sender: TObject);
begin

   if MainDM.qryTransferInfoAUTO_TRANSFER.Value =1 then
   begin

      if (Timeof(now) > MainDM.qryTransferInfoAUTO_TOTIME.value) then
      begin
        vpIsFormTROpening := FALSE;
        vpIsTransfered := FALSE;
      end;

      if (not vpIsFormTROpening) and (not vpIsTransfered) and
        (MainDM.TransferUpdateAction = 1) then

        with TTransferReceivefrm.Create(Self) do
        try
              vpIsFormTROpening := True;
              ShowModal();
        finally
              free;
              vpIsFormTROpening := False;
        end;
  end; //End auto transfer

  if MainDM.qryTransferInfoAUTO_UPDATE.Value =1 then
  begin
    if (not vpIsFormTROpening) and (MainDM.TransferUpdateAction = 2) then
    with TTransferReceivefrm.Create(Self) do
    try
              vpIsFormTROpening := True;
              ShowModal();
    finally
              free;
              vpIsFormTROpening := False;
    end;
  end;// End auto update
end;

procedure TMainFrm.btnRefreshClick(Sender: TObject);
begin

   vpBranch_id := maindm.qryBranchMainBRANCH_ID.value;
   vpBranch_IsMin := maindm.qryBranchMainISMIN.Value;
   vpBranch_Name := maindm.qryBranchMainSHORTNAME.Value;//maindm.qryBranchMainFULLNAME.Value;


   acReLoadRight.Execute;
   acSetStatusActions.Execute;

   bRefresh := TRUE;
   acChangePeriod.Execute;
   bRefresh := FALSE;
   if ElTabSheet1.Focused then
     grdList.SetFocus;
   
end;

procedure TMainFrm.btnSaveRestoreDocClick(Sender: TObject);
begin
  with TSaveRestoreDocFrm.Create(self) do
  try
    ShowModal;
  finally
    free;
  end;
end;

procedure TMainFrm.pedtBranchCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
    if Accept then
      if maindm.qryBranchMainBRANCH_ID.Value <> vpBranch_id then
      begin
          vpBranch_id := maindm.qryBranchMainBRANCH_ID.value;
          vpBranch_IsMin := maindm.qryBranchMainISMIN.Value;
          vpBranch_Name := maindm.qryBranchMainSHORTNAME.Value;//maindm.qryBranchMainFULLNAME.Value;
          MainDM.qryBranch.Locate('BRANCH_ID',vpBranch_id,[]) ;

          acReLoadRight.Execute;
          acSetStatusActions.Execute;

          bRefresh := TRUE;
          acChangePeriod.Execute;
          bRefresh :=  FALSE;
      end

end;

procedure TMainFrm.pedtBranchInitPopup(Sender: TObject);
begin
  //maindm.qryBranch.Close;
  //maindm.qryBranch.Open;
end;

procedure TMainFrm.acBranchExecute(Sender: TObject);
begin
  with TBranchFrm.Create(self) do
  try
    ShowModal;
  finally
    free;
  end
end;

procedure TMainFrm.bbtnIdleListClick(Sender: TObject);
begin
  with TIdleJobfrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbtnKQHDKDHVSClick(Sender: TObject);
begin
    with THVSKQHDKDFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbtnRegAutoOutClick(Sender: TObject);
begin
with TRegForBillFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbtnImportSamClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ShowMDIForm(TImportSamfrm, ImportSamfrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.bbtnReportSamClick(Sender: TObject);
begin
  with TDefbaocaosamFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbtntkcustClick(Sender: TObject);
begin
with TThongke10KHFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnThongkeTSClick(Sender: TObject);
begin
   with TThongkeTysuatFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtntln_costdeclareClick(Sender: TObject);
begin
  with Ttln_costdeclarefrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMainFrm.bbtnRegisterClick(Sender: TObject);
begin
with TRegisterFrm.Create(self) do
  try
    ShowModal;
  finally
    free;
  end

end;

procedure TMainFrm.bbtnGroupMatNormClick(Sender: TObject);
begin
  with TGroupMatNormFrm.Create(Self) do
  try
    //LOAICHIPHI:=1;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainFrm.bbtnDutoanvattuClick(Sender: TObject);
begin
 { with TMaterialProFrm.Create(Self) do
  try
    //LOAICHIPHI:=1;
    ShowModal;
  finally
    Free;
  end;}
  with TMaterialEstimateFrm.Create(Self) do
  try
    //LOAICHIPHI:=1;
    ShowModal;
  finally
    Free;
  end;
end;


procedure TMainFrm.acCCDCExecute(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;
  ShowMDIForm(TCCDCFrm,CCDCFrm);
  Screen.Cursor := crDefault;
end;

procedure TMainFrm.dxBarLargeButton1Click(Sender: TObject);
begin
  acCCDC.Execute;
end;

procedure TMainFrm.dxBarButton70Click(Sender: TObject);
begin
with TXoaDLImportFrm.Create(Self) do
  try
    //ThuHayChi := 1;
    //FromDocID := qryDocumentDOC_ID.Value;
    //FromPeriodID := qryDocumentPERIOD_ID.Value;
    ShowModal;
  finally
    Free;
  end;
  IsPosted := True;
end;

procedure TMainFrm.dxBarButton122Click(Sender: TObject);
begin
  with TReportTHFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

initialization
  RegisterClasses([TIcon, TMetafile, TBitmap, TJPEGImage,TGIFImage]);

end.


