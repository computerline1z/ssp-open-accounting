unit AnalysisFrm;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,ppTypes,
  Dialogs, dxLayoutControl, cxControls, dxExEdtr, StdCtrls, Buttons,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxGrClms, dxBar, ActnList, ActnMan,
  IBQuery, DB, dxEditor,
  //EanPdf417,
  XLSReadWriteII,CellFormats,BIFFRecsII,
  dxEdLib, dxDBELib, ExtCtrls, dxLayoutLookAndFeels, dxDBTL, ImgList,
  IBCustomDataSet, DateUtils, StrUtils, ppCtrls, IBODataset, dxDBTLCl,
  IB_Components, ppEndUsr, ppVar, ppBands, ppReport, ppStrtch, ppSubRpt,
  ppPrnabl, ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppModule,  dxLayout, dxExGrEd, dxExELib,ExtActns, ElCaption,
  //EanRB,
  XPStyleActnCtrls, ElPopBtn, ElBtnCtl, ElCheckCtl, ElCLabel, ElLabel,
  ElPanel, ElPgCtl, ElXPThemedControl, TntExtCtrls,
  ComCtrls, TntStdCtrls, TntComCtrls,
  TntButtons, ElEdits, ElHTMLHint, TXComp, dxmdaset, ppMemo;
