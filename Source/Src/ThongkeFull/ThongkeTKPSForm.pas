unit ThongkeTKPSForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElPgCtl,
  ElXPThemedControl, dxDBTL, ElBtnCtl, ElCheckCtl, ElPopBtn, ElPanel,
  ElGroupBox, ElCheckItemGrp, dxEditor, TeeComma;

type
  TThongkeTKPSFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    DBChart1: TDBChart;
    qryTKPhatsinh: TIBOQuery;
    dsTKPhatsinh: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBTreeList1: TdxDBTreeList;
    ElPageControl1: TElPageControl;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    qryAccLst: TIBOQuery;
    dsAccLst: TDataSource;
    qryAccLstACCOUNT_ID: TWideStringField;
    qryAccLstPACCOUNT_ID: TWideStringField;
    qryAccLstACCOUNT_NAME: TWideStringField;
    qryAccLstOTYPE_ID: TSmallintField;
    qryAccLstACCOUNT_TAG: TSmallintField;
    qryAccLstBALANCE_TYPE: TSmallintField;
    qryAccLstISMIN: TSmallintField;
    qryAccLstISSELECT: TSmallintField;
    dxDBTreeList1ACCOUNT_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1ISSELECT: TdxDBTreeListCheckColumn;
    qryTKPhatsinhSHTK: TWideStringField;
    Series3: TPieSeries;
    Series4: TPieSeries;
    dxDBGrid1SHTK: TdxDBGridMaskColumn;
    dxDBGrid1NOPS: TdxDBGridColumn;
    dxDBGrid1COPS: TdxDBGridColumn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElRadioGroup1: TElRadioGroup;
    qryTKPhatsinhNOPS: TIBOFloatField;
    qryTKPhatsinhCOPS: TIBOFloatField;
    ElPopupButton3: TElPopupButton;
    qryTKPhatsinhTENTK: TWideStringField;
    dxDBGrid1TENTK: TdxDBGridColumn;
    dedtTungay: TdxDateEdit;
    dedtDenngay: TdxDateEdit;
    ElPopupButton4: TElPopupButton;
    TeeCommander1: TTeeCommander;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElRadioGroup1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThongkeTKPSFrm: TThongkeTKPSFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, DocListForm, LookupFrm;

{$R *.dfm}

procedure TThongkeTKPSFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  
  qryAccLst.Open;

  dxDBGrid1NOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1COPS.SummaryFooterFormat:=TIENTE_FORMAT;

  qryTKPhatsinhNOPS.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinhCOPS.DisplayFormat:=TIENTE_FORMAT;

  dedtTungay.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dedtDenngay.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(CurYear, CurMonth)) ;

  qryTKPhatsinh.ParamByName('tungay').Value:=dedtTungay.Date;
  qryTKPhatsinh.ParamByName('denngay').Value:=dedtDenngay.Date;

  qryTKPhatsinh.Open;
end;

procedure TThongkeTKPSFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeTKPSFrm.ElPopupButton1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  if qryAccLst.State=dsEdit then
    qryAccLst.Post;

  qryTKPhatsinh.Close;
  qryTKPhatsinh.ParamByName('tungay').Value:=dedtTungay.Date;
  qryTKPhatsinh.ParamByName('denngay').Value:=dedtDenngay.Date;

  qryTKPhatsinh.Open;
  Screen.Cursor:=crDefault;
end;

procedure TThongkeTKPSFrm.ElRadioGroup1Click(Sender: TObject);
var
  i:Smallint;
begin
  for i:=0 to 1 do
  begin
    if i= ElRadioGroup1.ItemIndex then
      DBChart1.Series[i].Visible:=True
    else
      DBChart1.Series[i].Visible:=False;
  end;
end;

procedure TThongkeTKPSFrm.ElPopupButton2Click(Sender: TObject);
var
  CurSHTK:WideString;
begin
  CurSHTK:=qryAccLstACCOUNT_ID.Value;

  qryAccLst.First;
  while not qryAccLst.Eof do
  begin
    if qryAccLstISSELECT.AsInteger=1 then
    begin
      qryAccLst.Edit;
      qryAccLstISSELECT.AsInteger:=0;
    end;
    qryAccLst.Next;
  end;
  qryAccLst.Locate('ACCOUNT_ID',CurSHTK,[]);
end;

procedure TThongkeTKPSFrm.dxDBGrid1DblClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name'
      + ' FROM macro_doclistky(:kyht,:kyht,:username) '
      + ' where tkno starting with :shtk or tkco starting with :shtk';
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('kyht').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('shtk').Value:=qryTKPhatsinhSHTK.Value;
    qryDocListAnyWhere.ParamByName('username').Value:=CurrentUser;
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
      qryTKPhatsinh.DisableControls;
      qryTKPhatsinh.Close;
      qryTKPhatsinh.Open;
      qryTKPhatsinh.EnableControls;
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
    qryTKPhatsinh.DisableControls;
    qryTKPhatsinh.Close;
    qryTKPhatsinh.Open;
    qryTKPhatsinh.EnableControls;
  end;
end;

procedure TThongkeTKPSFrm.ElPopupButton3Click(Sender: TObject);
var
  CurSHTK:WideString;
begin
  CurSHTK:=qryAccLstACCOUNT_ID.Value;
  qryAccLst.First;
  while not qryAccLst.Eof do
  begin
    if Not qryAccLstPACCOUNT_ID.IsNull then
    if qryAccLstPACCOUNT_ID.Value=CurSHTK then
    if qryAccLstISSELECT.AsInteger=0 then
    begin
      qryAccLst.Edit;
      qryAccLstISSELECT.AsInteger:=1;
    end;
    qryAccLst.Next;
  end;
  qryAccLst.Locate('ACCOUNT_ID',CurSHTK,[]);
end;

procedure TThongkeTKPSFrm.ElPopupButton4Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)<>7 then
    DBChart1.Print;
end;

procedure TThongkeTKPSFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TThongkeTKPSFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeTKPSFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
