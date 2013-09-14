unit OptionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Registry, Forms,
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, 
  TntStdCtrls, TntButtons, ComCtrls, TntComCtrls, ElXPThemedControl,
  ElEdits, ElCaption, ElCLabel, ElLabel, ElCheckCtl, ElPanel, ElGroupBox,
  ElPgCtl, ElBtnCtl, ElPopBtn;

type
  TOptionFrm = class(TForm)
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
    GroupBox2: TElGroupBox;
    chkConfirmDelete: TdxCheckEdit;
    GroupBox3: TElGroupBox;
    edtTienteFormat: TdxEdit;
    edtSLFormat: TdxEdit;
    edtNgayThangFormat: TdxEdit;
    Label3: TELLabel;
    Label4: TELLabel;
    Label5: TELLabel;
    GroupBox1: TElGroupBox;
    rbSearchNormal: TElRadioButton;
    rbSearchScript: TElRadioButton;
    GroupBox4: TElGroupBox;
    rbIndangNC: TElRadioButton;
    rbIndangDK: TElRadioButton;
    edtMauHDGTGT: TdxEdit;
    GroupBox5: TElGroupBox;
    Label8: TELLabel;
    spnRowCountFirstPage: TdxSpinEdit;
    spnRowCountOtherPage: TdxSpinEdit;
    Label9: TELLabel;
    Label7: TELLabel;
    spnFontSize: TdxSpinEdit;
    Label10: TELLabel;
    edtSeriNo: TdxEdit;
    chkInCoMaSoChitiet: TdxCheckEdit;
    TntPageControl1: TElPageControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    TntTabSheet1: TELTabSheet;
    TntTabSheet2: TELTabSheet;
    spnDelayMsg: TdxSpinEdit;
    TntLabel1: TELLabel;
    ChkCheckMsgOnLoad: TdxCheckEdit;
    TntGroupBox2: TElGroupBox;
    TntLabel2: TELLabel;
    spnChuKyChkMsg: TdxSpinEdit;
    TntLabel3: TELLabel;
    TntLabel4: TELLabel;
    ElFormCaption1: TElFormCaption;
    chkAutoRemindInstock: TdxCheckEdit;
    ElLabel1: TElLabel;
    ElLabel2: TElLabel;
    ElLabel3: TElLabel;
    ElLabel4: TElLabel;
    ElLabel5: TElLabel;
    ElLabel6: TElLabel;
    ElLabel7: TElLabel;
    ElLabel8: TElLabel;
    ElLabel9: TElLabel;
    ElLabel10: TElLabel;
    Panel1: TPanel;
    chkRemindBeforeSave: TdxCheckEdit;
    spnTuoino: TdxSpinEdit;
    ElLabel12: TElLabel;
    ElLabel13: TElLabel;
    ElLabel14: TElLabel;
    edtHesoFormat: TdxEdit;
    ElLabel15: TElLabel;
    edtNgoaiteFormat: TdxEdit;
    spnKhoangcach: TdxSpinEdit;
    ElLabel16: TElLabel;
    ElLabel17: TElLabel;
    ElGroupBox1: TElGroupBox;
    chkAutoUpdVATValue: TdxCheckEdit;
    chkNotShowMsgBox: TdxCheckEdit;
    ElLabel11: TElLabel;
    spnReConnectTime: TdxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnBanDau: TElPopupButton;
    chkSDGIAMUAGANNHAT: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnSetDefault: TElPopupButton;
    chkAutoGenDocNo: TdxCheckEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnBanDauClick(Sender: TObject);
    procedure btnSetDefault1Click(Sender: TObject);
    procedure btnSetDefaultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OptionFrm: TOptionFrm;

implementation

uses MainDataMdl, IBODataset, GlobalUnit, MainForm, HtmlHlp;


{$R *.dfm}

