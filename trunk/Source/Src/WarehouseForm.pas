unit WarehouseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, dxBar,
  Forms, ElCaption, dxDBTLCl, dxGrClms, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList, dxLayout, dxGrClEx;

type
  TWarehouseFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdKho: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxDBGridCol_ID: TdxDBGridColumn;
    dxDBGridCol_Name: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGridCol_Addr: TdxDBGridColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    btnIns: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    btnDel: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    grdKhoWAREHOUSE_TYPE: TdxDBGridImageColumn;
    grdKhoMS_PPXK: TdxDBGridExtLookupColumn;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdKhoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure grdKhoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WarehouseFrm: TWarehouseFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, GlobalUnit, LookupFrm, dxTreeGridMenus, htmlhlp;

{$R *.dfm}

procedure TWarehouseFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
    dxDBGridCol_ID.CharCase := ecUpperCase;

  SetOnFormCreate(Sender as TControl);
  MainDM.qryWarehouse.Open;

  if SSPUserRight[11].IR = False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[11].DR = False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
  MainDM.qryPPXK.Open;
end;

procedure TWarehouseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryWarehouse do
  begin
    if State in [dsEdit, dsInsert] then
      Post;
    Close;
  end;
  MainDM.qryPPXK.Close;  
end;

procedure TWarehouseFrm.grdKhoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKho, Key, Shift, True);
end;

procedure TWarehouseFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKho);
end;

procedure TWarehouseFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKho);
end;

procedure TWarehouseFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKho);
end;

procedure TWarehouseFrm.grdKhoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TWarehouseFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TWarehouseFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);

  { Khong co table Sysobject
  MainDM.qrySysObj.Open;
  if MainDM.qrySysObj.Locate('OBJECT_ID', 12, []) then
    MainDM.qryWarehouse.ReadOnly := MainDM.qrySysObjACTIVE_OBJECT.AsInteger = 0;}
end;

procedure TWarehouseFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
