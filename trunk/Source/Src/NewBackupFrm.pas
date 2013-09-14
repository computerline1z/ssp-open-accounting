unit NewBackupFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ImgList, DBak_Component, DBak_Locale,
  DBak_Controller, ElPgCtl, ElXPThemedControl, dxLayoutControl, cxControls,
  dxExEdtr, dxEdLib, dxEditor, dxCntner, ElBtnCtl, ElPopBtn, ElCLabel,
  ElLabel, ExtCtrls, ComCtrls, IBC_CustomLabel, IBC_Label, ElPanel,
  ElCaption,SHellAPI, sspSendMail, ElGroupBox, ElCheckItemGrp,
  dxLayoutLookAndFeels;

type
  TfrmNewBackup = class(TForm)
    DBakC: TDBak_Controller;
    DBak: TDBak_Component;
    FileDlgBackup: TOpenDialog;
    SaveDlg: TSaveDialog;
    AnimationImgs: TImageList;
    AnimFixedImg: TImage;
    Animation: TImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    pgcMain: TElPageControl;
    tsConfig: TElTabSheet;
    tsResult: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    elbtnStart: TElPopupButton;
    dxlctrlStart: TdxLayoutItem;
    elbtnClose: TElPopupButton;
    dxlctrlClose: TdxLayoutItem;
    dxedtUserServer: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxedtUserDB: TdxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxedtUserAccount: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxedtUserPassword: TdxEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxedtBackupServer: TdxEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxedtBackupDB: TdxButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxedtBackupAccount: TdxEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxedtBackupPassword: TdxEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxpiedtUserProtocol: TdxPickEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxpiedtBackupProtocol: TdxPickEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxchkBackupReadOnly: TdxCheckEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    elbtnStop: TElPopupButton;
    dxlctrlStop: TdxLayoutItem;
    tsRunning: TElTabSheet;
    ProgressBar: TProgressBar;
    StatusDisplayTxt: TIB_Label;
    PhaseDisplayTxt: TIB_Label;
    ToDisplayTxt: TIB_Label;
    FromDisplayTxt: TIB_Label;
    OperationDisplayTxt: TIB_Label;
    ResultsMemo: TMemo;
    StatusDisplayLbl: TElLabel;
    PhaseDisplayLbl: TElLabel;
    ToDisplayLbl: TElLabel;
    FromDisplayLbl: TElLabel;
    OperationDisplayLbl: TElLabel;
    ProgressDisplayLbl: TElLabel;
    ElPanel1: TElPanel;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    Bevel1: TBevel;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item12: TdxLayoutItem;
    Bevel2: TBevel;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Item13: TdxLayoutItem;
    Bevel3: TBevel;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item14: TdxLayoutItem;
    Bevel4: TBevel;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutControl3Item15: TdxLayoutItem;
    Bevel5: TBevel;
    dxLayoutControl3Item16: TdxLayoutItem;
    Bevel6: TBevel;
    dxLayoutControl3Group10: TdxLayoutGroup;
    dxLayoutControl3Item17: TdxLayoutItem;
    dxLayoutControl3Item18: TdxLayoutItem;
    dxLayoutControl3Group11: TdxLayoutGroup;
    FileDlgRestore: TOpenDialog;
    FileDlg: TOpenDialog;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SaveSettingsFile(Sender: TObject);
    procedure SaveSettingsFileAs(Sender: TObject);
    procedure DBakLogEvent(Sender: TDBak_Component; AEntry: TDBak_LogEntry;
      ADescrip: string; ALongMessage: string; var DoDefault,
      AProceed: Boolean);
    procedure DBakNotifyEvent(Sender: TDBak_Component;
      AEvent: TDBak_NotifyEventType; var AProceed: Boolean);
    procedure DBakSaveScript(Sender: TDBak_Component; AScript,
      AProbs: TStrings; var AProceed: Boolean);
    procedure DBakShowProgress(Sender: TDBak_Component; AStatus: string;
      var AProceed: Boolean);
    procedure elbtnStartClick(Sender: TObject);
    procedure elbtnCloseClick(Sender: TObject);
    procedure elbtnStopClick(Sender: TObject);
    procedure dxedtUserDBButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxedtBackupDBButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxedtUserServerChange(Sender: TObject);
    procedure dxedtBackupServerChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FInternalUpd: integer;
    FClosing: boolean;
    FLoadedFile: string;
    FHistory: TStrings;
    FConfirmedOperation: TDBak_Operation;
    FConfirmedPhases: TDBak_Phases;
    FStopping: boolean;
    FStartDT: TDateTime;
    FEndDT: TDateTime;
    FAnimIdx: TImageIndex;
    FTmpResults: TStringList;
    FOperation : Smallint;
    procedure ShowConfigurationPg;
    procedure ShowRunningPg;
    procedure ShowResultsPg;
    procedure LoadSettingsFromFile(AFile: string);
    function SaveSettingsToFile(AFile: string; DoPrompt: boolean): boolean;
    procedure StartDBak;
    procedure StopDBak;
    procedure DrawAnimation(Idx: TImageIndex);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; AOperation: smallint);
  end;

