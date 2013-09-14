unit BatchInPeriodForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  TBatchInPeriodFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locCancel: TdxLayoutItem;
    btnPost: TELPopupButton;
    locSave: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdBatchList: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryBatchList: TIBOQuery;
    dsBatchList: TDataSource;
    grdBatchListBATCH_ID: TdxDBGridMaskColumn;
    grdBatchListTGSD: TdxDBGridMaskColumn;
    grdBatchListOBJECT_NAME: TdxDBGridMaskColumn;
    grdBatchListMASO_HH: TdxDBGridPopupColumn;
    grdBatchListSLBANDAU: TdxDBGridCalcColumn;
    grdBatchListGTBANDAU: TdxDBGridCalcColumn;
    grdBatchListDOC_IN: TdxDBGridMaskColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    grdBatchListBATCH_NOTE: TdxDBGridMaskColumn;
    qryBatchListDOC_ID: TWideStringField;
    qryBatchListENTRY_ID: TSmallintField;
    qryBatchListPERIOD_ID: TSmallintField;
    qryBatchListDEBIT_OBJ: TWideStringField;
    qryBatchListENTRY_AMOUNT: TIBOFloatField;
    qryBatchListENTRY_VALUE: TIBOFloatField;
    qryBatchListENTRY_NOTE: TWideStringField;
    qryBatchListMASOLO: TIntegerField;
    qryBatchListTGSDCUALO: TSmallintField;
    qryBatchListOBJECT_NAME: TWideStringField;
    qryBatchListSUBINFO_1: TWideStringField;
    qryBatchListSUBINFO_2: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdBatchListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBatchListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryBatchListBeforeDelete(DataSet: TDataSet);
    procedure qryBatchListBeforeEdit(DataSet: TDataSet);
    procedure qryBatchListBeforeInsert(DataSet: TDataSet);
    procedure qryBatchListPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure grdBatchListDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BatchInPeriodFrm: TBatchInPeriodFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Math;

{$R *.dfm}

procedure TBatchInPeriodFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdBatchListSLBANDAU.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchListGTBANDAU.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBatchListENTRY_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryBatchListENTRY_VALUE.DisplayFormat:=TIENTE_FORMAT;
  with MainDM do
  begin
    qryCommon.Close;
    qryCommon.SQL.Clear;
    qryCommon.Params.Clear;
    qryCommon.SQL.Text :='select * from sp_tg_batch_in(:kyht)';
    qryCommon.Prepare;

    qryCommon.ParamByName('KYHT').Value := CurrentPeriod;
    qryCommon.Open;
    qryCommon.Close;
  end;

  qryBatchList.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryBatchList.Open;
end;
procedure TBatchInPeriodFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF qryBatchList.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBatchList.Post;

  qryBatchList.Close;
end;

procedure TBatchInPeriodFrm.BitBtn4Click(Sender: TObject);
begin
  Application.HelpContext(5);
end;

procedure TBatchInPeriodFrm.grdBatchListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdBatchList, Key, Shift, False);
end;

procedure TBatchInPeriodFrm.grdBatchListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBatchInPeriodFrm.qryBatchListBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TBatchInPeriodFrm.qryBatchListBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TBatchInPeriodFrm.qryBatchListBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TBatchInPeriodFrm.qryBatchListPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action:=daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ShowMessageUnicode(128,e.Message,0);
end;

procedure TBatchInPeriodFrm.ElPopupButton1Click(Sender: TObject);
begin
  MainDM.Suachungtu(qryBatchListDOC_ID.Value,CurrentPeriod);
end;

procedure TBatchInPeriodFrm.grdBatchListDblClick(Sender: TObject);
begin
  ElPopupButton1Click(Sender);
end;

procedure TBatchInPeriodFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBatchInPeriodFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
