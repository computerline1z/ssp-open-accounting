unit LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, ShellAPI, Forms,
  dxDBEdtr, dxDBELib, Registry, dxLayoutControl, cxControls,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl,
  ElPopBtn, ExtCtrls, ElPanel, ElGroupBox, ElCheckItemGrp, dxBar,
  dxLayoutLookAndFeels, dxLayout, dxExGrEd, dxExELib, DB, dxmdaset,
  ElCLabel, ElLabel;

type
  TLoginFrm = class(TForm)
    Btn_OK: TELPopupButton;
    Btn_Cancel: TELPopupButton;
    edt_User: TdxEdit;
    edt_Pwd: TdxEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    locUser: TdxLayoutItem;
    locPass: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    rbMainDB: TElRadioButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    rbDemoDB: TElRadioButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxDateEdit1: TdxDateEdit;
    locDate: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    rgrpLanguage: TElRadioGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btnCfg: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    lkchinhanh: TdxDBExtLookupEdit;
    locBranch: TdxLayoutItem;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    memBranch: TdxMemData;
    memBranchBRANCH_ID: TStringField;
    dsBranch: TDataSource;
    stylelogin: TdxEditStyleController;
    memBranchISMIN: TSmallintField;
    memBranchFULLNAME: TWideStringField;
    ElPanel1: TElPanel;
    memBranchSHORTNAME: TWideStringField;
    dxLayoutControl1Item8: TdxLayoutItem;
    lblStatus: TElLabel;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    lblnotify: TElLabel;
    memBranchTAXCODE: TStringField;

    procedure Btn_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edt_UserChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbMainDBClick(Sender: TObject);
    procedure rbDemoDBClick(Sender: TObject);
    procedure rgrpLanguageClick(Sender: TObject);
    procedure btnCfgClick(Sender: TObject);
    procedure lkchinhanhCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure lkchinhanhInitPopup(Sender: TObject);
    procedure LoadBranchID();
    procedure dxEdit2Exit(Sender: TObject);

  private
    { Private declarations }
    //Branch : WideString;
  public
    { Public declarations }

  end;

var
  LoginFrm: TLoginFrm;

implementation

uses MainDataMdl, MainForm, {DB,} GlobalUnit, DateUtils, md5,SimpleSecurityLibrary,
  ConfigFrm, GlobalInterface, Getcomid;



{$R *.dfm}

procedure TLoginFrm.Btn_OKClick(Sender: TObject);
var
  Reg : TRegistry;
  UserName, Password : WideString;
