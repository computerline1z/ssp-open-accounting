
unit ActiclePlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  ElPgCtl, ElCheckCtl;

type
  TActiclePlanFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acHide: TAction;
    acShowAll: TAction;
    qryItem: TIBOQuery;
    dsItem: TDataSource;
    locFormItem15: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem17: TdxLayoutItem;
    btnSave: TELPopupButton;
    locFormItem18: TdxLayoutItem;
    btnCancel: TELPopupButton;
    locFormItem19: TdxLayoutItem;
    btnHelp: TELPopupButton;
    locFormItem20: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormGroup4: TdxLayoutGroup;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    locFormItem3: TdxLayoutItem;
    Num: TdxSpinEdit;
    locFormItem4: TdxLayoutItem;
    btnRefresh: TElPopupButton;
    acReload: TAction;
    locFormItem2: TdxLayoutItem;
    chkExpand: TdxCheckEdit;
    locFormGroup2: TdxLayoutGroup;
    qryPlanYear: TIBOQuery;
    dsPlanYear: TDataSource;
    locLockPlanYear: TdxLayoutItem;
    btnLockPlanYear: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    pedtObj: TdxPopupEdit;
    pgc1: TElPageControl;
    locFormItem8: TdxLayoutItem;
    tabPlanMonth: TElTabSheet;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn2: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn;
    tabPlanYear: TElTabSheet;
    dxDBTreeList2: TdxDBTreeList;
    dxDBTreeListColumn3: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn4: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn6: TdxDBTreeListMaskColumn;
    qryPlanYearACTICLE_ID: TWideStringField;
    qryPlanYearPACTICLE_ID: TWideStringField;
    qryPlanYearACTICLE_NAME: TWideStringField;
    qryPlanYearACTICLE_NO: TWideStringField;
    qryPlanYearPLAN_QUARTER_1: TIBOFloatField;
    qryPlanYearPLAN_QUARTER_2: TIBOFloatField;
    qryPlanYearPLAN_QUARTER_3: TIBOFloatField;
    qryPlanYearPLAN_QUARTER_4: TIBOFloatField;
    qryPlanYearPLAN_YEAR: TIBOFloatField;
    qryPlanYearBRANCH_ID: TWideStringField;
    colPlanQ1: TdxDBTreeListMaskColumn;
    colPlanQ2: TdxDBTreeListMaskColumn;
    colPlanQ3: TdxDBTreeListMaskColumn;
    colPlanQ4: TdxDBTreeListMaskColumn;
    dxDBTreeList2PLAN_YEAR: TdxDBTreeListMaskColumn;
    colBRANCH_ID: TdxDBTreeListMaskColumn;
    rbPlan: TElRadioButton;
    locFormItem1: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    rbPlanObj: TElRadioButton;
    qryPlanObj: TIBOQuery;
    dsPlanObj: TDataSource;
    qryPlanYearObj: TIBOQuery;
    dsPlanYearObj: TDataSource;
    qryPlanYearADJ_QUARTER_1: TIBOFloatField;
    qryPlanYearADJ_QUARTER_2: TIBOFloatField;
    qryPlanYearADJ_QUARTER_3: TIBOFloatField;
    qryPlanYearADJ_QUARTER_4: TIBOFloatField;
    colAdjQ1: TdxDBTreeListMaskColumn;
    colAdjQ2: TdxDBTreeListMaskColumn;
    colAdjQ3: TdxDBTreeListMaskColumn;
    colAdjQ4: TdxDBTreeListMaskColumn;
    qryPlanYearObjACTICLE_ID: TWideStringField;
    qryPlanYearObjPACTICLE_ID: TWideStringField;
    qryPlanYearObjACTICLE_NAME: TWideStringField;
    qryPlanYearObjACTICLE_NO: TWideStringField;
    qryPlanYearObjPLAN_QUARTER_1: TIBOFloatField;
    qryPlanYearObjPLAN_QUARTER_2: TIBOFloatField;
    qryPlanYearObjPLAN_QUARTER_3: TIBOFloatField;
    qryPlanYearObjPLAN_QUARTER_4: TIBOFloatField;
    qryPlanYearObjADJ_QUARTER_1: TIBOFloatField;
    qryPlanYearObjADJ_QUARTER_2: TIBOFloatField;
    qryPlanYearObjADJ_QUARTER_3: TIBOFloatField;
    qryPlanYearObjADJ_QUARTER_4: TIBOFloatField;
    qryPlanYearObjBRANCH_ID: TWideStringField;
    qryPlanYearObjPLAN_YEAR: TIBOFloatField;
    qryPlanYearObjKYDN: TSmallintField;
    qryPlanYearObjOBJECT_ID: TWideStringField;
    qryPlanYearObjOTYPE_ID: TSmallintField;
    qryPlanObjACTICLE_ID: TWideStringField;
    qryPlanObjPACTICLE_ID: TWideStringField;
    qryPlanObjACTICLE_NO: TWideStringField;
    qryPlanObjACTICLE_NAME: TWideStringField;
    qryPlanObjPLAN_BEGIN: TIBOFloatField;
    qryPlanObjPLAN_ADJUST: TIBOFloatField;
    qryPlanObjBRANCH_ID: TWideStringField;
    qryPlanObjPLAN_MAX: TIBOFloatField;
    qryPlanObjPLAN_MIN: TIBOFloatField;
    qryPlanObjKYHT: TSmallintField;
    qryPlanObjOBJECT_ID: TWideStringField;
    qryPlanObjOTYPE_ID: TSmallintField;
    dsBranchFilterRight: TDataSource;
    qryBranchFilterRight: TIBOQuery;
    qryBranchFilterRightBRANCH_ID: TWideStringField;
    qryBranchFilterRightFULLNAME: TWideStringField;
    qryBranchFilterRightSHORTNAME: TWideStringField;
    qryBranchFilterRightISMIN: TSmallintField;
    qryBranchFilterRightPBRANCH_ID: TWideStringField;
    qryBranchFilterRightCOMPANY_ID: TSmallintField;
    qryBranchFilterRightHAS_RIGHT_READ: TSmallintField;
    qryBranchFilterRightHAS_RIGHT_EDIT: TSmallintField;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    locFormItem9: TdxLayoutItem;
    lkchinhanh: TdxDBExtLookupEdit;
    qryPlanYearObjLOCKED: TSmallintField;
    qryPlanYearKYDN: TSmallintField;
    qryPlanYearLOCKED: TSmallintField;
    dxDBTreeList1PLAN_BEGIN: TdxDBTreeListColumn;
    qryItemACTICLE_ID: TWideStringField;
    qryItemPACTICLE_ID: TWideStringField;
    qryItemACTICLE_NO: TWideStringField;
    qryItemACTICLE_NAME: TWideStringField;
    qryItemPLAN_BEGIN: TIBOFloatField;
    qryItemPLAN_ADJUST: TIBOFloatField;
    qryItemBRANCH_ID: TWideStringField;
    qryItemPLAN_MAX: TIBOFloatField;
    qryItemPLAN_MIN: TIBOFloatField;
    qryItemKYHT: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryItemBeforeEdit(DataSet: TDataSet);
    procedure qryItemPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryItemPLAN_MINChange(Sender: TField);
    procedure btnInsClick(Sender: TObject);
    procedure acReloadExecute(Sender: TObject);
    procedure chkExpandClick(Sender: TObject);
    procedure qryPlanYearPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryPlanYearBeforeOpen(DataSet: TDataSet);
    procedure qryPlanYearBeforeEdit(DataSet: TDataSet);
    procedure qryItemBeforeOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBTreeList2Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dxDBTreeList2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryPlanYearObjBeforeEdit(DataSet: TDataSet);
    procedure qryPlanYearObjBeforeOpen(DataSet: TDataSet);
    procedure qryPlanYearObjPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryPlanObjBeforeEdit(DataSet: TDataSet);
    procedure qryPlanObjBeforeOpen(DataSet: TDataSet);
    procedure qryPlanObjPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure pedtObjCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryBranchFilterRightBeforeOpen(DataSet: TDataSet);
    procedure lkchinhanhCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure btnLockPlanYearClick(Sender: TObject);
    procedure qryPlanYearAfterOpen(DataSet: TDataSet);
    procedure qryPlanYearObjAfterOpen(DataSet: TDataSet);
    procedure rbPlanClick(Sender: TObject);
    procedure rbPlanObjClick(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure pedtObjClick(Sender: TObject);
    procedure dxDBTreeList1Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActiclePlanFrm: TActiclePlanFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, ActicleGroupForm, PopupForm, dxTreeGridMenus,
  ActicleForm, htmlhlp, DateUtils;


{$R *.dfm}

procedure TActiclePlanFrm.FormCreate(Sender: TObject);
begin

  Maindm.CurObjTypeID := 14;
  Maindm.qryPComObj.OnFilterRecord:=Maindm.qryPComObjFilterRecord;
  Maindm.qryPComObj.Filtered :=TRUE;

  qryBranchFilterRight.Open;

  Num.IntValue := CurMonth;

  SetOnFormCreate(Self);

  //SetOnFormCreate(Sender as TControl);

  qryItemPLAN_MAX.DisplayFormat:=TIENTE_FORMAT;
  qryItemPLAN_MIN.DisplayFormat:=TIENTE_FORMAT;
  qryItemPLAN_BEGIN.DisplayFormat:=TIENTE_FORMAT;
  qryItemPLAN_ADJUST.DisplayFormat:=TIENTE_FORMAT;

  qryItem.Open;

  qryPlanYearPLAN_YEAR.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearPLAN_QUARTER_1.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearPLAN_QUARTER_2.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearPLAN_QUARTER_3.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearPLAN_QUARTER_4.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearADJ_QUARTER_1.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearADJ_QUARTER_2.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearADJ_QUARTER_3.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearADJ_QUARTER_4.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYear.Open;

  qryPlanObjPLAN_BEGIN.DisplayFormat:=TIENTE_FORMAT;
  qryPlanObjPLAN_ADJUST.DisplayFormat:=TIENTE_FORMAT;

  qryPlanYearObjPLAN_YEAR.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjADJ_QUARTER_1.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjADJ_QUARTER_2.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjADJ_QUARTER_3.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjADJ_QUARTER_4.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjPLAN_QUARTER_1.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjPLAN_QUARTER_2.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjPLAN_QUARTER_3.DisplayFormat:=TIENTE_FORMAT;
  qryPlanYearObjPLAN_QUARTER_4.DisplayFormat:=TIENTE_FORMAT;

  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

end;

procedure TActiclePlanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryItem do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
  with qryPlanYear do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
  with qryPlanYearObj do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
  with qryPlanObj do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;

  MainFrm.ElFormCaption1.Texts[2].Caption:='';

  Action:=caFree;
  with MainFrm do
  begin
    MyMDIChildCount:= MyMDIChildCount-1;
    if MDIChildCount=1 then
      PnlMain.Visible := True;
  end;
  
end;

procedure TActiclePlanFrm.qryItemBeforePost(DataSet: TDataSet);
begin
  if qryItemPLAN_MAX.AsFloat<qryItemPLAN_MIN.AsFloat then
  begin
    ShowMessageUnicode(203);
    qryItemPLAN_MAX.FocusControl;
    Abort;
    exit;
  end;
end;

procedure TActiclePlanFrm.qryItemBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(26) then Abort;

end;

procedure TActiclePlanFrm.qryItemPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'hạn mục');
  qryItemPLAN_MAX.FocusControl;
