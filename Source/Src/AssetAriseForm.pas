unit AssetAriseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, TntStdCtrls, IBODataset, ppDB, ppBands, ppClass, ppVar,
  ppCtrls, ppPrnabl, ppCache, ppDBPipe, ppRelatv, ppProd, ppReport, ppComm,
  ppEndUsr, ElCaption, ElXPThemedControl, ElBtnCtl, ElCheckCtl, ActnList;

type
  TAssetAriseFrm = class(TForm)
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
    btnDetail: TdxBarButton;
    btnShowDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    grdAccountAriseNHOM: TdxDBGridColumn;
    grdAccountAriseGC: TdxDBGridColumn;
    TntRadioButton1: TElRadioButton;
    locFormItem2: TdxLayoutItem;
    TntRadioButton2: TElRadioButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    TntRadioButton3: TElRadioButton;
    locFormItem4: TdxLayoutItem;
    TntRadioButton4: TElRadioButton;
    locFormItem5: TdxLayoutItem;
    qryAssetArise: TIBOQuery;
    dsAssetArise: TDataSource;
    bbtnFilter: TdxBarButton;
    bbtnGroup: TdxBarButton;
    grdAccountAriseSHTK: TdxDBGridColumn;
    grdAccountAriseTKPB: TdxDBGridColumn;
    grdAccountAriseBPSD: TdxDBGridColumn;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    DesignerTSCD: TppDesigner;
    dbpReportTSCD: TppDBPipeline;
    ReportTSCD: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    grdAccountAriseNGDK: TdxDBGridCalcColumn;
    grdAccountAriseHMDK: TdxDBGridCalcColumn;
    grdAccountAriseCLDK: TdxDBGridCalcColumn;
    grdAccountAriseTANG: TdxDBGridCalcColumn;
    grdAccountAriseGIAM: TdxDBGridCalcColumn;
    grdAccountAriseHMKY: TdxDBGridCalcColumn;
    grdAccountAriseNGCK: TdxDBGridCalcColumn;
    grdAccountAriseHMCK: TdxDBGridCalcColumn;
    grdAccountAriseCLCK: TdxDBGridCalcColumn;
    qryAssetAriseSHTS: TWideStringField;
    qryAssetAriseTENTS: TWideStringField;
    qryAssetAriseMANHOM: TWideStringField;
    qryAssetAriseTENNHOM: TWideStringField;
    qryAssetAriseSHTKPB: TWideStringField;
    qryAssetAriseGHICHU: TWideStringField;
    qryAssetAriseSHTK: TWideStringField;
    qryAssetAriseSHTKKH: TWideStringField;
    qryAssetAriseBPSD: TWideStringField;
    locFormItem6: TdxLayoutItem;
    TntRadioButton5: TElRadioButton;
    TntRadioButton6: TElRadioButton;
    locFormItem7: TdxLayoutItem;
    qryAssetAriseTRANGTHAI: TSmallintField;
    TntRadioButton7: TElRadioButton;
    locFormItem8: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    grdAccountAriseUnit_Name: TdxDBGridColumn;
    ActionList1: TActionList;
    acInTT: TAction;
    dxBarButton8: TdxBarButton;
    qryAssetAriseNG_DK: TIBOFloatField;
    qryAssetAriseHM_DK: TIBOFloatField;
    qryAssetAriseCL_DK: TIBOFloatField;
    qryAssetAriseTANG_KY: TIBOFloatField;
    qryAssetAriseGIAM_KY: TIBOFloatField;
    qryAssetAriseHM_KY: TIBOFloatField;
    qryAssetAriseNG_CK: TIBOFloatField;
    qryAssetAriseHM_CK: TIBOFloatField;
    qryAssetAriseCL_CK: TIBOFloatField;
    qryAssetAriseMUCKH: TIBOFloatField;
    qryAssetAriseOBRANCH_ID: TWideStringField;
    grdAccountAriseOBRANCH_ID: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdAccountAriseDblClick(Sender: TObject);
    procedure grdAccountAriseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAccountAriseChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnShowDetailClick(Sender: TObject);
    procedure TntRadioButton1Click(Sender: TObject);
    procedure qryAssetAriseFilterRecord_TangKy(DataSet: TDataSet;var Accept: Boolean);
    procedure qryAssetAriseFilterRecord_ChuaXuly(DataSet: TDataSet;var Accept: Boolean);
    procedure qryAssetAriseFilterRecord_DaXuly(DataSet: TDataSet;var Accept: Boolean);
    procedure qryAssetAriseFilterRecord_ConKH(DataSet: TDataSet;var Accept: Boolean);
    procedure qryAssetAriseFilterRecord_GiamKy(DataSet: TDataSet;var Accept: Boolean);
    procedure qryAssetAriseFilterRecord_HetKH(DataSet: TDataSet;var Accept: Boolean);
    procedure TntRadioButton2Click(Sender: TObject);
    procedure TntRadioButton3Click(Sender: TObject);
    procedure TntRadioButton4Click(Sender: TObject);
    procedure bbtnFilterClick(Sender: TObject);
    procedure bbtnGroupClick(Sender: TObject);
    procedure grdAccountAriseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure InBaoCao(IsDirect:Boolean);
    procedure dxBarButton7Click(Sender: TObject);
    procedure TntRadioButton6Click(Sender: TObject);
    procedure TntRadioButton5Click(Sender: TObject);
    procedure TntRadioButton7Click(Sender: TObject);
    procedure acInTTExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssetAriseFrm: TAssetAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  DocListForm, LookupFrm, AssetForm, dxTreeGridMenus, AssetHistoryForm, HtmlHlp;


