
unit BudgetDocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,DateUtils,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  ElPanel, ElCLabel, ElLabel, ElCheckCtl;

type
  TBudgetDocFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryBudget: TIBOQuery;
    dsBudget: TDataSource;
    locFormItem20: TdxLayoutItem;
    btnClose: TELPopupButton;
    ElFormCaption1: TElFormCaption;
    qryBudgetBUDGET_NO: TIntegerField;
    qryBudgetPBUDGET_NO: TIntegerField;
    qryBudgetBUDGET_NAME: TWideStringField;
    qryBudgetACCOUNT_ID: TWideStringField;
    qryBudgetDIRECTION: TSmallintField;
    ElPanel1: TElPanel;
    locFormItem4: TdxLayoutItem;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1BUDGET_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1ACCOUNT_ID: TdxDBTreeListPopupColumn;
    Splitter1: TSplitter;
    dxDBGrid1: TdxDBGrid;
    qryDoc: TIBOQuery;
    dsDoc: TDataSource;
    dxDBGrid1SOPHIEU: TdxDBGridMaskColumn;
    dxDBGrid1NGAYLAP: TdxDBGridDateColumn;
    dxDBGrid1CHUNGTU: TdxDBGridMaskColumn;
    dxDBGrid1NGUOINHAN_NOP: TdxDBGridMaskColumn;
    dxDBGrid1DIACHI: TdxDBGridMaskColumn;
    dxDBGrid1KH_NV_PB: TdxDBGridMaskColumn;
    dxDBGrid1TAIKHOAN_NH: TdxDBGridMaskColumn;
    dxDBGrid1MATIENTE: TdxDBGridMaskColumn;
    dxDBGrid1TYGIA: TdxDBGridMaskColumn;
    dxDBGrid1SOTIENNGOAITE: TdxDBGridMaskColumn;
    dxDBGrid1SOTIEN: TdxDBGridMaskColumn;
    dxDBGrid1GHICHU: TdxDBGridMaskColumn;
    locFormGroup2: TdxLayoutGroup;
    dxDBGrid1STATUS_FLAG: TdxDBGridMaskColumn;
    qryDocSOPHIEU: TWideStringField;
    qryDocNGAYLAP: TDateField;
    qryDocCHUNGTU: TWideStringField;
    qryDocNGUOINHAN_NOP: TWideStringField;
    qryDocDIACHI: TWideStringField;
    qryDocMADIEUKHOAN: TIntegerField;
    qryDocKH_NV_PB: TWideStringField;
    qryDocTAIKHOAN_NH: TWideStringField;
    qryDocMATIENTE: TWideStringField;
    qryDocTYGIA: TIBOFloatField;
    qryDocSOTIENNGOAITE: TIBOFloatField;
    qryDocSOTIEN: TIBOFloatField;
    qryDocLOAIPHIEU: TSmallintField;
    qryDocGHICHU: TWideStringField;
    qryDocPHANHE: TSmallintField;
    qryDocSTATUS_FLAG: TSmallintField;
    qryDocOTYPE_ID: TSmallintField;
    btnXemCT: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    rbFilter: TElRadioButton;
    locFormItem1: TdxLayoutItem;
    ElRadioButton2: TElRadioButton;
    locFormItem3: TdxLayoutItem;
    qryDocSOTIENKT: TIBOFloatField;
    qryDocSOTIENCL: TIBOFloatField;
    dxDBGrid1SOTIENKT: TdxDBGridMaskColumn;
    dxDBGrid1SOTIENCL: TdxDBGridMaskColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem5: TdxLayoutItem;
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
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnXemCTClick(Sender: TObject);
    procedure qryDocFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure rbFilterClick(Sender: TObject);
    procedure ElRadioButton2Click(Sender: TObject);
    procedure dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  BudgetDocFrm: TBudgetDocFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, PopupForm, dxTreeGridMenus;


{$R *.dfm}

procedure TBudgetDocFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  
  qryBudget.Open;
  qryDocSOTIEN.DisplayFormat:=TIENTE_FORMAT;
  qryDocSOTIENKT.DisplayFormat:=TIENTE_FORMAT;
  qryDocSOTIENCL.DisplayFormat:=TIENTE_FORMAT;
  qryDoc.ParamByName('tungay').asDate:= EncodeDate(CurYear, CurMonth,1) ;
  qryDoc.ParamByName('denngay').asDate:=EncodeDate(CurYear, CurMonth,DaysInMonth(WorkingDate));
  qryDoc.Open;
  qryDoc.OnFilterRecord:=qryDocFilterRecord;
  qryDoc.Filtered:=True;
  MainDM.qryPAcc.Filtered:=False;
end;

procedure TBudgetDocFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryBudget do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TBudgetDocFrm.qryBudgetBeforePost(DataSet: TDataSet);
begin
  if qryBudgetACCOUNT_ID.IsNull then
  begin
    ShowMessageUnicode(67);
    qryBudgetACCOUNT_ID.FocusControl;
    Abort;
    exit;
  end;       
end;

procedure TBudgetDocFrm.qryBudgetBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TBudgetDocFrm.qryBudgetPostError(DataSet: TDataSet;
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

procedure TBudgetDocFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TBudgetDocFrm.dxDBTreeList1ACCOUNT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TBudgetDocFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBudgetDocFrm.btnXemCTClick(Sender: TObject);
begin
  if qryDocSOPHIEU.IsNull then exit;
  
  MainDM.Suachungtu(qryDocSOPHIEU.Value,CurrentPeriod);
end;

procedure TBudgetDocFrm.qryDocFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=qryDocMADIEUKHOAN.AsInteger=qryBudgetBUDGET_NO.AsInteger;
end;

procedure TBudgetDocFrm.rbFilterClick(Sender: TObject);
begin
  qryDoc.OnFilterRecord:=qryDocFilterRecord;
  qryDoc.Filtered:=True;
end;

procedure TBudgetDocFrm.ElRadioButton2Click(Sender: TObject);
begin
  qryDoc.Filtered:=False;
end;

procedure TBudgetDocFrm.dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  if rbFilter.Checked then
  begin
    qryDoc.OnFilterRecord:=qryDocFilterRecord;
    qryDoc.Filtered:=True;
  end;
end;

procedure TBudgetDocFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnXemCTClick(Sender);
end;

procedure TBudgetDocFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBudgetDocFrm.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Strings[4]<>'0' then
    AColor:=clInfoBk;
end;

procedure TBudgetDocFrm.ElPopupButton1Click(Sender: TObject);
begin
  Application.HelpContext(21);
end;

procedure TBudgetDocFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TBudgetDocFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
  BudgetDocFrm := nil;
end;

procedure TBudgetDocFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TBudgetDocFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

end.