end;

procedure TActiclePlanFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TActiclePlanFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//    Application.HelpContext(21);
end;

procedure TActiclePlanFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TActiclePlanFrm.qryItemPLAN_MINChange(Sender: TField);
begin
  if qryItemPLAN_MAX.AsFloat<qryItemPLAN_MIN.AsFloat then
    qryItemPLAN_MAX.AsFloat:=qryItemPLAN_MIN.AsFloat;
end;

procedure TActiclePlanFrm.btnInsClick(Sender: TObject);
begin
  with TActicleFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
  if qryItem.active then
    qryItem.Refresh;
  if qryPlanYear.Active then
    qryPlanYear.Refresh;
  if qryPlanObj.Active then
    qryPlanObj.refresh;
  if qryPlanYearObj.Active then
    qryPlanYearObj.Refresh;
end;

procedure TActiclePlanFrm.acReloadExecute(Sender: TObject);
begin

  qryItem.Close;
  qryPlanYear.Close;
  qryPlanObj.Close;
  qryPlanYearObj.Close;
  btnLockPlanYear.Enabled := TRUE;

  Screen.Cursor := crHourGlass;

  if rbPlan.Checked then
    begin
    qryItem.Open;
    qryPlanYear.Prepare;
    qryPlanYear.Open;
    dxDBTreeList1.DataSource := dsItem;
    dxDBTreeList2.DataSource := dsPlanYear;

    if pgc1.ActivePage = tabPlanMonth then
    begin
      acPost.DataSource := dsItem;
      acCancel.DataSource :=dsItem;
      acDel.DataSource := dsItem;
      acIns.DataSource := dsItem;
    end
    else
    begin
      acPost.DataSource := dsPlanYear;
      acCancel.DataSource :=dsPlanYear;
      acDel.DataSource := dsPlanYear;
      acIns.DataSource := dsPlanYear;
    end

  end
  else
    begin

    qryPlanYearObj.Open;
    qryPlanObj.Open;
    dxDBTreeList1.DataSource := dsPlanObj;
    dxDBTreeList2.DataSource := dsPlanYearObj;

    if pgc1.ActivePage = tabPlanMonth then
    begin
      acPost.DataSource := dsPlanObj;
      acCancel.DataSource :=dsPlanObj;
      acDel.DataSource := dsPlanObj;
      acIns.DataSource := dsPlanObj;
    end
    else
    begin
      acPost.DataSource := dsPlanYearObj;
      acCancel.DataSource :=dsPlanYearObj;
      acDel.DataSource := dsPlanYearObj;
      acIns.DataSource := dsPlanYearObj;
    end

  end;

  if chkExpand.Checked then
  begin
    //if pgc1.ActivePage = tabPlanMonth then
      dxDBTreeList1.FullExpand;
    //else
      dxDBTreeList2.FullExpand;
  end;

  Screen.Cursor := crDefault;
