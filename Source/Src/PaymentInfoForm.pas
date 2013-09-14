unit PaymentInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx, DB,DateUtils,
  IBODataset, TntButtons, DBActns, ActnList, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElEdits, ElCheckCtl, ElCLabel, ElLabel, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxGrClms,Registry;

type
  TPaymentInfoFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    btnSendData: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    TntBitBtn3: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    qryPayment: TIBOQuery;
    dsPayment: TDataSource;
    dedtDenngay: TdxDateEdit;
    locFormItem3: TdxLayoutItem;
    dedtTuNgay: TdxDateEdit;
    locFormItem6: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    qryPaymentDOC_ID: TWideStringField;
    qryPaymentPERIOD_ID: TSmallintField;
    qryPaymentDOC_DATE: TDateField;
    qryPaymentNGAYGHISO: TDateTimeField;
    qryPaymentDOC_NOTES: TWideStringField;
    qryPaymentCREDIT_ACC: TWideStringField;
    qryPaymentCREDIT_DETAIL: TWideStringField;
    qryPaymentCREDIT_OBJ: TWideStringField;
    qryPaymentCURRENCY_ID: TWideStringField;
    qryPaymentDEBIT_ACC: TWideStringField;
    qryPaymentDEBIT_DETAIL: TWideStringField;
    qryPaymentDEBIT_OBJ: TWideStringField;
    qryPaymentENTRY_AMOUNT: TIBOFloatField;
    qryPaymentENTRY_ID: TSmallintField;
    qryPaymentENTRY_NOTE: TWideStringField;
    qryPaymentENTRY_PRICE: TIBOFloatField;
    qryPaymentENTRY_VALUE: TIBOFloatField;
    qryPaymentTYGIANT: TIBOFloatField;
    dxDBGrid1DOC_ID: TdxDBGridMaskColumn;
    dxDBGrid1DOC_DATE: TdxDBGridDateColumn;
    dxDBGrid1NGAYGHISO: TdxDBGridDateColumn;
    dxDBGrid1DOC_NOTES: TdxDBGridMaskColumn;
    dxDBGrid1CREDIT_ACC: TdxDBGridMaskColumn;
    dxDBGrid1CREDIT_DETAIL: TdxDBGridMaskColumn;
    dxDBGrid1CREDIT_OBJ: TdxDBGridMaskColumn;
    dxDBGrid1CURRENCY_ID: TdxDBGridMaskColumn;
    dxDBGrid1DEBIT_ACC: TdxDBGridMaskColumn;
    dxDBGrid1DEBIT_DETAIL: TdxDBGridMaskColumn;
    dxDBGrid1DEBIT_OBJ: TdxDBGridMaskColumn;
    dxDBGrid1ENTRY_AMOUNT: TdxDBGridMaskColumn;
    dxDBGrid1ENTRY_NOTE: TdxDBGridMaskColumn;
    dxDBGrid1ENTRY_PRICE: TdxDBGridMaskColumn;
    dxDBGrid1ENTRY_VALUE: TdxDBGridMaskColumn;
    dxDBGrid1TYGIANT: TdxDBGridMaskColumn;
    btnDetail: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TntBitBtn3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure btnSendDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentInfoFrm: TPaymentInfoFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,  PopupForm,
  Functions, dxTreeGridMenus;


{$R *.dfm}

procedure TPaymentInfoFrm.FormCreate(Sender: TObject);
var
  Reg:TRegistry;
begin
  dedtTungay.Date:=EncodeDate(CurYear, CurMonth,1) ;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      if Reg.KeyExists('LastDateTranfer') then
        dedtTungay.Date:=Reg.ReadDate('LastDateTranfer')+1;

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  dedtDenngay.Date:=Now ;

  SetOnFormCreate(Sender as TControl);

  qryPaymentDOC_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  qryPaymentNGAYGHISO.DisplayFormat:=NGAYTHANG_FORMAT+' hh:mm:ss';
  qryPaymentENTRY_PRICE.DisplayFormat:=NGOAITE_FORMAT;
  qryPaymentENTRY_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryPaymentTYGIANT.DisplayFormat:=TIENTE_FORMAT;
end;

procedure TPaymentInfoFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TPaymentInfoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TPaymentInfoFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TPaymentInfoFrm.TntBitBtn3Click(Sender: TObject);
begin
  qryPayment.Close;
  qryPayment.ParamByName('tungay').AsDate:=dedtTuNgay.Date;
  qryPayment.ParamByName('denngay').AsDate:=dedtDenngay.Date;
  qryPayment.Open;
  btnSendData.Enabled:=qryPayment.RecordCount>0;
  btnDetail.Enabled:=qryPayment.RecordCount>0;
end;

procedure TPaymentInfoFrm.btnDetailClick(Sender: TObject);
begin
  if qryPayment.RecordCount>0 then
    MainDM.Suachungtu(qryPaymentDOC_ID.Value,qryPaymentPERIOD_ID.AsInteger);
end;

procedure TPaymentInfoFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TPaymentInfoFrm.btnSendDataClick(Sender: TObject);
var
  TenTaptin:String;
begin
  TenTaptin:=ApplicationDir+'\TranferData\data_'+FormatDateTime('yyMMdd',dedtDenngay.Date)+'.xls';
  dxDBGrid1.SaveToXLS(TenTaptin,True);
end;

procedure TPaymentInfoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg:TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      Reg.WriteDate('LastDateTranfer',dedtDenngay.Date);

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TPaymentInfoFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