var
  frmNewBackup: TfrmNewBackup;

implementation
uses GlobalInterface, GlobalUnit, registry, IB_Session, IB_Components,
     IB_Constants, IB_Metadata, DBak_Settings, DBak_Types, MainDataMdl,
     htmlhlp;

{$R *.DFM}

const
  DefaultImg : TImageIndex = 0;
  FirstAnim  : TImageIndex = 1;
  LastAnim   : TImageIndex = 9;

procedure TfrmNewBackup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DBakC.Running then
  begin
    CanClose := false;
    Exit;
  end;
end;

procedure TfrmNewBackup.SaveSettingsFile(Sender: TObject);
begin
  SaveSettingsToFile(FLoadedFile, false);
end;

procedure TfrmNewBackup.SaveSettingsFileAs(Sender: TObject);
begin
  SaveSettingsToFile('', true);
end;

procedure TfrmNewBackup.DBakLogEvent(Sender: TDBak_Component;
  AEntry: TDBak_LogEntry; ADescrip: string; ALongMessage: string;
  var DoDefault, AProceed: Boolean);
begin
  FTmpResults.Add(FormatDateTime('hh:nn:ss', SysUtils.Now) + ' ' + ADescrip);
  if (Length(ALongMessage) > 0) and
    ((AEntry >= leError) or (AEntry = leOperationEnd)) then
    FTmpResults.Add(ALongMessage);
end;

procedure TfrmNewBackup.DBakNotifyEvent(Sender: TDBak_Component;
  AEvent: TDBak_NotifyEventType; var AProceed: Boolean);
begin
  case AEvent of
    neBeginOperation:
      begin
        OperationDisplayTxt.Caption := DBakOperationToText(Sender.CurrentOperation);
        if Sender.CurrentOperation = opRestore then
        begin
          FromDisplayTxt.Caption := Sender.ConnectBackup.DatabaseName;
          ToDisplayTxt.Caption   := Sender.ConnectUser.DatabaseName;
        end
        else
        begin
          FromDisplayTxt.Caption := Sender.ConnectUser.DatabaseName;
          ToDisplayTxt.Caption   := Sender.ConnectBackup.DatabaseName;
        end;
      end;
    neBeginPhase:
      begin
        PhaseDisplayTxt.Caption  := DBakPhaseToText(Sender.CurrentPhase);
      end;
    neBeforeCreateBackupDB:
      begin
        with Sender.ConnectBackup do
        begin
          SQLDialect := 3;
          PageSize   := 4096;
          CharSet    := 'UNICODE_FSS';
        end;
      end;
    neBeforeCreateUserDB:
      begin
        with Sender.ConnectUser do
        begin
          SQLDialect := 3;
          PageSize   := 4096;
          CharSet    := 'UNICODE_FSS';
        end;
      end;
  end;
