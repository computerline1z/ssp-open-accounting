unit RentArise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppEndUsr, ppModule;

type
  TRentAriseFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    grdHH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    bbtnFilter: TdxBarButton;
    pm: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    qryRentArise: TIBOQuery;
    dsRentArise: TDataSource;
    qryRentAriseMAKH: TWideStringField;
    qryRentAriseMAHH: TWideStringField;
    qryRentAriseTENHH: TWideStringField;
    qryRentAriseDVT: TWideStringField;
    qryRentAriseSHTK: TWideStringField;
    qryRentAriseSLDAUKY: TIBOFloatField;
    qryRentAriseGTDAUKY: TIBOFloatField;
    qryRentAriseSLTHUE: TIBOFloatField;
    qryRentAriseGTTHUE: TIBOFloatField;
    qryRentAriseSLTRA: TIBOFloatField;
    qryRentAriseGTTRA: TIBOFloatField;
    qryRentAriseGTHAOMON: TIBOFloatField;
    qryRentAriseSLTON: TIBOFloatField;
    qryRentAriseGTTON: TIBOFloatField;
    grdHHMACT: TdxDBGridMaskColumn;
    grdHHMAKH: TdxDBGridMaskColumn;
    grdHHMAHH: TdxDBGridMaskColumn;
    grdHHTENHH: TdxDBGridMaskColumn;
    grdHHSHTK: TdxDBGridMaskColumn;
    grdHHSLDAUKY: TdxDBGridMaskColumn;
    grdHHGTDAUKY: TdxDBGridMaskColumn;
    grdHHSLTHUE: TdxDBGridMaskColumn;
    grdHHGTTHUE: TdxDBGridMaskColumn;
    grdHHSLTRA: TdxDBGridMaskColumn;
    grdHHGTTRA: TdxDBGridMaskColumn;
    grdHHGTHAOMON: TdxDBGridMaskColumn;
    grdHHSLTON: TdxDBGridMaskColumn;
    grdHHGTTON: TdxDBGridMaskColumn;
    qryRentAriseKF: TWideStringField;
    ReportRent: TppReport;
    DesignerRent: TppDesigner;
    dbpReportRent: TppDBPipeline;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    qryRentAriseWORK_NAME: TWideStringField;
    qryRentAriseMACT: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdHHDblClick(Sender: TObject);
    procedure grdHHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton4Click(Sender: TObject);
    procedure bbtnFilterClick(Sender: TObject);
    procedure grdHHEnter(Sender: TObject);
    procedure grdHHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdHHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RentAriseFrm: TRentAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus;


{$R *.dfm}

procedure TRentAriseFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self,0);
  locForm.EndUpdate;

  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  grdHHGTDAUKY.SummaryFooterFormat:=TIENTE_FORMAT;
  grdHHGTTHUE.SummaryFooterFormat:=TIENTE_FORMAT;
  grdHHGTTRA.SummaryFooterFormat:=TIENTE_FORMAT;
  grdHHGTHAOMON.SummaryFooterFormat:=TIENTE_FORMAT;
  grdHHGTTON.SummaryFooterFormat:=TIENTE_FORMAT;
  grdHHSLDAUKY.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdHHSLTHUE.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdHHSLTRA.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdHHSLTON.SummaryFooterFormat:=SOLUONG_FORMAT;

  qryRentAriseSLDAUKY.DisplayFormat:=SOLUONG_FORMAT;
  qryRentAriseSLTHUE.DisplayFormat:=SOLUONG_FORMAT;
  qryRentAriseSLTRA.DisplayFormat:=SOLUONG_FORMAT;
  qryRentAriseSLTON.DisplayFormat:=SOLUONG_FORMAT;
  qryRentAriseGTDAUKY.DisplayFormat:=TIENTE_FORMAT;
  qryRentAriseGTTHUE.DisplayFormat:=TIENTE_FORMAT;
  qryRentAriseGTTRA.DisplayFormat:=TIENTE_FORMAT;
  qryRentAriseGTHAOMON.DisplayFormat:=TIENTE_FORMAT;
  qryRentAriseGTTON.DisplayFormat:=TIENTE_FORMAT;

  qryRentArise.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryRentArise.Open;
