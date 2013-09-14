unit ConfigFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, IB,
  Dialogs, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib, IBDatabase, DB, Registry,
  ExtCtrls, dxExEdtr, dxLayoutControl, cxControls,HTMLHlp,
  TntStdCtrls, TntButtons, TntForms, ElXPThemedControl, ElEdits, ElCaption,
  ElCheckCtl, ElBtnCtl, ElPopBtn, ElBtnEdit, ElHTMLHint, hhcomponent,
  ElCombos, dxLayoutLookAndFeels, IB_Components, ElPanel, dxDBCtrl,
  dxDBGrid, dxTL, dxmdaset;
const
  StartKey = 11878;
  const1 = 20279;
  const2 = 61994;
type
  TfrmConfig = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item9: TdxLayoutItem;
    btnOK: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnCancel: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    btnTest: TElPopupButton;
    escBanHang: TdxEditStyleController;
    OpenDialog: TOpenDialog;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rbDemoDB: TElRadioButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    rbMainDB: TElRadioButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    edtServer: TEdit;
    locIP: TdxLayoutItem;
    edtUser: TEdit;
    locUser: TdxLayoutItem;
    edtPassword: TEdit;
    locPass: TdxLayoutItem;
    ElHTMLHint1: TElHTMLHint;
    btnHelp: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    HtmlHelp1: THtmlHelp;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    IB_Connection1: TIB_Connection;
    IB_Transaction1: TIB_Transaction;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElPanel1: TElPanel;
    mmoDir: TTntMemo;
    locDataPath: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    pnlPath: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1filename: TStringField;
    dxMemData1dirpath: TStringField;
    dxDBGrid1filename: TdxDBGridMaskColumn;
    dxDBGrid1dirpath: TdxDBGridMaskColumn;
    dxMemData1SERVER: TStringField;
    dxDBGrid1SERVER: TdxDBGridMaskColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    btnOKDir: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    btnAdd: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    btnDel: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    btnClose5: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnList: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    btnPath: TElPopupButton;
    dxMemData1STT: TStringField;
    dxDBGrid1STT: TdxDBGridMaskColumn;
    dxDBGrid1RecId: TdxDBGridMaskColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxMemData1ALIAS: TStringField;
    dxDBGrid1ALIAS: TdxDBGridMaskColumn;
    dxLayoutControl1Item3: TdxLayoutItem;
    edtAlias: TEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    procedure btnOKClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GetConfig;
    procedure SetConfig;
    function ConnectDatabase(ServerIP, DatabaseFile, UserDB, Pwd: string): LongInt;
    procedure btnCancelClick(Sender: TObject);
    procedure edtServerChange(Sender: TObject);
    procedure rbMainDBClick(Sender: TObject);
    procedure rbDemoDBClick(Sender: TObject);
    //procedure edtDBButtonClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure btnClose5Click(Sender: TObject);
    procedure dxMemData1SERVERChange(Sender: TField);
    procedure btnDelClick(Sender: TObject);
    procedure btnOKDirClick(Sender: TObject);
    procedure btnPathClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxMemData1ALIASChange(Sender: TField);


  private
    MServerIP, MDatabase, MUserDB, MPassword, MAlias : String;
    DServerIP, DDatabase, DUserDB, DPassword, DAlias : String;
    IsDemo:Boolean;
  public

  end;

var
  frmConfig: TfrmConfig;
  MsgText:WideString;
  MsgType:Smallint;
implementation

uses SimpleSecurityLibrary, MsgDlgForm, GlobalUnit;

{$R *.dfm}

procedure TfrmConfig.btnOKClick(Sender: TObject);
var reg : TRegistry;
    flag : smallint;
    key, key1 : string;
    dbMaxCount, {dbPathCount,} i: integer;
begin
  if rbMainDB.Checked then
  begin
    MServerIP := edtServer.Text;
    MAlias := edtAlias.Text;
    MDatabase := mmoDir.Text;
    MUserDB := edtUser.Text;
    MPassword := edtPassword.Text;
  end
  else
  begin
    DServerIP := edtServer.Text;
    DAlias := edtAlias.Text;
    DDatabase := mmoDir.Text;
    DUserDB := edtUser.Text;
    DPassword := edtPassword.Text;
  end;
  SetConfig;
  btnOK.Enabled := false;
 
end;

