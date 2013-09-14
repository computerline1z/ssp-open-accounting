unit DefDKBCDKTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,
  dxLayout, DB, IBODataset, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList;

type
  TDefDKBCDKTFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryPMethod: TIBOQuery;
    dsPMethod: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    qryPMethodMETHOD_ID: TSmallintField;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    qryPMethodMETHOD_NAME: TWideStringField;
    ElFormCaption1: TElFormCaption;
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
    locFormGroup2: TdxLayoutGroup;
    dsDefDkBCDKT: TDataSource;
    qryDefDkBCDKT: TIBOQuery;
    qryDefDkBCDKTID: TSmallintField;
    qryDefDkBCDKTDKTK: TWideStringField;
    qryDefDkBCDKTMETHOD_ID: TSmallintField;
    qryDefDkBCDKTMETHOD_NAME: TWideStringField;
    dxDBGrid1HESO: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_NAME: TdxDBGridExtLookupColumn;
    qryDefDkBCDKTHESO: TIBOFloatField;
    dxDBGrid1DKTK: TdxDBGridPopupColumn;
    qryDefDkBCDKTBRANCH_ID: TWideStringField;
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
      var Text: WideString; var Accept: Boolean);
    procedure qryDefDkBCDKTNewRecord(DataSet: TDataSet);
    procedure qryDefDkBCDKTAfterInsert(DataSet: TDataSet);
    procedure dxDBGrid1DKTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryDefDkBCDKTPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDefDkBCDKTBeforeEdit(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforeDelete(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforeInsert(DataSet: TDataSet);
    procedure qryDefDkBCDKTBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DefDKBCDKTFrm: TDefDKBCDKTFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  PopupForm, Functions, HtmlHlp;


{$R *.dfm}

procedure TDefDKBCDKTFrm.FormCreate(Sender: TObject);
begin
  AllowSelectParent:=True;

  SetOnFormCreate(Sender as TControl);
  try
    qryDefDkBCDKT.ParamByName('ID').AsInteger:=MainDM.qryDefRptBCDKTID.Value;
    qryDefDkBCDKT.ParamByName('BRANCH_ID').value:=MainDM.qryDefRptBCDKTBRANCH_ID.Value;
    qryDefDkBCDKT.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  qryPMethod.Open;
  MainDM.qryPAcc.Filtered:=False;
end;

procedure TDefDKBCDKTFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryDefDkBCDKT do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;

  AllowSelectParent:=False;
end;

procedure TDefDKBCDKTFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TDefDKBCDKTFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TDefDKBCDKTFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TDefDKBCDKTFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TDefDKBCDKTFrm.dxDBGrid1METHOD_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryDefDkBCDKT.Edit;
    Text := qryPMethodMETHOD_NAME.Value;
    qryDefDkBCDKTMETHOD_ID.AsInteger := qryPMethodMETHOD_ID.AsInteger;
  end;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTNewRecord(DataSet: TDataSet);
begin
  qryDefDkBCDKTID.AsInteger := MainDM.qryDefRptBCDKTID.Value;
  qryDefDkBCDKTHESO.AsFloat := 1;
  qryDefDkBCDKTBRANCH_ID.Value := MainDM.qryDefRptBCDKTBRANCH_ID.Value;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTAfterInsert(DataSet: TDataSet);
begin
  qryDefDkBCDKTDKTK.FocusControl;
end;

procedure TDefDKBCDKTFrm.dxDBGrid1DKTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  If Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'');
  qryDefDkBCDKTDKTK.FocusControl;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TDefDKBCDKTFrm.qryDefDkBCDKTBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TDefDKBCDKTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