procedure TOptionFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);
  btnSetDefault.Visible := CurrentUser = 'SSPAdmin';
  btnSetDefault.Visible := False;
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  chkSDGIAMUAGANNHAT.Checked := optSDGIAMUAGANNHAT = TRUE;
  chkAutoGenDocNo.Checked := optAutoGenDocNo=1;
  chkConfirmDelete.Checked :=  optConfirmDelete=1;
  edtTienteFormat.Text := TIENTE_FORMAT;
  edtNgoaiteFormat.Text := NGOAITE_FORMAT;
  edtHesoFormat.Text := CACHESO_FORMAT;
  edtSLFormat.Text :=  SOLUONG_FORMAT;
  edtNgayThangFormat.Text := NGAYTHANG_FORMAT;
  edtMauHDGTGT.Text := optMauHDgTGTdefault;
  spnFontSize.IntValue := optFontSize;
  rbIndangDK.Checked := InPhieuDangDK;
  spnRowCountFirstPage.IntValue := optRowCountFirstPage;
  spnRowCountOtherPage.IntValue := optRowCountOtherPage;
  edtSeriNo.Text := optSERINUMBER;
  chkAutoUpdVATValue.Checked:=optAutoUpdVATValue;
  chkInCoMaSoChitiet.Checked:= optInCoMaSoChitiet;
  spnReConnectTime.IntValue:= optReConnectTime;
  spnDelayMsg.IntValue :=optMsgDelay;
  ChkCheckMsgOnLoad.Checked := optCheckMsgOnLoad;
  spnChuKyChkMsg.IntValue := optCheckMsgPeriod;
  chkAutoRemindInstock.Checked:=optAutoRemindInstock;
  spnTuoino.IntValue:= optTuoinoQuahan;
  spnKhoangcach.IntValue:=optKhoangcachDL;
  chkRemindBeforeSave.Checked:=optRemindBeforeSave;

  chkNotShowMsgBox.Checked:=Not optShowMsgBox;
  if optSearchMode=0 then
    rbSearchNormal.Checked:=True
  else
    rbSearchScript.Checked := True;
end;

procedure TOptionFrm.BitBtn1Click(Sender: TObject);
var
  Reg:TRegistry;
