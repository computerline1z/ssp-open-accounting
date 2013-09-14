unit Thongke10KHForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElPgCtl, ElPanel, dxEditor;

type
  TThongke10KHFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    pcg1: TElPageControl;
    pcgObj: TElTabSheet;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxdbgrid2DOANHTHU: TdxDBGridColumn;
    dxdbgrid2CHIPHI: TdxDBGridColumn;
    dxdbgrid2tienlai: TdxDBGridColumn;
    dxdbgrid2lailo: TdxDBGridColumn;
    dxdbgrid2tienlo: TdxDBGridColumn;
    Splitter2: TSplitter;
    qryTKDT: TIBOQuery;
    dsTKDT: TDataSource;
    spnFromMonth: TdxSpinEdit;
    spnFromYear: TdxSpinEdit;
    spnToMonth: TdxSpinEdit;
    lblTo: TElLabel;
    spnToYear: TdxSpinEdit;
    ElPanel1: TElPanel;
    ElLabel1: TElLabel;
    ElPopupButton7: TElPopupButton;
    qryTKDTX: TSmallintField;
    qryTKDTMAKH: TWideStringField;
    qryTKDTTENKH: TWideStringField;
    qryTKDTDOANHTHU: TIBOFloatField;
    DBChart5: TDBChart;
    dxCheckEdit4: TdxCheckEdit;
    ElPopupButton8: TElPopupButton;
    Series1: THorizBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxCheckEdit4Change(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Thongke10KHFrm: TThongke10KHFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, HtmlHlp;

{$R *.dfm}

procedure TThongke10KHFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxDBGrid2DOANHTHU.SummaryFooterFormat:=TIENTE_FORMAT;
  qryTKDTDOANHTHU.DisplayFormat:=TIENTE_FORMAT;

  spnToYear.IntValue:=CurYear;
  spnToMonth.IntValue:=CurMonth;
  spnFromMonth.IntValue := spnToMonth.IntValue;
  spnFromYear.IntValue := spnToYear.IntValue;
  
end;

procedure TThongke10KHFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongke10KHFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TThongke10KHFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TThongke10KHFrm.dxCheckEdit4Change(Sender: TObject);
begin
  DBChart5.Series[0].Marks.Visible:=dxCheckEdit4.Checked;

end;

procedure TThongke10KHFrm.ElPopupButton7Click(Sender: TObject);
var fromperiod,toperiod,i : Smallint;
    chartseri:TChartSeries;

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
  qryTKDT.First;
  
end;

procedure TThongke10KHFrm.ElPopupButton8Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)=7 then
    Exit;
  DBChart5.Print;
end;

end.
