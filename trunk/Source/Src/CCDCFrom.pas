unit CCDCFrom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ElCaption, DBActns, ActnList, dxBar,
  dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxEdLib, dxTL, dxDBCtrl,
  dxDBGrid, ElXPThemedControl, ElBtnCtl, ElPopBtn, cxControls;

type
  TCCDCFrm = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    btnIns: TElPopupButton;
    btnEdit: TElPopupButton;
    btnDel: TElPopupButton;
    btnHelp: TElPopupButton;
    btnClose: TElPopupButton;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ASSET_ID: TdxDBGridColumn;
    dxDBGrid1GROUP_ID: TdxDBGridColumn;
    dxDBGrid1ACCOUNT_ID: TdxDBGridColumn;
    dxDBGrid1ASSET_NAME: TdxDBGridColumn;
    dxDBGrid1ORIGIN_COST: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1USING_PART: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1ASSET_NOTES: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    chkAutoHeight: TdxCheckEdit;
    btnRefresh: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    lciIns: TdxLayoutItem;
    lciDel: TdxLayoutItem;
    lciEdit: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    bbtnReadExcel: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    ActionList1: TActionList;
    acExcel: TAction;
    acHTML: TAction;
    acXML: TAction;
    acGenAmor: TAction;
    acDelete: TDataSetDelete;
    ElFormCaption1: TElFormCaption;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CCDCFrm: TCCDCFrm;

implementation
 uses MainForm, MainDataMdl, AssetForm, GlobalUnit, LookupFrm,
  AssetHistoryForm, HtmlHlp, CCDCinf;
{$R *.dfm}

procedure TCCDCFrm.FormActivate(Sender: TObject);
begin
MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TCCDCFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainDM.qryDsCCDC.Close;
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TCCDCFrm.FormCreate(Sender: TObject);
begin
dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  btnIns.Enabled := SSPUserRight[3].IR ;
  btnDel.Enabled := SSPUserRight[3].DR ;
  acGenAmor.Enabled:=SSPUserRight[3].ER;
  bbtnReadExcel.Enabled:=btnIns.Enabled and (CurrentPeriod=BeginPeriod);
  
  dxDBGrid1ORIGIN_COST.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1Column8.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1Column9.SummaryFooterFormat:=TIENTE_FORMAT;


  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  

  MainDM.qryDSCCDC.Open;
end;

procedure TCCDCFrm.FormDestroy(Sender: TObject);
begin
 with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
  CCDCFrm:=nil;
end;

procedure TCCDCFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TCCDCFrm.FormShow(Sender: TObject);
begin

 SetVisible(Self);
end;

procedure TCCDCFrm.dxDBGrid1DblClick(Sender: TObject);
begin
btnEditClick(sender);
end;
procedure TCCDCFrm.btnEditClick(Sender: TObject);
begin
  if MainDM.qryDSCCDC.RecordCount=0 then exit;
  SohieuTSCD:=MainDM.qryDSCCDCOBJECT_ID.Value;
  with TCCDC.Create(Self) do
  try
    if ShowModal=mrOK then
      MainDM.qryDSCCDC.Refresh;
  finally
    free;
  end;
end;

procedure TCCDCFrm.btnInsClick(Sender: TObject);
begin
 SohieuTSCD:='';
  AssetAccountID:='';
  AssetDocInID:='';
  AssetDocInDate:=WorkingDate;

  with TCCDC.Create(Self) do
  try
    if ShowModal=mrOK then
      MainDM.qryDSCCDC.Refresh;
  finally
    free;
  end;
end;

end.
