unit ParamArisingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,ppCtrls,Registry,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  ElPanel, ppEndUsr, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd,
  ppReport, StBase, StExpr, dxDBTLCl;

type
  TParamArisingFrm = class(TForm)
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
    locFormItem9: TdxLayoutItem;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1PARAM_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1PARAM_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1PPARAM_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1PARAM_VALUE: TdxDBTreeListMaskColumn;
    dxDBTreeList1PARAM_PROGRESS: TdxDBTreeListMaskColumn;
    qryParamPPARAM_ID: TIntegerField;
    qryParamPARAM_VALUE: TIBOFloatField;
    qryParamPARAM_PROGRESS: TIBOFloatField;
    btnAddChild: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    pnlPopup: TElPanel;
    dxLayoutControl1: TdxLayoutControl;
    grdPopup: TdxDBGrid;
    grdPopupREPORT_ID: TdxDBGridColumn;
    grdPopupREPORT_NAME: TdxDBGridMaskColumn;
    grdPopupREPORT_TEMPLATE: TdxDBGridMaskColumn;
    btnAddReport: TElPopupButton;
    btnPrint: TElPopupButton;
    btnDesign: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    rptPrm: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dsnRptPrm: TppDesigner;
    qryAReports: TIBOQuery;
    dsAReports: TDataSource;
    spnFromMonth: TdxSpinEdit;
    spnFromYear: TdxSpinEdit;
    spnToMonth: TdxSpinEdit;
    spnToYear: TdxSpinEdit;
    btnExecute: TElPopupButton;
    locFormItem10: TdxLayoutItem;
    locFormItem11: TdxLayoutItem;
    locFormItem12: TdxLayoutItem;
    locFormItem13: TdxLayoutItem;
    locFormItem14: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    qryAReportsREPORT_ID: TIntegerField;
    qryAReportsREPORT_NAME: TWideStringField;
    qryAReportsREPORT_TEMPLATE: TWideStringField;
    qryParamPARAM_PREVALUE: TIBOFloatField;
    dxDBTreeList1PARAM_PREVALUE: TdxDBTreeListColumn;
    dxCalcEdit1: TdxCalcEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnReport: TElPopupButton;
    locFormItem15: TdxLayoutItem;
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
    procedure btnPrintClick(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure qryAReportsAfterInsert(DataSet: TDataSet);
    procedure qryAReportsBeforeDelete(DataSet: TDataSet);
    procedure qryAReportsBeforeEdit(DataSet: TDataSet);
    procedure qryAReportsBeforeInsert(DataSet: TDataSet);
    procedure qryAReportsNewRecord(DataSet: TDataSet);
    procedure btnExecuteClick(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure btnAddReportClick(Sender: TObject);
    procedure grdPopupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryAReportsBeforeCancel(DataSet: TDataSet);
    function KyTruoc(ParamID: Variant):Variant;
    function KyNay(ParamID: Variant):Variant;
    function Chenhlech(ParamID: Variant):Variant;
    function Tyle(ParamID: Variant):Variant;
    procedure SetBeforePrint;
    procedure btnReportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  ParamArisingFrm: TParamArisingFrm;
implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, PrmArisingConditionForm, HtmlHlp;

{$R *.dfm}

procedure TParamArisingFrm.FormCreate(Sender: TObject);
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
  qryParam.Open;
  qryParam.Last;
  MaxParamID:=qryParamPARAM_ID.AsInteger+1;

  qryAReports.Open;
  qryAReports.Last;
  MaxReportID:=qryAReportsREPORT_ID.AsInteger+1;

  qryParamPARAM_PREVALUE.DisplayFormat:=TIENTE_FORMAT;
  qryParamPARAM_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryParamPARAM_PROGRESS.DisplayFormat:=TIENTE_FORMAT;


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

procedure TParamArisingFrm.qryParamNewRecord(DataSet: TDataSet);
begin
  if PParamID<>-99999 then
    qryParamPPARAM_ID.AsInteger:=PParamID;
  qryParamPARAM_ID.AsInteger:= MaxParamID;
  qryParamPARAM_COEFFICIENT.AsFloat:=1;
  MaxParamID:=MaxParamID+1;
end;

procedure TParamArisingFrm.qryParamAfterInsert(DataSet: TDataSet);
begin
  qryParamPARAM_NAME.FocusControl;
end;

procedure TParamArisingFrm.FormKeyDown(Sender: TObject; var Key: Word;
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
function TParamArisingFrm.KyTruoc(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
    Result:=qryParamPARAM_PREVALUE.AsFloat;
end;
function TParamArisingFrm.KyNay(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
    Result:=qryParamPARAM_VALUE.AsFloat;
end;

function TParamArisingFrm.Chenhlech(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
    Result:=qryParamPARAM_VALUE.AsFloat- qryParamPARAM_PREVALUE.AsFloat;
end;

function TParamArisingFrm.Tyle(ParamID: Variant):Variant;
begin
  Result:=0;
  if qryParam.Locate('PARAM_ID',ParamID,[]) then
  begin
    if qryParamPARAM_PREVALUE.AsFloat=0 then
      Result:=100
    else
      Result:=(qryParamPARAM_VALUE.AsFloat- qryParamPARAM_PREVALUE.AsFloat)/qryParamPARAM_PREVALUE.AsFloat;
  end;
end;

procedure TParamArisingFrm.qryParamPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'') =-803 then
    qryParamPARAM_ID.FocusControl;
end;

procedure TParamArisingFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TParamArisingFrm.qryParamDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,E.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TParamArisingFrm.qryParamBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TParamArisingFrm.qryParamBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TParamArisingFrm.qryParamBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TParamArisingFrm.qryParamBeforeCancel(DataSet: TDataSet);
begin
  if qryParam.State=dsInsert then
    MaxParamID:=MaxParamID-1;
end;

procedure TParamArisingFrm.btnDefineClick(Sender: TObject);
begin
  if qryParam.RecordCount=0 then exit;
  
  with TPrmArisingConditionFrm.Create(Self) do
  try
    ParamID:=qryParamPARAM_ID.AsInteger;
    ParamName:=qryParamPARAM_NAME.Value;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TParamArisingFrm.qryParamBeforePost(DataSet: TDataSet);
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

procedure TParamArisingFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TParamArisingFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(False).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TParamArisingFrm.btnAddClick(Sender: TObject);
begin
  if qryParamPPARAM_ID.IsNull then
    PParamID:=-99999
  else
    PParamID:=qryParamPPARAM_ID.AsInteger;

  qryParam.Insert;
end;

procedure TParamArisingFrm.btnAddChildClick(Sender: TObject);
begin
  if qryParamPARAM_ID.IsNull then
    PParamID:=-99999
  else
    PParamID:=qryParamPARAM_ID.AsInteger;

  qryParam.Insert;
end;

procedure TParamArisingFrm.SetBeforePrint;
var  stExpression:TStExpression;
   i:integer;
   str_exp:string;
   TyGia:Double;
   GiaTri:Double;
begin
  TyGia:=1;
  TryStrToFloat(dxCalcEdit1.Text,TyGia);
  if TyGia=0 then TyGia:=1;

  stExpression:=TstExpression.Create(Self);

  stExpression.RemoveIdentifier('kynay');
  stExpression.RemoveIdentifier('kytruoc');
  stExpression.RemoveIdentifier('chenhlech');
  stExpression.RemoveIdentifier('tyle');
  stExpression.RemoveIdentifier('kn');
  stExpression.RemoveIdentifier('kt');
  stExpression.RemoveIdentifier('cl');
  stExpression.RemoveIdentifier('tl');

  stExpression.AddMethod1Param('kynay',KyNay);
  stExpression.AddMethod1Param('kytruoc',KyTruoc);
  stExpression.AddMethod1Param('chenhlech',Chenhlech);
  stExpression.AddMethod1Param('tyle',Tyle);

  stExpression.AddMethod1Param('kn',KyNay);
  stExpression.AddMethod1Param('kt',KyTruoc);
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


procedure TParamArisingFrm.btnPrintClick(Sender: TObject);
begin
  rptPrm.Template.FileName:=TemplatePath+'ParamArising\'+qryAReportsREPORT_TEMPLATE.AsString;

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
    
    //If Not rptPrm.PrintReport then
//      ShowMessageUnicode(210);
  try
    rptPrm.PrintReport
  except
     ShowMessageUnicode(210);
  end;
  end;
end;

procedure TParamArisingFrm.btnDesignClick(Sender: TObject);
begin
  rptPrm.Template.FileName:=TemplatePath+'ParamArising\'+qryAReportsREPORT_TEMPLATE.AsString;

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

procedure TParamArisingFrm.qryAReportsAfterInsert(DataSet: TDataSet);
begin
  qryAReportsREPORT_ID.FocusControl;
end;

procedure TParamArisingFrm.qryAReportsBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TParamArisingFrm.qryAReportsBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TParamArisingFrm.qryAReportsBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TParamArisingFrm.qryAReportsNewRecord(DataSet: TDataSet);
begin
  qryAReportsREPORT_ID.AsInteger:=MaxReportID;
  MaxReportID:=MaxReportID+1;
end;

procedure TParamArisingFrm.btnExecuteClick(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_TG_PARAMARISING(:tuky,:denky,:kydn,:branch_id)';
    Prepare;

    ParamByName('tuky').AsInteger := spnFromYear.IntValue*12+spnFromMonth.IntValue;
    ParamByName('denky').AsInteger := spnToYear.IntValue*12+spnToMonth.IntValue;
    ParamByName('kydn').AsInteger := spnFromYear.IntValue*12+1;
    ParamByName('branch_id').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  qryParam.Refresh;
end;

procedure TParamArisingFrm.ElPopupButton7Click(Sender: TObject);
begin
  pnlPopup.Visible:=False;
  btnReport.Down:=False;
end;

procedure TParamArisingFrm.btnAddReportClick(Sender: TObject);
begin
  qryAReports.Append;
end;

procedure TParamArisingFrm.grdPopupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdPopup,Key,Shift,True);
end;

procedure TParamArisingFrm.qryAReportsBeforeCancel(DataSet: TDataSet);
begin
  if qryAReports.State=dsInsert then
    MaxReportID:=MaxReportID-1;
end;

procedure TParamArisingFrm.btnReportClick(Sender: TObject);
begin
  pnlPopup.Visible:=btnReport.Down;
end;

procedure TParamArisingFrm.FormClose(Sender: TObject;
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
end;

procedure TParamArisingFrm.dxDBTreeList1ChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  btnDefine.Enabled:=Not Node.HasChildren;
end;

procedure TParamArisingFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
