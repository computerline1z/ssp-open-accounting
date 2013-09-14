unit RegForBillForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, dxDBTLCl, dxGrClEx,  Forms,
  ElCaption, dxGrClms, DBActns, ActnList, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, ElPgCtl;

type
  TRegForBillFrm = class(TForm)
    locForm1Group_Root: TdxLayoutGroup;
    locForm1: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locForm1Item1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1Column1: TdxDBGridPopupColumn;
    dxDBGrid1Column5: TdxDBGridPopupColumn;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1IS_ACTIVE: TdxDBGridCheckColumn;
    ActionList2: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locForm1Item2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locForm1Item3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locForm1Item4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locForm1Item5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locForm1Item6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locForm1Item7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locForm1Group1: TdxLayoutGroup;
    ElPageControl1: TElPageControl;
    ElTabSheet1: TElTabSheet;
    ElTabSheet2: TElTabSheet;
    locForm: TdxLayoutControl;
    dxDBGrid2: TdxDBGrid;
    dxDBGridPopupColumn1: TdxDBGridPopupColumn;
    dxDBGrid1TK_TL: TdxDBGridPopupColumn;
    dxDBGrid1Column3: TdxDBGridPopupColumn;
    dxDBGrid1Column4: TdxDBGridPopupColumn;
    dxDBGridCheckColumn1: TdxDBGridCheckColumn;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    ActionList1: TActionList;
    Insert1: TDataSetInsert;
    Delete1: TDataSetDelete;
    Post1: TDataSetPost;
    Cancel1: TDataSetCancel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1Column1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1Column5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGridPopupColumn1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1TK_TLCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1Column3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1Column4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegForBillFrm: TRegForBillFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, HtmlHlp,dxTreeGridMenus;


{$R *.dfm}

procedure TRegForBillFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  //Open dataset
  MainDM.qryRegForBills.Open;
  MainDM.qryPDocType.Open;
  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;

  MainDM.qryAutoOut.Open;
  MainDM.qryPAcc.Open;
  MainDM.qryPAcc.Filtered:=False;
  if SSPUserRight[6].IR=False then
    Insert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    Delete1.DataSource := MainDM.dsBanana;
end;

procedure TRegForBillFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryRegForBills do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
  MainDM.qryPDocType.Close;
end;

procedure TRegForBillFrm.dxDBGrid1Column1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := qryPDocTypeDOCTYPE_NAME.Value;
    qryRegForBills.Edit;
    qryRegForBillsLOAIPBH.AsInteger := qryPDocTypeDOCTYPE_ID.AsInteger;
  end;
end;

procedure TRegForBillFrm.dxDBGrid1Column5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := qryPDocTypeDOCTYPE_NAME.Value;
    qryRegForBills.Edit;
    qryRegForBillsLOAIPXK.AsInteger := qryPDocTypeDOCTYPE_ID.AsInteger;
  end;
end;

procedure TRegForBillFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dxDBGrid1.FocusedColumn<2 then
  begin
    if ((Key=VK_Delete) or (Key=VK_Back) or (Key=VK_Insert)) then
    begin
       Key:=0;
       exit;
    end;
    if (Key= Ord('V')) OR (Key= Ord('v')) then
    begin
       Key:=0;
       exit;
    end;
  end;
  ProcessKeyDownInGrid(dxDBGrid1,Key,Shift, True);
end;

procedure TRegForBillFrm.dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if dxDBGrid1.FocusedColumn<2 then
    Key:=#0;
end;

procedure TRegForBillFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/DKbuttoanxuatkhotd.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TRegForBillFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/DKbuttoanxuatkhotd.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//    Application.HelpContext(13);
end;

procedure TRegForBillFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TRegForBillFrm.dxDBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TRegForBillFrm.dxDBGridPopupColumn1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    text := PopupFrm.tlAcc.DataSource.DataSet.Fieldbyname('ACCOUNT_ID').Value;
end;

procedure TRegForBillFrm.dxDBGrid1TK_TLCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    text := PopupFrm.tlAcc.DataSource.DataSet.Fieldbyname('ACCOUNT_ID').Value;
end;

procedure TRegForBillFrm.dxDBGrid1Column3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
    text := PopupFrm.tlAcc.DataSource.DataSet.Fieldbyname('ACCOUNT_ID').Value;
end;

procedure TRegForBillFrm.dxDBGrid1Column4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
    text := PopupFrm.tlAcc.DataSource.DataSet.Fieldbyname('ACCOUNT_ID').Value;
end;

end.