begin
  optSDGIAMUAGANNHAT := chkSDGIAMUAGANNHAT.Checked;
  optReConnectTime:=spnReConnectTime.IntValue;
  optInCoMaSoChitiet :=chkInCoMaSoChitiet.Checked;
  optMsgDelay := spnDelayMsg.IntValue;
  optCheckMsgOnLoad := ChkCheckMsgOnLoad.Checked;
  optAutoRemindInstock:=chkAutoRemindInstock.Checked;
  optTuoinoQuahan:=spnTuoino.IntValue;
  optKhoangcachDL:=spnKhoangcach.IntValue;
  optCheckMsgPeriod := spnChuKyChkMsg.IntValue;
  optRemindBeforeSave:=chkRemindBeforeSave.Checked;
  if chkAutoGenDocNo.Checked then
    optAutoGenDocNo:=1
  else
    optAutoGenDocNo:=0;

  if chkConfirmDelete.Checked then
    optConfirmDelete:=1
  else
    optConfirmDelete:=0;

  optFontSize:= spnFontSize.IntValue;
  InPhieuDangDK:= rbIndangDK.Checked;

  TIENTE_FORMAT:=edtTienteFormat.Text;
  NGOAITE_FORMAT:=edtNgoaiteFormat.Text;
  CACHESO_FORMAT:=edtHesoFormat.Text;
  SOLUONG_FORMAT:=edtSLFormat.Text;
  NGAYTHANG_FORMAT:=edtNgayThangFormat.Text;
  ShortDateFormat:=NGAYTHANG_FORMAT;
  optRowCountFirstPage:=spnRowCountFirstPage.IntValue;
  optRowCountOtherPage:=spnRowCountOtherPage.IntValue;
  optSERINUMBER := edtSeriNo.Text;
  optAutoUpdVATValue:=chkAutoUpdVATValue.Checked;

  if rbSearchNormal.Checked then
    optSearchMode:=0
  else
    optSearchMode:=1;
  optShowMsgBox:=Not chkNotShowMsgBox.Checked;

  optMauHDgTGTdefault := edtMauHDGTGT.Text;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      reg.WriteBool('SDGIAMUAGANNHAT',optSDGIAMUAGANNHAT);
      Reg.WriteInteger('AutoGenDocNo',optAutoGenDocNo);
      Reg.WriteInteger('ConfirmDelete',optConfirmDelete);
      Reg.WriteString('TIENTE_FORMAT',TIENTE_FORMAT);
      Reg.WriteString('NGOAITE_FORMAT',NGOAITE_FORMAT);
      Reg.WriteString('CACHESO_FORMAT',CACHESO_FORMAT);
      Reg.WriteString('SOLUONG_FORMAT',SOLUONG_FORMAT);
      Reg.WriteString('NGAYTHANG_FORMAT',NGAYTHANG_FORMAT);
      Reg.WriteInteger('SEARCHMODE', optSearchMode);
      if optShowMsgBox then
        Reg.WriteInteger('ShowMsgBox', 1)
      else
        Reg.WriteInteger('ShowMsgBox', 0);

      Reg.WriteInteger('ReloadRptPeriod',optReloadRptPeriod);
      Reg.WriteString('MAUHOADONGTGT',optMauHDgTGTdefault);
      Reg.WriteInteger('FontSize',optFontSize);
      Reg.WriteInteger('RowCountFirstPage',optRowCountFirstPage);
      Reg.WriteInteger('RowCountOtherPage',optRowCountOtherPage);
      Reg.WriteString('SERINUMBER',optSERINUMBER);
      if optAutoUpdVATValue then
        Reg.WriteInteger('AutoUpdVATValue',1)
      else
        Reg.WriteInteger('AutoUpdVATValue',0);

      Reg.WriteInteger('MsgDelay',optMsgDelay);
      Reg.WriteInteger('CheckMsgPeriod',optCheckMsgPeriod);
      if optIsFilterPGood then
        Reg.WriteInteger('IsFilterPGood',1)
      else
        Reg.WriteInteger('IsFilterPGood',0);

      if optCheckMsgOnLoad then
        Reg.WriteInteger('CheckMsgOnLoad',1)
      else
        Reg.WriteInteger('CheckMsgOnLoad',0);

      Reg.WriteInteger('TuoinoQuahan',optTuoinoQuahan);
      Reg.WriteInteger('KhoangcachDL',optKhoangcachDL);

      if optAutoRemindInstock then
        Reg.WriteInteger('AutoRemindInstock',1)
      else
        Reg.WriteInteger('AutoRemindInstock',0);
      if optAutoInsert then
        Reg.WriteInteger('AutoInsert',1)
      else
        Reg.WriteInteger('AutoInsert',0);

      if optInCoMaSoChitiet then
        Reg.WriteInteger('InCoMaSoChitiet',1)
      else
        Reg.WriteInteger('InCoMaSoChitiet',0);

      Reg.WriteInteger('ReConnectTime',optReConnectTime);

      if InPhieuDangDK then
        Reg.WriteInteger('DANGPHIEUINRA',1)
      else
        Reg.WriteInteger('DANGPHIEUINRA',0);
      if optRemindBeforeSave then
        Reg.WriteInteger('RemindBeforeSave',1)
      else
        Reg.WriteInteger('RemindBeforeSave',0);

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  ShortDateFormat := NGAYTHANG_FORMAT;
end;

procedure TOptionFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Tuychoncanhan.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(9);
end;

procedure TOptionFrm.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Tuychoncanhan.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
end;

procedure TOptionFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TOptionFrm.btnBanDauClick(Sender: TObject);
var
  Reg:TRegistry;