end;

procedure TfrmNewBackup.DBakSaveScript(Sender: TDBak_Component; AScript,
  AProbs: TStrings; var AProceed: Boolean);
var
  i: integer;
begin
  for i := 0 to AProbs.Count - 1 do
    FTmpResults.Add('         ' + AProbs.Strings[i]);
end;

procedure TfrmNewBackup.DBakShowProgress(Sender : TDBak_Component;
  AStatus : string; var AProceed : Boolean);
var
  tmpProg : smallint;
begin
  StatusDisplayTxt.Caption := AStatus;
  if FStopping then
    AProceed := false;
  tmpProg := Sender.ProgressPerc;
  ProgressBar.Position := tmpProg;
  if (FAnimIdx < FirstAnim) or (FAnimIdx > LastAnim) then
    FAnimIdx := FirstAnim;
  DrawAnimation(FAnimIdx);
  Inc(FAnimIdx);
  Application.ProcessMessages;
end;

procedure TfrmNewBackup.ShowConfigurationPg;
begin
  ElFormCaption1.Texts[2].Caption := Utf8Decode('Cấu hình');
  dxLayoutControl2.BeginUpdate;
  dxlctrlStart.Visible := true;
  dxlctrlStop.Visible  := false;
  dxlctrlClose.Visible := true;
  dxLayoutControl2.EndUpdate;
  DrawAnimation(DefaultImg);
  pgcMain.ActivePage := tsConfig;
end;

procedure TfrmNewBackup.ShowRunningPg;
begin
  ElFormCaption1.Texts[2].Caption := Utf8Decode('Đang thực hiện');
  dxLayoutControl2.BeginUpdate;
  dxlctrlStart.Visible := false;
  dxlctrlStop.Visible  := true;
  dxlctrlClose.Visible := false;
  dxLayoutControl2.EndUpdate;
  DrawAnimation(DefaultImg);
  pgcMain.ActivePage   := tsRunning;
end;

procedure TfrmNewBackup.ShowResultsPg;
begin
  case DBak.CompletionCode of
    ccSuccess:
      ElFormCaption1.Texts[2].Caption := Utf8Decode('Kết thúc thao tác thành công!');
    ccWarnings:
      ElFormCaption1.Texts[2].Caption := Utf8Decode('Kết thúc thao tác có cảnh báo!');
    ccErrors:
      ElFormCaption1.Texts[2].Caption := Utf8Decode('Thao tác có lỗi!');
    ccUserAbort:
      ElFormCaption1.Texts[2].Caption := Utf8Decode('Thao tác bị bỏ qua!');
    ccFatal:
      ElFormCaption1.Texts[2].Caption := Utf8Decode('Lỗi hệ thống!');
  end;

  dxLayoutControl2.BeginUpdate;
  dxlctrlStart.Visible   := true;
  dxlctrlStop.Visible    := false;
  dxlctrlClose.Visible   := true;
  dxLayoutControl2.EndUpdate;
  DrawAnimation(DefaultImg);
  pgcMain.ActivePage     := tsResult;
  ResultsMemo.Lines.Text := FTmpResults.Text;
end;

procedure TfrmNewBackup.LoadSettingsFromFile(AFile: string);
begin
  if UpperCase(AFile) = UpperCase(FLoadedFile) then
    Exit;
  Inc(FInternalUpd);
  try
    FLoadedFile := '';
    DBakC.Reset;
    try
      DBakC.LoadSettingsFromFile(AFile);
      FLoadedFile := AFile;
    except
      DBakC.Reset;
    end;
  finally
    Dec(FInternalUpd);
  end;
end;

function TfrmNewBackup.SaveSettingsToFile(AFile: string; DoPrompt: boolean):
  boolean;