procedure TfrmConfig.btnTestClick(Sender: TObject);
var ret : LongInt;
begin
  if mmoDir.Text = '' then
  begin
    if CurLanguage = 1  then
      ShowMessageUniText(UTF8Decode('Vui lòng tập tin cơ sở dữ liệu'), 0)
    else
      ShowMessageUniText(UTF8Decode('Please choose a database filename!'), 0);
    mmoDir.SetFocus;
    exit;
  end;

  ret := ConnectDataBase(edtServer.Text, mmoDir.Text, edtUser.Text, edtPassword.Text);
  
  if ret = 1 then
    if CurLanguage =1 then
      ShowMessageUniText(UTF8Decode('Đã kết nối thành công tới dữ liệu này'), 0)
    else
      ShowMessageUniText(UTF8Decode('Connected to database successfully'), 0)
  else
    if CurLanguage =1 then
      ShowMessageUniText(UTF8Decode('Đã không kết nối được tới dữ liệu này, vui lòng xem lại'),0)
    else
      ShowMessageUniText(UTF8Decode('Cannot connect to the database, please check again!'),0);


end;

procedure TfrmConfig.FormCreate(Sender: TObject);
var reg : TRegistry;
    {dbpathCount,} i, dbMaxCount : integer;
    key,ser,alias : string;
begin
  IsDemo := False;
  GetConfig;
  btnOK.Enabled := False;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database\Paths', False) then
    begin
      dbMaxCount := reg.ReadInteger('MaxKeys');
      //dbPathCount := reg.ReadInteger('Counts');

      dxMemData1.Open;
      for i := 0 to dbMaxCount-1 do
      begin
        key := 'P' + IntToStr(i + 1);
        ser := 'S' + IntToStr(i + 1);
        alias := 'A' + IntToStr(i + 1);
        //elCBTTDL.Items.Append(reg.ReadString(key));

        if reg.ReadString(key) = '' then break;

        dxMemData1.Append;
        dxMemData1STT.AsString := key;
        dxMemData1DIRPATH.AsString := reg.ReadString(key);
        dxMemData1SERVER.AsString := reg.ReadString(ser);
        dxMemData1FILENAME.AsString :=ExtractFileName(dxMemData1dirpath.AsString);
        dxMemData1ALIAS.Value := reg.ReadString(alias);
        dxMemData1.Post;
      end;
        dxMemData1.First;
    end
  finally
    Reg.Free;
  end;

  edtServer.Text := MServerIP;
  mmoDir.Text := MDatabase;
  edtUser.Text := MUserDB;
  edtPassword.Text := MPassword;
  edtAlias.Text := MAlias;
end;

procedure TfrmConfig.GetConfig;
var reg : TRegistry;
    security : TSecurity;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
    begin
      MServerIP := reg.ReadString('Server');
      MDatabase := reg.ReadString('DatabaseName');
      MUserDB   := reg.ReadString('Username');
      MPassword := reg.ReadString('Password');
      MAlias    := reg.ReadString('Alias');

      DServerIP := reg.ReadString('DServer');
      DDatabase := reg.ReadString('DDatabaseName');
      DUserDB   := reg.ReadString('DUsername');
      DPassword := reg.ReadString('DPassword');
      DAlias    := reg.ReadString('DAlias');

      security  := TSecurity.Create(const1, const2);
      try
        MUserDB   := security.Decrypt(MUserDB, StartKey);
        MPassword := security.Decrypt(MPassword, StartKey);
        DUserDB   := security.Decrypt(DUserDB, StartKey);
        DPassword := security.Decrypt(DPassword, StartKey);
      finally
        security.Free
      end;
    end;
  finally
    Reg.Free;
  end
end;

procedure TfrmConfig.SetConfig;
var
  Reg : TRegistry;
  security : TSecurity;
begin
  security := TSecurity.Create(const1, const2);
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database', True) then
    begin
      reg.WriteString('Server', MServerIP);
      reg.WriteString('DatabaseName', MDatabase);
      reg.WriteString('Username', security.Encrypt(MUserDB, StartKey));
      reg.WriteString('Password', security.Encrypt(MPassword, StartKey));
      reg.WriteString('Alias', MAlias);

      reg.WriteString('DServer', DServerIP);
      reg.WriteString('DDatabaseName', DDatabase);
      reg.WriteString('DUsername', security.Encrypt(DUserDB, StartKey));
      reg.WriteString('DPassword', security.Encrypt(DPassword, StartKey));
      reg.WriteString('DAlias', DAlias);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
    security.Free;
  end;
end;

function TfrmConfig.ConnectDatabase(ServerIP, DatabaseFile, UserDB, Pwd: string) : LongInt;
var ret : LongInt;
begin

  ret := 0;
  with IB_Connection1 do
  begin
    try
      if UserDB <> '' then
      begin
        if ServerIP <> '' then
          DatabaseName := ServerIP + ':' + DatabaseFile
        else
          DatabaseName := DatabaseFile;
          if (Connected = true) then close;
        Username := UserDB;
        Password := Pwd;
        Open;
        Close;
        ret := 1;
      end;
    except on E: EIBInterBaseError do
        ret := E.iberrorcode;
    end;
  end;
  Result := ret;
end;

