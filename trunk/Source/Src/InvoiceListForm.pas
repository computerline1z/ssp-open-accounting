unit InvoiceListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl, Forms,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid, dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList, DB,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  IBODataset, DBActns;

type
  TInvoiceListFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnDelete: TElPopupButton;
    btnHelp: TELPopupButton;
    btnClose: TELPopupButton;
    lciIns: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    DlgSave: TSaveDialog;
    btnIns: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnEdit: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1INVOICE_DATE: TdxDBGridDateColumn;
    dxDBGrid1INVOICE_VAT: TdxDBGridMaskColumn;
    dxDBGrid1SERIAL_NO: TdxDBGridMaskColumn;
    dxDBGrid1INVOICE_NO: TdxDBGridMaskColumn;
    dxDBGrid1CUSNAME: TdxDBGridMaskColumn;
    dxDBGrid1ITEM_NAME: TdxDBGridMaskColumn;
    dxDBGrid1NOTTAX_VALUE: TdxDBGridMaskColumn;
    dxDBGrid1TAX_VALUE: TdxDBGridMaskColumn;
    ActionList1: TActionList;
    DataSetDelete1: TDataSetDelete;
    dxDBGrid1ENTRY_ID: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceListFrm: TInvoiceListFrm;

implementation

uses MainForm, MainDataMdl, GlobalUnit, LookupFrm, InvoiceForm, HtmlHlp;

{$R *.dfm}

procedure TInvoiceListFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  HDVAT_SoTTCT := 1;

  dxDBGrid1NOTTAX_VALUE.SummaryFooterFormat := TIENTE_FORMAT;
  dxDBGrid1TAX_VALUE.SummaryFooterFormat := TIENTE_FORMAT;
  //Thinh them

  if vpBranch_IsMin = 0 then
    MainDM.qryInvoiceList.ReadOnly := TRUE
  else
    MainDM.qryInvoiceList.ReadOnly := FALSE;
end;

procedure TInvoiceListFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TInvoiceListFrm.btnInsClick(Sender: TObject);
begin
  with TInvoiceFrm.Create(Self) do
  try
    HDVAT_SoTTCT := 1;
    MainDM.qryInvoiceList.First;
    while not MainDM.qryInvoiceList.Eof do
    begin
      if MainDM.qryInvoiceListENTRY_ID.AsInteger > HDVAT_SoTTCT then
        HDVAT_SoTTCT := MainDM.qryInvoiceListENTRY_ID.AsInteger;
      MainDM.qryInvoiceList.Next;
    end;
    HDVAT_SoTTCT := HDVAT_SoTTCT + 1;

    MainDM.CurObjTypeID := 1;
    MainDM.qryInvoiceList.Insert;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TInvoiceListFrm.btnEditClick(Sender: TObject);
var
  f: TInvoiceFrm;
begin
  f := TInvoiceFrm.Create(Application);
  try
    f.ShowModal;
  finally
    f.Free;
  end;
end;

procedure TInvoiceListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    btnEditClick(Sender);
    Exit;
  end
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False, 4);
end;

procedure TInvoiceListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if VATTaxTotal <> 0 then
    VATTaxTotal := dxDBGrid1TAX_VALUE.SummaryFooterValue;
  MainDM.qryInvoiceList.Close;
end;

procedure TInvoiceListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TInvoiceListFrm.FormShow(Sender: TObject);
begin
  // Sau nay khi them phan quyen tren component thi bo dong nay di
  if (MainDM.qryDocTypeALLOWINSERT.AsInteger = 0) then
    btnIns.Enabled := False;
  if (MainDM.qryDocTypeALLOWEDIT.AsInteger = 0) then
    btnEdit.Enabled := False;
  if (MainDM.qryDocTypeALLOWDELETE.AsInteger = 0) then
    DataSetDelete1.DataSource := MainDM.dsBanana;


  //Thinh them
  if vpBranch_IsMin = 0 then
  begin
    btnIns.Enabled := FALSE;
    btnDelete.Enabled := FALSE;
    btnEdit.Enabled := FALSE;
  end // <----den day
  else
    if MainDM.qryInvoiceList.RecordCount = 0 then
      btnInsClick(Sender);

  SetVisible(Self);


end;

procedure TInvoiceListFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TInvoiceListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInvoiceListFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.

