unit GhiDTBHForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,Registry,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib;

type
  TGhiDTBHFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxPopupEdit2: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxPopupEdit3: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxPopupEdit4: TdxPopupEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxSpinEdit1: TdxSpinEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    SOPHIEU:WideString;
  public
    MAKH,MANCC,SOHD,MANT:WideString;

    NGUYENTE:Double;
    { Public declarations }
  end;

var
  GhiDTBHFrm: TGhiDTBHFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB;

{$R *.dfm}

procedure TGhiDTBHFrm.btnOKClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  MainDM.qryPAcc.Open;
  if dxPopupEdit4.Text='' then
  begin
    ShowMessageUnicode(183);
    dxPopupEdit4.SetFocus;
    exit;
  end;
  if dxPopupEdit1.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit1.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit1.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit1.SetFocus;
    exit;
  end;

  if dxPopupEdit2.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit2.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit2.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit2.SetFocus;
    exit;
  end;
  if dxPopupEdit3.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit3.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit3.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit3.SetFocus;
    exit;
  end;

  MainDM.qryDocType.Locate('DOCTYPE_ID',MainDM.qryPDocTypeDOCTYPE_ID.AsInteger,[]);

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\OptBaohiem', False) then
    begin
      Reg.WriteInteger('LOAIPHIEUDT',MainDM.qryPDocTypeDOCTYPE_ID.AsInteger);
    end;
  except
    Reg.Free;
  end;


  SOPHIEU:=MainDM.Phatsinhsophieu;

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_GHIDTBHTT(:SOPHIEU,:NGUOILAP,:NGAYLAP,:KYHT,:LOAIPHIEU,:SOHD,:TYGIA,:TKPT,:TKDT,:TKVAT,:LOAI)';
    Prepare;

    ParamByName('SOPHIEU').Value := SOPHIEU;
    ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('NGAYLAP').Value := WorkingDate;
    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('LOAIPHIEU').Value := MainDM.qryPDocTypeDOCTYPE_ID.Value;
    ParamByName('SOHD').Value := SOHD;
    ParamByName('TYGIA').Value := dxSpinEdit1.IntValue;
    ParamByName('TKPT').Value := dxPopupEdit1.Text;
    ParamByName('TKDT').Value := dxPopupEdit2.Text;
    ParamByName('TKVAT').Value := dxPopupEdit3.Text;
    ParamByName('LOAI').Value := PolicyFlagChar;

    ExecSQL;
    Close;
  end;

  ModalResult:=mrOk;
  MainDM.Suachungtu(SOPHIEU,CurrentPeriod);
end;

procedure TGhiDTBHFrm.TntFormCreate(Sender: TObject);
var
  LoaiPhieu:Smallint;
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\OptBaohiem', False) then
    begin
      LoaiPhieu := reg.ReadInteger('LOAIPHIEUDT');
      MainDM.qryPDocType.Open;
      MainDM.qryPDocType.Locate('DOCTYPE_ID',LoaiPhieu,[]);
    end;
  except
    Reg.Free;
  end;

  MainDM.qryPAcc.Filtered:=False;
  MainDM.qryAccOpt.Open;
  MainDM.qryAccOpt.Locate('OPTION_ID',14,[]);
  dxPopupEdit1.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',8,[]);
  dxPopupEdit2.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',10,[]);
  dxPopupEdit3.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Close;
  MainDM.qryPDocType.Open;
  dxPopupEdit4.Text:=MainDM.qryPDocTypeDOCTYPE_NAME.Value;
end;

procedure TGhiDTBHFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TGhiDTBHFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TGhiDTBHFrm.dxPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
end;

procedure TGhiDTBHFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\OptBaohiem', False) then
    begin
      Reg.WriteInteger('LOAIPHIEUDT',MainDM.qryPDocTypeDOCTYPE_ID.AsInteger);
    end;
  except
    Reg.Free;
  end;


end;

procedure TGhiDTBHFrm.FormShow(Sender: TObject);
begin
  MainDM.qryPTyGia.Close;
  MainDM.qryPTyGia.ParamByName('CURRENCY_ID').Value:=MANT;
  MainDM.qryPTyGia.Open;
  if MainDM.qryPTyGia.RecordCount=0 then
    dxSpinEdit1.Value:=1
  else
    dxSpinEdit1.Value:=MainDM.qryPTyGiaEXCHANGERATE.Value;

  SetVisible(Self);    
end;

end.
