unit ThongkeTKForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElPgCtl,
  ElXPThemedControl, dxDBTL, ElBtnCtl, ElCheckCtl, ElPopBtn, ElPanel,
  ElGroupBox, ElCheckItemGrp, TeeComma;

type
  TThongkeTKFrm = class(TForm)
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
    Series1: TPieSeries;
    Series2: TPieSeries;
    Series3: TPieSeries;
    Series4: TPieSeries;
    Series5: TPieSeries;
    Series6: TPieSeries;
    dxDBGrid1SHTK: TdxDBGridMaskColumn;
    dxDBGrid1NODK: TdxDBGridColumn;
    dxDBGrid1CODK: TdxDBGridColumn;
    dxDBGrid1NOPS: TdxDBGridColumn;
    dxDBGrid1COPS: TdxDBGridColumn;
    dxDBGrid1NOCK: TdxDBGridColumn;
    dxDBGrid1COCK: TdxDBGridColumn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElRadioGroup1: TElRadioGroup;
    qryTKPhatsinhNODK: TIBOFloatField;
    qryTKPhatsinhCODK: TIBOFloatField;
    qryTKPhatsinhNOPS: TIBOFloatField;
    qryTKPhatsinhCOPS: TIBOFloatField;
    qryTKPhatsinhNOCK: TIBOFloatField;
    qryTKPhatsinhCOCK: TIBOFloatField;
    ElPopupButton3: TElPopupButton;
    qryTKPhatsinhTENTK: TWideStringField;
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
  ThongkeTKFrm: TThongkeTKFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, DocListForm, LookupFrm;

{$R *.dfm}

procedure TThongkeTKFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  
  qryAccLst.Open;

  dxDBGrid1NODK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1CODK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1NOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1COPS.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1NOCK.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1COCK.SummaryFooterFormat:=TIENTE_FORMAT;

  qryTKPhatsinhNODK.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinhCODK.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinhNOPS.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinhCOPS.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinhNOCK.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinhCOCK.DisplayFormat:=TIENTE_FORMAT;
  qryTKPhatsinh.ParamByName('tuky').Value:=CurrentPeriod;
  qryTKPhatsinh.ParamByName('denky').Value:=CurrentPeriod;

  qryTKPhatsinh.Open;
end;

procedure TThongkeTKFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeTKFrm.ElPopupButton1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  if qryAccLst.State=dsEdit then
    qryAccLst.Post;

  qryTKPhatsinh.Close;
  qryTKPhatsinh.ParamByName('tuky').Value:=CurrentPeriod;
  qryTKPhatsinh.ParamByName('denky').Value:=CurrentPeriod;

  qryTKPhatsinh.Open;
  Screen.Cursor:=crDefault;
end;

procedure TThongkeTKFrm.ElRadioGroup1Click(Sender: TObject);
var
  i:Smallint;
begin
  for i:=0 to 5 do
  begin
    if i= ElRadioGroup1.ItemIndex then
      DBChart1.Series[i].Visible:=True
    else
      DBChart1.Series[i].Visible:=False;
  end;
end;

procedure TThongkeTKFrm.ElPopupButton2Click(Sender: TObject);
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

procedure TThongkeTKFrm.dxDBGrid1DblClick(Sender: TObject);
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

procedure TThongkeTKFrm.ElPopupButton3Click(Sender: TObject);
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

procedure TThongkeTKFrm.ElPopupButton4Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)<>7 then
    DBChart1.Print;
end;

procedure TThongkeTKFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TThongkeTKFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TThongkeTKFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