end;

procedure TActiclePlanFrm.chkExpandClick(Sender: TObject);
begin
    if chkExpand.Checked then
    begin
      dxDBTreeList1.FullExpand;
      dxDBTreeList2.FullExpand;
    end
    else
    begin
      dxDBTreeList1.FullCollapse;
      dxDBTreeList2.FullCollapse;
    end;


end;

procedure TActiclePlanFrm.qryPlanYearPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'hạn mục');

end;

procedure TActiclePlanFrm.qryPlanYearBeforeOpen(DataSet: TDataSet);
begin

  qryPlanYear.ParamByName('KYDN').Value :=   YearOf(WorkingDate)*12 + 1;
  qryPlanYear.ParamByName('BRANCH_ID').Value := qryBranchFilterRightBRANCH_ID.Value;

end;

procedure TActiclePlanFrm.qryPlanYearBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(26) then Abort;
  
end;

procedure TActiclePlanFrm.qryItemBeforeOpen(DataSet: TDataSet);
begin

  qryItem.ParamByName('KYHT').Value := Num.IntValue + Currentyear*12;
  qryItem.ParamByName('BRANCH_ID').value:=qryBranchFilterRightBRANCH_ID.Value;
  qryItem.Prepare;

end;

procedure TActiclePlanFrm.FormDestroy(Sender: TObject);
begin
 { with MainFrm.bbWindowList.Items do
      Delete(IndexOfObject(Self));}
   ActiclePlanFrm:=nil;
