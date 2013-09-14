unit IdleJobForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, IBODataset, dxLayout, DBActns, ActnList,
  dxLayoutLookAndFeels, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxGrClEx, dxCntner, dxLayoutControl,
  dxEditor, dxExGrEd, dxExELib, cxControls, ElCaption, dxEdLib, dxDBELib;

type
  TIdleJobfrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    locFormItem1: TdxLayoutItem;
    pedtBranch: TdxDBExtLookupEdit;
    locFormItem2: TdxLayoutItem;
    grdAllocate: TdxDBGrid;
    grdAllocateTO_FACTOR: TdxDBGridPopupColumn;
    grdAllocateTABLE_ID: TdxDBGridMaskColumn;
    locFormItem3: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    qryHeso: TIBOQuery;
    dsHeso: TDataSource;
    qryComBranch: TIBOQuery;
    qryComBranchBRANCH_ID: TWideStringField;
    qryComBranchFULLNAME: TWideStringField;
    qryComBranchSHORTNAME: TWideStringField;
    qryComBranchISMIN: TSmallintField;
    qryComBranchPBRANCH_ID: TWideStringField;
    qryComBranchCOMPANY_ID: TSmallintField;
    dsComBranch: TDataSource;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    locFormGroup1: TdxLayoutGroup;
    qryHesoOBJECT_ID: TWideStringField;
    qryHesoOTYPE_ID: TSmallintField;
    qryHesoOBJECT_NAME: TWideStringField;
    qryHesoTO_FACTOR: TWideStringField;
    qryHesoTO_FACTYPE: TSmallintField;
    qryHesoFNAME: TWideStringField;
    grdAllocateFNAME: TdxDBGridMaskColumn;
    qryHesoBRANCH_ID: TWideStringField;
    qryHesoTO_FACTOR_2: TWideStringField;
    qryHesoTO_FACTYPE_2: TSmallintField;
    qryHesoTABLE_ID: TSmallintField;
    qryHesoPERIOD_ID: TSmallintField;
    qryHesoD1: TIBOFloatField;
    qryHesoD2: TIBOFloatField;
    qryHesoD3: TIBOFloatField;
    qryHesoD4: TIBOFloatField;
    qryHesoD5: TIBOFloatField;
    qryHesoD6: TIBOFloatField;
    qryHesoD7: TIBOFloatField;
    qryHesoD8: TIBOFloatField;
    qryHesoD9: TIBOFloatField;
    qryHesoD10: TIBOFloatField;
    qryHesoD11: TIBOFloatField;
    qryHesoD12: TIBOFloatField;
    qryHesoD13: TIBOFloatField;
    qryHesoD14: TIBOFloatField;
    qryHesoD15: TIBOFloatField;
    qryHesoD16: TIBOFloatField;
    qryHesoD17: TIBOFloatField;
    qryHesoD18: TIBOFloatField;
    qryHesoD19: TIBOFloatField;
    qryHesoD20: TIBOFloatField;
    qryHesoD21: TIBOFloatField;
    qryHesoD22: TIBOFloatField;
    qryHesoD23: TIBOFloatField;
    qryHesoD24: TIBOFloatField;
    qryHesoD25: TIBOFloatField;
    qryHesoD26: TIBOFloatField;
    qryHesoD27: TIBOFloatField;
    qryHesoD28: TIBOFloatField;
    qryHesoD29: TIBOFloatField;
    qryHesoD30: TIBOFloatField;
    qryHesoD31: TIBOFloatField;
    qryHesoNOTES: TWideStringField;
    grdAllocateD2: TdxDBGridMaskColumn;
    grdAllocateD3: TdxDBGridMaskColumn;
    grdAllocateD4: TdxDBGridMaskColumn;
    grdAllocateD5: TdxDBGridMaskColumn;
    grdAllocateD6: TdxDBGridMaskColumn;
    grdAllocateD7: TdxDBGridMaskColumn;
    grdAllocateD8: TdxDBGridMaskColumn;
    grdAllocateD9: TdxDBGridMaskColumn;
    grdAllocateD10: TdxDBGridMaskColumn;
    grdAllocateD11: TdxDBGridMaskColumn;
    grdAllocateD12: TdxDBGridMaskColumn;
    grdAllocateD13: TdxDBGridMaskColumn;
    grdAllocateD14: TdxDBGridMaskColumn;
    grdAllocateD15: TdxDBGridMaskColumn;
    grdAllocateD16: TdxDBGridMaskColumn;
    grdAllocateD17: TdxDBGridMaskColumn;
    grdAllocateD18: TdxDBGridMaskColumn;
    grdAllocateD19: TdxDBGridMaskColumn;
    grdAllocateD20: TdxDBGridMaskColumn;
    grdAllocateD21: TdxDBGridMaskColumn;
    grdAllocateD22: TdxDBGridMaskColumn;
    grdAllocateD23: TdxDBGridMaskColumn;
    grdAllocateD24: TdxDBGridMaskColumn;
    grdAllocateD25: TdxDBGridMaskColumn;
    grdAllocateD26: TdxDBGridMaskColumn;
    grdAllocateD27: TdxDBGridMaskColumn;
    grdAllocateD28: TdxDBGridMaskColumn;
    grdAllocateD29: TdxDBGridMaskColumn;
    grdAllocateD30: TdxDBGridMaskColumn;
    grdAllocateD31: TdxDBGridMaskColumn;
    grdAllocateNOTES: TdxDBGridMaskColumn;
    locFormGroup2: TdxLayoutGroup;
    locFormItem10: TdxLayoutItem;
    popObjGrp: TdxPopupEdit;
    grdAllocateTO_FACTOR_2: TdxDBGridPopupColumn;
    locFormItem9: TdxLayoutItem;
    pedtKH: TdxPopupEdit;
    grdAllocateOBJECT_NAME: TdxDBGridMaskColumn;
    grdAllocateD1: TdxDBGridColumn;
    grdAllocateOBJECT_ID: TdxDBGridPopupColumn;
    grdAllocateBRANCH_ID: TdxDBGridMaskColumn;
    locFormItem11: TdxLayoutItem;
    chkExpand: TdxCheckEdit;
    qryHesoTONGCONG: TIBOFloatField;
    grdAllocateTONGCONG: TdxDBGridMaskColumn;
    qryHesoNHOMCV: TWideStringField;
    qryHesoTO_FACTOR_3: TWideStringField;
    qryHesoTO_FACTYPE_3: TSmallintField;
    grdAllocateTO_FACTOR_3: TdxDBGridPopupColumn;
    locFormItem12: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    qryHesoLUONG: TIBOFloatField;
    qryId: TIBOQuery;
    qryIdA: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure pedtBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHesoBeforeOpen(DataSet: TDataSet);
    procedure qryHesoBeforePost(DataSet: TDataSet);
    procedure qryHesoNewRecord(DataSet: TDataSet);
    procedure qryHesoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdAllocateTO_FACTORInitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_IDInitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateTO_FACTORCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHesoOBJECT_IDChange(Sender: TField);
    procedure qryHesoTO_FACTORChange(Sender: TField);
    procedure qryComBranchBeforeOpen(DataSet: TDataSet);
    procedure qryComBranchAfterOpen(DataSet: TDataSet);
    procedure grdAllocateTO_FACTOR_2InitPopup(Sender: TObject);
    procedure grdAllocateTO_FACTOR_2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure pedtKHEnter(Sender: TObject);
    procedure pedtKHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHesoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure grdAllocateEnter(Sender: TObject);
    procedure pedtKHChange(Sender: TObject);
    procedure chkExpandChange(Sender: TObject);
    procedure popObjGrpEnter(Sender: TObject);
    procedure popObjGrpCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure popObjGrpChange(Sender: TObject);
    procedure qryHesoAfterOpen(DataSet: TDataSet);
    procedure qryHesoCalcFields(DataSet: TDataSet);
    procedure grdAllocateTO_FACTOR_3InitPopup(Sender: TObject);
    procedure grdAllocateTO_FACTOR_3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHesoBeforeInsert(DataSet: TDataSet);
    procedure ElPopupButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AUTO_ID,MAX_ID :Smallint;
    AUTO_TYPE : Smallint;
    TO_OTYPE, TO_DTYPE, TO_DTYPE2, TO_DTYPE3: Smallint;
    TO_ACC : WideString;
    PreTO_OTYPE, PreTO_DTYPE, PreTO_DTYPE2, PreTO_DTYPE3,PreSTT : Smallint;
    PreTO_OBJECT_ID,PreTO_FACTOR_ID,PreTO_FACTOR_ID_2,PreTO_FACTOR_ID_3 : widestring;

  end;

