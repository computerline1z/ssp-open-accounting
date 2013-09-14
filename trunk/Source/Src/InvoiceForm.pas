unit InvoiceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels,  TntButtons,
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn, IBODataset,
  ppCtrls, ppPrnabl, ppClass, ppDB, ppDBPipe, ppBands, ppCache, ppEndUsr,
  ppComm, ppRelatv, ppProd, ppReport, ElCheckCtl, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, dxExGrEd, dxExELib, dxLayout, dxDBEdtr, ElStrUtils,
  dxGrClEx;

type
  TInvoiceFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    edtTenKH: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edtDCKH: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    edtMSThue: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtTenHHDV: TdxDBEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    edtSeri: TdxDBEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edtHoadon: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    edtNgayHD: TdxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    pedtMaKH: TdxDBPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtSTChuathue: TdxDBCalcEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtVATValue: TdxDBCalcEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnPrint: TElPopupButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dsgReportInv: TppDesigner;
    dplInvoice: TppDBPipeline;
    rptInvoice: TppReport;
    rbMV: TElRadioButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    rbMVNK: TElRadioButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    rbBR: TElRadioButton;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dplItems: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    qryItems: TIBOQuery;
    dsItems: TDataSource;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxDBGrid1: TdxDBGrid;
    locGrid: TdxLayoutItem;
    qryItemsDOC_ID: TWideStringField;
    qryItemsENTRY_ID: TSmallintField;
    qryItemsPERIOD_ID: TSmallintField;
    qryItemsDETAIL_ID: TSmallintField;
    qryItemsDETAIL_DVT: TWideStringField;
    qryItemsDETAIL_AMOUNT: TIBOFloatField;
    qryItemsDETAIL_PRICE: TIBOFloatField;
    qryItemsDETAIL_VALUE: TIBOFloatField;
    dxDBGrid1DETAIL_NAME: TdxDBGridColumn;
    dxDBGrid1DETAIL_DVT: TdxDBGridColumn;
    dxDBGrid1DETAIL_NOTE: TdxDBGridColumn;
    dxDBGrid1DETAIL_ID: TdxDBGridColumn;
    dxDBGrid1DETAIL_AMOUNT: TdxDBGridCalcColumn;
    dxDBGrid1DETAIL_PRICE: TdxDBGridCalcColumn;
    dxDBGrid1DETAIL_VALUE: TdxDBGridCalcColumn;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    rbMVTSCD: TElRadioButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item24: TdxLayoutItem;
    qryItemsDETAIL_NAME: TWideStringField;
    qryItemsDETAIL_NOTE: TWideStringField;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item26: TdxLayoutItem;
    qryPVATType: TIBOQuery;
    dsPVATType: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    qryPVATTypeVAT_ID: TSmallintField;
    qryPVATTypeVAT_NAME: TWideStringField;
    qryPVATTypeVAT_PER: TIBOFloatField;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxDBExtLookupEdit1: TdxDBExtLookupEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    qryDebitNote: TIBOQuery;
    qryDebitNoteITEMNOTE: TWideStringField;
    qryDebitNoteDEBITNOTE: TWideStringField;
    qryDebitNoteCURRENCY_ID: TWideStringField;
    qryDebitNoteTYGIAHT: TIBOFloatField;
    qryDebitNoteCOM_VALUENT: TIBOFloatField;
    qryDebitNoteCOM_VALUEVN: TIBOFloatField;
    qryDebitNoteVAT_VALUENT: TIBOFloatField;
    qryDebitNoteVAT_VALUEVN: TIBOFloatField;
    qryItemsDETAIL_VAT: TIBOFloatField;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxDBPickEdit1: TdxDBPickEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    rptInvoice2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    qryItemsBRANCH_ID: TWideStringField;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Item35: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item36: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxDBGrid1DETAIL_VAT: TdxDBGridCalcColumn;
    qryPVATTypeOTHER_ID: TWideStringField;
    chkDetailtoNote: TElCheckBox;
    dxLayoutControl1Item37: TdxLayoutItem;
    qryItemsDETAIL_PRICE_VAT: TIBOFloatField;
    qryItemsDETAIL_AMOUNT_EXT: TIBOFloatField;
    dxDBGrid1DETAIL_PRICE_VAT: TdxDBGridCalcColumn;
    dxDBGrid1DETAIL_AMOUNT_EXT: TdxDBGridCalcColumn;
    dxLayoutControl1Item34: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    qryItemsDETAIL_PERCENT: TIBOFloatField;
    dxDBGrid1DETAIL_PERCENT: TdxDBGridExtLookupColumn;
    qryPVATTypeMETHOD_ID: TSmallintField;
    qryItemsMETHOD_ID: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pedtMaKHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtMaKHExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    function KiemtraKhachhang(IsSetName:Boolean):Boolean;
    procedure PrintInvoice(FlagTH:Boolean=False);
    procedure btnPrintMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbMVClick(Sender: TObject);
    procedure rbMVNKClick(Sender: TObject);
    procedure rbBRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSTChuathueValidate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure edtVATValueValidate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryItemsDETAIL_AMOUNTChange(Sender: TField);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure qryItemsAfterDelete(DataSet: TDataSet);
    procedure ElPopupButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbMVTSCDClick(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryItemsNewRecord(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryItemsPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure dxDBExtLookupEdit1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBExtLookupEdit1InitPopup(Sender: TObject);
    procedure dxDBExtLookupEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBExtLookupEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryItemsDETAIL_VALUEChange(Sender: TField);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure chkDetailtoNote1Change(Sender: TObject);
    procedure chkDetailtoNoteClick(Sender: TObject);
    procedure qryItemsDETAIL_PRICE_VATChange(Sender: TField);
    procedure dxDBEdit7Change(Sender: TObject);
    procedure dxDBGrid1DETAIL_PERCENTCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1DETAIL_PERCENTInitPopup(Sender: TObject);
    procedure qryItemsDETAIL_PRICEChange(Sender: TField);
    procedure TinhGTPriceTax;
    procedure TinhGTPriceNotTax;
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsMETHOD_IDChange(Sender: TField);
    procedure TinhGiaTriThue;
  private
    AddInvoiceState:Boolean;
    { Private declarations }
    vat_method_id :smallint ; //PP tinh thue
    Calculating : boolean;
  public
  end;

var
  InvoiceFrm: TInvoiceFrm;

implementation

uses MainDataMdl, PopupForm, DMInterface, GlobalUnit,  GlobalInterface,
  Functions, dxTreeGridMenus, Math, HtmlHlp,Registry;

{$R *.dfm}

procedure TInvoiceFrm.FormCreate(Sender: TObject);
var Reg:TRegistry;
begin
  if prmUSEUPPERCASE then
    pedtMaKH.CharCase:=ecUpperCase;

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self,1);
  dxLayoutControl1.EndUpdate;
  maindm.qryVATList.Open;
  qryItemsDETAIL_AMOUNT.DisplayFormat :=SOLUONG_FORMAT;
  qryItemsDETAIL_AMOUNT_EXT.DisplayFormat :=SOLUONG_FORMAT;
  qryItemsDETAIL_PRICE.DisplayFormat :=TIENTE_FORMAT;
  qryItemsDETAIL_PRICE_VAT.DisplayFormat :=TIENTE_FORMAT;
  qryItemsDETAIL_VALUE.DisplayFormat :=TIENTE_FORMAT;
  qryItemsDETAIL_VAT.DisplayFormat :=TIENTE_FORMAT;
  qryItems.Open;
  MainDM.CurObjTypeID:=1;
  //Thinh them
  if vpBranch_IsMin = 0 then
    qryItems.ReadOnly := TRUE;

  Reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey(RMAIN_KEY +'\InvoiceToNote', FALSE) then
      if reg.ValueExists('InvDetailToDocNote') then
      begin
        AutoUpdateInvDocNote := reg.Readbool('InvDetailToDocNote') =TRUE;
        chkDetailtoNote.Checked :=  AutoUpdateInvDocNote ;
      end
      else
      begin
        reg.Writebool('InvDetailToDocNote',FALSE);
      end;
    reg.CloseKey;
  finally
      reg.Free;
  end;


end;

procedure TInvoiceFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with MainDM.qryInvoiceList do
    if State in [dsInsert, dsEdit] then
      Cancel;
  dxDBGrid1.SaveToRegistry(RMAIN_KEY + '\GRDINVOICE');
end;

procedure TInvoiceFrm.pedtMaKHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryInvoiceList.Edit;
    Text := vpItemID;
    qryInvoiceListOBJECT_ID.Value:=vpItemID;
    qryInvoiceListOTYPE_ID.AsInteger:=1;
    qryInvoiceListCUSNAME.Value:=vpItemName;
    qryInvoiceListCUSADDR.Value:=vpSubItem_1;
    qryInvoiceListCUSTAXCODE.Value:=vpSubItem_2;
    qryInvoiceListBANKACC.Value:=vpSubItem_3;    
  end;
end;

procedure TInvoiceFrm.pedtMaKHExit(Sender: TObject);
begin
  KiemtraKhachhang(True);
end;

function TInvoiceFrm.KiemtraKhachhang(IsSetName:Boolean):Boolean;
begin
  Result:=True;
  if Not (MainDM.qryInvoiceList.State in [dsEdit, dsInsert]) then
    exit;
  if MainDM.qryInvoiceListOBJECT_ID.IsNull then
    exit;
    
  with MainDM do
  if IsNotHasData(qryInvoiceListOBJECT_ID) then
  begin
    qryInvoiceList.Edit;
    qryInvoiceListOBJECT_ID.Clear;
    qryInvoiceListOTYPE_ID.Clear;
    exit;
  end;
  Result:=False;
  with MainDM do
  if CheckObject(qryInvoiceListOBJECT_ID.Value,1)=False then
  begin
    ShowMessageUnicode(91);
    qryInvoiceListOBJECT_ID.FocusControl;
    exit;
  end;

  with MainDM do
  if IsSetName then
  begin
    qryInvoiceList.Edit;
    qryInvoiceListOTYPE_ID.AsInteger:=1;
    if qryInvoiceListOBJECT_ID.Value <> CurObjID then
      qryInvoiceListOBJECT_ID.Value := CurObjID;
    qryInvoiceListCUSNAME.Value := CurObjName;
    qryInvoiceListCUSADDR.Value :=CurObjSub1;
    qryInvoiceListCUSTAXCODE.Value :=CurObjSub2;
  end;

  Result:=True;
end;

procedure TInvoiceFrm.BitBtn1Click(Sender: TObject);
begin
  if KiemtraKhachhang(False)=False then exit;
  if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then
    MainDM.qryInvoiceList.Post;

  if qryItems.State in [dsEdit, dsInsert] then
    qryItems.Post;

  ModalResult:= mrOk;

  qryItems.First;
  ItemsContent := '';
  while not qryItems.Eof do
  begin
      ItemsContent := ItemsContent + qryItemsDETAIL_NAME.value + ',';
      qryItems.Next;
  end

end;

procedure TInvoiceFrm.BitBtn2Click(Sender: TObject);
var
  SaveState:Smallint;
begin
  if AddInvoiceState then
  begin
    SaveState:=optConfirmDelete;
    optConfirmDelete:=0;
    MainDM.qryInvoiceList.Delete;
    optConfirmDelete:=SaveState;
  end
  else
    if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then
      MainDM.qryInvoiceList.Cancel;
end;

procedure TInvoiceFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle, 'HDSDKT.chm::/Thaotacthuongdung.htm', HH_DISPLAY_TOPIC, 0) = 0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(4);
end;
{=========Thinh sua 19-12-05=====================================}
procedure TInvoiceFrm.PrintInvoice(FlagTH:Boolean=False);
var
  Tongtien, tygia:Double;
  Sotien, Sotiena,Sotienb:WideString;
  StrMst,StrTygia :string;
  CompCap,DisplayCap:WideString;
  i,Sothutu:Smallint;

