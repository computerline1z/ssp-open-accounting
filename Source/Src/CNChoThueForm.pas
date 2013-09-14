unit CNChoThueForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  TCNChoThueFrm = class(TForm)
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
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdBatch: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    ElPopupButton2: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    acDelete: TDataSetDelete;
    qryRentDebt: TIBOQuery;
    dsRentDebt: TDataSource;
    qryRentDebtPERIOD_ID: TSmallintField;
    qryRentDebtMASO_KH: TWideStringField;
    qryRentDebtMASO_HH: TWideStringField;
    qryRentDebtSHTK: TWideStringField;
    qryRentDebtLOAI_KH: TSmallintField;
    qryRentDebtLOAI_HH: TSmallintField;
    qryRentDebtSLTHUEDK: TIBOFloatField;
    qryRentDebtGTTHUEDK: TIBOFloatField;
    grdBatchSLTHUEDK: TdxDBGridCalcColumn;
    grdBatchGTTHUEDK: TdxDBGridCalcColumn;
    grdBatchMASO_KH: TdxDBGridPopupColumn;
    grdBatchMASO_CT: TdxDBGridPopupColumn;
    grdBatchMASO_HH: TdxDBGridPopupColumn;
    grdBatchSHTK: TdxDBGridPopupColumn;
    qryRentDebtKF: TWideStringField;
    qryRentDebtWORK_NAME: TWideStringField;
    qryRentDebtMASO_CT: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdBatchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBatchMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdBatchMASO_HHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdBatchMASO_HHInitPopup(Sender: TObject);
    procedure qryRentDebtAfterInsert(DataSet: TDataSet);
    procedure qryRentDebtBeforeDelete(DataSet: TDataSet);
    procedure qryRentDebtBeforeEdit(DataSet: TDataSet);
    procedure qryRentDebtBeforeInsert(DataSet: TDataSet);
    procedure qryRentDebtNewRecord(DataSet: TDataSet);
    procedure qryRentDebtBeforePost(DataSet: TDataSet);
    procedure qryRentDebtPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdBatchMASO_KHInitPopup(Sender: TObject);
    procedure grdBatchMASO_KHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdBatchSHTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdBatchMASO_CTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryRentDebtWORK_NAMEChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNChoThueFrm: TCNChoThueFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Functions;

{$R *.dfm}

procedure TCNChoThueFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdBatchSLTHUEDK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchGTTHUEDK.SummaryFooterFormat:=TIENTE_FORMAT;
  qryRentDebtSLTHUEDK.DisplayFormat:=SOLUONG_FORMAT;
  qryRentDebtGTTHUEDK.DisplayFormat:=TIENTE_FORMAT;
  qryRentDebt.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryRentDebt.Open;
  
  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
end;
procedure TCNChoThueFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF qryRentDebt.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryRentDebt.Post;

  qryRentDebt.Close;
end;

procedure TCNChoThueFrm.BitBtn4Click(Sender: TObject);
begin
  Application.HelpContext(5);
end;

procedure TCNChoThueFrm.grdBatchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdBatch, Key, Shift, True);
end;

procedure TCNChoThueFrm.grdBatchMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then
end;

procedure TCNChoThueFrm.grdBatchMASO_HHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryRentDebt.Edit;
    qryRentDebtMASO_HH.Value := vpItemID;
    Text := vpItemID;
  end;
end;

procedure TCNChoThueFrm.grdBatchMASO_HHInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
end;

procedure TCNChoThueFrm.qryRentDebtAfterInsert(DataSet: TDataSet);
begin
  qryRentDebtMASO_KH.FocusControl;
end;

procedure TCNChoThueFrm.qryRentDebtBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TCNChoThueFrm.qryRentDebtBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TCNChoThueFrm.qryRentDebtBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TCNChoThueFrm.qryRentDebtNewRecord(DataSet: TDataSet);
begin
  qryRentDebtLOAI_KH.AsInteger:=1;
  qryRentDebtLOAI_HH.AsInteger:=2;
  qryRentDebtPERIOD_ID.AsInteger:=CurrentPeriod;
end;

procedure TCNChoThueFrm.qryRentDebtBeforePost(DataSet: TDataSet);
begin
  if qryRentDebtMASO_KH.IsNull then
  begin
    ShowMessageUnicode(159);
    qryRentDebtMASO_KH.FocusControl;
    Abort;
    Exit;
  end;
  if qryRentDebtMASO_CT.IsNull then
  begin
    ShowMessageUnicode(160);
    qryRentDebtWORK_NAME.FocusControl;
    Abort;
    Exit;
  end;
  if qryRentDebtMASO_HH.IsNull then
  begin
    ShowMessageUnicode(161);
    qryRentDebtMASO_HH.FocusControl;
    Abort;
    Exit;
  end;
  if qryRentDebtSHTK.IsNull then
  begin
    ShowMessageUnicode(67);
    qryRentDebtSHTK.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TCNChoThueFrm.qryRentDebtPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  kq:Integer;
begin
  Action:=daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  kq:=ProcessErr(E,'',1);
  if kq=-530 then//Khoa ngoai
    ShowMessageUnicode(162,e.Message,0);
end;

procedure TCNChoThueFrm.grdBatchMASO_KHInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:=1;
end;

procedure TCNChoThueFrm.grdBatchMASO_KHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryRentDebt.Edit;
    qryRentDebtMASO_KH.Value := vpItemID;
    Text := vpItemID;
  end;
end;

procedure TCNChoThueFrm.grdBatchSHTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TCNChoThueFrm.grdBatchMASO_CTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryRentDebt.Edit;
    qryRentDebtMASO_CT.Value := MainDM.qryPWorkWORK_ID.Value;
    Text := MainDM.qryPWorkWORK_NAME.Value;
  end;
end;

procedure TCNChoThueFrm.qryRentDebtWORK_NAMEChange(Sender: TField);
begin
  if Not ImportingFromXLS then Exit;
  MainDM.qryPWork.Open;
  if MainDM.qryPWork.Locate('WORK_NAME',qryRentDebtWORK_NAME.Value,[loCaseInsensitive, loPartialKey]) then
    qryRentDebtMASO_CT.Value:=MainDM.qryPWorkWORK_ID.Value;
end;

procedure TCNChoThueFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TCNChoThueFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
