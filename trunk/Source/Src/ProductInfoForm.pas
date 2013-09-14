unit ProductInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntStdCtrls, TntButtons, ElXPThemedControl, ElEdits, ElCaption,
  ElCheckCtl, ElBtnCtl, ElPopBtn;

type
  TProductInfoFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFormItem3: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFormItem4: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    grdKHTongcong: TdxDBGridColumn;
    grdKHCPNC: TdxDBGridColumn;
    grdKHCPNVL: TdxDBGridColumn;
    grdKHCPSXC: TdxDBGridColumn;
    grdKHPRODUCTION_ID: TdxDBGridMaskColumn;
    grdKHOBJECT_NAME: TdxDBGridMaskColumn;
    grdKHPRODUCTION_AMOUNT: TdxDBGridMaskColumn;
    grdKHLABOUR_COST: TdxDBGridMaskColumn;
    grdKHMATERIAL_COST: TdxDBGridMaskColumn;
    grdKHOTHER_COST: TdxDBGridMaskColumn;
    grdKHINPLANVALUE: TdxDBGridMaskColumn;
    grdKHGIATHANHDV: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductInfoFrm: TProductInfoFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TProductInfoFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  grdKHPRODUCTION_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHINPLANVALUE.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNC.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNVL.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPSXC.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHGIATHANHDV.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHLABOUR_COST.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHMATERIAL_COST.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHOTHER_COST.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHTongcong.SummaryFooterFormat:=TIENTE_FORMAT;

  with MainDM do
  begin
    CurObjTypeID:=6;

    qryProductInfo.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryProductInfo.Open;
  end;
end;
procedure TProductInfoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDM.qryProductInfo.Close;
end;

procedure TProductInfoFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TProductInfoFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TProductInfoFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TProductInfoFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TProductInfoFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TProductInfoFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active:= dxBarButton1.Down;
end;

procedure TProductInfoFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TProductInfoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TProductInfoFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