begin
  strtygia := '';
  if (MainDM.qryInvoiceListTYGIA.IsNull) or (MainDM.qryInvoiceListTYGIA.AsFloat = 0) then
    tygia := 1
  else
    tygia := MainDM.qryInvoiceListTYGIA.AsFloat;

  if tygia <> 1 then
      strtygia := 'TG : ' + FloatToStr(maindm.qryInvoiceListTYGIA.value) + ' VND/' +maindm.qryInvoiceListCURRENCY_ID.Value;

  if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then
    MainDM.qryInvoiceList.Post;

  if qryItems.State in [dsEdit, dsInsert] then
    qryItems.Post;

  with MainDM do
  begin

    StrMst:=qryInvoiceListCUSTAXCODE.AsString;
    Tongtien:=qryInvoiceListNOTTAX_VALUE.AsFloat+qryInvoiceListTAX_VALUE.AsFloat;
    if Tongtien>0 then
      if CurLanguage <> 2 then
        Sotien:= DocSoThanhChu(FloatToStr(Tongtien))
      else
        Sotien:= DocSoThanhChu_Eng(FloatToStr(Tongtien),'VND')
    else
      if CurLanguage <> 2 then
        Sotien:= DocSoThanhChu(FloatToStr(-Tongtien))
      else
        Sotien:= DocSoThanhChu_Eng(FloatToStr(-Tongtien),'VND');




    CatDoiChuoi(Sotien,StrToInt(ReadValueFromInniFile('HoadonVAT','PrintOptions','67')));
    Sotiena:= StrOutput1;
    Sotienb:= StrOutput2;

   end;

  if FlagTH then
    begin
      rptInvoice2.Template.FileName := TemplatePath+ 'Hoadon\HDVATTH.rtm';
      if not FileExists(rptInvoice2.Template.FileName) then
        begin
          ShowMessageUnicode(107);
          exit;
        end;
    end
  else
    begin
      rptInvoice.Template.FileName := TemplatePath+ 'Hoadon\HDVAT.rtm';
      if not FileExists(rptInvoice.Template.FileName) then
        begin
          ShowMessageUnicode(107);
          exit;
        end;
    end;

  StrMst:=StringReplace(StrMst,'-','',[rfReplaceAll]);
  StrMst:=StringReplace(StrMst,' ','',[rfReplaceAll]);

  if FlagTH then
    rptInvoice2.Template.LoadFromFile
  else
    rptInvoice.Template.LoadFromFile;

  //--Bat dau set caption----------
  for i:=0 to Self.ComponentCount-1 do
  if (Components[i] is TppLabel) then
  begin
    DisplayCap:='///\\\';
    CompCap:=(Components[i] as TppLabel).Caption;
    for Sothutu:=1 to 15 do
    begin
      if CompCap=IntToStr(Sothutu) then
      begin
        if Sothutu>Length(StrMst) then
          DisplayCap := ''
        else
          DisplayCap := copy(StrMst,Sothutu,1);
      end;
    end;

    if CompCap='lblTongtien' then
      DisplayCap:= FormatFloat(TIENTE_FORMAT,Tongtien)
    else if CompCap='lblsotiena' then
      DisplayCap:= Sotiena
    else if CompCap='lblsotienb' then
      DisplayCap:= Sotienb
    else if CompCap='lblsotien' then
      DisplayCap:= Sotien
    else if CompCap='NamHT' then
      DisplayCap:= Copy(IntToStr(CurYear),4,1)
    else if CompCap='lbltygia' then
      DisplayCap:= StrTygia;

    if DisplayCap<>'///\\\' then
      (Components[i] as TppLabel).Caption:=DisplayCap;
  end;
  //--Ket thuc phan setcaption
  rptInvoice2.PreviewFormSettings.WindowState:=wsMaximized;
  rptInvoice2.PreviewFormSettings.ZoomPercentage:=100;
  rptInvoice.PreviewFormSettings.WindowState:=wsMaximized;
  rptInvoice.PreviewFormSettings.ZoomPercentage:=100;

  if FlagTH then
    begin
     rptInvoice2.Print;
  //thuyttb dong, mo
{       If Not rptInvoice2.PrintReport then
          ShowMessageUnicode(210);}
    end
  else
    begin
    rptInvoice.Print;
  //thuyttb dong, mo
{      If Not rptInvoice.PrintReport then
        ShowMessageUnicode(210);}
     end;