procedure TfrmConfig.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfig.edtServerChange(Sender: TObject);
begin
  btnOK.Enabled := true;
end;

procedure TfrmConfig.rbMainDBClick(Sender: TObject);
var
  Trangthai : Boolean;
begin
  if Not IsDemo then exit;
  IsDemo    := false;
  Trangthai := btnOK.Enabled;
  DServerIP := edtServer.Text;
  DDatabase := mmoDir.Text;
  DUserDB   := edtUser.Text;
  DPassword := edtPassword.Text;
  DAlias := edtAlias.Text;
  //Thinh them 120906
  mmoDir.Text := MDatabase;
  //==========================
  edtServer.Text   := MServerIP;
  mmoDir.Text       := MDatabase;
  edtUser.Text     := MUserDB;
  edtPassword.Text := MPassword;
  edtAlias.Text := MAlias;
  btnOK.Enabled   := Trangthai ;
end;

procedure TfrmConfig.rbDemoDBClick(Sender: TObject);
var
  Trangthai : Boolean;
begin
  if IsDemo then exit;
  IsDemo    := True;
  Trangthai := btnOK.Enabled;
  MServerIP := edtServer.Text;
  MDatabase := mmoDir.Text;
  MUserDB   := edtUser.Text;
  MPassword := edtPassword.Text;
  MAlias := edtAlias.Text;
  //Thinh them 120906
  mmoDir.Text := DDatabase;
  //=================
  edtAlias.Text := DAlias ;
  edtServer.Text   := DServerIP;
  mmoDir.Text       := DDatabase;
  edtUser.Text     := DUserDB;
  edtPassword.Text := DPassword;
  btnOK.Enabled   := Trangthai ;
end;