end;

procedure TActiclePlanFrm.dxDBTreeList2Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  Allow:=Not Node.HasChildren;
end;

procedure TActiclePlanFrm.dxDBTreeList2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList2, Key, Shift);
end;

procedure TActiclePlanFrm.dxDBTreeList2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TActiclePlanFrm.qryPlanYearObjBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(26) then Abort;

end;

procedure TActiclePlanFrm.qryPlanYearObjBeforeOpen(DataSet: TDataSet);
begin

  qryPlanYearObj.ParamByName('KYDN').Value :=   YearOf(WorkingDate)*12 + 1;
  qryPlanYearObj.ParamByName('BRANCH_ID').Value := qryBranchFilterRightBRANCH_ID.Value;
  qryPlanYearObj.ParamByName('OBJECT_ID').Value := pedtObj.Text;
  qryPlanYearObj.ParamByName('OTYPE_ID').Value := 14;

end;

procedure TActiclePlanFrm.qryPlanYearObjPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'hạn mục');
end;

procedure TActiclePlanFrm.qryPlanObjBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(26) then Abort;

end;

procedure TActiclePlanFrm.qryPlanObjBeforeOpen(DataSet: TDataSet);
begin

  qryPlanObj.ParamByName('KYHT').Value := Num.IntValue + Currentyear*12;
  qryPlanObj.ParamByName('BRANCH_ID').value:=qryBranchFilterRightBRANCH_ID.Value;
  qryPlanObj.ParamByName('OBJECT_ID').Value := pedtObj.Text;
  qryPlanObj.ParamByName('OTYPE_ID').Value := 14;

  qryPlanObj.Prepare;
end;

procedure TActiclePlanFrm.qryPlanObjPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'hạn mục');
end;

