unit LoginAForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, ShellAPI, Forms,
  dxDBEdtr, dxDBELib, Registry, dxLayoutControl, cxControls,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl,
  ElPopBtn, ExtCtrls, ElPanel, ElGroupBox, ElCheckItemGrp, dxBar,
  IB_Components, DB, IBODataset, dxLayout, dxExGrEd, dxExELib,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP,
  ZipForge;

type
  TLoginAFrm = class(TForm)
    Btn_OK: TELPopupButton;
    Btn_Cancel: TELPopupButton;
    edt_User: TdxEdit;
    edt_Pwd: TdxEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxDateEdit1: TdxDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    chkDownLoad: TdxCheckEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cnSys: TIB_Connection;
    tsSys: TIB_Transaction;
    qryUser: TIBOQuery;
    qryUserUSER_ID: TWideStringField;
    qryUserGROUP_ID: TWideStringField;
    qryUserUSER_NAME: TWideStringField;
    qryUserKF: TWideStringField;
    qryUserUSER_PASS: TWideStringField;
    dsUser: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    edtUserName: TdxDBExtLookupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrySys: TIBOQuery;
    qrySysSYSTEM_ID: TSmallintField;
    qrySysSYSTEM_PASS: TWideStringField;
    btnChgPass: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    rbSinhvien: TElRadioButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    rbBlank: TElRadioButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    ZipForge1: TZipForge;
    qryUserDBNAME: TWideStringField;
    dxLayoutControl1Item12: TdxLayoutItem;
    edtGrp: TdxDBExtLookupEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxDBGridLayoutList1Item2: TdxDBGridLayout;
    qryGrp: TIBOQuery;
    dsGrp: TDataSource;
    qryGrpGROUP_ID: TWideStringField;
    qryGrpGROUP_NAME: TWideStringField;
    qryGrpIS_ACTIVE: TSmallintField;
    qryGrpDBNAME: TWideStringField;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure Btn_OKClick(Sender: TObject);
    procedure SysDBConnect;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edt_UserChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function GetDBPath(ADBFileName: String): String;
    procedure edtUserNameChange(Sender: TObject);
    procedure btnChgPassClick(Sender: TObject);
    procedure rbBlankClick(Sender: TObject);
    procedure rbSinhvienClick(Sender: TObject);
  private
    IsDownLoadNew:Boolean;//Neu la lan dau tien sinh vien download ve
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginAFrm: TLoginAFrm;
  OldPassword,NewPassword,CurUserName:WideString;

implementation

uses MainDataMdl, MainForm, GlobalUnit, DateUtils, md5,SimpleSecurityLibrary,
  ChangePassA;



{$R *.dfm}

function TLoginAFrm.GetDBPath(ADBFileName: String): String;
var
  i:Smallint;