var
  IdleJobfrm: TIdleJobfrm;

implementation
uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, HtmlHlp, DateUtils,CM_PopupForm,CM_FUNCTIONS;

{$R *.dfm}

procedure TIdleJobfrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TIdleJobfrm.pedtBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if accept then
  //Neu luu lai thay doi Branch thi close form
  begin
    qryheso.Close;
    qryheso.Open;
  end
end;

procedure TIdleJobfrm.qryHesoBeforeOpen(DataSet: TDataSet);
begin
  {if dayof(WorkingDate) <= 15 then
    qryHeso.ParamByName('PERIOD_ID').Asfloat:=CurrentPeriod
  else
    qryHeso.ParamByName('PERIOD_ID').Asfloat:=CurrentPeriod + 0.5;
  }
  qryHeso.ParamByName('PERIOD_ID_IN').AsInteger:= CurrentPeriod;
  qryHeso.ParamByName('BRANCH_ID_IN').value:= qryComBranchBRANCH_ID.Value;

end;

procedure TIdleJobfrm.qryHesoBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;

  if qryHesoTO_FACTOR.IsNull then
    qryHesoTO_FACTYPE.Clear;
  if qryHesoTO_FACTOR_2.IsNull then
    qryHesoTO_FACTYPE_2.Clear;
 if qryHesoOBJECT_ID.IsNull then
    qryHesoOTYPE_ID.Clear;

