unit ActicleCompareForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  ElCheckCtl, ElPgCtl;

type
  TActicleCompareFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    locFormItem2: TdxLayoutItem;
    lkchinhanh: TdxDBExtLookupEdit;
    locFormItem3: TdxLayoutItem;
    pedtObj: TdxPopupEdit;
    locFormItem4: TdxLayoutItem;
    btnCal: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    rbPlanObj: TElRadioButton;
    locFormItem6: TdxLayoutItem;
    rbPlan: TElRadioButton;
    locFormItem7: TdxLayoutItem;
    chkExpand: TdxCheckEdit;
    locFormGroup1: TdxLayoutGroup;
    qryItem: TIBOQuery;
    dsItem: TDataSource;
    qryBranchFilterRight: TIBOQuery;
    qryBranchFilterRightBRANCH_ID: TWideStringField;
    qryBranchFilterRightFULLNAME: TWideStringField;
    qryBranchFilterRightSHORTNAME: TWideStringField;
    qryBranchFilterRightISMIN: TSmallintField;
    qryBranchFilterRightPBRANCH_ID: TWideStringField;
    qryBranchFilterRightCOMPANY_ID: TSmallintField;
    qryBranchFilterRightHAS_RIGHT_READ: TSmallintField;
    qryBranchFilterRightHAS_RIGHT_EDIT: TSmallintField;
    dsBranchFilterRight: TDataSource;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    qryItemACTICLE_ID: TWideStringField;
    qryItemPACTICLE_ID: TWideStringField;
    qryItemACTICLE_NAME: TWideStringField;
    qryItemACTICLE_NO: TWideStringField;
    qryItemREAL_VALUE: TIBOFloatField;
    qryItemPLAN_MAX: TIBOFloatField;
    qryItemPLAN_MIN: TIBOFloatField;
    qryItemPLAN_BEGIN: TIBOFloatField;
    qryItemPLAN_ADJUST: TIBOFloatField;
    qryItemCOMP_BEGIN: TIBOFloatField;
    qryItemCOMP_ADJUST: TIBOFloatField;
    qryItemPERCENT: TIBOFloatField;
    locFormItem8: TdxLayoutItem;
    chkPS: TdxCheckEdit;
    locFormGroup2: TdxLayoutGroup;
    locFormGroup4: TdxLayoutGroup;
    locFormGroup7: TdxLayoutGroup;
    locFormItem9: TdxLayoutItem;
    spnFromMonth: TdxSpinEdit;
    locFormItem10: TdxLayoutItem;
    spnFromYear: TdxSpinEdit;
    locFormItem11: TdxLayoutItem;
    spnToMonth: TdxSpinEdit;
    locFormItem12: TdxLayoutItem;
    spnToYear: TdxSpinEdit;
    locFormGroup5: TdxLayoutGroup;
    locFormGroup10: TdxLayoutGroup;
    pgc: TElPageControl;
    locFormItem13: TdxLayoutItem;
    tabMonth: TElTabSheet;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn2: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn;
    dxDBTreeListCalcColumn1: TdxDBTreeListCalcColumn;
    dxDBTreeListCalcColumn2: TdxDBTreeListCalcColumn;
    dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn;
    tabYear: TElTabSheet;
    grdPYear: TdxDBTreeList;
    qryItemYear: TIBOQuery;
    dsItemYear: TDataSource;
    dxDBTreeList1PERCENT: TdxDBTreeListMaskColumn;
    qryItemYearACTICLE_ID: TWideStringField;
    qryItemYearPACTICLE_ID: TWideStringField;
    qryItemYearACTICLE_NAME: TWideStringField;
    qryItemYearACTICLE_NO: TWideStringField;
    qryItemYearPLAN_YEAR: TIBOFloatField;
    qryItemYearPLAN_QUARTER_1: TIBOFloatField;
    qryItemYearPLAN_QUARTER_2: TIBOFloatField;
    qryItemYearPLAN_QUARTER_3: TIBOFloatField;
    qryItemYearPLAN_QUARTER_4: TIBOFloatField;
    qryItemYearADJ_QUARTER_2: TIBOFloatField;
    qryItemYearADJ_QUARTER_1: TIBOFloatField;
    qryItemYearADJ_QUARTER_3: TIBOFloatField;
    qryItemYearADJ_QUARTER_4: TIBOFloatField;
    qryItemYearREAL_VALUE_YEAR: TIBOFloatField;
    qryItemYearREAL_QUARTER_1: TIBOFloatField;
    qryItemYearREAL_QUARTER_2: TIBOFloatField;
    qryItemYearREAL_QUARTER_3: TIBOFloatField;
    qryItemYearREAL_QUARTER_4: TIBOFloatField;
    qryItemYearPERCENT_YEAR: TIBOFloatField;
    qryItemYearPERCENT_QUARTER_1: TIBOFloatField;
    qryItemYearPERCENT_QUARTER_2: TIBOFloatField;
    qryItemYearPERCENT_QUARTER_3: TIBOFloatField;
    qryItemYearPERCENT_QUARTER_4: TIBOFloatField;
    grdPYearACTICLE_ID: TdxDBTreeListMaskColumn;
    grdPYearPACTICLE_ID: TdxDBTreeListMaskColumn;
    grdPYearACTICLE_NAME: TdxDBTreeListMaskColumn;
    grdPYearACTICLE_NO: TdxDBTreeListMaskColumn;
    grdPYearPLAN_YEAR: TdxDBTreeListMaskColumn;
    grdPYearPLAN_QUARTER_1: TdxDBTreeListMaskColumn;
    grdPYearPLAN_QUARTER_2: TdxDBTreeListMaskColumn;
    grdPYearPLAN_QUARTER_3: TdxDBTreeListMaskColumn;
    grdPYearPLAN_QUARTER_4: TdxDBTreeListMaskColumn;
    grdPYearADJ_QUARTER_2: TdxDBTreeListMaskColumn;
    grdPYearADJ_QUARTER_1: TdxDBTreeListMaskColumn;
    grdPYearADJ_QUARTER_3: TdxDBTreeListMaskColumn;
    grdPYearADJ_QUARTER_4: TdxDBTreeListMaskColumn;
    grdPYearREAL_VALUE_YEAR: TdxDBTreeListMaskColumn;
    grdPYearREAL_QUARTER_1: TdxDBTreeListMaskColumn;
    grdPYearREAL_QUARTER_2: TdxDBTreeListMaskColumn;
    grdPYearREAL_QUARTER_3: TdxDBTreeListMaskColumn;
    grdPYearREAL_QUARTER_4: TdxDBTreeListMaskColumn;
    grdPYearPERCENT_YEAR: TdxDBTreeListMaskColumn;
    grdPYearPERCENT_QUARTER_1: TdxDBTreeListMaskColumn;
    grdPYearPERCENT_QUARTER_2: TdxDBTreeListMaskColumn;
    grdPYearPERCENT_QUARTER_3: TdxDBTreeListMaskColumn;
    grdPYearPERCENT_QUARTER_4: TdxDBTreeListMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure qryBranchFilterRightBeforeOpen(DataSet: TDataSet);
    procedure qryItemBeforeOpen(DataSet: TDataSet);
    procedure rbPlanClick(Sender: TObject);
    procedure rbPlanObjClick(Sender: TObject);
    procedure btnCalClick(Sender: TObject);
    procedure chkExpandChange(Sender: TObject);
    procedure pedtObjCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryItemFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure chkPSChange(Sender: TObject);
    procedure pgcChange(Sender: TObject);
    procedure qryItemYearBeforeOpen(DataSet: TDataSet);
    procedure qryItemYearFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure grdPYearMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdPYearKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

  public
    { Public declarations }
    tuky,denky : Smallint;
    frommonth, tomonth, fromyear, toyear : smallint;
  end;