{procedure TfrmConfig.edtDBButtonClick(Sender: TObject);
var reg  : TRegistry;
    flag : smallint;
    key, key1 : string;
    dbMaxCount, {dbPathCount, i: integer;
begin
  with TOpenDialog.Create(Self) do
  begin
    try
      Filter  := 'Interbase Files (*.gdb)|*.gdb|Access Files (*.mdb)|*.mdb|All Files (*.*)|*.*';
      Options := [ofHideReadOnly, ofNoNetworkButton, ofEnableSizing];
      if Execute then
      begin
        mmoDir.Text := FileName;
      end;
    finally
      Free;
    end;
  end;
end;
}
procedure TfrmConfig.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Cauhinhdulieu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TfrmConfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Cauhinhdulieu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
end;

procedure TfrmConfig.btnDirClick(Sender: TObject);

var reg  : TRegistry;
    flag : smallint;
    key, key1 : string;
    dbMaxCount, dbPathCount, i: integer;
begin
  with TOpenDialog.Create(Self) do
  begin
    try
      Filter  := 'Interbase Files (*.gdb)|*.gdb|Access Files (*.mdb)|*.mdb|All Files (*.*)|*.*';
      Options := [ofHideReadOnly, ofNoNetworkButton, ofEnableSizing];
      if Execute then
      begin
        mmoDir.Text := FileName;

      end;
    finally

      Free;
    end;
  end;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
    if CurLanguage = 2 then
      begin
        rbDemoDB.Caption := 'De&mo data';
        rbMainDB.Caption := '&Main data';
        locIP.Caption := 'Server name (&IP)';
        locUser.Caption := '&User';
        locPass.Caption := '&Password';
        locDataPath.Caption := '&Database';
        btnTest.Caption := '&Test connection';
        btnHelp.Caption := '&Help';
        btnOK.Caption := '&OK';
        btnCancel.Caption := '&Close';
      end
    else
      begin
        rbDemoDB.Caption := UTF8Decode('Dữ liệu thử');
        rbMainDB.Caption := UTF8Decode('&Dữ liệu chính');
        locIP.Caption := UTF8Decode('Tên máy chủ (IP)');
        locUser.Caption := UTF8Decode('Tên đăng nhập');
        locPass.Caption := UTF8Decode('Mật khẩu');
        locDataPath.Caption :=UTF8Decode('Đường dẫn dữ liệu');
        btnTest.Caption := UTF8Decode('Kết nối thử');
        btnHelp.Caption := UTF8Decode('Giúp đỡ');
        btnOK.Caption := UTF8Decode('&Lưu');
        btnCancel.Caption := UTF8Decode('&Đó&ng');
    end
end;

procedure TfrmConfig.btnAddClick(Sender: TObject);
var sfilename, sfilepath : string;
    stt :smallint;
    reg : TRegistry;
begin
  if dxMemData1.RecordCount = 10 then exit;

  with TOpenDialog.Create(Self) do
  begin
    try
      Filter  := 'Interbase Files (*.gdb)|*.gdb|Access Files (*.mdb)|*.mdb|All Files (*.*)|*.*';
      Options := [ofHideReadOnly, ofNoNetworkButton, ofEnableSizing];

      if Execute then
      begin
         sfilename := ExtractFileName(FileName);
         sfilepath := FileName;

         dxMemData1.Append;
         dxMemData1FILENAME.value := sfilename;
         dxMemData1STT.Value := 'P' + inttostr(dxMemData1.RecordCount + 1);
         dxMemData1DIRPATH.Value := sfilepath;
         dxMemData1.Post;
      end;
    finally
        free;
    end;
  end;

  Reg  := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database\Paths', False) then
      reg.WriteString('P' + inttostr(dxMemData1.RecordCount), sfilepath);
  finally
    reg.Free;
  end;

end;

procedure TfrmConfig.btnListClick(Sender: TObject);
begin
  pnlPath.Visible := TRUE;
  pnlPath.Align :=  alClient;
end;

procedure TfrmConfig.btnClose5Click(Sender: TObject);
begin
  pnlPath.Visible := FALSE;
end;

procedure TfrmConfig.dxMemData1SERVERChange(Sender: TField);
var reg  : TRegistry;
    stt :Smallint;
begin

   //if dxMemData1SERVER.Value ='' then exit;

   Reg  := TRegistry.Create;
   try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(RMAIN_KEY + '\Database\Paths', False) then
      begin
           if Length(dxMemData1STT.Value) = 3 then
              stt := StrToInt(Copy(dxMemData1STT.Value,2,2))
           else
              stt := StrToInt(Copy(dxMemData1STT.Value,2,1));

           Reg.WriteString('S' + IntToStr(stt) , trim(dxMemData1SERVER.Value));
      end;
   finally
        reg.Free;
   end;

end;

procedure TfrmConfig.btnDelClick(Sender: TObject);
var reg  : TRegistry;
    i,stt, maxcount :Smallint;

begin

   if Length(dxMemData1STT.Value) = 3 then
      stt := StrToInt(Copy(dxMemData1STT.Value,2,2))
   else
      stt := StrToInt(Copy(dxMemData1STT.Value,2,1));

   Reg  := TRegistry.Create;
   try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(RMAIN_KEY + '\Database\Paths', False) then

      maxcount := reg.ReadInteger('maxkeys');
      for i := stt to maxcount-1 do
      begin //push up
        reg.WriteString('P'+ IntToStr(i), reg.ReadString('P'+ IntToStr(i+1)) );
        reg.WriteString('S'+ IntToStr(i), reg.ReadString('S'+ IntToStr(i+1)) );
        reg.WriteString('A'+ IntToStr(i), reg.ReadString('A'+ IntToStr(i+1)) );
      end;
      reg.WriteString('P'+ IntToStr(maxcount), '');
      reg.WriteString('S'+ IntToStr(maxcount), '');
      reg.WriteString('A'+ IntToStr(maxcount), '');
      dxMemData1.Delete;

   finally
      reg.Free;
   end;

end;

procedure TfrmConfig.btnOKDirClick(Sender: TObject);
begin
    if dxMemData1.State in [dsEdit,dsInsert] then
      dxMemData1.Post;
    mmoDir.Text := dxMemData1dirpath.Value;
    edtServer.Text := dxMemData1SERVER.Value;
    edtAlias.Text := dxMemData1ALIAS.Value;
    pnlPath.Visible := FALSE;
    btnOK.Enabled := TRUE;
end;

procedure TfrmConfig.btnPathClick(Sender: TObject);
var reg  : TRegistry;
    flag : smallint;
    key, key1 : string;
    dbPathCount, i: integer;
begin
  with TOpenDialog.Create(Self) do
  begin
    try
      Filter  := 'Interbase Files (*.gdb)|*.gdb|Access Files (*.mdb)|*.mdb|All Files (*.*)|*.*';
      Options := [ofHideReadOnly, ofNoNetworkButton, ofEnableSizing];
      if Execute then
      begin
        mmoDir.Text := FileName;

      end;
    finally

      Free;
    end;
  end;

end;

procedure TfrmConfig.dxDBGrid1DblClick(Sender: TObject);
begin
  btnOKDir.Click;
end;

procedure TfrmConfig.dxMemData1ALIASChange(Sender: TField);
var reg  : TRegistry;
    stt :Smallint;
begin

   Reg  := TRegistry.Create;
   try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(RMAIN_KEY + '\Database\Paths', False) then
      begin
           if Length(dxMemData1STT.Value) = 3 then
              stt := StrToInt(Copy(dxMemData1STT.Value,2,2))
           else
              stt := StrToInt(Copy(dxMemData1STT.Value,2,1));

           Reg.WriteString('A' + IntToStr(stt) , trim(dxMemData1ALIAS.Value));
      end;
   finally
        reg.Free;
   end;

end;

end.