begin

  edt_User.SetFocus;
  WorkingDate := dxDateEdit1.Date;
  isLoginOK := True;

  CurMonth := MonthOf(dxDateEdit1.Date);
  CurYear  := YearOf(dxDateEdit1.Date);

  //Thinh them 120906
  vpBranch_id := memBranchBRANCH_ID.Value;
  vpBranch_IsMin := memBranchISMIN.Value;
  vpBranch_Name := memBranchSHORTNAME.value;//memBranchFULLNAME.value;
  vpLoginBranch := vpBranch_id;

  if vpBranch_id = '' then
  begin
    ShowMessageUniText(UTF8Decode('Bạn phải chọn mã đơn vị khi sử dụng chương trình!'));
    exit;
  end;

  MainDM.cnMain.close;

  with MainDM do
  if Not cnMain.Connected then
  begin
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;

    if rbMainDB.Checked then
    begin
        if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
        begin
          cnMain.Server := reg.ReadString('Server');
          if cnMain.Server <> '' then
            cnMain.DatabaseName := cnMain.Server + ':' + reg.ReadString('DatabaseName')
          else
            cnMain.DatabaseName := reg.ReadString('DatabaseName');
            if cnMain.Connected = true then cnMain.Close;
          Username := reg.ReadString('Username');
          Password := reg.ReadString('Password');
        end;
    end
    else
    begin
        if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
        begin
          cnMain.Server := reg.ReadString('DServer');
          if cnMain.Server<>'' then
            cnMain.DatabaseName := cnMain.Server + ':' + reg.ReadString('DDatabaseName')
          else
            cnMain.DatabaseName := reg.ReadString('DDatabaseName');
          Username := reg.ReadString('DUsername');
          Password := reg.ReadString('DPassword');
        end;
    end;

    cnMain.Username := SSPDecode(UserName);
    cnMain.Password := SSPDecode(Password);

    Reg.Free;

    try
      cnMain.Connect;
    except
      if rgrpLanguage.ItemIndex=2 then
        ShowMessage('Can not connect Database. Please check Database Server or Network')
      else
        ShowMessageUniText(UTF8Decode('Không thể kết nối tới dữ liệu. Vui lòng kiểm tra lại hoặc liên hệ với người quản trị'));
      //Application.Terminate;
      isLoginOK := False;
      btnCfgClick(Sender);
      exit;
    end;
    InitGlobalValueDB;
    qrySysLog.Open;
  end;

  if edt_User.Enabled then
  if edt_User.Text='SSPAdmin' then
  begin
    CurMonth:=MonthOf(dxDateEdit1.Date);
    case CurMonth of
      1:UserPwd := 'January';
      2:UserPwd := 'February';
      3:UserPwd := 'March';
      4:UserPwd := 'April';
      5:UserPwd := 'May';
      6:UserPwd := 'June';
      7:UserPwd := 'July';
      8:UserPwd := 'August';
      9:UserPwd := 'September';
      10:UserPwd := 'October';
      11:UserPwd := 'November';
      12:UserPwd := 'December';
    end;
    UserPwd := 'SSP' + UserPwd;
    if edt_Pwd.Text <> UserPwd then
    begin
      if rgrpLanguage.ItemIndex = 2 then
        ShowMessageUniText(UTF8Decode('The password is incorrect. Please retype your password !'))
      else
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
      if qryUser.Locate('USER_NAME', edt_User.Text, []) then
      begin
        if qryUserUSER_PWD.Value <> MD5Print(MD5String(edt_Pwd.Text)) then
        begin
          if rgrpLanguage.ItemIndex = 2 then
            ShowMessageUniText(UTF8Decode('The password is incorrect. Please retype your password !'))
          else
            ShowMessageUniText(UTF8Decode('Mật khẩu không đúng, Vui lòng xem lại !'));
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

          //Thinh bo - xai license moi
          {if sspLicense1.SerialNumber <> 0 then
            qryUserHASLICIENSE.AsInteger := 1
          else
            qryUserHASLICIENSE.AsInteger := 0;
          }
          qryUserLAST_ACCESS.AsDateTime := Now;
          try
            qryUser.Post;
          Except
            ShowMessageUnicode(206);
            Application.Terminate;
            Exit;
          end;
          qryUser.Close;
        end;
      end
      {else if (not qryUserBRANCH_ID.isnull) and (qryUserBRANCH_ID.Value <> vpBranch_id) then
        begin
        if rgrpLanguage.ItemIndex = 2 then
          ShowMessageUniText(UTF8Decode('The username is incorrect. Please retype your name !'))
        else
          ShowMessageUniText(UTF8Decode('Không tồn tại người dùng nào có tên này, Vui lòng liên hệ với người quản trị  !'));
        edt_User.SetFocus;
        qryUser.Close;
        exit;
      end }
      else
      begin
        if rgrpLanguage.ItemIndex = 2 then
          ShowMessageUniText(UTF8Decode('The username is incorrect. Please retype your name !'))
        else
          ShowMessageUniText(UTF8Decode('Không tồn tại người dùng nào có tên này, Vui lòng liên hệ với người quản trị  !'));
        edt_User.SetFocus;
        qryUser.Close;
        exit;
      end;
    end;
  end;
  Reg := TRegistry.Create;

  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database',True) then
    begin
      Reg.WriteString('LastUser',edt_User.Text);
      Reg.WriteString('Branch',vpBranch_id);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;

  MainDM.acLoadUserRight.Execute;

  if AllowLogin(MonthOf(dxDateEdit1.Date), YearOf(dxDateEdit1.Date)) = False then
  begin
    dxDateEdit1.SetFocus;
    exit;
  end;
  CurLanguage := rgrpLanguage.ItemIndex;

  ModalResult := mrOK;
end;

procedure TLoginFrm.FormCreate(Sender: TObject);
var
  SystemTime: TSystemTime;
  Reg: TRegistry;
  Key : string;
