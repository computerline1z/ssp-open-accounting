unit ThongkeBALForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxEditor, dxDBELib, TeeComma;

type
  TThongkeBALFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    DBChart1: TDBChart;
    qryTKThuChi: TIBOQuery;
    dsTKThuChi: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dedtTungay: TdxDateEdit;
    dedtDenngay: TdxDateEdit;
    ElPopupButton1: TElPopupButton;
    ElLabel1: TElLabel;
    ElLabel2: TElLabel;
    dxDBPopupEdit1: TdxDBPopupEdit;
    ElLabel3: TElLabel;
    Splitter1: TSplitter;
    ElPopupButton2: TElPopupButton;
    qryTKThuChiKYHT: TSmallintField;
    qryTKThuChiTHANG: TSmallintField;
    qryTKThuChiNAM: TSmallintField;
    qryTKThuChiNODK: TIBOFloatField;
    qryTKThuChiCODK: TIBOFloatField;
    qryTKThuChiNOPS: TIBOFloatField;
    qryTKThuChiCOPS: TIBOFloatField;
    qryTKThuChiNOCK: TIBOFloatField;
    qryTKThuChiCOCK: TIBOFloatField;
    qryTKThuChiTENTHANG: TWideStringField;
    dxDBGrid1NODK: TdxDBGridMaskColumn;
    dxDBGrid1CODK: TdxDBGridMaskColumn;
    dxDBGrid1NOPS: TdxDBGridMaskColumn;
    dxDBGrid1COPS: TdxDBGridMaskColumn;
    dxDBGrid1NOCK: TdxDBGridMaskColumn;
    dxDBGrid1COCK: TdxDBGridMaskColumn;
    dxDBGrid1TENTHANG: TdxDBGridMaskColumn;
    Series4: TBarSeries;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    dxCheckEdit1: TdxCheckEdit;
    TeeCommander1: TTeeCommander;
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxCheckEdit1Change(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongkeBALFrm: TThongkeBALFrm;

implementation

uses MainDataMdl, GlobalUnit, PopupForm, dxTreeGridMenus, DocListForm;

{$R *.dfm}

procedure TThongkeBALFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  
  dxDBGrid1NODK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1CODK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1NOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1COPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1NOCK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1COCK.SummaryFooterFormat:=TIENTE_FORMAT;

  MainDM.qryPAcc.Filtered := False;

  dedtTungay.Date:= EncodeDate(CurYear, 1,1);
  dedtDenngay.Date:=EncodeDate(CurYear, 12,31);

  qryTKThuChiNODK.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiCODK.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiNOPS.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiCOPS.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiNOCK.DisplayFormat:=TIENTE_FORMAT;
  qryTKThuChiCOCK.DisplayFormat:=TIENTE_FORMAT;
end;

procedure TThongkeBALFrm.ElPopupButton1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  qryTKThuChi.Close;
  qryTKThuChi.ParamByName('shtk').Value:=MainDM.qryPAccACCOUNT_ID.Value;
  qryTKThuChi.ParamByName('tungay').AsDate:=dedtTungay.Date;
  qryTKThuChi.ParamByName('denngay').AsDate:=dedtDenngay.Date;

  qryTKThuChi.Open;
  Screen.Cursor:=crDefault;
end;

procedure TThongkeBALFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeBALFrm.dxDBGrid1DblClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name'
      + ' FROM macro_doclistky(:kyht,:kyht,:USERNAME) '
      + ' where tkno starting with :shtk or tkco starting with :shtk';
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('kyht').Value:=qryTKThuChiKYHT.Value;
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

procedure TThongkeBALFrm.ElPopupButton2Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)<>7 then
    DBChart1.Print;
end;

procedure TThongkeBALFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeBALFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TThongkeBALFrm.dxCheckEdit1Change(Sender: TObject);
begin
  DBChart1.Series[0].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[1].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[2].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[3].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[4].Marks.Visible:=dxCheckEdit1.Checked;
  DBChart1.Series[5].Marks.Visible:=dxCheckEdit1.Checked;
end;

procedure TThongkeBALFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  MainDM.qryPAcc.Filtered := False;
end;

end.
