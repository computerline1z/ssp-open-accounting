unit ProductForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntStdCtrls, TntButtons, ElXPThemedControl, ElEdits, ElCaption,
  ElCheckCtl, ElBtnCtl, ElPopBtn;

type
  TProductFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    lociKH: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    qryProduct: TIBOQuery;
    dsProduct: TDataSource;
    qryProductPERIOD_ID: TSmallintField;
    qryProductPRODUCTION_ID: TWideStringField;
    qryProductPRODUCTION_AMOUNT: TIBOFloatField;
    qryProductOBJECT_NAME: TWideStringField;
    qryProductMAPX: TWideStringField;
    qryProductMALOAI: TSmallintField;
    qryProductINPLANVALUE: TIBOFloatField;
    qryProductBEGIN_AMOUNT: TIBOFloatField;
    qryProductBEGIN_VALUE: TIBOFloatField;
    grdKHBEGIN_AMOUNT: TdxDBGridCalcColumn;
    grdKHBEGIN_VALUE: TdxDBGridCalcColumn;
    colMaHH: TdxDBGridPopupColumn;
    ElPopupButton1: TElPopupButton;
    locFormIns: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormDel: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormPost: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFormCancel: TdxLayoutItem;
    ActionList1: TActionList;
    Action1: TAction;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    qryProductPRODUCTION_TYPE: TSmallintField;
    grdKHMAPX: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryProductNewRecord(DataSet: TDataSet);
    procedure grdKHEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHMAPXCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryProductPRODUCTION_IDChange(Sender: TField);
    procedure qryProductMAPXChange(Sender: TField);
    procedure qryProductAfterInsert(DataSet: TDataSet);
    procedure qryProductBeforeDelete(DataSet: TDataSet);
    procedure qryProductBeforeEdit(DataSet: TDataSet);
    procedure qryProductBeforeInsert(DataSet: TDataSet);
    procedure qryProductPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryProductBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductFrm: TProductFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Functions, htmlhlp;


{$R *.dfm}

procedure TProductFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  grdKHBEGIN_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHBEGIN_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;
  qryProductBEGIN_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryProductBEGIN_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryProductPRODUCTION_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryProductINPLANVALUE.DisplayFormat:=TIENTE_FORMAT;
  
  qryProduct.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryProduct.Open;
  qryProduct.ReadOnly:=(CurrentPeriod<>BeginPeriod);
  locFormIns.Visible:=(CurrentPeriod=BeginPeriod);
  locFormDel.Visible:=(CurrentPeriod=BeginPeriod);
  locFormPost.Visible:=(CurrentPeriod=BeginPeriod);
  locFormCancel.Visible:=(CurrentPeriod=BeginPeriod);

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TProductFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TProductFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if CurrentPeriod=BeginPeriod then
    ProcessKeyDownInGrid(grdKH, Key, Shift, True,4)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, False,4);
end;

procedure TProductFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TProductFrm.qryProductNewRecord(DataSet: TDataSet);
begin
  qryProductPERIOD_ID.Value:=CurrentPeriod;
  qryProductMALOAI.Value:=6;
  qryProductPRODUCTION_TYPE.AsInteger:=2;
end;

procedure TProductFrm.grdKHEditing(Sender: TObject; Node: TdxTreeListNode;
  var Allow: Boolean);
begin
  if grdKH.FocusedField.FieldName='PRODUCTION_ID' then
    MainDM.CurObjTypeID:=2;
  if grdKH.FocusedField.FieldName='MAPX' then
    MainDM.CurObjTypeID:=6;
end;

procedure TProductFrm.colMaHHCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TProductFrm.grdKHMAPXCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TProductFrm.qryProductPRODUCTION_IDChange(Sender: TField);
begin
  if MainDM.CheckObject(qryProductPRODUCTION_ID.Value,2) then
  begin
    qryProductOBJECT_NAME.Value:=MainDM.CurObjName;
    if qryProductPRODUCTION_ID.Value<>MainDM.CurObjID then
      qryProductPRODUCTION_ID.Value:=MainDM.CurObjID;
  end;
end;

procedure TProductFrm.qryProductMAPXChange(Sender: TField);
begin
  if MainDM.CheckObject(qryProductMAPX.Value,6) then
    if qryProductMAPX.Value<>MainDM.CurObjID then
      qryProductMAPX.Value:=MainDM.CurObjID;
end;

procedure TProductFrm.qryProductAfterInsert(DataSet: TDataSet);
begin
  qryProductPRODUCTION_ID.FocusControl;
end;

procedure TProductFrm.qryProductBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TProductFrm.qryProductBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TProductFrm.qryProductBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TProductFrm.qryProductPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs := ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(37,e.Message,0);
    qryProductPRODUCTION_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    if MainDM.CheckObject(qryProductMAPX.Value,6) then
    begin
      ShowMessageUnicode(167,e.Message,0);
      qryProductPRODUCTION_ID.FocusControl;
    end
    else
    begin
      ShowMessageUnicode(66,e.Message,0);
      qryProductMAPX.FocusControl;
    end;
  end;
end;

procedure TProductFrm.qryProductBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if qryProductPRODUCTION_ID.IsNull then
  begin
    ShowMessageUnicode(167);
    qryProductPRODUCTION_ID.FocusControl;
    Abort;
  end;

  if qryProductMAPX.IsNull then
  begin
    ShowMessageUnicode(66);
    qryProductMAPX.FocusControl;
    Abort;
  end;
end;

procedure TProductFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TProductFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
