unit RptParamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TRptParamFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acHide: TAction;
    acShowAll: TAction;
    qryRptPrm: TIBOQuery;
    dsRptPrm: TDataSource;
    grdParam: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    locIns: TdxLayoutItem;
    btnIns: TELPopupButton;
    locDel: TdxLayoutItem;
    btnDel: TELPopupButton;
    locSave: TdxLayoutItem;
    btnSave: TELPopupButton;
    locCancel: TdxLayoutItem;
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
    qryRptPrmREPORT_ID: TSmallintField;
    qryRptPrmPARAM_ID: TSmallintField;
    qryRptPrmPARAM_NOTE: TWideStringField;
    qryRptPrmPARAM_VALUE: TIBOFloatField;
    qryRptPrmPARAM_NAME: TWideStringField;
    grdParamPARAM_VALUE: TdxDBGridCalcColumn;
    grdParamPARAM_NOTE: TdxDBGridColumn;
    grdParamPARAM_ID: TdxDBGridColumn;
    grdParamPARAM_NAME: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryRptPrmBeforePost(DataSet: TDataSet);
    procedure qryRptPrmBeforeInsert(DataSet: TDataSet);
    procedure qryRptPrmBeforeEdit(DataSet: TDataSet);
    procedure qryRptPrmBeforeDelete(DataSet: TDataSet);
    procedure qryRptPrmAfterInsert(DataSet: TDataSet);
    procedure qryRptPrmPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryRptPrmDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdParamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryRptPrmNewRecord(DataSet: TDataSet);
    procedure qryRptPrmBeforeCancel(DataSet: TDataSet);
  private
    MaxParamID:Smallint;
    { Private declarations }
  public
    CurReportID:Smallint;
    { Public declarations }
  end;

var
  RptParamFrm: TRptParamFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, HtmlHlp;


{$R *.dfm}

procedure TRptParamFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  qryRptPrmPARAM_VALUE.DisplayFormat:=CACHESO_FORMAT;
  if SSPUserRight[11].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[11].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TRptParamFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryRptPrm do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
end;

procedure TRptParamFrm.qryRptPrmBeforePost(DataSet: TDataSet);
begin
  if qryRptPrmPARAM_ID.IsNull then
  begin
    ShowMessageUnicode(137);
    qryRptPrmPARAM_ID.FocusControl;
    Abort;
  end;
end;

procedure TRptParamFrm.qryRptPrmBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

procedure TRptParamFrm.qryRptPrmBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TRptParamFrm.qryRptPrmBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TRptParamFrm.qryRptPrmAfterInsert(DataSet: TDataSet);
begin
  qryRptPrmPARAM_NOTE.FocusControl;
end;

procedure TRptParamFrm.qryRptPrmPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs:= ProcessErr(E,'hạn mục');
  if rs=-803 then
    qryRptPrmPARAM_ID.FocusControl;
end;

procedure TRptParamFrm.qryRptPrmDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TRptParamFrm.grdParamKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdParam, Key, Shift,True);
end;

procedure TRptParamFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TRptParamFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//    Application.HelpContext(21);
end;

procedure TRptParamFrm.FormShow(Sender: TObject);
begin
  qryRptPrm.ParamByName('REPORT_ID').AsInteger:=CurReportID;
  qryRptPrm.Open;

  qryRptPrm.Last;
  MaxParamID:=qryRptPrmPARAM_ID.AsInteger+1;
  SetVisible(Self);  
end;

procedure TRptParamFrm.qryRptPrmNewRecord(DataSet: TDataSet);
begin
  qryRptPrmREPORT_ID.AsInteger:=CurReportID;
  qryRptPrmPARAM_ID.AsInteger:=MaxParamID;
  MaxParamID:=MaxParamID+1;
end;

procedure TRptParamFrm.qryRptPrmBeforeCancel(DataSet: TDataSet);
begin
  if qryRptPrm.State =dsInsert then
    MaxParamID:=MaxParamID-1;
end;

end.