end;

procedure TIdleJobfrm.qryHesoNewRecord(DataSet: TDataSet);
begin


  maindm.qryCommon.Close;
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select max(table_id) table_id from WORK_IDLE  where branch_id = :branch_id and period_id = :period_id ';

  maindm.qryCommon.ParamByName('branch_id').Value := qryComBranchBRANCH_ID.Value;
  maindm.qryCommon.ParamByName('period_id').Value:= CurrentPeriod;

  maindm.qryCommon.Open;

  if maindm.qryCommon.fieldbyname('table_id').IsNull then
    MAX_ID := 0
  else
    MAX_ID := maindm.qryCommon.fieldbyname('table_id').Value;
  maindm.qryCommon.Close;

  max_id := max_id + 1;

  qryHesoOTYPE_ID.AsInteger := TO_OTYPE;
  qryHesoPERIOD_ID.Value := CurrentPeriod;
  qryHesoTO_FACTYPE.AsInteger := TO_DTYPE;
  qryHesoTO_FACTYPE_2.AsInteger := TO_DTYPE2;
  qryHesoTO_FACTYPE_3.AsInteger := TO_DTYPE3;
  qryHesoBRANCH_ID.Value := qryComBranchBRANCH_ID.Value;
  qryHesoTABLE_ID.AsInteger:= max_id;

  if PreSTT <> -1 then
  begin
     qryHesoOBJECT_ID.Value := PreTO_OBJECT_ID;
     qryHesoTO_FACTOR.Value := PreTO_FACTOR_ID;
     qryHesoTO_FACTOR_2.Value := PreTO_FACTOR_ID_2;
     qryHesoTO_FACTOR_3.Value := PreTO_FACTOR_ID_3;
  end
  else begin
    qryHesoOBJECT_ID.Value := pedtKH.Text;
  end

end;

procedure TIdleJobfrm.qryHesoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(42,e.Message,0);

  qryHesoOBJECT_ID.FocusControl;
end;

procedure TIdleJobfrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TIdleJobfrm.grdAllocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ProcessKeyDownInGrid(grdAllocate, Key, Shift, True);
end;

procedure TIdleJobfrm.grdAllocateMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

end;

