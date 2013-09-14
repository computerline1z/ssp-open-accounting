unit RegTransferLLForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, DBActns, ActnList, ElXPThemedControl, ElBtnCtl,
  ElPopBtn;

type
  TRegTransferLLFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column1: TdxDBGridPopupColumn;
    dxDBGrid1Column2: TdxDBGridPopupColumn;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1Column1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1Column2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegTransferLLFrm: TRegTransferLLFrm;
implementation

uses GlobalInterface, MainDataMdl, IBODataset, DB, PopupForm, GlobalUnit;

{$R *.dfm}

procedure TRegTransferLLFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  if FilterAccType<>1 then
  with MainDM do
  begin
    FilterAccType:=1;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
  try
    MainDM.qryRegKCLL.Open;
    MainDM.qryPAcc.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TRegTransferLLFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryRegKCLL do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TRegTransferLLFrm.dxDBGrid1Column1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryRegKCLL.Edit;
    Text:=qryPAccACCOUNT_ID.Value;
    qryRegKCLLLAILO_NOTE.Value :=UTF8Decode('Kết chuyển ') + qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TRegTransferLLFrm.dxDBGrid1Column2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TRegTransferLLFrm.dxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TRegTransferLLFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TRegTransferLLFrm.TntBitBtn5Click(Sender: TObject);
begin
    Application.HelpContext(13);
end;

procedure TRegTransferLLFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
