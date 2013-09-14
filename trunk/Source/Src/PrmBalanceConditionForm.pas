unit PrmBalanceConditionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxDBTLCl, dxGrClms, dxGrClEx, dxLayout;

type
  TPrmBalanceConditionFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryParamCondition: TIBOQuery;
    dsParamCondition: TDataSource;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    dxDBGrid1ABEGINWITH: TdxDBGridPopupColumn;
    dxDBGrid1COEFFICIENT: TdxDBGridCalcColumn;
    dxDBGrid1PARAM_NOTE: TdxDBGridColumn;
    qryParamConditionPARAM_ID: TIntegerField;
    qryParamConditionABEGINWITH: TWideStringField;
    qryParamConditionCOEFFICIENT: TIBOFloatField;
    qryParamConditionBALANCE_TYPE: TSmallintField;
    qryParamConditionPARAM_NOTE: TWideStringField;
    qryPMethod: TIBOQuery;
    qryPMethodMETHOD_ID: TSmallintField;
    qryPMethodMETHOD_NAME: TWideStringField;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    dsPMethod: TDataSource;
    qryParamConditionMETHOD_NAME: TWideStringField;
    dxDBGrid1BALANCE_TYPE: TdxDBGridExtLookupColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryParamConditionNewRecord(DataSet: TDataSet);
    procedure qryParamConditionAfterInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryParamConditionPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryParamConditionDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryParamConditionBeforeDelete(DataSet: TDataSet);
    procedure qryParamConditionBeforeInsert(DataSet: TDataSet);
    procedure qryParamConditionBeforeEdit(DataSet: TDataSet);
    procedure dxDBGrid1DBEGINWITHCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qryParamConditionBeforePost(DataSet: TDataSet);
    procedure dxDBGrid1BALANCE_TYPECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    ParamID:Integer;
    ParamName:WideString;
    { Public declarations }
  end;

var
  PrmBalanceConditionFrm: TPrmBalanceConditionFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, PopupForm, HtmlHlp;


{$R *.dfm}

procedure TPrmBalanceConditionFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  
  MainDM.qryPAcc.Filtered:=False;
  qryPMethod.Open;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TPrmBalanceConditionFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TPrmBalanceConditionFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TPrmBalanceConditionFrm.qryParamConditionNewRecord(DataSet: TDataSet);
begin
  qryParamConditionPARAM_NOTE.Value:= ParamName;
  qryParamConditionPARAM_ID.AsInteger:= ParamID;
  qryParamConditionCOEFFICIENT.AsFloat:=1;
end;

procedure TPrmBalanceConditionFrm.qryParamConditionAfterInsert(DataSet: TDataSet);
begin
  qryParamConditionABEGINWITH.FocusControl;
end;

procedure TPrmBalanceConditionFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TPrmBalanceConditionFrm.qryParamConditionPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'') =-803 then
    qryParamConditionABEGINWITH.FocusControl;
end;

procedure TPrmBalanceConditionFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TPrmBalanceConditionFrm.qryParamConditionDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,E.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TPrmBalanceConditionFrm.qryParamConditionBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TPrmBalanceConditionFrm.qryParamConditionBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TPrmBalanceConditionFrm.qryParamConditionBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TPrmBalanceConditionFrm.dxDBGrid1DBEGINWITHCloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TPrmBalanceConditionFrm.FormShow(Sender: TObject);
begin
  ElFormCaption1.Texts[0].Caption:=ElFormCaption1.Texts[0].Caption+' - '+ ParamName;
  qryParamCondition.ParamByName('PARAM_ID').AsInteger:=ParamID;
  qryParamCondition.Open;
  SetVisible(Self);  
end;

procedure TPrmBalanceConditionFrm.qryParamConditionBeforePost(
  DataSet: TDataSet);
begin
  if IsNotHasData(qryParamConditionABEGINWITH) then
  begin
    ShowMessageUnicode(20);
    qryParamConditionABEGINWITH.FocusControl;
    Abort;
    Exit;
  end;
  if qryParamConditionCOEFFICIENT.IsNull then
  begin
    ShowMessageUnicode(20);
    qryParamConditionCOEFFICIENT.FocusControl;
    Abort;
    Exit;
  end;
  if qryParamConditionBALANCE_TYPE.IsNull then
  begin
    ShowMessageUnicode(20);
    qryParamConditionMETHOD_NAME.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TPrmBalanceConditionFrm.dxDBGrid1BALANCE_TYPECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryParamCondition.Edit;
    Text := qryPMethodMETHOD_NAME.Value;
    qryParamConditionBALANCE_TYPE.AsInteger := qryPMethodMETHOD_ID.AsInteger;
  end;
end;

end.
