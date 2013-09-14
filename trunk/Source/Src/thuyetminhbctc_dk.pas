unit THUYETMINHBCTC_DK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, IBODataset, DBActns, ActnList, ElCaption,
  dxLayout, dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxGrClEx, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl,
  dxCntner, cxControls;

type
  TfrmThuyetminhbctc_dk = class(TForm)
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1DKTK: TdxDBGridPopupColumn;
    dxDBGrid1HESO: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_NAME: TdxDBGridExtLookupColumn;
    TntBitBtn1: TElPopupButton;
    TntBitBtn2: TElPopupButton;
    TntBitBtn3: TElPopupButton;
    TntBitBtn4: TElPopupButton;
    TntBitBtn5: TElPopupButton;
    TntBitBtn6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryPMethod: TIBOQuery;
    qryPMethodMETHOD_ID: TSmallintField;
    qryPMethodMETHOD_NAME: TWideStringField;
    dsPMethod: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dsDefDkBCDKT: TDataSource;
    qry: TIBOQuery;
    qryID: TSmallintField;
    qryDKTK: TWideStringField;
    qryMETHOD_ID: TSmallintField;
    qryMETHOD_NAME: TWideStringField;
    qryHESO: TIBOFloatField;
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DKTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1METHOD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
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
  frmThuyetminhbctc_dk: TfrmThuyetminhbctc_dk;

implementation

uses GlobalUnit, dxTreeGridMenus, ThuyetminhBCTC, MainDataMdl, Functions, HtmlHlp;
{$R *.dfm}

procedure TfrmThuyetminhbctc_dk.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TfrmThuyetminhbctc_dk.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TfrmThuyetminhbctc_dk.FormCreate(Sender: TObject);
begin
  qry.Open;
  qryPMethod.Open;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
end;

procedure TfrmThuyetminhbctc_dk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qry.Active then
    qry.Close;
  if qryPMethod.Active then
    qryPMethod.Close;
end;

procedure TfrmThuyetminhbctc_dk.dxDBGrid1DKTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  If Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TfrmThuyetminhbctc_dk.dxDBGrid1METHOD_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qry.Edit;
    Text := qryPMethodMETHOD_NAME.Value;
    qryMETHOD_ID.AsInteger := qryPMethodMETHOD_ID.AsInteger;
  end;
end;

procedure TfrmThuyetminhbctc_dk.qryAfterInsert(
  DataSet: TDataSet);
begin
  qryDKTK.FocusControl;
end;

procedure TfrmThuyetminhbctc_dk.qryNewRecord(DataSet: TDataSet);
begin
  qryHESO.AsFloat:=1;
end;

procedure TfrmThuyetminhbctc_dk.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmThuyetminhbctc_dk.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TfrmThuyetminhbctc_dk.qryBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if IsNotHasData(qryDKTK) then
  begin
    ShowMessageUnicode(223);
    qryDKTK.FocusControl;
    Abort;
    Exit;
  end;
  LastModifyItemID:=qryDKTK.Value;  
end;

procedure TfrmThuyetminhbctc_dk.qryBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TfrmThuyetminhbctc_dk.qryPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'TMBCTC_DK')=-803 then
    qryDKTK.FocusControl
  else
    ShowMessageUnicode(201,e.Message,0);
end;

procedure TfrmThuyetminhbctc_dk.qryDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(224,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TfrmThuyetminhbctc_dk.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
