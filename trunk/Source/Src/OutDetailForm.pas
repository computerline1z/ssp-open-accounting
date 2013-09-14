unit OutDetailForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, ElCheckCtl;

type
  TOutDetailFrm = class(TForm)
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
    grdOutDetail: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryOutDetail: TIBOQuery;
    dsOutDetail: TDataSource;
    qryOutDetailODOC_ID: TWideStringField;
    qryOutDetailOENTRY_ID: TSmallintField;
    qryOutDetailOPERIOD_ID: TSmallintField;
    qryOutDetailIDOC_ID: TWideStringField;
    qryOutDetailIENTRY_ID: TSmallintField;
    qryOutDetailIPERIOD_ID: TSmallintField;
    qryOutDetailODETAIL_AMOUNT: TIBOFloatField;
    qryOutDetailODETAIL_VALUE: TIBOFloatField;
    qryOutDetailODETAIL_NOTE: TWideStringField;
    qryOutDetailMASTER_DATE: TDateField;
    qryOutDetailENTRY_NOTE: TWideStringField;
    qryOutDetailENTRY_AMOUNT: TIBOFloatField;
    qryOutDetailENTRY_PRICE: TIBOFloatField;
    qryOutDetailENTRY_VALUE: TIBOFloatField;
    qryOutDetailKF: TWideStringField;
    grdOutDetailIENTRY_ID: TdxDBGridMaskColumn;
    grdOutDetailODETAIL_AMOUNT: TdxDBGridMaskColumn;
    grdOutDetailODETAIL_VALUE: TdxDBGridMaskColumn;
    grdOutDetailODETAIL_NOTE: TdxDBGridMaskColumn;
    grdOutDetailMASTER_DATE: TdxDBGridDateColumn;
    grdOutDetailENTRY_NOTE: TdxDBGridMaskColumn;
    grdOutDetailENTRY_AMOUNT: TdxDBGridMaskColumn;
    grdOutDetailENTRY_PRICE: TdxDBGridMaskColumn;
    grdOutDetailENTRY_VALUE: TdxDBGridMaskColumn;
    PnlPopup: TPanel;
    Panel1: TPanel;
    grdPopup: TdxDBGrid;
    btnXemphieu: TElPopupButton;
    btnSelect: TElPopupButton;
    btnNoSel: TElPopupButton;
    dsBatch: TDataSource;
    qryBatch: TIBOQuery;
    grdPopupDOC_ID: TdxDBGridMaskColumn;
    grdPopupDOC_DATE: TdxDBGridDateColumn;
    grdPopupENTRY_ID: TdxDBGridMaskColumn;
    grdPopupBATCH_AMOUNT: TdxDBGridMaskColumn;
    grdPopupBATCH_PRICE: TdxDBGridMaskColumn;
    grdPopupBATCH_VALUE: TdxDBGridMaskColumn;
    grdPopupBATCH_NOTE: TdxDBGridMaskColumn;
    grdOutDetailIDOC_ID: TdxDBGridPopupColumn;
    qryBatchDOC_ID: TWideStringField;
    qryBatchDOC_DATE: TDateField;
    qryBatchENTRY_ID: TSmallintField;
    qryBatchBATCH_AMOUNT: TIBOFloatField;
    qryBatchBATCH_PRICE: TIBOFloatField;
    qryBatchBATCH_VALUE: TIBOFloatField;
    qryBatchOUT_AMOUNT: TIBOFloatField;
    qryBatchOUT_VALUE: TIBOFloatField;
    qryBatchBATCH_NOTE: TWideStringField;
    qryBatchPERIOD_ID: TSmallintField;
    qryBatchKF: TWideStringField;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    rbLIFO: TElRadioButton;
    locFormItem1: TdxLayoutItem;
    rbFIFO: TElRadioButton;
    locFormItem9: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    rbSortAsc: TElRadioButton;
    rbSortDesc: TElRadioButton;
    qryBatchBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdOutDetailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdOutDetailEnter(Sender: TObject);
    procedure qryOutDetailAfterInsert(DataSet: TDataSet);
    procedure qryOutDetailBeforeDelete(DataSet: TDataSet);
    procedure qryOutDetailBeforeEdit(DataSet: TDataSet);
    procedure qryOutDetailBeforeInsert(DataSet: TDataSet);
    procedure qryOutDetailBeforePost(DataSet: TDataSet);
    procedure qryOutDetailNewRecord(DataSet: TDataSet);
    procedure qryOutDetailPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdOutDetailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnXemphieuClick(Sender: TObject);
    procedure grdOutDetailIDOC_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure btnSelectClick(Sender: TObject);
    procedure btnNoSelClick(Sender: TObject);
    procedure qryOutDetailODETAIL_AMOUNTChange(Sender: TField);
    procedure qryOutDetailAfterPost(DataSet: TDataSet);
    procedure grdPopupDblClick(Sender: TObject);
    procedure grdPopupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryOutDetailAfterDelete(DataSet: TDataSet);
    procedure grdOutDetailIDOC_IDInitPopup(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure grdPopupDOC_DATECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure grdPopupDOC_IDCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure rbSortAscClick(Sender: TObject);
    procedure rbSortDescClick(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
  private
    { Private declarations }
    BeforeEdit,BeforeValue:Double;
  public
    IsChangeData:Boolean;
    TotalAmount,TotalValue:Double;
    OutDocID, WareID, AccID, ObjID :WideString;
    OutPeriod,OutEntryID : Smallint;
    SoluongXuat : Double;
    OutDate : TDate;
    { Public declarations }
  end;

var
  OutDetailFrm: TOutDetailFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus;


{$R *.dfm}

procedure TOutDetailFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  IsChangeData:=False;
  grdOutDetailODETAIL_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdOutDetailODETAIL_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;
  grdOutDetailENTRY_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdOutDetailENTRY_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;

  grdPopupBATCH_AMOUNT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdPopupBATCH_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBatchBATCH_AMOUNT.DisplayFormat:= SOLUONG_FORMAT;
  qryBatchBATCH_PRICE.DisplayFormat:= TIENTE_FORMAT;
  qryBatchBATCH_VALUE.DisplayFormat:= TIENTE_FORMAT;

  qryOutDetailODETAIL_AMOUNT.DisplayFormat := SOLUONG_FORMAT;
  qryOutDetailODETAIL_VALUE.DisplayFormat :=TIENTE_FORMAT;
  qryOutDetailENTRY_AMOUNT.DisplayFormat := SOLUONG_FORMAT;
  qryOutDetailENTRY_PRICE.DisplayFormat :=NGOAITE_FORMAT;
  qryOutDetailENTRY_VALUE.DisplayFormat :=TIENTE_FORMAT;

  btnIns.Enabled := SSPUserRight[5].IR;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TOutDetailFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryOutDetail.State in [dsInsert,dsEdit] then
    qryOutDetail.Post;

  qryOutDetail.Close;
end;

procedure TOutDetailFrm.BitBtn4Click(Sender: TObject);
begin
  Application.HelpContext(12);
end;

procedure TOutDetailFrm.grdOutDetailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdOutDetail, Key, Shift, True);
end;

procedure TOutDetailFrm.grdOutDetailEnter(Sender: TObject);
begin
  if qryOutDetail.RecordCount=0 then
    qryOutDetail.Insert;
end;

procedure TOutDetailFrm.qryOutDetailAfterInsert(DataSet: TDataSet);
begin
  qryOutDetailIDOC_ID.FocusControl;
end;

procedure TOutDetailFrm.qryOutDetailBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
  TotalAmount:=TotalAmount-qryOutDetailODETAIL_AMOUNT.AsFloat;
  TotalValue :=TotalValue -qryOutDetailODETAIL_VALUE.AsFloat; 
end;

procedure TOutDetailFrm.qryOutDetailBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
  BeforeEdit:=qryOutDetailODETAIL_AMOUNT.AsFloat;
  BeforeValue:=qryOutDetailODETAIL_VALUE.AsFloat;
end;

procedure TOutDetailFrm.qryOutDetailBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
  BeforeEdit:=0;
  BeforeValue:=0;
end;

procedure TOutDetailFrm.qryOutDetailBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TOutDetailFrm.qryOutDetailNewRecord(DataSet: TDataSet);
begin
  qryOutDetailODOC_ID.Value := OutDocID;
  qryOutDetailOPERIOD_ID.Value := OutPeriod;
  qryOutDetailOENTRY_ID.Value := OutEntryID;
end;

procedure TOutDetailFrm.qryOutDetailPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'');
  if rs=-803 then
    qryOutDetailIDOC_ID.FocusControl;
  if rs=-530 then
  begin
    ShowMessageUnicode(68,e.Message,0);
    qryOutDetailIDOC_ID.FocusControl;
  end;
