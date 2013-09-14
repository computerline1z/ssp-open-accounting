unit SoduTKForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxTL, dxDBCtrl, DB, IBCustomDataSet, IBQuery, dxCntner, dxDBTL,
  dxDBTLCl, ExtCtrls, DBCtrls, Menus, MaskUtils, Forms, 
  IBStoredProc, dxBar, ActnList,dxTreeGridMenus,dxDBGrid, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, dxExEdtr, Buttons, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppEndUsr, IBODataset, ppModule,   TntButtons,
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn, ElCheckCtl,
  ppStrtch, ppMemo, dxLayoutLookAndFeels;

type
  TSoduTKFrm = class(TForm)
    dbtl_SODUTK: TdxDBTreeList;
    dbtl_SODUTKSHTK: TdxDBTreeListMaskColumn;
    dbtl_SODUTKTENTK: TdxDBTreeListMaskColumn;
    dbtl_SODUTKNODK: TdxDBTreeListMaskColumn;
    dbtl_SODUTKCODK: TdxDBTreeListColumn;
    dbtl_SODUTKNOPS: TdxDBTreeListColumn;
    dbtl_SODUTKCOPS: TdxDBTreeListColumn;
    dbtl_SODUTKNOCK: TdxDBTreeListColumn;
    dbtl_SODUTKCOCK: TdxDBTreeListColumn;
    Panel1: TPanel;
    BitBtn1: TELPopupButton;
    BitBtn2: TELPopupButton;
    btnPrint: TELPopupButton;
    dbpReportBCD: TppDBPipeline;
    DesignerBCD: TppDesigner;
    qryAccountArise: TIBOQuery;
    dsAccountArise: TDataSource;
    chkChiCoPS: TdxCheckEdit;
    Panel2: TPanel;
    ReportBCD: TppReport;
    qryAccountAriseSHTK: TWideStringField;
    qryAccountAriseTENTK: TWideStringField;
    qryAccountAriseSHTK_A: TWideStringField;
    qryAccountAriseTENTK_A: TWideStringField;
    qryAccountAriseTKCHA: TWideStringField;
    ElFormCaption1: TElFormCaption;
    rbAll: TElRadioButton;
    rbCap1: TElRadioButton;
    rbCap1va2: TElRadioButton;
    ActionList1: TActionList;
    acInTT: TAction;
    ElPopupButton1: TElPopupButton;
    qryAccountAriseNODK: TIBOFloatField;
    qryAccountAriseCODK: TIBOFloatField;
    qryAccountAriseNOPS: TIBOFloatField;
    qryAccountAriseCOPS: TIBOFloatField;
    qryAccountAriseNOCK: TIBOFloatField;
    qryAccountAriseCOCK: TIBOFloatField;
    qryAccountAriseSNODK: TIBOFloatField;
    qryAccountAriseSCODK: TIBOFloatField;
    qryAccountAriseSNOPS: TIBOFloatField;
    qryAccountAriseSCOPS: TIBOFloatField;
    qryAccountAriseSNOCK: TIBOFloatField;
    qryAccountAriseSCOCK: TIBOFloatField;
    ppTitleBand12: TppTitleBand;
    lbl_title: TppLabel;
    ppDBText210: TppDBText;
    ppDBText4: TppDBText;
    ppHeaderBand12: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel120: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLine28: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine29: TppLine;
    ppLabel129: TppLabel;
    ppLabel131: TppLabel;
    ppLabel133: TppLabel;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppDetailBand12: TppDetailBand;
    ppSHTK: TppDBText;
    ppNoDK: TppDBText;
    ppCoDK: TppDBText;
    ppNoPS: TppDBText;
    ppCoPS: TppDBText;
    ppNoCK: TppDBText;
    ppCoCK: TppDBText;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppLine205: TppLine;
    ppDBCalc20: TppDBCalc;
    ppLine204: TppLine;
    ppTenTK: TppDBText;
    ppLine2: TppLine;
    ppFooterBand12: TppFooterBand;
    ppSystemVariable25: TppSystemVariable;
    ppSummaryBand12: TppSummaryBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppTongNODK: TppLabel;
    ppTongCODK: TppLabel;
    ppTongNOPS: TppLabel;
    ppTongCOPS: TppLabel;
    ppTongNOCK: TppLabel;
    ppTongCOCK: TppLabel;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fr_StandardBtn_SodubtnHelpClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure InBaoCao(IsDirect:Boolean);
    procedure dbtl_SODUTKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryAccountAriseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbtl_SODUTKDblClick(Sender: TObject);
    procedure dbtl_SODUTKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnPrintMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkChiCoPSClick(Sender: TObject);
    procedure acInTTExecute(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoduTKFrm: TSoduTKFrm;

implementation

uses MainDataMdl, MainForm, GlobalInterface, GlobalUnit, DocListForm,
  LookupFrm, htmlhlp;

{$R *.dfm}

procedure TSoduTKFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);

  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;

  dbtl_SODUTKNODK.SummaryFooterFormat:=TIENTE_FORMAT;
  dbtl_SODUTKCODK.SummaryFooterFormat:=TIENTE_FORMAT;
  dbtl_SODUTKNOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dbtl_SODUTKCOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dbtl_SODUTKNOCK.SummaryFooterFormat:=TIENTE_FORMAT;
  dbtl_SODUTKCOCK.SummaryFooterFormat:=TIENTE_FORMAT;

  try
    qryAccountArise.Close;
    qryAccountArise.Filtered := False;
    qryAccountArise.ParamByName('KyHT').Value := CurrentPeriod;
    qryAccountArise.ParamByName('BRANCH_ID').Value :=vpBranch_id; 
    qryAccountAriseNODK.DisplayFormat := TIENTE_FORMAT;
    qryAccountAriseCODK.DisplayFormat := TIENTE_FORMAT;
    qryAccountAriseNOPS.DisplayFormat := TIENTE_FORMAT;
    qryAccountAriseCOPS.DisplayFormat := TIENTE_FORMAT;
    qryAccountAriseNOCK.DisplayFormat := TIENTE_FORMAT;
    qryAccountAriseCOCK.DisplayFormat := TIENTE_FORMAT;
    qryAccountArise.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;

  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
