unit QuestionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,DateUtils,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption, ElACtrls, ElBtnCtl, ElPopBtn, ElPgCtl,
  ElXPThemedControl, ImgList, IBODataset, DBActns, ActnList, ElPanel,
  ElCLabel, ElLabel, StBase, StExpr;

type
  TQuestionFrm = class(TForm)
    qryQuestion: TIBOQuery;
    dsQuestion: TDataSource;
    mmSQLEdit: TdxDBMemo;
    dxDBGrid1: TdxDBGrid;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    Splitter1: TSplitter;
    ElPopupButton1: TElPopupButton;
    qryQuestionQUESTION_ID: TSmallintField;
    qryQuestionQUESTION_NAME: TWideStringField;
    qryQuestionQUESTION_TEXT: TMemoField;
    dxDBGrid1QUESTION_ID: TdxDBGridMaskColumn;
    dxDBGrid1QUESTION_NAME: TdxDBGridMaskColumn;
    dxDBGrid1QUESTION_TEXT: TdxDBGridMemoColumn;
    ElPanel1: TElPanel;
    dedtTuNgay: TdxDateEdit;
    dedtDenNgay: TdxDateEdit;
    ElLabel1: TElLabel;
    ElLabel2: TElLabel;
    dxDBGrid2: TdxDBGrid;
    ElPanel2: TElPanel;
    Splitter2: TSplitter;
    dxDBGrid2FUNCTION_ID: TdxDBGridMaskColumn;
    dxDBGrid2FUNCTION_NAME: TdxDBGridMaskColumn;
    dxDBGrid2FUNCTION_TEXT: TdxDBGridMaskColumn;
    qryHelp: TIBOQuery;
    qryHelpFUNCTION_ID: TSmallintField;
    dsHelp: TDataSource;
    ElPopupButton2: TElPopupButton;
    ElLabel3: TElLabel;
    dxEdit1: TdxEdit;
    qryHelpFUNCTION_NAME: TWideStringField;
    qryHelpFUNCTION_TEXT: TWideStringField;
    qryGetBalance: TIBOQuery;
    qryGetBalanceNODK: TIBOFloatField;
    qryGetBalanceCODK: TIBOFloatField;
    qryGetBalancePSNO: TIBOFloatField;
    qryGetBalancePSCO: TIBOFloatField;
    qryGetBalanceBENNO: TIBOFloatField;
    qryGetBalanceBENCO: TIBOFloatField;
    qryGetArising: TIBOQuery;
    qryGetArisingSOTIEN: TIBOFloatField;
    qryGetArising_TMBCTC: TIBOQuery;
    qryGetArising_TMBCTCSOPS: TIBOFloatField;
    qryGetBalance_TMBCTC: TIBOQuery;
    qryGetBalance_TMBCTCNODK: TIBOFloatField;
    qryGetBalance_TMBCTCCODK: TIBOFloatField;
    qryGetBalance_TMBCTCNOPS: TIBOFloatField;
    qryGetBalance_TMBCTCCOPS: TIBOFloatField;
    qryGetBalance_TMBCTCNOCK: TIBOFloatField;
    qryGetBalance_TMBCTCCOCK: TIBOFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure qryQuestionNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryQuestionBeforeDelete(DataSet: TDataSet);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    function NODK(ASHTK : Variant):Variant;
    function CODK(ASHTK : Variant):Variant;
    function NOPS(ASHTK : Variant):Variant;
    function COPS(ASHTK : Variant):Variant;
    function NOCK(ASHTK : Variant):Variant;
    function COCK(ASHTK : Variant):Variant;
    function SOPS(ATKNO : Variant;ATKCO : Variant):Variant;

    function NODK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function CODK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function NOPS2(ASHTK : Variant;ASHDT : Variant):Variant;
    function COPS2(ASHTK : Variant;ASHDT : Variant):Variant;
    function NOCK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function COCK2(ASHTK : Variant;ASHDT : Variant):Variant;
    function SOPS2(ATKNO : Variant;ATKCO : Variant;ADTNO : Variant;ADTCO : Variant):Variant;

    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryQuestionAfterInsert(DataSet: TDataSet);
    procedure qryQuestionBeforeCancel(DataSet: TDataSet);
    procedure qryQuestionBeforeEdit(DataSet: TDataSet);
    procedure qryQuestionBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryQuestionBeforePost(DataSet: TDataSet);
    procedure qryHelpBeforePost(DataSet: TDataSet);
    procedure qryHelpPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryQuestionPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
  Question_ID:integer;
    { Private declarations }
  public
    function Caculate_TMBCTC(strInput:string):Variant;  
    { Public declarations }
  end;

var
  QuestionFrm: TQuestionFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, AccountArise, Functions, ThuyetminhBCTC;


{$R *.dfm}

