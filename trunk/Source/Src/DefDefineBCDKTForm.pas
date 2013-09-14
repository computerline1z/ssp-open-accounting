unit DefDefineBCDKTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,
  dxLayout, DB, IBODataset, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList, dxGrClms;

type
  TfrmDefDefineBCDKT = class(TForm)
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
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
    qryDefDkBCDKT: TIBOQuery;
    qryDefDkBCDKTID: TSmallintField;
    qryDefDkBCDKTTEN: TWideStringField;
    qryDefDkBCDKTMASO: TWideStringField;
    qryDefDkBCDKTDAUNAM: TIBOFloatField;
    qryDefDkBCDKTCUOIKY: TIBOFloatField;
    qryDefDkBCDKTHESO_GROUP: TIBOFloatField;
    qryDefDkBCDKTMANHOM: TWideStringField;
    qryDefDkBCDKTISMIN: TSmallintField;
    qryDefDkBCDKTTHUYETMINH: TWideStringField;
    qryDefDkBCDKTDKTK: TWideStringField;
    qryDefDkBCDKTHESO: TIBOFloatField;
    qryDefDkBCDKTMETHOD_ID: TSmallintField;
    qryDefDkBCDKTMETHOD_NAME: TWideStringField;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1TEN: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1DAUNAM: TdxDBGridMaskColumn;
    dxDBGrid1CUOIKY: TdxDBGridMaskColumn;
    dxDBGrid1HESO_GROUP: TdxDBGridMaskColumn;
    dxDBGrid1MANHOM: TdxDBGridMaskColumn;
    dxDBGrid1ISMIN: TdxDBGridMaskColumn;
    dxDBGrid1THUYETMINH: TdxDBGridMaskColumn;
    dxDBGrid1HESO: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_ID: TdxDBGridMaskColumn;
    dxDBGrid1DKTK: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_NAME: TdxDBGridMaskColumn;
    procedure qryDefDkBCDKTAfterInsert(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforeDelete(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforeEdit(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforeInsert(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforePost(DataSet: TDataSet);
    procedure qryDefDkBCDKTNewRecord(DataSet: TDataSet);
    procedure qryDefDkBCDKTPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1METHOD_NAMECloseUp(Sender: TObject;
      var Value: Variant; var Accept: Boolean);
    procedure dxDBGrid1DKTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDefDefineBCDKT: TfrmDefDefineBCDKT;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  PopupForm, Functions, HtmlHlp;

{$R *.dfm}

procedure TfrmDefDefineBCDKT.FormCreate(Sender: TObject);
begin
  AllowSelectParent := True;

  SetOnFormCreate(Sender as TControl);
  try
    qryDefDkBCDKT.ParamByName('ID').AsInteger := MainDM.qryDefRptBCDKTID.Value;
    qryDefDkBCDKT.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  qryPMethod.Open;
  MainDM.qryPAcc.Filtered := False;
end;

procedure TfrmDefDefineBCDKT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryDefDkBCDKT do
  begin
    if State in [dsInsert, dsEdit] then
      Post;
    Close;
  end;

  AllowSelectParent := False;
end;

procedure TfrmDefDefineBCDKT.dxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TfrmDefDefineBCDKT.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDefDefineBCDKT.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TfrmDefDefineBCDKT.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTNewRecord(DataSet: TDataSet);
begin
  qryDefDkBCDKTID.AsInteger := MainDM.qryDefRptBCDKTID.Value;
  qryDefDkBCDKTHESO.AsFloat := 1;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTAfterInsert(DataSet: TDataSet);
begin
  qryDefDkBCDKTDKTK.FocusControl;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TfrmDefDefineBCDKT.qryDefDkBCDKTPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'');
  qryDefDkBCDKTDKTK.FocusControl;
end;

procedure TfrmDefDefineBCDKT.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TfrmDefDefineBCDKT.dxDBGrid1METHOD_NAMECloseUp(Sender: TObject;
  var Value: Variant; var Accept: Boolean);
begin
  if Accept then
  begin
    qryDefDkBCDKT.Edit;
    Text := qryPMethodMETHOD_NAME.Value;
    qryDefDkBCDKTMETHOD_ID.AsInteger := qryPMethodMETHOD_ID.AsInteger;
  end;
end;

procedure TfrmDefDefineBCDKT.dxDBGrid1DKTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  If Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

end.