end;

procedure TOutDetailFrm.grdOutDetailMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TOutDetailFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TOutDetailFrm.FormShow(Sender: TObject);
begin
  qryOutDetail.ParamByName('ODOC_ID').Value:=OutDocID;
  qryOutDetail.ParamByName('OPERIOD_ID').Value:=OutPeriod;
  qryOutDetail.ParamByName('OENTRY_ID').Value:=OutEntryID;
  qryOutDetail.ParamByName('BRANCH_ID').Value:= vpBranch_id;
  qryOutDetail.Open;

  qryBatch.ParamByName('NGAYXEM').Value:=OutDate;
  qryBatch.ParamByName('WAREID').Value:=WareID;
  qryBatch.ParamByName('ACCID').Value:=AccID;
  qryBatch.ParamByName('OBJID').Value:=ObjID;
  qryBatch.ParamByName('BRANCH_ID').Value:= vpBranch_id;

  MainDM.qryCommon.Close;
	MainDM.qryCommon.SQL.Clear;
	MainDM.qryCommon.SQL.Text := 'Select MS_PPXK From SP_GET_PPXK(:OBJECT_IN ,:WARE_IN,:BRANCH_ID)';
	MainDM.qryCommon.ParamByName('OBJECT_IN').Value := ObjID;
	MainDM.qryCommon.ParamByName('WARE_IN').Value := WareID;
  MainDM.qryCommon.ParamByName('BRANCH_ID').Value := vpBranch_id;
	MainDM.qryCommon.Open;
	prmPPXUATKHO := MainDM.qryCommon.FieldByName('MS_PPXK').Value;
	MainDM.qryCommon.Close;

  if ((prmPPXUATKHO = 2) or (prmPPXUATKHO = 4)) then
  begin
    rbFIFO.Checked         := True;
    rbSortAsc.Checked      := True;
    qryBatch.SQLOrder.Text := 'Order by DOC_DATE,DOC_ID,ENTRY_ID';
  end
  else
  begin
    rbLIFO.Checked         := True;
    rbSortDesc.Checked     := True;
    qryBatch.SQLOrder.Text := 'Order by DOC_DATE DESC,DOC_ID DESC,ENTRY_ID DESC';
  end;

  qryBatch.Open;

  BeforeEdit  := 0;
  BeforeValue := 0;
  TotalAmount := 0;
  TotalValue  := 0;
  While Not qryOutDetail.Eof do
  begin
    TotalAmount := TotalAmount + qryOutDetailODETAIL_AMOUNT.AsFloat;
    TotalValue  := TotalValue  + qryOutDetailODETAIL_VALUE.AsFloat;

    qryOutDetail.Next;
  end;

  SetVisible(Self);