begin
  Result := true;
  if (Length(AFile) <= 0) or DoPrompt then
  begin
    with SaveDlg do
    begin
      FileName := AFile;
      if Execute then
      begin
        InitialDir := ExtractFilePath(FileName);
        FileDlg.InitialDir := InitialDir;
        AFile := FileName;
      end
      else
        Result := false;
    end;
  end;
  if Result then
  begin
    Inc(FInternalUpd);
    try
      DBakC.SaveSettingsToFile(AFile);
      DBakC.Modified := false;
      if AFile <> FLoadedFile then
        FLoadedFile := AFile;
    finally
      Dec(FInternalUpd);
    end;
  end;
end;

procedure TfrmNewBackup.StartDBak;
begin
  FStopping := false;
  FStartDT := SysUtils.Now;
  FEndDT := SysUtils.Now;
  FAnimIdx := FirstAnim - 1;
  FTmpResults.Clear;
  try
    ShowRunningPg;
    DBakC.ExecOperation(FConfirmedOperation, FConfirmedPhases);
  finally
    FEndDT := SysUtils.Now;
    FTmpResults.Add(Format(STR_DBak_RunTime, [FormatDateTime('hh.nn.ss', (FEndDT - FStartDT))]));
    ShowResultsPg;
  end;
end;

procedure TfrmNewBackup.StopDBak;
begin
  FStopping := true;
end;

procedure TfrmNewBackup.DrawAnimation(Idx: TImageIndex);
begin
  if (Idx >= 0) and (Idx < AnimationImgs.Count) then
    with Animation.Canvas do
    begin
      Brush.Color := Color;
      FillRect(Animation.ClientRect);
      AnimationImgs.Draw(Animation.Canvas, 0, 0, Idx);
      Animation.Invalidate;
    end;
end;

procedure TfrmNewBackup.elbtnStartClick(Sender: TObject);
var
  gen : smallint;
begin
  with DBakC.SelectedSet do
  begin
    UserDB.Server      := dxedtUserServer.Text;
    if UserDB.Server = '' then
      UserDB.Protocol  := cpLocal
    else
      UserDB.Protocol  := TIB_Protocol(dxpiedtUserProtocol.ItemIndex);

    UserDB.Path        := dxedtUserDB.Text;
    UserDB.UserName    := dxedtUserAccount.Text;
    UserDB.Password    := dxedtUserPassword.Text;
    UserDB.SetReadOnly := false;
    BackupDB[0].Server := dxedtBackupServer.Text;
    if BackupDB[0].Server = '' then
      BackupDB[0].Protocol := cpLocal
    else
      BackupDB[0].Protocol := TIB_Protocol(dxpiedtBackupProtocol.ItemIndex);
    BackupDB[0].Path        := dxedtBackupDB.Text;
    BackupDB[0].UserName    := dxedtBackupAccount.Text;
    BackupDB[0].Password    := dxedtBackupPassword.Text;
    BackupDB[0].SetReadOnly := dxchkBackupReadOnly.Checked;

    FConfirmedOperation := Operation;
    FConfirmedPhases    := Phases;
  end;

  if not DBakC.SelectedSet.Verify then
  begin
    raise EDBak_Exception.Create(ERR_DBak_SettingsInvalid);
    ShowConfigurationPg;
  end
  else
    StartDBak;
end;

procedure TfrmNewBackup.elbtnCloseClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmNewBackup.elbtnStopClick(Sender: TObject);
begin
  StopDBak
end;