begin

  //Thinh them
   if ( ShowMessageUnicode(227,'',4) <> 6 ) then
    exit;
    
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\DefaultProgramOption',True) then
    begin
      optSDGIAMUAGANNHAT := Reg.ReadBool('SDGIAMUAGANNHAT');
      optAutoGenDocNo := Reg.ReadInteger('AutoGenDocNo');
      optConfirmDelete := Reg.ReadInteger('ConfirmDelete');
      TIENTE_FORMAT := Reg.ReadString('TIENTE_FORMAT');
      NGOAITE_FORMAT := Reg.ReadString('NGOAITE_FORMAT');
      CACHESO_FORMAT := Reg.ReadString('CACHESO_FORMAT');
      SOLUONG_FORMAT := Reg.ReadString('SOLUONG_FORMAT');
      NGAYTHANG_FORMAT := Reg.ReadString('NGAYTHANG_FORMAT');
      optSearchMode := Reg.ReadInteger('SEARCHMODE');
      if Reg.ReadInteger('ShowMsgBox') = 1 then
        optShowMsgBox := true
      else
        optShowMsgBox := false;

      optReloadRptPeriod := Reg.ReadInteger('ReloadRptPeriod');
      optMauHDgTGTdefault := Reg.ReadString('MAUHOADONGTGT');
      optFontSize := Reg.ReadInteger('FontSize');
      optRowCountFirstPage := Reg.ReadInteger('RowCountFirstPage');
      optRowCountOtherPage := Reg.ReadInteger('RowCountOtherPage');
      optSERINUMBER := Reg.ReadString('SERINUMBER');

      if Reg.ReadInteger('AutoUpdVATValue') = 1 then
        optAutoUpdVATValue := true
      else optAutoUpdVATValue := false;

      optMsgDelay := Reg.ReadInteger('MsgDelay');
      optCheckMsgPeriod := Reg.ReadInteger('CheckMsgPeriod');
      if Reg.ReadInteger('IsFilterPGood') = 1 then
        optIsFilterPGood := true
      else
        optIsFilterPGood := false;

      if Reg.ReadInteger('CheckMsgOnLoad') = 1 then
        optCheckMsgOnLoad := true
      else
        optCheckMsgOnLoad := false;

      optTuoinoQuahan := Reg.ReadInteger('TuoinoQuahan');
      optKhoangcachDL := Reg.ReadInteger('KhoangcachDL');

      if Reg.ReadInteger('AutoRemindInstock') = 1 then
        optAutoRemindInstock := true
      else
        optAutoRemindInstock := false;
      if Reg.ReadInteger('AutoInsert') = 1 then
        optAutoInsert := true
      else
        optAutoInsert := false;

      if Reg.ReadInteger('InCoMaSoChitiet') = 1 then
        optInCoMaSoChitiet := true
      else
        optInCoMaSoChitiet := false;

      optReConnectTime:= Reg.ReadInteger('ReConnectTime');

      if Reg.ReadInteger('DANGPHIEUINRA') = 1 then
        InPhieuDangDK := true
      else
        InPhieuDangDK := false;

      if Reg.ReadInteger('RemindBeforeSave') = 1 then
        optRemindBeforeSave := true
      else
        optRemindBeforeSave := false;

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  chkSDGIAMUAGANNHAT.Checked := optSDGIAMUAGANNHAT = TRUE;
  if optAutoGenDocNo = 1 then
    chkAutoGenDocNo.Checked := true
  else
    chkAutoGenDocNo.Checked := false;

  if optConfirmDelete = 1 then
    chkConfirmDelete.Checked := true
  else
    chkConfirmDelete.Checked := false;

  if optSearchMode = 0 then
    rbSearchNormal.Checked := true
  else
    rbSearchNormal.Checked := false;

  spnReConnectTime.IntValue := optReConnectTime;
  chkInCoMaSoChitiet.Checked := optInCoMaSoChitiet;
  spnDelayMsg.IntValue := optMsgDelay;
  ChkCheckMsgOnLoad.Checked := optCheckMsgOnLoad;
  chkAutoRemindInstock.Checked := optAutoRemindInstock;
  spnTuoino.IntValue := optTuoinoQuahan;
  spnKhoangcach.IntValue := optKhoangcachDL;
  spnChuKyChkMsg.IntValue := optCheckMsgPeriod;
  chkRemindBeforeSave.Checked := optRemindBeforeSave;
  spnFontSize.IntValue := optFontSize;
  rbIndangDK.Checked := InPhieuDangDK;
  edtTienteFormat.Text := TIENTE_FORMAT;
  edtNgoaiteFormat.Text := NGOAITE_FORMAT;
  edtHesoFormat.Text := CACHESO_FORMAT;
  edtSLFormat.Text := SOLUONG_FORMAT;
  edtNgayThangFormat.Text := NGAYTHANG_FORMAT;
  spnRowCountFirstPage.IntValue := optRowCountFirstPage;
  spnRowCountOtherPage.IntValue := optRowCountOtherPage;
  edtSeriNo.Text := optSERINUMBER;
  chkAutoUpdVATValue.Checked := optAutoUpdVATValue;
  chkNotShowMsgBox.Checked := optShowMsgBox;
  edtMauHDGTGT.Text := optMauHDgTGTdefault;

  optReConnectTime:=spnReConnectTime.IntValue;
  optInCoMaSoChitiet :=chkInCoMaSoChitiet.Checked;
  optMsgDelay := spnDelayMsg.IntValue;
  optCheckMsgOnLoad := ChkCheckMsgOnLoad.Checked;
  optAutoRemindInstock:=chkAutoRemindInstock.Checked;
  optTuoinoQuahan:=spnTuoino.IntValue;
  optKhoangcachDL:=spnKhoangcach.IntValue;
  optCheckMsgPeriod := spnChuKyChkMsg.IntValue;
  optRemindBeforeSave:=chkRemindBeforeSave.Checked;
  if chkAutoGenDocNo.Checked then
    optAutoGenDocNo:=1
  else
    optAutoGenDocNo:=0;

  if chkConfirmDelete.Checked then
    optConfirmDelete:=1
  else
    optConfirmDelete:=0;

  optFontSize:= spnFontSize.IntValue;
  InPhieuDangDK:= rbIndangDK.Checked;

  TIENTE_FORMAT:=edtTienteFormat.Text;
  NGOAITE_FORMAT:=edtNgoaiteFormat.Text;
  CACHESO_FORMAT:=edtHesoFormat.Text;
  SOLUONG_FORMAT:=edtSLFormat.Text;
  NGAYTHANG_FORMAT:=edtNgayThangFormat.Text;
  ShortDateFormat:=NGAYTHANG_FORMAT;
  optRowCountFirstPage:=spnRowCountFirstPage.IntValue;
  optRowCountOtherPage:=spnRowCountOtherPage.IntValue;
  optSERINUMBER := edtSeriNo.Text;
  optAutoUpdVATValue:=chkAutoUpdVATValue.Checked;

  if rbSearchNormal.Checked then
    optSearchMode:=0
  else
    optSearchMode:=1;
  optShowMsgBox:=Not chkNotShowMsgBox.Checked;

  optMauHDgTGTdefault := edtMauHDGTGT.Text;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      reg.WriteBool('SDGIAMUAGANNHAT',optSDGIAMUAGANNHAT);    
      Reg.WriteInteger('AutoGenDocNo',optAutoGenDocNo);
      Reg.WriteInteger('ConfirmDelete',optConfirmDelete);
      Reg.WriteString('TIENTE_FORMAT',TIENTE_FORMAT);
      Reg.WriteString('NGOAITE_FORMAT',NGOAITE_FORMAT);
      Reg.WriteString('CACHESO_FORMAT',CACHESO_FORMAT);
      Reg.WriteString('SOLUONG_FORMAT',SOLUONG_FORMAT);
      Reg.WriteString('NGAYTHANG_FORMAT',NGAYTHANG_FORMAT);
      Reg.WriteInteger('SEARCHMODE', optSearchMode);
      if optShowMsgBox then
        Reg.WriteInteger('ShowMsgBox', 1)
      else
        Reg.WriteInteger('ShowMsgBox', 0);

      Reg.WriteInteger('ReloadRptPeriod',optReloadRptPeriod);
      Reg.WriteString('MAUHOADONGTGT',optMauHDgTGTdefault);
      Reg.WriteInteger('FontSize',optFontSize);
      Reg.WriteInteger('RowCountFirstPage',optRowCountFirstPage);
      Reg.WriteInteger('RowCountOtherPage',optRowCountOtherPage);
      Reg.WriteString('SERINUMBER',optSERINUMBER);
      if optAutoUpdVATValue then
        Reg.WriteInteger('AutoUpdVATValue',1)
      else
        Reg.WriteInteger('AutoUpdVATValue',0);

      Reg.WriteInteger('MsgDelay',optMsgDelay);
      Reg.WriteInteger('CheckMsgPeriod',optCheckMsgPeriod);
      if optIsFilterPGood then
        Reg.WriteInteger('IsFilterPGood',1)
      else
        Reg.WriteInteger('IsFilterPGood',0);

      if optCheckMsgOnLoad then
        Reg.WriteInteger('CheckMsgOnLoad',1)
      else
        Reg.WriteInteger('CheckMsgOnLoad',0);

      Reg.WriteInteger('TuoinoQuahan',optTuoinoQuahan);
      Reg.WriteInteger('KhoangcachDL',optKhoangcachDL);

      if optAutoRemindInstock then
        Reg.WriteInteger('AutoRemindInstock',1)
      else
        Reg.WriteInteger('AutoRemindInstock',0);
      if optAutoInsert then
        Reg.WriteInteger('AutoInsert',1)
      else
        Reg.WriteInteger('AutoInsert',0);

      if optInCoMaSoChitiet then
        Reg.WriteInteger('InCoMaSoChitiet',1)
      else
        Reg.WriteInteger('InCoMaSoChitiet',0);

      Reg.WriteInteger('ReConnectTime',optReConnectTime);

      if InPhieuDangDK then
        Reg.WriteInteger('DANGPHIEUINRA',1)
      else
        Reg.WriteInteger('DANGPHIEUINRA',0);
      if optRemindBeforeSave then
        Reg.WriteInteger('RemindBeforeSave',1)
      else
        Reg.WriteInteger('RemindBeforeSave',0);

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  ShortDateFormat := NGAYTHANG_FORMAT;
end;

