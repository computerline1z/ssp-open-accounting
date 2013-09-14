unit BeginAccountForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Db, IBODataset, DBActns, ActnList,StrUtils,
  Forms, ElXPThemedControl, ElEdits, ElCheckCtl,
  ElBtnCtl, ElPopBtn, ElCaption, ElPanel, ElGroupBox, dxDBTLCl;

type
  TBeginAccountFrm = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl2: TdxLayoutControl;
    dxDBTreeList2: TdxDBTreeList;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxDBTreeList2Column2: TdxDBTreeListColumn;
    dxLayoutControl2Group4: TdxLayoutGroup;
    qryAccLst: TIBOQuery;
    dsAccLst: TDataSource;
    ActionList1: TActionList;
    dxDBTreeList2Column3: TdxDBTreeListColumn;
    ElFormCaption1: TElFormCaption;
    qryAccLstACCOUNT_ID: TWideStringField;
    qryAccLstKYHT: TSmallintField;
    qryAccLstPACCOUNT_ID: TWideStringField;
    qryAccLstACCOUNT_NAME: TWideStringField;
    qryAccLstOTYPE_ID: TSmallintField;
    qryAccLstISMIN: TSmallintField;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBTreeList2Column6: TdxDBTreeListColumn;
    chkHasObj: TdxCheckEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    chkHasChild: TdxCheckEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxDBTreeList2Column7: TdxDBTreeListColumn;
    qryAccLstBEGIN_DEBIT: TIBOFloatField;
    qryAccLstBEGIN_CREDIT: TIBOFloatField;
    qryAccLstDEBIT: TIBOFloatField;
    qryAccLstCREDIT: TIBOFloatField;
    dxDBTreeList2BEGIN_DEBIT: TdxDBTreeListCalcColumn;
    dxDBTreeList2BEGIN_CREDIT: TdxDBTreeListCalcColumn;
    qryAccLstBRANCH_ID: TWideStringField;
    qryAccLstBALANCE_TYPE: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBTreeList2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryAccLstAfterPost(DataSet: TDataSet);
    procedure qryAccLstBeforeEdit(DataSet: TDataSet);
    procedure dxDBTreeList2Collapsing(Sender: TObject;
      Node: TdxTreeListNode; var Allow: Boolean);
    procedure chkHasChildClick(Sender: TObject);
    procedure dxDBTreeList2CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBTreeList2Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeginAccountFrm: TBeginAccountFrm;

implementation

uses GlobalInterface, MainDataMdl, Functions, PopupForm, GlobalUnit,
  LookupFrm;


{$R *.dfm}

procedure TBeginAccountFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl2.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl2.EndUpdate;

  dxDBTreeList2BEGIN_DEBIT.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBTreeList2BEGIN_CREDIT.SummaryFooterFormat:=TIENTE_FORMAT;

  qryAccLst.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryAccLst.ParamByName('BRANCH_ID').Value:=vpBranch_id;
  qryAccLst.Open;

  //Thinh them
  if vpBranch_IsMin <> 1 then
    qryAccLst.ReadOnly := true
  else
    qryAccLst.ReadOnly := false;
    
  qryAccLstBEGIN_DEBIT.DisplayFormat := TIENTE_FORMAT;
  qryAccLstBEGIN_CREDIT.DisplayFormat := TIENTE_FORMAT;


    
end;

procedure TBeginAccountFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryAccLst do
  begin
    if State in [dsInsert, dsEdit] then
       Post;
    Close;
  end;
end;

procedure TBeginAccountFrm.dxDBTreeList2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList2, Key, Shift);
end;

procedure TBeginAccountFrm.qryAccLstAfterPost(DataSet: TDataSet);
begin
  qryAccLst.IB_Transaction.CommitRetaining;
  qryAccLst.Refresh;
end;

procedure TBeginAccountFrm.qryAccLstBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
  
end;

procedure TBeginAccountFrm.dxDBTreeList2Collapsing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
//  Allow:=False;
end;

procedure TBeginAccountFrm.chkHasChildClick(Sender: TObject);
begin
  dxDBTreeList2.Repaint;
end;

procedure TBeginAccountFrm.dxDBTreeList2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Strings[4]<>'' then
    if chkHasObj.Checked then
      AFont.Color:=clRed;
  if ANode.Strings[5]<>'1' then
    if chkHasChild.Checked then
      AColor:=clMenu;
end;

procedure TBeginAccountFrm.dxDBTreeList2Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  Allow:=((qryAccLstISMIN.AsInteger=1) and (qryAccLstOTYPE_ID.IsNull));
  if Allow then
  begin
    if((dxDBTreeList2.FocusedField.FieldName = 'BEGIN_DEBIT')
      and (qryAccLstBALANCE_TYPE.AsInteger=1)) then
        Allow:=False;

    if((dxDBTreeList2.FocusedField.FieldName = 'BEGIN_CREDIT')
      and (qryAccLstBALANCE_TYPE.AsInteger=0)) then
        Allow:=False;
  end;
end;

procedure TBeginAccountFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBeginAccountFrm.ElPopupButton3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TBeginAccountFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
