unit ChangePassA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, ElXPThemedControl,  ElCaption,
  ElBtnCtl, ElPopBtn;

type
  TChangePassAFrm = class(TForm)
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
    ElFormCaption1: TElFormCaption;
    dxEdit1: TdxEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePassAFrm: TChangePassAFrm;

implementation

uses MainForm, GlobalUnit, LoginAForm;

{$R *.dfm}

procedure TChangePassAFrm.btnOKClick(Sender: TObject);
begin
  if edtOldPass.Text<>OldPassword then
  begin
    ShowMessageUniText(UTF8Decode('Mật khẩu cũ không đúng !'));
    edtOldPass.SetFocus;
    exit;
  end;
  if edtNewPass.Text<>edtReNewPass.Text then
  begin
    ShowMessageUniText(UTF8Decode('Mật khẩu mới gõ lại không giống nhau  !'));
    edtReNewPass.SetFocus;
    exit;
  end;
  NewPassword := edtNewPass.Text;

  ModalResult := mrOk;
end;

procedure TChangePassAFrm.FormCreate(Sender: TObject);
begin
  dxEdit1.Text:=CurUserName;
end;

end.
