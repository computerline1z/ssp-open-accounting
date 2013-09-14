unit ThongkeHMForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart,
  DB, IBODataset, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, StdCtrls, ElCLabel, ElLabel, dxEdLib, ElPgCtl,
  ElXPThemedControl, dxDBTL, ElBtnCtl, ElCheckCtl, ElPopBtn, ElPanel,
  ElGroupBox, ElCheckItemGrp, dxEditor;

type
  TThongkeHMFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    qryHMPhatsinh: TIBOQuery;
    dsTKPhatsinh: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    qryItemLst: TIBOQuery;
    dsAccLst: TDataSource;
    dxDBTreeList1ACCOUNT_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1ISSELECT: TdxDBTreeListCheckColumn;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dedtTungay: TdxDateEdit;
    dedtDenngay: TdxDateEdit;
    ElPageControl1: TElPageControl;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1TENHM: TdxDBGridMaskColumn;
    dxDBGrid1GIATRI: TdxDBGridColumn;
    ElPopupButton4: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    qryHMPhatsinhTENHM: TWideStringField;
    qryHMPhatsinhGIATRI: TIBOFloatField;
    qryItemLstACTICLE_ID: TWideStringField;
    qryItemLstPACTICLE_ID: TWideStringField;
    qryItemLstACTICLE_NO: TWideStringField;
    qryItemLstAGROUP_ID: TWideStringField;
    qryItemLstACTICLE_NAME: TWideStringField;
    qryItemLstACTICLE_LEVEL: TSmallintField;
    qryItemLstTKNO: TWideStringField;
    qryItemLstTKCO: TWideStringField;
    qryItemLstISSELECT: TSmallintField;
    qryHMPhatsinhMASO: TWideStringField;
    DBChart1: TDBChart;
    Series3: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
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
  ThongkeHMFrm: TThongkeHMFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, DocListForm, LookupFrm, HtmlHlp;

{$R *.dfm}

procedure TThongkeHMFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  dedtTungay.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dedtDenngay.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(CurYear, CurMonth)) ;

  qryItemLst.Open;

  qryHMPhatsinhGIATRI.DisplayFormat:=TIENTE_FORMAT;
  qryHMPhatsinh.ParamByName('tungay').Value:=dedtTungay.Date;
  qryHMPhatsinh.ParamByName('denngay').Value:=dedtDenngay.Date;
  qryHMPhatsinh.ParamByName('branch_id').Value:= vpBranch_id;
  qryHMPhatsinh.Open;
end;

procedure TThongkeHMFrm.ElPopupButton2Click(Sender: TObject);
begin
  qryItemLst.First;
  while not qryItemLst.Eof do
  begin
    if qryItemLstISSELECT.AsInteger=1 then
    begin
      qryItemLst.Edit;
      qryItemLstISSELECT.AsInteger:=0;
    end;
    qryItemLst.Next;
  end;
end;

procedure TThongkeHMFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TThongkeHMFrm.ElPopupButton4Click(Sender: TObject);
var
  CurHM:WideString;
begin
  CurHM:=qryItemLstACTICLE_ID.Value;

  qryItemLst.First;
  while not qryItemLst.Eof do
  begin
    if qryItemLstPACTICLE_ID.IsNull then
    if qryItemLstISSELECT.AsInteger=0 then
    begin
      qryItemLst.Edit;
      qryItemLstISSELECT.AsInteger:=1;
    end;
    qryItemLst.Next;
  end;
  qryItemLst.Locate('ACTICLE_ID',CurHM,[]);
end;

procedure TThongkeHMFrm.ElPopupButton3Click(Sender: TObject);
var
  CurHM:WideString;
begin
  CurHM:=qryItemLstACTICLE_ID.Value;

  qryItemLst.First;
  while not qryItemLst.Eof do
  begin
    if Not qryItemLstPACTICLE_ID.IsNull then
    if qryItemLstPACTICLE_ID.Value=CurHM then
    if qryItemLstISSELECT.AsInteger=0 then
    begin
      qryItemLst.Edit;
      qryItemLstISSELECT.AsInteger:=1;
    end;
    qryItemLst.Next;
  end;
  qryItemLst.Locate('ACTICLE_ID',CurHM,[]);
end;

procedure TThongkeHMFrm.ElPopupButton1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  if qryItemLst.State=dsEdit then
    qryItemLst.Post;
  qryHMPhatsinh.Close;
  qryHMPhatsinh.ParamByName('tungay').Value:=dedtTungay.Date;
  qryHMPhatsinh.ParamByName('denngay').Value:=dedtDenngay.Date;
  qryHMPhatsinh.ParamByName('branch_id').Value:= vpBranch_id;
  qryHMPhatsinh.Open;
  Screen.Cursor:=crDefault;
end;

procedure TThongkeHMFrm.ElPopupButton5Click(Sender: TObject);
begin
  if ShowMessageUnicode(204,'',4)<>7 then
    DBChart1.Print;
end;

procedure TThongkeHMFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TThongkeHMFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TThongkeHMFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
