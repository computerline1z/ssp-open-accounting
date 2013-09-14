unit ThongkeTysuatForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElPgCtl, ElPanel, dxEditor;

type
  TThongkeTysuatFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    qryTonkho: TIBOQuery;
    DataSource1: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1THANGHT: TdxDBGridColumn;
    qryTonkhoKYHT: TSmallintField;
    qryTonkhoTHANGHT: TWideStringField;
    Splitter1: TSplitter;
    pcg: TElPageControl;
    tabMonth: TElTabSheet;
    tabQuater: TElTabSheet;
    tabYear: TElTabSheet;
    pcg1: TElPageControl;
    pcgTotal: TElTabSheet;
    qryTonkhoKN9: TIBOFloatField;
    qryTonkhoKN10: TIBOFloatField;
    qryTonkhoKN13: TIBOFloatField;
    DBChart1: TDBChart;
    dxCheckEdit1: TdxCheckEdit;
    ElPopupButton6: TElPopupButton;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    dxDBGrid1KYHT: TdxDBGridMaskColumn;
    dxDBGrid1KN9: TdxDBGridMaskColumn;
    dxDBGrid1KN10: TdxDBGridMaskColumn;
    dxDBGrid1KN13: TdxDBGridMaskColumn;
    ElPopupButton1: TElPopupButton;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxCheckEdit1Change(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tabQuaterShow(Sender: TObject);
    procedure tabMonthShow(Sender: TObject);
    procedure tabYearShow(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongkeTysuatFrm: TThongkeTysuatFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, HtmlHlp;

{$R *.dfm}

procedure TThongkeTysuatFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxDBGrid1KN9.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1KN10.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1KN13.SummaryFooterFormat:=TIENTE_FORMAT;

  DBChart1.Title.Text.Text := DBChart1.Title.Text.Text + ' ' + IntToStr(CurYear);;  
  qryTonkhoKN9.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoKN10.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoKN13.DisplayFormat:=TIENTE_FORMAT;

  qryTonkho.ParamByName('tuky').Value:=CurYear*12+1;
  qryTonkho.ParamByName('denky').Value:=CurYear*12+11;
  qryTonkho.ParamByName('branch_id').Value:=vpBranch_id;
  qryTonkho.ParamByName('report_type').Value:=1;

end;

procedure TThongkeTysuatFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeTysuatFrm.dxCheckEdit1Change(Sender: TObject);
begin
  DBChart1.Series[0].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[1].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[2].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[3].Marks.Visible:=dxCheckEdit1.Checked;
end;

procedure TThongkeTysuatFrm.ElPopupButton3Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)=7 then
    Exit;

  IF DBChart1.Visible then
    DBChart1.Print

end;

procedure TThongkeTysuatFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thongke.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeTysuatFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TThongkeTysuatFrm.tabQuaterShow(Sender: TObject);
begin
  qryTonkho.Close;
  qryTonkho.ParamByName('REPORT_TYPE').Value := 2;

end;

procedure TThongkeTysuatFrm.tabMonthShow(Sender: TObject);
begin
  qryTonkho.Close;
  qryTonkho.ParamByName('REPORT_TYPE').Value := 1;

end;

procedure TThongkeTysuatFrm.tabYearShow(Sender: TObject);
begin
  qryTonkho.Close;
  qryTonkho.ParamByName('REPORT_TYPE').Value := 3;
  
end;

procedure TThongkeTysuatFrm.ElPopupButton7Click(Sender: TObject);
var fromperiod,toperiod : Smallint;
begin

end;

procedure TThongkeTysuatFrm.ElPopupButton1Click(Sender: TObject);
begin
  qryTonkho.Open;
end;

end.