procedure TOptionFrm.btnSetDefault1Click(Sender: TObject);
var
  Reg:TRegistry;
begin
   if (ShowMessageUnicode(230,'',4) <> 6) then
    exit;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\DefaultProgramOption',True) then
    begin
      Reg.WriteInteger('AutoGenDocNo',optAutoGenDocNo);
      Reg.WriteInteger('ConfirmDelete',optConfirmDelete);
      Reg.WriteString('TIENTE_FORMAT',TIENTE_FORMAT);
      Reg.WriteString('NGOAITE_FORMAT',NGOAITE_FORMAT);
      Reg.WriteString('CACHESO_FORMAT',CACHESO_FORMAT);
      Reg.WriteString('SOLUONG_FORMAT',SOLUONG_FORMAT);
      Reg.WriteString('NGAYTHANG_FORMAT',NGAYTHANG_FORMAT);
      Reg.WriteInteger('SEARCHMODE', optSearchMode);
      if optShowMsgBox then
        Reg.WriteInteger('ShowMsgBox', 1)
      else
        Reg.WriteInteger('ShowMsgBox', 0);

      Reg.WriteInteger('ReloadRptPeriod',optReloadRptPeriod);
      Reg.WriteString('MAUHOADONGTGT',optMauHDgTGTdefault);
      Reg.WriteInteger('FontSize',optFontSize);
      Reg.WriteInteger('RowCountFirstPage',optRowCountFirstPage);
      Reg.WriteInteger('RowCountOtherPage',optRowCountOtherPage);
      Reg.WriteString('SERINUMBER',optSERINUMBER);
      if optAutoUpdVATValue then
        Reg.WriteInteger('AutoUpdVATValue',1)
      else
        Reg.WriteInteger('AutoUpdVATValue',0);

      Reg.WriteInteger('MsgDelay',optMsgDelay);
      Reg.WriteInteger('CheckMsgPeriod',optCheckMsgPeriod);
      if optIsFilterPGood then
        Reg.WriteInteger('IsFilterPGood',1)
      else
        Reg.WriteInteger('IsFilterPGood',0);

      if optCheckMsgOnLoad then
        Reg.WriteInteger('CheckMsgOnLoad',1)
      else
        Reg.WriteInteger('CheckMsgOnLoad',0);

      Reg.WriteInteger('TuoinoQuahan',optTuoinoQuahan);
      Reg.WriteInteger('KhoangcachDL',optKhoangcachDL);

      if optAutoRemindInstock then
        Reg.WriteInteger('AutoRemindInstock',1)
      else
        Reg.WriteInteger('AutoRemindInstock',0);
      if optAutoInsert then
        Reg.WriteInteger('AutoInsert',1)
      else
        Reg.WriteInteger('AutoInsert',0);

      if optInCoMaSoChitiet then
        Reg.WriteInteger('InCoMaSoChitiet',1)
      else
        Reg.WriteInteger('InCoMaSoChitiet',0);

      Reg.WriteInteger('ReConnectTime',optReConnectTime);

      if InPhieuDangDK then
        Reg.WriteInteger('DANGPHIEUINRA',1)
      else
        Reg.WriteInteger('DANGPHIEUINRA',0);
      if optRemindBeforeSave then
        Reg.WriteInteger('RemindBeforeSave',1)
      else
        Reg.WriteInteger('RemindBeforeSave',0);

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TOptionFrm.btnSetDefaultClick(Sender: TObject);
var
  Reg:TRegistry;