procedure TQuestionFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TQuestionFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
  qryQuestion.Open;
  qryQuestion.Last;
  qryHelp.Open;
  Question_ID:=qryQuestionQUESTION_ID.AsInteger+1;

  dedtTungay.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dedtDenngay.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(dedtTungay.Date)) ;
end;

procedure TQuestionFrm.qryQuestionNewRecord(DataSet: TDataSet);
begin
  qryQuestionQUESTION_ID.AsInteger:=Question_ID;
  Question_ID:=Question_ID+1;
end;

function TQuestionFrm.NODK(ASHTK : Variant):Variant;
begin
  qryGetBalance.Close;
  qryGetBalance.ParamByName('SHTK').AsString:=FloatToStr(ASHTK);
  qryGetBalance.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetBalance.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetBalance.Open;
  Result:=qryGetBalanceNODK.AsFloat;
  qryGetBalance.Close;
end;
function TQuestionFrm.CODK(ASHTK : Variant):Variant;
begin
  qryGetBalance.Close;
  qryGetBalance.ParamByName('SHTK').Value:=FloatToStr(ASHTK);
  qryGetBalance.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetBalance.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetBalance.Open;
  Result:=qryGetBalanceCODK.AsFloat;
  qryGetBalance.Close;
end;
function TQuestionFrm.NOPS(ASHTK : Variant):Variant;
begin
  qryGetBalance.Close;
  qryGetBalance.ParamByName('SHTK').Value:=FloatToStr(ASHTK);
  qryGetBalance.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetBalance.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetBalance.Open;
  Result:=qryGetBalancePSNO.AsFloat;
  qryGetBalance.Close;
end;
function TQuestionFrm.COPS(ASHTK : Variant):Variant;
begin
  qryGetBalance.Close;
  qryGetBalance.ParamByName('SHTK').Value:=FloatToStr(ASHTK);
  qryGetBalance.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetBalance.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetBalance.Open;
  Result:=qryGetBalancePSCO.AsFloat;
  qryGetBalance.Close;
end;
function TQuestionFrm.NOCK(ASHTK : Variant):Variant;
begin
  qryGetBalance.Close;
  qryGetBalance.ParamByName('SHTK').Value:=FloatToStr(ASHTK);
  qryGetBalance.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetBalance.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetBalance.Open;
  Result:=qryGetBalanceBENNO.AsFloat;
  qryGetBalance.Close;
end;
function TQuestionFrm.COCK(ASHTK : Variant):Variant;
begin
  qryGetBalance.Close;
  qryGetBalance.ParamByName('SHTK').Value:=FloatToStr(ASHTK);
  qryGetBalance.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetBalance.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetBalance.Open;
  Result:=qryGetBalanceBENCO.AsFloat;
  qryGetBalance.Close;
end;
function TQuestionFrm.SOPS(ATKNO : Variant;ATKCO : Variant):Variant;
begin
  qryGetArising.Close;
  qryGetArising.ParamByName('TKNO').Value:=FloatToStr(ATKNO);
  qryGetArising.ParamByName('TKCO').Value:=FloatToStr(ATKCO);
  qryGetArising.ParamByName('TUNGAY').AsDate:=dedtTuNgay.Date;
  qryGetArising.ParamByName('DENNGAY').AsDate:=dedtDenNgay.Date;
  qryGetArising.Open;
  Result:=qryGetArisingSOTIEN.AsFloat;
  qryGetArising.Close;
end;

function TQuestionFrm.NODK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCNODK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TQuestionFrm.CODK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCCODK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TQuestionFrm.NOPS2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCNOPS.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TQuestionFrm.COPS2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCCOPS.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TQuestionFrm.NOCK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCNOCK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;
function TQuestionFrm.COCK2(ASHTK : Variant;ASHDT : Variant):Variant;
begin
  qryGetBalance_TMBCTC.Close;
  qryGetBalance_TMBCTC.ParamByName('SHTK').Value:=ASHTK;
  qryGetBalance_TMBCTC.ParamByName('MADT').Value:=ASHDT;
  qryGetBalance_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetBalance_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetBalance_TMBCTC.Open;
  Result:=qryGetBalance_TMBCTCCOCK.AsFloat;
  qryGetBalance_TMBCTC.Close;
end;

function TQuestionFrm.SOPS2(ATKNO : Variant;ATKCO : Variant;ADTNO : Variant;ADTCO : Variant):Variant;
begin
  qryGetArising_TMBCTC.Close;
  qryGetArising_TMBCTC.ParamByName('TUKY').Value:=iTUKY;
  qryGetArising_TMBCTC.ParamByName('DENKY').Value:=iDENKY;
  qryGetArising_TMBCTC.ParamByName('TKNO').Value:=ATKNO;
  qryGetArising_TMBCTC.ParamByName('TKCO').Value:=ATKCO;
  qryGetArising_TMBCTC.ParamByName('DTNO').Value:=ADTNO;
  qryGetArising_TMBCTC.ParamByName('DTCO').Value:=ADTCO;
  qryGetArising_TMBCTC.Open;
  Result:=qryGetArising_TMBCTCSOPS.AsFloat;
  qryGetArising_TMBCTC.Close;
