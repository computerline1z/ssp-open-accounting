
unit BudgetForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TBudgetFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryBudget: TIBOQuery;
    dsBudget: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem1: TdxLayoutItem;
    locFormItem19: TdxLayoutItem;
    btnHelp: TELPopupButton;
    locFormItem20: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormGroup4: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    qryBudgetBUDGET_NO: TIntegerField;
    qryBudgetPBUDGET_NO: TIntegerField;
    qryBudgetBUDGET_NAME: TWideStringField;
    qryBudgetACCOUNT_ID: TWideStringField;
    dxDBTreeList1BUDGET_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1ACCOUNT_ID: TdxDBTreeListPopupColumn;
    qryBudgetDIRECTION: TSmallintField;
    ElPopupButton1: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    ActionList1: TActionList;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBTreeList1BUDGET_NO: TdxDBTreeListColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBudgetBeforePost(DataSet: TDataSet);
    procedure qryBudgetBeforeEdit(DataSet: TDataSet);
    procedure qryBudgetPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1ACCOUNT_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryBudgetNewRecord(DataSet: TDataSet);
    procedure qryBudgetAfterInsert(DataSet: TDataSet);
    procedure qryBudgetBeforeDelete(DataSet: TDataSet);
    procedure qryBudgetBeforeInsert(DataSet: TDataSet);
    procedure dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure btnHelpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryBudgetDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    PBudgetNo,PDirection:integer;
    PAccount:WideString;
  public
    { Public declarations }
  end;

var
  BudgetFrm: TBudgetFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, PopupForm, HtmlHlp;


{$R *.dfm}

procedure TBudgetFrm.FormCreate(Sender: TObject);
begin
  MainDM.qryPAcc.Filtered:=False;
  SetOnFormCreate(Sender as TControl);
  qryBudget.Open;
end;

procedure TBudgetFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryBudget do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
end;

procedure TBudgetFrm.qryBudgetBeforePost(DataSet: TDataSet);
begin
  if qryBudgetACCOUNT_ID.IsNull then
  begin
    ShowMessageUnicode(67);
    qryBudgetACCOUNT_ID.FocusControl;
    Abort;
    exit;
  end;       
end;

procedure TBudgetFrm.qryBudgetBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TBudgetFrm.qryBudgetPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs:= ProcessErr(E,'');
  if rs=-530 then
  begin
    ShowMessageUnicode(42,e.Message,0);
    qryBudgetACCOUNT_ID.FocusControl;
    exit;
  end;
end;

procedure TBudgetFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TBudgetFrm.dxDBTreeList1ACCOUNT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TBudgetFrm.ElPopupButton1Click(Sender: TObject);
begin
  PBudgetNo  := qryBudgetBUDGET_NO.AsInteger;
  PDirection := qryBudgetDIRECTION.AsInteger;

  if Not qryBudgetACCOUNT_ID.IsNull then
    PAccount   := qryBudgetACCOUNT_ID.Value
  else
    PAccount   := '';

  qryBudget.Insert;
end;

procedure TBudgetFrm.qryBudgetNewRecord(DataSet: TDataSet);
begin
  qryBudgetPBUDGET_NO.Value:=PBudgetNo;
  qryBudgetDIRECTION.AsInteger:=PDirection;
  qryBudgetACCOUNT_ID.Value:=PAccount;
end;

procedure TBudgetFrm.qryBudgetAfterInsert(DataSet: TDataSet);
begin
  qryBudgetBUDGET_NAME.FocusControl;
end;

procedure TBudgetFrm.qryBudgetBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TBudgetFrm.qryBudgetBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

procedure TBudgetFrm.dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  if Node.HasChildren then
    DataSetDelete1.DataSource:=MainDM.dsBanana
  else
    DataSetDelete1.DataSource:=dsBudget;
end;

procedure TBudgetFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

procedure TBudgetFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TBudgetFrm.qryBudgetDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
end;

procedure TBudgetFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
end;

end.
