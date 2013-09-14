unit DsPhieuBHFrm;

interface

uses
  Windows, Messages, SysUtils,DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxDBGrid, ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBTL,
  dxLayoutControl, cxControls, ElPanel, DB, IBODataset, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxEditor, dxEdLib, StdCtrls, ElCLabel, ElLabel,
  ActnList, MainForm, ElCaption, dxBar;

type
  TFrmDsPhieuBH = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    dbgPhieuBH: TdxDBGrid;
    Splitter2: TSplitter;
    dbgLoaiBH: TdxDBTreeList;
    dxDBTreeList1Column1: TdxDBTreeListColumn;
    dbgPhieuBHColumn1: TdxDBGridColumn;
    dbgPhieuBHColumn2: TdxDBGridColumn;
    dbgPhieuBHColumn3: TdxDBGridColumn;
    qrDsPhieuBH: TIBOQuery;
    dsDsPhieuBH: TDataSource;
    qrDmLoaiBH: TIBOQuery;
    dsDmLoaiBH: TDataSource;
    qrCTPhieuBH: TIBOQuery;
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
    acKeToan: TAction;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElPanel2: TElPanel;
    ElLabel2: TElLabel;
    ElLabel1: TElLabel;
    ElPopupButton1: TElPopupButton;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dbgCTPhieuBHColumn10: TdxDBGridColumn;
    dbgPhieuBHColumn8: TdxDBGridColumn;
    acCTPhieu: TAction;
    procedure FormCreate(Sender: TObject);
    procedure acChangeDateExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgPhieuBHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgCTPhieuBHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgLoaiBHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acCTPhieuExecute(Sender: TObject);
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
  FrmDsPhieuBH: TFrmDsPhieuBH;

implementation

uses MainDataMdl, dxTreeGridMenus, GlobalUnit, GlobalInterface;

{$R *.dfm}

procedure TFrmDsPhieuBH.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  if qrDmLoaiBH.Active then qrDmLoaiBH.close;
  qrDmLoaiBH.open;

  dxDateEdit1.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dxDateEdit2.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(dxDateEdit1.Date)) ;
  acChangeDate.Execute;
end;

procedure TFrmDsPhieuBH.acChangeDateExecute(Sender: TObject);
begin
  qrDsPhieuBH.close;
  with qrDsPhieuBH do
  begin
    qrCTPhieuBH.close;
    if active then close;
    //ParamByName('LOAIPHIEU').AsInteger := LoaiPhieu;
    ParamByName('NGAY').AsInteger := xulyngay;
    ParamByName('TUNGAY').AsDate := dxDateEdit1.Date;
    ParamByName('DENNGAY').AsDate := dxDateEdit2.Date;
    open;
    qrCTPhieuBH.Open;
  end;
end;

function TFrmDsPhieuBH.xulyngay: integer;
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

procedure TFrmDsPhieuBH.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
  FrmDsPhieuBH := nil;
end;

procedure TFrmDsPhieuBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrDsPhieuBH.close;
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TFrmDsPhieuBH.dbgPhieuBHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(true).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;  
end;

procedure TFrmDsPhieuBH.dbgCTPhieuBHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit; //cho TreeList
end;

procedure TFrmDsPhieuBH.dbgLoaiBHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dbgLoaiBH, Key, Shift);
end;

procedure TFrmDsPhieuBH.acCTPhieuExecute(Sender: TObject);
var
  KyHT:Smallint;
begin
  if dbgPhieuBH.FocusedNode<>nil then
  begin
    KyHT:=MonthOf(qrDsPhieuBH.FieldByName('NGAYLAP').AsDateTime)+YearOf(qrDsPhieuBH.FieldByName('NGAYLAP').AsDateTime)*12;
    mainDm.Suachungtu(qrDsPhieuBH.FieldByName('SOPHIEU').Value, KyHT);
  end;
end;

procedure TFrmDsPhieuBH.dbgPhieuBHDblClick(Sender: TObject);
begin
  acCTPhieu.Execute;
end;

procedure TFrmDsPhieuBH.dbgPhieuBHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgPhieuBH, Key, Shift, True); 
end;

procedure TFrmDsPhieuBH.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFrmDsPhieuBH.FormActivate(Sender: TObject);
begin
   MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TFrmDsPhieuBH.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
