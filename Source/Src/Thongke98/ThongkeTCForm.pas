unit ThongkeTCForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxEditor, dxDBELib;

type
  TThongkeTCFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    DBChart1: TDBChart;
    qryTKThuChi: TIBOQuery;
    dsTKThuChi: TDataSource;
    dxDBGrid1: TdxDBGrid;
    qryTKThuChiNGAY: TDateField;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    dxDBGrid1NGAY: TdxDBGridDateColumn;
    dxDBGrid1THU: TdxDBGridColumn;
    dxDBGrid1CHI: TdxDBGridColumn;
    dxDBGrid1TON: TdxDBGridColumn;
    dedtTungay: TdxDateEdit;
    dedtDenngay: TdxDateEdit;
    ElPopupButton1: TElPopupButton;
    ElLabel1: TElLabel;
    ElLabel2: TElLabel;
    dxDBPopupEdit1: TdxDBPopupEdit;
    ElLabel3: TElLabel;
    Splitter1: TSplitter;
    qryTKThuChiTHU: TIBOFloatField;
    qryTKThuChiCHI: TIBOFloatField;
    qryTKThuChiTON: TIBOFloatField;
    ElPopupButton2: TElPopupButton;
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongkeTCFrm: TThongkeTCFrm;

implementation

uses MainDataMdl, GlobalUnit, PopupForm, dxTreeGridMenus, DocListForm;

{$R *.dfm}

procedure TThongkeTCFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  
  dxDBGrid1THU.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1CHI.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1TON.SummaryFooterFormat:=TIENTE_FORMAT;

  MainDM.qryPAcc.Filtered := False;
  with MainDM do
  begin
    qryPAcc.Open;
    qryPAcc.Locate('ACCOUNT_ID','111',[]);
  end;

  dedtTungay.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dedtDenngay.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(CurYear, CurMonth)) ;

  qryTKThuChiTHU.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiCHI.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiTON.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiNGAY.DisplayFormat:=NGAYTHANG_FORMAT;

  qryTKThuChi.ParamByName('shtk').Value:='111';
  qryTKThuChi.ParamByName('tungay').AsDate:=dedtTungay.Date;
  qryTKThuChi.ParamByName('denngay').AsDate:=dedtDenngay.Date;

  qryTKThuChi.Open;
end;

procedure TThongkeTCFrm.ElPopupButton1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  qryTKThuChi.Close;
  qryTKThuChi.ParamByName('shtk').Value:=MainDM.qryPAccACCOUNT_ID.Value;
  qryTKThuChi.ParamByName('tungay').AsDate:=dedtTungay.Date;
  qryTKThuChi.ParamByName('denngay').AsDate:=dedtDenngay.Date;

  qryTKThuChi.Open;
  Screen.Cursor:=crDefault;
end;

procedure TThongkeTCFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeTCFrm.dxDBGrid1DblClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name'
      + ' FROM macro_doclistngay(:ngaylap,:ngaylap,:USERNAME) '
      + ' where tkno starting with :shtk or tkco starting with :shtk';
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('ngaylap').AsDate:=qryTKThuChiNGAY.AsDateTime;
    qryDocListAnyWhere.ParamByName('shtk').Value:=qryPAccACCOUNT_ID.Value;
    qryDocListAnyWhere.ParamByName('USERNAME').Value:=CurrentUser;
    Screen.Cursor:=crHourGlass;
    qryDocListAnyWhere.Open;
    Screen.Cursor:=crDefault;

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
    if IsPosted then
    begin
      qryTKThuChi.DisableControls;
      qryTKThuChi.Close;
      qryTKThuChi.Open;
      qryTKThuChi.EnableControls;
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
    qryTKThuChi.DisableControls;
    qryTKThuChi.Close;
    qryTKThuChi.Open;
    qryTKThuChi.EnableControls;
  end
end;

procedure TThongkeTCFrm.ElPopupButton2Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)<>7 then
    DBChart1.Print;
end;

procedure TThongkeTCFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeTCFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TThongkeTCFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  MainDM.qryPAcc.Filtered := False;
end;

end.
