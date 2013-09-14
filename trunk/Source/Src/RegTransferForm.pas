unit RegTransferForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx, Forms,
  ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList;
  
type
  TRegTransferFrm = class(TForm)
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
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
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
    procedure dxDBGrid1Column1InitPopup(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
  RegTransferFrm: TRegTransferFrm;
implementation

uses GlobalInterface, MainDataMdl, IBODataset, DB, PopupForm, GlobalUnit,
  dxTreeGridMenus, HtmlHlp;

{$R *.dfm}

procedure TRegTransferFrm.FormCreate(Sender: TObject);
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
    MainDM.qryRegTransfer.Open;
    MainDM.qryPAcc.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  MainDm.MaxRegTranferID:=0;
  while Not MainDM.qryRegTransfer.Eof do
  begin
    if MainDM.MaxRegTranferID< MainDM.qryRegTransferSOTTKC.AsInteger then
      MainDM.MaxRegTranferID:= MainDM.qryRegTransferSOTTKC.AsInteger;
    MainDM.qryRegTransfer.Next;
  end;
  MainDM.MaxRegTranferID:=MainDM.MaxRegTranferID+1;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TRegTransferFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryRegTransfer do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TRegTransferFrm.dxDBGrid1Column1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  AllowSelectParent:=False;
  if Accept then
  with MainDM do
  begin
    qryRegTransfer.Edit;
    Text:=qryPAccACCOUNT_ID.Value;
    qryRegTransferTRANSFER_NOTE.Value := UTF8Decode('Kết chuyển ') + qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TRegTransferFrm.dxDBGrid1Column2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TRegTransferFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TRegTransferFrm.dxDBGrid1Column1InitPopup(Sender: TObject);
begin
  AllowSelectParent:=True;
end;

procedure TRegTransferFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TRegTransferFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TRegTransferFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(13);
end;

procedure TRegTransferFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
