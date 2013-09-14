unit BeginAssetForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, TntStdCtrls, IBODataset, ppDB, ppBands, ppClass, ppVar,
  ppCtrls, ppPrnabl, ppCache, ppDBPipe, ppRelatv, ppProd, ppReport, ppComm,
  ppEndUsr, ElCaption, ElXPThemedControl, ElBtnCtl, ElCheckCtl;

type
  TBeginAssetFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAccountArise: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    grdAccountAriseUnit_ID: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    pmAssetArise: TdxBarPopupMenu;
    btnShowDetail: TdxBarButton;
    grdAccountAriseNHOM: TdxDBGridColumn;
    grdAccountAriseGC: TdxDBGridColumn;
    qryBeginAsset: TIBOQuery;
    dsBeginAsset: TDataSource;
    bbtnFilter: TdxBarButton;
    bbtnGroup: TdxBarButton;
    grdAccountAriseSHTK: TdxDBGridColumn;
    grdAccountAriseTKPB: TdxDBGridColumn;
    grdAccountAriseBPSD: TdxDBGridColumn;
    grdAccountAriseNGDK: TdxDBGridCalcColumn;
    grdAccountAriseHMDK: TdxDBGridCalcColumn;
    grdAccountAriseCLDK: TdxDBGridCalcColumn;
    qryBeginAssetSHTS: TWideStringField;
    qryBeginAssetTENTS: TWideStringField;
    qryBeginAssetMANHOM: TWideStringField;
    qryBeginAssetTENNHOM: TWideStringField;
    qryBeginAssetSHTKPB: TWideStringField;
    qryBeginAssetGHICHU: TWideStringField;
    qryBeginAssetSHTK: TWideStringField;
    qryBeginAssetSHTKKH: TWideStringField;
    qryBeginAssetBPSD: TWideStringField;
    qryBeginAssetTRANGTHAI: TSmallintField;
    ElFormCaption1: TElFormCaption;
    grdAccountAriseUnit_Name: TdxDBGridColumn;
    qryBeginAssetNG_DK: TIBOFloatField;
    qryBeginAssetKYHT: TSmallintField;
    qryBeginAssetHM_DK: TIBOFloatField;
    qryBeginAssetCL_DK: TIBOFloatField;
    qryBeginAssetBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure grdAccountAriseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnShowDetailClick(Sender: TObject);
    procedure grdAccountAriseDblClick(Sender: TObject);
    procedure qryBeginAssetNG_DKChange(Sender: TField);
    procedure qryBeginAssetHM_DKChange(Sender: TField);
    procedure bbtnFilterClick(Sender: TObject);
    procedure bbtnGroupClick(Sender: TObject);
    procedure qryBeginAssetBeforeEdit(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeginAssetFrm: TBeginAssetFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  DocListForm, LookupFrm, AssetForm, dxTreeGridMenus, AssetHistoryForm, htmlhlp;


{$R *.dfm}

procedure TBeginAssetFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);

  grdAccountAriseNGDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseHMDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseCLDK.SummaryFooterFormat:=TIENTE_FORMAT;

  qryBeginAssetNG_DK.DisplayFormat := TIENTE_FORMAT;
  qryBeginAssetHM_DK.DisplayFormat := TIENTE_FORMAT;
  qryBeginAssetCL_DK.DisplayFormat := TIENTE_FORMAT;

  qryBeginAsset.ParamByName('kybd').Value :=CurrentPeriod;
  qryBeginAsset.ParamByName('branch_id').Value :=vpBranch_id;
  qryBeginAsset.Open;
  if vpBranch_IsMin <> 1 then
    qryBeginAsset.ReadOnly := TRUE
  else
    qryBeginAsset.ReadOnly := FALSE;
end;

procedure TBeginAssetFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryBeginAsset.State in [dsEdit, dsInsert] then
    qryBeginAsset.Post;
    
  qryBeginAsset.Close;
end;

procedure TBeginAssetFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdAccountArise);
end;

procedure TBeginAssetFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdAccountArise);
end;

procedure TBeginAssetFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdAccountArise);
end;

procedure TBeginAssetFrm.grdAccountAriseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdAccountArise, Key, Shift,False);
end;

procedure TBeginAssetFrm.btnShowDetailClick(Sender: TObject);
begin
  if qryBeginAsset.RecordCount=0 then exit;
  SohieuTSCD:=qryBeginAssetSHTS.Value;
  with TAssetFrm.Create(Self) do
  try
    if ShowModal=mrOK then
      qryBeginAsset.Refresh;
  finally
    free;
  end;
end;

procedure TBeginAssetFrm.grdAccountAriseDblClick(Sender: TObject);
begin
  btnShowDetailClick(Sender);
end;

procedure TBeginAssetFrm.qryBeginAssetNG_DKChange(Sender: TField);
begin
  qryBeginAssetCL_DK.AsFloat:=qryBeginAssetNG_DK.AsFloat-qryBeginAssetHM_DK.AsFloat;
end;

procedure TBeginAssetFrm.qryBeginAssetHM_DKChange(Sender: TField);
begin
  qryBeginAssetCL_DK.AsFloat:=qryBeginAssetNG_DK.AsFloat-qryBeginAssetHM_DK.AsFloat;
end;

procedure TBeginAssetFrm.bbtnFilterClick(Sender: TObject);
begin
  grdAccountArise.Filter.Active:=bbtnFilter.Down;
end;

procedure TBeginAssetFrm.bbtnGroupClick(Sender: TObject);
begin
  grdAccountArise.ShowGroupPanel:=bbtnGroup.Down;
end;


procedure TBeginAssetFrm.qryBeginAssetBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TBeginAssetFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBeginAssetFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
