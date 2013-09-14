unit GroupListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, DB, IBODataset,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TGroupListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryGroup: TIBOQuery;
    dsGroup: TDataSource;
    dxDBGrid1Column3: TdxDBGridColumn;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnOK: TELPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    dxCheckEdit1: TdxCheckEdit;
    locFormItem4: TdxLayoutItem;
    qryGroupGROUP_ID: TWideStringField;
    qryGroupGROUP_NAME: TWideStringField;
    qryGroupGROUP_NOTES: TWideStringField;
    qryGroupUSER_NAME: TWideStringField;
    ElFormCaption1: TElFormCaption;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCheckEdit1Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GroupListFrm: TGroupListFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, htmlhlp;


{$R *.dfm}

procedure TGroupListFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qryGroup.ParamByName('USER_NAME').Value:= CurrentUser;
    qryGroup.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TGroupListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    btnOKClick(Sender)
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True,4);
end;

procedure TGroupListFrm.dxCheckEdit1Click(Sender: TObject);
begin
  dxDBGrid1.Enabled:= not dxCheckEdit1.Checked;
  if dxCheckEdit1.Checked then
    dxDBGrid1.Color:= clBtnFace
  else
    dxDBGrid1.Color:= clWindow;
end;

procedure TGroupListFrm.btnOKClick(Sender: TObject);
begin
  if dxCheckEdit1.Checked then
    CurrentGroup:=''
  else
    CurrentGroup:=qryGroupGROUP_ID.Value;
end;

procedure TGroupListFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnOKClick(Sender);
end;

procedure TGroupListFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TGroupListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