procedure TIdleJobfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with qryHeso do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TIdleJobfrm.FormShow(Sender: TObject);
begin
  qryComBranch.Open;
  qryComBranch.Locate('branch_id',vpBranch_id,[]);

  SetVisible(Self);

  TO_OTYPE :=  1;
  TO_DTYPE :=  4;
  TO_DTYPE2 :=  11;
  TO_DTYPE3 :=  21;
  qryHeso.Open;
  
end;

procedure TIdleJobfrm.grdAllocateTO_FACTORInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= TO_DTYPE;
end;

procedure TIdleJobfrm.grdAllocateOBJECT_IDInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= TO_OTYPE;
end;

procedure TIdleJobfrm.grdAllocateOBJECT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TIdleJobfrm.grdAllocateTO_FACTORCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TIdleJobfrm.qryHesoOBJECT_IDChange(Sender: TField);
begin
  MainDM.CurObjTypeID:= TO_OTYPE; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoOBJECT_ID.FocusControl;
      Exit;
    end;

    if qryHesoOBJECT_ID.Value<>CurObjID then
    begin
      qryHesoOBJECT_ID.Value:=CurObjID;
      qryHesoOTYPE_ID.Value := TO_OTYPE;
    end;
    GetCurObjInfo;

    qryHesoOBJECT_NAME.Value :=CurObjName;
  end;
end;

procedure TIdleJobfrm.qryHesoTO_FACTORChange(Sender: TField);
begin
  MainDM.CurObjTypeID:= TO_DTYPE; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoTO_FACTOR.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoTO_FACTOR.FocusControl;
      Exit;
    end;

    if qryHesoTO_FACTOR.Value<>CurObjID then
    begin
      qryHesoTO_FACTOR.Value:=CurObjID;
      qryHesoTO_FACTYPE.Value := TO_DTYPE;
    end;
    GetCurObjInfo;

    qryHesoFNAME.Value :=CurObjName;
  end;
end;

procedure TIdleJobfrm.qryComBranchBeforeOpen(DataSet: TDataSet);
begin
   qryComBranch.ParamByName('BRANCH_ID').Value := vpBranch_id;
end;

procedure TIdleJobfrm.qryComBranchAfterOpen(DataSet: TDataSet);
begin
       if qryComBranch.recordcount = 1 then
    pedtBranch.Enabled := FALSE;
end;



procedure TIdleJobfrm.grdAllocateTO_FACTOR_2InitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= TO_DTYPE2;
end;

procedure TIdleJobfrm.grdAllocateTO_FACTOR_2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TIdleJobfrm.pedtKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:= 1;
end;

procedure TIdleJobfrm.pedtKHCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
  begin
    Text := vpItemID;
  end;
end;

procedure TIdleJobfrm.qryHesoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if (popObjGrp.Text <> '') and (pedtKH.Text <> '') then
    Accept := (qryHesoNHOMCV.Value = popObjGrp.Text) and (qryHesoOBJECT_ID.Value = pedtKH.Text)
  else if pedtKH.Text <> '' then
    Accept := qryHesoOBJECT_ID.Value = pedtKH.Text
  else if popObjGrp.Text <> '' then
    Accept := (qryHesoNHOMCV.Value = popObjGrp.Text)
  else
    Accept := TRUE;


end;

procedure TIdleJobfrm.grdAllocateEnter(Sender: TObject);
begin
  if qryHeso.RecordCount =0 then
    qryHeso.Insert;
end;

procedure TIdleJobfrm.pedtKHChange(Sender: TObject);
begin
  if qryHeso.State in [dsinsert,dsedit] then
    qryHeso.Post;
  if pedtKH.Text = '' then
    qryHeso.Filtered:= FALSE
  else
  begin
    qryHeso.OnFilterRecord := qryHesoFilterRecord;
    qryHeso.Filtered:= TRUE;
  end;

  qryHeso.Open;

  if chkExpand.Checked then
      grdAllocate.FullExpand
  else grdAllocate.FullCollapse;

end;

procedure TIdleJobfrm.chkExpandChange(Sender: TObject);
begin
    if chkExpand.Checked then
      grdAllocate.FullExpand
    else grdAllocate.FullCollapse;
end;