begin
  for i:=length(ADBFileName) downto 1 do
  if ((ADBFileName[i]='\') or (ADBFileName[i]='/')) then
  begin
    Result:=copy(ADBFileName,1,i);
    Exit;
  end;
end;

procedure TLoginAFrm.Btn_OKClick(Sender: TObject);
const
  StartKey = 11878;
var
  Reg: TRegistry;
begin
  edt_User.SetFocus;
  isLoginOK:=True;
  WorkingDate:=dxDateEdit1.Date;

  if (edt_User.Text='SSPAdmin') then
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
    if (edt_Pwd.Text <> UserPwd) then
    begin
      ShowMessageUniText(UTF8Decode('Mật khẩu này không đúng, Vui lòng xem lại (Capslock, hay các bộ gõ tiếng Việt)'));
      edt_Pwd.SetFocus;
      exit;
    end;
    FullUserName := UTF8Decode('Quản trị hệ thống');
    CurrentUser := 'SSPAdmin';
  end
  else if (edt_User.Text='admin') then
  begin
    qrySys.Open;
    UserPwd:=qrySysSYSTEM_PASS.Value;
    if (edt_Pwd.Text <> UserPwd) then
    begin
      ShowMessageUniText(UTF8Decode('Mật khẩu này không đúng, Vui lòng xem lại (Capslock, hay các bộ gõ tiếng Việt)'));
      edt_Pwd.SetFocus;
      exit;
    end;
    FullUserName := UTF8Decode('Quản trị hệ thống');
    CurrentUser := 'admin';
  end
  else if rbSinhvien.Checked then
  begin
      qryUser.Open;
      if qryUserUSER_ID.Value= edt_User.Text then
      begin
        if qryUserUSER_PASS.Value <> edt_Pwd.Text then
        begin
          ShowMessageUniText(UTF8Decode('Mật khẩu này không đúng, Vui lòng xem lại (Capslock, hay các bộ gõ tiếng Việt)'));
          edt_Pwd.SetFocus;
          exit;
        end
        else
        begin
          FullUserName := qryUserUSER_NAME.Value;
          CurrentUser := edt_User.Text;
          UserPwd := edt_Pwd.Text;
        end;
      end
      else
      begin
        ShowMessageUniText(UTF8Decode('Chỉ có thể vào dữ liệu của sinh viên này bằng người dùng admin hoặc tên đăng nhập chính là mã số của sinh viên'));
        edt_User.SetFocus;
        exit;
      end;
  end
  else
  begin
    ShowMessageUniText(UTF8Decode('Chỉ có người dùng tên admin mới có quyền vào dữ liệu mẫu của các lớp học'));
    edt_User.SetFocus;
    Exit;
  end;

  if rbSinhvien.Checked then
  begin
    UseFTP:=True;
    MainDM.cnMain.Close;
    FTPGroupName:=ReplaceToFileName(qryUserGROUP_ID.AsString);
    FTPFileName:=ReplaceToFileName(qryUserUSER_ID.AsString)+'.gdb';
    FTPFileZipName:=ReplaceToFileName(qryUserUSER_ID.AsString)+'.zip';

    if chkDownLoad.Checked then
      if Not DownLoadFile then Exit;

    Reg := TRegistry.Create;
    with MainDM do
    try
      cnMain.Close;
      cnMain.Server := '';
      cnMain.DatabaseName := ApplicationDir+'\db.gdb';
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
      begin
        cnMain.Username := SSPDecode(reg.ReadString('Username'));
        cnMain.Password := SSPDecode(reg.ReadString('Password'));
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;

    try
      MainDM.cnMain.Connect;
    except
      ShowMessageUniText(UTF8Decode('Dữ liệu của sinh viên này chưa có trên máy, Vui lòng chọn vào mục "chép về máy trạm để thao tác"'));
      exit;
    end;
  end
  else
  begin
    Reg := TRegistry.Create;
    with MainDM do
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
      begin
        cnMain.Server := reg.ReadString('FTPServer');
        cnMain.DatabaseName := cnMain.Server+':'+reg.ReadString('FTPFullPath')+'\'+qryGrpDBNAME.AsString;
        cnMain.Username := SSPDecode(reg.ReadString('Username'));
        cnMain.Password := SSPDecode(reg.ReadString('Password'));
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;

    try
      MainDM.cnMain.Connect;
    except
      ShowMessageUniText(UTF8Decode('Không thể kết nối tới dữ liệu của lớp này, Vui lòng xem lại !'));
      exit;
    end;
  end;

  InitGlobalValueDB;
  MainDM.qrySysLog.Open;
  
  if (edt_User.Text<>'SSPAdmin') then
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_ADDUSER(:UN, :FN,:PW)';
    Prepare;

    ParamByName('UN').Value := edt_User.Text;
    ParamByName('FN').value := qryUserUSER_NAME.Value;
    ParamByName('PW').Value := MD5Print(MD5String(qryUserUSER_PASS.Value));
    ExecSQL;
    Close;
  end;
  //Ket thuc kiem tra
//Ghi lai Registry ten User nay
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
    begin
      Reg.WriteString('LastUser',edt_User.Text);
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

procedure TLoginAFrm.SysDBConnect;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
    begin
      cnSys.Close;

      cnSys.Server := reg.ReadString('FTPServer');
      cnSys.DatabaseName := cnSys.Server + ':' +reg.ReadString('FTPFullPath')+'\'+'dblist.gdb';

      cnSys.Username := SSPDecode(reg.ReadString('Username'));
      cnSys.Password := SSPDecode(reg.ReadString('Password'));
    end;
  finally
    Reg.Free;
  end;

  try
    cnSys.Connect;
  except
    exit;
  end;

  qryUser.Open;
  qryGrp.Open;
  if edt_User.Text<>'' then
    qryUser.Locate('USER_ID',edt_User.Text,[]);
end;

procedure TLoginAFrm.FormCreate(Sender: TObject);
var
  SystemTime: TSystemTime;
  Reg: TRegistry;
begin
//Ghi lai Registry ten User nay
  GetLocalTime(SystemTime);

  dxDateEdit1.Date :=  Now;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
    begin
      edt_User.Text:= Reg.ReadString('LastUser');
      CurLanguage:=reg.ReadInteger('LastLanguage');
      Btn_OK.Enabled :=true;
      Reg.CloseKey;
    end;
  Except
    Reg.Free;
  end;
  //SetCaption(Self);
  //rgrpLanguage.ItemIndex:=CurLanguage;
  SysDBConnect;

  if Not cnSys.Connected then
    with MainDM do
    begin
      cnMain.Close;
      cnMain.Server := '';
      cnMain.DatabaseName := ApplicationDir+'\db.gdb';
      cnMain.Username := cnSys.Username;
      cnMain.Password := cnSys.Password;
      try
        cnMain.Connect;
      except
        ShowMessage('Can not connect Database(db.gdb). Please check Database Server or Network');
        Application.Terminate;
        isLoginOK:=False;
        exit;
      end;

      CurrentUser:='admin';
      WorkingDate:=Now;

      InitGlobalValueDB;
      MainDM.qrySysLog.Open;
      MainDM.acLoadUserRight.Execute;
      AllowLogin(MonthOf(WorkingDate), YearOf(WorkingDate));
      isLoginOK:=True;
      IsShowLoginForm:=False;
      Self.Close;
      Application.ProcessMessages;
    end;
end;

procedure TLoginAFrm.Button1Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'Open', '.\config.exe', '', '', 0);
end;

procedure TLoginAFrm.edt_UserChange(Sender: TObject);
begin
  Btn_OK.Enabled:= trim(edt_User.Text) <>'';
end;

procedure TLoginAFrm.FormShow(Sender: TObject);
begin
  if edt_User.Text<>'' then
    edt_Pwd.SetFocus
  else
    edt_User.Focused;

  //SetVisible(Self);
end;

procedure TLoginAFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10  then
  begin
    SSPUserRight[6].ER:=True;
    SSPUserRight[6].DR:=True;
    LoadCaptionFormInfo(Self);
  end;}