constructor TfrmNewBackup.Create(AOwner: TComponent; AOperation: smallint);
var FIleName:String;
begin
  inherited Create(AOwner);
  ApplyUserInterface(TControl(self));
  FOperation := AOperation;
  FIleName := ExtractFilePath(Application.ExeName) + 'bs_config.ini';
  if FileExists(FileName) then
  begin
    DBakC.LoadSettingsFromFile(FIleName);
    with DBakC.SelectedSet do
    begin
      dxedtUserServer.Text := UserDB.Server;
      if UserDB.Protocol = cpLocal then
        dxpiedtUserProtocol.ItemIndex := 0
      else
      if UserDB.Protocol = cpNetBEUI then
        dxpiedtUserProtocol.ItemIndex := 1
      else
      if UserDB.Protocol = cpTCP_IP then
        dxpiedtUserProtocol.ItemIndex := 2
      else
      if UserDB.Protocol = cpNovell then
        dxpiedtUserProtocol.ItemIndex := 3;

      dxedtUserDB.Text       := UserDB.Path;
      dxedtUserAccount.Text  := UserDB.UserName;
      dxedtUserPassword.Text := UserDB.Password;

      dxedtBackupServer.Text := BackupDB[0].Server;

      if BackupDB[0].Protocol = cpLocal then
        dxpiedtBackupProtocol.ItemIndex := 0
      else
      if BackupDB[0].Protocol = cpNetBEUI then
        dxpiedtBackupProtocol.ItemIndex := 1
      else
      if BackupDB[0].Protocol = cpTCP_IP then
        dxpiedtBackupProtocol.ItemIndex := 2
      else
      if BackupDB[0].Protocol = cpNovell then
        dxpiedtBackupProtocol.ItemIndex := 3;

      dxedtBackupDB.Text := BackupDB[0].Path;
      dxedtBackupAccount.Text     := BackupDB[0].UserName;
      dxedtBackupPassword.Text    := BackupDB[0].Password;
      dxchkBackupReadOnly.Checked := BackupDB[0].SetReadOnly;
    end;
  end
  else
  begin
    dxpiedtUserProtocol.ItemIndex   := 2;
    dxpiedtBackupProtocol.ItemIndex := 2;
    dxedtUserDB.Text := MainDM.cnMain.DatabaseName;
  end;
  DBakC.SelectSet('Default');
  DBakC.PasswordStorage := psKeyFromUserReg;
  with DBakC.SelectedSet do
  begin
    if AOperation = 1 then
    begin
      Operation := opRestore;
      ElFormCaption1.Texts[1].Visible := true;
      ElFormCaption1.Texts[0].Visible := false;
    end
    else
    begin
      Operation := opBackup;
      ElFormCaption1.Texts[0].Visible := true;
      ElFormCaption1.Texts[1].Visible := false;
    end;
    CodeOptions := [coDefineShadows, coSetGeneratorVal, coAlwaysCharSet, coKeepCustomIndexNames];
    ProgressUpdates := 250;
    ProgressSleep   := -1;
  end;
  FTmpResults := TStringList.Create;
  ShowConfigurationPg;
end;

procedure TfrmNewBackup.dxedtUserDBButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if FileDlgBackup.Execute then
    dxedtUserDB.Text := FileDlgBackup.FileName;
end;

procedure TfrmNewBackup.dxedtBackupDBButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if FOperation = 0 then
  begin
    if SaveDlg.Execute then
        dxedtBackupDB.Text := SaveDlg.FileName;
  end
  else
  begin
    if FileDlgRestore.Execute then
        dxedtBackupDB.Text := FileDlgRestore.FileName;
  end;
end;

procedure TfrmNewBackup.dxedtUserServerChange(Sender: TObject);
begin
  if dxedtUserServer.Text = '' then
    dxpiedtUserProtocol.ItemIndex := 0;
end;

procedure TfrmNewBackup.dxedtBackupServerChange(Sender: TObject);
begin
  if dxedtBackupServer.Text = '' then
    dxpiedtBackupProtocol.ItemIndex := 0;
end;

procedure TfrmNewBackup.FormClose(Sender: TObject; var Action: TCloseAction);
var
  FileName : string;
begin
  FIleName := ExtractFilePath(Application.ExeName) + 'bs_config.ini';
  DBakC.SaveSettingsToFile(FIleName);
end;

procedure TfrmNewBackup.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  dxLayoutControl2.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl2.EndUpdate;

  dxLayoutControl3.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl3.EndUpdate;
end;

procedure TfrmNewBackup.FormKeyDown(Sender : TObject; var Key : Word;
  Shift : TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Saoluuphuchoidl.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TfrmNewBackup.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.