end;

procedure TOutDetailFrm.btnXemphieuClick(Sender: TObject);
begin
  if qryBatch.RecordCount > 0 then
  MainDM.Suachungtu(qryBatchDOC_ID.Value, qryBatchPERIOD_ID.AsInteger,qryBatchBRANCH_ID.Value);
end;

procedure TOutDetailFrm.grdOutDetailIDOC_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  if qryBatch.RecordCount>0 then
  begin
    Text := qryBatchDOC_ID.Value;
    qryOutDetail.Edit;
    qryOutDetailIENTRY_ID.Value:=qryBatchENTRY_ID.Value;
    qryOutDetailIDOC_ID.Value:=qryBatchDOC_ID.Value;
    qryOutDetailIPERIOD_ID.Value:=qryBatchPERIOD_ID.Value;
    qryOutDetailMASTER_DATE.Value:=qryBatchDOC_DATE.Value;
    qryOutDetailENTRY_NOTE.Value:=qryBatchBATCH_NOTE.Value;
    qryOutDetailENTRY_AMOUNT.Value:=qryBatchBATCH_AMOUNT.Value;
    qryOutDetailENTRY_PRICE.Value:=qryBatchBATCH_PRICE.Value;
    qryOutDetailENTRY_VALUE.Value:=qryBatchBATCH_VALUE.Value;
    if qryBatchBATCH_AMOUNT.AsFloat>=SoluongXuat-TotalAmount+BeforeEdit then
      qryOutDetailODETAIL_AMOUNT.AsFloat:=SoluongXuat-TotalAmount+BeforeEdit
    else
      qryOutDetailODETAIL_AMOUNT.AsFloat:=qryBatchBATCH_AMOUNT.AsFloat;
  end;
  
  qryOutDetailODETAIL_AMOUNT.FocusControl;
end;

