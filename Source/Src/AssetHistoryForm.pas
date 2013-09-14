unit AssetHistoryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid,dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList,DB,
  TntButtons, IBODataset, dxEditor, Mask, DBCtrls, TntDBCtrls, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TAssetHistoryFrm = class(TForm)
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
    ActionList1: TActionList;
    acExcel: TAction;
    acHTML: TAction;
    acXML: TAction;
    DlgSave: TSaveDialog;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBGrid1GTKH: TdxDBGridColumn;
    dxDBGrid1DTPB: TdxDBGridColumn;
    dxDBGrid1NG: TdxDBGridColumn;
    qryAssetHistory: TIBOQuery;
    dsAssetHistory: TDataSource;
    qryAssetHistoryLOAIDTPB: TIntegerField;
    dxDBGrid1GTCL: TdxDBGridColumn;
    dxDBGrid1KYHT: TdxDBGridColumn;
    dxDBGrid1TKPB: TdxDBGridColumn;
    dxDBGrid1LKKH: TdxDBGridColumn;
    qryAssetHistoryTHANG: TSmallintField;
    dxDBGrid1Column9: TdxDBGridColumn;
    qryAssetHistoryLSTHANG: TWideStringField;
    qryAssetHistoryBPSD: TWideStringField;
    qryAssetHistoryMADTPB: TWideStringField;
    qryAssetHistoryTENDTPB: TWideStringField;
    qryAssetHistoryTKKH: TWideStringField;
    qryAssetHistoryTKPB: TWideStringField;
    ElFormCaption1: TElFormCaption;
    qryAssetHistoryGTCL: TIBOFloatField;
    qryAssetHistoryKHLK: TIBOFloatField;
    qryAssetHistoryNGUYENGIA: TIBOFloatField;
    qryAssetHistoryGTKH: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
    procedure acHTMLExecute(Sender: TObject);
    procedure acXMLExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntFormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssetHistoryFrm: TAssetHistoryFrm;

implementation

uses MainForm, MainDataMdl, AssetForm, GlobalUnit, LookupFrm, HtmlHlp;

{$R *.dfm}

procedure TAssetHistoryFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  dxDBGrid1GTKH.SummaryFooterFormat := TIENTE_FORMAT;
  dxDBGrid1NG.SummaryFooterFormat := TIENTE_FORMAT;
  dxDBGrid1GTCL.SummaryFooterFormat := TIENTE_FORMAT;
  dxDBGrid1LKKH.SummaryFooterFormat := TIENTE_FORMAT;
  
  qryAssetHistoryGTCL.DisplayFormat:= TIENTE_FORMAT;
  qryAssetHistoryGTKH.DisplayFormat:= TIENTE_FORMAT;
  qryAssetHistoryKHLK.DisplayFormat:= TIENTE_FORMAT;
  qryAssetHistoryNGUYENGIA.DisplayFormat:= TIENTE_FORMAT;

end;

procedure TAssetHistoryFrm.acExcelExecute(Sender: TObject);
begin
  ExportToExcel(dxDBGrid1);
end;

procedure TAssetHistoryFrm.acHTMLExecute(Sender: TObject);
begin
  ExportToHTML(dxDBGrid1);
end;

procedure TAssetHistoryFrm.acXMLExecute(Sender: TObject);
begin
  ExportToXML(dxDBGrid1);
end;

procedure TAssetHistoryFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TAssetHistoryFrm.BitBtn1Click(Sender: TObject);
begin
  acExcel.Execute;
end;

procedure TAssetHistoryFrm.BitBtn2Click(Sender: TObject);
begin
  acHTML.Execute;
end;

procedure TAssetHistoryFrm.BitBtn3Click(Sender: TObject);
begin
  acXML.Execute;
end;

procedure TAssetHistoryFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TAssetHistoryFrm.TntFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryAssetHistory.Close;
end;

procedure TAssetHistoryFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TAssetHistoryFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAssetHistoryFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TAssetHistoryFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