end;

procedure TInvoiceFrm.btnPrintMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button<>mbRight then exit;

  rptInvoice.Template.FileName := TemplatePath+ 'Hoadon\HDVAT.rtm';

  if not FileExists(rptInvoice.Template.FileName) then
  begin
    ShowMessageUnicode(107);
    exit;
  end;
  rptInvoice.Template.LoadFromFile;

  dsgReportInv.ShowModal;

end;

procedure TInvoiceFrm.rbMVClick(Sender: TObject);
begin
  MainDM.qryInvoiceList.Edit;
  MainDM.qryInvoiceListLOAIHD.AsInteger:=1;
  btnPrint.Enabled:=False;
  dxDBGrid1.Enabled:=False;
end;

procedure TInvoiceFrm.rbMVNKClick(Sender: TObject);
begin
  MainDM.qryInvoiceList.Edit;
  MainDM.qryInvoiceListLOAIHD.AsInteger:=2;
  btnPrint.Enabled:=False;
  dxDBGrid1.Enabled:=False;
end;

procedure TInvoiceFrm.rbBRClick(Sender: TObject);
begin
  MainDM.qryInvoiceList.Edit;
  MainDM.qryInvoiceListLOAIHD.AsInteger:=-1;
  btnPrint.Enabled:=True;
  dxDBGrid1.Enabled:=True;
end;

procedure TInvoiceFrm.FormShow(Sender: TObject);
begin
  AddInvoiceState:=MainDM.qryInvoiceList.State=dsInsert;

  dxDBPickEdit1.Items.Add(UTF8Decode('Tiền mặt'));
  dxDBPickEdit1.Items.Add(UTF8Decode('Chuyển khoản'));
  dxDBPickEdit1.Items.Add(UTF8Decode('Công nợ'));
  dxDBPickEdit1.Items.Add(UTF8Decode('Khác'));

 with MainDM do
 begin
 //thuyttb sua bug5.0
   if (qryInvoiceListLOAIHD.IsNull) then
   begin
     qryInvoiceList.Edit;
     qryInvoiceListLOAIHD.AsInteger:=HDVAT_LOAIHD;
   end;
   case qryInvoiceListLOAIHD.AsInteger of
         1: rbMV.Checked:=True;
         2: rbMVNK.Checked:=True;
         3: rbMVTSCD.Checked:=True;
        -1: rbBR.Checked:=True;
   end;
 end;  
   HDVAT_LOAIHD:=MainDM.qryInvoiceListLOAIHD.AsInteger;
 //end thuyttb sua bug5.0

  btnPrint.Enabled:=MainDM.qryInvoiceListLOAIHD.AsInteger=-1;
  dxDBGrid1.Enabled:=(MainDM.qryInvoiceListLOAIHD.AsInteger=-1);
  btnPrint.Enabled:=(MainDM.qryInvoiceListLOAIHD.AsInteger=-1);

  // tradtt them: sua loi 1758 - tren hoa don ban ra khong cho chon phan loai HD
  dxDBPopupEdit1.Enabled:= MainDM.qryInvoiceListLOAIHD.AsInteger<>-1;
  
  dxDBGrid1.LoadFromRegistry(RMAIN_KEY + '\GRDINVOICE');
  SetVisible(Self);