end;

procedure TSoduTKFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  qryAccountArise.Close;
  Action:=caFree;
  with MainFrm do
  MyMDIChildCount:= MyMDIChildCount-1;
  with MainFrm do
  if MDIChildCount=1 then
    PnlMain.Visible := True;
end;

procedure TSoduTKFrm.fr_StandardBtn_SodubtnHelpClick(Sender: TObject);
begin
  Application.HelpContext(40);
end;

procedure TSoduTKFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
      Delete(IndexOfObject(Self));
    SoduTKFrm:=nil;
end;

procedure TSoduTKFrm.btnPrintClick(Sender: TObject);
begin
  InBaoCao(False);
end;

procedure TSoduTKFrm.InBaoCao(IsDirect:Boolean);
var
  I:integer;
begin
  ReportBCD.Template.FileName := TemplatePath + '\CanDoiPHATSINH.rtm';

  qryAccountArise.DisableControls;

  ReportBCD.Template.Load;
  for i:=0 to ComponentCount-1 do
  if Components[i] is TppLabel then
  begin
    if (Components[i] as TppLabel).Caption='lblthoigian' then
      (Components[i] as TppLabel).Caption := IntToStr(CurMonth) + '/ ' + IntToStr(CurYear);
  end;
  if IsDirect then
    ReportBCD.DeviceType:='Printer'
  else
    ReportBCD.DeviceType:='Screen';

  ReportBCD.PreviewFormSettings.WindowState:=wsMaximized;
  ReportBCD.PreviewFormSettings.ZoomPercentage:=100;
 // if not ReportBCD.PrintReport then
//    ShowMessageUnicode(210);
  try
    ReportBCD.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  qryAccountArise.EnableControls;
end;

procedure TSoduTKFrm.dbtl_SODUTKMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  btnPrintClick(Sender);
end;

procedure TSoduTKFrm.qryAccountAriseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if rbAll.Checked then
    Accept := True
  else if rbCap1.Checked then
    Accept :=qryAccountAriseTKCHA.IsNull
  else Accept :=(qryAccountAriseTKCHA.IsNull) or  (Length(qryAccountAriseTKCHA.Value)=3);
  if chkChiCoPS.Checked then
    Accept := Accept and ((qryAccountAriseNODK.AsFloat<>0) or (qryAccountAriseCODK.AsFloat<>0) or (qryAccountAriseNOPS.AsFloat<>0) or (qryAccountAriseCOPS.AsFloat<>0));
end;

procedure TSoduTKFrm.dbtl_SODUTKDblClick(Sender: TObject);
const
sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclistky(:kyht,:kyht,:username,:branch_id) '
      + ' where tkno starting with :shtk or tkco starting with :shtk';
begin
  if ((qryAccountAriseNOPS.AsFloat=0) and (qryAccountAriseCOPS.AsFloat=0)) then exit;

  MainDM.qryDocListAnyWhere.Close;
  MainDM.qryDocListAnyWhere.SQL.Clear;
  MainDM.qryDocListAnyWhere.SQL.Text :=sqlSel;
  MainDM.qryDocListAnyWhere.ParamByName('kyht').AsInteger:=CurrentPeriod;
  MainDM.qryDocListAnyWhere.ParamByName('shtk').Value:=qryAccountAriseSHTK.Value;
  MainDM.qryDocListAnyWhere.ParamByName('username').Value:=CurrentUser;
  MainDM.qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
  MainDM.qryDocListAnyWhere.Open;

    if MainDM.qryDocListAnyWhere.RecordCount=0 then
    begin
      MainDM.qryDocListAnyWhere.Close;
      Exit;
    end;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;

  IsPosted:=False;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
  if IsPosted then
  begin
    qryAccountArise.DisableControls;
    qryAccountArise.Close;
    qryAccountArise.Open;
    qryAccountArise.EnableControls;
  end;
end;

procedure TSoduTKFrm.dbtl_SODUTKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key= VK_Return then
    dbtl_SODUTKDblClick(Sender)
  else
    ProcessKeyDownInTreeList(dbtl_SODUTK, Key, Shift);
end;

procedure TSoduTKFrm.BitBtn1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TSoduTKFrm.BitBtn2Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Bangcandoiphatsinh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(26);
end;

procedure TSoduTKFrm.btnPrintMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    qryAccountArise.DisableControls;
    ReportBCD.Template.FileName := TemplatePath + '\CanDoiPHATSINH.rtm';

    ReportBCD.Template.Load;
    DesignerBCD.Report := ReportBCD;
    DesignerBCD.ShowModal;
    qryAccountArise.EnableControls;
  end;
end;

procedure TSoduTKFrm.chkChiCoPSClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qryAccountArise.Filtered := false;
  qryAccountArise.OnFilterRecord :=qryAccountAriseFilterRecord;
  qryAccountArise.Filtered := true;
  Screen.Cursor := crDefault;
end;

procedure TSoduTKFrm.acInTTExecute(Sender: TObject);
begin
  InBaoCao(True);
end;

procedure TSoduTKFrm.ElPopupButton1Click(Sender: TObject);
begin
  InBaoCao(True);
end;

procedure TSoduTKFrm.FormActivate(Sender: TObject);
begin
MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TSoduTKFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Bangcandoiphatsinh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TSoduTKFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