procedure TIdleJobfrm.popObjGrpEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID := TO_DTYPE2;
  MainDM.qryPObjGrp.Close;
  MainDM.qryPObjGrp.Open;
  InitPopupControl('dxlcObjGroup', CM_PopupFrm, Sender, 2);
  CM_PopupFrm.dxtlObjGroup.FullExpand;
end;

procedure TIdleJobfrm.popObjGrpCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    text := MainDM.qryPObjGrpOBJGRP_ID.Value;
end;

procedure TIdleJobfrm.popObjGrpChange(Sender: TObject);
begin
  if qryHeso.State in [dsinsert,dsedit] then
    qryHeso.Post;
  
  if popObjGrp.Text = '' then
    qryHeso.Filtered:= FALSE
  else
  begin
    qryHeso.OnFilterRecord := qryHesoFilterRecord;
    qryHeso.Filtered:= TRUE;
  end;

  if chkExpand.Checked then
      grdAllocate.FullExpand
    else grdAllocate.FullCollapse;
  //qryHeso.Open;
  
end;

procedure TIdleJobfrm.qryHesoAfterOpen(DataSet: TDataSet);
begin
 if chkExpand.Checked then
      grdAllocate.FullExpand
    else grdAllocate.FullCollapse;
end;


procedure TIdleJobfrm.qryHesoCalcFields(DataSet: TDataSet);
begin
  qryHesoTONGCONG.ASFLOAT := qryHesoD1.ASFLOAT +qryHesoD2.ASFLOAT +qryHesoD3.ASFLOAT +
    qryHesoD4.ASFLOAT + qryHesoD5.ASFLOAT +qryHesoD6.ASFLOAT  +qryHesoD7.ASFLOAT +
    qryHesoD8.ASFLOAT + qryHesoD9.ASFLOAT +qryHesoD10.ASFLOAT +qryHesoD11.ASFLOAT +
    qryHesoD12.ASFLOAT + qryHesoD13.ASFLOAT +qryHesoD14.ASFLOAT +qryHesoD15.ASFLOAT +
    qryHesoD16.ASFLOAT + qryHesoD17.ASFLOAT +qryHesoD18.ASFLOAT +qryHesoD19.ASFLOAT +
    qryHesoD20.ASFLOAT + qryHesoD21.ASFLOAT +qryHesoD22.ASFLOAT +qryHesoD23.ASFLOAT +
    qryHesoD24.ASFLOAT + qryHesoD25.ASFLOAT +qryHesoD26.ASFLOAT +qryHesoD27.ASFLOAT +
    qryHesoD12.ASFLOAT + qryHesoD13.ASFLOAT +qryHesoD14.ASFLOAT +qryHesoD15.ASFLOAT +
    qryHesoD28.ASFLOAT + qryHesoD29.ASFLOAT +qryHesoD30.ASFLOAT +qryHesoD31.Value ;  
end;

procedure TIdleJobfrm.grdAllocateTO_FACTOR_3InitPopup(Sender: TObject);
begin
MainDM.CurObjTypeID:= TO_DTYPE3;
end;

procedure TIdleJobfrm.grdAllocateTO_FACTOR_3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
    Text := vpItemID;
end;

procedure TIdleJobfrm.qryHesoBeforeInsert(DataSet: TDataSet);
begin
  if qryHesoTABLE_ID.IsNull then
    PreSTT := -1;

  PreTO_OBJECT_ID := qryHesoOBJECT_ID.Value;
  PreTO_FACTOR_ID := qryHesoTO_FACTOR.Value;
  PreTO_FACTOR_ID_2 := qryHesoTO_FACTOR_2.Value;
  PreTO_FACTOR_ID_3 := qryHesoTO_FACTOR_3.Value;
end;

