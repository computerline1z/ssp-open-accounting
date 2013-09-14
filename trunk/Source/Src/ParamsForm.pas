unit ParamsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms, 
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, 
  dxTL, dxDBCtrl, dxDBTL, IBODataset, dxDBTLCl, dxGrClEx,
  TntStdCtrls, TntButtons, ComCtrls, TntComCtrls, ElXPThemedControl,
  ElEdits, ElCaption, ElCheckCtl, ElCLabel, ElLabel, ElPanel, ElGroupBox,
  ElPgCtl, ElBtnCtl, ElPopBtn;

type
  TParamsFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    GroupBox1: TELGroupBox;
    rbNVL: TELRadioButton;
    rbNC: TELRadioButton;
    rbNVLNC: TELRadioButton;
    rbKhac: TELRadioButton;
    spnTyleNVL: TdxDBSpinEdit;
    spnTyleNC: TdxDBSpinEdit;
    LblTyleNC: TELLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit4: TdxDBCheckEdit;
    GroupBox2: TELGroupBox;
    dxDBCheckEdit8: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBCheckEdit5: TdxDBCheckEdit;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxDBCheckEdit9: TdxDBCheckEdit;
    dxDBCheckEdit11: TdxDBCheckEdit;
    dxDBCheckEdit12: TdxDBCheckEdit;
    TntPageControl1: TELPageControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    TntTabSheet1: TELTabSheet;
    TntTabSheet2: TELTabSheet;
    rbDinhmuc: TELRadioButton;
    TntGroupBox1: TELGroupBox;
    rbBQTT: TELRadioButton;
    rbBQCK: TELRadioButton;
    rbFIFO: TELRadioButton;
    rbLIFO: TELRadioButton;
    Label7: TELLabel;
    CheckBox1: TELCheckBox;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxDBSpinEdit6: TdxDBSpinEdit;
    dxDBCheckEdit7: TdxDBCheckEdit;
    Label9: TELLabel;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBSpinEdit2: TdxDBSpinEdit;
    ElFormCaption1: TElFormCaption;
    ElGroupBox1: TElGroupBox;
    LblTyleNVL: TElLabel;
    dxDBCheckEdit13: TdxDBCheckEdit;
    dxDBCheckEdit16: TdxDBCheckEdit;
    btnDeleteLog: TElPopupButton;
    ElLabel2: TElLabel;
    dxDBSpinEdit5: TdxDBSpinEdit;
    dxDBSpinEdit7: TdxDBSpinEdit;
    dxDBSpinEdit8: TdxDBSpinEdit;
    ElLabel1: TElLabel;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxDBCheckEdit10: TdxDBCheckEdit;
    ElLabel3: TElLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxDBCheckEdit14: TdxDBCheckEdit;
    rbDDFIFO: TElRadioButton;
    rbDDLIFO: TElRadioButton;
    dxDBCheckEdit17: TdxDBCheckEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnBanDau: TElPopupButton;
    dxDBCheckKCPNHTKA: TdxDBCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    ActionList1: TActionList;
    acSave: TAction;
    ElGroupBox2: TElGroupBox;
    rbPPDDCKNVL: TElRadioButton;
    rbPPDDCKSPHTTD: TElRadioButton;
    ElRadioButton1: TElRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure rbKhacClick(Sender: TObject);
    procedure rbNVLClick(Sender: TObject);
    procedure rbNCClick(Sender: TObject);
    procedure rbNVLNCClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rbGrpPPTinhKHClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rbDinhmucClick(Sender: TObject);
    procedure rbBQTTClick(Sender: TObject);
    procedure rbBQCKClick(Sender: TObject);
    procedure rbFIFOClick(Sender: TObject);
    procedure rbLIFOClick(Sender: TObject);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteLogClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBCalcEdit1Validate(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure rbDDFIFOClick(Sender: TObject);
    procedure rbDDLIFOClick(Sender: TObject);
    procedure btnBanDauKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBanDauClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParamsFrm: TParamsFrm;

implementation

uses MainDataMdl, GlobalUnit, PopupForm, HtmlHlp;


{$R *.dfm}

procedure TParamsFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  
  btnDeleteLog.Enabled:=SSPUserRight[6].DR;

  with MainDM do
  begin
    qryParams.Open;
    case qryParamsPPXUATKHO.AsInteger of
      0:  rbBQTT.Checked := True;
      1:  rbBQCK.Checked := True;
      2:  rbFIFO.Checked := True;
      3:  rbLIFO.Checked := True;
      4:  rbDDFIFO.Checked := True;
      5:  rbDDLIFO.Checked := True;
      else rbBQTT.Checked := True;
    end;
    case qryParamsPPPBCPSXC.AsInteger of
      0://NVL
        rbNVL.Checked := True;
      1://NC
        rbNC.Checked := True;
      2://Ca hai
        rbNVLNC.Checked := True;
      3://Ty le
      begin
        rbKhac.Checked := True;
      end;
      else
        rbDinhmuc.Checked := True;
    end;
  end;
end;

procedure TParamsFrm.rbKhacClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPPBCPSXC.AsInteger := 3;
  spnTyleNVL.Enabled := True;
  spnTyleNC.Enabled := True;
  LblTyleNVL.Enabled := True;
  LblTyleNC.Enabled := True;
end;

procedure TParamsFrm.rbNVLClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPPBCPSXC.AsInteger := 0;
  MainDM.qryParamsTYLECPNVL.AsInteger := 100;
  MainDM.qryParamsTYLECPNC.AsInteger := 0;
  spnTyleNVL.Enabled := False;
  spnTyleNC.Enabled := False;
  LblTyleNVL.Enabled := False;
  LblTyleNC.Enabled := False;
end;

procedure TParamsFrm.rbNCClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPPBCPSXC.AsInteger := 1;
  MainDM.qryParamsTYLECPNVL.AsInteger := 0;
  MainDM.qryParamsTYLECPNC.AsInteger := 100;
  spnTyleNVL.Enabled := False;
  spnTyleNC.Enabled := False;
  LblTyleNVL.Enabled := False;
  LblTyleNC.Enabled := False;
end;

procedure TParamsFrm.rbNVLNCClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPPBCPSXC.AsInteger := 2;
  MainDM.qryParamsTYLECPNVL.AsInteger := 50;
  MainDM.qryParamsTYLECPNC.AsInteger := 50;
  spnTyleNVL.Enabled := False;
  spnTyleNC.Enabled := False;
  LblTyleNVL.Enabled := False;
  LblTyleNC.Enabled := False;
end;

procedure TParamsFrm.BitBtn1Click(Sender: TObject);
begin
  acSave.Execute;
  MainDM.qryParams.Close;
end;

procedure TParamsFrm.BitBtn2Click(Sender: TObject);
begin
  if MainDM.qryParams.State in [dsEdit, dsInsert] then
    MainDM.qryParams.Cancel;
  MainDM.qryParams.Close;
end;

procedure TParamsFrm.rbGrpPPTinhKHClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
end;

procedure TParamsFrm.CheckBox1Click(Sender: TObject);
begin
  dxDBSpinEdit4.Enabled := CheckBox1.Checked;
  dxDBSpinEdit6.Enabled := CheckBox1.Checked;
end;

procedure TParamsFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlapthongsohethong.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(14);
end;

procedure TParamsFrm.rbDinhmucClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPPBCPSXC.AsInteger := 10;
  spnTyleNVL.Enabled := False;
  spnTyleNC.Enabled  := False;
  LblTyleNVL.Enabled := False;
  LblTyleNC.Enabled  := False;
end;

procedure TParamsFrm.rbBQTTClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPXUATKHO.AsInteger := 0;
end;

procedure TParamsFrm.rbBQCKClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPXUATKHO.AsInteger := 1;
end;

procedure TParamsFrm.rbFIFOClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPXUATKHO.AsInteger := 2;
end;

procedure TParamsFrm.rbLIFOClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPXUATKHO.AsInteger := 3;
end;

procedure TParamsFrm.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlapthongsohethong.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TParamsFrm.btnDeleteLogClick(Sender: TObject);
begin
  if ShowMessageUnicode(165,'', 4) = 7 then
    exit;
  Screen.Cursor:=crHourGlass;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='delete from doc_log';
    Prepare;

    ExecSQL;
    Close;
  end;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='SET GENERATOR GEN_LOG_ID TO 0';
    Prepare;

    ExecSQL;
    Close;
  end;
  Screen.Cursor:=crDefault;
  ShowMessageUnicode(114);
end;

procedure TParamsFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TParamsFrm.dxDBCalcEdit1Validate(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if dxDBCalcEdit1.Text = '' then
    dxDBCalcEdit1.Text := '0';
end;

procedure TParamsFrm.rbDDFIFOClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPXUATKHO.AsInteger := 4;
end;

procedure TParamsFrm.rbDDLIFOClick(Sender: TObject);
begin
  MainDM.qryParams.Edit;
  MainDM.qryParamsPPXUATKHO.AsInteger := 5;
end;

procedure TParamsFrm.btnBanDauKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TParamsFrm.btnBanDauClick(Sender: TObject);
var i : integer;
begin
  {QuynhND - Reset Default cac Form dinh nghia}
    if ( ShowMessageUnicode(227,'',4) <> 6 ) then
    exit;
  with MainDM do
  begin
    qryDefaultParams.Open;

    case qryDefaultParamsPPXUATKHO.AsInteger of
      0:  rbBQTT.Checked := True;
      1:  rbBQCK.Checked := True;
      2:  rbFIFO.Checked := True;
      3:  rbLIFO.Checked := True;
      4:  rbDDFIFO.Checked := True;
      5:  rbDDLIFO.Checked := True;
      else rbBQTT.Checked := True;
    end;

    qryParams.Edit;

  for i := 0 to qryParams.FieldCount - 1 do
  begin
    if Not qryDefaultParams.FieldByName(qryParams.Fields[i].FieldName).IsNull then
      qryParams.Fields[i].Value := qryDefaultParams.FieldByName(qryParams.Fields[i].FieldName).Value
    else
      qryParams.Fields[i].Clear;
    end;
  qryParams.Post;
  qryDefaultParams.Close;
  end;
end;

procedure TParamsFrm.ElPopupButton1Click(Sender: TObject);
var i :integer;
begin
   if (ShowMessageUnicode(230,'',4) <> 6) then
    exit;

 acSave.Execute;
{QuynhND - Reset Default cac Form dinh nghia}
  with MainDM do
  begin
    qryDefaultParams.Open;
    qryDefaultParams.edit;

    for i := 0 to qryDefaultParams.FieldCount - 1 do
    begin
      if Not qryParams.FieldByName(qryDefaultParams.Fields[i].FieldName).IsNull then
        qryDefaultParams.Fields[i].Value := qryParams.FieldByName(qryParams.Fields[i].FieldName).Value
      else
        qryDefaultParams.Fields[i].Clear;
    end;

    qryDefaultParams.Post;
    qryDefaultParams.Close;

  end;
end;

procedure TParamsFrm.acSaveExecute(Sender: TObject);
begin
    with MainDM do
  begin
    prmPPXUATKHO := qryParamsPPXUATKHO.AsInteger;
    prmPPPBCPSXC := qryParamsPPPBCPSXC.AsInteger;
    prmSDGIABAN := qryParamsSDGIABAN.AsInteger;
    prmChophepXuatam := qryParamsALLOW_NEGINSTOCK.AsInteger = 1;
    {QuynhND - Qui dinh ton kho toi thieu}
    prmChophepTonToiThieu := qryParamsALLOW_MIN_INSTOCK.AsInteger = 1;
    prmDirectDiscount := qryParamsDIRECT_DISCOUNT.AsInteger = 1;
    prmBBNHAPYT := qryParamsBBNHAPYT.AsInteger;
    prmCHOSUAGIABAN := qryParamsCHOSUAGIABAN.AsInteger;
    prmSDGIAMUA := qryParamsSDGIAMUA.AsInteger;
    prmCHOSUAGIAMUA := qryParamsCHOSUAGIAMUA.AsInteger;
    prmSDGIAKH := qryParamsSDGIAKH.AsInteger;
    prmCHOSUAGIAKH := qryParamsCHOSUAGIAKH.AsInteger;
    prmSDGIABQ := qryParamsSDGIABQ.AsInteger;
    prmCHOSUAGIABQ := qryParamsCHOSUAGIABQ.AsInteger;
    prmCHOSUATHANHTIEN := qryParamsCHOSUATHANHTIEN.AsInteger;
    prmAllowChangeType := qryParamsALLOWCHANGETYPE.AsInteger;
    prmRangbuocNgay := (qryParamsRANGBUOCNGAY.AsInteger = 1);
    BeginPeriod := qryParamsBEGIN_YEAR.Value * 12 + qryParamsBEGIN_MONTH.Value;
    prmUseDocumentLog :=(qryParamsUSEDOCUMENTLOG.AsInteger = 1);
    prmUSEUPPERCASE :=(qryParamsUSEUPPERCASE.AsInteger = 1);
    prmDECIMALDG_LEN := qryParamsDECIMALDG_LEN.AsInteger;
    prmDECIMALTT_LEN := qryParamsDECIMALTT_LEN.AsInteger;
  end;
  if MainDM.qryParams.State in [dsEdit, dsInsert] then
    MainDM.qryParams.Post;
end;

end.