var
  ActicleCompareFrm: TActicleCompareFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, ActicleGroupForm, PopupForm, dxTreeGridMenus, Htmlhlp;


{$R *.dfm}

procedure TActicleCompareFrm.FormCreate(Sender: TObject);
begin

  

  Maindm.CurObjTypeID := 14;
  Maindm.qryPComObj.OnFilterRecord:=Maindm.qryPComObjFilterRecord;
  Maindm.qryPComObj.Filtered :=TRUE;

  qryBranchFilterRight.Open;

  SetOnFormCreate(Sender as TControl);
end;

procedure TActicleCompareFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TActicleCompareFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TActicleCompareFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TActicleCompareFrm.FormShow(Sender: TObject);
begin

  spnFromMonth.IntValue := frommonth;
  spnFromYear.IntValue := fromyear;
  spnToMonth.IntValue := tomonth;
  spnToYear.IntValue := toyear;
  
  SetVisible(Self);

  qryItemREAL_VALUE.DisplayFormat :=TIENTE_FORMAT;
  qryItemPLAN_BEGIN.DisplayFormat :=TIENTE_FORMAT;
  qryItemCOMP_BEGIN.DisplayFormat :=TIENTE_FORMAT;
  qryItemCOMP_ADJUST.DisplayFormat :=TIENTE_FORMAT;
  qryItemPERCENT.DisplayFormat := '######%';

  qryItemYearPLAN_YEAR.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPLAN_QUARTER_1.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPLAN_QUARTER_2.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPLAN_QUARTER_3.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPLAN_QUARTER_4.DisplayFormat := TIENTE_FORMAT;
  qryItemYearADJ_QUARTER_2.DisplayFormat := TIENTE_FORMAT;
  qryItemYearADJ_QUARTER_1.DisplayFormat := TIENTE_FORMAT;
  qryItemYearADJ_QUARTER_3.DisplayFormat := TIENTE_FORMAT;
  qryItemYearADJ_QUARTER_4.DisplayFormat := TIENTE_FORMAT;
  qryItemYearREAL_VALUE_YEAR.DisplayFormat := TIENTE_FORMAT;
  qryItemYearREAL_QUARTER_1.DisplayFormat := TIENTE_FORMAT;
  qryItemYearREAL_QUARTER_2.DisplayFormat := TIENTE_FORMAT;
  qryItemYearREAL_QUARTER_3.DisplayFormat := TIENTE_FORMAT;
  qryItemYearREAL_QUARTER_4.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPERCENT_YEAR.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPERCENT_QUARTER_1.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPERCENT_QUARTER_2.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPERCENT_QUARTER_3.DisplayFormat := TIENTE_FORMAT;
  qryItemYearPERCENT_QUARTER_4.DisplayFormat := TIENTE_FORMAT;

  