procedure TActiclePlanFrm.pedtObjCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := vpItemID;
    
  end
end;

procedure TActiclePlanFrm.qryBranchFilterRightBeforeOpen(
  DataSet: TDataSet);
begin
  qryBranchFilterRight.ParamByName('USERNAME').Value := CurrentUser;
end;

procedure TActiclePlanFrm.lkchinhanhCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
     acReload.Execute;

end;

procedure TActiclePlanFrm.btnLockPlanYearClick(Sender: TObject);

begin
  if ShowMessageUnicode(257, '', 4) = 7 then
    exit;

  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;

  if rbPlanObj.Checked then
    maindm.qryCommon.SQL.Text := 'UPDATE acticle_plan_year_obj SET LOCKED = 1 WHERE PERIOD_ID = :KYHT'
  else
    maindm.qryCommon.SQL.Text := 'UPDATE acticle_plan_year SET LOCKED = 1 WHERE PERIOD_ID = :KYHT';

  maindm.qryCommon.ParamByName('KYHT').Value := YearOf(WorkingDate)*12 + 1;
  maindm.qryCommon.ExecSQL;             

  btnLockPlanYear.Enabled := FALSE;

end;

procedure TActiclePlanFrm.qryPlanYearAfterOpen(DataSet: TDataSet);
begin
  if qryPlanYearLOCKED.Value = 1 then
  begin
    qryPlanYearPLAN_YEAR.ReadOnly := true;
    qryPlanYearPLAN_QUARTER_1.ReadOnly := true;
    qryPlanYearPLAN_QUARTER_2.ReadOnly := true;
    qryPlanYearPLAN_QUARTER_3.ReadOnly := true;
    qryPlanYearPLAN_QUARTER_4.ReadOnly := true;
    btnLockPlanYear.Enabled := FALSE;
  end
end;

procedure TActiclePlanFrm.qryPlanYearObjAfterOpen(DataSet: TDataSet);
begin
  if qryPlanYearObjLOCKED.Value = 1 then
  begin
    qryPlanYearObjPLAN_YEAR.ReadOnly := true;
    qryPlanYearObjPLAN_QUARTER_1.ReadOnly := true;
    qryPlanYearObjPLAN_QUARTER_2.ReadOnly := true;
    qryPlanYearObjPLAN_QUARTER_3.ReadOnly := true;
    qryPlanYearObjPLAN_QUARTER_4.ReadOnly := true;
    btnLockPlanYear.Enabled := FALSE;
  end
end;

procedure TActiclePlanFrm.rbPlanClick(Sender: TObject);
begin
  locFormItem7.Enabled := False;

end;

procedure TActiclePlanFrm.rbPlanObjClick(Sender: TObject);
begin
  locFormItem7.Enabled := true;

end;

procedure TActiclePlanFrm.pgc1Change(Sender: TObject);
begin
  if pgc1.ActivePage = tabPlanMonth then
  begin

    if rbPlan.Checked = true then
    begin
      acPost.DataSource := dsItem;
      acIns.DataSource  := dsItem;
      acCancel.DataSource := dsItem;
      acDel.DataSource := dsItem;
    end
    else begin
      acPost.DataSource := dsPlanObj;
      acIns.DataSource  := dsPlanObj;
      acCancel.DataSource := dsPlanObj;
      acDel.DataSource := dsPlanObj;
    end
  end //tab month
  else begin //tab year
    num.Enabled := false;
    if rbPlan.Checked = true then
    begin
      acPost.DataSource := dsPlanYear;
      acIns.DataSource  := dsPlanYear;
      acCancel.DataSource := dsPlanYear;
      acDel.DataSource := dsPlanYear;
    end
    else begin
      acPost.DataSource := dsPlanYearObj;
      acIns.DataSource  := dsPlanYearObj;
      acCancel.DataSource := dsPlanYearObj;
      acDel.DataSource := dsPlanYearObj;
    end
  end // end master if

end;

procedure TActiclePlanFrm.pedtObjClick(Sender: TObject);
begin
  Maindm.CurObjTypeID := 14;
  Maindm.qryPComObj.OnFilterRecord:=Maindm.qryPComObjFilterRecord;
  Maindm.qryPComObj.Filtered :=TRUE;
end;

procedure TActiclePlanFrm.dxDBTreeList1Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  Allow:=Not Node.HasChildren;
end;

procedure TActiclePlanFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TActiclePlanFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

end.