type
  TColumnInfo = record
    ColumnWith: integer;
    ColumnCaption: WideString;
    ColumnGroup:  bool;
    ColumnFormat: String;
    ColumnFilter:Smallint;
  end;
  TRowInfo = array[0..99] of TColumnInfo;

  TAnalystFrm = class(TForm)
    ActionManager1: TActionManager;
    bmReport: TdxBarManager;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ImageList1: TImageList;
    dsListReport: TDataSource;
    acPreview: TAction;
    PnlRight: TELPanel;
    acDesigner: TAction;
    DlgSave: TSaveDialog;
    qryListReport: TIBOQuery;
    qryReportCaption: TIBOQuery;
    acSubProcess: TAction;
    acAfterPerform: TAction;
    pmTree: TdxBarPopupMenu;
    qryListReportREPORT_ID: TIntegerField;
    qryListReportCOLUMNCOUNT: TSmallintField;
    dplReport: TppDBPipeline;
    dsgReport: TppDesigner;
    dplSub_1: TppDBPipeline;
    dplSub_2: TppDBPipeline;
    dplSub_3: TppDBPipeline;
    qryListReportCONDITIONTYPE: TSmallintField;
    acExeBefore: TAction;
    acSeeDetail: TAction;
    PnlLeft: TPanel;
    PnlTaikhoan: TPanel;
    LblSHTK: TElLabel;
    pedtObj: TdxPopupEdit;
    pedtSHTK: TdxPopupEdit;
    PnlCommon: TPanel;
    PnlBeginText: TPanel;
    LblBeginText: TElLabel;
    edtBeginText: TdxEdit;
    qryListReportLOAIBAOCAO: TSmallintField;
    qryListReportORDER_FIELD: TIntegerField;
    qryListReportSQLSELECT: TWideStringField;
    qryListReportSQLSUB_1: TWideStringField;
    qryListReportSQLSUB_2: TWideStringField;
    qryListReportSQLSUB_3: TWideStringField;
    qryListReportWHERESQLDETAIL: TWideStringField;
    acChangeNode: TAction;
    qryListReportALLOW_SORT: TSmallintField;
    rptReport: TppReport;
    PnlDocType: TPanel;
    pedtDocType: TdxDBPopupEdit;
    qryListReportREPORT_NAME: TWideStringField;
    qryListReportKEYFIELD: TWideStringField;
    ElFormCaption1: TElFormCaption;
    ElPageControl1: TElPageControl;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    ElTabSheet3: TElTabSheet;
    acPrintDirect: TAction;
    dxBarButton11: TdxBarButton;
    btnReadToGrid: TElPopupButton;
    btnPreview: TElPopupButton;
    btnDirectPrint: TElPopupButton;
    rbMonth: TElRadioButton;
    dedtFromDate: TdxDateEdit;
    dedtToDate: TdxDateEdit;
    ElLabel1: TElLabel;
    rbQuarter: TElRadioButton;
    rbDate: TElRadioButton;
    spnFromMonth: TdxSpinEdit;
    spnFromYear: TdxSpinEdit;
    spnToMonth: TdxSpinEdit;
    spnToYear: TdxSpinEdit;
    spnFromQuarter: TdxSpinEdit;
    spnToQuarter: TdxSpinEdit;
    lblTo: TElLabel;
    spnFromYearQ: TdxSpinEdit;
    spnToYearQ: TdxSpinEdit;
    ElLabel2: TElLabel;
    PnlDieukien: TPanel;
    PnlObj: TPanel;
    LblChung: TElLabel;
    LblObj: TElLabel;
    PnlObjGrp: TPanel;
    ElLabel3: TElLabel;
    popObjGrp: TdxPopupEdit;
    PnlTuoino: TPanel;
    ElLabel4: TElLabel;
    spnTuoino: TdxSpinEdit;
    dxBarButton12: TdxBarButton;
    PnlPhanloaiCN: TPanel;
    ElLabel5: TElLabel;
    spnTuoinoNN: TdxSpinEdit;
    spnKhoangCach: TdxSpinEdit;
    ElLabel6: TElLabel;
    spnSoDoan: TdxSpinEdit;
    ElLabel7: TElLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    qryListReportOTHERCONDITION: TSmallintField;
    qryListReportLOAIDOITUONG: TSmallintField;
    qryListReportLOAITAIKHOAN: TSmallintField;
    popCommon: TdxPopupEdit;
    PnlObjType: TPanel;
    ElLabel8: TElLabel;
    boxLOAIDT: TdxDBExtLookupEdit;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    TntShape1: TTntShape;
    dxBarButton1: TdxBarButton;
    bbtnPreview: TdxBarButton;
    bbtnDirectPrint: TdxBarButton;
    bbtnDesign: TdxBarButton;
    ElTabSheet4: TElTabSheet;
    qryListReportLOAIDTKHAC: TSmallintField;
    bbtnDefReport: TdxBarButton;
    dsRptCaption: TDataSource;
    qryReportCaptionREPORT_ID: TSmallintField;
    qryReportCaptionCOLUMN_ID: TSmallintField;
    qryReportCaptionCOLUMN_CAPTION: TWideStringField;
    qryReportCaptionCOLUMN_WIDTH: TSmallintField;
    qryReportCaptionCOLUMN_GROUP: TSmallintField;
    qryReportCaptionCOLUMN_FORMAT: TWideStringField;
    qryReportCaptionENGLISH_CAPTION: TWideStringField;
    qryListReportENGLISH_NAME: TWideStringField;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Splitter1: TSplitter;
    qryBanana: TIBOQuery;
    acLoadToGrid: TAction;
    acPreviewDirect: TAction;
    acPreviewFromGrid: TAction;
    acDesignFromGrid: TAction;
    qryGetTime: TIBOQuery;
    dsGetTime: TDataSource;
    qryGetTimeFROMDATE: TDateField;
    qryGetTimeTODATE: TDateField;
    bbtnAddReport: TdxBarButton;
    bbtnDelReport: TdxBarButton;
    qryGetTimeWORKINGDATE: TDateField;
    dxBarButton7: TdxBarButton;
    qryListReportBEGINTEXTNAME: TWideStringField;
    qryListReportENGTEMPLATE: TWideStringField;
    dplGetTime: TppDBPipeline;
    qryListReportRPT_STATUS: TSmallintField;
    acCompare1: TAction;
    acCompare2: TAction;
    chkDocType: TdxCheckEdit;
    ExtraOptions1: TExtraOptions;
    acSetButtonsStatus: TAction;
    Panel1: TPanel;
    qryListReportTENNHOM: TWideStringField;
    btnThang: TElGraphicButton;
    btnQuy: TElGraphicButton;
    btnNgay: TElGraphicButton;
    popThang: TdxBarPopupMenu;
    popNgay: TdxBarPopupMenu;
    popQuy: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    qryGetMaxID: TIBOQuery;
    qryGetMaxIDMAX: TSmallintField;
    qryListReportDOCID_FN: TWideStringField;
    qryListReportPERIOD_FN: TWideStringField;
    pnlMAYT: TPanel;
    lblMAYT: TElLabel;
    pedtMAYT: TdxPopupEdit;
    pnlMAYT2: TPanel;
    lblMAYT2: TElLabel;
    pedtMAYT2: TdxPopupEdit;
    dsListDefaultSysReport: TDataSource;
    qryListDefaultSysReport: TIBOQuery;
    qryListDefaultSysReportREPORT_ID: TSmallintField;
    qryListDefaultSysReportREPORT_NAME: TWideStringField;
    qryListDefaultSysReportSQLSELECT: TWideStringField;
    qryListDefaultSysReportFILETEMPLATE: TWideStringField;
    qryListDefaultSysReportCOLUMNCOUNT: TSmallintField;
    qryListDefaultSysReportSQLSUB_1: TWideStringField;
    qryListDefaultSysReportSQLSUB_2: TWideStringField;
    qryListDefaultSysReportSQLSUB_3: TWideStringField;
    qryListDefaultSysReportKEYFIELD: TWideStringField;
    qryListDefaultSysReportCONDITIONTYPE: TSmallintField;
    qryListDefaultSysReportWHERESQLDETAIL: TWideStringField;
    qryListDefaultSysReportLOAIBAOCAO: TSmallintField;
    qryListDefaultSysReportORDER_FIELD: TIntegerField;
    qryListDefaultSysReportENGLISH_NAME: TWideStringField;
    qryListDefaultSysReportALLOW_SORT: TSmallintField;
    qryListDefaultSysReportBEGINTEXTNAME: TWideStringField;
    qryListDefaultSysReportOTHERCONDITION: TSmallintField;
    qryListDefaultSysReportLOAIDOITUONG: TSmallintField;
    qryListDefaultSysReportLOAITAIKHOAN: TSmallintField;
    qryListDefaultSysReportLOAIDTKHAC: TSmallintField;
    qryListDefaultSysReportTENNHOM: TWideStringField;
    qryListDefaultSysReportENGTEMPLATE: TWideStringField;
    qryListDefaultSysReportRPT_STATUS: TSmallintField;
    qryListDefaultSysReportDOCID_FN: TWideStringField;
    qryListDefaultSysReportPERIOD_FN: TWideStringField;
    pnlBranch: TPanel;
    lblBranch: TElLabel;
    bbtnCheckallReport: TdxBarButton;
    qryListReportBEGINTEXT: TWideStringField;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    qryListReportBRANCH_FN: TWideStringField;
    qryListReportENGGROUP: TWideStringField;
    btnCheckReport: TdxBarButton;
    ppHeaderBand51: TppHeaderBand;
    ppDetailBand51: TppDetailBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppLine952: TppLine;
    ppLabel977: TppLabel;
    ppLabel980: TppLabel;
    ppLabel981: TppLabel;
    ppLine953: TppLine;
    ppLabel982: TppLabel;
    ppLabel983: TppLabel;
    ppLabel984: TppLabel;
    ppLabel985: TppLabel;
    ppLabel986: TppLabel;
    ppLine957: TppLine;
    ppLine958: TppLine;
    ppLine959: TppLine;
    ppLine960: TppLine;
    ppLabel1031: TppLabel;
    ppLabel1032: TppLabel;
    ppLabel1035: TppLabel;
    ppLabel1036: TppLabel;
    ppDBText1008: TppDBText;
    ppDBText1009: TppDBText;
    ppDBText1010: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLabel1: TppLabel;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppLabel15: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel36: TppLabel;
    ppLine26: TppLine;
    ppMemo1: TppMemo;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel76: TppLabel;
    ppDBText5: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine33: TppLine;
    ppLabel82: TppLabel;
    ppLine34: TppLine;
    ppLabel83: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel60: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine13: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLine18: TppLine;
    ppLine24: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel21: TppLabel;
    ppDBText6: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand46: TppFooterBand;
    popBranch: TdxPopupEdit;
    pnlBPSudung: TPanel;
    lblBPSudung: TElLabel;
    popBPSudung: TdxPopupEdit;
    pnlBudget: TPanel;
    lblBudget: TElLabel;
    popBudget: TdxPopupEdit;
    bbtnSEtDefaultAll: TdxBarButton;
    Panel2: TPanel;
    ElLabel9: TElLabel;
    dxDBEdit7: TdxDBEdit;
    Panel7: TPanel;
    ElLabel10: TElLabel;
    dxDBEdit2: TdxDBEdit;
    Panel8: TPanel;
    dxDBEdit1: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    TreeReport: TdxDBGrid;
    TreeReportCOLNAME: TdxDBGridColumn;
    TreeReportENGLISH_NAME: TdxDBGridColumn;
    TreeReportTENNHOM: TdxDBGridColumn;
    TreeReportRPT_STATUS: TdxDBGridCheckColumn;
    TreeReportORDER: TdxDBGridColumn;
    TreeReportENGGROUP: TdxDBGridColumn;
    pnlLOAITONGHOP: TPanel;
    ElPopupButton1: TElPopupButton;
    lblloaitonghop: TElLabel;
    qryListReportFILETEMPLATE: TWideStringField;
    btnDesign: TElPopupButton;
    procedure SetArrayOtherStatus();
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure acDesignerExecute(Sender: TObject);
    procedure acSubProcessExecute(Sender: TObject);
    procedure TreeReportDblClick(Sender: TObject);
    procedure TreeReportMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ThucHienInBC(IsDirect:Boolean);
    procedure TreeReportChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure pedtSHTKCloseUp(Sender: TObject; var Text: WideString;      var Accept: Boolean);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;      var Accept: Boolean);
    procedure pedtSHTKInitPopup(Sender: TObject);
    procedure pedtObjCloseUp(Sender: TObject; var Text: WideString; var Accept: Boolean);
    procedure pedtSHTKExit(Sender: TObject);
    procedure TreeReportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryListReportFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure acChangeNodeExecute(Sender: TObject);
    procedure ElPageControl1Change(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure acPrintDirectExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pmExportPopup(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure qryListReportAfterCancel(DataSet: TDataSet);
    procedure qryListReportAfterPost(DataSet: TDataSet);
    procedure rbMonthClick(Sender: TObject);
    procedure rbQuarterClick(Sender: TObject);
    procedure rbDateClick(Sender: TObject);
    function GetCaptionConditionTime():WideString;
    function CheckConditionTime():Boolean;
    function CheckOnBeforeBegin(ADate:Tdate):Boolean;
    function DateBeginOfMonth(amonth:Word;ayear:Word):TDate;
    function DateEndOfMonth(amonth:Word;ayear:Word):TDate;
    procedure btnReadToGridClick(Sender: TObject);
    procedure pedtObjEnter(Sender: TObject);
    procedure popObjGrpCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxBarButton12Click(Sender: TObject);
    procedure popCommonCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure boxLOAIDTEnter(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure bbtnPreviewClick(Sender: TObject);
    procedure bbtnDirectPrintClick(Sender: TObject);
    procedure bbtnDesignClick(Sender: TObject);
    procedure bbtnDefReportClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReportCaptionAfterInsert(DataSet: TDataSet);
    procedure qryReportCaptionBeforeDelete(DataSet: TDataSet);
    procedure btnPreviewClick(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure btnDirectPrintClick(Sender: TObject);
    procedure qryListReportNewRecord(DataSet: TDataSet);
    procedure bbtnDelReportClick(Sender: TObject);
    procedure bbtnAddReportClick(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCompare1Execute(Sender: TObject);
    procedure chkDocTypeChange(Sender: TObject);
    procedure acSetButtonsStatusExecute(Sender: TObject);
    procedure qryListReportBeforeDelete(DataSet: TDataSet);
    procedure qryListReportBeforeEdit(DataSet: TDataSet);
    procedure qryListReportBeforeInsert(DataSet: TDataSet);
    procedure btnThangClick(Sender: TObject);
    procedure btnQuyClick(Sender: TObject);
    procedure btnNgayClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure qryReportCaptionNewRecord(DataSet: TDataSet);
    procedure qryReportCaptionPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryListReportPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure popObjGrpInitPopup(Sender: TObject);
    procedure pedtMAYTEnter(Sender: TObject);
    procedure pedtMAYTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtMAYT2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtMAYT2Enter(Sender: TObject);
    procedure bbtnCheckallReportClick(Sender: TObject);
    procedure pedtObjChange(Sender: TObject);
    procedure btnCheckReportClick(Sender: TObject);
    procedure qryListReportBeforeOpen(DataSet: TDataSet);
    procedure popBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure popBPSudungEnter(Sender: TObject);
    procedure popBudgetCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure popBudgetEnter(Sender: TObject);
    procedure bbtnSEtDefaultAllClick(Sender: TObject);
   
  private
    { Private declarations }
    MaxCusReportID:Integer;
    OtherStatus:array[0..15] of Boolean;
    makh:Widestring;
    Factor_Name:widestring;
    Factor2_Name:widestring;
    Object_Name:widestring;

    function InitData():Boolean;
    function BuildPeriod(AMonth, AYear: integer): Smallint;//xay dung ten ky
    procedure OnBeforePrint;//Set cac label caption
    function GetbarCodeString:String;
  public
    wStrOtherCondition:WideString;
    FID: integer;//Chua ma so report hien tai
    SQLSelect, WhereSQLDetail:Widestring;
    szKeyField:Widestring;
    sqlsub_1, sqlsub_2,sqlsub_3:Widestring;//dung de chua 3 cau sql phu
    pmFromDate,pmToDate:TDate;
    pmFromMonth,pmToMonth:Smallint;

    NODK, CODK,NOPS,COPS,NOCK,COCK:Double;
    LOAITONGHOP : smallint;
    
    function GetSQL: Widestring;//lay select statement
    function GetParamValue(AParamName: Widestring): Variant;//Doc gia tri tham so
  published
    { Public declarations }
  end;
var
  AnalystFrm: TAnalystFrm;
implementation

uses dxTreeGridMenus, MainDataMdl, MainForm, GlobalUnit, PopupForm,
  Functions, DocListForm, LookupFrm, GlobalInterface, ReportForm,
  SoCaiHMKP, ReportInfoForm, RptParamForm, NhatKySoCaiForm, BarCodeForTax,
  SheetData, ActicleCompareForm, CM_PopupForm, CM_Functions, DBFunctions,
  ChkResultForm;

{$R *.dfm}
function TAnalystFrm.InitData():Boolean;
var
  i:Integer;
begin
  Result:=False;
  if qryListReport.RecordCount=0 then exit;

  FID := qryListReportREPORT_ID.AsInteger;

  MainDM.qryPAcc.Open;

  if OtherStatus[0] then
  if pedtSHTK.Text<>MainDM.qryPAccACCOUNT_ID.Value then
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',pedtSHTK.Text,[]) then
  begin

    HintBox(42,self,pedtSHTK);
    exit;
  end;

  if ((FID=95) or (FID=96)) then
  begin
    ATUNGAYHMKP:=GetParamValue('tungay');
    ADENNGAYHMKP:=GetParamValue('denngay');
    if (FID=95) then
      AMANGUONHMKP:=popObjGrp.Text
    else
      AMANGUONHMKP:=pedtObj.Text;

    SQLSelectHMKP:=SQLSelect;
    with TSoCaiHMKPFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
    Exit;
  end;
  if PnlObj.Height>10 then
  IF pedtObj.Text='' then
  if pos(':AMADT',qryListReportSQLSELECT.AsString)=0 then
  begin

    hintbox(103,self,pedtObj);
    exit;
  end;

   // Thuyttb them  ====================
  if PnlObjGrp.Height>10 then
  IF popObjGrp.Text='' then
  if pos(':AMANHOMDT',qryListReportSQLSELECT.AsString)=0 then
  begin
    hintbox(103,self,popObjGrp);
    exit;
  end;

   // Thinh them  ====================
  if PnlMAYT.Height>10 then
  IF pedtMAYT.Text='' then
  if pos(':AMAYT',qryListReportSQLSELECT.AsString)=0 then
  begin

    hintbox(103,self,pedtMAYT);
    exit;
  end;
  // Thinh them  ====================
  if PnlMAYT2.Height>10 then
  IF pedtMAYT2.Text='' then
  if pos(':AMAYT2',qryListReportSQLSELECT.AsString)=0 then
  begin
    hintbox(103,self,pedtMAYT2);
    exit;
  end;
  //==================================
  if PnlCommon.Height>10 then
  //tradtt: (bat buoc co ma kho) -
  if (qryListReportREPORT_ID.AsInteger<210) or (qryListReportREPORT_ID.AsInteger = 3016) then
  IF popCommon.Text='' then
  begin
    hintbox(103,self,popCommon);
    exit;
  end;
  if Trim(SQLSelect)='' then
  begin
    ShowMessageUnicode(104);
    exit;
  end;
  if ((FID =59) or (FID =60)) then
  if pedtSHTK.Text='' then
  begin
    hintbox(105,self,pedtSHTK);
    exit;
  end;

  if MainDM.qryReport.Active then
    MainDM.qryReport.Close;

//[NXHop sua]    if (qryListReportLOAIBAOCAO.AsInteger=0) then
    acSubProcess.Execute;

  //Thinh them
  Maindm.qryHSCT.close;
  Maindm.qryHSCT.ParamByName('BRANCH_ID').value := Maindm.qryBranchBRANCH_ID.Value;
  Maindm.qryHSCT.open;

  MainDM.qryReport.Fields.Clear;
  MainDM.qryReport.SQL.Clear;

  MainDM.qryReport.SQL.Text := SQLSelect;
  try
    MainDM.qryReport.Prepare;
  except
    ShowMessageUnicode(211);
    Exit;
  end;

  for i := 0 to MainDM.qryReport.ParamCount - 1 do
  begin
    MainDM.qryReport.ParamByName(MainDM.qryReport.Params[i].Name).Value := GetParamValue(MainDM.qryReport.Params[i].Name);
  end;
  MainDM.dsReport.DataSet:=qryBanana;
  Screen.Cursor:=crHourGlass;
  MainDM.qryReport.Prepare;
  MainDM.qryReport.Open;
  Screen.Cursor:=crDefault;
  MainDM.dsReport.DataSet:=MainDM.qryReport;

  Result:=True;
end;


procedure TAnalystFrm.SetArrayOtherStatus();
var
  i,sobichia,thuong,sodu:Smallint;
begin
  for i:=0 to 15 do
    OtherStatus[i]:=False;
  sobichia:=qryListReportOTHERCONDITION.AsInteger;
  i:=0;
  while sobichia>0 do
  begin
    thuong := sobichia div 2;
    sodu := sobichia mod 2;
    OtherStatus[i]:=(sodu=1);
    i:=i+1;
    sobichia:=thuong;
  end;
end;

procedure TAnalystFrm.FormCreate(Sender: TObject);
begin
  loaitonghop := 0;

  if prmUSEUPPERCASE then
      pedtObj.CharCase := ecUpperCase;
  if CurLanguage=2 then
    TreeReportColName.FieldName:='ENGLISH_NAME';

  SetOnFormCreate(Self);

  if ((CurrentUser='UserAdmin') or (CurrentUser='SSPAdmin')) then
  begin
    TreeReportRPT_STATUS.Visible:=TRue;
    panel1.Visible := true;
  end;


  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  makh := '';



  qryListReport.Open;
  qryListReport.First;
  MaxCusReportID:=2000;
  qryGetMaxID.Open;

  if MaxCusReportID<=qryGetMaxIDMAX.AsInteger then
    MaxCusReportID:=qryGetMaxIDMAX.AsInteger+1;

  qryReportCaption.Open;

  bbtnDefReport.Enabled:=SSPUserRight[6].ER;

  spnFromMonth.IntValue :=CurMonth;
  spnFromYear.IntValue := CurYear;
  spnFromYearQ.IntValue := CurYear;
  spnToMonth.IntValue :=CurMonth;
  spnToYear.IntValue := CurYear;
  spnToYearQ.IntValue := CurYear;
  case CurMonth of
    1,2,3:
      spnFromQuarter.IntValue:=1;
    4,5,6:
      spnFromQuarter.IntValue:=2;
    7,8,9:
      spnFromQuarter.IntValue:=3;
    else
      spnFromQuarter.IntValue:=4;
  end;
  spnToQuarter.IntValue:= spnFromQuarter.IntValue;

  dedtFromDate.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dedtToDate.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(dedtFromDate.Date)) ;


  FID := qryListReport.FieldByName('REPORT_ID').AsInteger;

  PnlTaikhoan.Width:=1;
  pnlCommon.Width := 1;
  PnlBeginText.Width :=1;
  PnlDocType.Width :=1;
  pnlBPSudung.Width := 1;
  pnlBudget.Width :=1;

  if (CurrentUser = 'SSPAdmin') then
  begin
      bbtnCheckallReport.Visible := ivAlways;
      btnCheckReport.Visible := ivAlways;
      bbtnSEtDefaultAll.Visible := ivAlways;
  end;

  //Thinh them

  MainDM.qryBranch.Locate('BRANCH_ID',vpBranch_id,[]);
  //popBranch.Text := Maindm.qryBranchFULLNAME.Value;
  popBranch.Text := Maindm.qryBranchSHORTNAME.Value;
  if MainDM.qryBranch.RecordCount = 1 then
    popBranch.enabled := FALSE;


end;

function TAnalystFrm.GetParamValue(AParamName: Widestring): Variant;
begin
  AParamName := UpperCase(AParamName);
  if (AParamName = 'BUDGET_ID')  then
    begin
    Result := popBudget.Text;
    exit;
  end;
  if (AParamName = 'BRANCH') or (AParamName = 'BRANCH_ID') then
    begin
    Result := {qryComBranchBRANCH_ID.Value; //}Maindm.qryBranchBRANCH_ID.Value;
    exit;
  end;
  if (AParamName = 'USERNAME') then
  begin
    Result := CurrentUser;
    exit;
  end;
  if (AParamName = 'NGAYDN') then
  begin
    Result := DateBeginOfMonth(1, YearOf(pmFromDate));
    exit;
  end;
  if (AParamName = 'NGAYCN') then
  begin
    Result := EndOfTheYear(pmToDate);
    exit;
  end;
  if FID=155 then
  begin
    if AParamName='SODONGDAU' then
    begin
      Result := optRowCountFirstPage;
      exit;
    end;
    if AParamName='SODONGSAU' then
    begin
      Result := optRowCountOtherPage;
      exit;
    end;
  end;
  if (AParamName = 'KYDN') then
  begin
    Result := BuildPeriod(1,spnFromYear.IntValue);
    exit;
  end;
  if (AParamName = 'REPORT_ID') then
  begin
    Result := qryListReportREPORT_ID.Value;
    exit;
  end;
  if (AParamName = 'NGAYCUOITHANG') then
  begin
    Result := EncodeDate(spnToYear.IntValue, spnToMonth.IntValue,DaysInMonth(EncodeDate(spnToYear.IntValue, spnToMonth.IntValue,1))) ;
    exit;
  end;
  if (AParamName = 'TUNGAY') then
  begin
    Result := pmFromDate;
    exit;
  end;
  if (AParamName = 'BEGINTEXT') then
  begin
    Result := edtBeginText.Text;
    exit;
  end;
  if (AParamName = 'LOAIDT') then
  begin
    Result := MainDM.qryObjTypeOTYPE_ID.AsInteger;
    exit;
  end;
  if (AParamName = 'DOCTYPE_ID') then
  begin
    if chkDocType.Checked then
      Result := MainDM.qryPDocTypeDOCTYPE_ID.AsInteger
    else
      Result := -1;

    exit;
  end;
  if (AParamName = 'MATT') then
  begin
    Result := popCommon.Text;
    exit;
  end;
  if ((AParamName = 'MAHH') or (AParamName = 'MAKH') or (AParamName = 'MAPX') or (AParamName = 'MADT') or (AParamName = 'AMADT')) then
  begin
    Result := pedtObj.Text;
    exit;
  end;
  //Thinh them =================================
  if ((AParamName = 'AMAYT') or (AParamName = 'MAYT') or (AParamName = 'AMAYT1') or (AParamName = 'MAYT1')) then
  begin
    Result := pedtMAYT.Text;
    exit;
  end;
  //Thinh them =================================
  if ((AParamName = 'AMAYT2') or (AParamName = 'MAYT2')) then
  begin
    Result := pedtMAYT2.Text;
    exit;
  end;
  //Thinh them =================================
  if (AParamName = 'LOAITONGHOP') then
  begin
    //if chkDT.Checked
    Result := pedtMAYT2.Text;
    exit;
  end;
  // =====================================
  if (AParamName = 'DENNGAY') then
  begin
    Result := pmToDate;
    exit;
  end;
  if (AParamName = 'SHTK') or (AParamName = 'ASHTK') then
  begin
    Result := pedtSHTK.Text;
    exit;
  end;
  if (AParamName = 'MAKHO') then
  begin
    Result := popCommon.Text;
    exit;
  end;
  if (AParamName = 'MACT') then
  begin
    if popCommon.Text='' then
      Result := ''
    else
      Result := MainDM.qryPWorkWORK_ID.Value;
    exit;
  end;
  if (AParamName = 'MANHOMDT') then
  begin
    Result := popObjGrp.Text;
    exit;
  end;
  if (AParamName = 'TUOINO') then
  begin
    Result := spnTuoino.IntValue;
    exit;
  end;
  if (AParamName = 'TUOINONN') then
  begin
    Result := spnTuoinoNN.IntValue;
    exit;
  end;
  if (AParamName = 'KHOANGCACH') then
  begin
    Result := spnKhoangCach.IntValue;
    exit;
  end;
  if (AParamName = 'SODOAN') then
  begin
    Result := spnSoDoan.IntValue;
    exit;
  end;
  if ((AParamName = 'KYHT') or (AParamName = 'TUKY')) then
    Result := pmFromMonth
  else
    if AParamName = 'NAMHT' then
      Result := spnFromYear.Text
    else
      if AParamName='DENKY' then
        Result := pmToMonth;

end;


function TAnalystFrm.GetSQL: Widestring;
var
  tmp :Widestring;
begin
  if qryListReport.FieldByName('KEYFIELD').isNull then
    szKeyField := ''
  else
    szKeyField := qryListReport.FieldByName('KEYFIELD').Value;
  if qryListReport.FieldByName('SQLSUB_1').IsNull then
    sqlsub_1 := ''
  else
    sqlsub_1 := qryListReport.FieldByName('SQLSUB_1').Value;
  if qryListReport.FieldByName('SQLSUB_2').IsNull then
    sqlsub_2 := ''
  else
    sqlsub_2 := qryListReport.FieldByName('SQLSUB_2').Value;
  if qryListReport.FieldByName('SQLSUB_3').IsNull then
    sqlsub_3 := ''
  else
    sqlsub_3 := qryListReport.FieldByName('SQLSUB_3').Value;
  if qryListReport.FieldByName('SQLSELECT').IsNull then
    tmp := ''
  else
    tmp := qryListReport.FieldByName('SQLSELECT').Value;
  if qryListReport.FieldByName('WhereSQLDetail').IsNull then
    WhereSQLDetail := ''
  else
    WhereSQLDetail := qryListReport.FieldByName('WhereSQLDetail').Value;

  sqlsub_1 := AnsiReplaceStr(sqlsub_1, #13#10, ' ');
  sqlsub_2 := AnsiReplaceStr(sqlsub_2, #13#10, ' ');
  sqlsub_3 := AnsiReplaceStr(sqlsub_3, #13#10, ' ');
{  tmp:= LowerCase(tmp);
  tmp:= StringReplace(tmp,':tuky',''''+GetParamValue('tuky')+'''',[rfReplaceAll]);
  tmp:= StringReplace(tmp,':denky',''''+GetParamValue('denky')+'''',[rfReplaceAll]);}
  Result := AnsiReplaceStr(tmp, #13#10, ' ');
end;

procedure TAnalystFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  vpObjectIdFilter := '';
  Action := caFree;
end;

procedure TAnalystFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  AnalystFrm := nil;
end;

function TAnalystFrm.BuildPeriod(AMonth, AYear: integer): Smallint;
begin
  Result := AYear*12+ AMonth;
end;

procedure TAnalystFrm.acDesignerExecute(Sender: TObject);
var
  i:Integer;
begin
  if CurLanguage=2 then
  begin
    if IsNotHasData(qryListReport.fieldByName('ENGTEMPLATE')) then
    begin
      ShowMessageUnicode(106);
      exit;
    end;
  end
  else if IsNotHasData(qryListReport.fieldByName('FILETEMPLATE')) then
  begin
    ShowMessageUnicode(106);
    exit;
  end;

  if Not MainDM.qryReport.Active then
    if Not InitData then Exit;
    
  if (qryListReportLOAIBAOCAO.AsInteger<>0) then
    acSubProcess.Execute;
  MainDM.qryReport.DisableControls;

  if CurLanguage=2 then
    rptReport.Template.FileName := TemplatePath + qryListReportENGTEMPLATE.AsString
  else
    rptReport.Template.FileName := TemplatePath + qryListReportFILETEMPLATE.AsString;
  if FileExists(rptReport.Template.FileName) then
  begin
    Screen.Cursor := crHourGlass;
    try
      rptReport.Template.Load;
      dsgReport.Report := rptReport;
    finally
      Screen.Cursor := crDefault;
    end;
    for i:=0 to ComponentCount-1 do
    if (Components[i] is TppLabel) then
    if (Components[i] as TppLabel).Height<0.1 then
    begin
      (Components[i] as TppLabel).Height:=12; //0.2;
      (Components[i] as TppLabel).width:=12;
    end;

    dsgReport.ShowModal;
    for i:=0 to dsgReport.ComponentCount-1 do
      dsgReport.Components[i].Destroy;    
  end
  else
    ShowMessageUnicode(107);
end;

function TAnalystFrm.GetbarCodeString :String;
var
  T:TType;
  MST,Thang, Nam,Tel,Fax, Email,Hoatdong:string;
begin
  T[11]:= FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT11').AsFloat));
  T[12]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT12').AsFloat));
  T[13]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT13').AsFloat));
  T[14]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT14').AsFloat));
  T[15]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT15').AsFloat));
  T[16]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT16').AsFloat));
  T[17]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT17').AsFloat));
  T[18]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT18').AsFloat));
  T[19]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT19').AsFloat));
  T[20]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT20').AsFloat));
  T[21]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT21').AsFloat));
  T[22]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT22').AsFloat));
  T[23]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT23').AsFloat));
  T[24]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('DT24').AsFloat));

  T[25]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT25').AsFloat));
  T[26]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT26').AsFloat));
  T[27]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT27').AsFloat));
  T[28]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT28').AsFloat));
  T[29]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT29').AsFloat));
  T[30]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT30').AsFloat));
  T[31]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT31').AsFloat));
  T[32]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT32').AsFloat));
  T[33]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT33').AsFloat));
  T[34]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT34').AsFloat));
  T[35]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT35').AsFloat));
  T[36]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT36').AsFloat));
  T[37]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT37').AsFloat));
  T[38]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT38').AsFloat));
  T[39]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT39').AsFloat));
  T[40]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT40').AsFloat));
  T[41]:=FloatToStr(Round(MainDM.qrySub_1.FieldByName('VAT41').AsFloat));

  if MainDM.qrySub_1.FieldByName('DT10').AsString='X' then
    Hoatdong:='1'
  else
    Hoatdong:='0';

  with MainDM do
  begin
    MST:=LeftStr(qryHSCTTAXCODE.AsString,10);
    thang:=IntToStr(pmFromMonth);
    nam:=IntToStr(spnFromYear.IntValue);
    Tel:=qryHSCTTELPHONE.AsString;
    Fax:=qryHSCTTELPHONE.AsString;
    Email:=qryHSCTEMAL.AsString;
  end;
  Result:=Encode(mst,thang,Nam,Tel,Fax,Email,Hoatdong,T);
end;

procedure TAnalystFrm.OnBeforePrint;
var i: integer;
  compReport: TComponent;
  DisplayCap:Widestring;
  CompCap:String;

begin
  MainDM.dsPComObj.DataSet.Open;
  if (OtherStatus[4]) and (pedtObj.Text<>'') then
  if pedtObj.Text<>MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
    MainDM.dsPComObj.DataSet.Locate('OBJECT_ID',pedtObj.Text,[]);

 //Thinh them ===========================
  if (OtherStatus[9]) and (pedtMAYT.Text<>'') then
  if pedtMAYT.Text<>MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
    MainDM.dsPComObj.DataSet.Locate('OBJECT_ID',pedtMAYT.Text,[]);
 //======================================
  //Thinh them ===========================
  if (OtherStatus[10]) and (pedtMAYT2.Text<>'') then
  if pedtMAYT2.Text<>MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value then
    MainDM.dsPComObj.DataSet.Locate('OBJECT_ID',pedtMAYT2.Text,[]);
 //======================================
  MainDM.GetCurObjInfo;

  MainDM.qryPAcc.Open;
  MainDM.qryPWare.Open;
  for i:=0 to ComponentCount-1 do
  begin
    compReport := Components[i];

    if FID=9 then
    //if (compReport is TRBEan) then
    begin
      {(compReport as TRBEan).PDF417.Mode:=psPDF417Binary;
      (compReport as TRBEan).PDF417.Cols:=8;
      (compReport as TRBEan).PDF417.SecurityLevel:= psPDF417Error2;

      (compReport as TRBEan).BarCode:=GetbarCodeString;
      }
      Continue;
    end;

    if not (compReport is TppLabel) then
      Continue;
    DisplayCap:='\\\///';
    if (compReport as TppLabel).Height<0.1 then (compReport as TppLabel).Height:=0.2;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));

    // tradtt them [23-3-09]  -  sua loi 1849: mo phieu ra sua lai thi len bao cao kg dung so TK da chon
    if pedtSHTK.Text<>MainDM.qryPAccACCOUNT_ID.Value then
       MainDM.qryPAcc.Locate('ACCOUNT_ID',pedtSHTK.Text,[]);

    if (CompCap='lblthoigian') then DisplayCap := GetCaptionConditionTime
    else if (CompCap='lblworkday') then DisplayCap := FormatDateTime('dd',WorkingDate)
    else if (CompCap='lblworkmonth') then DisplayCap := FormatDateTime('MM',WorkingDate)
    else if (CompCap='lblworkyear') then DisplayCap := FormatDateTime('yyyy',WorkingDate)
    else if (CompCap='lbltomonth') then DisplayCap := spnToMonth.Text + '/' + spnToYear.Text
    else if (CompCap='lblfrommonth') then DisplayCap := spnFromMonth.Text + '/' + spnFromYear.Text
    else if (CompCap='lbl_shtk') then DisplayCap := pedtSHTK.Text
    else if (CompCap='lbl_tentk') then DisplayCap := MainDM.qryPAccACCOUNT_NAME.Value
    else if (CompCap='lbl_tentkeng') then DisplayCap := MainDM.qryPAccEnglish_NAME.Value
    else if (CompCap='lbl_rptmonth') then DisplayCap := spnFromMonth.Text
    else if (CompCap='lbl_rptyear') then DisplayCap := spnFromYear.Text
    else if (CompCap='lbl_tencongno') then DisplayCap:= MainDM.qryPAccACCOUNT_ID.Value + ' - ' + MainDM.qryPAccACCOUNT_NAME.Value
    else if (CompCap='lbl_tungay') then DisplayCap := DateToStr(dedtFromDate.Date)
    else if (CompCap='lbl_denngay') then DisplayCap := DateToStr(dedtToDate.Date)
    else if (CompCap='lbl_fromday') then  DisplayCap := FormatDateTime('dd',dedtFromDate.Date)
    else if (CompCap='lbl_frommonth') then DisplayCap := FormatDateTime('MM',dedtFromDate.Date)
    else if (CompCap='lbl_fromyear') then DisplayCap := FormatDateTime('yyyy',dedtFromDate.Date)
    else if (CompCap='lbl_today') then DisplayCap := FormatDateTime('dd',dedtToDate.Date)
    else if (CompCap='lbl_tomonth') then DisplayCap := FormatDateTime('MM',dedtToDate.Date)
    else if (CompCap='lbl_toyear') then DisplayCap := FormatDateTime('yyyy',dedtToDate.Date)
    else if (CompCap='lbl_todate') then DisplayCap := DateToStr(dedtToDate.Date)
    else if (CompCap='lbl_fromdate') then DisplayCap := DateToStr(dedtFromDate.Date)
    else if (CompCap='lbl_tenkho') then DisplayCap := MainDM.qryPWareWAREHOUSE_ID.Value + ' - ' + MainDM.qryPWareWAREHOUSE_NAME.Value
    //Thinh
    else if (CompCap='lbl_tenyt') then DisplayCap := Factor_Name
    else if (CompCap='lbl_mayt') then DisplayCap := pedtMAYT.Text
    //Thinh
    else if (CompCap='lbl_tenyt2') then DisplayCap := Factor2_Name
    else if (CompCap='lbl_mayt2') then DisplayCap := pedtMAYT2.Text
    //Thinh
    else if (CompCap='lbl_tkdtytyt2') then
      begin

        DisplayCap := pedtSHTK.Text + ' - ' + MainDM.qryPAccACCOUNT_NAME.Value ;
        if (pedtObj.Text <>'') and (PnlObj.Height >10) then
          DisplayCap := DisplayCap + #13#10 + pedtObj.Text + ' - '+ Object_Name;
        if (pedtMAYT.Text <>'') and (pnlMAYT.height > 10) then
          DisplayCap := DisplayCap + #13#10 + pedtMAYT.Text + ' - ' + Factor_Name ;
        if (pedtMAYT2.Text <>'') and (pnlMAYT2.height > 10) then
          DisplayCap := DisplayCap + #13#10 + pedtMAYT2.Text + ' - ' + Factor2_Name  ;
      end
    else if(CompCap='title_sct') then
      begin
        DisplayCap := UTF8Decode(' SỔ CHI TIẾT TÀI KHOẢN');
        if (pedtObj.Text <>'') and (PnlObj.Height >10) then
          DisplayCap := DisplayCap + UTF8Decode(' - ĐỐI TƯỢNG');
        if (pedtMAYT.Text <>'') and (pnlMAYT.height > 10) then
          DisplayCap := DisplayCap + UTF8Decode(' - YẾU TỐ 1');
        if (pedtMAYT2.Text <>'') and (pnlMAYT2.height > 10) then
          DisplayCap := DisplayCap + UTF8Decode(' - YẾU TỐ 2');
      end
    // Het Thinh them -----------------
    else if (CompCap='lbl_tkdt') then DisplayCap := pedtSHTK.Text + '.' + pedtObj.Text
    else if (CompCap='lbl_tkyt') then DisplayCap := pedtSHTK.Text + '.' + pedtMAYT.Text
    else if (CompCap='lbl_tkdtyt') then DisplayCap := pedtSHTK.Text + '.' + pedtObj.Text + '.' + pedtMAYT.Text
    else if (CompCap='lbltenhh') or (CompCap='lbldoituong') or (CompCap='lblphanxuong') then
    begin
      if pedtObj.Text='' then
        DisplayCap := ''
      else
        DisplayCap := MainDM.CurObjID + ' - ' + MainDM.CurObjName;
    end
    else if (CompCap='lblmadt') then
    begin
      if pedtObj.Text='' then
        DisplayCap := ''
      else
        DisplayCap := MainDM.CurObjID;
    end
    else if (CompCap='lbltendt') then
    begin
      if pedtObj.Text='' then
        DisplayCap := ''
      else
        DisplayCap := MainDM.CurObjName;
    end
    else if (CompCap='lbltiente') then DisplayCap:= MainDM.qryPCurrencyCURRENCY_ID.Value
    else if (CompCap='lblquy') then DisplayCap := IntToStr(spnFromQuarter.IntValue)
    else if (CompCap='lbltenloaiphieu') then
    begin
      if chkDocType.Checked then
        DisplayCap := WideUpperCase(MainDM.qryPDocTypeDOCTYPE_NAME.Value)
      else
        DisplayCap := '';
    end
    else if (CompCap='lblsub1') then
    begin
      if pedtObj.Text='' then
        DisplayCap := ''
      else
        DisplayCap := MainDM.CurObjSub1;
    end
    else if (CompCap='lblsub2') then
    begin
      if pedtObj.Text='' then
        DisplayCap := ''
      else
        DisplayCap := MainDM.CurObjSub2;
    end
    else if (CompCap='lblnguoilap') then DisplayCap := FullUserName
    else if (CompCap='lblnhomdt') then
    begin
      if popObjGrp.Text='' then
        DisplayCap :=''
      else
      begin
        MainDM.qryPObjGrp.Open;
        if MainDM.qryPObjGrpOBJGRP_ID.Value<> popObjGrp.Text then
          MainDM.qryPObjGrp.Locate('OBJGRP_ID',popObjGrp.Text,[]);
        DisplayCap :=MainDM.qryPObjGrpOBJGRP_NAME.Value;
      end;
    end;

    if DisplayCap<>'\\\///' then
      (compReport as TppLabel).Caption := DisplayCap;
    if FID=518 then
      if (CompCap='lblsotien') then
      begin
        MainDM.qryReport.Last;
        (compReport as TppLabel).Caption := DocSoThanhChu(MainDM.qrySub_2.FieldByName('CONLAI').Value);
      end;
    if (CompCap='lblconlai') then
    begin
        MainDM.qryReport.Last;
        (compReport as TppLabel).Caption := DocSoThanhChu(MainDM.qryReport.FieldByName('CONLAI').Value)
    end;
    if (FID=9) then
    begin
      if (CompCap='lbl_sotiena') then
      begin
        DisplayCap:= DocSoThanhChu(MainDM.qrySub_1.FieldByName('VAT10').Value);
        CatDoiChuoi(DisplayCap,StrToInt(ReadValueFromInniFile('ToKhaiThue','PrintOptions','70')));
        (compReport as TppLabel).Caption := StrOutput1;
      end;
      if (CompCap='lbl_sotienb') then
      begin
        (compReport as TppLabel).Caption := StrOutput2;
      end;
    end;
  end;
end;

procedure TAnalystFrm.acSubProcessExecute(Sender: TObject);
var
  i:Smallint;
begin
  if qryListReport.RecordCount=0 then exit;
  if sqlsub_1<>'' then
  with MainDM.qrySub_1 do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text:= sqlsub_1;
    try
      Prepare;
    except
      ShowMessageUnicode(211);
      Exit;
    end;
    if FID<>1 then
    for i:=0 to ParamCount-1 do
      ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
    Open;
  end;

  if sqlsub_2<>'' then
  with MainDM.qrySub_2 do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text:= sqlsub_2;
    try
      Prepare;
    except
      ShowMessageUnicode(211);
      Exit;
    end;
    if FID<>1 then
    for i:=0 to ParamCount-1 do
      ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
    Open;
  end;
  if sqlsub_3<>'' then
  with MainDM.qrySub_3 do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text:= sqlsub_3;
    try
      Prepare;
    except
      ShowMessageUnicode(211);
      Exit;
    end;
    if FID<>1 then
    for i:=0 to ParamCount-1 do
      ParamByName(Params[i].Name).Value := GetParamValue(Params[i].Name);
    Open;
  end;
end;

procedure TAnalystFrm.TreeReportDblClick(Sender: TObject);
begin
  if qryListReport.RecordCount=0 then exit;
    btnReadToGridClick(Sender);
end;

procedure TAnalystFrm.TreeReportMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if qryListReport.RecordCount=0 then exit;
  if Button <> mbRight then exit;

  bbtnAddReport.Enabled :=SSPUserRight[6].IR;
  bbtnDelReport.Enabled:=qryListReportREPORT_ID.AsInteger>=2000;
  pmTree.PopupFromCursorPos;
end;

procedure TAnalystFrm.ThucHienInBC(IsDirect:Boolean);
var
  //lFieldLink0: TppMasterFieldLink;
	lFieldLink1: TppMasterFieldLink;
 	lFieldLink2: TppMasterFieldLink;
 	lFieldLink3: TppMasterFieldLink;
  lFieldLink4: TppMasterFieldLink;
  lFieldLink5: TppMasterFieldLink;
  lFieldLink6: TppMasterFieldLink;
begin
  if Not CheckConditionTime then Exit;

  if CurLanguage=2 then
  begin
    if IsNotHasData(qryListReportENGTEMPLATE) then
    begin
      ShowMessageUnicode(106);
      exit;
    end;
  end
  else if IsNotHasData(qryListReportFILETEMPLATE) then
  begin
    ShowMessageUnicode(106);
    exit;
  end;

  if (qryListReportLOAIBAOCAO.AsInteger<>0) then
    acSubProcess.Execute;

  if not MainDM.qryReport.Active then
    if Not InitData then Exit;

  { NQN them }

  //if qryListReportREPORT_ID.AsInteger = 2012 then
  //begin
	  {define the master/detail pipeline relationship}
  	dplSub_3.MasterDataPipeline := dplReport;

	  {create a new field link }
    lFieldLink6 := TppMasterFieldLink.Create(nil);
  	lFieldLink1 := TppMasterFieldLink.Create(nil);
	  lFieldLink2 := TppMasterFieldLink.Create(nil);
  	lFieldLink3 := TppMasterFieldLink.Create(nil);
    lFieldLink4 := TppMasterFieldLink.Create(nil);

    lFieldLink6.Parent := dplSub_3;
    lFieldLink1.Parent := dplSub_3;
	  lFieldLink2.Parent := dplSub_3;
  	lFieldLink3.Parent := dplSub_3;
    lFieldLink4.Parent := dplSub_3;
    {Thinh them - Bao cao chay theo, lien tuc khach hang}
    if ((WideLowerCase(qryListReportKEYFIELD.Value) = 'madt_out')
      or (WideLowerCase(qryListReportKEYFIELD.Value) = 'madt')) then
    begin
  	{assign the detail field name}
    lFieldLink6.DetailFieldName := 'branch_id';
    lFieldLink1.DetailFieldName := 'madt_out';
    lFieldLink2.DetailFieldName := 'kyht';
    lFieldLink3.DetailFieldName := 'ngaylap';
		lFieldLink4.DetailFieldName := 'sophieu';

  	{assign the master field name}
    lFieldLink6.MasterFieldName := 'branch_id';
    lFieldLink1.MasterFieldName := 'madt_out';
	  lFieldLink2.MasterFieldName := 'kyht';
 	  lFieldLink3.MasterFieldName := 'ngaylap';
   	lFieldLink4.MasterFieldName := 'sophieu';
    end {End 5 keylink}
   {Bao cao chay theo - Lien tuc tai khoan con}
   else if ((WideLowerCase(qryListReportKEYFIELD.Value) = 'shtk_out')
      or (WideLowerCase(qryListReportKEYFIELD.Value) = 'shtk')) then
   begin
  	{assign the detail field name}
    lFieldLink6.DetailFieldName := 'branch_id';
    lFieldLink1.DetailFieldName := 'shtk';
    lFieldLink2.DetailFieldName := 'kyht';
    lFieldLink3.DetailFieldName := 'ngaylap';
		lFieldLink4.DetailFieldName := 'sophieu';

  	{assign the master field name}
    lFieldLink6.MasterFieldName := 'branch_id';
    lFieldLink1.MasterFieldName := 'shtk';
	  lFieldLink2.MasterFieldName := 'kyht';
 	  lFieldLink3.MasterFieldName := 'ngaylap';
   	lFieldLink4.MasterFieldName := 'sophieu';
   end {End 5 keylink}
   else {only 4 key link}
   begin
    lFieldLink6.DetailFieldName := 'branch_id';
    lFieldLink1.DetailFieldName := 'kyht';
    lFieldLink2.DetailFieldName := 'ngaylap';
		lFieldLink3.DetailFieldName := 'sophieu';

  	{assign the master field name}
    lFieldLink6.MasterFieldName := 'branch_id';
    lFieldLink1.MasterFieldName := 'kyht';
 	  lFieldLink2.MasterFieldName := 'ngaylap';
   	lFieldLink3.MasterFieldName := 'sophieu';
   end;
  
  qryGetTime.Close;
  qryGetTime.ParamByName('ngayht').AsDate:=WorkingDate;
  qryGetTime.ParamByName('tungay').AsDate:=pmFromDate;
  qryGetTime.ParamByName('denngay').AsDate:=pmToDate;
  qryGetTime.Open;

  MainDM.qryReport.DisableControls;

  if CurLanguage=2 then
    rptReport.Template.FileName := TemplatePath + qryListReportENGTEMPLATE.Value
  else
    rptReport.Template.FileName := TemplatePath + qryListReportFILETEMPLATE.Value;
  if FileExists(rptReport.Template.FileName) then
  begin
    Screen.Cursor:=crHourGlass;
    //Screen.Cursor := crHourGlass;
    try
      rptReport.Template.Load;
      dsgReport.Report := rptReport;
    finally
      Screen.Cursor := crDefault;
    end;
    OnBeforePrint;//set caption labels
    rptReport.AllowPrintToFile:=True;
    if IsDirect then
      rptReport.DeviceType:='Printer'
    else
      rptReport.DeviceType:='Screen';
    rptReport.PreviewFormSettings.WindowState:=wsMaximized;
    rptReport.PreviewFormSettings.ZoomPercentage:=100;
    Screen.Cursor:=crDefault;
    //If Not rptReport.PrintReport then
//      ShowMessageUnicode(210);
    try
      rptReport.PrintReport
    except
       ShowMessageUnicode(210);
    end;
    rptReport.CloseDataPipelines;
  end
  else
    ShowMessageUnicode(107);
  MainDM.qryReport.EnableControls;
end;

procedure TAnalystFrm.TreeReportChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  if TreeReport.Tag=1 then Exit;

   if AnalystFrm.qryListReport.State in [dsInsert, dsEdit] then
  begin
      AnalystFrm.qryListReport.Post;
  end;

  acChangeNode.Execute;
end;

procedure TAnalystFrm.pedtSHTKCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
    text := MainDM.qryPAccACCOUNT_ID.Value;
  //-------------------------
  AllowSelectParent :=False;
end;

procedure TAnalystFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPWareWAREHOUSE_ID.Value;
end;

procedure TAnalystFrm.pedtSHTKInitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  AllowSelectParent :=True;

  if FilterAccType<>qryListReportLOAITAIKHOAN.AsInteger then
  begin
    FilterAccType:=qryListReportLOAITAIKHOAN.AsInteger;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TAnalystFrm.pedtObjCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
  begin
    Text := vpItemID;
  //Thinh them
    MainDM.GetCurObjInfo;
    Object_Name := maindm.CurObjName; //Thinh
  end
end;

procedure TAnalystFrm.pedtSHTKExit(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  if ((qryListReportLOAIDOITUONG.IsNull) or (qryListReportLOAIDOITUONG.AsInteger=0)) then
    MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger  // doi tuong
  else if (qryListReportLOAIDOITUONG.AsInteger=-1) then
    MainDM.CurObjTypeID:= MainDM.qryPAccDTYPE_ID.AsInteger // yeu to 1
  else if (qryListReportLOAIDOITUONG.AsInteger=-2) then
    MainDM.CurObjTypeID:= MainDM.qryPAccDTYPE_ID_1.AsInteger // yeu to 2
  else
    MainDM.CurObjTypeID:=qryListReportLOAIDOITUONG.AsInteger;

  if (pedtSHTK.Text<>'') and (pnlTaikhoan.height > 1) then
  if pedtSHTK.Text<>MainDM.qryPAccACCOUNT_ID.Value then
    MainDM.qryPAcc.Locate('ACCOUNT_ID',pedtSHTK.Text,[]);

  if (PnlObj.Height>10) and (pnlTaikhoan.height > 1) and (qryListReportLOAIDOITUONG.AsInteger = 0) then
  begin
    MainDM.CurObjTypeID := MainDM.qryPAccOTYPE_ID.Value;
    MainDM.qryObjType.Open;
    MainDM.qryObjType.Locate('OTYPE_ID',MainDM.CurObjTypeID,[]);
    LblObj.Caption:=MainDM.qryObjTypeOTYPE_NAME.Value + ' :';
    if CurLanguage = 2 then
      LblObj.Caption:='Object: ';
  end;

  if (pnlMAYT.Height > 10) and  (CurLanguage = 2) then
      lblMAYT.Caption:='Factor 1 : ';

  if (pnlMAYT2.Height > 10) and  (CurLanguage = 2) then
      lblMAYT2.Caption:='Factor 2 : ';
  maindm.qrypcomobj.close;
  maindm.qrypcomobj.open;

end;

procedure TAnalystFrm.TreeReportKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    TreeReportColName.DisableEditor:=False;
    TreeReport.ShowEditor;
  end
  else if Key=VK_Return then
    btnReadToGridClick(Sender)
  else
    ProcessKeyDownInGrid(TreeReport, Key, Shift, True,4);
end;

procedure TAnalystFrm.qryListReportFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := (qryListReportLOAIBAOCAO.AsInteger=ElPageControl1.ActivePageIndex);
end;

procedure TAnalystFrm.acChangeNodeExecute(Sender: TObject);
begin
  MainDM.qryReport.Close;
  if qryListReport.RecordCount=0 then exit;
    FID := qryListReportREPORT_ID.AsInteger;
  SQLSelect := GetSQL();
  WhereSQLDetail:=qryListReportWHERESQLDETAIL.Value;
  SetArrayOtherStatus;//Cac dieu kiem mo rong khac dieu kien thoi gian

  // Thinh - Them moi - hien thi panel
  //pnlLOAITONGHOP.Visible := (pos('loaitonghop',qryListReportSQLSELECT.Value) > 0);
  //Thinh them
  edtBeginText.Text := qryListReportBEGINTEXT.Value;

  if OtherStatus[8] then
  begin
    PnlObjType.Height:=25;
    MainDM.qryObjType.Open;
  end
  else
    PnlObjType.Height:=1;

  if OtherStatus[0] then//Co hien thi tk
  begin
    PnlTaikhoan.Height:=25;
    FilterAccType:=qryListReportLOAITAIKHOAN.AsInteger;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
    MainDM.qryPAcc.Open;
    MainDM.qryPAcc.First;
    if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',pedtSHTK.Text,[]) then
      pedtSHTK.Text:=MainDM.qryPAccACCOUNT_ID.Value;
  end
  else
    PnlTaikhoan.Height:=1;
  if OtherStatus[1] then
  begin
    PnlBeginText.Height:=25;
    if IsHasData(qryListReportBEGINTEXTNAME) then
      LblBeginText.Caption:=qryListReportBEGINTEXTNAME.Value
    else
      LblBeginText.Caption:=UTF8Decode(' Bắt đầu với :');
  end
  else
    PnlBeginText.Height:=1;
  if OtherStatus[2] then
    PnlDocType.Height:=25
  else
    PnlDocType.Height:=1;

  if OtherStatus[3] then//Khong co chon dt
  begin
    PnlObjGrp.Visible:=True;
    PnlObjGrp.Height:=25;    
    MainDM.qryPDocType.Open;
  end
  else
  begin
    PnlObjGrp.Visible:=False;
    PnlObjGrp.Height:=1;
  end;
  if OtherStatus[4] then
    PnlObj.Height:=25
  else
    PnlObj.Height:=1;

  // Thinh them =================
    if OtherStatus[9] then
    begin
      PnlMAYT.Height:=25;
      if (pnlMAYT.Height > 10) and  (CurLanguage = 2) then
        lblMAYT.Caption:='Factor 1 : '
    end
    else
      PnlMAYT.Height:=1;
  //=============================
  // Thinh them =================
    if OtherStatus[10] then
    begin
      PnlMAYT2.Height:=25;
      if (pnlMAYT2.Height > 10) and  (CurLanguage = 2) then
        lblMAYT2.Caption:='Factor 2 : '
    end
    else
      PnlMAYT2.Height:=1;
  //=============================
    if (OtherStatus[11]) and (qryListReportLOAIDOITUONG.Value > 0) then
      pnlBPSudung.Height:=25
    else
      pnlBPSudung.Height:=1;

  //=============================
    if (OtherStatus[12]) then
      pnlBudget.Height:=25
    else
      pnlBudget.Height:=1;

  //=============================

  if OtherStatus[5] then
    PnlCommon.Height:=25
  else
    PnlCommon.Height:=1;
  if OtherStatus[6] then
    PnlTuoino.Height:=25
  else
    PnlTuoino.Height:=1;

  if OtherStatus[7] then
    PnlPhanloaiCN.Height:=25
  else
    PnlPhanloaiCN.Height:=1;

  if OtherStatus[4] then
  if qryListReportLOAIDOITUONG.AsInteger<>0 then
  begin
    MainDM.CurObjTypeID:=qryListReportLOAIDOITUONG.AsInteger;
    MainDM.qryObjType.Open;
    MainDM.qryObjType.Locate('OTYPE_ID',qryListReportLOAIDOITUONG.AsInteger,[]);
    LblObj.Caption:=MainDM.qryObjTypeOTYPE_NAME.Value + ' :';
  end;
  with MainDM do
  case qryListReportLOAIDTKHAC.AsInteger of
    1://Tien te
    begin
      popCommon.PopupControl := PopupFrm.grdNgoaite;
      LblChung.Caption:=UTF8Decode('Mã số tiền tệ :');
      qryPCurrency.Open;
    end;
    2://Kho hang
    begin
      popCommon.PopupControl := PopupFrm.PnlWare;
      LblChung.Caption:=UTF8Decode('Mã số kho hàng :');
      qryPWare.Open;
    end;
    3://Cong trinh xay dung
    begin
      popCommon.PopupControl := PopupFrm.PnlWork;
      LblChung.Caption:=UTF8Decode('Mã số công trình :');
      qryPWork.Open;
    end;

  end;

  case qryListReportCONDITIONTYPE.AsInteger of
    0: //Bao cao nam
    begin
      rbMonth.Enabled:=True;
      rbDate.Enabled:=False;
      rbQuarter.Enabled:=False;
      spnFromMonth.Visible:=False;
      spnToMonth.Visible:=False;
      spnToYear.Visible:=False;
      lblTo.Visible:=False;
      dedtFromDate.Visible:=True;
      if rbMonth.Checked=False then
      begin
        rbMonthClick(Sender);
        rbMonth.Checked:=True;
      end;
    end;
    1: //1 thang: Gia thanh..
    begin
      rbMonth.Enabled:=True;
      rbDate.Enabled:=False;
      rbQuarter.Enabled:=False;
      spnFromMonth.Visible:=True;
      spnToMonth.Visible:=False;
      spnToYear.Visible:=False;
      lblTo.Visible:=False;
      dedtFromDate.Visible:=True;
      if rbMonth.Checked=False then
      begin
        rbMonthClick(Sender);
        rbMonth.Checked:=True;
      end;
    end;
    2://Tu thang-thang qui-qui
    begin
      rbMonth.Enabled:=True;
      rbQuarter.Enabled:=True;
      rbDate.Enabled:=False;
      spnFromMonth.Visible:=True;
      spnToMonth.Visible:=True;
      spnToYear.Visible:=True;
      lblTo.Visible:=True;
      dedtFromDate.Visible:=True;
      if rbDate.Checked then
      begin
        rbMonthClick(Sender);
        rbMonth.Checked:=True;
      end;
    end;
    3://Ngay-Ngay
    begin
      rbMonth.Enabled:=True;
      rbDate.Enabled:=True;
      rbQuarter.Enabled:=True;
      spnFromMonth.Visible:=True;
      spnToMonth.Visible:=True;
      spnToYear.Visible:=True;
      lblTo.Visible:=True;
      dedtFromDate.Visible:=True;
    end;
    4://Ngay
    begin
      rbMonth.Enabled:=False;
      rbDate.Enabled:=True;
      spnFromMonth.Visible:=True;
      rbQuarter.Enabled:=False;
      spnToMonth.Visible:=True;
      spnToYear.Visible:=True;
      lblTo.Visible:=True;
      dedtFromDate.Visible:=False;
      if not rbDate.Checked then
      begin
        rbDate.Checked:=True;
        rbdateClick(Sender);
      end;
    end;
  end;
  btnThang.Enabled:=rbMonth.Enabled;
  btnQuy.Enabled:=rbQuarter.Enabled;
  btnNgay.Enabled:=rbDate.Enabled;
  acSetButtonsStatus.Execute;
end;

procedure TAnalystFrm.ElPageControl1Change(Sender: TObject);
begin
  qryListReport.OnFilterRecord := qryListReportFilterRecord;
  qryListReport.Filtered := True;
  acChangeNode.Execute;
end;

procedure TAnalystFrm.acPreviewExecute(Sender: TObject);
begin
  ThucHienInBC(False);
end;

procedure TAnalystFrm.acPrintDirectExecute(Sender: TObject);
begin
  ThucHienInBC(True);
end;

procedure TAnalystFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  popBranch.Text := MainDM.qryBranchSHORTNAME.Value;
end;

procedure TAnalystFrm.pmExportPopup(Sender: TObject);
begin
  acSeeDetail.Enabled := WhereSQLDetail<>'';
end;

procedure TAnalystFrm.dxBarButton11Click(Sender: TObject);
begin
  qryListReportREPORT_NAME.FocusControl;
  TreeReport.ShowEditor;
end;

procedure TAnalystFrm.qryListReportAfterCancel(DataSet: TDataSet);
begin
  TreeReportColName.DisableEditor:=True;
  TreeReport.Tag:=0;
end;

procedure TAnalystFrm.qryListReportAfterPost(DataSet: TDataSet);
begin
    TreeReport.Tag:=0;
  TreeReportColName.DisableEditor:=True;
  SQLSelect := GetSQL();
end;

procedure TAnalystFrm.rbMonthClick(Sender: TObject);
begin
  spnFromMonth.Enabled:=True;
  spnToMonth.Enabled:=True;
  spnFromYear.Enabled:=True;
  spnToYear.Enabled:=True;
  spnFromQuarter.Enabled:=False;
  spnToQuarter.Enabled:=False;
  spnFromYearQ.Enabled:=False;
  spnToYearQ.Enabled:=False;
  dedtFromDate.Enabled:=False;
  dedtToDate.Enabled:=False;
end;

procedure TAnalystFrm.rbQuarterClick(Sender: TObject);
begin
  spnFromMonth.Enabled:=False;
  spnToMonth.Enabled:=False;
  spnFromYear.Enabled:=False;
  spnToYear.Enabled:=False;
  spnFromQuarter.Enabled:=True;
  spnToQuarter.Enabled:=True;
  spnFromYearQ.Enabled:=True;
  spnToYearQ.Enabled:=True;
  dedtFromDate.Enabled:=False;
  dedtToDate.Enabled:=False;
end;

function TAnalystFrm.GetCaptionConditionTime():WideString;
begin
  if rbMonth.Checked then
  begin
    if qryListReportCONDITIONTYPE.AsInteger=0 then
      Result:=UTF8Decode('Năm ')+ IntToStr(spnFromYear.IntValue)
    else if qryListReportCONDITIONTYPE.AsInteger=1 then
      Result:=UTF8Decode('Tháng ')+ IntToStr(spnFromMonth.IntValue)+'/'+IntToStr(spnFromYear.IntValue)
    else
    begin
      if ((spnFromMonth.IntValue=spnToMonth.IntValue) and (spnFromYear.IntValue=spnToYear.IntValue)) then
        Result:=UTF8Decode('Tháng ')+ IntToStr(spnToMonth.IntValue)+'/'+IntToStr(spnToYear.IntValue)
      else
        Result:=UTF8Decode('Từ tháng ')+ IntToStr(spnFromMonth.IntValue)+'/'+IntToStr(spnFromYear.IntValue)+ UTF8Decode(' đến tháng ')+ IntToStr(spnToMonth.IntValue)+'/'+IntToStr(spnToYear.IntValue);
    end;        
  end
  else if rbQuarter.Checked then
  begin
    if ((spnFromQuarter.IntValue=spnToQuarter.IntValue) and (spnFromYear.IntValue=spnToYear.IntValue)) then
      Result:=UTF8Decode('Quý ')+ IntToStr(spnToQuarter.IntValue)+UTF8Decode(' năm ')+IntToStr(spnToYear.IntValue)
    else
      Result:=UTF8Decode('Từ quý ')+ IntToStr(spnFromQuarter.IntValue)+UTF8Decode(' năm ')+IntToStr(spnFromYear.IntValue)+ UTF8Decode(' đến quý ')+ IntToStr(spnToQuarter.IntValue)+UTF8Decode(' năm ')+IntToStr(spnToYear.IntValue);
  end
  else
  begin
    if qryListReportCONDITIONTYPE.AsInteger=4 then
      Result:=UTF8Decode('Tại ngày ')+ FormatDateTime(NGAYTHANG_FORMAT, dedtToDate.Date)
    else
    begin
      if (dedtFromDate.Date=dedtToDate.Date)  then
        Result:=UTF8Decode('Ngày ')+ FormatDateTime(NGAYTHANG_FORMAT, dedtFromDate.Date)
      else
        Result:=UTF8Decode('Từ ngày ')+ FormatDateTime(NGAYTHANG_FORMAT, dedtFromDate.Date)+ UTF8Decode(' đến ngày ')+ FormatDateTime(NGAYTHANG_FORMAT, dedtToDate.Date);
    end;
  end;

  wStrOtherCondition:='';
  if ((OtherStatus[0]) and (pedtSHTK.Text<>'')) then
    wStrOtherCondition:=UTF8Decode('Tài khoản : ') + pedtSHTK.Text + ' ';
  if ((OtherStatus[1]) and (edtBeginText.Text<>'')) then
    wStrOtherCondition:=wStrOtherCondition+UTF8Decode('Bắt đầu với : ') + edtBeginText.Text + ' ';
  if ((OtherStatus[2]) and (pedtDocType.Text<>'')) then
    wStrOtherCondition:=wStrOtherCondition+UTF8Decode('Loại chứng từ : ') + pedtDocType.Text + ' ';
  if ((OtherStatus[4]) and (pedtObj.Text<>'')) then
    wStrOtherCondition:=wStrOtherCondition+UTF8Decode('Đối tượng : ') + pedtObj.Text + ' ';
  //Thinh them ==================================
  if ((OtherStatus[9]) and (pedtMAYT.Text<>'')) then
    wStrOtherCondition:=wStrOtherCondition+UTF8Decode('Yếu tố : ') + pedtMAYT.Text + ' ';
  //==================================
  if ((OtherStatus[10]) and (pedtMAYT2.Text<>'')) then
    wStrOtherCondition:=wStrOtherCondition+UTF8Decode('Yếu tố 2 : ') + pedtMAYT2.Text + ' ';
  //==================================
  if ((OtherStatus[5]) and (popCommon.Text<>'')) then
    wStrOtherCondition:=wStrOtherCondition+ popCommon.Text + ' ';
end;

function TAnalystFrm.DateBeginOfMonth(amonth:Word;ayear:Word) : TDate;
begin
  Result:= EncodeDate(ayear,amonth,1);
end;
function TAnalystFrm.DateEndOfMonth(amonth:Word;ayear:Word):TDate;
var
  sodu:Smallint;
  aDay:Word;
begin
  sodu:=ayear mod 4;
  case amonth of
    1,3,5,7,8,10,12:
      aDay:=31;
    2:
      if sodu=0 then
        aDay:=29
      else
        aDay:=28;
    else
      aDay:=30;
  end;
  Result:= EncodeDate(ayear,amonth,aDay);
end;

function TAnalystFrm.CheckOnBeforeBegin(ADate:Tdate):Boolean;
var
  TuThang,TuNam:Integer;
begin
  Result:=True;
  TuThang:=MonthOf(ADate);
  TuNam:=YearOf(ADate);
  if (TuThang+TuNam*12<BeginPeriod) then
  begin
      ShowMessageUnicode(184);
      Result:=False;
  end;
end;
function TAnalystFrm.CheckConditionTime():Boolean;
begin
  Result:=True;
  if rbMonth.Checked then
  begin
    if qryListReportCONDITIONTYPE.AsInteger=0 then//Bao cao nam
    begin
      pmFromMonth:=1+spnFromYear.IntValue*12;
      pmToMonth:=12+spnFromYear.IntValue*12;
      pmFromDate:=DateBeginOfMonth(1,spnFromYear.IntValue);
      pmToDate  :=DateEndOfMonth(12,spnFromYear.IntValue);
    end
    else if qryListReportCONDITIONTYPE.AsInteger=1 then//Bao cao thang
    begin
      pmFromMonth:=spnFromMonth.IntValue+spnFromYear.IntValue*12;
      pmToMonth:=spnFromMonth.IntValue+spnFromYear.IntValue*12;
      pmFromDate:=DateBeginOfMonth(spnFromMonth.IntValue,spnFromYear.IntValue);
      pmToDate  :=DateEndOfMonth(spnFromMonth.IntValue,spnFromYear.IntValue);
    end
    else if ((spnFromMonth.IntValue+spnFromYear.IntValue*12<=spnToMonth.IntValue+spnToYear.IntValue*12) or (qryListReportCONDITIONTYPE.AsInteger=1)) then
    begin
      pmFromMonth:=spnFromMonth.IntValue+spnFromYear.IntValue*12;
      pmToMonth:=spnToMonth.IntValue+spnToYear.IntValue*12;
      pmFromDate:=DateBeginOfMonth(spnFromMonth.IntValue,spnFromYear.IntValue);
      pmToDate  :=DateEndOfMonth(spnToMonth.IntValue,spnToYear.IntValue);
      Result:=CheckOnBeforeBegin(pmFromDate);
      IF Not Result then
        spnFromMonth.SetFocus;
    end
    else
    begin
      //ShowMessageUnicode(108);
      //spnFromMonth.SetFocus;
      hintbox(108,self,spnToMonth);
      Result:=False;
      Exit;
    end;
  end
  else if rbQuarter.Checked then
  begin
    if (spnFromQuarter.IntValue+spnFromYear.IntValue*12<=spnToQuarter.IntValue+spnToYear.IntValue*12) then
    begin
      pmFromMonth:=((spnFromQuarter.IntValue-1)*3 + 1) + spnFromYearQ.IntValue*12;
      pmToMonth:=((spnToQuarter.IntValue-1)*3 + 3) + spnToYearQ.IntValue*12;
      pmFromDate:=DateBeginOfMonth((spnFromQuarter.IntValue-1)*3 + 1,spnFromYearQ.IntValue);
      pmToDate  :=DateEndOfMonth((spnToQuarter.IntValue-1)*3 + 3,spnToYearQ.IntValue);
      Result:=CheckOnBeforeBegin(pmFromDate);
      IF Not Result then
        spnFromQuarter.SetFocus;
    end
    else
    begin
      //ShowMessageUnicode(109);
      //spnFromQuarter.SetFocus;
      hintbox(109,self,spnFromQuarter);
      Result:=False;
    end;
  end
  else
  begin
    if qryListReportCONDITIONTYPE.AsInteger=4 then//Bao cao tai ngay
    begin
      pmFromDate:=EncodeDate(1990,1,1);
      pmToDate  :=dedtToDate.Date;
      Result:=CheckOnBeforeBegin(pmToDate);
      IF Not Result then
        dedtToDate.SetFocus;
    end
    else if ((dedtFromDate.Date<=dedtToDate.Date) or (qryListReportCONDITIONTYPE.AsInteger=4)) then
    begin
      pmFromDate:=dedtFromDate.Date;
      pmToDate  :=dedtToDate.Date;
      Result:=CheckOnBeforeBegin(pmFromDate);
      IF Not Result then
        dedtFromDate.SetFocus;
    end
    else
    begin
      //ShowMessageUnicode(110);
      //dedtFromDate.SetFocus;
      HintBox(110,self,dedtFromDate);
      Result:=False;
    end;
  end;
end;

procedure TAnalystFrm.rbDateClick(Sender: TObject);
begin
  spnFromMonth.Enabled:=False;
  spnToMonth.Enabled:=False;
  spnFromYear.Enabled:=False;
  spnToYear.Enabled:=False;
  spnFromQuarter.Enabled:=False;
  spnToQuarter.Enabled:=False;
  spnFromYearQ.Enabled:=False;
  spnToYearQ.Enabled:=False;
  dedtFromDate.Enabled:=True;
  dedtToDate.Enabled:=True;
end;

procedure TAnalystFrm.btnReadToGridClick(Sender: TObject);
begin
  if Not CheckConditionTime then Exit;

  if Not InitData then exit;
  Screen.Cursor:=crHourGlass;

  if FID=223 then
  begin
    acSubProcess.Execute;
    with TNhatKySoCaiFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
    Exit;
  end
  else if FID=170 then
  begin
    With TActicleCompareFrm.Create(Self) do
    try
      tuky := pmFromMonth;
      denky := pmToMonth;
      fromyear := self.spnFromYear.IntValue;
      frommonth := self.spnFromMonth.IntValue;
      toyear := self.spntoyear.IntValue;
      tomonth := self.spntomonth.IntValue;
      Screen.Cursor:=crDefault;
      ShowModal;
    finally
      Free;
    end
  end
  else
    With TReportFrm.Create(Self) do
    try
      Screen.Cursor:=crDefault;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TAnalystFrm.pedtObjEnter(Sender: TObject);
begin
  if PnlObjType.Height>10 then
  begin
    MainDM.CurObjTypeID:=MainDM.qryObjTypeOTYPE_ID.value;
    LblObj.Caption := MainDM.qryObjTypeOTYPE_NAME.Value + ' :';
  end
  else
    pedtSHTKExit(Sender);
end;
//Thinh them ============================================
procedure TAnalystFrm.pedtMAYTEnter(Sender: TObject);
begin

   // Thinh them ======================
   MainDM.CurObjTypeID:= MainDM.qryPAccDTYPE_ID.AsInteger;
   MainDM.qryObjType.Open;
   MainDM.qryObjType.Locate('OTYPE_ID',MainDM.CurObjTypeID,[]);
   LblMAYT.Caption:=MainDM.qryObjTypeOTYPE_NAME.Value + ' :';

  //==================================
end;


procedure TAnalystFrm.popObjGrpCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPObjGrpOBJGRP_ID.Value;
end;

procedure TAnalystFrm.dxBarButton12Click(Sender: TObject);
begin
  TreeReportOrder.Visible:=dxBarButton12.Down;
end;

procedure TAnalystFrm.popCommonCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    case qryListReportLOAIDTKHAC.AsInteger of
      1:Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
      2:Text := MainDM.qryPWareWAREHOUSE_ID.Value;
      3:Text := MainDM.qryPWorkWORK_NAME.Value;
    end;
  end;
end;

procedure TAnalystFrm.boxLOAIDTEnter(Sender: TObject);
begin
  MainDM.qryObjType.Open;
end;

procedure TAnalystFrm.dxBarButton1Click(Sender: TObject);
begin
  btnReadToGridClick(Sender);
end;

procedure TAnalystFrm.bbtnPreviewClick(Sender: TObject);
begin
  ThucHienInBC(False);
end;

procedure TAnalystFrm.bbtnDirectPrintClick(Sender: TObject);
begin
  ThucHienInBC(True);
end;

procedure TAnalystFrm.bbtnDesignClick(Sender: TObject);
begin
  acDesigner.Execute;
end;

procedure TAnalystFrm.bbtnDefReportClick(Sender: TObject);
begin
  with TReportInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAnalystFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TAnalystFrm.qryReportCaptionAfterInsert(DataSet: TDataSet);
begin
  qryReportCaptionCOLUMN_ID.FocusControl;
end;

procedure TAnalystFrm.qryReportCaptionBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TAnalystFrm.btnPreviewClick(Sender: TObject);
begin
  MainDM.qryReport.Close;
  ThucHienInBC(False);
end;

procedure TAnalystFrm.dxBarButton5Click(Sender: TObject);
begin
  with TRptParamFrm.Create(Self) do
  try
    CurReportID:=qryListReportREPORT_ID.AsInteger;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAnalystFrm.dxBarButton6Click(Sender: TObject);
begin
  ExportToExcel(TreeReport);
end;

procedure TAnalystFrm.btnDirectPrintClick(Sender: TObject);
begin
  MainDM.qryReport.Close;
  ThucHienInBC(True);
end;

procedure TAnalystFrm.qryListReportNewRecord(DataSet: TDataSet);
begin
  TreeReport.Tag:=1;
  qryListReportRPT_STATUS.AsInteger:=1;
  qryListReportREPORT_ID.AsInteger:=MaxCusReportID;
  MaxCusReportID:=MaxCusReportID+1;
end;

procedure TAnalystFrm.bbtnDelReportClick(Sender: TObject);
begin
  if qryListReportREPORT_ID.AsInteger<2000 then Exit;

  if Not MainDM.CheckAllowDelete(qryListReport,6) then Exit;

  qryListReport.Delete;
end;

procedure TAnalystFrm.bbtnAddReportClick(Sender: TObject);
begin
  qryListReport.Insert;
  with TReportInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAnalystFrm.dxBarButton7Click(Sender: TObject);
Type
  ReportColumn=record
    ColumnID:Smallint;
    ColCapVN:WideString;
    colCapEng:WideString;
    ColWidth:Smallint;
    ColIsGroup:Smallint;
    ColFormat:WideString;
  end;
var
  SoCot,DK,LoaiBC,STT,i:Smallint;
  mainsql,sqldetail,sql_1,sql_2,sql_3:WideString;
  TenTV,TenTA,TenTaptin,TaptinTA,KeyField,BeginText:WideString;
  LoaiDT,LoaiDTKhac,ChoSapxep,DKKhac,LoaiTK:Smallint;
  ColList: array[0..255] of ReportColumn;
begin
  if qryListReport.State in [dsedit,dsinsert] then
    qryListReport.post;
  //qryListReport.Insert;

  SoCot:= qryListReportCOLUMNCOUNT.AsInteger;
  DK:=qryListReportCONDITIONTYPE.AsInteger;
  LoaiBC:=qryListReportLOAIBAOCAO.AsInteger;
  STT:=qryListReportORDER_FIELD.AsInteger;
  if qryListReportSQLSELECT.IsNull then mainsql:=''
  else mainsql:=qryListReportSQLSELECT.Value;
  if qryListReportWHERESQLDETAIL.IsNull then sqldetail:=''
  else sqldetail:=qryListReportWHERESQLDETAIL.Value;
  if qryListReportSQLSUB_1.IsNull then sql_1:=''
  else  sql_1:=qryListReportSQLSUB_1.Value;
  if qryListReportSQLSUB_2.IsNull then sql_2:=''
  else sql_2:=qryListReportSQLSUB_2.Value;
  if qryListReportSQLSUB_3.IsNull then sql_3:=''
  else sql_3:=qryListReportSQLSUB_3.Value;
  if qryListReportREPORT_NAME.IsNull then TenTV:= ''
  else TenTV:= qryListReportREPORT_NAME.Value;
  if qryListReportENGLISH_NAME.IsNull then TenTA:= ''
  else TenTA:= qryListReportENGLISH_NAME.Value;
  ChoSapxep:=qryListReportALLOW_SORT.AsInteger;
  if qryListReportFILETEMPLATE.IsNull then TenTaptin:= ''
  else TenTaptin:= qryListReportFILETEMPLATE.Value;
  if qryListReportENGTEMPLATE.IsNull then TaptinTA:= ''
  else TaptinTA:= qryListReportENGTEMPLATE.Value;
  if qryListReportKEYFIELD.IsNull then KeyField:=''
  else KeyField:=qryListReportKEYFIELD.Value;
  DKKhac:=qryListReportOTHERCONDITION.AsInteger;
  LoaiDT:= qryListReportLOAIDOITUONG.AsInteger;
  LoaiDTKhac:=qryListReportLOAIDTKHAC.AsInteger;
  LoaiTK:=qryListReportLOAITAIKHOAN.AsInteger;
  if qryListReportBEGINTEXTNAME.IsNull then BeginText:= ''
  Else BeginText:= qryListReportBEGINTEXTNAME.Value;

  qryReportCaption.First;
  for i:=0 to SoCot-1 do
  begin
    ColList[i].ColumnID:=i;
    ColList[i].ColCapVN:=qryReportCaptionCOLUMN_CAPTION.Value;
    ColList[i].colCapEng:=qryReportCaptionENGLISH_CAPTION.Value;
    ColList[i].ColWidth:=qryReportCaptionCOLUMN_WIDTH.AsInteger;
    ColList[i].ColIsGroup:=qryReportCaptionCOLUMN_GROUP.AsInteger;
    if qryReportCaptionCOLUMN_FORMAT.IsNull then
      ColList[i].ColFormat:=''
    else
      ColList[i].ColFormat:=qryReportCaptionCOLUMN_FORMAT.Value;
    qryReportCaption.Next;
  end;


  qryListReport.Insert;

  qryListReportCOLUMNCOUNT.AsInteger:=SoCot;
  qryListReportCONDITIONTYPE.AsInteger:=DK;
  qryListReportLOAIBAOCAO.AsInteger:=LoaiBC;
  qryListReportORDER_FIELD.AsInteger:=STT;
  qryListReportSQLSELECT.Value:=mainsql;
  qryListReportWHERESQLDETAIL.Value:=sqldetail;
  qryListReportSQLSUB_1.Value:=sql_1;
  qryListReportSQLSUB_2.Value:=sql_2;
  qryListReportSQLSUB_3.Value:=sql_3;
  qryListReportREPORT_NAME.Value:=TenTV;
  qryListReportENGLISH_NAME.Value:=TenTA;
  qryListReportALLOW_SORT.AsInteger:=ChoSapxep;
  qryListReportFILETEMPLATE.Value:=TenTaptin;
  qryListReportENGTEMPLATE.Value:=TaptinTA;
  qryListReportKEYFIELD.Value:=KeyField;
  qryListReportOTHERCONDITION.AsInteger:=DKKhac;
  qryListReportLOAIDOITUONG.AsInteger:=LoaiDT;
  qryListReportLOAIDTKHAC.AsInteger:=LoaiDTKhac;
  qryListReportLOAITAIKHOAN.AsInteger:=LoaiTK;
  qryListReportBEGINTEXTNAME.Value:=BeginText;
  qryListReport.Post;

  for i:=0 to SoCot-1 do
  begin
    qryReportCaption.Append;
    qryReportCaptionREPORT_ID.AsInteger:=qryListReportREPORT_ID.AsInteger;
    qryReportCaptionCOLUMN_ID.AsInteger:=ColList[i].ColumnID;
    qryReportCaptionCOLUMN_CAPTION.Value:=ColList[i].ColCapVN;
    qryReportCaptionENGLISH_CAPTION.Value:=ColList[i].colCapEng;
    qryReportCaptionCOLUMN_WIDTH.AsInteger:=ColList[i].ColWidth;
    qryReportCaptionCOLUMN_GROUP.AsInteger:=ColList[i].ColIsGroup;
    qryReportCaptionCOLUMN_FORMAT.Value:=ColList[i].ColFormat;
    qryReportCaption.Post;
  end;

  with TReportInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAnalystFrm.FormShow(Sender: TObject);
begin

  SetVisible(Self);
  if CurLanguage = 2 then
  begin
    dxDBEdit1.DataField := 'ENGLISH_NAME';
    TreeReportTENNHOM.GroupIndex:=-1;
    TreeReportTENNHOM.Visible := fALSE;
    TreeReportENGGROUP.GroupIndex := 0;
    TreeReportENGGROUP.Visible := FALSE;
  end
  else
  begin
      TreeReportENGGROUP.GroupIndex := -1;
      TreeReportENGGROUP.Visible := FALSE;
  end
end;

procedure TAnalystFrm.acCompare1Execute(Sender: TObject);
const
  ColWidth=1300;
var
  XLSResult:TXLSReadWriteII;
  XLSCompare:TXLSReadWriteII;
  OpenDlg:TOpenDialog;
  ACompareFN:String;
  Row,Col,i:Integer;
  colformat: TColumnFormat;
  cf: TCellFormat;
  cfr: TCustomFileRun;
  fb,fn:TFont;
begin
  OpenDlg:=TOpenDialog.Create(Self);
  OpenDlg.Filter:='Excel Files|*.xls';
  if Not OpenDlg.Execute then Exit;

  acSubProcess.Execute;

  ACompareFN:=OpenDlg.FileName;

  XLSResult:=TXLSReadWriteII.Create(Nil);
  XLSCompare:=TXLSReadWriteII.Create(nil);
  XLSCompare.Filename:=ACompareFN;
  XLSResult.Filename:=ApplicationDir+'\result.xls';
  XLSCompare.Read;

  fb:=TFont.Create;
  fb.Style:=[fsBold];
  fb.Size:=10;
  fb.Name := 'Times New Roman';
  XLSResult.Fonts.Add;
  XLSResult.Fonts[0].AssignTFont(fb);

  fn:=TFont.Create;
  fn.Name := 'Times New Roman';
  fn.Size:=10;
  XLSResult.Fonts.Add;
  XLSResult.Fonts[1].AssignTFont(fn);

  for i:=0 to XLSCompare.Formats.Count-1 do
  begin
    cf := XLSResult.Formats.Add;
    cf.Name := XLSCompare.Formats[i].Name;
    cf.FormatOptions :=XLSCompare.Formats[i].FormatOptions;
    cf.FontIndex:=XLSCompare.Formats[i].FontIndex;
    cf.HorizAlignment := XLSCompare.Formats[i].HorizAlignment;
    cf.BorderTopColor := XLSCompare.Formats[i].BorderTopColor;
    cf.BorderTopStyle := XLSCompare.Formats[i].BorderTopStyle;
    cf.BorderLeftColor := XLSCompare.Formats[i].BorderLeftColor;
    cf.BorderLeftStyle := XLSCompare.Formats[i].BorderLeftStyle;
    cf.BorderRightColor := XLSCompare.Formats[i].BorderRightColor;
    cf.BorderRightStyle := XLSCompare.Formats[i].BorderRightStyle;
    cf.BorderBottomColor := XLSCompare.Formats[i].BorderBottomColor;
    cf.BorderBottomStyle := XLSCompare.Formats[i].BorderBottomStyle;
    cf.FillPatternPattern := XLSCompare.Formats[i].FillPatternPattern;
    cf.FillPatternForeColor := XLSCompare.Formats[i].FillPatternForeColor;
    cf.FillPatternBackColor := XLSCompare.Formats[i].FillPatternBackColor;
    cf.NumberFormat := XLSCompare.Formats[i].NumberFormat;
  end;

    cf := XLSResult.Formats.Add;
    cf.Name := 'fcHeader';
    cf.FormatOptions :=[foWrapText];//,foShrinkToFit];
    cf.FontIndex:=XLSResult.Fonts[0].Index;
    cf.HorizAlignment := chaCenter;
    cf.BorderTopColor := xcBlack;
    cf.BorderTopStyle := cbsThin;
    cf.BorderLeftColor := xcBlack;
    cf.BorderLeftStyle := cbsThin;
    cf.BorderRightColor := xcBlack;
    cf.BorderRightStyle := cbsThin;
    cf.BorderBottomColor := xcBlack;
    cf.BorderBottomStyle := cbsThin;
    cf.FillPatternPattern := 1;
    cf.FillPatternForeColor := xc22;
    cf.FillPatternBackColor := xcBlack;


    cf := XLSResult.Formats.Add;
    cf.Name := 'fcNormal';
    cf.FormatOptions :=[foWrapText];//,foShrinkToFit];
    cf.FontIndex:=XLSResult.Fonts[1].Index;
    cf.HorizAlignment := chaLeft;
    cf.VertAlignment := cvaTop;
    cf.BorderTopColor := xcBlack;
    cf.BorderTopStyle := cbsThin;
    cf.BorderLeftColor := xcBlack;
    cf.BorderLeftStyle := cbsThin;
    cf.BorderRightColor := xcBlack;
    cf.BorderRightStyle := cbsThin;
    cf.BorderBottomColor := xcBlack;
    cf.BorderBottomStyle := cbsThin;
    cf.NumberFormat := TIENTE_FORMAT;

    cf := XLSResult.Formats.Add;
    cf.Name := 'fcNumber';
    cf.FontIndex:=XLSResult.Fonts[1].Index;
    cf.HorizAlignment := chaRight;
    cf.BorderTopColor := xcBlack;
    cf.BorderTopStyle := cbsThin;
    cf.BorderLeftColor := xcBlack;
    cf.BorderLeftStyle := cbsThin;
    cf.BorderRightColor := xcBlack;
    cf.BorderRightStyle := cbsThin;
    cf.BorderBottomColor := xcBlack;
    cf.BorderBottomStyle := cbsThin;
    cf.NumberFormat := TIENTE_FORMAT;

    cf := XLSResult.Formats.Add;
    cf.Name := 'fcDifferent';
    cf.FontIndex:=XLSResult.Fonts[0].Index;

    cf.HorizAlignment := chaRight;
    cf.BorderTopColor := xcBlack;
    cf.BorderTopStyle := cbsThin;
    cf.BorderLeftColor := xcBlack;
    cf.BorderLeftStyle := cbsThin;
    cf.BorderRightColor := xcBlack;
    cf.BorderRightStyle := cbsThin;
    cf.BorderBottomColor := xcBlack;
    cf.BorderBottomStyle := cbsThin;
    cf.FillPatternPattern := 1;
    cf.FillPatternForeColor := xcYellow;
    cf.FillPatternBackColor := xcBlack;
    cf.NumberFormat := TIENTE_FORMAT;

    {for Col := XLSCompare.Sheets[0].FirstCol to XLSCompare.Sheets[0].LastCol do
    begin
      cf := XLSResult.Formats.Add;

      colformat := (XLSResult.Sheets[0].ColumnFormats.Add);
      case Col of
        0,1,2,3,5://taLeftJustify:
            cf.HorizAlignment := chaLeft;
        else
            cf.HorizAlignment := chaRight;
      end;
      colformat.FormatIndex := cf.Index;
      colformat.Col1 := Col;
      colformat.Col2 := Col;
      case Col of
        0 : colformat.Width := ColWidth*2;
        1,4,6,7 : colformat.Width := ColWidth*3;
        2 : colformat.Width := ColWidth*4;
        3 : colformat.Width := ColWidth;
        5 : colformat.Width := ColWidth*6;
      end;
    end;   }

  for Col := XLSCompare.Sheets[0].FirstCol to XLSCompare.Sheets[0].LastCol do
  begin
      cf := XLSResult.Formats.Add;

      colformat := (XLSResult.Sheets[0].ColumnFormats.Add);
      for i:=0 to XLSCompare.Sheets[0].ColumnFormats.Count-1 do
      if ((Col>=XLSCompare.Sheets[0].ColumnFormats[i].Col1) and (Col<=XLSCompare.Sheets[0].ColumnFormats[i].Col2)) then
      begin
        colformat.Width :=XLSCompare.Sheets[0].ColumnFormats[i].Width;
        //cf.HorizAlignment :=  XLSCompare.Sheets[0].ColumnFormats[i].h
      end;
      colformat.FormatIndex := cf.Index;
      colformat.Col1 := Col;
      colformat.Col2 := Col;

      //colformat.Width := XLSCompare.Sheets[0].ColumnFormats[XLSCompare.Sheets[0].Cell[Col,0].Index].Width;
  end;       

  for Row := XLSCompare.Sheets[0].FirstRow to XLSCompare.Sheets[0].LastRow do
  for Col := XLSCompare.Sheets[0].FirstCol to XLSCompare.Sheets[0].LastCol do
  begin
    if ((Row>1) and ((Col=4) or (Col=6) or (Col=7))) then
    begin
      if (Col=6) then
      begin
        if Row=2 then
          XLSResult.Sheets[0].AsFloat[Col,Row]:=MainDM.qrySub_1.FieldByName('NODK').AsFloat-MainDM.qrySub_1.FieldByName('CODK').AsFloat
        else if Row=3 then
          XLSResult.Sheets[0].AsFloat[Col,Row]:=MainDM.qrySub_2.FieldByName('BENNO').AsFloat-MainDM.qrySub_2.FieldByName('BENCO').AsFloat
        else if Row=4 then
          XLSResult.Sheets[0].AsFloat[Col,Row]:=XLSResult.Sheets[0].AsFloat[6,3]-XLSResult.Sheets[0].AsFloat[6,2]
        else
        begin
          if MainDM.qryReport.Locate('SOPHIEU',XLSCompare.Sheets[0].AsWideString[1,Row],[]) then
            XLSResult.Sheets[0].AsFloat[Col,Row]:=MainDM.qryReport.FieldByName('SOPS').AsFloat
          else
            XLSResult.Sheets[0].AsFloat[Col,Row]:=0;
        end
      end
      else if (Col=7) then
        XLSResult.Sheets[0].AsFloat[Col,Row]:=XLSResult.Sheets[0].AsFloat[4,Row]-XLSResult.Sheets[0].AsFloat[6,Row]
      else
        XLSResult.Sheets[0].AsFloat[Col,Row]:=XLSCompare.Sheets[0].AsFloat[Col,Row];

      if ((XLSResult.Sheets[0].AsFloat[Col,Row]<>0) and (Col=7)) then
        XLSResult.Sheets[0].Cell[Col, Row].FormatIndex := XLSResult.Formats.IndexByName('fcDifferent')
      else
        XLSResult.Sheets[0].Cell[Col, Row].FormatIndex := XLSResult.Formats.IndexByName('fcNumber');
    end
    else
    begin
      XLSResult.Sheets[0].AsWideString[Col,Row]:=Trim(XLSCompare.Sheets[0].AsWideString[Col,Row]);
      if Row=1 then
        XLSResult.Sheets[0].Cell[Col, Row].FormatIndex := XLSResult.Formats.IndexByName('fcHeader')
      else
        XLSResult.Sheets[0].Cell[Col, Row].FormatIndex := XLSResult.Formats.IndexByName('fcNormal');
        //XLSResult.Sheets[0].Cell[Col, Row].FormatIndex := XLSCompare.Sheets[0].Cell[Col,Row].FormatIndex;
    end;
  end;

  XLSResult.Write; 

  XLSCompare.Free;
  XLSResult.Free;
  fb.Free;
  fn.Free;

  cfr := TCustomFileRun.Create(nil);
  cfr.FileName := ApplicationDir+'\result.xls';
  cfr.Execute;
  cfr.Free;
end;

procedure TAnalystFrm.chkDocTypeChange(Sender: TObject);
begin
  pedtDocType.Enabled:=chkDocType.Checked;
end;

procedure TAnalystFrm.acSetButtonsStatusExecute(Sender: TObject);
begin
  btnPreview.Enabled:=IsHasData(qryListReportFILETEMPLATE);
  acPreview.Enabled:=btnPreview.Enabled;
  acDesigner.Enabled:=btnPreview.Enabled;
  acPrintDirect.Enabled:=btnPreview.Enabled;
  bbtnPreview.Enabled:=btnPreview.Enabled;
{  btnDesign.Enabled:=btnPreview.Enabled;
  bbtnDesign.Enabled:=btnPreview.Enabled;}
  btnDirectPrint.Enabled:=btnPreview.Enabled;
  bbtnDirectPrint.Enabled:=btnPreview.Enabled;
end;

procedure TAnalystFrm.qryListReportBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TAnalystFrm.qryListReportBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TAnalystFrm.qryListReportBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TAnalystFrm.btnThangClick(Sender: TObject);
begin
  rbMonth.Checked:=True;
  rbMonthClick(Sender);
  popThang.PopupFromCursorPos;
end;

procedure TAnalystFrm.btnQuyClick(Sender: TObject);
begin
  rbQuarter.Checked:=True;
  rbQuarterClick(Sender);
  popQuy.PopupFromCursorPos;
end;

procedure TAnalystFrm.btnNgayClick(Sender: TObject);
begin
  rbDate.Checked:=True;
  rbDateClick(Sender);
  popNgay.PopupFromCursorPos;
end;

procedure TAnalystFrm.dxBarButton2Click(Sender: TObject);
begin
  spnFromMonth.IntValue:=CurMonth;
  spnFromYear.IntValue:=CurYear;
  spnToMonth.IntValue:=CurMonth;
  spnToYear.IntValue:=CurYear;
end;

procedure TAnalystFrm.dxBarButton3Click(Sender: TObject);
begin
  if CurMonth=1 then
  begin
    spnFromMonth.IntValue:=12;
    spnFromYear.IntValue:=CurYear-1;
    spnToMonth.IntValue:=12;
    spnToYear.IntValue:=CurYear-1;
  end
  else
  begin
    spnFromMonth.IntValue:=CurMonth-1;
    spnFromYear.IntValue:=CurYear;
    spnToMonth.IntValue:=CurMonth-1;
    spnToYear.IntValue:=CurYear;
  end; 
end;

procedure TAnalystFrm.dxBarButton4Click(Sender: TObject);
begin
  spnFromMonth.IntValue:=CurMonth;
  spnFromYear.IntValue:=CurYear-1;
  spnToMonth.IntValue:=CurMonth;
  spnToYear.IntValue:=CurYear-1;
end;

procedure TAnalystFrm.dxBarButton17Click(Sender: TObject);
begin
  spnFromMonth.IntValue:=1;
  spnFromYear.IntValue:=CurYear;
  spnToMonth.IntValue:=12;
  spnToYear.IntValue:=CurYear;
end;

procedure TAnalystFrm.dxBarButton18Click(Sender: TObject);
begin
  spnFromMonth.IntValue:=1;
  spnFromYear.IntValue:=CurYear-1;
  spnToMonth.IntValue:=12;
  spnToYear.IntValue:=CurYear-1;
end;

procedure TAnalystFrm.dxBarButton8Click(Sender: TObject);
begin
  case CurMonth of
    1,2,3:
      spnFromQuarter.IntValue:=1;
    4,5,6:
      spnFromQuarter.IntValue:=2;
    7,8,9:
      spnFromQuarter.IntValue:=3;
    10,11,12:
      spnFromQuarter.IntValue:=4;
  end;
  spnToQuarter.IntValue:= spnFromQuarter.IntValue;
  spnFromYearQ.IntValue:=CurYear;
  spnToYearQ.IntValue:=CurYear;
end;

procedure TAnalystFrm.dxBarButton9Click(Sender: TObject);
begin
  case CurMonth of
    1,2,3:
      spnFromQuarter.IntValue:=4;
    4,5,6:
      spnFromQuarter.IntValue:=1;
    7,8,9:
      spnFromQuarter.IntValue:=2;
    10,11,12:
      spnFromQuarter.IntValue:=3;
  end;
  spnToQuarter.IntValue:= spnFromQuarter.IntValue;
  if spnToQuarter.IntValue=4 then
    spnFromYearQ.IntValue:=CurYear-1
  else
    spnFromYearQ.IntValue:=CurYear;
  spnToYearQ.IntValue:=spnFromYearQ.IntValue;
end;

procedure TAnalystFrm.dxBarButton10Click(Sender: TObject);
begin
 case CurMonth of
    1,2,3:
      spnFromQuarter.IntValue:=1;
    4,5,6:
      spnFromQuarter.IntValue:=2;
    7,8,9:
      spnFromQuarter.IntValue:=3;
    10,11,12:
      spnFromQuarter.IntValue:=4;
  end;
  spnToQuarter.IntValue:= spnFromQuarter.IntValue;
  spnFromYearQ.IntValue:=CurYear-1;
  spnToYearQ.IntValue:=CurYear-1;
end;

procedure TAnalystFrm.dxBarButton13Click(Sender: TObject);
begin
  dedtFromDate.Date:=WorkingDate;
  dedtToDate.Date:=WorkingDate;
end;

procedure TAnalystFrm.dxBarButton14Click(Sender: TObject);
begin
  dedtFromDate.Date:=WorkingDate-1;
  dedtToDate.Date:=WorkingDate-1;
end;

procedure TAnalystFrm.dxBarButton15Click(Sender: TObject);
begin
  dedtFromDate.Date:=StartOfTheWeek(WorkingDate);
  dedtToDate.Date:=EndOfTheWeek(WorkingDate);
end;

procedure TAnalystFrm.dxBarButton16Click(Sender: TObject);
begin
  dedtFromDate.Date:=StartOfTheWeek(WorkingDate-7);
  dedtToDate.Date:=EndOfTheWeek(WorkingDate-7);
end;

procedure TAnalystFrm.dxBarButton19Click(Sender: TObject);
begin
  dedtFromDate.Date:=StartOfTheMonth(WorkingDate);
  dedtToDate.Date:=EndOfTheMonth(WorkingDate);
end;

procedure TAnalystFrm.dxBarButton20Click(Sender: TObject);
begin
  dedtToDate.Date:=StartOfTheMonth(WorkingDate)-1;
  dedtFromDate.Date:=StartOfTheMonth(dedtToDate.Date);
end;

procedure TAnalystFrm.dxBarButton21Click(Sender: TObject);
begin
  dedtFromDate.Date:=StartOfTheYear(WorkingDate);
  dedtToDate.Date:=EndOfTheYear(WorkingDate);
end;

procedure TAnalystFrm.dxBarButton22Click(Sender: TObject);
begin
  dedtToDate.Date:=StartOfTheYear(WorkingDate)-1;
  dedtFromDate.Date:=StartOfTheYear(dedtToDate.Date);
end;

procedure TAnalystFrm.qryReportCaptionNewRecord(DataSet: TDataSet);
begin
  qryReportCaptionCOLUMN_ID.AsInteger:=qryReportCaption.RecNo-1;
  qryReportCaptionREPORT_ID.AsInteger:=qryListReportREPORT_ID.AsInteger;
end;

procedure TAnalystFrm.qryReportCaptionPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ProcessErr(E,'');
  qryReportCaptionCOLUMN_ID.AsInteger:=qryReportCaptionCOLUMN_ID.AsInteger+1;
  qryReportCaptionCOLUMN_ID.FocusControl;
end;

procedure TAnalystFrm.qryListReportPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action:=daAbort;
  if (E as EIBO_ISCError).SQLCODE=-803 then
  begin
    qryListReportREPORT_ID.AsInteger:=MaxCusReportID;
    MaxCusReportID:=MaxCusReportID+1;
    qryListReport.Post;
  end
end;

procedure TAnalystFrm.popObjGrpInitPopup(Sender: TObject);
begin
// [NXHop sua] : doan nay lay cua anh An - tu OnEnter
  MainDM.qryPAcc.Open;
  if ((qryListReportLOAIDOITUONG.IsNull) or (qryListReportLOAIDOITUONG.AsInteger=0)) then
    MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger
  else if (qryListReportLOAIDOITUONG.AsInteger=-1) then
    MainDM.CurObjTypeID:= MainDM.qryPAccDTYPE_ID.AsInteger
  else if (qryListReportLOAIDOITUONG.AsInteger=-2) then
    MainDM.CurObjTypeID:= MainDM.qryPAccDTYPE_ID.AsInteger
  else
    MainDM.CurObjTypeID:=qryListReportLOAIDOITUONG.AsInteger;

  if MainDM.qryPObjGrpOTYPE_ID.AsInteger<>MainDM.CurObjTypeID then
    MainDM.qryPObjGrp.Close;
//
//[NXHop them]
  if not MainDM.qryPObjGrp.Active then MainDM.qryPObjGrp.Open;
  // tradtt: sua loi 1184 - khong loc theo HH
  MainDM.qryPObjGrp.Filtered:=true;
  InitPopupControl('dxlcObjGroup', CM_PopupFrm, Sender, 2);
  CM_PopupFrm.dxtlObjGroup.FullExpand;
end;


procedure TAnalystFrm.pedtMAYTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
    if Accept then
    begin
      Text := vpItemID;
      MainDM.GetCurObjInfo;
      Factor_Name := maindm.CurObjName; //Thinh
    end
end;



procedure TAnalystFrm.pedtMAYT2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
    if Accept then
    begin
      Text := vpItemID;
      MainDM.GetCurObjInfo;
      Factor2_Name := maindm.CurObjName; //Thinh
    end
end;

// Thinh them ======================
procedure TAnalystFrm.pedtMAYT2Enter(Sender: TObject);
begin
    MainDM.CurObjTypeID:= MainDM.qryPAccDTYPE_ID_1.AsInteger;
    MainDM.qryObjType.Open;
    MainDM.qryObjType.Locate('OTYPE_ID',MainDM.CurObjTypeID,[]);
    LblMAYT2.Caption:=MainDM.qryObjTypeOTYPE_NAME.Value + ' :';
end;

procedure TAnalystFrm.bbtnCheckallReportClick(Sender: TObject);
var i:Integer;
begin

  pub_checking_report := True;
  with TChkResultFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  pub_checking_report := FAlse;

end;

procedure TAnalystFrm.pedtObjChange(Sender: TObject);
begin
    //Thinh ? tai sao dong'
    {vpObjectIdFilter := pedtObj.Text;
    if MainDM.qryPComObj.Active then MainDM.qryPComObj.Close;

    MainDM.qryPComObj.OnFilterRecord := MainDM.qryPComObjFilterRecord;
    MainDM.qryPComObj.Filtered := TRUE;

    MainDM.qryPComObj.open;
    pedtObj.PopupControl.Show;}

end;

procedure TAnalystFrm.btnCheckReportClick(Sender: TObject);
begin
  pub_checking_report := True;
  ChkResultFrm := TChkResultFrm.Create(Self);
  //with TChkResultFrm.Create(Self) do
  try
    ChkResultFrm.Report_id :=qryListReportREPORT_ID.Value;
    ChkResultFrm.ShowModal;
  finally
    ChkResultFrm.Free;
  end;
  pub_checking_report := FAlse;

end;

procedure TAnalystFrm.qryListReportBeforeOpen(DataSet: TDataSet);
begin
  qryListReport.ParamByName('GROUP_ID').Value := CurrentGroup;
  qryListReport.ParamByName('USERNAME').Value := CurrentUser;
  qryListReport.ParamByName('BRANCH_ID').Value := vpBranch_id;

end;

procedure TAnalystFrm.popBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  //text := MainDM.qryBranchFULLNAME.Value;
  text := MainDM.qryBranchSHORTNAME.Value;
end;

procedure TAnalystFrm.popBPSudungEnter(Sender: TObject);
begin
   {{MainDM.qryObjType.Open;
   MainDM.qryObjType.Locate('OTYPE_ID',qryListReportLOAIDOITUONG.Value,[]);
   LblMAYT.Caption:=MainDM.qryObjTypeOTYPE_NAME.Value + ' :'; }

end;

procedure TAnalystFrm.popBudgetCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
    text := MainDM.qryPActicleACTICLE_ID.Value;
  AllowSelectBudgetParent := TRUE;
end;

procedure TAnalystFrm.popBudgetEnter(Sender: TObject);
begin
  AllowSelectBudgetParent := TRUE;
end;

procedure TAnalystFrm.bbtnSEtDefaultAllClick(Sender: TObject);
var i,j :integer;
begin

  if (ShowMessageUnicode(230,'',4) <> 6) then
    exit;

  qryListReport.First;
  for j := 0 to qryListReport.RecordCount - 1 do
  begin
    with AnalystFrm do
    begin
      qryListDefaultSysReport.ParamByName('USERNAME').Value  := CurrentUser;
      qryListDefaultSysReport.ParamByName('REPORT_ID').Value := qryListReportREPORT_ID.Value;
      qryListDefaultSysReport.ParamByName('BRANCH_ID').Value := vpBranch_id;

      qryListDefaultSysReport.Open;

      qryListDefaultSysReport.edit;

      for i := 0 to qryListDefaultSysReport.FieldCount - 1 do
      begin
        if Not qryListReport.FieldByName(qryListDefaultSysReport.Fields[i].FieldName).IsNull then
          qryListDefaultSysReport.Fields[i].Value := qryListReport.FieldByName(qryListDefaultSysReport.Fields[i].FieldName).Value
        else
          qryListDefaultSysReport.Fields[i].Clear;
      end;
      qryListDefaultSysReport.Post;
      qryListDefaultSysReport.Close;

    end;
    qryListReport.Next;
  end;
end;
end.


