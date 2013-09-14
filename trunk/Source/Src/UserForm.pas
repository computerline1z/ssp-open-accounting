unit UserForm;

interface

uses
  Qt, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  IB_Components, TntButtons, ComCtrls, TntComCtrls, ElCaption, ElPgCtl,
  ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TUserFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    locFormItem1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    locFormItem2: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    locFormItem5: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    locFormItem6: TdxLayoutItem;
    dxDBGrid6: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    btnOK: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    locFormGroup3: TdxLayoutGroup;
    dxDBGrid6Column3: TdxDBGridColumn;
    qryUserGroup: TIBOQuery;
    dsUserGroup: TDataSource;
    qryUserGroupUSER_NAME: TWideStringField;
    qryUserGroupGROUP_ID: TWideStringField;
    qryUserGroupGROUP_NAME: TWideStringField;
    qryUserGroupGROUP_NOTES: TWideStringField;
    ElPopupButton3: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    edtPwd: TdxEdit;
    locFormItem4: TdxLayoutItem;
    locFormGroup4: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    edtRePwd: TdxEdit;
    locFormItem10: TdxLayoutItem;
    locFormGroup5: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    IsEditingCurUser:Boolean;
    OldUserName:WideString;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserFrm: TUserFrm;

implementation

uses GlobalInterface, MainDataMdl, Functions, GlobalUnit, LookupFrm,
  UserManagerForm, md5, HtmlHlp;


{$R *.dfm}

procedure TUserFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryUserGroup.Open;
  OldUserName:=dxDBEdit1.Text;
  IsEditingCurUser:=(CurrentUser=dxDBEdit1.Text);

  if dxDBEdit1.DataSource.DataSet.State<>dsInsert then
  begin
    edtPwd.Text:='1234567890';
    edtRePwd.text:=edtPwd.Text;
  end;
  ElPopupButton3.Enabled:= SSPUserRight[15].RR;
end;

procedure TUserFrm.btnOKClick(Sender: TObject);
begin
  if edtPwd.Text<>edtRePwd.Text then
  begin
    ShowMessageUnicode(141);
    edtRePwd.SetFocus;
    Exit;
  end;
  if (edtPwd.Text<>'1234567890') or (dxDBEdit1.DataSource.DataSet.State=dsInsert) then
  begin
    dxDBEdit1.DataSource.DataSet.Edit;
    dxDBEdit1.DataSource.DataSet.fieldbyName('USER_PWD').Text:=MD5Print(MD5String(edtPwd.Text));
  end;

  if dxDBEdit1.DataSource.DataSet.State in [dsEdit,dsInsert] then
    dxDBEdit1.DataSource.DataSet.Post;

  if IsEditingCurUser then
    CurrentUser:=dxDBEdit1.Text;

  ModalResult:=mrOK;
end;

procedure TUserFrm.ElPopupButton1Click(Sender: TObject);
begin
  if dxDBEdit1.DataSource.DataSet.State in [dsEdit,dsInsert] then
    dxDBEdit1.DataSource.DataSet.Cancel;
                                
  ModalResult:=mrCancel;
end;

procedure TUserFrm.ElPopupButton3Click(Sender: TObject);
begin
  MainDM.Xemnhatkynguoidung(OldUserName);
end;

procedure TUserFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TUserFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
