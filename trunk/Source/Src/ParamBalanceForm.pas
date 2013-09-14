unit ParamBalanceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,ppCtrls,Registry,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  ElPanel, ppBands, ppCache, ppClass, ppRelatv, ppProd, ppReport, ppComm,
  ppEndUsr, StBase, StExpr, dxDBTLCl;

type
  TParamBalanceFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryParam: TIBOQuery;
    dsParam: TDataSource;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    btnAdd: TElPopupButton;
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
    qryParamPARAM_ID: TIntegerField;
    qryParamPARAM_NAME: TWideStringField;
    btnDefine: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    qryParamPPARAM_ID: TIntegerField;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem9: TdxLayoutItem;
    dxDBTreeList1PARAM_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1PARAM_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1PPARAM_ID: TdxDBTreeListMaskColumn;
    btnAddChild: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    qryParamPARAM_BEGINVALUE: TIBOFloatField;
    qryParamPARAM_ENDVALUE: TIBOFloatField;
    dxDBTreeList1PARAM_BEGINVALUE: TdxDBTreeListMaskColumn;
    dxDBTreeList1PARAM_ENDVALUE: TdxDBTreeListMaskColumn;
    spnFromYear: TdxSpinEdit;
    spnFromMonth: TdxSpinEdit;
    spnToMonth: TdxSpinEdit;
    spnToYear: TdxSpinEdit;
    locFormItem10: TdxLayoutItem;
    locFormItem11: TdxLayoutItem;
    locFormItem12: TdxLayoutItem;
    locFormItem13: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnExecute: TElPopupButton;
    locFormItem14: TdxLayoutItem;
    pnlPopup: TElPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    grdPopup: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnAddReport: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnPrint: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnDesign: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    grdPopupREPORT_ID: TdxDBGridColumn;
    grdPopupREPORT_NAME: TdxDBGridMaskColumn;
    grdPopupREPORT_TEMPLATE: TdxDBGridMaskColumn;
    qryBReports: TIBOQuery;
    dsBReports: TDataSource;
    dsnRptPrm: TppDesigner;
    rptPrm: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryBReportsREPORT_ID: TIntegerField;
    qryBReportsREPORT_NAME: TWideStringField;
    qryBReportsREPORT_TEMPLATE: TWideStringField;
    dxCalcEdit1: TdxCalcEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnReport: TElPopupButton;
    locFormItem16: TdxLayoutItem;
    qryParamPARAM_COEFFICIENT: TIBOFloatField;
    dxDBTreeList1PARAM_COEFFICIENT: TdxDBTreeListCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure qryParamNewRecord(DataSet: TDataSet);
    procedure qryParamAfterInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryParamPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryParamDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryParamBeforeDelete(DataSet: TDataSet);
    procedure qryParamBeforeInsert(DataSet: TDataSet);
    procedure qryParamBeforeEdit(DataSet: TDataSet);
    procedure qryParamBeforeCancel(DataSet: TDataSet);
    procedure btnDefineClick(Sender: TObject);
    procedure qryParamBeforePost(DataSet: TDataSet);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddChildClick(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddReportClick(Sender: TObject);
    procedure grdPopupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryBReportsAfterInsert(DataSet: TDataSet);
    procedure qryBReportsBeforeDelete(DataSet: TDataSet);
    procedure qryBReportsBeforeEdit(DataSet: TDataSet);
    procedure qryBReportsBeforeInsert(DataSet: TDataSet);
    procedure qryBReportsNewRecord(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure qryBReportsBeforeCancel(DataSet: TDataSet);
    function DauKy(ParamID: Variant):Variant;
    function CuoiKy(ParamID: Variant):Variant;
    function Chenhlech(ParamID: Variant):Variant;
    function Tyle(ParamID: Variant):Variant;
    procedure SetBeforePrint;
    procedure btnReportClick(Sender: TObject);
    procedure dxDBTreeList1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormShow(Sender: TObject);
  private
    MaxParamID,MaxReportID,PParamID:Integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParamBalanceFrm: TParamBalanceFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, PrmBalanceConditionForm, HtmlHlp;


{$R *.dfm}

procedure TParamBalanceFrm.FormCreate(Sender: TObject);
var
  Reg : TRegistry;
begin
  dxCalcEdit1.Text :='1';
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      dxCalcEdit1.Text :=Reg.ReadString('ParamBalanceRate');
      Reg.CloseKey;
    end;
  finally
      Reg.Free;
  end;

  SetOnFormCreate(Sender as TControl);
  qryParamPARAM_BEGINVALUE.DisplayFormat:=TIENTE_FORMAT;
  qryParamPARAM_ENDVALUE.DisplayFormat:=TIENTE_FORMAT;
  qryParam.Open;
  qryParam.Last;
  qryBReports.Open;
  qryBReports.Last;
  MaxParamID:=qryParamPARAM_ID.AsInteger+1;
  MaxReportID:=qryBReportsREPORT_ID.AsInteger+1;

  spnFromMonth.IntValue:=CurMonth;
  spnFromYear.IntValue:=CurYear;
  spnToMonth.IntValue:=CurMonth;
  spnToYear.IntValue:=CurYear;

  btnAdd.Enabled:=SSPUserRight[6].IR;
  btnAddChild.Enabled:=SSPUserRight[6].IR;
  btnAddReport.Enabled:=SSPUserRight[6].IR;

  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TParamBalanceFrm.qryParamNewRecord(DataSet: TDataSet);
begin
  if PParamID<>-99999 then
    qryParamPPARAM_ID.AsInteger:=PParamID;
  qryParamPARAM_ID.AsInteger:= MaxParamID;
  qryParamPARAM_COEFFICIENT.AsFloat:=1;
  MaxParamID:=MaxParamID+1;
end;

procedure TParamBalanceFrm.qryParamAfterInsert(DataSet: TDataSet);
begin
  qryParamPARAM_NAME.FocusControl;
end;

procedure TParamBalanceFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TParamBalanceFrm.qryParamPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'') =-803 then
    qryParamPARAM_ID.FocusControl;
end;

procedure TParamBalanceFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TParamBalanceFrm.qryParamDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,E.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TParamBalanceFrm.qryParamBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TParamBalanceFrm.qryParamBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TParamBalanceFrm.qryParamBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TParamBalanceFrm.qryParamBeforeCancel(DataSet: TDataSet);
begin
  if qryParam.State=dsInsert then
    MaxParamID:=MaxParamID-1;
end;

procedure TParamBalanceFrm.btnDefineClick(Sender: TObject);
begin
  if qryParam.RecordCount=0 then exit;
  
  with TPrmBalanceConditionFrm.Create(Self) do
  try
    ParamID:=qryParamPARAM_ID.AsInteger;
    ParamName:=qryParamPARAM_NAME.Value;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TParamBalanceFrm.qryParamBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;
  
  if qryParamPARAM_ID.IsNull then
  begin
    ShowMessageUnicode(20);
    qryParamPARAM_ID.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TParamBalanceFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TParamBalanceFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(False).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TParamBalanceFrm.btnAddClick(Sender: TObject);
begin
  if qryParamPPARAM_ID.IsNull then
    PParamID:=-99999
  else
    PParamID:=qryParamPPARAM_ID.AsInteger;

  qryParam.Insert;
end;

procedure TParamBalanceFrm.btnAddChildClick(Sender: TObject);
begin
  if qryParamPARAM_ID.IsNull then
    PParamID:=-99999
  else
    PParamID:=qryParamPARAM_ID.AsInteger;

  qryParam.Insert;
end;

procedure TParamBalanceFrm.ElPopupButton7Click(Sender: TObject);
begin
  pnlPopup.Visible:=False;
  btnReport.Down:=False;
end;

procedure TParamBalanceFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption',True) then
    begin
      Reg.WriteString('ParamBalanceRate',dxCalcEdit1.Text);
      Reg.CloseKey;
    end;
  finally
      Reg.Free;
  end;

  qryBReports.Close;
end;

procedure TParamBalanceFrm.btnAddReportClick(Sender: TObject);
begin
  qryBReports.Append;
end;

procedure TParamBalanceFrm.grdPopupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdPopup,Key,Shift,True);
end;

