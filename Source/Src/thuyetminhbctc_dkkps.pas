unit ThuyetminhBCTC_DKKPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, IBODataset, DBActns, ActnList, ElCaption,
  dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxGrClEx,
  dxCntner, cxControls;

type
  TfrmThuyetminhBCTC_DKKPS = class(TForm)
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1TKNOBDV: TdxDBGridPopupColumn;
    dxDBGrid1TKCOBDV: TdxDBGridPopupColumn;
    dxDBGrid1HESO: TdxDBGridCalcColumn;
    dxDBGrid1GHICHU: TdxDBGridColumn;
    TntBitBtn1: TElPopupButton;
    TntBitBtn2: TElPopupButton;
    TntBitBtn3: TElPopupButton;
    TntBitBtn4: TElPopupButton;
    TntBitBtn5: TElPopupButton;
    TntBitBtn6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    ds: TDataSource;
    qry: TIBOQuery;
    qryID: TSmallintField;
    qryTKNOBDV: TWideStringField;
    qryTKCOBDV: TWideStringField;
    qryKF: TWideStringField;
    qryGHICHU: TWideStringField;
    qryHESO: TIBOFloatField;
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1TKNOBDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1TKCOBDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmThuyetminhBCTC_DKKPS: TfrmThuyetminhBCTC_DKKPS;

implementation
uses MainDataMdl, GlobalUnit, Functions, dxTreeGridMenus, ThuyetminhBCTC, HtmlHlp;
{$R *.dfm}

procedure TfrmThuyetminhBCTC_DKKPS.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TfrmThuyetminhBCTC_DKKPS.dxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TfrmThuyetminhBCTC_DKKPS.FormCreate(Sender: TObject);
begin
  qry.Open;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
end;

procedure TfrmThuyetminhBCTC_DKKPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qry.Close;
end;

procedure TfrmThuyetminhBCTC_DKKPS.qryNewRecord(DataSet: TDataSet);
begin
  qryHESO.AsInteger := 1;
end;

procedure TfrmThuyetminhBCTC_DKKPS.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TfrmThuyetminhBCTC_DKKPS.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TfrmThuyetminhBCTC_DKKPS.dxDBGrid1TKNOBDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TfrmThuyetminhBCTC_DKKPS.dxDBGrid1TKCOBDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TfrmThuyetminhBCTC_DKKPS.qryBeforePost(DataSet: TDataSet);
begin
 if ImportingFromXLS then exit;

  if IsNotHasData(qryTKNOBDV) then
  begin
    ShowMessageUnicode(223);
    qryTKNOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryTKCOBDV) then
  begin
    ShowMessageUnicode(223);
    qryTKCOBDV.FocusControl;
    Abort;
    Exit;
  end;
  LastModifyItemID:=qryTKNOBDV.Value;
end;

procedure TfrmThuyetminhBCTC_DKKPS.qryBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TfrmThuyetminhBCTC_DKKPS.qryAfterInsert(DataSet: TDataSet);
begin
  qryTKNOBDV.FocusControl;
end;

procedure TfrmThuyetminhBCTC_DKKPS.qryPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DKKPS')=-803 then
    qryTKNOBDV.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
end;

procedure TfrmThuyetminhBCTC_DKKPS.qryDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TfrmThuyetminhBCTC_DKKPS.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