end;

procedure TQuestionFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TQuestionFrm.qryQuestionBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TQuestionFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TQuestionFrm.dxDBGrid2DblClick(Sender: TObject);
begin
  mmSQLEdit.SetSelTextBuf(PChar(qryHelpFUNCTION_NAME.AsString));
end;

procedure TQuestionFrm.dxDBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TQuestionFrm.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid2, Key, Shift, False);
end;

function TQuestionFrm.Caculate_TMBCTC(strInput:string):Variant;
var
  stExpression:TStExpression;
begin
  if Trim(strInput)='' then Exit;

  stExpression:=TstExpression.Create(Self);

  stExpression.RemoveIdentifier('NODK');
  stExpression.RemoveIdentifier('CODK');
  stExpression.RemoveIdentifier('NOPS');
  stExpression.RemoveIdentifier('COPS');
  stExpression.RemoveIdentifier('NOCK');
  stExpression.RemoveIdentifier('COCK');
  stExpression.RemoveIdentifier('SOPS');

  stExpression.AddMethod2Param('NODK',NODK2);
  stExpression.AddMethod2Param('CODK',CODK2);
  stExpression.AddMethod2Param('NOPS',NOPS2);
  stExpression.AddMethod2Param('COPS',COPS2);
  stExpression.AddMethod2Param('NOCK',NOCK2);
  stExpression.AddMethod2Param('COCK',COCK2);
  stExpression.AddMethod4Param('SOPS',SOPS2);

  stExpression.Expression:=strInput;
  try
    stExpression.AnalyzeExpression;
  except
    mmSQLEdit.SelStart:=stExpression.ErrorPosition;
    ShowMessage('Label error at position '+IntToStr(stExpression.ErrorPosition));
    mmSQLEdit.SetFocus;
  end;
  result:=FormatFloat(CACHESO_FORMAT,stExpression.AsFloat);

  stExpression.Free;
end;

procedure TQuestionFrm.ElPopupButton2Click(Sender: TObject);
var
  stExpression:TStExpression;
begin
  if qryQuestion.State in [dsEdit,dsInsert] then
    qryQuestion.Post;
  if Trim(qryQuestionQUESTION_TEXT.AsString)='' then Exit;

  stExpression:=TstExpression.Create(Self);

  stExpression.RemoveIdentifier('NODK');
  stExpression.RemoveIdentifier('CODK');
  stExpression.RemoveIdentifier('NOPS');
  stExpression.RemoveIdentifier('COPS');
  stExpression.RemoveIdentifier('NOCK');
  stExpression.RemoveIdentifier('COCK');
  stExpression.RemoveIdentifier('SOPS');

  stExpression.AddMethod1Param('NODK',NODK);
  stExpression.AddMethod1Param('CODK',CODK);
  stExpression.AddMethod1Param('NOPS',NOPS);
  stExpression.AddMethod1Param('COPS',COPS);
  stExpression.AddMethod1Param('NOCK',NOCK);
  stExpression.AddMethod1Param('COCK',COCK);
  stExpression.AddMethod2Param('SOPS',SOPS);

  stExpression.Expression:=qryQuestionQUESTION_TEXT.AsString;
  try
    stExpression.AnalyzeExpression;
  except
    mmSQLEdit.SelStart:=stExpression.ErrorPosition;
    ShowMessage('Label error at position '+IntToStr(stExpression.ErrorPosition));
    mmSQLEdit.SetFocus;
  end;
  dxEdit1.Text:=FormatFloat(CACHESO_FORMAT,stExpression.AsFloat);

  stExpression.Free;
end;

procedure TQuestionFrm.ElPopupButton1Click(Sender: TObject);
begin
  qryQuestion.Append;
end;

procedure TQuestionFrm.qryQuestionAfterInsert(DataSet: TDataSet);
begin
  qryQuestionQUESTION_NAME.FocusControl;
end;

procedure TQuestionFrm.qryQuestionBeforeCancel(DataSet: TDataSet);
begin
  if qryQuestion.State=dsInsert then
    Question_ID:=Question_ID-1;
end;

procedure TQuestionFrm.qryQuestionBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TQuestionFrm.qryQuestionBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TQuestionFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TQuestionFrm.qryQuestionBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TQuestionFrm.qryHelpBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TQuestionFrm.qryHelpPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ProcessErr(E,'');
  qryHelpFUNCTION_ID.FocusControl;
end;

procedure TQuestionFrm.qryQuestionPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ProcessErr(E,'');
  qryQuestionQUESTION_ID.FocusControl;
end;

end.