end;

procedure TInvoiceFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
  if HtmlHelp(Self.handle, 'HDSDKT.chm::/Thaotacthuongdung.htm', HH_DISPLAY_TOPIC, 0) = 0 then
    ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInvoiceFrm.edtSTChuathueValidate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if edtSTChuathue.Text='' then
    edtSTChuathue.Text:='0';
end;

procedure TInvoiceFrm.edtVATValueValidate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if edtVATValue.Text='' then
    edtVATValue.Text:='0';
end;

procedure TInvoiceFrm.dxDBGrid1Enter(Sender: TObject);
var
  i:Smallint;
  Str,StrDebit:String;
begin
  if KiemtraKhachhang(False)=False then exit;
  if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then
    MainDM.qryInvoiceList.Post;

  if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then Exit;
  if qryItems.RecordCount<>0 then Exit;
  qryCurDocEntry.First;
  i:=1;
  maindm.qryVATList.Open;
  Calculating := true;

  while not qryCurDocEntry.Eof do
  begin
    Str:= copy(qryCurDocEntry.FieldByName('CREDIT_ACC').AsString,1,1);
    StrDebit:= copy(qryCurDocEntry.FieldByName('DEBIT_ACC').AsString,1,2);
    if ((Str='5') or (Str='7')) or ((strdebit = '11') and (str <> '3')) or (strdebit = '52') then
    if ((MainDM.qryInvoiceListOBJECT_ID.IsNull)
        or (qryCurDocEntry.FieldByName('DEBIT_OBJ').IsNull)
        //or (qryCurDocEntry.FieldByName('DEBIT_OBJ').Value=MainDM.qryInvoiceListOBJECT_ID.Value)
        or (qryCurDocEntry.FieldByName('DEBIT_DETAIL').Value=MainDM.qryInvoiceListOBJECT_ID.Value)
        or (qryCurDocEntry.FieldByName('DEBIT_DTYPE').value = 1)
        or (strdebit = '52')) then
    begin
      if qryCurDocEntry.FieldByName('DEBIT_DTYPE').AsInteger=8 then//Doanh thu HH Bh
      begin
        qryDebitNote.Close;
        qryDebitNote.ParamByName('DOC_ID').Value:=MainDM.qryInvoiceListDOC_ID.Value;
        qryDebitNote.ParamByName('KYHT').AsInteger:=MainDM.qryInvoiceListPERIOD_ID.AsInteger;
        qryDebitNote.ParamByName('INSURER').Value:=MainDM.qryInvoiceListOBJECT_ID.Value;
        qryDebitNote.ParamByName('PTHH').AsInteger:=MainDM.qryInvoiceListINVOICE_VAT.AsInteger;
        if MainDM.qryInvoiceListVAT_ID.AsInteger<100 then
          qryDebitNote.ParamByName('LOAIHH').Value:=0
        else
          qryDebitNote.ParamByName('LOAIHH').Value:=1;

        qryDebitNote.Open;
        while Not qryDebitNote.Eof do
          begin
            qryItems.Append;
            qryItemsDETAIL_NAME.Value:=qryDebitNoteITEMNOTE.Value;
            qryItemsDETAIL_DVT.Value:=qryDebitNoteCURRENCY_ID.Value;
            qryItemsDETAIL_AMOUNT.AsFloat:=qryDebitNoteCOM_VALUENT.AsFloat;
            qryItemsDETAIL_PRICE.AsFloat:=qryDebitNoteTYGIAHT.AsFloat;
            qryItemsDETAIL_VALUE.AsFloat:=qryDebitNoteCOM_VALUEVN.AsFloat;
            qryItemsDETAIL_VAT.AsFloat:=qryDebitNoteVAT_VALUEVN.AsFloat;

            qryItems.Post;
            qryDebitNote.Next;
          end;
          Exit;
      end
      else
      begin

        qryItems.Append;
        qryItemsDETAIL_AMOUNT_EXT.Value := 1;
        if Not qryCurDocEntry.FieldByName('TENDTCO').IsNull then
          qryItemsDETAIL_NAME.Value:=qryCurDocEntry.FieldByName('TENDTCO').Value;
        if (Not qryCurDocEntry.FieldByName('TENYTCO').IsNull) and
           ((qryCurDocEntry.FieldByName('CREDIT_TYPE').value <> 2) and (qryCurDocEntry.FieldByName('CREDIT_TYPE').value <> 12))then
          qryItemsDETAIL_NAME.Value:=qryCurDocEntry.FieldByName('TENYTCO').Value;

        if (Not qryCurDocEntry.FieldByName('SUBCO_2').IsNull)
          and ((qryCurDocEntry.FieldByName('CREDIT_TYPE').value = 2) or (qryCurDocEntry.FieldByName('CREDIT_TYPE').value = 12)) then
          qryItemsDETAIL_DVT.Value:=qryCurDocEntry.FieldByName('SUBCO_2').Value;
        qryItemsDETAIL_AMOUNT.AsFloat:=qryCurDocEntry.FieldByName('ENTRY_AMOUNT').AsFloat;
        {if qryItemsDETAIL_AMOUNT.AsFloat=0 then
          qryItemsDETAIL_AMOUNT.AsFloat:=1;}
        qryItemsDETAIL_AMOUNT_EXT.AsFloat:=qryCurDocEntry.FieldByName('ENTRY_QUANTITY').AsFloat;
        {if qryItemsDETAIL_AMOUNT_EXT.AsFloat=0 then
          qryItemsDETAIL_AMOUNT_EXT.AsFloat:=1;}

        if not qryCurDocEntry.FieldByName('VAT_ID').IsNull then
        begin
          maindm.qryVATList.Locate('VAT_ID',IntToStr(qryCurDocEntry.FieldByName('VAT_ID').AsInteger),[]);
          qryItemsDETAIL_PERCENT.AsFloat:=maindm.qryVATListVAT_PER.Value;
        end
        else
          qryItemsDETAIL_PERCENT.AsFloat := MainDM.qryInvoiceListINVOICE_VAT.Value;

        if qryCurDocEntry.FieldByName('METHOD_ID').IsNull then
        begin
            qryItemsMETHOD_ID.Value:= 10
        end
        else qryItemsMETHOD_ID.Value:=qryCurDocEntry.FieldByName('METHOD_ID').Value;//maindm.qryVATListMETHOD_ID.Value;
         // tradtt them: sua loi khong cap nhat dg thue dong dau
        Calculating := false;

        if (maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value='VND') then
          qryItemsDETAIL_PRICE.AsFloat:=qryCurDocEntry.FieldByName('ENTRY_PRICE').AsFloat*qryCurDocEntry.FieldByName('TYGIANT').AsFloat
        else
          qryItemsDETAIL_PRICE.AsFloat:=qryCurDocEntry.FieldByName('ENTRY_PRICE').AsFloat;

        if qryItemsDETAIL_PRICE.Value = 0 then
            qryItemsDETAIL_PRICE_VAT.Value := qryCurDocEntry.FieldByName('ENTRY_PRICE_VAT').AsFloat;

        if copy(qryCurDocEntry.FieldByName('debit_acc').AsString,1,3) = '521' then
        begin
            qryItemsDETAIL_PRICE.Value := -qryCurDocEntry.FieldByName('ENTRY_PRICE').AsFloat;
            qryItemsDETAIL_PRICE_VAT.Value := -qryCurDocEntry.FieldByName('ENTRY_PRICE_VAT').AsFloat;
            if not qryCurDocEntry.FieldByName('tendtno').IsNull then
              qryItemsDETAIL_NAME.Value := qryCurDocEntry.FieldByName('tendtno').Value
            else qryItemsDETAIL_NAME.Value := '';
            qryItemsDETAIL_VALUE.Value := -qryCurDocEntry.FieldByName('entry_value').Value;

        end

      end;
      if qryItems.State=dsInsert then
      begin
        if Not qryCurDocEntry.FieldByName('ENTRY_VALUE').IsNull
          and (maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value='VND') then
            qryItemsDETAIL_VALUE.Value:=qryCurDocEntry.FieldByName('ENTRY_VALUE').Value;

        if copy(qryCurDocEntry.FieldByName('debit_acc').AsString,1,3) = '521' then
            qryItemsDETAIL_VALUE.Value:=-qryCurDocEntry.FieldByName('ENTRY_VALUE').Value;

        tinhgiatrithue;

        qryItemsDOC_ID.Value:=MainDM.qryInvoiceListDOC_ID.Value;
        qryItemsPERIOD_ID.Value:=MainDM.qryInvoiceListPERIOD_ID.Value;
        qryItemsENTRY_ID.Value:=MainDM.qryInvoiceListENTRY_ID.Value;
        qryItemsDETAIL_ID.Value:=i;

        if Not qryCurDocEntry.FieldByName('ENTRY_NOTE').IsNull then
          qryItemsDETAIL_NOTE.Value:=qryCurDocEntry.FieldByName('ENTRY_NOTE').Value;

        qryItems.Post;
        i:=i+1;
      end;
    end;
    qryCurDocEntry.Next;
  end;
  if qryItems.RecordCount = 0 then
    qryItems.Insert;
