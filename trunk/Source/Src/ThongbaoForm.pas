unit ThongbaoForm;
// Thinh lam
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl, Forms,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid,dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList,DB,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  IBODataset, DBActns, ppDB, ppDBPipe, ppEndUsr, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,dxPSCore,dxPrnDev;

type
  TThongBaoFrm = class(TForm)
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
    btnDetail: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBGrid1OBJECT_ID: TdxDBGridMaskColumn;
    dxDBGrid1OBJECT_NAME: TdxDBGridMaskColumn;
    dxDBGrid1OBJGRP_ID: TdxDBGridMaskColumn;
    dxDBGrid1OTYPE_ID: TdxDBGridMaskColumn;
    dxDBGrid1SUBINFO_1: TdxDBGridMaskColumn;
    dxDBGrid1SUBINFO_2: TdxDBGridMaskColumn;
    dxDBGrid1DEBT_LEN: TdxDBGridMaskColumn;
    dxDBGrid1OBJECT_VALUE: TdxDBGridMaskColumn;
    dxDBGrid1OTHER_DATE: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDetailClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongBaoFrm: TThongBaoFrm;

implementation

uses MainForm, MainDataMdl, GlobalUnit, LookupFrm, InvoiceForm,
  DocListForm, HtmlHlp;

{$R *.dfm}

procedure TThongBaoFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;


end;

procedure TThongBaoFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TThongBaoFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TThongBaoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDM.qryCNQuahan.Close;
end;

procedure TThongBaoFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TThongBaoFrm.FormShow(Sender: TObject);

begin

  SetVisible(Self);
end;

procedure TThongBaoFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TThongBaoFrm.btnDetailClick(Sender: TObject);
var
sqlSel:String;
begin

  sqlSel:='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher,doc_total, doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclistngay(:tungay,:denngay,:USERNAME,:branch_id)'
      + ' where (dtno=:madt) or (ytno=:madt ) or (ytno2=:madt )  or (dtco=:madt ) or (ytco=:madt ) or (ytco2=:madt )';
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tungay').AsDate:= strtodate('1/1/2008');
    qryDocListAnyWhere.ParamByName('denngay').AsDate:=WorkingDate;
    qryDocListAnyWhere.ParamByName('MADT').Value:=qryThongbaoOBJECT_ID.Value;
    qryDocListAnyWhere.ParamByName('LOAIDT').AsInteger:=qryThongbaoOTYPE_ID.AsInteger;
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


end;

procedure TThongBaoFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TThongBaoFrm.ElPopupButton1Click(Sender: TObject);
var
  CompPrint : TdxComponentPrinter;
  CompPrintLink : TBasedxReportLink;
begin
  CompPrint := TdxComponentPrinter.Create(dxDBGrid1.Parent);
  CompPrintLink :=  CompPrint.AddLink(dxDBGrid1);
  CompPrintLink.ShrinkToPageWidth := True;
  if dxDBGrid1.Width > 600 then
    CompPrintLink.PrinterPage.Orientation := poLandscape
  else
    CompPrintLink.PrinterPage.Orientation := poPortrait;
  CompPrintLink.Print(True, nil);
end;

end.
