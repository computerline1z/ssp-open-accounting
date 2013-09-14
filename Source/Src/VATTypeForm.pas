unit VATTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,  TntButtons, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, dxLayout;

type
  TVATTypeFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryInvType: TIBOQuery;
    dsInvType: TDataSource;
    qryInvTypeVAT_ID: TSmallintField;
    qryInvTypeVAT_NAME: TWideStringField;
    qryInvTypeVAT_PER: TIBOFloatField;
    grdKHVAT_ID: TdxDBGridColumn;
    grdKHVAT_NAME: TdxDBGridColumn;
    grdKHVAT_PER: TdxDBGridCalcColumn;
    qryInvTypeOTHER_ID: TWideStringField;
    grdKHOTHER_ID: TdxDBGridMaskColumn;
    qryInvTypeMETHOD_NAME: TWideStringField;
    qryInvTypeMETHOD_ID: TSmallintField;
    qryPMethod: TIBOQuery;
    qryPMethodMETHOD_ID: TSmallintField;
    qryPMethodMETHOD_NAME: TWideStringField;
    dsPMethod: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    grdKHMETHOD_NAME: TdxDBGridExtLookupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryInvTypeAfterInsert(DataSet: TDataSet);
    procedure qryInvTypeBeforeDelete(DataSet: TDataSet);
    procedure qryInvTypeBeforeEdit(DataSet: TDataSet);
    procedure qryInvTypeBeforeInsert(DataSet: TDataSet);
    procedure qryInvTypeBeforePost(DataSet: TDataSet);
    procedure qryInvTypePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryInvTypeDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryInvTypeNewRecord(DataSet: TDataSet);
    procedure grdKHMETHOD_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VATTypeFrm: TVATTypeFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TVATTypeFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryPMethod.Open;
  qryInvType.Open;
  if SSPUserRight[6].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TVATTypeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryInvType.Close;
end;

procedure TVATTypeFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TVATTypeFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TVATTypeFrm.qryInvTypeAfterInsert(DataSet: TDataSet);
begin
  qryInvTypeVAT_ID.FocusControl;
end;

procedure TVATTypeFrm.qryInvTypeBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TVATTypeFrm.qryInvTypeBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TVATTypeFrm.qryInvTypeBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TVATTypeFrm.qryInvTypeBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if IsNotHasData(qryInvTypeVAT_ID) then
  begin
    ShowMessageUnicode(20);
    qryInvTypeVAT_ID.FocusControl;
    Abort;
  end;
end;

procedure TVATTypeFrm.qryInvTypePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  ProcessErr(E,'');
  qryInvTypeVAT_ID.FocusControl;
end;

procedure TVATTypeFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TVATTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TVATTypeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TVATTypeFrm.qryInvTypeDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TVATTypeFrm.qryInvTypeNewRecord(DataSet: TDataSet);
begin
  qryInvTypeVAT_ID.AsInteger:=qryInvType.RecNo;
end;

procedure TVATTypeFrm.grdKHMETHOD_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
  begin
    qryInvType.Edit;
    text :=qryPMethodMETHOD_NAME.Value;
    qryInvTypeMETHOD_ID.Value := qryPMethodMETHOD_ID.value;
  end
end;

end.
