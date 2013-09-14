unit ObjectTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, ActnList, Forms, ElCaption,
  ElXPThemedControl, ElEdits, ElBtnCtl, ElPopBtn, dxDBEdtr, dxExGrEd,
  dxExELib, dxLayout, DBActns;

type
  TObjectTypeFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxDBGrid1Column1: TdxDBGridColumn;
    grdColName: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBEdit1: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    locFormItem4: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    locFormItem5: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    locFormItem6: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    locFormItem7: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    locFormItem8: TdxLayoutItem;
    locFormGroup4: TdxLayoutGroup;
    locFormGroup3: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1OTYPE_NOTE: TdxDBGridMaskColumn;
    btnPhannhom: TElPopupButton;
    locGroup: TdxLayoutItem;
    btnDM: TElPopupButton;
    locFormItem10: TdxLayoutItem;
    grdColShortName: TdxDBGridColumn;
    grdColGroup: TdxDBGridColumn;
    locFormItem11: TdxLayoutItem;
    dxDBExtLookupEdit1: TdxDBExtLookupEdit;
    locFormItem12: TdxLayoutItem;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    dxDBEdit7: TdxDBEdit;
    locFormItem13: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    locFormItem14: TdxLayoutItem;
    ActionList1: TActionList;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    btnAdd: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem15: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem16: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem17: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem18: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup5: TdxLayoutGroup;
    locFormGroup1: TdxLayoutGroup;
    locFormGroup7: TdxLayoutGroup;
    dxDBEdit9: TdxDBEdit;
    locFormItem19: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    locFormItem20: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    locFormItem21: TdxLayoutItem;
    dxDBEdit12: TdxDBEdit;
    locFormItem22: TdxLayoutItem;
    dxDBEdit13: TdxDBEdit;
    locFormItem23: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    locFormItem24: TdxLayoutItem;
    dxDBEdit14: TdxDBEdit;
    locFormItem25: TdxLayoutItem;
    locFormItem26: TdxLayoutItem;
    dxDBExtLookupEdit2: TdxDBExtLookupEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDMClick(Sender: TObject);
    procedure btnPhannhomClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBExtLookupEdit1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBExtLookupEdit1InitPopup(Sender: TObject);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure dxDBExtLookupEdit2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ObjectTypeFrm: TObjectTypeFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, DB, ObjectForm, MainForm,
  GlobalUnit, LookupFrm, ObjGrpForm,  dxTreeGridMenus,
  ObjectSubInfoForm, HtmlHlp;


{$R *.dfm}

procedure TObjectTypeFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    MainDM.qryObjectType.ReadOnly:= False;
    MainDM.qryObjectType.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  
  btnAdd.Enabled :=SSPUserRight[8].IR;
  DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TObjectTypeFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryObjectType do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
    ReadOnly:= True;//I dont know ???
  end;
end;

procedure TObjectTypeFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnDMClick(Sender);
end;

procedure TObjectTypeFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnPhannhom.Caption:=MainDM.qryObjectTypeGROUP_NAME.Value;
  locGroup.Visible:=IsHasData(MainDM.qryObjectTypeGROUP_NAME);
  //grdColShortName.DisableEditor:= MainDM.qryObjectTypeOTYPE_ID.AsInteger<=10;
  //grdColName.DisableEditor:=grdColShortName.DisableEditor;
  //grdColName.DisableEditor:=grdColShortName.DisableEditor;

  if ((MainDM.qryObjectTypeOTYPE_ID.AsInteger>100) and (SSPUserRight[8].DR)) then
    DataSetDelete1.DataSource:=MainDM.dsObjectType
  else
    DataSetDelete1.DataSource:=MainDM.dsBanana;
end;

procedure TObjectTypeFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True,3);
end;

procedure TObjectTypeFrm.btnDMClick(Sender: TObject);
begin
  MainDM.CurObjTypeID:=MainDM.qryObjectTypeOTYPE_ID.AsInteger;

  LastViewItemID:='';
  Screen.Cursor := crHourGlass; 
    with TObjectFrm.Create(Self) do
    try
      Screen.Cursor := crDefault;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TObjectTypeFrm.btnPhannhomClick(Sender: TObject);
begin
  MainDM.CurObjTypeID:=MainDM.qryObjectTypeOTYPE_ID.AsInteger;
  with TObjGrpFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TObjectTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Phanloaidoituong.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TObjectTypeFrm.dxDBExtLookupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text :=MainDM.qryObjTypeSHORT_NAME.Value;
    MainDM.qryObjectType.Edit;
    MainDM.qryObjectTypeLOAIDTTC.AsInteger:=MainDM.qryObjTypeOTYPE_ID.AsInteger;
  end;
end;

procedure TObjectTypeFrm.dxDBExtLookupEdit1InitPopup(Sender: TObject);
begin
  MainDM.qryObjType.Open;
end;

procedure TObjectTypeFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Phanloaidoituong.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(19);
end;

procedure TObjectTypeFrm.FormShow(Sender: TObject);
begin
  dxDBGrid1ChangeNode(Sender,nil,nil);
  SetVisible(Self);  
end;

procedure TObjectTypeFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TObjectTypeFrm.ElPopupButton1Click(Sender: TObject);
begin
  with TObjectSubInfoFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TObjectTypeFrm.btnAddClick(Sender: TObject);
begin
  MainDM.qryObjectType.Append;
end;

procedure TObjectTypeFrm.dxDBExtLookupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
  begin
    Text :=MainDM.qryObjTypeSHORT_NAME.Value;
    MainDM.qryObjectType.Edit;
    MainDM.qryObjectTypeLOAIDTTC2.AsInteger:=MainDM.qryObjTypeOTYPE_ID.AsInteger;
  end;
end;

end.