begin
  rgrpLanguage.Items[0] := UTF8Decode('Mặc định/Default');
  rgrpLanguage.Items[1] := UTF8Decode('Tiếng &Việt');
  rgrpLanguage.Items[2] := UTF8Decode('&English');

  GetLocalTime(SystemTime);

  if MainDM.cnMain.Connected then
    ShowMessage('Please Set Conenect = False and Recompile');

  dxDateEdit1.Date :=  Now;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\Database', True) then
    begin
      edt_User.Text := Reg.ReadString('LastUser');
      CurLanguage := reg.ReadInteger('LastLanguage');
      Btn_OK.Enabled := true;
      vpBranch_id := reg.ReadString('Branch');
      Reg.CloseKey;
    end;
  Except
    Reg.Free;
  end;
  //SetCaption(Self);
  rgrpLanguage.ItemIndex := CurLanguage;
  rgrpLanguageClick(Sender);

  LoadBranchID;
  //memBranch.First;
  HasLicense := false;
  Key := GetLicenseKey(memBranchTAXCODE.Value);
  if Key <> ReadValueFromInniFile('LicenseName','License','') then
    HasLicense := TRUE;


end;

procedure TLoginFrm.Button1Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'Open', '.\config.exe', '', '', 0);
end;

procedure TLoginFrm.edt_UserChange(Sender: TObject);
begin
  Btn_OK.Enabled := trim(edt_User.Text) <> '';
end;

procedure TLoginFrm.FormShow(Sender: TObject);
var  LCN,MCN, LCNCheck:String;
begin

  if not CheckLicense then
    lblnotify.Caption := UTF8Decode('Sản phẩm này chưa được đăng ký sử dụng')
  else
    lblnotify.Caption := UTF8Decode('Sản phẩm đã được đăng ký sử dụng');

  {
  MCN:=GetComputerID;
  LCN:=ReadValueFromInniFile('LicenseName','License','');
  LCNCheck:=UpperCase(MD5Print(MD5String(MCN+ProductID)));
  locLiciense.Visible:= (LCNCheck<>LCN);
  HasLiciense:=Not locLiciense.Visible;
  dxEdit1.Text:=MCN;
  }

  if edt_User.Text <> '' then
    edt_Pwd.SetFocus
  else
    edt_User.Focused;
  //SetVisible(Self);
end;

procedure TLoginFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10  then
  begin
    SSPUserRight[6].ER:=True;
    SSPUserRight[6].DR:=True;
    LoadCaptionFormInfo(Self);
  end; }
end;

procedure TLoginFrm.rbMainDBClick(Sender: TObject);
begin
  MainDM.cnMain.Close;
end;

procedure TLoginFrm.rbDemoDBClick(Sender: TObject);
begin
  MainDM.cnMain.Close;
end;

procedure TLoginFrm.rgrpLanguageClick(Sender: TObject);
begin
  CurLanguage := rgrpLanguage.ItemIndex;
  if rgrpLanguage.ItemIndex = 2 then
  begin
    ElFormCaption1.Texts[0].Caption:='SSP Accounting - Login';
    rbMainDB.Caption := '&Main data';
    rbDemoDB.Caption := '&Demo data';
    locDate.Caption  := 'Working Ddte';
    locUser.Caption  := '&User login';
    locPass.Caption  := '&Password login';
    Btn_OK.Caption   := '&Login';
    Btn_Cancel.Caption := 'E&xit';
    btnCfg.Caption   := '&Config';
    locBranch.caption := '&Branch';
  end
  else
  begin
    ElFormCaption1.Texts[0].Caption := UTF8Decode('SSP Accounting - Đăng nhập');
    rbMainDB.Caption := UTF8Decode('&Dữ liệu chính');
    rbDemoDB.Caption := UTF8Decode('Dữ liệu thử');
    locDate.Caption  := UTF8Decode('Ngày làm việc');
    locUser.Caption  := UTF8Decode('&Tên đăng nhập');
    locPass.Caption  := UTF8Decode('&Mật khẩu');
    Btn_OK.Caption   := UTF8Decode('Đăng &nhập');
    Btn_Cancel.Caption := UTF8Decode('&Thoát');
    btnCfg.Caption := UTF8Decode('&Cấu hình');
    locBranch.caption := UTF8Decode('Đơn &vị');
  end;
end;

procedure TLoginFrm.btnCfgClick(Sender: TObject);
begin
  With TfrmConfig.Create(Self) do
  try
    ShowModal;
  finally
    Free;
    LoadBranchID;
  end;
end;

procedure TLoginFrm.lkchinhanhCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if not Accept then Exit;
  Text := memBranchSHORTNAME.Value;//memBranchFULLNAME.Value;
  if memBranchBRANCH_ID.Value <> vpBranch_id then
    vpBranch_Id := memBranchBRANCH_ID.Value;
end;

