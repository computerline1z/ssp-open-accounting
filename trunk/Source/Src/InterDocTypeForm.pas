unit InterDocTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl,
  cxControls,  dxLayoutLookAndFeels, DB, IBODataset, ElCaption,
  DBActns, ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBTLCl,
  dxGrClEx, dxEditor, dxExGrEd, dxExELib, dxLayout, dxDBTL;

type
  TInterDocTypeFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbtlInterDocType: TdxDBTreeList;
    dbtlInterDocTypeColumn1: TdxDBTreeListColumn;
    qryInterDocType: TIBOQuery;
    dsInterDocType: TDataSource;
    ElFormCaption1: TElFormCaption;
    dbtlInterDocTypeColumn5: TdxDBTreeListColumn;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    acHelp: TAction;
    acClose: TAction;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dbtlInterDocTypeColumn6: TdxDBTreeListPopupColumn;
    dbtlInterDocTypeColumn2: TdxDBTreeListPopupColumn;
    dbtlInterDocTypeColumn3: TdxDBTreeListPopupColumn;
    dbtlInterDocTypeColumn4: TdxDBTreeListPopupColumn;
    qrySubSystem: TIBOQuery;
    dsSubSystem: TDataSource;
    qrySubSystemSUBSYSTEM_ID: TIntegerField;
    qrySubSystemSUBSYSTEM_NAME: TWideStringField;
    qryInterDocTypeSUBSYSTEM_ID: TSmallintField;
    qryInterDocTypeINTERTYPE_ID: TSmallintField;
    qryInterDocTypePINTERTYPE_ID: TSmallintField;
    qryInterDocTypeINTERTYPE_NAME: TWideStringField;
    qryInterDocTypeTKCO: TWideStringField;
    qryInterDocTypeTKNO: TWideStringField;
    qryInterDocTypeTKVAT: TWideStringField;
    qryInterDocTypeDOCTYPE_ID: TSmallintField;
    qryInterDocTypeDOCTYPE_NAME: TWideStringField;
    dxDBExtLookupEdit1: TdxDBExtLookupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    procedure FormCreate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbtlInterDocTypeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbtlInterDocTypeColumn6CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbtlInterDocTypeColumn2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbtlInterDocTypeColumn3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbtlInterDocTypeColumn4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbtlInterDocTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryInterDocTypePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryInterDocTypeDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryInterDocTypeAfterInsert(DataSet: TDataSet);
    procedure dxDBExtLookupEdit1InitPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterDocTypeFrm: TInterDocTypeFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, PopupForm, Functions;

{$R *.dfm}

procedure TInterDocTypeFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qrySubSystem.Open;
  qryInterDocType.Open;
end;

procedure TInterDocTypeFrm.acCloseExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TInterDocTypeFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qryInterDocType.state in [dsInsert, dsEdit] then qryInterDocType.post;
  CanClose := True;
end;

procedure TInterDocTypeFrm.dbtlInterDocTypeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TInterDocTypeFrm.dbtlInterDocTypeColumn6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryInterDocType.Edit;
    qryInterDocTypeDOCTYPE_ID.Value := MainDM.qryPDocTypeDOCTYPE_ID.Value;
    Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
    qryInterDocTypeDOCTYPE_NAME.Value := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
  end;
end;

procedure TInterDocTypeFrm.dbtlInterDocTypeColumn2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TInterDocTypeFrm.dbtlInterDocTypeColumn3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TInterDocTypeFrm.dbtlInterDocTypeColumn4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TInterDocTypeFrm.dbtlInterDocTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dbtlInterDocType, Key, Shift);
end;

procedure TInterDocTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInterDocTypeFrm.qryInterDocTypePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'') =-803 then
    qryInterDocTypeINTERTYPE_NAME.FocusControl;
end;

procedure TInterDocTypeFrm.qryInterDocTypeDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TInterDocTypeFrm.qryInterDocTypeAfterInsert(DataSet: TDataSet);
begin
  qryInterDocTypeINTERTYPE_NAME.FocusControl;
end;

procedure TInterDocTypeFrm.dxDBExtLookupEdit1InitPopup(Sender: TObject);
begin
  dxDBExtLookupEdit1.PopupWidth:=dxDBExtLookupEdit1.Width;
end;

procedure TInterDocTypeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
