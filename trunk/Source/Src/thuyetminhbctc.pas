unit ThuyetminhBCTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DBActns, ActnList, ElCaption, dxBar,
  dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  cxControls, ExtCtrls, ElPgCtl, DB, IBODataset, ppDB, ppDBPipe, ppBands,
  ppCache, ppClass, ppRelatv, ppProd, ppReport, ppComm, ppEndUsr, dxEditor,
  dxEdLib, IB_Components, IB_Process, IB_Script, StBase, StExpr, ppSubRpt,
  dxLayout, dxExGrEd, dxExELib;

type
  TThuyetminhBCTCFrm = class(TForm)
    locForm: TdxLayoutControl;
    btnIns: TElPopupButton;
    btnDel: TElPopupButton;
    TntBitBtn3: TElPopupButton;
    TntBitBtn4: TElPopupButton;
    TntBitBtn5: TElPopupButton;
    TntBitBtn6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem1: TdxLayoutItem;
    PgCtrlLeft: TElPageControl;
    eltsNoidung1: TElTabSheet;
    dbgNoidung1: TdxDBGrid;
    eltsTanggiamTSCDHH: TElTabSheet;
    dbgTanggiamTSCDHH: TdxDBGrid;
    locFormGroup1: TdxLayoutGroup;
    locFormItem8: TdxLayoutItem;
    elbtDinhnghia: TElPopupButton;
    eltsTanggiamTSCDTTC: TElTabSheet;
    eltsTanggiamTSCDVH: TElTabSheet;
    eltsTanggiamBDSDT: TElTabSheet;
    eltsCackhoannothuetaichinh: TElTabSheet;
    eltsDoichieuVCSH: TElTabSheet;
    eltsChitietvondautu: TElTabSheet;
    qryNoidungkhac: TIBOQuery;
    dsNoidung: TDataSource;
    qryTSCDHH: TIBOQuery;
    dsTSCDHH: TDataSource;
    dbgTanggiamTSCDTTC: TdxDBGrid;
    qryTSCDThuetaichinh: TIBOQuery;
    dsTSCDThuetaichinh: TDataSource;
    qryTSCDVH: TIBOQuery;
    dsTSCDVH: TDataSource;
    dbgTanggiamTSCDVH: TdxDBGrid;
    dbgTanggiamBDSDT: TdxDBGrid;
    qryTanggiamBDSDT: TIBOQuery;
    dsTanggiamBDSDT: TDataSource;
    dbgCackhoannothuetaichinh: TdxDBGrid;
    qryCackhoannothuetaichinh: TIBOQuery;
    dsCackhoannothuetaichinh: TDataSource;
    dbgDoichieuVCSH: TdxDBGrid;
    dbgChitietvondautu: TdxDBGrid;
    qryDoichieubiendongvonCSH: TIBOQuery;
    dsDoichieubiendongvonCSH: TDataSource;
    qryChitietvondautuCSH: TIBOQuery;
    dsChitietvondautuCSH: TDataSource;
    locFormItem9: TdxLayoutItem;
    ebtPreview: TElPopupButton;
    locFormItem10: TdxLayoutItem;
    ebtPrint: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    ebtDesign: TElPopupButton;
    acPreview: TAction;
    acPrint: TAction;
    acDesign: TAction;
    dsgReport: TppDesigner;
    rptDocReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dplNoidung: TppDBPipeline;
    dplTSCDHH: TppDBPipeline;
    dplTSCDThuetaichinh: TppDBPipeline;
    dplTSCDVH: TppDBPipeline;
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
    dplTanggiamBDSDT: TppDBPipeline;
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
    dplCackhoannothuetaichinh: TppDBPipeline;
    dplDoichieubiendongvonCSH: TppDBPipeline;
    dplChitietvondautuCSH: TppDBPipeline;
    qryNoidungkhacID: TSmallintField;
    qryNoidungkhacMANHOM: TWideStringField;
    qryNoidungkhacMASO: TWideStringField;
    qryNoidungkhacNAMNAY: TIBOFloatField;
    qryNoidungkhacNAMTRUOC: TIBOFloatField;
    qryNoidungkhacHESO_GROUP: TIBOFloatField;
    qryNoidungkhacGROUP_ID: TWideStringField;
    eltsNoidung2: TElTabSheet;
    dbgNoidung2: TdxDBGrid;
    dsNoidung2: TDataSource;
    dplNoidung2: TppDBPipeline;
    qryNoidung: TIBOQuery;
    qry1: TIBOQuery;
    qry2: TIBOQuery;
    qry3: TIBOQuery;
    qry4: TIBOQuery;
    qry5: TIBOQuery;
    qry6: TIBOQuery;
    qry7: TIBOQuery;
    qry8: TIBOQuery;
    qry11: TIBOQuery;
    dpl2: TppDBPipeline;
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
    ppField95: TppField;
    ppField96: TppField;
    ppField97: TppField;
    dpl3: TppDBPipeline;
    dpl4: TppDBPipeline;
    ppField98: TppField;
    ppField99: TppField;
    ppField100: TppField;
    ppField101: TppField;
    ppField102: TppField;
    ppField103: TppField;
    ppField104: TppField;
    ppField105: TppField;
    ppField106: TppField;
    ppField107: TppField;
    ppField108: TppField;
    ppField109: TppField;
    ppField110: TppField;
    ppField111: TppField;
    ppField112: TppField;
    ppField113: TppField;
    ppField114: TppField;
    dpl5: TppDBPipeline;
    ppField115: TppField;
    ppField116: TppField;
    ppField117: TppField;
    ppField118: TppField;
    ppField119: TppField;
    ppField120: TppField;
    ppField121: TppField;
    ppField122: TppField;
    ppField123: TppField;
    ppField124: TppField;
    ppField125: TppField;
    ppField126: TppField;
    ppField127: TppField;
    ppField128: TppField;
    ppField129: TppField;
    ppField130: TppField;
    ppField131: TppField;
    ppField132: TppField;
    ppField133: TppField;
    ppField134: TppField;
    ppField135: TppField;
    dpl6: TppDBPipeline;
    dpl7: TppDBPipeline;
    ppField136: TppField;
    ppField137: TppField;
    ppField138: TppField;
    ppField139: TppField;
    ppField140: TppField;
    ppField141: TppField;
    ppField142: TppField;
    ppField143: TppField;
    ppField144: TppField;
    ppField145: TppField;
    ppField146: TppField;
    ppField147: TppField;
    ppField148: TppField;
    ppField149: TppField;
    ppField150: TppField;
    ppField151: TppField;
    ppField152: TppField;
    dpl8: TppDBPipeline;
    ppField153: TppField;
    ppField154: TppField;
    ppField155: TppField;
    ppField156: TppField;
    ppField157: TppField;
    ppField158: TppField;
    ppField159: TppField;
    ppField160: TppField;
    ppField161: TppField;
    ppField162: TppField;
    ppField163: TppField;
    ppField164: TppField;
    ppField165: TppField;
    ppField166: TppField;
    ppField167: TppField;
    ppField168: TppField;
    ppField169: TppField;
    ppField170: TppField;
    ppField171: TppField;
    ppField172: TppField;
    ppField173: TppField;
    dpl11: TppDBPipeline;
    dpl1: TppDBPipeline;
    qryNoidungID: TSmallintField;
    qryNoidungMANHOM: TWideStringField;
    qryNoidungMASO: TWideStringField;
    qryNoidungNAMNAY: TIBOFloatField;
    qryNoidungNAMTRUOC: TIBOFloatField;
    qryNoidungHESO_GROUP: TIBOFloatField;
    qryNoidungGROUP_ID: TWideStringField;
    ds1: TDataSource;
    ds2: TDataSource;
    ds3: TDataSource;
    ds4: TDataSource;
    ds5: TDataSource;
    ds6: TDataSource;
    ds7: TDataSource;
    ds8: TDataSource;
    ds11: TDataSource;
    qry4ID: TSmallintField;
    qry4MANHOM: TWideStringField;
    qry4TENTHUYETMINH: TWideStringField;
    qry4MASO: TWideStringField;
    qry4NAMNAY: TIBOFloatField;
    qry4NAMTRUOC: TIBOFloatField;
    qry4HESO_GROUP: TIBOFloatField;
    qry4GROUP_ID: TWideStringField;
    qry3ID: TSmallintField;
    qry3MANHOM: TWideStringField;
    qry3TENTHUYETMINH: TWideStringField;
    qry3MASO: TWideStringField;
    qry3NAMNAY: TIBOFloatField;
    qry3NAMTRUOC: TIBOFloatField;
    qry3HESO_GROUP: TIBOFloatField;
    qry3GROUP_ID: TWideStringField;
    qry2ID: TSmallintField;
    qry2MANHOM: TWideStringField;
    qry2TENTHUYETMINH: TWideStringField;
    qry2MASO: TWideStringField;
    qry2NAMNAY: TIBOFloatField;
    qry2NAMTRUOC: TIBOFloatField;
    qry2HESO_GROUP: TIBOFloatField;
    qry2GROUP_ID: TWideStringField;
    qry1ID: TSmallintField;
    qry1MANHOM: TWideStringField;
    qry1MASO: TWideStringField;
    qry1NAMNAY: TIBOFloatField;
    qry1NAMTRUOC: TIBOFloatField;
    qry1HESO_GROUP: TIBOFloatField;
    qry1GROUP_ID: TWideStringField;
    qry5ID: TSmallintField;
    qry5MANHOM: TWideStringField;
    qry5TENTHUYETMINH: TWideStringField;
    qry5MASO: TWideStringField;
    qry5NAMNAY: TIBOFloatField;
    qry5NAMTRUOC: TIBOFloatField;
    qry5HESO_GROUP: TIBOFloatField;
    qry5GROUP_ID: TWideStringField;
    qry6ID: TSmallintField;
    qry6MANHOM: TWideStringField;
    qry6TENTHUYETMINH: TWideStringField;
    qry6MASO: TWideStringField;
    qry6NAMNAY: TIBOFloatField;
    qry6NAMTRUOC: TIBOFloatField;
    qry6HESO_GROUP: TIBOFloatField;
    qry6GROUP_ID: TWideStringField;
    qry7ID: TSmallintField;
    qry7MANHOM: TWideStringField;
    qry7TENTHUYETMINH: TWideStringField;
    qry7MASO: TWideStringField;
    qry7NAMNAY: TIBOFloatField;
    qry7NAMTRUOC: TIBOFloatField;
    qry7HESO_GROUP: TIBOFloatField;
    qry7GROUP_ID: TWideStringField;
    qry8ID: TSmallintField;
    qry8MANHOM: TWideStringField;
    qry8TENTHUYETMINH: TWideStringField;
    qry8MASO: TWideStringField;
    qry8NAMNAY: TIBOFloatField;
    qry8NAMTRUOC: TIBOFloatField;
    qry8HESO_GROUP: TIBOFloatField;
    qry8GROUP_ID: TWideStringField;
    qry11ID: TSmallintField;
    qry11MANHOM: TWideStringField;
    qry11TENTHUYETMINH: TWideStringField;
    qry11MASO: TWideStringField;
    qry11NAMNAY: TIBOFloatField;
    qry11NAMTRUOC: TIBOFloatField;
    qry11HESO_GROUP: TIBOFloatField;
    qry11GROUP_ID: TWideStringField;
    qry9: TIBOQuery;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    IBOFloatField1: TIBOFloatField;
    IBOFloatField2: TIBOFloatField;
    IBOFloatField3: TIBOFloatField;
    WideStringField4: TWideStringField;
    dpl9: TppDBPipeline;
    ppField174: TppField;
    ppField175: TppField;
    ppField176: TppField;
    ppField177: TppField;
    ppField178: TppField;
    ppField179: TppField;
    ppField180: TppField;
    ppField181: TppField;
    ppField182: TppField;
    ppField183: TppField;
    ppField184: TppField;
    ppField185: TppField;
    ppField186: TppField;
    ppField187: TppField;
    ppField188: TppField;
    ppField189: TppField;
    ppField190: TppField;
    ds9: TDataSource;
    ds10: TDataSource;
    dpl10: TppDBPipeline;
    ppField191: TppField;
    ppField192: TppField;
    ppField193: TppField;
    ppField194: TppField;
    ppField195: TppField;
    ppField196: TppField;
    ppField197: TppField;
    ppField198: TppField;
    ppField199: TppField;
    ppField200: TppField;
    ppField201: TppField;
    ppField202: TppField;
    ppField203: TppField;
    ppField204: TppField;
    ppField205: TppField;
    ppField206: TppField;
    ppField207: TppField;
    ppField208: TppField;
    ppField209: TppField;
    ppField210: TppField;
    ppField211: TppField;
    qry10: TIBOQuery;
    qry10ID: TSmallintField;
    qry10MANHOM: TWideStringField;
    qry10TENTHUYETMINH: TWideStringField;
    qry10MASO: TWideStringField;
    qry10NAMNAY: TIBOFloatField;
    qry10NAMTRUOC: TIBOFloatField;
    qry10HESO_GROUP: TIBOFloatField;
    qry10GROUP_ID: TWideStringField;
    qry12: TIBOQuery;
    SmallintField2: TSmallintField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IBOFloatField4: TIBOFloatField;
    IBOFloatField5: TIBOFloatField;
    IBOFloatField6: TIBOFloatField;
    WideStringField8: TWideStringField;
    dpl12: TppDBPipeline;
    ds12: TDataSource;
    qry13: TIBOQuery;
    SmallintField3: TSmallintField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    IBOFloatField7: TIBOFloatField;
    IBOFloatField8: TIBOFloatField;
    IBOFloatField9: TIBOFloatField;
    WideStringField12: TWideStringField;
    dpl13: TppDBPipeline;
    ds13: TDataSource;
    qry14: TIBOQuery;
    SmallintField4: TSmallintField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    IBOFloatField10: TIBOFloatField;
    IBOFloatField11: TIBOFloatField;
    IBOFloatField12: TIBOFloatField;
    WideStringField16: TWideStringField;
    dpl14: TppDBPipeline;
    ds14: TDataSource;
    qry15: TIBOQuery;
    SmallintField5: TSmallintField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    IBOFloatField13: TIBOFloatField;
    IBOFloatField14: TIBOFloatField;
    IBOFloatField15: TIBOFloatField;
    WideStringField20: TWideStringField;
    dpl15: TppDBPipeline;
    ds15: TDataSource;
    qry16: TIBOQuery;
    SmallintField6: TSmallintField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    IBOFloatField16: TIBOFloatField;
    IBOFloatField17: TIBOFloatField;
    IBOFloatField18: TIBOFloatField;
    WideStringField24: TWideStringField;
    dpl16: TppDBPipeline;
    ds16: TDataSource;
    qry17: TIBOQuery;
    SmallintField7: TSmallintField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    IBOFloatField19: TIBOFloatField;
    IBOFloatField20: TIBOFloatField;
    IBOFloatField21: TIBOFloatField;
    WideStringField28: TWideStringField;
    dpl17: TppDBPipeline;
    ds17: TDataSource;
    qry18: TIBOQuery;
    SmallintField8: TSmallintField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    IBOFloatField22: TIBOFloatField;
    IBOFloatField23: TIBOFloatField;
    IBOFloatField24: TIBOFloatField;
    WideStringField32: TWideStringField;
    dpl18: TppDBPipeline;
    ds18: TDataSource;
    qry19: TIBOQuery;
    SmallintField9: TSmallintField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    IBOFloatField25: TIBOFloatField;
    IBOFloatField26: TIBOFloatField;
    IBOFloatField27: TIBOFloatField;
    WideStringField36: TWideStringField;
    dpl19: TppDBPipeline;
    ds19: TDataSource;
    qry20: TIBOQuery;
    SmallintField10: TSmallintField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    IBOFloatField28: TIBOFloatField;
    IBOFloatField29: TIBOFloatField;
    IBOFloatField30: TIBOFloatField;
    WideStringField40: TWideStringField;
    dpl20: TppDBPipeline;
    ds20: TDataSource;
    qry21: TIBOQuery;
    SmallintField11: TSmallintField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    WideStringField43: TWideStringField;
    IBOFloatField31: TIBOFloatField;
    IBOFloatField32: TIBOFloatField;
    IBOFloatField33: TIBOFloatField;
    WideStringField44: TWideStringField;
    dpl21: TppDBPipeline;
    ds21: TDataSource;
    dbgCackhoannothuetaichinhID: TdxDBGridColumn;
    dbgCackhoannothuetaichinhMANHOM: TdxDBGridColumn;
    dbgCackhoannothuetaichinhKHOANMUC: TdxDBGridColumn;
    dbgCackhoannothuetaichinhTONGKHOANTT_NN: TdxDBGridColumn;
    dbgCackhoannothuetaichinhTRATIENLAITHUE_NN: TdxDBGridColumn;
    dbgCackhoannothuetaichinhTRANOGOC_NN: TdxDBGridColumn;
    dbgCackhoannothuetaichinhTONGKHOANTT_NT: TdxDBGridColumn;
    dbgCackhoannothuetaichinhTRATIENLAITHUE_NT: TdxDBGridColumn;
    dbgCackhoannothuetaichinhTRANOGOC_NT: TdxDBGridColumn;
    dbgCackhoannothuetaichinhMANHOMCHA: TdxDBGridColumn;
    dbgCackhoannothuetaichinhNUTLA: TdxDBGridColumn;
    dbgDoichieuVCSHID: TdxDBGridColumn;
    dbgDoichieuVCSHMANHOM: TdxDBGridColumn;
    dbgDoichieuVCSHKHOANMUC: TdxDBGridColumn;
    dbgDoichieuVCSHMANHOMCHA: TdxDBGridColumn;
    dbgDoichieuVCSHNUTLA: TdxDBGridColumn;
    dbgDoichieuVCSHVONGOP: TdxDBGridColumn;
    dbgDoichieuVCSHTHANGDUVCP: TdxDBGridColumn;
    dbgDoichieuVCSHCOPHIEUNGANQUI: TdxDBGridColumn;
    dbgDoichieuVCSHCHENHLENHDGTS: TdxDBGridColumn;
    dbgDoichieuVCSHCHENHLECHTGHD: TdxDBGridColumn;
    dbgDoichieuVCSHQUIDAUTUPHATTRIEN: TdxDBGridColumn;
    dbgDoichieuVCSHQUIDUPHONGTAICHINH: TdxDBGridColumn;
    dbgDoichieuVCSHQUITHUOCVSH: TdxDBGridColumn;
    dbgDoichieuVCSHLOINHUANSTCHUAPP: TdxDBGridColumn;
    dbgChitietvondautuID: TdxDBGridColumn;
    dbgChitietvondautuTONGSO_NN: TdxDBGridColumn;
    dbgChitietvondautuVONCPTHUONG_NN: TdxDBGridColumn;
    dbgChitietvondautuVONCPUUDAI_NN: TdxDBGridColumn;
    dbgChitietvondautuMANHOM: TdxDBGridColumn;
    dbgChitietvondautuKHOANMUC: TdxDBGridColumn;
    dbgChitietvondautuTONGSO_NT: TdxDBGridColumn;
    dbgChitietvondautuVONCPTHUONG_NT: TdxDBGridColumn;
    dbgChitietvondautuVONCPUUDAI_NT: TdxDBGridColumn;
    dbgChitietvondautuMANHOMCHA: TdxDBGridColumn;
    dbgChitietvondautuNUTLA: TdxDBGridColumn;
    dxDBGridMaskColumn1: TdxDBGridColumn;
    dxDBGridMaskColumn2: TdxDBGridColumn;
    dxDBGridMaskColumn3: TdxDBGridColumn;
    dxDBGridMaskColumn4: TdxDBGridColumn;
    dxDBGridMaskColumn5: TdxDBGridColumn;
    dxDBGridMaskColumn6: TdxDBGridColumn;
    dxDBGridMaskColumn7: TdxDBGridColumn;
    dxDBGridMaskColumn8: TdxDBGridColumn;
    dbgNoidung1ID: TdxDBGridColumn;
    dbgNoidung1MANHOM: TdxDBGridColumn;
    dbgNoidung1TENTHUYETMINH: TdxDBGridColumn;
    dbgNoidung1MASO: TdxDBGridColumn;
    dbgNoidung1NAMNAY: TdxDBGridColumn;
    dbgNoidung1NAMTRUOC: TdxDBGridColumn;
    dbgNoidung1HESO_GROUP: TdxDBGridColumn;
    dbgNoidung1GROUP_ID: TdxDBGridColumn;
    dbgTanggiamTSCDHHID: TdxDBGridColumn;
    dbgTanggiamTSCDHHMANHOM: TdxDBGridColumn;
    dbgTanggiamTSCDHHKHOANMUC: TdxDBGridColumn;
    dbgTanggiamTSCDHHMANHOMCHA: TdxDBGridColumn;
    dbgTanggiamTSCDHHNUTLA: TdxDBGridColumn;
    dbgTanggiamTSCDHHNHACUA: TdxDBGridColumn;
    dbgTanggiamTSCDHHMAYMOCTB: TdxDBGridColumn;
    dbgTanggiamTSCDHHPTVTTD: TdxDBGridColumn;
    dbgTanggiamTSCDHHTBDCQLY: TdxDBGridColumn;
    dbgTanggiamTSCDHHTAISANCDKHAC: TdxDBGridColumn;
    dbgTanggiamTSCDHHTONGCONG: TdxDBGridColumn;
    dbgTanggiamTSCDTTCID: TdxDBGridColumn;
    dbgTanggiamTSCDTTCMANHOM: TdxDBGridColumn;
    dbgTanggiamTSCDTTCKHOANMUC: TdxDBGridColumn;
    dbgTanggiamTSCDTTCMANHOMCHA: TdxDBGridColumn;
    dbgTanggiamTSCDTTCNUTLA: TdxDBGridColumn;
    dbgTanggiamTSCDTTCMAYMOCTB: TdxDBGridColumn;
    dbgTanggiamTSCDTTCPTVTTD: TdxDBGridColumn;
    dbgTanggiamTSCDTTCTBDCQLY: TdxDBGridColumn;
    dbgTanggiamTSCDTTCTAISANCDKHAC: TdxDBGridColumn;
    dbgTanggiamTSCDTTCTONGCONG: TdxDBGridColumn;
    dbgTanggiamTSCDVHID: TdxDBGridColumn;
    dbgTanggiamTSCDVHMANHOM: TdxDBGridColumn;
    dbgTanggiamTSCDVHKHOANMUC: TdxDBGridColumn;
    dbgTanggiamTSCDVHMANHOMCHA: TdxDBGridColumn;
    dbgTanggiamTSCDVHNUTLA: TdxDBGridColumn;
    dbgTanggiamTSCDVHQUYENSDDAT: TdxDBGridColumn;
    dbgTanggiamTSCDVHBANQUYEN: TdxDBGridColumn;
    dbgTanggiamTSCDVHNHANHIEU: TdxDBGridColumn;
    dbgTanggiamTSCDVHPHANMEM: TdxDBGridColumn;
    dbgTanggiamTSCDVHTSCDVHKHAC: TdxDBGridColumn;
    dbgTanggiamTSCDVHTONGCONG: TdxDBGridColumn;
    dbgTanggiamBDSDTID: TdxDBGridColumn;
    dbgTanggiamBDSDTMANHOM: TdxDBGridColumn;
    dbgTanggiamBDSDTKHOANMUC: TdxDBGridColumn;
    dbgTanggiamBDSDTMANHOMCHA: TdxDBGridColumn;
    dbgTanggiamBDSDTNUTLA: TdxDBGridColumn;
    dbgTanggiamBDSDTSODAUNAM: TdxDBGridColumn;
    dbgTanggiamBDSDTTANGTRONGNAM: TdxDBGridColumn;
    dbgTanggiamBDSDTGIAMTRONGNAM: TdxDBGridColumn;
    dbgTanggiamBDSDTSOCUOINAM: TdxDBGridColumn;
    locFormItem12: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    acChen: TAction;
    qryNoidungISBOLD: TSmallintField;
    dbgNoidung1Column9: TdxDBGridCheckColumn;
    dbgNoidung2Column9: TdxDBGridCheckColumn;
    qryNoidungkhacISBOLD: TSmallintField;
    qryPrepare: TIBOQuery;
    SmallintField13: TSmallintField;
    WideStringField49: TWideStringField;
    WideStringField50: TWideStringField;
    WideStringField51: TWideStringField;
    IBOFloatField37: TIBOFloatField;
    IBOFloatField38: TIBOFloatField;
    IBOFloatField39: TIBOFloatField;
    WideStringField52: TWideStringField;
    qryTemp: TIBOQuery;
    SmallintField14: TSmallintField;
    WideStringField53: TWideStringField;
    WideStringField54: TWideStringField;
    WideStringField55: TWideStringField;
    IBOFloatField40: TIBOFloatField;
    IBOFloatField41: TIBOFloatField;
    IBOFloatField42: TIBOFloatField;
    WideStringField56: TWideStringField;
    qry1ISBOLD: TSmallintField;
    qry21TENTHUYETMINHDAM: TWideStringField;
    qry21ISBOLD: TSmallintField;
    acDefination: TAction;
    dbgTanggiamTSCDHHColumn12: TdxDBGridCheckColumn;
    dbgTanggiamTSCDTTCColumn11: TdxDBGridCheckColumn;
    dbgTanggiamTSCDVHColumn12: TdxDBGridCheckColumn;
    dbgTanggiamBDSDTColumn10: TdxDBGridCheckColumn;
    dbgCackhoannothuetaichinhColumn12: TdxDBGridCheckColumn;
    dbgDoichieuVCSHColumn15: TdxDBGridCheckColumn;
    dbgChitietvondautuColumn12: TdxDBGridCheckColumn;
    qryTSCDHHID: TIntegerField;
    qryTSCDHHKHOANMUC: TWideStringField;
    qryTSCDHHNHACUA: TIBOFloatField;
    qryTSCDHHMAYMOCTB: TIBOFloatField;
    qryTSCDHHPTVTTD: TIBOFloatField;
    qryTSCDHHTBDCQLY: TIBOFloatField;
    qryTSCDHHTAISANCDKHAC: TIBOFloatField;
    qryTSCDHHTONGCONG: TIBOFloatField;
    qryTSCDHHMANHOM: TWideStringField;
    qryTSCDHHNUTLA: TSmallintField;
    qryTSCDHHISBOLD: TSmallintField;
    qryTSCDThuetaichinhID: TIntegerField;
    qryTSCDThuetaichinhKHOANMUC: TWideStringField;
    qryTSCDThuetaichinhMAYMOCTB: TIBOFloatField;
    qryTSCDThuetaichinhPTVTTD: TIBOFloatField;
    qryTSCDThuetaichinhTBDCQLY: TIBOFloatField;
    qryTSCDThuetaichinhTAISANCDKHAC: TIBOFloatField;
    qryTSCDThuetaichinhTONGCONG: TIBOFloatField;
    qryTSCDThuetaichinhMANHOM: TWideStringField;
    qryTSCDThuetaichinhNUTLA: TSmallintField;
    qryTSCDThuetaichinhISBOLD: TSmallintField;
    qryTSCDVHID: TIntegerField;
    qryTSCDVHKHOANMUC: TWideStringField;
    qryTSCDVHQUYENSDDAT: TIBOFloatField;
    qryTSCDVHBANQUYEN: TIBOFloatField;
    qryTSCDVHNHANHIEU: TIBOFloatField;
    qryTSCDVHPHANMEM: TIBOFloatField;
    qryTSCDVHTSCDVHKHAC: TIBOFloatField;
    qryTSCDVHTONGCONG: TIBOFloatField;
    qryTSCDVHMANHOM: TWideStringField;
    qryTSCDVHNUTLA: TSmallintField;
    qryTSCDVHISBOLD: TSmallintField;
    qryTanggiamBDSDTID: TIntegerField;
    qryTanggiamBDSDTKHOANMUC: TWideStringField;
    qryTanggiamBDSDTSODAUNAM: TIBOFloatField;
    qryTanggiamBDSDTTANGTRONGNAM: TIBOFloatField;
    qryTanggiamBDSDTGIAMTRONGNAM: TIBOFloatField;
    qryTanggiamBDSDTSOCUOINAM: TIBOFloatField;
    qryTanggiamBDSDTMANHOM: TWideStringField;
    qryTanggiamBDSDTNUTLA: TSmallintField;
    qryTanggiamBDSDTISBOLD: TSmallintField;
    qryCackhoannothuetaichinhID: TIntegerField;
    qryCackhoannothuetaichinhKHOANMUC: TWideStringField;
    qryCackhoannothuetaichinhTONGKHOANTT_NN: TIBOFloatField;
    qryCackhoannothuetaichinhTRATIENLAITHUE_NN: TIBOFloatField;
    qryCackhoannothuetaichinhTRANOGOC_NN: TIBOFloatField;
    qryCackhoannothuetaichinhTONGKHOANTT_NT: TIBOFloatField;
    qryCackhoannothuetaichinhTRATIENLAITHUE_NT: TIBOFloatField;
    qryCackhoannothuetaichinhTRANOGOC_NT: TIBOFloatField;
    qryCackhoannothuetaichinhMANHOM: TWideStringField;
    qryCackhoannothuetaichinhNUTLA: TSmallintField;
    qryCackhoannothuetaichinhISBOLD: TSmallintField;
    qryChitietvondautuCSHID: TIntegerField;
    qryChitietvondautuCSHTONGSO_NN: TIBOFloatField;
    qryChitietvondautuCSHVONCPTHUONG_NN: TIBOFloatField;
    qryChitietvondautuCSHVONCPUUDAI_NN: TIBOFloatField;
    qryChitietvondautuCSHKHOANMUC: TWideStringField;
    qryChitietvondautuCSHTONGSO_NT: TIBOFloatField;
    qryChitietvondautuCSHVONCPTHUONG_NT: TIBOFloatField;
    qryChitietvondautuCSHVONCPUUDAI_NT: TIBOFloatField;
    qryChitietvondautuCSHMANHOM: TWideStringField;
    qryChitietvondautuCSHNUTLA: TSmallintField;
    qryChitietvondautuCSHISBOLD: TSmallintField;
    qryTSCDHH_0: TIBOQuery;
    qryTSCDThuetaichinh_0: TIBOQuery;
    qryTSCDVH_0: TIBOQuery;
    qryTanggiamBDSDT_0: TIBOQuery;
    qryCackhoannothuetaichinh_0: TIBOQuery;
    qryDoichieubiendongvonCSH_0: TIBOQuery;
    qryChitietvondautuCSH_0: TIBOQuery;
    dsTSCDHH_0: TDataSource;
    dplTSCDHH_0: TppDBPipeline;
    dplTSCDThuetaichinh_0: TppDBPipeline;
    dsTSCDThuetaichinh_0: TDataSource;
    dsTSCDVH_0: TDataSource;
    dplTSCDVH_0: TppDBPipeline;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    ppField53: TppField;
    ppField54: TppField;
    ppField55: TppField;
    dplTanggiamBDSDT_0: TppDBPipeline;
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
    dsTanggiamBDSDT_0: TDataSource;
    dsCackhoannothuetaichinh_0: TDataSource;
    dplCackhoannothuetaichinh_0: TppDBPipeline;
    dplDoichieubiendongvonCSH_0: TppDBPipeline;
    dsDoichieubiendongvonCSH_0: TDataSource;
    dsChitietvondautuCSH_0: TDataSource;
    dplChitietvondautuCSH_0: TppDBPipeline;
    qryTSCDHH_0ID: TIntegerField;
    qryTSCDHH_0KHOANMUC: TWideStringField;
    qryTSCDHH_0NHACUA: TIBOFloatField;
    qryTSCDHH_0MAYMOCTB: TIBOFloatField;
    qryTSCDHH_0PTVTTD: TIBOFloatField;
    qryTSCDHH_0TBDCQLY: TIBOFloatField;
    qryTSCDHH_0TAISANCDKHAC: TIBOFloatField;
    qryTSCDHH_0TONGCONG: TIBOFloatField;
    qryTSCDHH_0MANHOM: TWideStringField;
    qryTSCDHH_0MANHOMCHA: TWideStringField;
    qryTSCDHH_0NUTLA: TSmallintField;
    qryTSCDHH_0ISBOLD: TSmallintField;
    qryDoichieubiendongvonCSH_0ID: TIntegerField;
    qryDoichieubiendongvonCSH_0KHOANMUC: TWideStringField;
    qryDoichieubiendongvonCSH_0VONGOP: TIBOFloatField;
    qryDoichieubiendongvonCSH_0THANGDUVCP: TIBOFloatField;
    qryDoichieubiendongvonCSH_0COPHIEUNGANQUI: TIBOFloatField;
    qryDoichieubiendongvonCSH_0CHENHLENHDGTS: TIBOFloatField;
    qryDoichieubiendongvonCSH_0CHENHLECHTGHD: TIBOFloatField;
    qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN: TIBOFloatField;
    qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH: TIBOFloatField;
    qryDoichieubiendongvonCSH_0QUITHUOCVSH: TIBOFloatField;
    qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP: TIBOFloatField;
    qryDoichieubiendongvonCSH_0MANHOM: TWideStringField;
    qryDoichieubiendongvonCSH_0MANHOMCHA: TWideStringField;
    qryDoichieubiendongvonCSH_0NUTLA: TSmallintField;
    qryDoichieubiendongvonCSH_0ISBOLD: TSmallintField;
    qryTSCDHHKHOANMUCDAM: TWideStringField;
    qryTSCDThuetaichinhKHOANMUCDAM: TWideStringField;
    qryTSCDVHKHOANMUCDAM: TWideStringField;
    qryTanggiamBDSDTKHOANMUCDAM: TWideStringField;
    qryCackhoannothuetaichinhKHOANMUCDAM: TWideStringField;
    qryChitietvondautuCSHKHOANMUCDAM: TWideStringField;
    qryTSCDHH_0NHACUA_CT: TWideStringField;
    qryTSCDHH_0MAYMOCTB_CT: TWideStringField;
    qryTSCDHH_0PTVTTD_CT: TWideStringField;
    qryTSCDHH_0TBDCQLY_CT: TWideStringField;
    qryTSCDHH_0TAISANCDKHAC_CT: TWideStringField;
    qryTSCDHH_0TONGCONG_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0VONGOP_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0THANGDUVCP_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0COPHIEUNGANQUI_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0CHENHLENHDGTS_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0CHENHLECHTGHD_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0QUITHUOCVSH_CT: TWideStringField;
    qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP_CT: TSmallintField;
    acDinhnghia2: TAction;
    dbgChitietvondautuVONCPTHUONG_NN_CT: TdxDBGridColumn;
    dbgChitietvondautuVONCPUUDAI_NN_CT: TdxDBGridColumn;
    dbgChitietvondautuVONCPUUDAI_NT_CT: TdxDBGridColumn;
    dbgChitietvondautuVONCPTHUONG_NT_CT: TdxDBGridColumn;
    dbgChitietvondautuTONGSO_NT_CT: TdxDBGridColumn;
    dbgChitietvondautuTONGSO_NN_CT: TdxDBGridColumn;
    dbgDoichieuVCSHVONGOP_CT: TdxDBGridColumn;
    dbgDoichieuVCSHTHANGDUVCP_CT: TdxDBGridColumn;
    dbgDoichieuVCSHCOPHIEUNGANQUI_CT: TdxDBGridColumn;
    dbgDoichieuVCSHCHENHLENHDGTS_CT: TdxDBGridColumn;
    dbgDoichieuVCSHCHENHLECHTGHD_CT: TdxDBGridColumn;
    dbgDoichieuVCSHQUIDAUTUPHATTRIEN_CT: TdxDBGridColumn;
    dbgDoichieuVCSHQUIDUPHONGTAICHINH_CT: TdxDBGridColumn;
    dbgDoichieuVCSHQUITHUOCVSH_CT: TdxDBGridColumn;
    dbgDoichieuVCSHLOINHUANSTCHUAPP_CT: TdxDBGridColumn;
    dbgTanggiamBDSDTSODAUNAM_CT: TdxDBGridColumn;
    dbgTanggiamBDSDTTANGTRONGNAM_CT: TdxDBGridColumn;
    dbgTanggiamBDSDTGIAMTRONGNAM_CT: TdxDBGridColumn;
    dbgTanggiamBDSDTSOCUOINAM_CT: TdxDBGridColumn;
    dbgTanggiamTSCDVHQUYENSDDAT_CT: TdxDBGridColumn;
    dbgTanggiamTSCDVHBANQUYEN_CT: TdxDBGridColumn;
    dbgTanggiamTSCDVHNHANHIEU_CT: TdxDBGridColumn;
    dbgTanggiamTSCDVHPHANMEM_CT: TdxDBGridColumn;
    dbgTanggiamTSCDVHTSCDVHKHAC_CT: TdxDBGridColumn;
    dbgTanggiamTSCDVHTONGCONG_CT: TdxDBGridColumn;
    dbgTanggiamTSCDTTCMAYMOCTB_CT: TdxDBGridColumn;
    dbgTanggiamTSCDTTCPTVTTD_CT: TdxDBGridColumn;
    dbgTanggiamTSCDTTCTBDCQLY_CT: TdxDBGridColumn;
    dbgTanggiamTSCDTTCTAISANCDKHAC_CT: TdxDBGridColumn;
    dbgTanggiamTSCDTTCTONGCONG_CT: TdxDBGridColumn;
    dbgTanggiamTSCDHHNHACUA_CT: TdxDBGridColumn;
    dbgTanggiamTSCDHHMAYMOCTB_CT: TdxDBGridColumn;
    dbgTanggiamTSCDHHTAISANCDKHAC_CT: TdxDBGridColumn;
    dbgTanggiamTSCDHHPTVTTD_CT: TdxDBGridColumn;
    dbgTanggiamTSCDHHTBDCQLY_CT: TdxDBGridColumn;
    dbgTanggiamTSCDHHTONGCONG_CT: TdxDBGridColumn;
    qryNoidungkhacISMIN: TSmallintField;
    dbgNoidung2Column10: TdxDBGridCheckColumn;
    qryNoidungkhacPHATSINH: TSmallintField;
    dbgNoidung2Column11: TdxDBGridCheckColumn;
    locFormGroup2: TdxLayoutGroup;
    peTuthang: TdxPickEdit;
    locFormItem15: TdxLayoutItem;
    peDenthang: TdxPickEdit;
    locFormItem13: TdxLayoutItem;
    seTunam: TdxSpinEdit;
    locFormItem14: TdxLayoutItem;
    seDennam: TdxSpinEdit;
    locFormItem16: TdxLayoutItem;
    qryDoichieubiendongvonCSHID: TIntegerField;
    qryDoichieubiendongvonCSHKHOANMUC: TWideStringField;
    qryDoichieubiendongvonCSHKHOANMUCDAM: TWideStringField;
    qryDoichieubiendongvonCSHVONGOP: TIBOFloatField;
    qryDoichieubiendongvonCSHTHANGDUVCP: TIBOFloatField;
    qryDoichieubiendongvonCSHCOPHIEUNGANQUY: TIBOFloatField;
    qryDoichieubiendongvonCSHCHENHLECHDGTS: TIBOFloatField;
    qryDoichieubiendongvonCSHCHENHLECHTGHD: TIBOFloatField;
    qryDoichieubiendongvonCSHQUYDAUTUPHATTRIEN: TIBOFloatField;
    qryDoichieubiendongvonCSHQUYDUPHONGTAICHINH: TIBOFloatField;
    qryDoichieubiendongvonCSHQUYTHUOCVONCSH: TIBOFloatField;
    qryDoichieubiendongvonCSHLOINHUANSTCHUAPP: TIBOFloatField;
    qryDoichieubiendongvonCSHMANHOM: TWideStringField;
    qryDoichieubiendongvonCSHNUTLA: TSmallintField;
    qryDoichieubiendongvonCSHISBOLD: TSmallintField;
    qryTSCDThuetaichinh_0ID: TIntegerField;
    qryTSCDThuetaichinh_0KHOANMUC: TWideStringField;
    qryTSCDThuetaichinh_0MAYMOCTB: TIBOFloatField;
    qryTSCDThuetaichinh_0PTVTTD: TIBOFloatField;
    qryTSCDThuetaichinh_0TBDCQLY: TIBOFloatField;
    qryTSCDThuetaichinh_0TAISANCDKHAC: TIBOFloatField;
    qryTSCDThuetaichinh_0TONGCONG: TIBOFloatField;
    qryTSCDThuetaichinh_0MANHOM: TWideStringField;
    qryTSCDThuetaichinh_0MANHOMCHA: TWideStringField;
    qryTSCDThuetaichinh_0NUTLA: TSmallintField;
    qryTSCDThuetaichinh_0ISBOLD: TSmallintField;
    qryTSCDThuetaichinh_0MAYMOCTB_CT: TWideStringField;
    qryTSCDThuetaichinh_0PTVTTD_CT: TWideStringField;
    qryTSCDThuetaichinh_0TBDCQLY_CT: TWideStringField;
    qryTSCDThuetaichinh_0TAISANCDKHAC_CT: TWideStringField;
    qryTSCDThuetaichinh_0TONGCONG_CT: TWideStringField;
    qryChitietvondautuCSH_0ID: TIntegerField;
    qryChitietvondautuCSH_0TONGSO_NN: TIBOFloatField;
    qryChitietvondautuCSH_0VONCPTHUONG_NN: TIBOFloatField;
    qryChitietvondautuCSH_0VONCPUUDAI_NN: TIBOFloatField;
    qryChitietvondautuCSH_0KHOANMUC: TWideStringField;
    qryChitietvondautuCSH_0TONGSO_NT: TIBOFloatField;
    qryChitietvondautuCSH_0VONCPTHUONG_NT: TIBOFloatField;
    qryChitietvondautuCSH_0VONCPUUDAI_NT: TIBOFloatField;
    qryChitietvondautuCSH_0MANHOM: TWideStringField;
    qryChitietvondautuCSH_0MANHOMCHA: TWideStringField;
    qryChitietvondautuCSH_0NUTLA: TSmallintField;
    qryChitietvondautuCSH_0ISBOLD: TSmallintField;
    qryChitietvondautuCSH_0TONGSO_NN_CT: TWideStringField;
    qryChitietvondautuCSH_0VONCPTHUONG_NN_CT: TWideStringField;
    qryChitietvondautuCSH_0VONCPUUDAI_NN_CT: TWideStringField;
    qryChitietvondautuCSH_0VONCPUUDAI_NT_CT: TWideStringField;
    qryChitietvondautuCSH_0VONCPTHUONG_NT_CT: TWideStringField;
    qryChitietvondautuCSH_0TONGSO_NT_CT: TWideStringField;
    qry4TENTHUYETMINHDAM: TWideStringField;
    qry4NAMNAYDAM: TIBOFloatField;
    qry4NAMTRUOCDAM: TIBOFloatField;
    qry6TENTHUYETMINHDAM: TWideStringField;
    qry6NAMNAYDAM: TIBOFloatField;
    qry6NAMTRUOCDAM: TIBOFloatField;
    qry7TENTHUYETMINHDAM: TWideStringField;
    qry7NAMNAYDAM: TIBOFloatField;
    qry7NAMTRUOCDAM: TIBOFloatField;
    qry9TENTHUYETMINHDAM: TWideStringField;
    qry9NAMNAYDAM: TIBOFloatField;
    qry9NAMTRUOCDAM: TIBOFloatField;
    qry11TENTHUYETMINHDAM: TWideStringField;
    qry11NAMNAYDAM: TIBOFloatField;
    qry11NAMTRUOCDAM: TIBOFloatField;
    qry14TENTHUYETMINHDAM: TWideStringField;
    qry14NAMNAYDAM: TIBOFloatField;
    qry14NAMTRUOCDAM: TIBOFloatField;
    qry16TENTHUYETMINHDAM: TWideStringField;
    qry16NAMNAYDAM: TIBOFloatField;
    qry16NAMTRUOCDAM: TIBOFloatField;
    qry20TENTHUYETMINHDAM: TWideStringField;
    qry20NAMNAYDAM: TIBOFloatField;
    qry20NAMTRUOCDAM: TIBOFloatField;
    qry2TENTHUYETMINHDAM: TWideStringField;
    qry2NAMNAYDAM: TIBOFloatField;
    qry2NAMTRUOCDAM: TIBOFloatField;
    qry18TENTHUYETMINHDAM: TWideStringField;
    qry18NAMNAYDAM: TIBOFloatField;
    qry18NAMTRUOCDAM: TIBOFloatField;
    qryNoidungTENTHUYETMINH: TWideStringField;
    qry1TENTHUYETMINH: TWideStringField;
    qry1TENTHUYETMINHDAM: TWideStringField;
    qryNoidungkhacTENTHUYETMINH: TWideStringField;
    acResetData: TAction;
    acAppend: TAction;
    qryCackhoannothuetaichinh_0ID: TIntegerField;
    qryCackhoannothuetaichinh_0KHOANMUC: TWideStringField;
    qryCackhoannothuetaichinh_0TONGKHOANTT_NN: TIBOFloatField;
    qryCackhoannothuetaichinh_0TRATIENLAITHUE_NN: TIBOFloatField;
    qryCackhoannothuetaichinh_0TRANOGOC_NN: TIBOFloatField;
    qryCackhoannothuetaichinh_0TONGKHOANTT_NT: TIBOFloatField;
    qryCackhoannothuetaichinh_0TRATIENLAITHUE_NT: TIBOFloatField;
    qryCackhoannothuetaichinh_0TRANOGOC_NT: TIBOFloatField;
    qryCackhoannothuetaichinh_0MANHOM: TWideStringField;
    qryCackhoannothuetaichinh_0MANHOMCHA: TWideStringField;
    qryCackhoannothuetaichinh_0NUTLA: TSmallintField;
    qryCackhoannothuetaichinh_0ISBOLD: TSmallintField;
    qryCackhoannothuetaichinh_0TONGKHOANTT_NN_CT: TSmallintField;
    qryCackhoannothuetaichinh_0TONGKHOANTT_NT_CT: TWideStringField;
    qryCackhoannothuetaichinh_0TRATIENLAITHUE_NN_CT: TWideStringField;
    qryCackhoannothuetaichinh_0TRATIENLAITHUE_NT_CT: TWideStringField;
    qryCackhoannothuetaichinh_0TRANOGOC_NN_CT: TWideStringField;
    qryCackhoannothuetaichinh_0TRANOGOC_NT_CT: TWideStringField;
    qryTSCDVH_0ID: TIntegerField;
    qryTSCDVH_0KHOANMUC: TWideStringField;
    qryTSCDVH_0QUYENSDDAT: TIBOFloatField;
    qryTSCDVH_0BANQUYEN: TIBOFloatField;
    qryTSCDVH_0NHANHIEU: TIBOFloatField;
    qryTSCDVH_0PHANMEM: TIBOFloatField;
    qryTSCDVH_0TSCDVHKHAC: TIBOFloatField;
    qryTSCDVH_0TONGCONG: TIBOFloatField;
    qryTSCDVH_0MANHOM: TWideStringField;
    qryTSCDVH_0MANHOMCHA: TWideStringField;
    qryTSCDVH_0NUTLA: TSmallintField;
    qryTSCDVH_0ISBOLD: TSmallintField;
    qryTSCDVH_0QUYENSDDAT_CT: TWideStringField;
    qryTSCDVH_0BANQUYEN_CT: TWideStringField;
    qryTSCDVH_0NHANHIEU_CT: TWideStringField;
    qryTSCDVH_0PHANMEM_CT: TWideStringField;
    qryTSCDVH_0TSCDVHKHAC_CT: TWideStringField;
    qryTSCDVH_0TONGCONG_CT: TWideStringField;
    qryUpdateEntryNum: TIBOQuery;
    SmallintField12: TSmallintField;
    WideStringField45: TWideStringField;
    WideStringField46: TWideStringField;
    WideStringField47: TWideStringField;
    IBOFloatField34: TIBOFloatField;
    IBOFloatField35: TIBOFloatField;
    IBOFloatField36: TIBOFloatField;
    WideStringField48: TWideStringField;
    locFormItem17: TdxLayoutItem;
    btnDefault: TElPopupButton;
    IB_Script1: TIB_Script;
    qryGetArising_TMBCTC: TIBOQuery;
    qryGetArising_TMBCTCSOPS: TIBOFloatField;
    qryGetBalance_TMBCTC: TIBOQuery;
    qryGetBalance_TMBCTCNODK: TIBOFloatField;
    qryGetBalance_TMBCTCCODK: TIBOFloatField;
    qryGetBalance_TMBCTCNOPS: TIBOFloatField;
    qryGetBalance_TMBCTCCOPS: TIBOFloatField;
    qryGetBalance_TMBCTCNOCK: TIBOFloatField;
    qryGetBalance_TMBCTCCOCK: TIBOFloatField;
    StExpression: TStExpression;
    qryTanggiamBDSDT_0ID: TIntegerField;
    qryTanggiamBDSDT_0KHOANMUC: TWideStringField;
    qryTanggiamBDSDT_0SODAUNAM: TIBOFloatField;
    qryTanggiamBDSDT_0TANGTRONGNAM: TIBOFloatField;
    qryTanggiamBDSDT_0GIAMTRONGNAM: TIBOFloatField;
    qryTanggiamBDSDT_0SOCUOINAM: TIBOFloatField;
    qryTanggiamBDSDT_0MANHOM: TWideStringField;
    qryTanggiamBDSDT_0MANHOMCHA: TWideStringField;
    qryTanggiamBDSDT_0NUTLA: TSmallintField;
    qryTanggiamBDSDT_0ISBOLD: TSmallintField;
    qryTanggiamBDSDT_0SODAUNAM_CT: TWideStringField;
    qryTanggiamBDSDT_0TANGTRONGNAM_CT: TWideStringField;
    qryTanggiamBDSDT_0GIAMTRONGNAM_CT: TWideStringField;
    qryTanggiamBDSDT_0SOCUOINAM_CT: TWideStringField;
    locBranch: TdxLayoutItem;
    pedtBranch: TdxDBExtLookupEdit;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure eltsNoidung1Enter(Sender: TObject);
    procedure eltsTanggiamTSCDHHEnter(Sender: TObject);
    procedure eltsTanggiamTSCDTTCEnter(Sender: TObject);
    procedure eltsTanggiamTSCDVHEnter(Sender: TObject);
    procedure eltsTanggiamBDSDTEnter(Sender: TObject);
    procedure eltsCackhoannothuetaichinhEnter(Sender: TObject);
    procedure eltsDoichieuVCSHEnter(Sender: TObject);
    procedure eltsChitietvondautuEnter(Sender: TObject);
    procedure qryTSCDHHNewRecord(DataSet: TDataSet);
    procedure dbgNoidung1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgTanggiamTSCDHHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgTanggiamTSCDTTCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgTanggiamTSCDVHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgTanggiamBDSDTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCackhoannothuetaichinhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDoichieuVCSHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgChitietvondautuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryNoidungkhacNewRecord(DataSet: TDataSet);
    procedure qryTSCDThuetaichinhNewRecord(DataSet: TDataSet);
    procedure qryTSCDVHNewRecord(DataSet: TDataSet);
    procedure qryTanggiamBDSDTNewRecord(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinhNewRecord(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSHNewRecord(DataSet: TDataSet);
    procedure qryChitietvondautuCSHNewRecord(DataSet: TDataSet);
    procedure eltsNoidung2Enter(Sender: TObject);
    procedure acChenExecute(Sender: TObject);
    procedure qryNoidungAfterCancel(DataSet: TDataSet);
    procedure dbgTanggiamTSCDHHDblClick(Sender: TObject);
    procedure acDefinationExecute(Sender: TObject);
    procedure eltsNoidung1Exit(Sender: TObject);
    procedure acDinhnghia2Execute(Sender: TObject);
    procedure elbtDinhnghiaClick(Sender: TObject);
    procedure dbgNoidung2ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure acAppendExecute(Sender: TObject);
    procedure qryNoidungAfterDelete(DataSet: TDataSet);
    procedure qryTSCDHH_0AfterDelete(DataSet: TDataSet);
    procedure qryTSCDVH_0AfterDelete(DataSet: TDataSet);
    procedure qryTanggiamBDSDT_0AfterDelete(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinh_0AfterDelete(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSH_0AfterDelete(DataSet: TDataSet);
    procedure qryChitietvondautuCSH_0AfterDelete(DataSet: TDataSet);
    procedure qryNoidungkhacAfterDelete(DataSet: TDataSet);
    procedure qryNoidungkhacAfterCancel(DataSet: TDataSet);
    procedure qryTSCDHH_0AfterCancel(DataSet: TDataSet);
    procedure qryTSCDThuetaichinh_0AfterCancel(DataSet: TDataSet);
    procedure qryTSCDThuetaichinh_0AfterDelete(DataSet: TDataSet);
    procedure qryTSCDVH_0AfterCancel(DataSet: TDataSet);
    procedure qryTanggiamBDSDT_0AfterCancel(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinh_0AfterCancel(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSH_0AfterCancel(DataSet: TDataSet);
    procedure qryChitietvondautuCSH_0AfterCancel(DataSet: TDataSet);
    procedure qryNoidungAfterPost(DataSet: TDataSet);
    procedure qryTSCDVH_0NewRecord(DataSet: TDataSet);
    procedure qryTSCDThuetaichinh_0NewRecord(DataSet: TDataSet);
    procedure qryTSCDHH_0NewRecord(DataSet: TDataSet);
    procedure qryTanggiamBDSDT_0NewRecord(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinh_0NewRecord(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSH_0NewRecord(DataSet: TDataSet);
    procedure qryChitietvondautuCSH_0NewRecord(DataSet: TDataSet);
    procedure qryTSCDHH_0BeforeDelete(DataSet: TDataSet);
    procedure qryTSCDThuetaichinh_0BeforeDelete(DataSet: TDataSet);
    procedure qryTSCDVH_0BeforeDelete(DataSet: TDataSet);
    procedure qryTanggiamBDSDT_0BeforeDelete(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinh_0BeforeDelete(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSH_0BeforeDelete(DataSet: TDataSet);
    procedure qryChitietvondautuCSH_0BeforeDelete(DataSet: TDataSet);
    procedure qryNoidungBeforeDelete(DataSet: TDataSet);
    procedure qryNoidungkhacBeforeDelete(DataSet: TDataSet);
    procedure qryNoidungNewRecord(DataSet: TDataSet);
    procedure dbgCackhoannothuetaichinhMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgDoichieuVCSHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgChitietvondautuMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgNoidung2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgNoidung1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgTanggiamTSCDHHMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgTanggiamTSCDTTCMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgTanggiamTSCDVHMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgTanggiamBDSDTMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure qryNoidungAfterInsert(DataSet: TDataSet);
    procedure qryNoidungkhacAfterInsert(DataSet: TDataSet);
    procedure qryTSCDHH_0AfterInsert(DataSet: TDataSet);
    procedure qryTSCDThuetaichinh_0AfterInsert(DataSet: TDataSet);
    procedure qryTSCDVH_0AfterInsert(DataSet: TDataSet);
    procedure qryTanggiamBDSDT_0AfterInsert(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinh_0AfterInsert(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSH_0AfterInsert(DataSet: TDataSet);
    procedure qryChitietvondautuCSH_0AfterInsert(DataSet: TDataSet);
    procedure qryTSCDHH_0PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryTSCDThuetaichinh_0PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryTSCDVH_0PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryTanggiamBDSDT_0PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryCackhoannothuetaichinh_0PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryDoichieubiendongvonCSH_0PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryChitietvondautuCSH_0PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryNoidungPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryNoidungkhacPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryNoidungDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryNoidungkhacDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryChitietvondautuCSH_0DeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryDoichieubiendongvonCSH_0DeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryCackhoannothuetaichinh_0DeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryTanggiamBDSDT_0DeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryTSCDVH_0DeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryTSCDThuetaichinh_0DeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryTSCDHH_0DeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryTSCDHH_0BeforePost(DataSet: TDataSet);
    procedure qryTSCDThuetaichinh_0BeforePost(DataSet: TDataSet);
    procedure qryTSCDVH_0BeforePost(DataSet: TDataSet);
    procedure qryTanggiamBDSDT_0BeforePost(DataSet: TDataSet);
    procedure qryCackhoannothuetaichinh_0BeforePost(DataSet: TDataSet);
    procedure qryDoichieubiendongvonCSH_0BeforePost(DataSet: TDataSet);
    procedure qryChitietvondautuCSH_0BeforePost(DataSet: TDataSet);
    procedure qryNoidungkhacBeforePost(DataSet: TDataSet);
    procedure qryNoidungBeforePost(DataSet: TDataSet);
    procedure eltsChitietvondautuExit(Sender: TObject);
    procedure eltsDoichieuVCSHExit(Sender: TObject);
    procedure eltsNoidung2Exit(Sender: TObject);
    procedure eltsTanggiamBDSDTExit(Sender: TObject);
    procedure eltsTanggiamTSCDHHExit(Sender: TObject);
    procedure eltsTanggiamTSCDTTCExit(Sender: TObject);
    procedure eltsTanggiamTSCDVHExit(Sender: TObject);
    procedure PgCtrlLeftChange(Sender: TObject);
    procedure eltsCackhoannothuetaichinhExit(Sender: TObject);
    procedure dbgChitietvondautuChangeColumn(Sender: TObject;
      Node: TdxTreeListNode; Column: Integer);
    procedure acResetDataExecute(Sender: TObject);
    procedure IB_Script1Error(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    procedure OpenQry(Sender: TObject);
    procedure ShowConditionForm(Sender: TObject);
    procedure PrepareForReport();
    procedure UpdateEntryNum(iType:smallint; iCur:Smallint);
    procedure TMBCTC_SetBeforePrint();
    function Caculate_TMBCTC(strInput:string):Variant;
    function NODK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function CODK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function NOPS2(ASHTK : Variant;ASHDT : Variant):Variant;
    function COPS2(ASHTK : Variant;ASHDT : Variant):Variant;
    function NOCK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function COCK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function SOPS2(ATKNO : Variant;ATKCO : Variant;ADTNO : Variant;ADTCO : Variant):Variant;
    procedure OpenQryReport(Sender: TObject);
    procedure CloseQryReport(Sender: TObject);    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThuyetminhBCTCFrm: TThuyetminhBCTCFrm;
  iChen,iTabActive,iTUKY,iDENKY,iType,iErr :smallint;
  iCur,iID:integer;
  sKhoanmuc, StrErr:string;
  OldTab:TElTabSheet;

implementation
uses GlobalUnit, TMBCTC_DKForm, THUYETMINHBCTC_DK, ThuyetminhBCTC_DKKPS,
  MainDataMdl, dxTreeGridMenus, ppCtrls, Functions, HtmlHlp, DateUtils;

{$R *.dfm}

procedure TThuyetminhBCTCFrm.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  OpenQry(Sender);
  peTuthang.Text := peTuthang.Items[0];
  peDenthang.Text := peDenthang.Items[MonthOf(now) -1];

  seTunam.IntValue := YearOf(now);
  seDennam.IntValue := YearOf(now);

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  iType:=4;
  iErr:=0;
  Screen.Cursor := crDefault;

  MainDM.qryBranch.locate('BRANCH_ID',vpBranch_id,[]);  
end;

procedure TThuyetminhBCTCFrm.CloseQryReport(Sender: TObject);
begin
  if qry1.Active then
    qry1.Close;
  if qry2.Active then
    qry2.Close;
  if qry3.Active then
    qry3.Close;
  if qry4.Active then
    qry4.Close;
  if qry5.Active then
    qry5.Close;
  if qry6.Active then
    qry6.Close;
  if qry7.Active then
    qry7.Close;
  if qry8.Active then
    qry8.Close;
  if qry9.Active then
    qry9.Close;
  if qry10.Active then
    qry10.Close;
  if qry11.Active then
    qry11.Close;
  if qry12.Active then
    qry12.Close;
  if qry13.Active then
    qry13.Close;
  if qry14.Active then
    qry14.Close;
  if qry15.Active then
    qry15.Close;
  if qry16.Active then
    qry16.Close;
  if qry17.Active then
    qry17.Close;
  if qry18.Active then
    qry18.Close;
  if qry19.Active then
    qry19.Close;
  if qry20.Active then
    qry20.Close;
  if qry21.Active then
    qry21.Close;
end;

procedure TThuyetminhBCTCFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryNoidung.Active then
    qryNoidung.Close;
  if qryNoidungkhac.Active then
    qryNoidungkhac.Close;
  if qryTSCDHH.Active then
    qryTSCDHH.Close;
  if qryTSCDThuetaichinh.Active then
    qryTSCDThuetaichinh.Close;
  if qryTSCDVH.Active then
    qryTSCDVH.Close;
  if qryTanggiamBDSDT.Active then
    qryTanggiamBDSDT.Close;
  if qryCackhoannothuetaichinh.Active then
    qryCackhoannothuetaichinh.Close;
  if qryDoichieubiendongvonCSH.Active then
    qryDoichieubiendongvonCSH.Close;
  if qryChitietvondautuCSH.Active then
    qryChitietvondautuCSH.Close;

  if qryTSCDHH_0.Active then
    qryTSCDHH_0.Close;
  if qryTSCDThuetaichinh_0.Active then
    qryTSCDThuetaichinh_0.Close;
  if qryTSCDVH_0.Active then
    qryTSCDVH_0.Close;
  if qryTanggiamBDSDT_0.Active then
    qryTanggiamBDSDT_0.Close;
  if qryCackhoannothuetaichinh_0.Active then
    qryCackhoannothuetaichinh_0.Close;
  if qryDoichieubiendongvonCSH_0.Active then
    qryDoichieubiendongvonCSH_0.Close;
  if qryChitietvondautuCSH_0.Active then
    qryChitietvondautuCSH_0.Close;
  CloseQryReport(Sender); 
end;
function TThuyetminhBCTCFrm.NODK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  if LowerCase(ASHTK) <> 'null' then
    qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK
  else
    qryGetBalance_TMBCTC.ParamByName('SHTK').IsNull := true;
  if LowerCase(ASHDT) <> 'null' then
    qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT
  else
    qryGetBalance_TMBCTC.ParamByName('MADT').IsNull := true;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCNODK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TThuyetminhBCTCFrm.CODK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  if LowerCase(ASHTK) <> 'null' then
    qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK
  else
    qryGetBalance_TMBCTC.ParamByName('SHTK').IsNull := true;
  if LowerCase(ASHDT) <> 'null' then
    qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT
  else
    qryGetBalance_TMBCTC.ParamByName('MADT').IsNull := true;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCCODK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TThuyetminhBCTCFrm.NOPS2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCNOPS.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TThuyetminhBCTCFrm.COPS2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCCOPS.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TThuyetminhBCTCFrm.NOCK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCNOCK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TThuyetminhBCTCFrm.COCK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCCOCK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TThuyetminhBCTCFrm.SOPS2(ATKNO : Variant;ATKCO : Variant;ADTNO : Variant;ADTCO : Variant):Variant;
begin
  qryGetArising_TMBCTC.Close;
  qryGetArising_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetArising_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetArising_TMBCTC.ParamByName('TKNO').Value:=ATKNO;
  qryGetArising_TMBCTC.ParamByName('TKCO').Value:=ATKCO;
  qryGetArising_TMBCTC.ParamByName('DTNO').Value:=ADTNO;
  qryGetArising_TMBCTC.ParamByName('DTCO').Value:=ADTCO;
  qryGetArising_TMBCTC.ParamByName('BRANCH_ID').Value:=MainDM.qryBranchBRANCH_ID.Value;
  qryGetArising_TMBCTC.Open;
  Result:=qryGetArising_TMBCTCSOPS.AsFloat;
  qryGetArising_TMBCTC.Close;
end;

function TThuyetminhBCTCFrm.Caculate_TMBCTC(strInput:string):Variant;
begin
  if Trim(strInput)='' then Exit;

  stExpression:=TstExpression.Create(Self);

  stExpression.RemoveIdentifier('NODK');
  stExpression.RemoveIdentifier('CODK');
  stExpression.RemoveIdentifier('NOPS');
  stExpression.RemoveIdentifier('COPS');
  stExpression.RemoveIdentifier('NOCK');
  stExpression.RemoveIdentifier('COCK');
  stExpression.RemoveIdentifier('SOPS');

  stExpression.AddMethod2Param('NODK',NODK2);
  stExpression.AddMethod2Param('CODK',CODK2);
  stExpression.AddMethod2Param('NOPS',NOPS2);
  stExpression.AddMethod2Param('COPS',COPS2);
  stExpression.AddMethod2Param('NOCK',NOCK2);
  stExpression.AddMethod2Param('COCK',COCK2);
  stExpression.AddMethod4Param('SOPS',SOPS2);

  stExpression.Expression:=strInput;
  try
    stExpression.AnalyzeExpression;
  except
//    mmSQLEdit.SelStart:=stExpression.ErrorPosition;
    ShowMessage('Label error at position '+IntToStr(stExpression.ErrorPosition));
//    mmSQLEdit.SetFocus;
  end;
  result:=FormatFloat(CACHESO_FORMAT,stExpression.AsFloat);
end;

procedure TThuyetminhBCTCFrm.PrepareForReport();
begin
  iTUKY:= (seTunam.IntValue)*12+StrToInt(peTuthang.Text);
  iDENKY:= (seDennam.IntValue)*12+StrToInt(peDenthang.Text);
  //tinh noi dung 2
  with qryPrepare do
  begin
    SQL.Text := 'execute procedure sp_tg_bangthuyetminhtc(:TUKY,:DENKY,:BRANCH_ID)';
    ParamByName('TUKY').Value :=iTUKY;
    ParamByName('DENKY').Value :=iDENKY;
    ParamByName('BRANCH_ID').Value := MainDM.qryBranchBRANCH_ID.Value;
    ExecSQL;
    IB_Transaction.CommitRetaining;

    SQL.Text := 'execute procedure sp_tg_thuyetminhbctc_kps_cal(:TUKY,:DENKY,:BRANCH_ID)';
    ParamByName('TUKY').Value :=iTUKY;
    ParamByName('DENKY').Value :=iDENKY;
    ParamByName('BRANCH_ID').Value := MainDM.qryBranchBRANCH_ID.Value;
    ExecSQL;
    IB_Transaction.CommitRetaining;
  end;
  //tinh tai san co dinh huu hinh
  with qryTSCDHH_0 do
  begin
    First;
    while not Eof do
    begin
      if not (qryTSCDHH_0.State in [dsInsert,dsEdit]) then
        qryTSCDHH_0.Edit;
{      qryTSCDHH_0NHACUA.Value:=12;
      qryTSCDHH_0MAYMOCTB.Value:=23;
      qryTSCDHH_0PTVTTD.Value:=46;
      qryTSCDHH_0TBDCQLY.Value:=765;
      qryTSCDHH_0TAISANCDKHAC.Value:=7658;
      qryTSCDHH_0TONGCONG.Value:=685;
}      qryTSCDHH_0NHACUA.Value:=Caculate_TMBCTC(qryTSCDHH_0NHACUA_CT.AsString);
      qryTSCDHH_0MAYMOCTB.Value:=Caculate_TMBCTC(qryTSCDHH_0MAYMOCTB_CT.AsString);
      qryTSCDHH_0PTVTTD.Value:=Caculate_TMBCTC(qryTSCDHH_0PTVTTD_CT.AsString);
      qryTSCDHH_0TBDCQLY.Value:=Caculate_TMBCTC(qryTSCDHH_0TBDCQLY_CT.AsString);
      qryTSCDHH_0TAISANCDKHAC.Value:=Caculate_TMBCTC(qryTSCDHH_0TAISANCDKHAC_CT.AsString);
      qryTSCDHH_0TONGCONG.Value:=Caculate_TMBCTC(qryTSCDHH_0TONGCONG_CT.AsString);
      Post;
      Next;
    end;
  end;
  //tinh tai san co dinh vo hinh
  with qryTSCDVH_0 do
  begin
    First;
    while not Eof do
    begin
      if not (qryTSCDVH_0.State in [dsInsert,dsEdit]) then
        qryTSCDVH_0.Edit;
{      qryTSCDVH_0QUYENSDDAT.Value:=45;
      qryTSCDVH_0BANQUYEN.Value:=568;
      qryTSCDVH_0NHANHIEU.Value:=457645;
      qryTSCDVH_0PHANMEM.Value:=679;
      qryTSCDVH_0TSCDVHKHAC.Value:=568;
      qryTSCDVH_0TONGCONG.Value:=585;
}
      qryTSCDVH_0QUYENSDDAT.Value:=Caculate_TMBCTC(qryTSCDVH_0QUYENSDDAT_CT.AsString);
      qryTSCDVH_0BANQUYEN.Value:=Caculate_TMBCTC(qryTSCDVH_0BANQUYEN_CT.AsString);
      qryTSCDVH_0NHANHIEU.Value:=Caculate_TMBCTC(qryTSCDVH_0NHANHIEU_CT.AsString);
      qryTSCDVH_0PHANMEM.Value:=Caculate_TMBCTC(qryTSCDVH_0PHANMEM_CT.AsString);
      qryTSCDVH_0TSCDVHKHAC.Value:=Caculate_TMBCTC(qryTSCDVH_0TSCDVHKHAC_CT.AsString);
      qryTSCDVH_0TONGCONG.Value:=Caculate_TMBCTC(qryTSCDVH_0TONGCONG_CT.AsString);
      Post;
      Next;
    end;
  end;
  //tinh tai san co dinh thue tai chinh
  with qryTSCDThuetaichinh_0 do
  begin
    First;
    while not Eof do
    begin
      if not (qryTSCDThuetaichinh_0.State in [dsInsert,dsEdit]) then
        qryTSCDThuetaichinh_0.Edit;
{      qryTSCDThuetaichinh_0MAYMOCTB.Value:=457;
      qryTSCDThuetaichinh_0PTVTTD.Value:=5685;
      qryTSCDThuetaichinh_0TBDCQLY.Value:=5685;
      qryTSCDThuetaichinh_0TAISANCDKHAC.Value:=5696;
      qryTSCDThuetaichinh_0TONGCONG.Value:=5685;
}
      qryTSCDThuetaichinh_0MAYMOCTB.Value:=Caculate_TMBCTC(qryTSCDThuetaichinh_0MAYMOCTB_CT.AsString);
      qryTSCDThuetaichinh_0PTVTTD.Value:=Caculate_TMBCTC(qryTSCDThuetaichinh_0PTVTTD_CT.AsString);
      qryTSCDThuetaichinh_0TBDCQLY.Value:=Caculate_TMBCTC(qryTSCDThuetaichinh_0TBDCQLY_CT.AsString);
      qryTSCDThuetaichinh_0TAISANCDKHAC.Value:=Caculate_TMBCTC(qryTSCDThuetaichinh_0TAISANCDKHAC_CT.AsString);
      qryTSCDThuetaichinh_0TONGCONG.Value:=Caculate_TMBCTC(qryTSCDThuetaichinh_0TONGCONG_CT.AsString);
      Post;
      Next;
    end;
  end;
  //tinh bat dong san dau tu
  with qryTanggiamBDSDT_0 do
  begin
    First;
    while not Eof do
    begin
      if not (qryTanggiamBDSDT_0.State in [dsInsert,dsEdit]) then
        qryTanggiamBDSDT_0.Edit;
{       qryTanggiamBDSDT_0SODAUNAM.Value:=568;
      qryTanggiamBDSDT_0TANGTRONGNAM.Value:=568;
      qryTanggiamBDSDT_0GIAMTRONGNAM.Value:=68;
      qryTanggiamBDSDT_0SOCUOINAM.Value:=679;
}
      qryTanggiamBDSDT_0SODAUNAM.Value:=Caculate_TMBCTC(qryTanggiamBDSDT_0SODAUNAM_CT.AsString);
      qryTanggiamBDSDT_0TANGTRONGNAM.Value:=Caculate_TMBCTC(qryTanggiamBDSDT_0TANGTRONGNAM_CT.AsString);
      qryTanggiamBDSDT_0GIAMTRONGNAM.Value:=Caculate_TMBCTC(qryTanggiamBDSDT_0GIAMTRONGNAM_CT.AsString);
      qryTanggiamBDSDT_0SOCUOINAM.Value:=Caculate_TMBCTC(qryTanggiamBDSDT_0SOCUOINAM_CT.AsString);
      Post;
      Next;
    end;
  end;
  //tinh doi chieu bien dong von CSH
  with qryDoichieubiendongvonCSH_0 do
  begin
    First;
    while not Eof do
    begin
      if not (qryDoichieubiendongvonCSH_0.State in [dsInsert,dsEdit]) then
        qryDoichieubiendongvonCSH_0.Edit;
{      qryDoichieubiendongvonCSH_0VONGOP.Value:=568;
      qryDoichieubiendongvonCSH_0THANGDUVCP.Value:=679;
      qryDoichieubiendongvonCSH_0COPHIEUNGANQUI.Value:=98797;
      qryDoichieubiendongvonCSH_0CHENHLENHDGTS.Value:=23525;
      qryDoichieubiendongvonCSH_0CHENHLECHTGHD.Value:=796;
      qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN.Value:=685;
      qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH.Value:=967;
      qryDoichieubiendongvonCSH_0QUITHUOCVSH.Value:=685;
      qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP.Value:=458754;
}
      qryDoichieubiendongvonCSH_0VONGOP.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0VONGOP_CT.AsString);
      qryDoichieubiendongvonCSH_0THANGDUVCP.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0THANGDUVCP_CT.AsString);
      qryDoichieubiendongvonCSH_0COPHIEUNGANQUI.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0COPHIEUNGANQUI_CT.AsString);
      qryDoichieubiendongvonCSH_0CHENHLENHDGTS.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0CHENHLENHDGTS_CT.AsString);
      qryDoichieubiendongvonCSH_0CHENHLECHTGHD.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0CHENHLECHTGHD_CT.AsString);
      qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN_CT.AsString);
      qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH_CT.AsString);
      qryDoichieubiendongvonCSH_0QUITHUOCVSH.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0QUITHUOCVSH_CT.AsString);
      qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP.Value:=Caculate_TMBCTC(qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP_CT.AsString);
      Post;
      Next;
    end;
  end;
  //tinh chi tietvon dau tu cua CSH
  with qryChitietvondautuCSH_0 do
  begin
    First;
    while not Eof do
    begin
      if not (qryChitietvondautuCSH_0.State in [dsInsert,dsEdit]) then
        qryChitietvondautuCSH_0.Edit;

{      qryChitietvondautuCSH_0TONGSO_NN.Value:=364;
      qryChitietvondautuCSH_0VONCPTHUONG_NN.Value:=457;
      qryChitietvondautuCSH_0VONCPUUDAI_NN.Value:=86;
      qryChitietvondautuCSH_0VONCPUUDAI_NT.Value:=5676;
      qryChitietvondautuCSH_0VONCPTHUONG_NT.Value:=876;
      qryChitietvondautuCSH_0TONGSO_NT.Value:=769;
}
      qryChitietvondautuCSH_0TONGSO_NN.Value:=Caculate_TMBCTC(qryChitietvondautuCSH_0TONGSO_NN_CT.AsString);
      qryChitietvondautuCSH_0VONCPTHUONG_NN.Value:=Caculate_TMBCTC(qryChitietvondautuCSH_0VONCPTHUONG_NN_CT.AsString);
      qryChitietvondautuCSH_0VONCPUUDAI_NN.Value:=Caculate_TMBCTC(qryChitietvondautuCSH_0VONCPUUDAI_NN_CT.AsString);
      qryChitietvondautuCSH_0VONCPUUDAI_NT.Value:=Caculate_TMBCTC(qryChitietvondautuCSH_0VONCPUUDAI_NT_CT.AsString);
      qryChitietvondautuCSH_0VONCPTHUONG_NT.Value:=Caculate_TMBCTC(qryChitietvondautuCSH_0VONCPTHUONG_NT_CT.AsString);
      qryChitietvondautuCSH_0TONGSO_NT.Value:=Caculate_TMBCTC(qryChitietvondautuCSH_0TONGSO_NT_CT.AsString);
      Post;
      Next;
    end;
  end;
end;

procedure TThuyetminhBCTCFrm.acPrintExecute(Sender: TObject);
begin
//  OpenQry(Sender);
  Screen.Cursor := crHourGlass;
  PrepareForReport();
  rptDocReport.Template.FileName := TemplatePath+ 'ThuyetminhBCTC.rtm';
  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  CloseQryReport(Sender);
  OpenQryReport(Sender);
  rptDocReport.Template.LoadFromFile;
  rptDocReport.DeviceType:='Printer';
  rptDocReport.PreviewFormSettings.WindowState:=wsMaximized;
  rptDocReport.PreviewFormSettings.ZoomPercentage:=100;
  TMBCTC_SetBeforePrint();
  try
    rptDocReport.PrintReport
  except
    ShowMessageUnicode(210);
  end;
  Screen.Cursor := crDefault;
end;

procedure TThuyetminhBCTCFrm.acDesignExecute(Sender: TObject);
begin
//  OpenQry(Sender);
  Screen.Cursor := crHourGlass;
  rptDocReport.Template.FileName := TemplatePath+ 'ThuyetminhBCTC.rtm';
  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  CloseQryReport(Sender);
  OpenQryReport(Sender);
  rptDocReport.Template.LoadFromFile;
  //acSetbeforePrint.Execute;

  dsgReport.Report := rptDocReport;
  TMBCTC_SetBeforePrint();
  dsgReport.ShowModal;
  Screen.Cursor := crDefault;
  dsgReport.Report := nil;
end;

procedure TThuyetminhBCTCFrm.OpenQry(Sender: TObject);
begin
  qryNoidung.Open;
  qryNoidungkhac.Open;
  qryTSCDHH.Open;
  qryTSCDThuetaichinh.Open;
  qryTSCDVH.Open;
  qryTanggiamBDSDT.Open;
  qryCackhoannothuetaichinh.Open;
  qryDoichieubiendongvonCSH.Open;
  qryChitietvondautuCSH.Open;

  qryTSCDHH_0.Open;
  qryTSCDThuetaichinh_0.Open;
  qryTSCDVH_0.Open;
  qryTanggiamBDSDT_0.Open;
  qryCackhoannothuetaichinh_0.Open;
  qryDoichieubiendongvonCSH_0.Open;
  qryChitietvondautuCSH_0.Open;

end;

procedure TThuyetminhBCTCFrm.OpenQryReport(Sender: TObject);
begin
  qry1.Open;
  qry2.Open;
  qry3.Open;
  qry4.Open;
  qry5.Open;
  qry6.Open;
  qry7.Open;
  qry8.Open;
  qry9.Open;
  qry10.Open;
  qry11.Open;
  qry12.Open;
  qry13.Open;
  qry14.Open;
  qry15.Open;
  qry16.Open;
  qry17.Open;
  qry18.Open;
  qry19.Open;
  qry20.Open;
  qry21.Open;
end;

procedure TThuyetminhBCTCFrm.TMBCTC_SetBeforePrint();
var
  i:Integer;
  CompCap:string;
  CompCaption:WideString;
begin
  for i:=0 to ComponentCount-1 do
  begin
{   if ReportViewType in [1,3] then
    begin
      if Components[i] is TppDBText then
      begin
        ppDBText := TppDBText(Components[i]);
        if ppDBText.BandType = btDetail then
          ppDBText.OnPrint := ppDBTextPrint;
      end;
    end;}

    if not (Components[i] is TppLabel) then
      Continue;
    //Cho nay khac ben template
    if (Components[i] as TppLabel).Width=0 then
      (Components[i] as TppLabel).Width:=1;
    if (Components[i] as TppLabel).Height=0 then
      (Components[i] as TppLabel).Height:=0.2;

    //Lay ten va caption cua component nay
    CompCap :=LowerCase((Components[i] as TppLabel).Caption);
    if (CompCap='lblthoigian') then
    begin
      if((seTunam.IntValue=seDennam.IntValue)and (peTuthang.Text= peDenthang.Text)) then
        CompCaption := utf8Decode('Tháng ') + peTuthang.Text + utf8Decode(' năm ') + inttostr(seTunam.IntValue)
      else
      begin
        CompCaption := utf8Decode('Từ tháng ') + peTuthang.Text + utf8Decode(' năm ') + inttostr(seTunam.IntValue);
        CompCaption := CompCaption + utf8Decode(' đến tháng ') + peDenthang.Text + utf8Decode(' năm ') + inttostr(seDennam.IntValue);
      end;
      (Components[i] as TppLabel).Caption :=CompCaption;
    end
    else if (CompCap='lblworkday') then (Components[i] as TppLabel).Caption := FormatDateTime('dd',WorkingDate)
    else if (CompCap='lblworkmonth') then (Components[i] as TppLabel).Caption := FormatDateTime('MM',WorkingDate)
    else if (CompCap='lblworkyear') then (Components[i] as TppLabel).Caption := FormatDateTime('yyyy',WorkingDate);
  end;
end;

procedure TThuyetminhBCTCFrm.acPreviewExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  PrepareForReport();
  rptDocReport.Template.FileName := TemplatePath+ 'ThuyetminhBCTC.rtm';
  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  CloseQryReport(Sender);
  OpenQryReport(Sender);
  rptDocReport.Template.LoadFromFile;
  rptDocReport.DeviceType:='Screen';
  rptDocReport.PreviewFormSettings.WindowState:=wsMaximized;
  rptDocReport.PreviewFormSettings.ZoomPercentage:=100;

  TMBCTC_SetBeforePrint();
  try
    rptDocReport.PrintReport
  except
    ShowMessageUnicode(210);
  end;
  Screen.Cursor := crDefault;
end;

procedure TThuyetminhBCTCFrm.eltsNoidung1Enter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsNoidung;
  DataSetDelete1.DataSource := dsNoidung;
  DataSetPost1.DataSource := dsNoidung;
  DataSetCancel1.DataSource := dsNoidung;
  elbtDinhnghia.Enabled := False;
  iType:=4;  
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamTSCDHHEnter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsTSCDHH_0;
  DataSetDelete1.DataSource := dsTSCDHH_0;
  DataSetPost1.DataSource := dsTSCDHH_0;
  DataSetCancel1.DataSource := dsTSCDHH_0;
  iType:=7;  
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamTSCDTTCEnter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsTSCDThuetaichinh_0;
  DataSetDelete1.DataSource := dsTSCDThuetaichinh_0;
  DataSetPost1.DataSource := dsTSCDThuetaichinh_0;
  DataSetCancel1.DataSource := dsTSCDThuetaichinh_0;
  iType:=8;
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamTSCDVHEnter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsTSCDVH_0;
  DataSetDelete1.DataSource := dsTSCDVH_0;
  DataSetPost1.DataSource := dsTSCDVH_0;
  DataSetCancel1.DataSource := dsTSCDVH_0;
  iType:=9;  
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamBDSDTEnter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsTanggiamBDSDT_0;
  DataSetDelete1.DataSource := dsTanggiamBDSDT_0;
  DataSetPost1.DataSource := dsTanggiamBDSDT_0;
  DataSetCancel1.DataSource := dsTanggiamBDSDT_0;
  iType:=6;  
end;

procedure TThuyetminhBCTCFrm.eltsCackhoannothuetaichinhEnter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsCackhoannothuetaichinh_0;
  DataSetDelete1.DataSource := dsCackhoannothuetaichinh_0;
  DataSetPost1.DataSource := dsCackhoannothuetaichinh_0;
  DataSetCancel1.DataSource := dsCackhoannothuetaichinh_0;
  elbtDinhnghia.Enabled := False;
  iType:=1;  
end;

procedure TThuyetminhBCTCFrm.eltsDoichieuVCSHEnter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsDoichieubiendongvonCSH_0;
  DataSetDelete1.DataSource := dsDoichieubiendongvonCSH_0;
  DataSetPost1.DataSource := dsDoichieubiendongvonCSH_0;
  DataSetCancel1.DataSource := dsDoichieubiendongvonCSH_0;
  iType:=3;  
end;

procedure TThuyetminhBCTCFrm.eltsChitietvondautuEnter(Sender: TObject);
begin
//  DataSetInsert1.DataSource := dsChitietvondautuCSH_0;
  DataSetDelete1.DataSource := dsChitietvondautuCSH_0;
  DataSetPost1.DataSource := dsChitietvondautuCSH_0;
  DataSetCancel1.DataSource := dsChitietvondautuCSH_0;
  iType:=2;  
end;

procedure TThuyetminhBCTCFrm.qryTSCDHHNewRecord(DataSet: TDataSet);
begin
  qryTSCDHHID.Value := qryTSCDHH.RecNo;
end;

procedure TThuyetminhBCTCFrm.dbgNoidung1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgNoidung1, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDHHKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgTanggiamTSCDHH, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDTTCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgTanggiamTSCDTTC, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDVHKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgTanggiamTSCDVH, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamBDSDTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgTanggiamBDSDT, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgCackhoannothuetaichinhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgCackhoannothuetaichinh, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgDoichieuVCSHKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgDoichieuVCSH, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.dbgChitietvondautuKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgChitietvondautu, Key, Shift, True);
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacNewRecord(DataSet: TDataSet);
begin
  qryNoidungkhacID.Value := qryNoidungkhac.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinhNewRecord(
  DataSet: TDataSet);
begin
  qryTSCDThuetaichinhID.Value := qryTSCDThuetaichinh.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVHNewRecord(DataSet: TDataSet);
begin
  qryTSCDVHID.Value := qryTSCDVH.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDTNewRecord(DataSet: TDataSet);
begin
  qryTanggiamBDSDTID.Value := qryTanggiamBDSDT.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinhNewRecord(
  DataSet: TDataSet);
begin
  qryCackhoannothuetaichinhID.Value := qryCackhoannothuetaichinh.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSHNewRecord(
  DataSet: TDataSet);
begin
  qryDoichieubiendongvonCSHID.Value := qryDoichieubiendongvonCSH.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSHNewRecord(
  DataSet: TDataSet);
begin
  qryChitietvondautuCSHID.Value := qryChitietvondautuCSH.RecNo;
end;

procedure TThuyetminhBCTCFrm.eltsNoidung2Enter(Sender: TObject);
begin
  DataSetInsert1.DataSource := dsNoidung2;
  DataSetDelete1.DataSource := dsNoidung2;
  DataSetPost1.DataSource := dsNoidung2;
  DataSetCancel1.DataSource := dsNoidung2;
  iType:=5;
end;

procedure TThuyetminhBCTCFrm.UpdateEntryNum(iType:smallint; iCur:Smallint);
begin
  with qryUpdateEntryNum do
  begin
    ParamByName('iType').AsInteger := iType;
    ParamByName('iCur').AsInteger := iCur;
    ExecSQL;
    IB_Transaction.CommitRetaining;
  end;
end;

procedure TThuyetminhBCTCFrm.acChenExecute(Sender: TObject);
begin
  case iType of
  1:begin
      iCur:=qryCackhoannothuetaichinh_0ID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryCackhoannothuetaichinh_0.Refresh;
      dbgCackhoannothuetaichinh.Refresh;
      qryCackhoannothuetaichinh_0.Insert;
      qryCackhoannothuetaichinh_0ID.AsInteger:= iCur;
//      qryCackhoannothuetaichinh_0.Locate('ID',iCur,[]);
    end;
  2:begin
      iCur:=qryChitietvondautuCSH_0ID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryChitietvondautuCSH_0.Refresh;
      dbgChitietvondautu.Refresh;
      qryChitietvondautuCSH_0.Insert;
      qryChitietvondautuCSH_0ID.AsInteger:= iCur;
    end;
  3:begin
      iCur:=qryDoichieubiendongvonCSH_0ID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryDoichieubiendongvonCSH_0.Refresh;
      dbgDoichieuVCSH.Refresh;
      qryDoichieubiendongvonCSH_0.Insert;
      qryDoichieubiendongvonCSH_0ID.AsInteger:= iCur;
    end;
  4:begin
      iCur:=qryNoidungID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryNoidung.Refresh;
      dbgNoidung1.Refresh;
      qryNoidung.Insert;
      qryNoidungID.AsInteger:= iCur;
    end;
  5:begin
      iCur:=qryNoidungkhacID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryNoidungkhac.Refresh;
      dbgNoidung2.Refresh;
      qryNoidungkhac.Insert;
      qryNoidungkhacID.AsInteger:= iCur;
    end;
  6:begin
      iCur:=qryTanggiamBDSDT_0ID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryTanggiamBDSDT_0.Refresh;
      dbgTanggiamBDSDT.Refresh;
      qryTanggiamBDSDT_0.Insert;
      qryTanggiamBDSDT_0ID.AsInteger:= iCur;
    end;
  7:begin
      iCur:=qryTSCDHH_0ID.AsInteger;
{      UpdateEntryNum(iType,iCur);
      qryTSCDHH_0.Refresh;
      dbgTanggiamTSCDHH.Refresh;}
      qryTSCDHH_0.Insert;
      qryTSCDHH_0ID.AsInteger:= iCur;
//      qryTSCDHH_0.Locate('ID',iCur,[]);
    end;
  8:begin
      iCur:=qryTSCDThuetaichinh_0ID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryTSCDThuetaichinh_0.Refresh;
      dbgTanggiamTSCDTTC.Refresh;
      qryTSCDThuetaichinh_0.Insert;
      qryTSCDThuetaichinh_0ID.AsInteger:= iCur;
    end;
  9:begin
      iCur:=qryTSCDVH_0ID.AsInteger;
      UpdateEntryNum(iType,iCur);
      qryTSCDVH_0.Refresh;
      dbgTanggiamTSCDVH.Refresh;
      qryTSCDVH_0.Insert;
      qryTSCDVH_0ID.AsInteger:= iCur;
    end;
  end;
  iChen:=1;
end;

procedure TThuyetminhBCTCFrm.qryNoidungAfterCancel(DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      ParamByName('iType').AsInteger := 2;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryNoidung.Refresh;
    dbgNoidung1.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDHHDblClick(Sender: TObject);
begin
  acDefination.Execute();
end;

procedure TThuyetminhBCTCFrm.ShowConditionForm(Sender: TObject);
begin
  if qryNoidungkhacPHATSINH.AsInteger =1 then
    with TfrmThuyetminhBCTC_DKKPS.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end
  else
    with TfrmThuyetminhbctc_dk.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TThuyetminhBCTCFrm.acDefinationExecute(Sender: TObject);
begin
  with TfrmTMBCTC_DK.Create(Self) do
  try
    if (PgCtrlLeft.ActivePage=eltsTanggiamTSCDHH) then
    begin
      sKhoanmuc:= dbgTanggiamTSCDHH.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgTanggiamTSCDHH.DataSource;
        dxDBMemo1.DataField := dbgTanggiamTSCDHH.FocusedField.FieldName;
      end
    end
    else if (PgCtrlLeft.ActivePage=eltsTanggiamTSCDTTC) then
    begin
      sKhoanmuc:= dbgTanggiamTSCDTTC.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgTanggiamTSCDTTC.DataSource;
        dxDBMemo1.DataField := dbgTanggiamTSCDTTC.FocusedField.FieldName;
      end;
    end
    else if (PgCtrlLeft.ActivePage=eltsTanggiamTSCDVH) then
    begin
      sKhoanmuc:= dbgTanggiamTSCDVH.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgTanggiamTSCDVH.DataSource;
        dxDBMemo1.DataField := dbgTanggiamTSCDVH.FocusedField.FieldName;
      end;
    end
    else if (PgCtrlLeft.ActivePage=eltsTanggiamBDSDT) then
    begin
      sKhoanmuc:= dbgTanggiamBDSDT.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgTanggiamBDSDT.DataSource;
        dxDBMemo1.DataField := dbgTanggiamBDSDT.FocusedField.FieldName;
      end;
    end
    else if (PgCtrlLeft.ActivePage=eltsCackhoannothuetaichinh) then
    begin
      sKhoanmuc:= dbgCackhoannothuetaichinh.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgCackhoannothuetaichinh.DataSource;
        dxDBMemo1.DataField := dbgCackhoannothuetaichinh.FocusedField.FieldName;
      end;
    end
    else if (PgCtrlLeft.ActivePage=eltsDoichieuVCSH) then
    begin
      sKhoanmuc:= dbgDoichieuVCSH.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgDoichieuVCSH.DataSource;
        dxDBMemo1.DataField := dbgDoichieuVCSH.FocusedField.FieldName;
      end;
    end
    else if (PgCtrlLeft.ActivePage=eltsChitietvondautu) then
    begin
      sKhoanmuc:= dbgChitietvondautu.FocusedField.FieldName;
      if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      begin
        dxDBMemo1.DataSource := dbgChitietvondautu.DataSource;
        dxDBMemo1.DataField := dbgChitietvondautu.FocusedField.FieldName;
      end;
    end;
    if ((sKhoanmuc <>'ID')and(sKhoanmuc<> 'MANHOM')and(sKhoanmuc<> 'MANHOMCHA')and(sKhoanmuc<> 'ISBOLD')
         and(sKhoanmuc<> 'NUTLA')and(sKhoanmuc<> 'KHOANMUC')and(sKhoanmuc<> 'TENTHUYETMINH')and(sKhoanmuc<> 'GROUP_ID')) then
      ShowModal;
  finally
    Free;
  end;

end;

procedure TThuyetminhBCTCFrm.eltsNoidung1Exit(Sender: TObject);
begin
  elbtDinhnghia.Enabled := True;
  OldTab := eltsNoidung1;  
{  if qryNoidung.State in [dsInsert,dsEdit] then
    qryNoidung.Post;}
end;

procedure TThuyetminhBCTCFrm.acDinhnghia2Execute(Sender: TObject);
begin
  ShowConditionForm(Sender);
end;

procedure TThuyetminhBCTCFrm.elbtDinhnghiaClick(Sender: TObject);
begin
  if (PgCtrlLeft.ActivePage = eltsNoidung2) then
    acDinhnghia2.Execute
  else
    acDefination.Execute;
end;

procedure TThuyetminhBCTCFrm.dbgNoidung2ChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  elbtDinhnghia.Enabled:=qryNoidungkhacISMIN.AsInteger=1;
end;

procedure TThuyetminhBCTCFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thuyetminhbaocaotaichinh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThuyetminhBCTCFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
  if MainDM.qryBranch.RecordCount = 1 then
    locBranch.Enabled := FALSE;
end;

procedure TThuyetminhBCTCFrm.acAppendExecute(Sender: TObject);
begin
  case iType of
  1:begin
      if not(qryCackhoannothuetaichinh_0.State in ([dsInsert,dsEdit]))then
        qryCackhoannothuetaichinh_0.Edit;
      qryCackhoannothuetaichinh_0.Append;
    end;
  2:begin
      if not(qryChitietvondautuCSH_0.State in ([dsInsert,dsEdit]))then
        qryChitietvondautuCSH_0.Edit;
      qryChitietvondautuCSH_0.Append;
    end;
  3:begin
      if not(qryDoichieubiendongvonCSH_0.State in ([dsInsert,dsEdit]))then
        qryDoichieubiendongvonCSH_0.Edit;
      qryDoichieubiendongvonCSH_0.Append;
    end;
  4:begin
      if not(qryNoidung.State in ([dsInsert,dsEdit]))then
        qryNoidung.Edit;
      qryNoidung.Append;
    end;
  5:begin
      if not(qryNoidungkhac.State in ([dsInsert,dsEdit]))then
        qryNoidungkhac.Edit;
      qryNoidungkhac.Append;
    end;
  6:begin
      if not(qryTanggiamBDSDT_0.State in ([dsInsert,dsEdit]))then
        qryTanggiamBDSDT_0.Edit;
      qryTanggiamBDSDT_0.Append;
    end;
  7:begin
      if not(qryTSCDHH_0.State in ([dsInsert,dsEdit]))then
        qryTSCDHH_0.Edit;
      qryTSCDHH_0.Append;
    end;
  8:begin
      if not(qryTSCDThuetaichinh_0.State in ([dsInsert,dsEdit]))then
        qryTSCDThuetaichinh_0.Edit;
      qryTSCDThuetaichinh_0.Append;
    end;
  9:begin
      if not(qryTSCDVH_0.State in ([dsInsert,dsEdit]))then
        qryTSCDVH_0.Edit;
      qryTSCDVH_0.Append;
    end;
  end;
  iChen:=0;
end;

procedure TThuyetminhBCTCFrm.qryNoidungAfterDelete(DataSet: TDataSet);
begin
  qryNoidung.Refresh;
  dbgNoidung1.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0AfterDelete(DataSet: TDataSet);
begin
  qryTSCDHH_0.Refresh;
  dbgTanggiamTSCDHH.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0AfterDelete(DataSet: TDataSet);
begin
  qryTSCDVH_0.Refresh;
  dbgTanggiamTSCDVH.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0AfterDelete(
  DataSet: TDataSet);
begin
  qryTanggiamBDSDT_0.Refresh;
  dbgTanggiamBDSDT.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0AfterDelete(
  DataSet: TDataSet);
begin
  qryCackhoannothuetaichinh_0.Refresh;
  dbgCackhoannothuetaichinh.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0AfterDelete(
  DataSet: TDataSet);
begin
  qryDoichieubiendongvonCSH_0.Refresh;
  dbgDoichieuVCSH.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0AfterDelete(
  DataSet: TDataSet);
begin
  qryChitietvondautuCSH.Refresh;
  dbgChitietvondautu.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacAfterDelete(DataSet: TDataSet);
begin
  qryNoidungkhac.Refresh;
  dbgNoidung2.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacAfterCancel(DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 1;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryNoidungkhac.Refresh;
    dbgNoidung2.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0AfterCancel(DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 6;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryTSCDHH_0.Refresh;
    dbgTanggiamTSCDHH.Refresh;
  end;  
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0AfterCancel(
  DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 7;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryTSCDThuetaichinh_0.Refresh;
    dbgTanggiamTSCDTTC.Refresh;
  end;  
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0AfterDelete(
  DataSet: TDataSet);
begin
  qryTSCDThuetaichinh_0.Refresh;
  dbgTanggiamTSCDTTC.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0AfterCancel(DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 8;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryTSCDVH_0.Refresh;
    dbgTanggiamTSCDVH.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0AfterCancel(
  DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 10;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryTanggiamBDSDT_0.Refresh;
    dbgTanggiamBDSDT.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0AfterCancel(
  DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 20;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryCackhoannothuetaichinh_0.Refresh;
    dbgCackhoannothuetaichinh.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0AfterCancel(
  DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 211;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryDoichieubiendongvonCSH_0.Refresh;
    dbgDoichieuVCSH.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0AfterCancel(
  DataSet: TDataSet);
begin
  if iChen=1 then
  begin
    with qryTemp do
    begin
      Close;
      ParamByName('iType').AsInteger := 212;
      ExecSQL;
      IB_Transaction.CommitRetaining;
    end;
    qryChitietvondautuCSH.Refresh;
    dbgChitietvondautu.Refresh;
  end;
end;

procedure TThuyetminhBCTCFrm.qryNoidungAfterPost(DataSet: TDataSet);
begin
  iChen:=0;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0NewRecord(DataSet: TDataSet);
begin
  qryTSCDVH_0ID.AsInteger := qryTSCDVH_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0NewRecord(
  DataSet: TDataSet);
begin
  qryTSCDThuetaichinh_0ID.Value := qryTSCDThuetaichinh_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0NewRecord(DataSet: TDataSet);
begin
  qryTSCDHH_0ID.Value := qryTSCDHH_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0NewRecord(
  DataSet: TDataSet);
begin
  qryTanggiamBDSDT_0ID.Value := qryTanggiamBDSDT_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0NewRecord(
  DataSet: TDataSet);
begin
  qryCackhoannothuetaichinh_0ID.Value := qryCackhoannothuetaichinh_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0NewRecord(
  DataSet: TDataSet);
begin
  qryDoichieubiendongvonCSH_0ID.Value := qryDoichieubiendongvonCSH_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0NewRecord(
  DataSet: TDataSet);
begin
  qryChitietvondautuCSH_0ID.Value := qryChitietvondautuCSH_0.RecNo;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0BeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0BeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0BeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0BeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0BeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0BeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0BeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryNoidungBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TThuyetminhBCTCFrm.qryNoidungNewRecord(DataSet: TDataSet);
begin
  qryNoidungID.AsInteger := qryNoidung.RecNo;
end;

procedure TThuyetminhBCTCFrm.dbgCackhoannothuetaichinhMouseUp(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgDoichieuVCSHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgChitietvondautuMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgNoidung2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgNoidung1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDHHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDTTCMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamTSCDVHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.dbgTanggiamBDSDTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThuyetminhBCTCFrm.qryNoidungAfterInsert(DataSet: TDataSet);
begin
  qryNoidungTENTHUYETMINH.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacAfterInsert(DataSet: TDataSet);
begin
  qryNoidungkhacMANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0AfterInsert(DataSet: TDataSet);
begin
  qryTSCDHH_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0AfterInsert(
  DataSet: TDataSet);
begin
  qryTSCDThuetaichinh_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0AfterInsert(DataSet: TDataSet);
begin
  qryTSCDVH_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0AfterInsert(
  DataSet: TDataSet);
begin
  qryTanggiamBDSDT_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0AfterInsert(
  DataSet: TDataSet);
begin
  qryCackhoannothuetaichinh_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0AfterInsert(
  DataSet: TDataSet);
begin
  qryDoichieubiendongvonCSH_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0AfterInsert(
  DataSet: TDataSet);
begin
  qryChitietvondautuCSH_0MANHOM.FocusControl;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryTSCDHH_0ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsTanggiamTSCDHH;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0PostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryTSCDThuetaichinh_0ID.FocusControl
  else
  ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsTanggiamTSCDTTC;
    iErr:=0;
  end;

end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryTSCDVH_0ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsTanggiamTSCDVH;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryTanggiamBDSDT_0ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsTanggiamBDSDT;
    iErr:=0;
  end;

end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0PostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryCackhoannothuetaichinh_0ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsCackhoannothuetaichinh;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0PostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryDoichieubiendongvonCSH_0ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsDoichieuVCSH;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0PostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryChitietvondautuCSH_0ID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsChitietvondautu;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryNoidungPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryNoidungID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsNoidung1;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryNoidungkhacID.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
  if iErr=1 then
  begin
    PgCtrlLeft.ActivePage := eltsNoidung2;
    iErr:=0;
  end;
end;

procedure TThuyetminhBCTCFrm.qryNoidungDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0DeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0DeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0DeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0DeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0DeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0DeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0DeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TThuyetminhBCTCFrm.qryTSCDHH_0BeforePost(DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryTSCDHH_0ID) then
  begin
    ShowMessageUnicode(223);

    qryTSCDHH_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsTanggiamTSCDHH;
      iErr:=0;
    end;
    Abort;
  end;
//  LastModifyItemID:=qryTSCDHH_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryTSCDThuetaichinh_0BeforePost(
  DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryTSCDThuetaichinh_0ID) then
  begin
    ShowMessageUnicode(223);
    qryTSCDThuetaichinh_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsTanggiamTSCDTTC;
      iErr:=0;
    end;
    Abort;
  end;
//  LastModifyItemID:=qryTSCDThuetaichinh_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryTSCDVH_0BeforePost(DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryTSCDVH_0ID) then
  begin
    ShowMessageUnicode(223);
    qryTSCDVH_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsTanggiamTSCDVH;
      iErr:=0;
    end;
    Abort;
  end;
//  LastModifyItemID:=qryTSCDVH_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryTanggiamBDSDT_0BeforePost(
  DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryTanggiamBDSDT_0ID) then
  begin
    ShowMessageUnicode(223);

    qryTanggiamBDSDT_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsTanggiamBDSDT;
      iErr:=0;
    end;

    Abort;
  end;
//  LastModifyItemID:=qryTanggiamBDSDT_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryCackhoannothuetaichinh_0BeforePost(
  DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryCackhoannothuetaichinh_0ID) then
  begin
    ShowMessageUnicode(223);

    qryCackhoannothuetaichinh_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsCackhoannothuetaichinh;
      iErr:=0;
    end;

    Abort;
  end;
//  LastModifyItemID:=qryCackhoannothuetaichinh_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryDoichieubiendongvonCSH_0BeforePost(
  DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryDoichieubiendongvonCSH_0ID) then
  begin
    ShowMessageUnicode(223);

    qryDoichieubiendongvonCSH_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsDoichieuVCSH;
      iErr:=0;
    end;

    Abort;
  end;
//  LastModifyItemID:=qryDoichieubiendongvonCSH_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryChitietvondautuCSH_0BeforePost(
  DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryChitietvondautuCSH_0ID) then
  begin
    ShowMessageUnicode(223);

    qryChitietvondautuCSH_0ID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsChitietvondautu;
      iErr:=0;
    end;

    Abort;
  end;
//  LastModifyItemID:=qryChitietvondautuCSH_0ID.Value;
end;

procedure TThuyetminhBCTCFrm.qryNoidungkhacBeforePost(DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryNoidungkhacID) then
  begin
    ShowMessageUnicode(223);

    qryNoidungkhacID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsNoidung2;
      iErr:=0;
    end;

    Abort;
  end;
//  LastModifyItemID:=qryNoidungkhacID.Value;
end;

procedure TThuyetminhBCTCFrm.qryNoidungBeforePost(DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryNoidungID) then
  begin
    ShowMessageUnicode(223);

    qryNoidungID.FocusControl;
    if iErr=1 then
    begin
      PgCtrlLeft.ActivePage := eltsNoidung1;
      iErr:=0;
    end;

    Abort;
  end;
//  LastModifyItemID:=qryNoidungID.Value;
end;

procedure TThuyetminhBCTCFrm.eltsChitietvondautuExit(Sender: TObject);
begin
  OldTab := eltsChitietvondautu;
{  if qryChitietvondautuCSH_0.State in [dsInsert,dsEdit] then
    qryChitietvondautuCSH_0.Post;}
end;

procedure TThuyetminhBCTCFrm.eltsDoichieuVCSHExit(Sender: TObject);
begin
  OldTab := eltsDoichieuVCSH;
{  if qryDoichieubiendongvonCSH_0.State in [dsInsert,dsEdit] then
    qryDoichieubiendongvonCSH_0.Post;}
end;

procedure TThuyetminhBCTCFrm.eltsNoidung2Exit(Sender: TObject);
begin
  OldTab := eltsNoidung2;
{  if qryNoidungkhac.State in [dsInsert,dsEdit] then
    qryNoidungkhac.Post;}
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamBDSDTExit(Sender: TObject);
begin
  OldTab := eltsTanggiamBDSDT;
{  if qryTanggiamBDSDT_0.State in [dsInsert,dsEdit] then
    qryTanggiamBDSDT_0.Post;}
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamTSCDHHExit(Sender: TObject);
begin
  OldTab := eltsTanggiamTSCDHH;
{  if qryTSCDHH_0.State in [dsInsert,dsEdit] then
    qryTSCDHH_0.Post;}
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamTSCDTTCExit(Sender: TObject);
begin
  OldTab := eltsTanggiamTSCDTTC;
{  if qryTSCDThuetaichinh_0.State in [dsInsert,dsEdit] then
    qryTSCDThuetaichinh_0.Post;}
end;

procedure TThuyetminhBCTCFrm.eltsTanggiamTSCDVHExit(Sender: TObject);
begin
  OldTab := eltsTanggiamTSCDVH;
{  if qryTSCDVH_0.State in [dsInsert,dsEdit] then
    qryTSCDVH_0.Post;}
end;

procedure TThuyetminhBCTCFrm.PgCtrlLeftChange(Sender: TObject);
begin
  if (OldTab = eltsTanggiamTSCDVH) then
  begin
    if qryTSCDVH_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryTSCDVH_0.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsNoidung1) then
  begin
    if qryNoidung.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryNoidung.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsTanggiamTSCDHH) then
  begin
    if qryTSCDHH_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryTSCDHH_0.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsTanggiamTSCDTTC) then
  begin
    if qryTSCDThuetaichinh_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryTSCDThuetaichinh_0.Post;
      Abort;
    end;
  end
  else
  if (OldTab = eltsTanggiamBDSDT) then
  begin
    if qryTanggiamBDSDT_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryTanggiamBDSDT_0.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsCackhoannothuetaichinh) then
  begin
    if qryCackhoannothuetaichinh_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryCackhoannothuetaichinh_0.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsDoichieuVCSH) then
  begin
    if qryDoichieubiendongvonCSH_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryDoichieubiendongvonCSH_0.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsChitietvondautu) then
  begin
    if qryChitietvondautuCSH_0.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryChitietvondautuCSH_0.Post;
      Abort;
    end
  end
  else
  if (OldTab = eltsNoidung2) then
  begin
    if qryNoidungkhac.State in [dsInsert,dsEdit] then
    begin
      iErr:=1;
      qryNoidungkhac.Post;
      Abort;
    end;
  end
end;

procedure TThuyetminhBCTCFrm.eltsCackhoannothuetaichinhExit(
  Sender: TObject);
begin
  OldTab := eltsCackhoannothuetaichinh;
  elbtDinhnghia.Enabled := True;  
end;

procedure TThuyetminhBCTCFrm.dbgChitietvondautuChangeColumn(
  Sender: TObject; Node: TdxTreeListNode; Column: Integer);
begin
//sgfga
end;

procedure TThuyetminhBCTCFrm.acResetDataExecute(Sender: TObject);
var ErrCount:smallint;
begin
  if ShowMessageUnicode(227,'', 4) = 6 then
  begin
    Screen.Cursor := crHourGlass;
    if not IB_Script1.IB_Connection.Connected then
      Exit
    else
    begin
      ErrCount:=0;
      try
        IB_Script1.SQL.Text :='';
        IB_Script1.SQL.LoadFromFile('ResetDataRegister.sql');
        if IB_Script1.SQL.Text<>'' then
          IB_Script1.Execute
        else
        begin
          ShowMessageUnicode(225);
          Exit;
        end;
      except
        ErrCount:=ErrCount+1;
      end;
      if ErrCount<>0 then
          ShowMessage(StrErr)
      else
      begin
        qryTSCDHH_0.Refresh;
        qryTSCDThuetaichinh_0.Refresh;
        qryTSCDVH_0.Refresh;
        qryTanggiamBDSDT_0.Refresh;
        qryCackhoannothuetaichinh_0.Refresh;
        qryDoichieubiendongvonCSH_0.Refresh;
        qryChitietvondautuCSH_0.Refresh;
        qrynoidung.Refresh;
        qryNoidungkhac.Refresh;
        ShowMessageUnicode(226);
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TThuyetminhBCTCFrm.IB_Script1Error(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
//  RaiseException := False;
  StrErr:=StrErr+' '+ ErrorMessage.Text;
end;

procedure TThuyetminhBCTCFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thuyetminhbaocaotaichinh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