procedure TOutDetailFrm.btnSelectClick(Sender: TObject);
begin
  (GetParentForm(grdPopup) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TOutDetailFrm.btnNoSelClick(Sender: TObject);
begin
  (GetParentForm(grdPopup) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TOutDetailFrm.qryOutDetailODETAIL_AMOUNTChange(Sender: TField);
begin
  qryOutDetailODETAIL_VALUE.AsFloat:=qryOutDetailODETAIL_AMOUNT.AsFloat*qryOutDetailENTRY_PRICE.AsFloat;
end;

procedure TOutDetailFrm.qryOutDetailAfterPost(DataSet: TDataSet);
begin
  TotalAmount:=TotalAmount+qryOutDetailODETAIL_AMOUNT.AsFloat-BeforeEdit;
  TotalValue :=TotalValue +qryOutDetailODETAIL_VALUE.AsFloat -BeforeValue;
  qryBatch.Close;
  BeforeValue:=0;
  BeforeEdit :=0;
  IsChangeData:=True;
end;

procedure TOutDetailFrm.grdPopupDblClick(Sender: TObject);
begin
  btnSelectClick(Sender);
end;

procedure TOutDetailFrm.grdPopupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnSelectClick(Sender)
  else if (Key = VK_ESCAPE) then
    btnNoSelClick(Sender)
  else
    ProcessKeyDownInGrid(grdPopup, Key, Shift, True);
end;

procedure TOutDetailFrm.qryOutDetailAfterDelete(DataSet: TDataSet);
begin
  qryBatch.Close;
  IsChangeData:=True;
end;

procedure TOutDetailFrm.grdOutDetailIDOC_IDInitPopup(Sender: TObject);
begin
  qryBatch.Open;
end;

procedure TOutDetailFrm.ElPopupButton2Click(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    if rbFIFO.Checked then
      SQL.Text :='execute procedure SP_OUT_FIFO(:ODOC_ID,:OPERIOD_ID,:OENTRY_ID,:ODATE,:Ware_ID,:Acc_ID,:Obj_ID,:Out_Amount,:BRANCH_ID)'
    else
      SQL.Text :='execute procedure SP_OUT_LIFO(:ODOC_ID,:OPERIOD_ID,:OENTRY_ID,:ODATE,:Ware_ID,:Acc_ID,:Obj_ID,:Out_Amount,:BRANCH_ID)';
    Prepare;

    ParamByName('ODOC_ID').Value := OutDocID;
    ParamByName('OPERIOD_ID').Value := OutPeriod;
    ParamByName('OENTRY_ID').Value := OutEntryID;
    ParamByName('ODATE').Value := OutDate;
    ParamByName('WARE_ID').Value := WareID;
    ParamByName('ACC_ID').Value := AccID;
    ParamByName('OBJ_ID').Value := ObjID;
    ParamByName('OUT_Amount').Value := SoluongXuat;
    ParamByName('BRANCH_ID').Value :=vpBranch_id;
    ExecSQL;
    Close;
  end;
  qryOutDetail.Refresh;
  BeforeEdit:=0;
  BeforeValue:=0;
  TotalAmount:=0;
  TotalValue :=0;
  While Not qryOutDetail.Eof do
  begin
    TotalAmount:=TotalAmount+qryOutDetailODETAIL_AMOUNT.AsFloat;
    TotalValue :=TotalValue + qryOutDetailODETAIL_VALUE.AsFloat; 

    qryOutDetail.Next;
  end;
end;

procedure TOutDetailFrm.grdPopupDOC_DATECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Index>0 then
  if AText=ANode.GetPriorNode.Strings[0] then
    AText:='';
end;

procedure TOutDetailFrm.grdPopupDOC_IDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Index>0 then
  if AText=ANode.GetPriorNode.Strings[1] then
    AText:='';
end;

procedure TOutDetailFrm.rbSortAscClick(Sender: TObject);
begin
  qryBatch.Close;
  grdPopup.OptionsBehavior:=grdPopup.OptionsBehavior-[edgoAutoSort];
  qryBatch.SQLOrder.Text:='Order by DOC_DATE,DOC_ID,ENTRY_ID';
  qryBatch.Open;
  grdPopup.OptionsBehavior:=grdPopup.OptionsBehavior+[edgoAutoSort];
end;

procedure TOutDetailFrm.rbSortDescClick(Sender: TObject);
begin
  qryBatch.Close;
  grdPopup.OptionsBehavior:=grdPopup.OptionsBehavior-[edgoAutoSort];
  qryBatch.SQLOrder.Text:='Order by DOC_DATE DESC,DOC_ID DESC,ENTRY_ID DESC';
  qryBatch.Open;
  grdPopup.OptionsBehavior:=grdPopup.OptionsBehavior+[edgoAutoSort];
end;

procedure TOutDetailFrm.btnInsClick(Sender: TObject);
begin
  qryOutDetail.Append;
end;

end.