procedure TIdleJobfrm.ElPopupButton1Click(Sender: TObject);
var Luong,chiphi1nv:double ;
begin
  if qryHeso.State in [dsInsert,dsedit] then
    qryHeso.Post;

  qryHeso.First;
  while not qryHeso.Eof do
  begin
    if (copy(qryHesoTO_FACTOR_2.Value,1,1) <> 'Z') or (copy(qryHesoTO_FACTOR_2.Value,1,1) <> 'z') then
    begin
      luong := qryHesoLUONG.Value;
      chiphi1nv := qryHesoTONGCONG.Value * luong;

      maindm.qryCommon.Params.Clear;
      maindm.qryCommon.SQL.Text := 'select count(*) A from tln_costdeclare c ' +
          ' where  c.object_id = :OBJECT_ID and c.otype_id=:OTYPE_ID and '+
          ' c.object_id_2 = :TO_FACTOR and c.otype_id_2 = :TO_FACTYPE and '+
          ' c.object_id_3 = :TO_FACTOR_2 and c.otype_id_3 = :TO_FACTYPE_2 and '+
          ' c.object_id_4 = :TO_FACTOR_3 and c.otype_id_4 = :TO_FACTYPE_3 and '+
          ' c.period_id = :period_id';
      maindm.qryCommon.ParamByName('object_id').Value := qryHesoOBJECT_ID.value;
      maindm.qryCommon.ParamByName('OTYPE_ID').Value := qryHesoOTYPE_ID.Value;
      maindm.qryCommon.ParamByName('TO_FACTOR').Value := qryHesoTO_FACTOR.value;
      maindm.qryCommon.ParamByName('TO_FACTYPE').Value := qryHesoTO_FACTYPE.Value;
      maindm.qryCommon.ParamByName('TO_FACTOR_2').Value := qryHesoTO_FACTOR_2.value;
      maindm.qryCommon.ParamByName('TO_FACTYPE_2').Value := qryHesoTO_FACTYPE_2.Value;
      maindm.qryCommon.ParamByName('TO_FACTOR_3').Value := qryHesoTO_FACTOR_3.value;
      maindm.qryCommon.ParamByName('TO_FACTYPE_3').Value := qryHesoTO_FACTYPE_3.Value;
      maindm.qryCommon.ParamByName('period_id').Value := qryHesoPERIOD_ID.Value;
      maindm.qryCommon.Open;
      if maindm.qryCommon.fieldbyname('A').AsInteger <> 0 then
      begin
        maindm.qryCommon.sql.Text :='update tln_costdeclare c set c.cost_value = :chiphi1nv '+
            ' where c.object_id = :OBJECT_ID and c.otype_id=:OTYPE_ID and '+
            ' c.object_id_2 = :TO_FACTOR and c.otype_id_2 = :TO_FACTYPE and '+
            ' c.object_id_3 = :TO_FACTOR_2 and c.otype_id_3 = :TO_FACTYPE_2 and '+
            ' c.object_id_4 = :TO_FACTOR_3 and c.otype_id_4 = :TO_FACTYPE_3 and '+
            ' c.period_id = :period_id';
        maindm.qryCommon.ParamByName('chiphi1nv').Value := chiphi1nv;
        maindm.qryCommon.Prepare;
        maindm.qryCommon.ExecSQL;
        maindm.qryCommon.CommitUpdates;
        end
      else begin
        qryId.close;
        qryId.ParamByName('period_id').Value :=  qryHesoPERIOD_ID.Value;
        qryId.Open;
        maindm.qryCommon.sql.Text := 'insert into tln_costdeclare (TABLE_ID,PERIOD_ID,OBJECT_ID,OTYPE_ID,OBJECT_ID_2,OTYPE_ID_2,OBJECT_ID_3,OTYPE_ID_3,OBJECT_ID_4,OTYPE_ID_4,COST_VALUE,HESO) values'+
                                    ' (:TABLE_ID,:PERIOD_ID,:OBJECT_ID,:OTYPE_ID,:TO_FACTOR,:TO_FACTYPE,:TO_FACTOR_2,:TO_FACTYPE_2,:TO_FACTOR_3,:TO_FACTYPE_3,:chiphi1nv,1)';
        maindm.qryCommon.ParamByName('TABLE_ID').Value := qryIdA.Value+1;
        maindm.qryCommon.ParamByName('chiphi1nv').Value := chiphi1nv;
        maindm.qryCommon.Prepare;
        maindm.qryCommon.ExecSQL;
        maindm.qryCommon.CommitUpdates;
      end
    end; //end IF Z
    qryHeso.Next;
  end ;
  ShowMessageUniText(UTF8Decode('Đã hoàn thành quá trình cập nhật!'),0);
end;

end.
