unit ThongkeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElPgCtl, ElPanel, dxEditor;

type
  TThongkeFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    DBChart1: TDBChart;
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
    pcg: TElPageControl;
    tabMonth: TElTabSheet;
    tabQuater: TElTabSheet;
    tabYear: TElTabSheet;
    DBChart3: TDBChart;
    dxCheckEdit2: TdxCheckEdit;
    BarSeries5: TBarSeries;
    BarSeries6: TBarSeries;
    BarSeries7: TBarSeries;
    BarSeries8: TBarSeries;
    ElPopupButton4: TElPopupButton;
    DBChart4: TDBChart;
    dxCheckEdit3: TdxCheckEdit;
    ElPopupButton5: TElPopupButton;
    BarSeries9: TBarSeries;
    BarSeries10: TBarSeries;
    BarSeries11: TBarSeries;
    BarSeries12: TBarSeries;
    ElPopupButton6: TElPopupButton;
    Series1: TBarSeries;
    pcg1: TElPageControl;
    pcgTotal: TElTabSheet;
    pcgObj: TElTabSheet;
    DBChart5: TDBChart;
    dxCheckEdit4: TdxCheckEdit;
    ElPopupButton8: TElPopupButton;
    BarSeries13: TBarSeries;
    BarSeries14: TBarSeries;
    BarSeries15: TBarSeries;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    Splitter2: TSplitter;
    qryTKDT: TIBOQuery;
    dsTKDT: TDataSource;
    qryTKDTMABOPHAN: TWideStringField;
    qryTKDTTENBOPHAN: TWideStringField;
    qryTKDTDOANHTHU: TIBOFloatField;
    qryTKDTCHIPHI: TIBOFloatField;
    qryTKDTTIENLAI: TIBOFloatField;
    qryTKDTTIENLO: TIBOFloatField;
    qryTKDTLAILO: TIBOFloatField;
    spnFromMonth: TdxSpinEdit;
    spnFromYear: TdxSpinEdit;
    spnToMonth: TdxSpinEdit;
    lblTo: TElLabel;
    spnToYear: TdxSpinEdit;
    ElPanel1: TElPanel;
    ElLabel1: TElLabel;
    ElPopupButton7: TElPopupButton;
    qryTKDTX: TSmallintField;
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
    procedure ElPopupButton4Click(Sender: TObject);
    procedure tabQuaterShow(Sender: TObject);
    procedure tabMonthShow(Sender: TObject);
    procedure dxCheckEdit2Change(Sender: TObject);
    procedure tabYearShow(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure dxCheckEdit3Change(Sender: TObject);
    procedure dxCheckEdit4Change(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongkeFrm: TThongkeFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, HtmlHlp;

{$R *.dfm}

procedure TThongkeFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxDBGrid1DOANHTHU.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1CHIPHI.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1LAILO.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1TONGPS.SummaryFooterFormat:=TIENTE_FORMAT;

  DBChart1.Title.Text.Text:= UTF8Decode('Tình hình doanh thu, chi phí và lãi lỗ các tháng trong năm ') + IntToStr(CurYear);
  DBChart3.Title.Text.Text:= UTF8Decode('Tình hình doanh thu, chi phí năm ') + IntToStr(CurYear);
  DBChart4.Title.Text.Text:= UTF8Decode('Tình hình doanh thu, chi phí năm ') + IntToStr(CurYear);
  qryTonkhoTONGPS.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoDOANHTHU.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoCHIPHI.DisplayFormat:=TIENTE_FORMAT;
  qryTonkhoLAILO.DisplayFormat:=TIENTE_FORMAT;

  qryTonkho.ParamByName('tuky').Value:=CurYear*12+1;
  qryTonkho.ParamByName('denky').Value:=CurYear*12+11;
  qryTonkho.ParamByName('branch_id').Value:=vpBranch_id;
  qryTonkho.ParamByName('report_type').Value:=1;
  qryTonkho.Open;

  spnToYear.IntValue:=CurYear;
  spnToMonth.IntValue:=CurMonth;
  spnFromMonth.IntValue := spnToMonth.IntValue;
  spnFromYear.IntValue := spnToYear.IntValue;
  
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
  //TeeCommander1.Panel:=DBChart1;
end;

procedure TThongkeFrm.ElPopupButton1Click(Sender: TObject);
begin
  DBChart1.Visible:=False;
  DBChart2.Visible:=True;
  //TeeCommander1.Panel:=DBChart2;
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
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thongke.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TThongkeFrm.ElPopupButton4Click(Sender: TObject);
begin
   if ShowMessageUnicode(204,'',4)=7 then
    Exit;

    DBChart3.Print
end;

procedure TThongkeFrm.tabQuaterShow(Sender: TObject);
begin
  qryTonkho.Close;
  qryTonkho.ParamByName('REPORT_TYPE').Value := 2;
  qryTonkho.Open;
end;

procedure TThongkeFrm.tabMonthShow(Sender: TObject);
begin
  qryTonkho.Close;
  qryTonkho.ParamByName('REPORT_TYPE').Value := 1;
  qryTonkho.Open;
end;

procedure TThongkeFrm.dxCheckEdit2Change(Sender: TObject);
begin
  DBChart3.Series[0].Marks.Visible:=dxCheckEdit2.Checked;
  DBChart3.Series[1].Marks.Visible:=dxCheckEdit2.Checked;
  DBChart3.Series[2].Marks.Visible:=dxCheckEdit2.Checked;
  DBChart3.Series[3].Marks.Visible:=dxCheckEdit2.Checked;
end;

procedure TThongkeFrm.tabYearShow(Sender: TObject);
begin
   qryTonkho.Close;
  qryTonkho.ParamByName('REPORT_TYPE').Value := 3;
  qryTonkho.Open;
end;

procedure TThongkeFrm.ElPopupButton5Click(Sender: TObject);
begin
   if ShowMessageUnicode(204,'',4)=7 then
    Exit;

    DBChart4.Print
end;

procedure TThongkeFrm.dxCheckEdit3Change(Sender: TObject);
begin
  DBChart4.Series[0].Marks.Visible:=dxCheckEdit3.Checked;
  DBChart4.Series[1].Marks.Visible:=dxCheckEdit3.Checked;
  DBChart4.Series[2].Marks.Visible:=dxCheckEdit3.Checked;
  DBChart4.Series[3].Marks.Visible:=dxCheckEdit3.Checked;

end;

procedure TThongkeFrm.dxCheckEdit4Change(Sender: TObject);
begin
  DBChart5.Series[0].Marks.Visible:=dxCheckEdit4.Checked;
  DBChart5.Series[1].Marks.Visible:=dxCheckEdit4.Checked;
  DBChart5.Series[2].Marks.Visible:=dxCheckEdit4.Checked;
  DBChart5.Series[3].Marks.Visible:=dxCheckEdit4.Checked;
end;

procedure TThongkeFrm.ElPopupButton7Click(Sender: TObject);
var fromperiod,toperiod : Smallint;
begin
  fromperiod := spnFromMonth.IntValue + spnFromYear.IntValue*12;
  toperiod := spnToMonth.IntValue + spnToYear.IntValue*12;
  if (fromperiod > toperiod) then
  begin
    hintbox(108,self,spnToMonth);
    exit;
  end;
  qryTKDT.Close;
  qryTKDT.ParamByName('TUKY').Value := fromperiod;
  qryTKDT.ParamByName('DENKY').Value := toperiod;
  qryTKDT.ParamByName('BRANCH_ID').Value := vpBranch_id;
  qryTKDT.Open;
end;

procedure TThongkeFrm.ElPopupButton8Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)=7 then
    Exit;
  DBChart5.Print;
end;

end.