procedure TParamBalanceFrm.qryBReportsAfterInsert(DataSet: TDataSet);
begin
  qryBReportsREPORT_ID.FocusControl;
end;

procedure TParamBalanceFrm.qryBReportsBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TParamBalanceFrm.qryBReportsBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TParamBalanceFrm.qryBReportsBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TParamBalanceFrm.qryBReportsNewRecord(DataSet: TDataSet);
begin
  qryBReportsREPORT_ID.AsInteger:=MaxReportID;
  MaxReportID:=MaxReportID+1;
end;

procedure TParamBalanceFrm.btnPrintClick(Sender: TObject);
begin
  rptPrm.Template.FileName:=TemplatePath+'ParamBalance\'+qryBReportsREPORT_TEMPLATE.AsString;

  if not FileExists(rptPrm.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;

  begin
    Screen.Cursor:=crHourGlass;
    Screen.Cursor := crHourGlass;
    try
      rptPrm.Template.LoadFromFile;
    finally
      Screen.Cursor := crDefault;
    end;
    rptPrm.PreviewFormSettings.WindowState:=wsMaximized;
    rptPrm.PreviewFormSettings.ZoomPercentage:=100;
    Screen.Cursor:=crDefault;

    SetBeforePrint;

  //  If Not rptPrm.PrintReport then
//      ShowMessageUnicode(210);
  try
    rptPrm.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  end;
end;

procedure TParamBalanceFrm.btnDesignClick(Sender: TObject);
begin
  rptPrm.Template.FileName:=TemplatePath+'ParamBalance\'+qryBReportsREPORT_TEMPLATE.AsString;

  if not FileExists(rptPrm.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;

  Screen.Cursor:=crHourGlass;
  Screen.Cursor := crHourGlass;
  try
    rptPrm.Template.LoadFromFile;
  finally
    Screen.Cursor := crDefault;
  end;

  dsnRptPrm.Form.WindowState:=wsMaximized;
  dsnRptPrm.ShowModal;
end;

procedure TParamBalanceFrm.btnExecuteClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_TG_PARAMBALANCE(:tuky,:denky,:branch_id)';
    Prepare;

    ParamByName('tuky').AsInteger := spnFromYear.IntValue*12+spnFromMonth.IntValue;
    ParamByName('denky').AsInteger := spnToYear.IntValue*12+spnToMonth.IntValue;
    ParamByName('branch_id').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  qryParam.Refresh;
end;

procedure TParamBalanceFrm.qryBReportsBeforeCancel(DataSet: TDataSet);
begin
  if qryBReports.State=dsInsert then
    MaxReportID:=MaxReportID-1;
end;

function TParamBalanceFrm.DauKy(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
    Result:=qryParamPARAM_BEGINVALUE.AsFloat;
end;
function TParamBalanceFrm.CuoiKy(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
    Result:=qryParamPARAM_ENDVALUE.AsFloat;
end;

function TParamBalanceFrm.Chenhlech(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
    Result:=qryParamPARAM_ENDVALUE.AsFloat- qryParamPARAM_BEGINVALUE.AsFloat;
end;

function TParamBalanceFrm.Tyle(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
  begin
    if qryParamPARAM_BEGINVALUE.AsFloat=0 then
      Result:=100
    else
      Result:=(qryParamPARAM_ENDVALUE.AsFloat- qryParamPARAM_BEGINVALUE.AsFloat)/qryParamPARAM_BEGINVALUE.AsFloat;
  end;
end;

procedure TParamBalanceFrm.SetBeforePrint;
var  stExpression:TStExpression;
   i:integer;
   str_exp:string;
   TyGia,GiaTri:Double;
begin
  TyGia:=1;
  TryStrToFloat(dxCalcEdit1.Text,TyGia);
  if TyGia=0 then TyGia:=1;
  
  stExpression:=TstExpression.Create(Self);

  stExpression.RemoveIdentifier('dk');
  stExpression.RemoveIdentifier('ck');
  stExpression.RemoveIdentifier('cl');
  stExpression.RemoveIdentifier('tl');

  stExpression.AddMethod1Param('dk',DauKy);
  stExpression.AddMethod1Param('ck',CuoiKy);
  stExpression.AddMethod1Param('cl',Chenhlech);
  stExpression.AddMethod1Param('tl',Tyle);

  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TppLabel) then
    with (Components[i] as TppLabel) do
    begin
      if Caption='lbltyle' then
        Caption:=FormatFloat(CACHESO_FORMAT,TyGia)
      else if Caption='lblfrom' then
        Caption:= spnFromMonth.Text+'/'+spnFromYear.Text
      else if Caption='lblto' then
        Caption:= spnToMonth.Text+'/'+spnToYear.Text
      else if Pos('lblx',Caption)>0 then
      begin
        str_exp:=Copy(Caption,6,length(Caption));
        stExpression.Expression:=str_exp;  
        try
          GiaTri:=stExpression.AnalyzeExpression;
          //GiaTri:=stExpression.AsFloat;
        except
          GiaTri:=0;
          ShowMessage('Label ['+Caption+'] error at position '+IntToStr(stExpression.ErrorPosition+5));
        end;
        Caption:=FormatFloat(CACHESO_FORMAT,GiaTri/TyGia);
      end;
    end;
  end;
  
  stExpression.Free;
end;
procedure TParamBalanceFrm.btnReportClick(Sender: TObject);
begin
  pnlPopup.Visible:=btnReport.Down;
end;

procedure TParamBalanceFrm.dxDBTreeList1ChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  btnDefine.Enabled:=Not Node.HasChildren;
end;

procedure TParamBalanceFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