end;

procedure TInvoiceFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TInvoiceFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TInvoiceFrm.qryItemsDETAIL_AMOUNTChange(Sender: TField);
var amount1,amount2:double;
begin
 if qryItemsDETAIL_AMOUNT.Value = 0 then amount1 := 1
  else amount1 := qryItemsDETAIL_AMOUNT.Value;

  if qryItemsDETAIL_AMOUNT_EXT.AsFloat = 0 then amount2 := 1
  else amount2 := qryItemsDETAIL_AMOUNT_EXT.Value;
  amount1 := amount1*amount2;

  if qryItemsDETAIL_PERCENT.IsNull then
  begin
    exit;//qryItemsDETAIL_PRICE_VAT.value := qryItemsDETAIL_PRICE.value;

  end;
  if qryItemsMETHOD_ID.Value = 10 then
    TinhGTPriceTax
  else
    TinhGTPriceNotTax;

  if (maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND') then
  begin
    //qryItemsDETAIL_VAT.AsFloat := roundto(qryItemsDETAIL_VAT.AsFloat*amount1,-prmDECIMALTT_LEN);
    qryItemsDETAIL_VALUE.AsFloat := roundto(qryItemsDETAIL_PRICE.AsFloat*amount1,-prmDECIMALTT_LEN)
  end
  else
  begin
    //qryItemsDETAIL_VAT.AsFloat := roundto(qryItemsDETAIL_VAT.AsFloat*amount1,-2);
    qryItemsDETAIL_VALUE.AsFloat := roundto(qryItemsDETAIL_PRICE.AsFloat*amount1,-2);
  end


end;

procedure TInvoiceFrm.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  if qryitems.state in [dsedit,dsinsert] then
    qryitems.post;
    
  if MainDM.qryDocTypeALLOWEDIT.AsInteger=0 then
  begin
    ShowMessageUnicode(25);
    Abort;
    Exit;
  end;

  if optConfirmDelete=1 then
  if ShowMessageUnicode( 23,'', 4)=7 then
    Abort;
end;

procedure TInvoiceFrm.qryItemsAfterInsert(DataSet: TDataSet);
begin
  qryItemsDETAIL_NAME.FocusControl;
end;

procedure TInvoiceFrm.qryItemsAfterPost(DataSet: TDataSet);
var
  Tienhang,Tienthue,tygia : Double;

begin
  if (MainDM.qryInvoiceListTYGIA.IsNull) or (MainDM.qryInvoiceListTYGIA.AsFloat = 0) then
    tygia := 1
  else
    tygia := MainDM.qryInvoiceListTYGIA.AsFloat;

  Tienhang:=0;
  Tienthue:=0;
  {qryItems.First;
  while not qryItems.Eof do
  begin

    Tienhang:=Tienhang+(qryItemsDETAIL_VALUE.AsFloat * tygia);
    Tienthue:=Tienthue+(qryItemsDETAIL_VAT.AsFloat * tygia);

    qryItems.Next;
  end;}
  maindm.qryCommon.sql.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select sum(DETAIL_VALUE) DETAIL_VALUE, sum(DETAIL_VAT) DETAIL_VAT from INVOICE_DETAIL where DOC_ID=:DOC_ID and ENTRY_ID=:ENTRY_ID and PERIOD_ID=:PERIOD_ID and BRANCH_ID =:BRANCH_ID';
  maindm.qryCommon.ParamByName('BRANCH_ID').Value := MainDM.qryInvoiceListBRANCH_ID.value;
  maindm.qryCommon.ParamByName('DOC_ID').Value := MainDM.qryInvoiceListDOC_ID.value;
  maindm.qryCommon.ParamByName('ENTRY_ID').Value := MainDM.qryInvoiceListENTRY_ID.value;
  maindm.qryCommon.ParamByName('PERIOD_ID').Value := MainDM.qryInvoiceListPERIOD_ID.value;
  maindm.qryCommon.open;

  if maindm.qryCommon.fieldbyname('DETAIL_VALUE').IsNull then
    Tienhang := 0
  else
    Tienhang := maindm.qryCommon.fieldbyname('DETAIL_VALUE').value * tygia;
  if maindm.qryCommon.fieldbyname('DETAIL_VAT').IsNull then
    Tienthue := 0
  else
    Tienthue := maindm.qryCommon.fieldbyname('DETAIL_VAT').value * tygia;

  if (MainDM.qryInvoiceListNOTTAX_VALUE.AsFloat ) <>Tienhang then
  begin
    MainDM.qryInvoiceList.Edit;
    MainDM.qryInvoiceListNOTTAX_VALUE.AsFloat:=roundto(Tienhang,-prmDECIMALTT_LEN);
  end;
  if (MainDM.qryInvoiceListTAX_VALUE.AsFloat ) <>Tienthue then
  begin
    MainDM.qryInvoiceList.Edit;
    MainDM.qryInvoiceListTAX_VALUE.AsFloat:=roundto(Tienthue,-prmDECIMALTT_LEN);
  end;

  if MainDM.qryInvoiceList.State in [dsInsert,dsEdit] then
    MainDM.qryInvoiceList.Post;

  Calculating:=FALSE;
end;

procedure TInvoiceFrm.qryItemsAfterDelete(DataSet: TDataSet);
begin
  qryItemsAfterPost(DataSet);
end;

procedure TInvoiceFrm.ElPopupButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button<>mbRight then exit;

  rptInvoice2.Template.FileName := TemplatePath+ 'Hoadon\HDVATTH.rtm';

  if not FileExists(rptInvoice2.Template.FileName) then
  begin
    ShowMessageUnicode(107);
    exit;
  end;
  rptInvoice2.Template.LoadFromFile;
  dsgReportInv.ShowModal;
end;

procedure TInvoiceFrm.btnPrintClick(Sender: TObject);
begin
  PrintInvoice(False);

end;
{********************************************************************}
procedure TInvoiceFrm.ElPopupButton1Click(Sender: TObject);
begin
  PrintInvoice(True);

end;

procedure TInvoiceFrm.ElPopupButton2Click(Sender: TObject);
begin
  if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then
    MainDM.qryInvoiceList.Post;

  if qryItems.State in [dsEdit, dsInsert] then
    qryItems.Post;

  rptInvoice.Template.FileName := TemplatePath+ 'Hoadon\DANHSACH.rtm';

  if not FileExists(rptInvoice.Template.FileName) then
  begin
    ShowMessageUnicode(107);
    exit;
  end;
  rptInvoice.Template.LoadFromFile;

  rptInvoice.PreviewFormSettings.WindowState:=wsMaximized;
  rptInvoice.PreviewFormSettings.ZoomPercentage:=100;
  //thuyttb dong
  // tradtt: mo ra lai do loi 1774, khong hieu vi sao chi Thuy dong ???????
    If Not rptInvoice.PrintReport then
    ShowMessageUnicode(210);
end;

procedure TInvoiceFrm.ElPopupButton2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button<>mbRight then exit;

  rptInvoice.Template.FileName := TemplatePath+ 'Hoadon\Danhsach.rtm';

  if not FileExists(rptInvoice.Template.FileName) then
  begin
    ShowMessageUnicode(107);
    exit;
  end;
  rptInvoice.Template.LoadFromFile;

  dsgReportInv.ShowModal;

end;

procedure TInvoiceFrm.rbMVTSCDClick(Sender: TObject);
begin
  MainDM.qryInvoiceList.Edit;
  MainDM.qryInvoiceListLOAIHD.AsInteger:=3;
  btnPrint.Enabled:=False;
  dxDBGrid1.Enabled:=False;
end;

procedure TInvoiceFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPInvTypeINVTYPE_ID.Value;
end;

procedure TInvoiceFrm.qryItemsNewRecord(DataSet: TDataSet);
begin
  qryPVATType.Open;
  qryPVATType.Locate('VAT_ID',MainDM.qryInvoiceListVAT_ID.Value,[]);
  qryItemsMETHOD_ID.Value:= qryPVATTypeMETHOD_ID.Value;
  qryItemsDETAIL_ID.AsInteger:=qryItems.RecNo;
  qryItemsDOC_ID.Value:=MainDM.qryInvoiceListDOC_ID.Value;
  qryItemsPERIOD_ID.Value:=MainDM.qryInvoiceListPERIOD_ID.Value;
  qryItemsENTRY_ID.Value:=MainDM.qryInvoiceListENTRY_ID.Value;
  qryItemsDETAIL_PERCENT.Value := MainDM.qryInvoiceListINVOICE_VAT.Value;
  qryItemsDETAIL_AMOUNT_EXT.Value := 1;
  if ((qryItemsDETAIL_PRICE_VAT.AsFloat <> 0 ) or (not qryItemsDETAIL_PRICE_VAT.IsNull ))
    and (qryItemsMETHOD_ID.Value = 10) and (not qryItemsDETAIL_PERCENT.IsNull) then
    qryItemsDETAIL_VAT.AsFloat := qryItemsDETAIL_VALUE.Value * qryItemsDETAIL_PERCENT.Value ;
end;

procedure TInvoiceFrm.qryItemsBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TInvoiceFrm.qryItemsPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ProcessErr(E,'');
  qryItemsDETAIL_ID.AsInteger:=qryItemsDETAIL_ID.AsInteger+1;
  qryItemsDETAIL_ID.FocusControl;
end;

procedure TInvoiceFrm.ElPopupButton3Click(Sender: TObject);
begin
  if KiemtraKhachhang(False)=False then exit;
  if MainDM.qryInvoiceList.State in [dsEdit, dsInsert] then
    MainDM.qryInvoiceList.Post;

  if qryItems.State in [dsEdit, dsInsert] then
    qryItems.Post;


  HDVAT_SoTTCT:=1;
  MainDM.qryInvoiceList.First;
  while Not MainDM.qryInvoiceList.Eof do
  begin
    if MainDM.qryInvoiceListENTRY_ID.AsInteger>HDVAT_SoTTCT then
      HDVAT_SoTTCT:= MainDM.qryInvoiceListENTRY_ID.AsInteger;
    MainDM.qryInvoiceList.Next;
  end;
  HDVAT_SoTTCT:=HDVAT_SoTTCT+1;
{dong sua bug 5.0 ID_1223}
//  HDVAT_LOAIHD := 1;
{end dong sua bug 5.0 ID_1223}
  MainDM.CurObjTypeID:=1;

  MainDM.qryInvoiceList.Append;
{them sua bug 5.0 ID_1223}
  MainDM.qryInvoiceListLOAIHD.AsInteger:=HDVAT_LOAIHD;
  case MainDM.qryInvoiceListLOAIHD.AsInteger of
         1: rbMV.Checked:=True;
         2: rbMVNK.Checked:=True;
         3: rbMVTSCD.Checked:=True;
        -1: rbBR.Checked:=True;
  end;
{end them sua bug 5.0 ID_1223}
end;


procedure TInvoiceFrm.dxDBExtLookupEdit1CloseUp(Sender: TObject;
var Text: WideString; var Accept: Boolean);
var bk : TBookmark;
  updatevatdetail:bool;

begin
  updatevatdetail := FALSE;
  if vpBranch_IsMin <> 1 then exit;

  if Accept then
  begin
//    if (not qryItems.Active) or (not qryItems.RecordCount = 0) then
    if ((qryItems.Active) and (qryItems.RecordCount > 0)) then  
    If ShowMessageUnicode(263,'',4) <> 7 then
      updatevatdetail := TRUE;

    Text := qryPVATTypeVAT_NAME.Value;
    MainDM.qryInvoiceList.Edit;
    MainDM.qryInvoiceListVAT_ID.AsInteger:=qryPVATTypeVAT_ID.AsInteger;
    vat_method_id := qryPVATTypeMETHOD_ID.Value;
{    if qryPVATTypeVAT_PER.IsNull then
      MainDM.qryInvoiceListINVOICE_VAT.Clear
    else}
      begin
      MainDM.qryInvoiceListINVOICE_VAT.Value:=qryPVATTypeVAT_PER.Value;
      MainDM.qryInvoiceListOTHER_ID.Value := qryPVATTypeOTHER_ID.Value;
      qryItems.First;
      while not qryItems.Eof do
      begin
        bk := qryItems.GetBookmark;
        qryItems.Edit;
        if updatevatdetail then
        begin
          qryItemsDETAIL_PERCENT.Value := MainDM.qryInvoiceListINVOICE_VAT.Value;
          qryItemsMETHOD_ID.Value:=vat_method_id;
          //qryItemsDETAIL_VAT.AsFloat:=qryItemsDETAIL_VALUE.AsFloat*MainDM.qryInvoiceListINVOICE_VAT.AsFloat/100;
        end;
        if qryItemsMETHOD_ID.Value = 10 then
            TinhGTPriceTax
          else
            TinhGTPriceNotTax;

        qryItems.POst;
        qryItems.GotoBookmark(bk);
        qryItems.Next;
      end;
      //----//
    end; //else
  end;
end;

procedure TInvoiceFrm.dxDBExtLookupEdit1InitPopup(Sender: TObject);
begin
  qryPVATType.Open;
end;

procedure TInvoiceFrm.dxDBExtLookupEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:=#0;
end;

procedure TInvoiceFrm.dxDBExtLookupEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Key=VK_Delete) or (Key=VK_Back)) then
    Key:=0;
