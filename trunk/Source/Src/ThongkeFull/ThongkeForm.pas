unit ThongkeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, TeeComma;

type
  TThongkeFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    qryTonkho: TIBOQuery;
    DataSource1: TDataSource;
    dxDBGrid1: TdxDBGrid;
    Series2: TBarSeries;
    Series3: TBarSeries;
    dxDBGrid1THANGHT: TdxDBGridColumn;
    dxDBGrid1DOANHTHU: TdxDBGridColumn;
    dxDBGrid1CHIPHI: TdxDBGridColumn;
    dxDBGrid1LAILO: TdxDBGridColumn;
    dxDBGrid1TIENLAI: TdxDBGridColumn;
    dxDBGrid1TIENLO: TdxDBGridColumn;
    qryTonkhoKYHT: TSmallintField;
    qryTonkhoTHANGHT: TWideStringField;
    dxDBGrid1TONGPS: TdxDBGridColumn;
    Series4: TBarSeries;
    dxCheckEdit1: TdxCheckEdit;
    Splitter1: TSplitter;
    qryTonkhoCHIPHI: TIBOFloatField;
    qryTonkhoDOANHTHU: TIBOFloatField;
    qryTonkhoLAILO: TIBOFloatField;
    qryTonkhoTONGPS: TIBOFloatField;
    ElPopupButton1: TElPopupButton;
    DBChart2: TDBChart;
    ElPopupButton2: TElPopupButton;
    BarSeries1: TLineSeries;
    BarSeries2: TLineSeries;
    BarSeries3: TLineSeries;
    BarSeries4: TLineSeries;
    ElPopupButton3: TElPopupButton;
    TeeCommander1: TTeeCommander;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxCheckEdit1Change(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongkeFrm: TThongkeFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus;

{$R *.dfm}

procedure TThongkeFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  
  dxDBGrid1DOANHTHU.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1CHIPHI.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1LAILO.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1TONGPS.SummaryFooterFormat:=TIENTE_FORMAT;

  DBChart1.Title.Text.Text:= UTF8Decode('Tình hình doanh thu, chi phí và lãi lỗ các tháng trong năm ') + IntToStr(CurYear);
  qryTonkhoTONGPS.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoDOANHTHU.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoCHIPHI.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoLAILO.DisplayFormat:=TIENTE_FORMAT;

  qryTonkho.ParamByName('tuky').Value:=CurYear*12+1;
  qryTonkho.ParamByName('denky').Value:=CurYear*12+12;

  qryTonkho.Open;
end;

procedure TThongkeFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeFrm.dxCheckEdit1Change(Sender: TObject);
begin
  DBChart1.Series[0].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[1].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[2].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[3].Marks.Visible:=dxCheckEdit1.Checked;
end;

procedure TThongkeFrm.ElPopupButton2Click(Sender: TObject);
begin
  DBChart1.Visible:=True;
  DBChart2.Visible:=False;
  TeeCommander1.Panel:=DBChart1;
end;

procedure TThongkeFrm.ElPopupButton1Click(Sender: TObject);
begin
  DBChart1.Visible:=False;
  DBChart2.Visible:=True;
  TeeCommander1.Panel:=DBChart2;
end;

procedure TThongkeFrm.ElPopupButton3Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)=7 then
    Exit;
    
  IF DBChart1.Visible then
    DBChart1.Print
  else
    DBChart2.Print;
end;

procedure TThongkeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
