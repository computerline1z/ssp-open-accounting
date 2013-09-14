unit InterDocListForm;

interface

uses
  Windows, Messages, SysUtils,DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxDBGrid, ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBTL,
  dxLayoutControl, cxControls, ElPanel, DB, IBODataset, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxEditor, dxEdLib, StdCtrls, ElCLabel, ElLabel,
  ActnList, MainForm, ElCaption, dxBar, dxLayout, dxExGrEd, dxExELib,
  dxDBTLCl, dxGrClms;

type
  TInterDocListFrm = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    dbgPhieuBH: TdxDBGrid;
    Splitter2: TSplitter;
    dbgLoaiBH: TdxDBTreeList;
    dxDBTreeList1Column1: TdxDBTreeListColumn;
    dbgPhieuBHColumn1: TdxDBGridColumn;
    dbgPhieuBHColumn2: TdxDBGridColumn;
    dbgPhieuBHColumn3: TdxDBGridColumn;
    qryDocs: TIBOQuery;
    dsDocs: TDataSource;
    qryDetail: TIBOQuery;
    dsDetail: TDataSource;
    dbgPhieuBHColumn5: TdxDBGridColumn;
    dbgCTPhieuBH: TdxDBGrid;
    ActionList1: TActionList;
    acChangeDate: TAction;
    ElFormCaption1: TElFormCaption;
    dbgPhieuBHColumn7: TdxDBGridColumn;
    acKeToan: TAction;
    dbgPhieuBHColumn8: TdxDBGridColumn;
    acCTPhieu: TAction;
    dxDBExtLookupEdit1: TdxDBExtLookupEdit;
    dsSubSystem: TDataSource;
    qrySubSystem: TIBOQuery;
    qrySubSystemSUBSYSTEM_ID: TIntegerField;
    qrySubSystemSUBSYSTEM_NAME: TWideStringField;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    PnlLeft: TElPanel;
    qryInterDocType: TIBOQuery;
    dsInterDocType: TDataSource;
    qryInterDocTypeSUBSYSTEM_ID: TSmallintField;
    qryInterDocTypeINTERTYPE_ID: TSmallintField;
    qryInterDocTypePINTERTYPE_ID: TSmallintField;
    qryInterDocTypeINTERTYPE_NAME: TWideStringField;
    qryInterDocTypeTKCO: TWideStringField;
    qryInterDocTypeTKNO: TWideStringField;
    qryInterDocTypeTKVAT: TWideStringField;
    qryInterDocTypeDOCTYPE_ID: TSmallintField;
    qryDocsDOC_ID: TWideStringField;
    qryDocsPERIOD_ID: TSmallintField;
    qryDocsDOC_DATE: TDateField;
    qryDocsPAY_DATE: TDateField;
    qryDocsWAREHOUSE_ID: TWideStringField;
    qryDocsTO_WAREHOUSE: TWideStringField;
    qryDocsDOCTYPE_ID: TSmallintField;
    qryDocsMADOITUONG: TWideStringField;
    qryDocsLOAIDOITUONG: TSmallintField;
    qryDocsDOC_PERSON: TWideStringField;
    qryDocsDOC_PERSONADDR: TWideStringField;
    qryDocsDOC_VOUCHER: TWideStringField;
    qryDocsVOUCHER_DATE: TDateField;
    qryDocsDOC_NOTES: TWideStringField;
    qryDocsNGAYGHISO: TDateTimeField;
    qryDocsTEMPLATE_ID: TIntegerField;
    qryDocsLASTMODIFY: TWideStringField;
    qryDocsSUBSYSTEM_ID: TSmallintField;
    qryDocsINTERTYPE_ID: TSmallintField;
    dbgPhieuBHTO_WAREHOUSE: TdxDBGridMaskColumn;
    dbgPhieuBHWORK_ID: TdxDBGridMaskColumn;
    dbgPhieuBHDOC_PERSONADDR: TdxDBGridMaskColumn;
    dbgPhieuBHDOC_VOUCHER: TdxDBGridMaskColumn;
    dbgPhieuBHVOUCHER_DATE: TdxDBGridDateColumn;
    dbgPhieuBHNGAYGHISO: TdxDBGridDateColumn;
    qryDetailDOC_ID: TWideStringField;
    qryDetailPERIOD_ID: TSmallintField;
    qryDetailDETAIL_ID: TIntegerField;
    qryDetailOBJECT_ID: TWideStringField;
    qryDetailOTYPE_ID: TSmallintField;
    qryDetailBUDGET_ID: TIntegerField;
    qryDetailDETAIL_AMOUNT: TIBOFloatField;
    qryDetailDETAIL_PRICE: TIBOFloatField;
    qryDetailCURRENCY_ID: TWideStringField;
    qryDetailDETAIL_RATE: TIBOFloatField;
    qryDetailDETAIL_VALUE: TIBOFloatField;
    qryDetailDETAIL_NOTE: TWideStringField;
    qryDetailDETAIL_VAT: TIBOFloatField;
    qryDetailOBJECT_NAME: TWideStringField;
    qryDetailSUBINFO_1: TWideStringField;
    qryDetailSUBINFO_2: TWideStringField;
    dbgCTPhieuBHDETAIL_ID: TdxDBGridMaskColumn;
    dbgCTPhieuBHOBJECT_ID: TdxDBGridMaskColumn;
    dbgCTPhieuBHBUDGET_ID: TdxDBGridMaskColumn;
    dbgCTPhieuBHDETAIL_AMOUNT: TdxDBGridMaskColumn;
    dbgCTPhieuBHDETAIL_PRICE: TdxDBGridMaskColumn;
    dbgCTPhieuBHCURRENCY_ID: TdxDBGridMaskColumn;
    dbgCTPhieuBHDETAIL_RATE: TdxDBGridMaskColumn;
    dbgCTPhieuBHDETAIL_VALUE: TdxDBGridMaskColumn;
    dbgCTPhieuBHDETAIL_NOTE: TdxDBGridMaskColumn;
    dbgCTPhieuBHDETAIL_VAT: TdxDBGridMaskColumn;
    dbgCTPhieuBHOBJECT_NAME: TdxDBGridMaskColumn;
    dbgCTPhieuBHSUBINFO_1: TdxDBGridMaskColumn;
    dbgCTPhieuBHSUBINFO_2: TdxDBGridMaskColumn;
    qryDocsWORK_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgPhieuBHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgCTPhieuBHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgLoaiBHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acCTPhieuExecute(Sender: TObject);
    procedure dbgPhieuBHDblClick(Sender: TObject);
    procedure dbgPhieuBHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure dxDBExtLookupEdit1InitPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private 
  public
    { Public declarations }
  end;