end;

procedure TActicleCompareFrm.qryBranchFilterRightBeforeOpen(
  DataSet: TDataSet);
begin
  qryBranchFilterRight.ParamByName('USERNAME').Value := CurrentUser;
end;

procedure TActicleCompareFrm.qryItemBeforeOpen(DataSet: TDataSet);
begin
  qryItem.ParamByName('TUKY').Value := tuky;
  qryItem.ParamByName('DENKY').Value := denky;
  qryItem.ParamByName('BRANCH_ID').value:=qryBranchFilterRightBRANCH_ID.Value;
  iF rbPlanObj.Checked then
    qryItem.ParamByName('OBJECT_ID').value:=pedtObj.Text
  else
    qryItem.ParamByName('OBJECT_ID').value:='';
  qryItem.ParamByName('OTYPE_ID').value:=14;
  qryItem.Prepare;

end;

procedure TActicleCompareFrm.rbPlanClick(Sender: TObject);
begin
  pedtObj.Enabled := FALSE;
end;

procedure TActicleCompareFrm.rbPlanObjClick(Sender: TObject);
begin
  pedtObj.Enabled := TRUE;
end;

procedure TActicleCompareFrm.btnCalClick(Sender: TObject);
begin
  tuky := spnFromMonth.IntValue + spnFromYear.IntValue*12;
  denky :=spnToMonth.IntValue + spnToYear.IntValue*12;

  if tuky > denky then
  begin
     ShowMessageUnicode(108);
     spnFromMonth.SetFocus;
  end;

  screen.Cursor := crHourGlass;
  if pgc.ActivePage = tabMonth then
  begin
    if qryItem.Active then
      qryItem.Close;
    qryItem.open
    end
  else begin
    if qryItemYear.Active then
      qryItemYear.Close;
    qryItemYear.open;
  end;
  Screen.Cursor:=crDefault;
   
end;

procedure TActicleCompareFrm.chkExpandChange(Sender: TObject);
begin
  if chkExpand.Checked then
    dxDBTreeList1.FullExpand
  else
    dxDBTreeList1.FullCollapse;

end;

procedure TActicleCompareFrm.pedtObjCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
  begin
    Text := vpItemID;
    
  end
end;

procedure TActicleCompareFrm.qryItemFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := qryItemREAL_VALUE.Value <> 0;
end;

procedure TActicleCompareFrm.chkPSChange(Sender: TObject);
begin
  if chkPS.Checked then
  begin
    qryItem.OnFilterRecord := qryItemFilterRecord;
    qryItem.Filtered := TRUE;
  end
  else begin

      qryItem.Filtered := FALSE;
  end

end;

procedure TActicleCompareFrm.pgcChange(Sender: TObject);
begin
  if pgc.ActivePage = tabmonth then
  begin
    spnFromMonth.Enabled := TRUE;
    spnFromYear.Enabled := TRUE;
    spnToMonth.Enabled := TRUE;
    spnToYear.Enabled := TRUE;
    end
  else begin
    spnFromMonth.Enabled := FALSE;
    spnFromYear.Enabled := FALSE;
    spnToMonth.Enabled := FALSE;
    spnToYear.Enabled := FALSE;
  end;

end;

procedure TActicleCompareFrm.qryItemYearBeforeOpen(DataSet: TDataSet);
begin
   qryItemYear.ParamByName('KYDN').Value := fromyear*12 +1;
  qryItemYear.ParamByName('BRANCH_ID').value:=qryBranchFilterRightBRANCH_ID.Value;

  iF rbPlanObj.Checked then
    qryItemYear.ParamByName('OBJECT_ID').value:=pedtObj.Text
  else
    qryItemYear.ParamByName('OBJECT_ID').value:='';
  qryItemYear.ParamByName('OTYPE_ID').value:=14;
  qryItemYear.Prepare;
end;

procedure TActicleCompareFrm.qryItemYearFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := qryItemYearREAL_VALUE_YEAR.Value > 0;
end;

procedure TActicleCompareFrm.grdPYearMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TActicleCompareFrm.grdPYearKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(grdPYear, Key, Shift);
end;

end.