{$R *.dfm}

procedure TAssetAriseFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
  
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;

  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  grdAccountAriseNGDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseHMDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseCLDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseTANG.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseGIAM.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseHMKY.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseNGCK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseHMCK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdAccountAriseCLCK.SummaryFooterFormat:=TIENTE_FORMAT;


  qryAssetAriseNG_DK.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseHM_DK.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseCL_DK.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseTANG_KY.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseGIAM_KY.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseHM_KY.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseNG_CK.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseHM_CK.DisplayFormat := TIENTE_FORMAT;
  qryAssetAriseCL_CK.DisplayFormat := TIENTE_FORMAT;

  with qryAssetArise do
  begin
    ParamByName('tuky').Value :=CurrentPeriod;
    ParamByName('denky').Value :=CurrentPeriod;
    ParamByName('branch_id').Value :=vpBranch_id;
    Open;
    Filtered :=True;
  end;
end;

procedure TAssetAriseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  qryAssetArise.Close;

  Action:=caFree;
  with MainFrm do
  begin
    MyMDIChildCount:= MyMDIChildCount-1;
    if MDIChildCount=1 then
      PnlMain.Visible := True;
  end;
end;

procedure TAssetAriseFrm.FormDestroy(Sender: TObject);
begin
   with MainFrm.bbWindowList.Items do
      Delete(IndexOfObject(Self));
   AssetAriseFrm:=nil;
end;

procedure TAssetAriseFrm.FormShow(Sender: TObject);
begin
  MainFrm.PnlMain.Visible := False;
  SetVisible(Self);  
end;

procedure TAssetAriseFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdAccountArise);
end;

procedure TAssetAriseFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdAccountArise);
end;

procedure TAssetAriseFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdAccountArise);
end;

procedure TAssetAriseFrm.btnDetailClick(Sender: TObject);
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSelectDocList + ' where ((DTNO=:AMADT and LOAINO=3) OR (DTCO=:AMADT and LOAICO=3))';

    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('AMADT').Value:=qryAssetAriseSHTS.Value;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
  end;
  IsPosted:=False;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    if IsPosted then
    begin
      qryAssetArise.DisableControls;
      qryAssetArise.Refresh;
      qryAssetArise.EnableControls;
    end;
    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;

  if IsPosted then
  begin
    qryAssetArise.DisableControls;
    qryAssetArise.Refresh;
    qryAssetArise.EnableControls;
  end;
end;

procedure TAssetAriseFrm.grdAccountAriseDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TAssetAriseFrm.grdAccountAriseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdAccountArise, Key, Shift, False);
end;

procedure TAssetAriseFrm.grdAccountAriseChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  if ((qryAssetAriseTANG_KY.AsFloat=0) and (qryAssetAriseGIAM_KY.AsFloat=0) and (qryAssetAriseHM_KY.AsFloat=0)) then
    btnDetail.Enabled:=False
  else
    btnDetail.Enabled:=True;
end;

procedure TAssetAriseFrm.dxBarButton4Click(Sender: TObject);
begin
  qryAssetArise.Refresh;
end;

procedure TAssetAriseFrm.btnShowDetailClick(Sender: TObject);
begin
  if qryAssetArise.RecordCount=0 then exit;
  SohieuTSCD:=qryAssetAriseSHTS.Value;
  with TAssetFrm.Create(Self) do
  try
    if ShowModal=mrOK then
      qryAssetArise.Refresh;
  finally
    free;
  end;
end;

procedure TAssetAriseFrm.TntRadioButton1Click(Sender: TObject);
begin
  qryAssetArise.Filtered:=False;
end;

