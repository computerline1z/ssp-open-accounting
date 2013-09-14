unit PlanPriceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms , 
  TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TPlanPriceFrm = class(TForm)
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
    dxDBGridColumn6: TdxDBGridColumn;
    grdColGiaKH: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaHH: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdKHColumn4: TdxDBGridColumn;
    ElFormCaption1: TElFormCaption;
    qryPlanPrice: TIBOQuery;
    qryPlanPricePERIOD_ID: TSmallintField;
    qryPlanPricePLANPRICENOTES: TWideStringField;
    qryPlanPriceOBJECT_NAME: TWideStringField;
    dsPlanPrice: TDataSource;
    qryPlanPricePLANPRICE: TIBOFloatField;
    qryPlanPriceOBJECT_ID: TWideStringField;
    qryPlanPriceOTYPE_ID: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryPlanPriceAfterInsert(DataSet: TDataSet);
    procedure qryPlanPriceBeforeDelete(DataSet: TDataSet);
    procedure qryPlanPriceBeforeEdit(DataSet: TDataSet);
    procedure qryPlanPriceBeforeInsert(DataSet: TDataSet);
    procedure qryPlanPriceBeforePost(DataSet: TDataSet);
    procedure qryPlanPriceNewRecord(DataSet: TDataSet);
    procedure qryPlanPricePostError(DataSet: TDataSet; E: EDatabaseError;
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
  PlanPriceFrm: TPlanPriceFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TPlanPriceFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
    colMaHH.CharCase:=ecUpperCase;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  grdColGiaKH.SummaryFooterFormat:=TIENTE_FORMAT;
  qryPlanPricePLANPRICE.DisplayFormat := TIENTE_FORMAT;
  qryPlanPricePLANPRICE.EditFormat :='###############';

  qryPlanPrice.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryPlanPrice.Open;
  MainDM.CurObjTypeID:=2;
  
  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TPlanPriceFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryPlanPrice.Edit;
    qryPlanPriceOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryPlanPriceOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TPlanPriceFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPlanPrice.Close;
end;

procedure TPlanPriceFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TPlanPriceFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TPlanPriceFrm.qryPlanPriceAfterInsert(DataSet: TDataSet);
begin
  qryPlanPriceOBJECT_ID.FocusControl;
end;

procedure TPlanPriceFrm.qryPlanPriceBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TPlanPriceFrm.qryPlanPriceBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TPlanPriceFrm.qryPlanPriceBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TPlanPriceFrm.qryPlanPriceBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if KiemtraHople = False then
  begin
    qryPlanPriceOBJECT_ID.FocusControl;
    Abort;
  end;
end;

procedure TPlanPriceFrm.qryPlanPriceNewRecord(DataSet: TDataSet);
begin
  qryPlanPricePERIOD_ID.Value := CurrentPeriod;
  qryPlanPriceOTYPE_ID.AsInteger:=2;
end;

function TPlanPriceFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryPlanPrice.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryPlanPriceOBJECT_ID.Value,2);

  if Result then
  begin
    if qryPlanPriceOBJECT_ID.Value<>MainDM.CurObjID then
      qryPlanPriceOBJECT_ID.Value:=MainDM.CurObjID;

    qryPlanPriceOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryPlanPriceOBJECT_NAME.Clear;
end;

procedure TPlanPriceFrm.qryPlanPricePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'thành phẩm');
  if rs=-803 then
    qryPlanPriceOBJECT_ID.FocusControl;

  if rs=-530 then
  begin
    ShowMessageUnicode(68,e.Message,0);
    qryPlanPriceOBJECT_ID.FocusControl;
  end;
end;

procedure TPlanPriceFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBJECT_ID') then
    if KiemtraHople=False then
    begin
      qryPlanPriceOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TPlanPriceFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TPlanPriceFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TPlanPriceFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