var
  InterDocListFrm: TInterDocListFrm;

implementation

uses MainDataMdl, dxTreeGridMenus, GlobalUnit, GlobalInterface;

{$R *.dfm}

procedure TInterDocListFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  qryDetailDETAIL_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryDetailDETAIL_PRICE.DisplayFormat:=SOLUONG_FORMAT;
  qryDetailDETAIL_RATE.DisplayFormat:=TIENTE_FORMAT;
  qryDetailDETAIL_VALUE.DisplayFormat:=TIENTE_FORMAT;

  qrySubSystem.Open;
  qryInterDocType.Open;

  qryDocs.ParamByName('kyht').AsInteger:=CurrentPeriod;
  qryDocs.Open;
  qryDetail.Open;
end;

procedure TInterDocListFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
  InterDocListFrm := nil;
end;

procedure TInterDocListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TInterDocListFrm.dbgPhieuBHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(true).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TInterDocListFrm.dbgCTPhieuBHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit; //cho TreeList
end;

procedure TInterDocListFrm.dbgLoaiBHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dbgLoaiBH, Key, Shift);
end;

procedure TInterDocListFrm.acCTPhieuExecute(Sender: TObject);
begin
  if dbgPhieuBH.FocusedNode<>nil then
  begin
    MainDM.Suachungtu(qryDocsDOC_ID.Value, qryDocsPERIOD_ID.AsInteger);
  end;
end;

procedure TInterDocListFrm.dbgPhieuBHDblClick(Sender: TObject);
begin
  acCTPhieu.Execute;
end;

procedure TInterDocListFrm.dbgPhieuBHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgPhieuBH, Key, Shift, True); 
end;

procedure TInterDocListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInterDocListFrm.FormActivate(Sender: TObject);
begin
   MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TInterDocListFrm.dxDBExtLookupEdit1InitPopup(Sender: TObject);
begin
  dxDBExtLookupEdit1.PopupWidth:=dxDBExtLookupEdit1.Width;
end;

procedure TInterDocListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
