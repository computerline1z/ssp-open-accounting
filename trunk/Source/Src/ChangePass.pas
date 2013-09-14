unit ChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, ElXPThemedControl,  ElCaption,
  ElBtnCtl, ElPopBtn, dxLayoutLookAndFeels;

type
  TChangePassFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtOldPass: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtNewPass: TdxEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtReNewPass: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure btnOKClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePassFrm: TChangePassFrm;

implementation

uses MainDataMdl, GlobalUnit, md5, HtmlHlp;

{$R *.dfm}

procedure TChangePassFrm.btnOKClick(Sender: TObject);
begin
  if edtOldPass.Text<>UserPwd then
  begin
    ShowMessageUnicode(140);
    edtOldPass.SetFocus;
    exit;
  end;
  if edtNewPass.Text<>edtReNewPass.Text then
  begin
    ShowMessageUnicode(141);
    edtReNewPass.SetFocus;
    exit;
  end;
  with MainDM do
  begin
    qryUser.Open;
    if qryUser.Locate('USER_NAME', CurrentUser,[]) then
    begin
      qryUser.Edit;
      qryUserUSER_PWD.Value := MD5Print(MD5String(edtNewPass.Text));
      qryUser.Post;
    end;
  end;
  ShowMessageUnicode(142);
  UserPwd:=edtReNewPass.Text;
  ModalResult := mrOk;
end;

procedure TChangePassFrm.BitBtn1Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/thaydoimatkhau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(8);
end;

procedure TChangePassFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/thaydoimatkhau.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TChangePassFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
end;

procedure TChangePassFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