end;

procedure TInvoiceFrm.qryItemsDETAIL_VALUEChange(Sender: TField);
begin

  //Calculating := FALSE;
end;

procedure TInvoiceFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    text := maindm.qryPCurrencyCURRENCY_ID.Value;
    maindm.qryInvoiceList.Edit;
    maindm.qryInvoiceListCURRENCY_ID.Value :=maindm.qryPCurrencyCURRENCY_ID.Value;
    
  end
end;

procedure TInvoiceFrm.chkDetailtoNote1Change(Sender: TObject);
var   Reg: TRegistry;
begin
  AutoUpdateInvDocNote := chkDetailtoNote.Checked;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY +'\InvoiceToNote',True) then
    begin
      reg.Writebool('InvDetailToDocNote',chkDetailtoNote.Checked);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TInvoiceFrm.chkDetailtoNoteClick(Sender: TObject);
var REG: tregistry;
begin
AutoUpdateInvDocNote := chkDetailtoNote.Checked;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY +'\InvoiceToNote',True) then
    begin
      reg.Writebool('InvDetailToDocNote',chkDetailtoNote.Checked);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TInvoiceFrm.qryItemsDETAIL_PRICE_VATChange(Sender: TField);
var amount1,amount2:double;
begin

 if qryItemsDETAIL_AMOUNT.AsFloat = 0 then amount1 := 1
  else amount1 := qryItemsDETAIL_AMOUNT.Value;

  if qryItemsDETAIL_AMOUNT_EXT.AsFloat = 0 then amount2 := 1
  else amount2 := qryItemsDETAIL_AMOUNT_EXT.Value;
  amount1 := amount1*amount2;

  if qryItemsDETAIL_PERCENT.IsNull then
  begin
    qryItemsDETAIL_VAT.Clear;
    //qryItemsDETAIL_PRICE.Value := qryItemsDETAIL_PRICE_VAT.Value;
    exit;
  end;
  TinhGTPriceNotTax;

  if (maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND') then
    qryItemsDETAIL_VALUE.AsFloat := roundto(amount1*qryItemsDETAIL_PRICE.AsFloat,-prmDECIMALTT_LEN)
  else
    qryItemsDETAIL_VALUE.AsFloat := roundto(amount1*qryItemsDETAIL_PRICE.AsFloat,-2);

end;

procedure TInvoiceFrm.dxDBEdit7Change(Sender: TObject);

begin
  MainDM.qryInvoiceList.Edit;
  MainDM.qryInvoiceList.Post;
  qryItems.Edit;
  qryItems.Post;

end;

procedure TInvoiceFrm.dxDBGrid1DETAIL_PERCENTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  If accept Then
  begin
    qryItems.Edit;
    text := FloatToStr(qryPVATTypeVAT_PER.Value);
    qryItemsDETAIL_PERCENT.Value := qryPVATTypeVAT_PER.Value;
    qryItemsMETHOD_ID.Value:= qryPVATTypeMETHOD_ID.Value;

  end
end;

procedure TInvoiceFrm.dxDBGrid1DETAIL_PERCENTInitPopup(Sender: TObject);
begin
  qryPVATType.Open;
end;

procedure TInvoiceFrm.qryItemsDETAIL_PRICEChange(Sender: TField);
var amount1,amount2 :double;
begin
  if qryItemsDETAIL_AMOUNT.AsFloat = 0 then amount1 := 1
  else amount1 := qryItemsDETAIL_AMOUNT.Value;

  if qryItemsDETAIL_AMOUNT_EXT.AsFloat = 0 then amount2 := 1
  else amount2 := qryItemsDETAIL_AMOUNT_EXT.Value;
  amount1 := amount1*amount2;

  if qryItemsDETAIL_PERCENT.IsNull then
  begin
    //qryItemsDETAIL_PRICE_VAT.value := qryItemsDETAIL_PRICE.value;
    exit;
  end;

  TinhGTPriceTax;

  if (maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND') then
  begin
    //qryItemsDETAIL_VAT.AsFloat := roundto(amount1*qryItemsDETAIL_PRICE_VAT.AsFloat,-prmDECIMALTT_LEN);
    qryItemsDETAIL_VALUE.AsFloat := roundto(amount1*qryItemsDETAIL_PRICE.AsFloat,-prmDECIMALTT_LEN);
  end
  else begin
    //qryItemsDETAIL_VAT.AsFloat := roundto(amount1*qryItemsDETAIL_PRICE_VAT.AsFloat,-2);
    qryItemsDETAIL_VALUE.AsFloat := roundto(amount1*qryItemsDETAIL_PRICE.AsFloat,-2);
  end


end;

procedure TInvoiceFrm.TinhGTPriceTax;
var vatPrice,amount1,amount2 :double;

begin
    {Tinh VAT theo cach binh thuong}
  if Calculating then exit;

  if qryItemsDETAIL_AMOUNT.Value = 0 then amount1 := 1
  else amount1 := qryItemsDETAIL_AMOUNT.Value;

  if qryItemsDETAIL_AMOUNT_EXT.AsFloat = 0 then amount2 := 1
  else amount2 := qryItemsDETAIL_AMOUNT_EXT.Value;
  amount1 := amount1*amount2;

  if qryItemsMETHOD_ID.Value = 10 then
    vatprice := roundto(qryItemsDETAIL_PRICE.AsFloat+ (qryItemsDETAIL_PRICE.AsFloat*qryItemsDETAIL_PERCENT.Value/100),-prmDECIMALDG_LEN);
  if qryItemsMETHOD_ID.Value = 11 then
    vatprice := roundto( qryItemsDETAIL_PRICE.AsFloat / (1-qryItemsDETAIL_PERCENT.Value/100),-prmDECIMALDG_LEN);

  //if qryItemsMETHOD_ID.Value = 10 then
 // begin
   if qryItemsDETAIL_PRICE_VAT.Value <> vatprice then
   begin
    Calculating := TRUE;
    qryItemsDETAIL_PRICE_VAT.Value := vatprice;//roundto(qryItemsDETAIL_PRICE.AsFloat + (qryItemsDETAIL_PRICE.AsFloat*qryItemsDETAIL_PERCENT.Value/100),-prmDECIMALDG_LEN);
    Tinhgiatrithue;
{    if (qryItemsMETHOD_ID.Value =10) and ((maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND')) then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-prmDECIMALTT_LEN)
    else if qryItemsMETHOD_ID.value = 10 then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-2)
    else if (qryItemsMETHOD_ID.Value =11) and ((maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND')) then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE_VAT.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-prmDECIMALTT_LEN)
    else
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE_VAT.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-2);
}
    calculating := FALSE;
   end;

   
end;

procedure TInvoiceFrm.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  Calculating := FALSE;
end;

procedure TInvoiceFrm.TinhGTPriceNotTax;
var Price,amount1,amount2 :double;
begin
  if  Calculating then exit;
  if qryItemsDETAIL_AMOUNT.Value = 0 then amount1 := 1
  else amount1 := qryItemsDETAIL_AMOUNT.Value;

  if qryItemsDETAIL_AMOUNT_EXT.AsFloat = 0 then amount2 := 1
  else amount2 := qryItemsDETAIL_AMOUNT_EXT.Value;
  amount1 := amount1*amount2;

  if qryItemsMETHOD_ID.Value = 10 then
    price := roundto(qryItemsDETAIL_PRICE_VAT.AsFloat / (1+ qryItemsDETAIL_PERCENT.Value/100),-prmDECIMALDG_LEN);
  if qryItemsMETHOD_ID.Value = 11 then
    price := roundto( qryItemsDETAIL_PRICE_VAT.AsFloat * (1-qryItemsDETAIL_PERCENT.Value/100),-prmDECIMALDG_LEN);

  if qryItemsDETAIL_PRICE.Value <> price then
    begin
      Calculating := TRUE;
      qryItemsDETAIL_PRICE.Value := price;
      TinhGiatrithue;
      calculating := FALSE;
    end;


end;

procedure TInvoiceFrm.qryItemsMETHOD_IDChange(Sender: TField);
begin
  if qryItemsMETHOD_ID.Value = 10 then
    TinhGTPriceTax
  else
    TinhGTPriceNotTax;
end;

procedure TInvoiceFrm.TinhGiaTriThue;
var  amount1,amount2 :double ;
begin
  if qryItemsDETAIL_AMOUNT.Value = 0 then amount1 := 1
  else amount1 := qryItemsDETAIL_AMOUNT.Value;

  if qryItemsDETAIL_AMOUNT_EXT.AsFloat = 0 then amount2 := 1
  else amount2 := qryItemsDETAIL_AMOUNT_EXT.Value;
  amount1 := amount1*amount2;

    if (qryItemsMETHOD_ID.Value =10) and ((maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND')) then
    begin
      if qryItemsDETAIL_PRICE.value = 0 then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_VALUE.Value * qryItemsDETAIL_PERCENT.Value / 100,-prmDECIMALTT_LEN)
      else
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-prmDECIMALTT_LEN)
    end
    else if qryItemsMETHOD_ID.value = 10 then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-2);

    if (qryItemsMETHOD_ID.Value =11) and ((maindm.qryInvoiceListCURRENCY_ID.IsNull) or (maindm.qryInvoiceListCURRENCY_ID.Value = 'VND')) then
    begin
      if qryItemsDETAIL_PRICE_VAT.value =0 then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_VALUE.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-prmDECIMALTT_LEN)
      else
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE_VAT.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-prmDECIMALTT_LEN)
    end
    else if qryItemsMETHOD_ID.Value =11 then
        qryItemsDETAIL_VAT.Value := roundto(qryItemsDETAIL_PRICE_VAT.Value *amount1* qryItemsDETAIL_PERCENT.Value / 100,-2);

end;

end.
