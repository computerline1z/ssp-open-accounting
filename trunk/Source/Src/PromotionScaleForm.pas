unit PromotionScaleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,   
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  ElCheckCtl;

type
  TPromotionScaleFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryPromotion: TIBOQuery;
    dsMaterialNorm: TDataSource;
    rbOut: TElRadioButton;
    locFormItem1: TdxLayoutItem;
    rbIn: TElRadioButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    qryPromotionSALE_BUY: TSmallintField;
    qryPromotionPRODUCT_ID: TWideStringField;
    qryPromotionPROMOTION_ID: TWideStringField;
    qryPromotionOTYPE_ID: TSmallintField;
    qryPromotionPRODUCT_AMOUNT: TIBOFloatField;
    qryPromotionPROMOTION_AMOUNT: TIBOFloatField;
    qryPromotionPROMOTION_NOTES: TWideStringField;
    grdKHPROMOTION_NOTES: TdxDBGridMaskColumn;
    qryPromotionKF: TWideStringField;
    grdKHPRODUCT_ID: TdxDBGridPopupColumn;
    grdKHPROMOTION_ID: TdxDBGridPopupColumn;
    grdKHPRODUCT_AMOUNT: TdxDBGridCalcColumn;
    grdKHPROMOTION_AMOUNT: TdxDBGridCalcColumn;
    qryPromotionMIN_AMOUNT: TIBOFloatField;
    grdKHMIN_AMOUNT: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryPromotionAfterInsert(DataSet: TDataSet);
    procedure qryPromotionBeforeDelete(DataSet: TDataSet);
    procedure qryPromotionBeforeEdit(DataSet: TDataSet);
    procedure qryPromotionBeforeInsert(DataSet: TDataSet);
    procedure qryPromotionFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryPromotionNewRecord(DataSet: TDataSet);
    procedure qryPromotionPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbOutClick(Sender: TObject);
    procedure grdKHPRODUCT_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qryPromotionBeforePost(DataSet: TDataSet);
  private
  public
    { Public declarations }
  end;

var
  PromotionScaleFrm: TPromotionScaleFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TPromotionScaleFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryPromotionPRODUCT_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryPromotionPROMOTION_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;

  qryPromotion.Open;
  MainDM.CurObjTypeID:=2;

  if SSPUserRight[6].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TPromotionScaleFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TPromotionScaleFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TPromotionScaleFrm.qryPromotionAfterInsert(DataSet: TDataSet);
begin
  qryPromotionPRODUCT_ID.FocusControl;
end;

procedure TPromotionScaleFrm.qryPromotionBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TPromotionScaleFrm.qryPromotionBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TPromotionScaleFrm.qryPromotionBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TPromotionScaleFrm.qryPromotionFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if rbIn.Checked then
    Accept := qryPromotionSALE_BUY.AsInteger=1
  else
    Accept := qryPromotionSALE_BUY.AsInteger=-1;
end;

procedure TPromotionScaleFrm.qryPromotionNewRecord(DataSet: TDataSet);
begin
  if rbIn.Checked then
    qryPromotionSALE_BUY.AsInteger := 1
  else
    qryPromotionSALE_BUY.AsInteger := -1;

  qryPromotionOTYPE_ID.AsInteger := 2;
  qryPromotionPRODUCT_AMOUNT.AsFloat:=1;
  qryPromotionPROMOTION_AMOUNT.AsFloat := 1;
end;

procedure TPromotionScaleFrm.qryPromotionPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs:= ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryPromotionPRODUCT_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    if Not MainDM.CheckObject(qryPromotionPRODUCT_ID.Value,2,False) then
    begin
      ShowMessageUnicode(68,e.Message,0);
      qryPromotionPRODUCT_ID.FocusControl;
    end
    else
    begin
      ShowMessageUnicode(164,e.Message,0);
      qryPromotionPROMOTION_ID.FocusControl;
    end
  end;
end;

procedure TPromotionScaleFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TPromotionScaleFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TPromotionScaleFrm.rbOutClick(Sender: TObject);
begin
  qryPromotion.OnFilterRecord := qryPromotionFilterRecord;
  qryPromotion.Filtered :=True;
end;

procedure TPromotionScaleFrm.grdKHPRODUCT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TPromotionScaleFrm.FormShow(Sender: TObject);
begin
  qryPromotion.OnFilterRecord := qryPromotionFilterRecord;
  qryPromotion.Filtered :=True;
  SetVisible(Self);  
end;

procedure TPromotionScaleFrm.qryPromotionBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

end.