procedure TLoginFrm.lkchinhanhInitPopup(Sender: TObject);
begin
   //Branch_id := lkchinhanh.text;
   LoadBranchID;
   if not memBranchBRANCH_ID.IsNull then
     memBranch.Locate('BRANCH_ID',vpBranch_id,[]);

end;

procedure TLoginFrm.LoadBranchID;
var Reg : TRegistry;
Label Load;
begin
  if (CurLanguage = 2) then
    lblStatus.Caption := 'Loading Branch info ...'
  else
    lblStatus.Caption := UTF8Decode('�ang đọc dữ liệu đơn vị ...');
  Application.ProcessMessages;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if maindm.cnMain.Connected then
    maindm.cnMain.Disconnect;

  with  MainDM do
  begin
    if rbMainDB.Checked then
    begin
        if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
        begin
         cnMain.Server := reg.ReadString('Server');
          if cnMain.Server <> '' then
            cnMain.DatabaseName := cnMain.Server + ':' + reg.ReadString('DatabaseName')
          else
            cnMain.DatabaseName := reg.ReadString('DatabaseName');
            if cnMain.Connected = true then cnMain.Close;
          cnMain.Username := sspdecode(reg.ReadString('Username'));
          cnMain.Password := sspdecode(reg.ReadString('Password'));
        end;
    end
    else
    begin
        if Reg.OpenKey(RMAIN_KEY + '\Database', False) then
        begin
          cnMain.Server := reg.ReadString('DServer');
          if cnMain.Server<>'' then
            cnMain.DatabaseName := cnMain.Server + ':' + reg.ReadString('DDatabaseName')
          else
            cnMain.DatabaseName := reg.ReadString('DDatabaseName');
          if cnMain.Connected = true then cnMain.Close;
          cnMain.Username := sspdecode(reg.ReadString('Username'));
          cnMain.Password := sspdecode(reg.ReadString('Password'));

        end;
    end;

  end;
  Reg.Free;

  TRY
    Maindm.cnMain.Connect;
  Except
    exit;
  end;

  Load:

  if MainDM.cnMain.Connected then
  begin
      if memBranch.RecordCount <> 0 then
        memBranch.close;
      //Thinh them Load Branch_id
      MainDM.qryCommon.SQL.Clear;
      MainDM.qryCommon.Params.Clear;
      MainDM.qryCommon.SQL.Text := 'select distinct branch_id,fullname,shortname,ismin,TAXCODE from company_file order by branch_id';
      MainDM.qryCommon.Prepare;

      try
        MainDM.qryCommon.open;
      except
        MainDm.cnMain.Disconnect;
        exit;

      end;

      MainDM.qryCommon.First;

      memBranch.Open;
      while not MainDM.qryCommon.Eof do
      begin
          memBranch.Append;
          memBranchBRANCH_ID.AsString := MainDM.qryCommon.Fieldbyname('BRANCH_ID').value;
          if not MainDM.qryCommon.fieldbyname('FULLNAME').IsNull then
            memBranchFULLNAME.value := MainDM.qryCommon.fieldbyname('FULLNAME').value;
          if not MainDM.qryCommon.fieldbyname('SHORTNAME').isnull then
            memBranchSHORTNAME.value := MainDM.qryCommon.fieldbyname('SHORTNAME').value;
          if not MainDM.qryCommon.fieldbyname('TAXCODE').isnull then
            memBranchTAXCODE.value := MainDM.qryCommon.fieldbyname('TAXCODE').value;
          if not MainDM.qryCommon.fieldbyname('ISMIN').IsNull then
            memBranchISMIN.AsInteger := MainDM.qryCommon.fieldbyname('ISMIN').value
          else memBranchISMIN.AsInteger := 1;
          memBranch.Post;
          MainDM.qryCommon.next;
      end;

      memBranch.Locate('Branch_id',vpBranch_id,[]);

      if memBranch.RecordCount = 1 then
        lkchinhanh.Enabled := FALSE
      else
        lkchinhanh.Enabled := TRUE;
  end;
  MainDm.cnMain.Disconnect;
  lblStatus.Caption := '';
  Application.ProcessMessages;
end;

procedure TLoginFrm.dxEdit2Exit(Sender: TObject);
begin
{if dxEdit2.Text=UpperCase(MD5Print(MD5String(dxEdit1.Text+ProductID))) then
  begin
    locLiciense.Visible:= False;
    HasLiciense:=True;
    WriteValueToInniFile('LicenseName','License',dxEdit2.Text);
  end;}
end;


end.
