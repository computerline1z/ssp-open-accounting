unit BatchInOutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption, dxBar;

type
  TBatchInOutFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdBatch: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryBatch: TIBOQuery;
    dsBatch: TDataSource;
    qryBatchMASOLO: TIntegerField;
    qryBatchKYNHAP: TSmallintField;
    qryBatchMASOHH: TWideStringField;
    qryBatchTGSD: TSmallintField;
    qryBatchSPNHAP: TWideStringField;
    qryBatchSLBANDAU: TIBOFloatField;
    qryBatchGTBANDAU: TIBOFloatField;
    qryBatchSLDAUKY: TIBOFloatField;
    qryBatchSLXUAT: TIBOFloatField;
    qryBatchSLCUOIKY: TIBOFloatField;
    qryBatchOBJECT_NAME: TWideStringField;
    qryBatchSUBINFO_1: TWideStringField;
    qryBatchSUBINFO_2: TWideStringField;
    qryBatchTHANGBDKH: TWideStringField;
    grdBatchMASOLO: TdxDBGridMaskColumn;
    grdBatchMASOHH: TdxDBGridMaskColumn;
    grdBatchTGSD: TdxDBGridMaskColumn;
    grdBatchSLBANDAU: TdxDBGridMaskColumn;
    grdBatchGTBANDAU: TdxDBGridMaskColumn;
    grdBatchSLDAUKY: TdxDBGridMaskColumn;
    grdBatchSLXUAT: TdxDBGridMaskColumn;
    grdBatchSLCUOIKY: TdxDBGridMaskColumn;
    grdBatchOBJECT_NAME: TdxDBGridMaskColumn;
    grdBatchSUBINFO_1: TdxDBGridMaskColumn;
    grdBatchSUBINFO_2: TdxDBGridMaskColumn;
    grdBatchTHANGBDKH: TdxDBGridColumn;
    qryBatchCONLAI: TSmallintField;
    dxDBEdit3: TdxDBEdit;
    locFormItem5: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    locFormItem9: TdxLayoutItem;
    qryBatchMUCKH: TFloatField;
    qryBatchTCMUCKH: TFloatField;
    dxDBEdit1: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    grdBatchTCMUCKH: TdxDBGridColumn;
    qryBatchKF: TWideStringField;
    dxDBEdit2: TdxDBEdit;
    locFormItem1: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    pmBatch: TdxBarPopupMenu;
    bbtnPN: TdxBarButton;
    bbtnPX: TdxBarButton;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdBatchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBatchMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryBatchCalcFields(DataSet: TDataSet);
    procedure bbtnPNClick(Sender: TObject);
    procedure bbtnPXClick(Sender: TObject);
    procedure grdBatchChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BatchInOutFrm: TBatchInOutFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Math, DocListForm;


{$R *.dfm}

procedure TBatchInOutFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdBatchSLBANDAU.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchGTBANDAU.SummaryFooterFormat:=TIENTE_FORMAT;
  grdBatchSLDAUKY.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchSLXUAT.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchSLCUOIKY.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchTCMUCKH.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBatchSLBANDAU.DisplayFormat:=SOLUONG_FORMAT;
  qryBatchSLDAUKY.DisplayFormat:=SOLUONG_FORMAT;
  qryBatchSLXUAT.DisplayFormat:=SOLUONG_FORMAT;
  qryBatchSLCUOIKY.DisplayFormat:=SOLUONG_FORMAT;
  qryBatchGTBANDAU.DisplayFormat:=TIENTE_FORMAT;
  qryBatchTCMUCKH.DisplayFormat:=TIENTE_FORMAT;
  qryBatchMUCKH.DisplayFormat:=TIENTE_FORMAT;

  qryBatch.ParamByName('kyht').AsInteger:=CurrentPeriod;
  qryBatch.Open;
end;
procedure TBatchInOutFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF qryBatch.State in [dsEdit] then
      qryBatch.Post;
end;

procedure TBatchInOutFrm.BitBtn4Click(Sender: TObject);
begin
  Application.HelpContext(5);
end;

procedure TBatchInOutFrm.grdBatchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdBatch, Key, Shift, False);
end;

procedure TBatchInOutFrm.grdBatchMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmBatch.PopupFromCursorPos;
end;

procedure TBatchInOutFrm.qryBatchCalcFields(DataSet: TDataSet);
begin
  qryBatchCONLAI.AsInteger:=qryBatchTGSD.AsInteger-(CurrentPeriod-qryBatchKYNHAP.AsInteger);
  if qryBatchTGSD.AsInteger<>0 then
  begin
    qryBatchTCMUCKH.AsFloat:=RoundTo(qryBatchGTBANDAU.AsFloat/qryBatchTGSD.AsInteger,0);
    if qryBatchSLBANDAU.AsFloat<>0 then
      qryBatchMUCKH.AsFloat:=RoundTo(qryBatchTCMUCKH.AsFloat/qryBatchSLBANDAU.AsFloat,0);
  end
end;

procedure TBatchInOutFrm.bbtnPNClick(Sender: TObject);
begin
  if qryBatchKYNHAP.AsInteger<>0 then
    MainDM.Suachungtu(qryBatchSPNHAP.Value,qryBatchKYNHAP.AsInteger);
end;

procedure TBatchInOutFrm.bbtnPXClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher,'
    + ' doc_total , doc_notes, object_id,object_name'
    + ' FROM macro_doclistky(:kyht,:kyht,:username)'
    + ' where dtco=:mahh and loaico=2 ';
begin
  if qryBatchSLXUAT.AsFloat=0 then exit;
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('kyht').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('mahh').Value:=qryBatchMASOHH.Value;
    qryDocListAnyWhere.ParamByName('username').Value:=CurrentUser;
    Screen.Cursor:=crHourGlass;
    qryDocListAnyWhere.Open;
    Screen.Cursor:=crDefault;
    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
  end;
  IsPosted := False;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value);
    qryDocListAnyWhere.Close;
  end
  else
  begin
    DocListFrm:=TDocListFrm.Create(Self);
    try
      DocListFrm.ShowModal;
    finally
      DocListFrm.Free;
    end;
  end;
  if IsPosted then
  begin
    qryBatch.DisableControls;
    qryBatch.Refresh;
    qryBatch.EnableControls;
  end;
end;

procedure TBatchInOutFrm.grdBatchChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  bbtnPN.Enabled:=qryBatchKYNHAP.AsInteger<>0;
  bbtnPX.Enabled:=qryBatchSLXUAT.AsFloat<>0;
end;

procedure TBatchInOutFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdBatch);
end;

procedure TBatchInOutFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBatchInOutFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
