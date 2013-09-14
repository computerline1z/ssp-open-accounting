unit NhapTraLaiForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,Registry,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib;

type
  TNhapTraLaiFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    pedtTKCO: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    pedtTKNO: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    pedtTenCT: TdxPopupEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure pedtTKNOCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pedtTenCTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    SPMOI:WideString;
  public
    SPCU:WideString;
    KYCU:Smallint;
    { Public declarations }
  end;

var
  NhapTraLaiFrm: TNhapTraLaiFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB;

{$R *.dfm}

procedure TNhapTraLaiFrm.btnOKClick(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  if pedtTenCT.Text='' then
  begin
    ShowMessageUnicode(183);
    pedtTenCT.SetFocus;
    exit;
  end;
  if pedtTKNO.Text='' then
  begin
    ShowMessageUnicode(67);
    pedtTKNO.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',pedtTKNO.Text,[]) then
  begin
    ShowMessageUnicode(42);
    pedtTKNO.SetFocus;
    exit;
  end;

  if pedtTKCO.Text='' then
  begin
    ShowMessageUnicode(67);
    pedtTKCO.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',pedtTKCO.Text,[]) then
  begin
    ShowMessageUnicode(42);
    pedtTKCO.SetFocus;
    exit;
  end;

  MainDM.qryDocType.Locate('DOCTYPE_ID',MainDM.qryPDocTypeDOCTYPE_ID.AsInteger,[]);
  SPMOI:=MainDM.Phatsinhsophieu;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_PHATSINHPNKTRALAI(:SPCU,:KYCU,:LOAICT,:NGAYLAP,:SPMOI,:KYMOI,:NGUOILAP,:TKNO,:TKCO,:BRANCH_ID)';
    Prepare;

    ParamByName('SPCU').Value := SPCU;
    ParamByName('KYCU').Value := KYCU;
    ParamByName('LOAICT').Value := MainDM.qryPDocTypeDOCTYPE_ID.Value;
    ParamByName('NGAYLAP').Value := WorkingDate;
    ParamByName('SPMOI').Value := SPMOI;
    ParamByName('KYMOI').Value := CurrentPeriod;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('TKNO').Value := pedtTKNO.Text;
    ParamByName('TKCO').Value := pedtTKCO.Text;
    ParamByName('BRANCH_ID').Value := vpBranch_id;

    ExecSQL;
    Close;
  end;     

  ModalResult:=mrOk;
  MainDM.Suachungtu(SPMOI,CurrentPeriod,vpBranch_id);
end;

procedure TNhapTraLaiFrm.TntFormCreate(Sender: TObject);
begin
  MainDM.qryPDocType.Open;
  MainDM.qryPDocType.Locate('DOCTYPE_ID',350,[]);
  pedtTenCT.Text:=MainDM.qryPDocTypeDOCTYPE_NAME.Value;
  
  MainDM.qryAutoOut.Open;
  if MainDM.qryAutoOut.RecordCount<>0 then
  begin
    pedtTKNO.Text:=MainDM.qryAutoOutTK_HH.Value;
    pedtTKCO.Text:=MainDM.qryAutoOutTK_GV.Value;
  end;
end;

procedure TNhapTraLaiFrm.pedtTKNOCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TNhapTraLaiFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TNhapTraLaiFrm.pedtTenCTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
end;

procedure TNhapTraLaiFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);    
end;

end.
