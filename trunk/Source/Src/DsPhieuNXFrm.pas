unit DsPhieuNXFrm;

interface

uses
  Windows, Messages, SysUtils,DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxDBGrid, ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBTL,
  dxLayoutControl, cxControls, ElPanel, DB, IBODataset, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxEditor, dxEdLib, StdCtrls, ElCLabel, ElLabel,
  ActnList, MainForm, ElCaption, dxBar, dxDBTLCl, dxGrClms;

type
  TFrmDsPhieuNX = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    dbgPhieuBH: TdxDBGrid;
    Splitter2: TSplitter;
    dbgPhieuBHColumn1: TdxDBGridColumn;
    dbgPhieuBHColumn3: TdxDBGridColumn;
    qrDsPhieuNX: TIBOQuery;
    dsDsPhieuNX: TDataSource;
    qrCTPhieuNX: TIBOQuery;
    dsCTPhieuBH: TDataSource;
    dbgPhieuBHColumn5: TdxDBGridColumn;
    dbgCTPhieuBH: TdxDBGrid;
    dbgCTPhieuBHColumn1: TdxDBGridColumn;
    dbgCTPhieuBHColumn2: TdxDBGridColumn;
    dbgCTPhieuBHColumn3: TdxDBGridColumn;
    dbgCTPhieuBHColumn4: TdxDBGridColumn;
    dbgCTPhieuBHColumn5: TdxDBGridColumn;
    dbgCTPhieuBHColumn6: TdxDBGridColumn;
    dbgCTPhieuBHColumn7: TdxDBGridColumn;
    dbgCTPhieuBHColumn8: TdxDBGridColumn;
    dbgCTPhieuBHColumn9: TdxDBGridColumn;
    ActionList1: TActionList;
    acChangeDate: TAction;
    ElFormCaption1: TElFormCaption;
    dbgPhieuBHColumn7: TdxDBGridColumn;
    dbgDmLoaiNX: TdxDBGrid;
    dbgDmLoaiNXColumn1: TdxDBGridColumn;
    qrDmLoaiNX: TIBOQuery;
    dsDmLoaiNX: TDataSource;
    acKeToan: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ElPanel1: TElPanel;
    ElPanel2: TElPanel;
    ElPopupButton1: TElPopupButton;
    dxDateEdit1: TdxDateEdit;
    ElLabel2: TElLabel;
    dxDateEdit2: TdxDateEdit;
    ElLabel1: TElLabel;
    dbgPhieuBHColumn2: TdxDBGridDateColumn;
    dbgCTPhieuBHColumn10: TdxDBGridColumn;
    dbgPhieuBHColumn8: TdxDBGridColumn;
    acCT: TAction;
    procedure FormCreate(Sender: TObject);
    procedure acChangeDateExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgPhieuBHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgDmLoaiNXMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgCTPhieuBHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acCTExecute(Sender: TObject);
    procedure dbgPhieuBHDblClick(Sender: TObject);
    procedure dbgPhieuBHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private    
    function xulyngay: integer;
  public
    { Public declarations }
  end;

var
  FrmDsPhieuNX: TFrmDsPhieuNX;

implementation

uses MainDataMdl, dxTreeGridMenus, GlobalInterface, GlobalUnit;

{$R *.dfm}

procedure TFrmDsPhieuNX.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  
  if qrDmLoaiNX.Active then qrDmLoaiNX.close;
  qrDmLoaiNX.open;
  dxDateEdit1.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dxDateEdit2.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(dxDateEdit1.Date)) ;
  acChangeDate.Execute;
end;

procedure TFrmDsPhieuNX.acChangeDateExecute(Sender: TObject);
begin
  qrDsPhieuNX.close;
  with qrDsPhieuNX do
  begin
    qrCTPhieuNX.close;
    if active then close;
   // ParamByName('LOAIPHIEU').AsInteger := LoaiPhieu;
    ParamByName('NGAY').AsInteger := xulyngay;
    ParamByName('TUNGAY').AsDate := dxDateEdit1.Date;
    ParamByName('DENNGAY').AsDate := dxDateEdit2.Date;
    open;
    qrCTPhieuNX.Open;
  end;
end;

function TFrmDsPhieuNX.xulyngay: integer;
begin
 if (dxDateEdit1.Text='') and (dxDateEdit2.text='') then
    result:= 0  //khong chon ngay
  else
  if dxDateEdit1.text<>'' then //tinh tu ngay
    if dxDateEdit2.text='' then result:= 2  //khong co den ngay
    else result:= 1 //tu ngay....den ngay;
  else //khong tinh tu ngay
    result:= 3;
end;

procedure TFrmDsPhieuNX.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
  FrmDsPhieuNX := nil;
end;

procedure TFrmDsPhieuNX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrDsPhieuNX.close;
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TFrmDsPhieuNX.dbgPhieuBHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TFrmDsPhieuNX.dbgDmLoaiNXMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TFrmDsPhieuNX.dbgCTPhieuBHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TFrmDsPhieuNX.acCTExecute(Sender: TObject);
var
  KyHT:Smallint;
begin
  if dbgPhieuBH.FocusedNode<>nil then
  begin
    KyHT:=MonthOf(qrDsPhieuNX.FieldByName('NGAYLAP').AsDateTime)+YearOf(qrDsPhieuNX.FieldByName('NGAYLAP').AsDateTime)*12;
    mainDm.Suachungtu(qrDsPhieuNX.FieldByName('SOPHIEU').Value, KyHT);
  end;
end;

procedure TFrmDsPhieuNX.dbgPhieuBHDblClick(Sender: TObject);
begin
  acCT.execute;
end;

procedure TFrmDsPhieuNX.dbgPhieuBHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgPhieuBH, Key, Shift, True);
end;

procedure TFrmDsPhieuNX.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFrmDsPhieuNX.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TFrmDsPhieuNX.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
