unit DocTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx, DB,
  IBODataset, TntButtons, DBActns, ActnList, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElEdits, ElCheckCtl;

type
  TDocTypeFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1Column1: TdxDBTreeListColumn;
    dxDBTreeList1Column2: TdxDBTreeListColumn;
    dxDBTreeList1Column7: TdxDBTreeListColumn;
    dxDBTreeList1Column4: TdxDBTreeListPopupColumn;
    dxDBTreeList1Column5: TdxDBTreeListPopupColumn;
    dxDBTreeList1Column3: TdxDBTreeListColumn;
    locFormItem1: TdxLayoutItem;
    TntBitBtn1: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    TntBitBtn3: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn4: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    btnEdit: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn7: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ActionList1: TActionList;
    acIns: TAction;
    acDel: TAction;
    acSetStatus: TAction;
    ElFormCaption1: TElFormCaption;
    dxDBTreeList1Column10: TdxDBTreeListColumn;
    dxDBTreeList1Column9: TdxDBTreeListColumn;
    dxDBTreeList1HIENTHI: TdxDBTreeListCheckColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    acInsParent: TAction;
    locFormItem7: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1Column4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBTreeList1Column4InitPopup(Sender: TObject);
    procedure dxDBTreeList1Column6InitPopup(Sender: TObject);
    procedure acSetStatusExecute(Sender: TObject);
    procedure dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure TntFormShow(Sender: TObject);
    procedure acInsExecute(Sender: TObject);
    procedure acDelExecute(Sender: TObject);
    procedure TntBitBtn7Click(Sender: TObject);
    procedure TntBitBtn4Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure acInsParentExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocTypeFrm: TDocTypeFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,  PopupForm,
  DocTypeInfoForm, dxTreeGridMenus, DocTypeRuleForm, HtmlHlp;


{$R *.dfm}

procedure TDocTypeFrm.FormCreate(Sender: TObject);
begin
  IsChangeDataDocType:=False;
  if prmUSEUPPERCASE then
  begin
    dxDBTreeList1Column2.CharCase:=ecUpperCase;
    dxDBTreeList1Column4.CharCase:=ecUpperCase;
    dxDBTreeList1Column5.CharCase:=ecUpperCase;
  end;
  if CurLanguage=2 then
    dxDBTreeList1Column1.FieldName:='ENGLISH_NAME';

  SetOnFormCreate(Sender as TControl);
  try
    if CurrentUser='SSPAdmin' then
      MainDM.qryDocTypeList.ParamByName('HIDE').AsInteger:=0
    else
      MainDM.qryDocTypeList.ParamByName('HIDE').AsInteger:=1;
    MainDM.qryDocTypeList.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TDocTypeFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryDocTypeList do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TDocTypeFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TDocTypeFrm.dxDBTreeList1Column4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDocTypeFrm.dxDBTreeList1Column4InitPopup(Sender: TObject);
begin
  if FilterAccType<>1 then
  with MainDM do
  begin
    FilterAccType:=1;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
end;

procedure TDocTypeFrm.dxDBTreeList1Column6InitPopup(Sender: TObject);
begin
  if FilterAccType<>12 then
  with MainDM do
  begin
    FilterAccType:=12;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
end;

procedure TDocTypeFrm.acSetStatusExecute(Sender: TObject);
begin
  with MainDM do
  begin
    acDel.Enabled:=((qryDocTypeListDOCTYPE_ID.AsInteger>2000) and (Not dxDBTreeList1.FocusedNode.HasChildren) and (SSPUserRight[19].DR));
    //acIns.Enabled:=((qryDocTypeListDOCTYPE_ID.AsInteger>100) and (SSPUserRight[19].IR));
    acIns.Enabled:=(SSPUserRight[19].IR);
    btnEdit.Enabled:=((qryDocTypeListDOCTYPE_ID.AsInteger>0) and (SSPUserRight[19].ER));
  end;    
end;

procedure TDocTypeFrm.dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  acSetStatus.Execute;
end;

procedure TDocTypeFrm.TntFormShow(Sender: TObject);
begin
  acSetStatus.Execute;
  SetVisible(Self);
  dxDBTreeList1HIENTHI.Visible:=(CurrentUser='SSPAdmin');
  dxDBTreeList1HIENTHI.Visible:=False;
end;

procedure TDocTypeFrm.acInsExecute(Sender: TObject);
begin
  MainDM.qryDocTypeList.OnNewRecord := MainDM.qryDocTypeListNewRecord;
  if not (MainDM.qryDocTypeList.State in [dsEdit,dsInsert]) then
    MainDM.qryDocTypeList.Edit;

  MainDM.qryDocTypeList.Insert;
  with TDocTypeInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDocTypeFrm.acDelExecute(Sender: TObject);
begin
  MainDM.qryDocTypeList.Delete;
end;

procedure TDocTypeFrm.TntBitBtn7Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Phanloaichungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

procedure TDocTypeFrm.TntBitBtn4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TDocTypeFrm.btnEditClick(Sender: TObject);
begin
  with TDocTypeInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDocTypeFrm.dxDBTreeList1DblClick(Sender: TObject);
begin
  if btnEdit.Enabled then
    btnEditClick(Sender);
end;

procedure TDocTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Phanloaichungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDocTypeFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TDocTypeFrm.ElPopupButton1Click(Sender: TObject);
begin
  with TDocTypeRuleFrm.Create(Self) do
  try
    CurDocTypeID:=MainDM.qryDocTypeListDOCTYPE_ID.AsInteger;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDocTypeFrm.acInsParentExecute(Sender: TObject);
begin
  MainDM.qryDocTypeList.OnNewRecord := MainDM.qryDocTypeListNewRecordParent;
  if not (MainDM.qryDocTypeList.State in [dsEdit,dsInsert]) then
    MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeList.Insert;
  MainDM.qryDocTypeList.OnNewRecord := MainDM.qryDocTypeListNewRecord;
  with TDocTypeInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

end.
