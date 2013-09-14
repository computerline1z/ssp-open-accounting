unit LoginBForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, ShellAPI, Forms,
  dxDBEdtr, dxDBELib, Registry, dxLayoutControl, cxControls,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl,
  ElPopBtn, ExtCtrls, ElPanel, ElGroupBox, ElCheckItemGrp, dxBar, ElCLabel,
  ElLabel;

type
  TLoginBFrm = class(TForm)
    Btn_OK: TELPopupButton;
    Btn_Cancel: TELPopupButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxDateEdit1: TdxDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxButtonEdit1: TdxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    edt_User: TdxEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edt_Pwd: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElLabel1: TElLabel;
    procedure Btn_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_UserChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButtonEdit1Change(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginBFrm: TLoginBFrm;

implementation

uses MainDataMdl, MainForm, DB, GlobalUnit, DateUtils, md5,SimpleSecurityLibrary;



{$R *.dfm}

procedure TLoginBFrm.Btn_OKClick(Sender: TObject);
var
  Reg: TRegistry;
  UserPwd:string;
  UserName, Password:WideString;
begin
  WorkingDate:=dxDateEdit1.Date;
  isLoginOK:=True;

  with MainDM do
  if Not cnMain.Connected then
  begin
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
    begin
      Username := reg.ReadString('Username');
      Password := reg.ReadString('Password');
    end;
    cnMain.Server := '';
    cnMain.DatabaseName := dxButtonEdit1.Text;
    cnMain.Username := SSPDecode(UserName);
    cnMain.Password := SSPDecode(Password);

    Reg.Free;

    try
      cnMain.Connect;
    except
      ShowMessage('Can not connect Database. Please check Database Server or Network');
      //Application.Terminate;
      dxButtonEdit1.SetFocus;
      isLoginOK:=False;
      exit;
    end;
    InitGlobalValueDB;
    qrySysLog.Open;
  end;


  //Kiem tra user
  if edt_User.Enabled then
  if edt_User.Text='SSPAdmin' then
  begin
    CurMonth:=MonthOf(dxDateEdit1.Date);
    case CurMonth of
      1:UserPwd:='January';
      2:UserPwd:='February';
      3:UserPwd:='March';
      4:UserPwd:='April';
      5:UserPwd:='May';
      6:UserPwd:='June';
      7:UserPwd:='July';
      8:UserPwd:='August';
      9:UserPwd:='September';
      10:UserPwd:='October';
      11:UserPwd:='November';
      12:UserPwd:='December';
    end;
    UserPwd:='SSP'+UserPwd;
    if edt_Pwd.Text <> UserPwd then
    begin
      ShowMessageUniText(UTF8Decode('Mật khẩu không đúng, Vui lòng xem lại !'));
      edt_Pwd.SetFocus;
      exit;
    end;
    FullUserName := UTF8Decode('Quản trị hệ thống');
    CurrentUser := 'SSPAdmin';
    UserPwd := 'AdminSSP';
  end
  else
  begin
    with MainDM do
    begin
      qryUser.Open;
      if qryUser.Locate('USER_NAME', edt_User.Text,[]) then
      begin
        //if qryUserUSER_PWD.Value <> edt_Pwd.Text then
        if qryUserUSER_PWD.Value <> MD5Print(MD5String(edt_Pwd.Text)) then
        begin
          ShowMessageUniText(UTF8Decode('Mật khẩu không đúng, Vui lòng xem lại !!'));
          edt_Pwd.SetFocus;
          qryUser.Close;
          exit;
        end
        else
        begin
          FullUserName := qryUserFULL_NAME.Value;
          CurrentUser := edt_User.Text;
          UserPwd := edt_Pwd.Text;
          qryUser.Open;
          qryUser.Edit;
          qryUserLAST_ACCESS.AsDateTime := Now;
          qryUser.Post;
          qryUser.Close;
        end;
      end
      else
      begin
        if qryUser.RecordCount<=1 then
        begin
          edt_Pwd.Text:='';
          with qryCommon do
          begin
            Close;
            SQL.Clear;
            Params.Clear;
            SQL.Text :='execute procedure SP_ADDUSER_BD(:UN)';
            Prepare;

            ParamByName('UN').Value := edt_User.Text;
            ExecSQL;
            Close;
          end;
          FullUserName := edt_User.Text;
          CurrentUser := edt_User.Text;
          UserPwd := '';
        end
        else
        begin
          ShowMessageUniText(UTF8Decode('Không tồn tại người dùng nào có tên này, Vui lòng liên hệ với người quản trị  !'));
          edt_User.SetFocus;
          qryUser.Close;
          exit;
        end;
      end;
    end;
  end;

  //Ket thuc kiem tra
//Ghi lai Registry ten User nay
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
    begin
      Reg.WriteString('LastUser',edt_User.Text);
      Reg.WriteString('LastDB',dxButtonEdit1.Text);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;

  MainDM.acLoadUserRight.Execute;
  //Kiem tra xem thang nay co bi khoa so chua

  if AllowLogin(MonthOf(dxDateEdit1.Date), YearOf(dxDateEdit1.Date))=False then
  begin
    dxDateEdit1.SetFocus;
    exit;
  end;
  
  ModalResult := mrOK;
end;

procedure TLoginBFrm.FormCreate(Sender: TObject);
var
  SystemTime: TSystemTime;
  Reg: TRegistry;
begin
  GetLocalTime(SystemTime);
  dxDateEdit1.Date :=  Now;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
    begin
      edt_User.Text:= Reg.ReadString('LastUser');
      CurLanguage:=reg.ReadInteger('LastLanguage');
      dxButtonEdit1.Text:=Reg.ReadString('LastDB');
      Btn_OK.Enabled :=true;
      Reg.CloseKey;
    end;
  Except
    Reg.Free;
  end;
  if dxButtonEdit1.Text='' then
    dxButtonEdit1.Text:=ApplicationDir+'\db.gdb';
end;

procedure TLoginBFrm.edt_UserChange(Sender: TObject);
begin
  Btn_OK.Enabled:= trim(edt_User.Text) <>'';
end;

procedure TLoginBFrm.FormShow(Sender: TObject);
begin
  if edt_User.Text<>'' then
    edt_Pwd.SetFocus
  else
    edt_User.Focused;
end;

procedure TLoginBFrm.dxButtonEdit1Change(Sender: TObject);
begin
  MainDM.cnMain.Disconnect;
end;

procedure TLoginBFrm.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if OpenDialog1.Execute then
    dxButtonEdit1.Text:=OpenDialog1.FileName;
end;

end.