end;
procedure TRentAriseFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  RentAriseFrm:= nil;
end;

procedure TRentAriseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TRentAriseFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdHH);
end;

procedure TRentAriseFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdHH);
end;

procedure TRentAriseFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdHH);
end;

procedure TRentAriseFrm.btnDetailClick(Sender: TObject);
var sqlSel:Widestring;
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    if ((qryRentAriseSLTHUE.AsFloat=0) and (qryRentAriseSLTRA.AsFloat=0) and (qryRentAriseGTHAOMON.AsFloat=0)) then exit;
    sqlSel :=sqlSelectDocList + ' where ((TKNO = :ASHTK and DTNO=:AMAHH and LOAINO=2)';
    sqlSel :=sqlSel + ' OR (TKCO= :ASHTK and DTCO=:AMAHH and LOAICO=2)) and (work_id=:AMACT) and OBJECT_ID=:AMAKH';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryRentAriseSHTK.Value;
    qryDocListAnyWhere.ParamByName('AMAHH').Value:=qryRentAriseMAHH.Value;
    qryDocListAnyWhere.ParamByName('AMACT').Value:=qryRentAriseMACT.Value;
    qryDocListAnyWhere.ParamByName('AMAKH').Value:=qryRentAriseMAKH.Value;

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
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value);
    qryDocListAnyWhere.Close;
  end
  else
  begin
    DocListFrm:=TDocListFrm.Create(Self);
    try
      DocListFrm.ShowModal;
    finally
      DocListFrm.Free;
    end;
  end;

  if IsPosted then
  begin
    qryRentArise.DisableControls;
    qryRentArise.Close;
    qryRentArise.Open;
    qryRentArise.EnableControls;
  end;
end;

procedure TRentAriseFrm.grdHHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TRentAriseFrm.grdHHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdHH, Key, Shift, True,4);
end;

procedure TRentAriseFrm.dxBarButton4Click(Sender: TObject);
begin
  qryRentArise.Refresh;
end;

procedure TRentAriseFrm.bbtnFilterClick(Sender: TObject);
begin
  grdHH.Filter.Active := bbtnFilter.Down;
end;

procedure TRentAriseFrm.grdHHEnter(Sender: TObject);
begin
  if qryRentArise.Active=False then
    qryRentArise.Open;
end;

procedure TRentAriseFrm.grdHHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if qryRentArise.Active=False then
    qryRentArise.Open;
end;

procedure TRentAriseFrm.grdHHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    pm.PopupFromCursorPos;
  end;
end;

procedure TRentAriseFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TRentAriseFrm.dxBarButton5Click(Sender: TObject);
var
  I:integer;
begin
  ReportRent.Template.FileName := TemplatePath + '\tonghopchothue.rtm';

  qryRentArise.DisableControls;

  ReportRent.Template.Load;
  for i:=0 to ComponentCount-1 do
  if Components[i] is TppLabel then
  begin
    if (Components[i] as TppLabel).Caption='lblthang' then
      (Components[i] as TppLabel).Caption := IntToStr(CurMonth) + '/ ' + IntToStr(CurYear);
  end;

  ReportRent.PreviewFormSettings.WindowState:=wsMaximized;
  ReportRent.PreviewFormSettings.ZoomPercentage:=100;
 // If Not ReportRent.PrintReport then
//    ShowMessageUnicode(210);
  try
    ReportRent.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  qryRentArise.EnableControls;
end;

procedure TRentAriseFrm.dxBarButton6Click(Sender: TObject);
begin
  ReportRent.Template.FileName := TemplatePath + '\tonghopchothue.rtm';

  qryRentArise.DisableControls;

  ReportRent.Template.Load;
  DesignerRent.ShowModal;
  qryRentArise.EnableControls;

end;

procedure TRentAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TRentAriseFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