begin
   if (ShowMessageUnicode(230,'',4) <> 6) then
    exit;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\DefaultProgramOption',True) then
    begin
      reg.WriteBool('SDGIAMUAGANNHAT',optSDGIAMUAGANNHAT);
      Reg.WriteInteger('AutoGenDocNo',optAutoGenDocNo);
      Reg.WriteInteger('ConfirmDelete',optConfirmDelete);
      Reg.WriteString('TIENTE_FORMAT',TIENTE_FORMAT);
      Reg.WriteString('NGOAITE_FORMAT',NGOAITE_FORMAT);
      Reg.WriteString('CACHESO_FORMAT',CACHESO_FORMAT);
      Reg.WriteString('SOLUONG_FORMAT',SOLUONG_FORMAT);
      Reg.WriteString('NGAYTHANG_FORMAT',NGAYTHANG_FORMAT);
      Reg.WriteInteger('SEARCHMODE', optSearchMode);
      if optShowMsgBox then
        Reg.WriteInteger('ShowMsgBox', 1)
      else
        Reg.WriteInteger('ShowMsgBox', 0);

      Reg.WriteInteger('ReloadRptPeriod',optReloadRptPeriod);
      Reg.WriteString('MAUHOADONGTGT',optMauHDgTGTdefault);
      Reg.WriteInteger('FontSize',optFontSize);
      Reg.WriteInteger('RowCountFirstPage',optRowCountFirstPage);
      Reg.WriteInteger('RowCountOtherPage',optRowCountOtherPage);
      Reg.WriteString('SERINUMBER',optSERINUMBER);
      if optAutoUpdVATValue then
        Reg.WriteInteger('AutoUpdVATValue',1)
      else
        Reg.WriteInteger('AutoUpdVATValue',0);

      Reg.WriteInteger('MsgDelay',optMsgDelay);
      Reg.WriteInteger('CheckMsgPeriod',optCheckMsgPeriod);
      if optIsFilterPGood then
        Reg.WriteInteger('IsFilterPGood',1)
      else
        Reg.WriteInteger('IsFilterPGood',0);

      if optCheckMsgOnLoad then
        Reg.WriteInteger('CheckMsgOnLoad',1)
      else
        Reg.WriteInteger('CheckMsgOnLoad',0);

      Reg.WriteInteger('TuoinoQuahan',optTuoinoQuahan);
      Reg.WriteInteger('KhoangcachDL',optKhoangcachDL);

      if optAutoRemindInstock then
        Reg.WriteInteger('AutoRemindInstock',1)
      else
        Reg.WriteInteger('AutoRemindInstock',0);
      if optAutoInsert then
        Reg.WriteInteger('AutoInsert',1)
      else
        Reg.WriteInteger('AutoInsert',0);

      if optInCoMaSoChitiet then
        Reg.WriteInteger('InCoMaSoChitiet',1)
      else
        Reg.WriteInteger('InCoMaSoChitiet',0);

      Reg.WriteInteger('ReConnectTime',optReConnectTime);

      if InPhieuDangDK then
        Reg.WriteInteger('DANGPHIEUINRA',1)
      else
        Reg.WriteInteger('DANGPHIEUINRA',0);
      if optRemindBeforeSave then
        Reg.WriteInteger('RemindBeforeSave',1)
      else
        Reg.WriteInteger('RemindBeforeSave',0);

      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;

end;

end.
