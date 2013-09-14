unit RegisterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, ExtCtrls, ElPanel, dxLayoutControl,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, dxCntner, dxEditor, dxEdLib,
  cxControls, dxExEdtr;

type
  TRegisterFrm = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    edtcpu: TdxEdit;
    BtnRegister: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxEdit1: TdxEdit;
    editMST: TdxEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtUserQty: TdxSpinEdit;
    procedure BtnRegisterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterFrm: TRegisterFrm;

implementation
uses MainDataMdl,GlobalUnit;

{$R *.dfm}

procedure TRegisterFrm.BtnRegisterClick(Sender: TObject);
var Key : string;
begin
  Key := GetLicenseKey(editMST.Text);
  if Key = dxEdit1.Text then
  begin
    WriteValueToInniFile('LicenseName','License',Key);
    ShowMessageUniText(UTF8Decode('Chúc mừng bạn đăng ký thành công, hãy chạy lại chương trình để hòan tất quá trình cập nhật.'),0);
    //WriteRegInfoToDB(editmst.Text,edtuserqty.intvalue);
    self.Close;
  end
  else
    ShowMessageUniText(UTF8Decode('Mã số đăng ký không phù hợp, xin vui lòng nhập lại.'),0);
end;

procedure TRegisterFrm.FormShow(Sender: TObject);
begin
  maindm.qryCommon.Close;
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select taxcode from company_file';
  maindm.qryCommon.Open;

  editMST.Text :=maindm.qryCommon.fieldbyname('taxcode').Value;
  edtcpu.Text := GetComCode;
end;

procedure TRegisterFrm.ElPopupButton2Click(Sender: TObject);
begin
  self.Close;
end;

end.