procedure TAssetAriseFrm.qryAssetAriseFilterRecord_TangKy(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=qryAssetAriseTANG_KY.AsFloat<>0;
end;
procedure TAssetAriseFrm.qryAssetAriseFilterRecord_ChuaXuly(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=qryAssetAriseTRANGTHAI.AsInteger<>-1;
end;
procedure TAssetAriseFrm.qryAssetAriseFilterRecord_DaXuly(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=qryAssetAriseTRANGTHAI.AsInteger=-1;
end;

procedure TAssetAriseFrm.qryAssetAriseFilterRecord_GiamKy(DataSet: TDataSet;var Accept: Boolean);
begin
  Accept:=qryAssetAriseGIAM_KY.AsFloat<>0;
end;
procedure TAssetAriseFrm.qryAssetAriseFilterRecord_HetKH(DataSet: TDataSet;var Accept: Boolean);
begin
  Accept:=qryAssetAriseCL_CK.AsFloat=0;
end;
procedure TAssetAriseFrm.qryAssetAriseFilterRecord_ConKH(DataSet: TDataSet;var Accept: Boolean);
begin
  Accept:=qryAssetAriseCL_CK.AsFloat>0;
end;
procedure TAssetAriseFrm.TntRadioButton2Click(Sender: TObject);
begin
  qryAssetArise.OnFilterRecord := qryAssetAriseFilterRecord_TangKy;
  qryAssetArise.Filtered := True;
end;

procedure TAssetAriseFrm.TntRadioButton3Click(Sender: TObject);
begin
  qryAssetArise.OnFilterRecord := qryAssetAriseFilterRecord_GiamKy;
  qryAssetArise.Filtered := True;
end;

procedure TAssetAriseFrm.TntRadioButton4Click(Sender: TObject);
begin
  qryAssetArise.OnFilterRecord := qryAssetAriseFilterRecord_HetKH;
  qryAssetArise.Filtered := True;
end;

procedure TAssetAriseFrm.bbtnFilterClick(Sender: TObject);
begin
  grdAccountArise.Filter.Active := bbtnFilter.Down;
end;

procedure TAssetAriseFrm.bbtnGroupClick(Sender: TObject);
begin
  grdAccountArise.ShowGroupPanel := bbtnGroup.Down;
end;

procedure TAssetAriseFrm.grdAccountAriseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAssetArise.PopupFromCursorPos;
end;

procedure TAssetAriseFrm.dxBarButton5Click(Sender: TObject);
begin
  with TAssetHistoryFrm.Create(Self) do
  try
    qryAssetHistory.ParamByName('ASSET_ID').Value := qryAssetAriseSHTS.Value;
    qryAssetHistory.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryAssetHistory.Open;
    qryAssetHistory.First;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAssetAriseFrm.dxBarButton6Click(Sender: TObject);
begin
  InBaoCao(False);
end;

procedure TAssetAriseFrm.InBaoCao(IsDirect:Boolean);
var
  i:Smallint;
begin
  qryAssetArise.DisableControls;
  ReportTSCD.Template.FileName := TemplatePath + '\DANHSACHTSCD.RTM';
  ReportTSCD.Template.Load;

  for i:=0 to ComponentCount-1 do
  if Components[i] is TppLabel then
  begin
    if Components[i].Name='lblTua' then
    begin
      (Components[i] as TppLabel).Caption := IntToStr(CurMonth) + '/ ' + IntToStr(CurYear);
      break;
    end;
  end;

  if IsDirect then
    ReportTSCD.DeviceType:='Printer'
  else
    ReportTSCD.DeviceType:='Screen';

  ReportTSCD.PreviewFormSettings.WindowState:=wsMaximized;
  ReportTSCD.PreviewFormSettings.ZoomPercentage:=100;
  //If not ReportTSCD.PrintReport then
//    ShowMessageUnicode(210);
  try
    ReportTSCD.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  qryAssetArise.EnableControls;
end;                              

procedure TAssetAriseFrm.dxBarButton7Click(Sender: TObject);
begin
  qryAssetArise.DisableControls;
  ReportTSCD.Template.FileName := TemplatePath + '\DANHSACHTSCD.RTM';
  ReportTSCD.Template.Load;
  DesignerTSCD.ShowModal;
  qryAssetArise.EnableControls;
end;

procedure TAssetAriseFrm.TntRadioButton6Click(Sender: TObject);
begin
  qryAssetArise.OnFilterRecord := qryAssetAriseFilterRecord_ConKH;
  qryAssetArise.Filtered := True;
end;

procedure TAssetAriseFrm.TntRadioButton5Click(Sender: TObject);
begin
  qryAssetArise.OnFilterRecord := qryAssetAriseFilterRecord_ChuaXuly;
  qryAssetArise.Filtered := True;
end;

procedure TAssetAriseFrm.TntRadioButton7Click(Sender: TObject);
begin
  qryAssetArise.OnFilterRecord := qryAssetAriseFilterRecord_DaXuly;
  qryAssetArise.Filtered := True;
end;

procedure TAssetAriseFrm.acInTTExecute(Sender: TObject);
begin
  InBaoCao(True);
end;

procedure TAssetAriseFrm.FormActivate(Sender: TObject);
begin
MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TAssetAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
