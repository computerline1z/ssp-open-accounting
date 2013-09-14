unit BuyPriceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TBuyPriceFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    grdKHColumn2: TdxDBGridColumn;
    grdKHColumn3: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaHH: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdKHColumn6: TdxDBGridColumn;
    grdKHColumn4: TdxDBGridCalcColumn;
    grdKHColumn5: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    qryBuyPrice: TIBOQuery;
    qryBuyPricePERIOD_ID: TSmallintField;
    qryBuyPriceBUYNOTES: TWideStringField;
    qryBuyPriceOBJECT_NAME: TWideStringField;
    dsBuyPrice: TDataSource;
    qryBuyPriceBUYPRICE: TIBOFloatField;
    qryBuyPriceBUY_MIN: TIBOFloatField;
    qryBuyPriceBUY_MAX: TIBOFloatField;
    qryBuyPriceOBJECT_ID: TWideStringField;
    qryBuyPriceOTYPE_ID: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHEnter(Sender: TObject);
    procedure qryBuyPriceAfterInsert(DataSet: TDataSet);
    procedure qryBuyPriceBeforeDelete(DataSet: TDataSet);
    procedure qryBuyPriceBeforeEdit(DataSet: TDataSet);
    procedure qryBuyPriceBeforeInsert(DataSet: TDataSet);
    procedure qryBuyPriceBeforePost(DataSet: TDataSet);
    procedure qryBuyPriceNewRecord(DataSet: TDataSet);
    procedure qryBuyPricePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuyPriceFrm: TBuyPriceFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TBuyPriceFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  if prmUSEUPPERCASE then
    colMaHH.CharCase:=ecUpperCase;

  grdKHColumn3.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn4.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn5.SummaryFooterFormat:=TIENTE_FORMAT;

  qryBuyPriceBUYPRICE.DisplayFormat := TIENTE_FORMAT;
  qryBuyPriceBUYPRICE.EditFormat :='###############';
  qryBuyPriceBUY_MIN.DisplayFormat := TIENTE_FORMAT;
  qryBuyPriceBUY_MIN.EditFormat :='###############';
  qryBuyPriceBUY_MAX.DisplayFormat := TIENTE_FORMAT;
  qryBuyPriceBUY_MAX.EditFormat :='###############';

  qryBuyPrice.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBuyPrice.Open;
  MainDM.CurObjTypeID:=2;
  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TBuyPriceFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryBuyPrice.Edit;
    qryBuyPriceOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryBuyPriceOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TBuyPriceFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryBuyPrice.Close;
end;

procedure TBuyPriceFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TBuyPriceFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TBuyPriceFrm.grdKHEnter(Sender: TObject);
begin
  if qryBuyPrice.RecordCount=0 then
    qryBuyPrice.Insert;
end;

procedure TBuyPriceFrm.qryBuyPriceAfterInsert(DataSet: TDataSet);
begin
  qryBuyPriceOBJECT_ID.FocusControl;
end;

procedure TBuyPriceFrm.qryBuyPriceBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TBuyPriceFrm.qryBuyPriceBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TBuyPriceFrm.qryBuyPriceBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TBuyPriceFrm.qryBuyPriceBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if qryBuyPriceBUY_MIN.AsFloat<>0 then
    if qryBuyPriceBUYPRICE.AsFloat<qryBuyPriceBUY_MIN.AsFloat then
    begin
      ShowMessageUnicode(178);
      qryBuyPriceBUYPRICE.FocusControl;
      Abort;
      exit;
    end;
  if qryBuyPriceBUY_MAX.AsFloat<>0 then
    if qryBuyPriceBUYPRICE.AsFloat>qryBuyPriceBUY_MAX.AsFloat then
    begin
      ShowMessageUnicode(179);
      qryBuyPriceBUYPRICE.FocusControl;
      Abort;
      exit;
    end;

  if KiemtraHople = False then
  begin
    qryBuyPriceOBJECT_ID.FocusControl;
    Abort;
  end;
end;

procedure TBuyPriceFrm.qryBuyPriceNewRecord(DataSet: TDataSet);
begin
  qryBuyPricePERIOD_ID.Value := CurrentPeriod;
  qryBuyPriceOTYPE_ID.AsInteger:=2;
end;

procedure TBuyPriceFrm.qryBuyPricePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'hàng hóa');
  if rs=-803 then
    qryBuyPriceOBJECT_ID.FocusControl;
  if rs=-530 then
  begin
    ShowMessageUnicode(68,e.Message,0);
    qryBuyPriceOBJECT_ID.FocusControl;
  end;
end;

function TBuyPriceFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryBuyPrice.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryBuyPriceOBJECT_ID.Value,2);
  if Result then
  begin
    if qryBuyPriceOBJECT_ID.Value <> MainDM.CurObjID then
      qryBuyPriceOBJECT_ID.Value := MainDM.CurObjID;
    qryBuyPriceOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryBuyPriceOBJECT_NAME.Clear;
end;

procedure TBuyPriceFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBJECT_ID') then
    if KiemtraHople=False then
    begin
      qryBuyPriceOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TBuyPriceFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBuyPriceFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TBuyPriceFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
