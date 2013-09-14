unit DocTypeRuleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxDBTLCl, dxGrClEx;

type
  TDocTypeRuleFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdDocTypeRule: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryDocTypeRule: TIBOQuery;
    dsDocTypeRule: TDataSource;
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
    qryDocTypeRuleDOCTYPE_ID: TSmallintField;
    qryDocTypeRuleDOCRULE_ID: TSmallintField;
    qryDocTypeRuleDEBIT_BDV: TWideStringField;
    qryDocTypeRuleCREDIT_BDV: TWideStringField;
    qryDocTypeRuleDOCRULE_NOTE: TWideStringField;
    grdDocTypeRuleDOCRULE_ID: TdxDBGridColumn;
    grdDocTypeRuleDEBIT_BDV: TdxDBGridPopupColumn;
    grdDocTypeRuleCREDIT_BDV: TdxDBGridPopupColumn;
    grdDocTypeRuleDOCRULE_NOTE: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdDocTypeRuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDocTypeRuleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryDocTypeRuleNewRecord(DataSet: TDataSet);
    procedure qryDocTypeRuleAfterInsert(DataSet: TDataSet);
    procedure qryDocTypeRuleBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDocTypeRulePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryDocTypeRuleDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDocTypeRuleBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryDocTypeRuleBeforeEdit(DataSet: TDataSet);
    procedure qryDocTypeRuleBeforeInsert(DataSet: TDataSet);
    procedure grdDocTypeRuleDEBIT_BDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    CurDocTypeID:Smallint;
    { Public declarations }
  end;

var
  DocTypeRuleFrm: TDocTypeRuleFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, PopupForm, HtmlHlp;


{$R *.dfm}

procedure TDocTypeRuleFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  if SSPUserRight[19].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[19].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TDocTypeRuleFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryDocTypeRule do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TDocTypeRuleFrm.grdDocTypeRuleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdDocTypeRule, Key, Shift, True);
end;

procedure TDocTypeRuleFrm.grdDocTypeRuleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleNewRecord(DataSet: TDataSet);
begin
  qryDocTypeRuleDOCRULE_ID.AsInteger:=qryDocTypeRule.RecNo;
  qryDocTypeRuleDOCTYPE_ID.AsInteger:= CurDocTypeID;
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleAfterInsert(DataSet: TDataSet);
begin
  qryDocTypeRuleDEBIT_BDV.FocusControl;
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleBeforePost(DataSet: TDataSet);
begin
  if qryDocTypeRuleDOCRULE_ID.IsNull then
  begin
    ShowMessageUnicode(20);
    qryDocTypeRuleDOCRULE_ID.FocusControl;
    Abort;
    Exit;
  end;

  if IsNotHasData(qryDocTypeRuleDEBIT_BDV) and IsNotHasData(qryDocTypeRuleCREDIT_BDV) then
  begin
    ShowMessageUnicode(67);
    qryDocTypeRuleDEBIT_BDV.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TDocTypeRuleFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDocTypeRuleFrm.qryDocTypeRulePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'') =-803 then
    qryDocTypeRuleDOCRULE_ID.FocusControl;
end;

procedure TDocTypeRuleFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,19) then Abort;
end;

procedure TDocTypeRuleFrm.FormShow(Sender: TObject);
begin
  qryDocTypeRule.ParamByName('DOCTYPE_ID').AsInteger:=CurDocTypeID;
  qryDocTypeRule.Open;
  SetVisible(Self);  
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowEdit(19) then Abort;
end;

procedure TDocTypeRuleFrm.qryDocTypeRuleBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowInsert(19) then Abort;
end;

procedure TDocTypeRuleFrm.grdDocTypeRuleDEBIT_BDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

end.