end;

procedure TLoginAFrm.edtUserNameChange(Sender: TObject);
begin
  if edt_User.Text<>'admin' then
    edt_User.Text:=qryUserUSER_ID.Value;
end;

procedure TLoginAFrm.btnChgPassClick(Sender: TObject);
begin
  OldPassword:=qryUserUSER_PASS.Value;
  NewPassword:='';
  CurUserName:=qryUserUSER_ID.Value+'-'+qryUserUSER_NAME.Value;
  with TChangePassAFrm.Create(Self) do
  try
    if ShowModal=mrOk then
    if (NewPassword<>OldPassword) then
    begin
      qryUser.Edit;
      qryUserUSER_PASS.Value:=NewPassword;
      qryUser.Post;
      ShowMessageUniText(UTF8Decode('Mật khẩu đã được thay đổi !'));
    end;
  finally
    Free;
  end;
end;

procedure TLoginAFrm.rbBlankClick(Sender: TObject);
begin
  edtGrp.Enabled:=True;
  chkDownLoad.Enabled:=False;
  edtUserName.Enabled:=False;
  btnChgPass.Enabled:=False;
end;

procedure TLoginAFrm.rbSinhvienClick(Sender: TObject);
begin
  edtGrp.Enabled:=False;
  chkDownLoad.Enabled:=True;
  edtUserName.Enabled:=True;
  btnChgPass.Enabled:=True;
end;

end.
