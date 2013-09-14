unit CNQuahanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl, Forms,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid,dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList,DB,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  IBODataset, DBActns, ppDB, ppDBPipe, ppEndUsr, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TCNQuahanFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnHelp: TELPopupButton;
    btnClose: TELPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    DlgSave: TSaveDialog;
    btnDetail: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1SHTK: TdxDBGridMaskColumn;
    dxDBGrid1MADT: TdxDBGridMaskColumn;
    dxDBGrid1TENDT: TdxDBGridMaskColumn;
    dxDBGrid1SUB_1: TdxDBGridMaskColumn;
    dxDBGrid1SDNO: TdxDBGridMaskColumn;
    dxDBGrid1SDCO: TdxDBGridMaskColumn;
    dxDBGrid1DEBTVALUE: TdxDBGridMaskColumn;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ReportCN: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    DesignerCN: TppDesigner;
    dbpReportCN: TppDBPipeline;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDetailClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNQuahanFrm: TCNQuahanFrm;

implementation

uses MainForm, MainDataMdl, GlobalUnit, LookupFrm, InvoiceForm,
  DocListForm, HtmlHlp;

{$R *.dfm}

procedure TCNQuahanFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  dxDBGrid1SDNO.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1SDCO.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1DEBTVALUE.SummaryFooterFormat:=TIENTE_FORMAT;
end;

procedure TCNQuahanFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TCNQuahanFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_Return then
  begin
    btnDetailClick(Sender);
    Exit;
  end
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TCNQuahanFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDM.qryCNQuahan.Close;
end;

procedure TCNQuahanFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TCNQuahanFrm.FormShow(Sender: TObject);
var
  cap:WideString;
  str:String;
begin
  if optTuoinoQuahan>0 then
    cap:=GetMessage(190)
  else if optTuoinoQuahan=0 then
    cap:=GetMessage(191)
  else
    cap:=GetMessage(192);
  if optTuoinoQuahan<>0 then
  begin
    str:=UTF8Encode(cap);
    if optTuoinoQuahan>0 then
      str:= StringReplace(str,'###',IntToStr(optTuoinoQuahan),[])
    else
      str:= StringReplace(str,'###',IntToStr(-optTuoinoQuahan),[]);

    ElFormCaption1.Texts[0].Caption:=UTF8Decode(str);
  end
  else
    ElFormCaption1.Texts[0].Caption:=cap;

  SetVisible(Self);    
end;

procedure TCNQuahanFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TCNQuahanFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TCNQuahanFrm.btnDetailClick(Sender: TObject);
var
sqlSel:String;
begin
  sqlSel:='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher,doc_total, doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclistngay(:ngaysomnhat,:denngay,:USERNAME,:branch_id)'
      + ' where (dtno=:madt and loaino=:loaidt and tkno =:shtk) or (dtco=:madt and loaico=:loaidt and tkco=:shtk)';
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('ngaysomnhat').AsDate:=qryCNQuahanNGAYSOMNHAT.AsDateTime;
    qryDocListAnyWhere.ParamByName('denngay').AsDate:=WorkingDate;
    qryDocListAnyWhere.ParamByName('MADT').Value:=qryCNQuahanMADT.Value;
    qryDocListAnyWhere.ParamByName('LOAIDT').AsInteger:=qryCNQuahanLOAIDT.AsInteger;
    qryDocListAnyWhere.ParamByName('SHTK').Value:=qryCNQuahanSHTK.Value;
    qryDocListAnyWhere.ParamByName('USERNAME').Value:=CurrentUser;
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
  with MainDM do
  begin
    qryCNQuahan.DisableControls;
    qryCNQuahan.Close;
    qryCNQuahan.Open;
    qryCNQuahan.EnableControls;
  end;
end;

procedure TCNQuahanFrm.ElPopupButton1Click(Sender: TObject);
begin
  ReportCN.Template.FileName := TemplatePath + '\congnoquahan.rtm';

  MainDM.qryCNQuahan.DisableControls;

  ReportCN.Template.Load;

  //If Not ReportCN.PrintReport then
//    ShowMessageUnicode(210);
  try
     ReportCN.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  MainDM.qryCNQuahan.EnableControls;
end;

procedure TCNQuahanFrm.ElPopupButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbRight then
  begin
    ReportCN.Template.FileName := TemplatePath + '\congnoquahan.rtm';

    MainDM.qryCNQuahan.DisableControls;

    ReportCN.Template.Load;

    DesignerCN.ShowModal;
    MainDM.qryCNQuahan.EnableControls;
  end;
end;

procedure TCNQuahanFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
