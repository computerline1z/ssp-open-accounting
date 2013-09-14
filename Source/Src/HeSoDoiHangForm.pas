unit HeSoDoiHangForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  THeSoDoiHangFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    btnClose: TELPopupButton;
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
    qryHESO: TIBOQuery;
    dsHESO: TDataSource;
    qryHESOTUMAHANG: TWideStringField;
    qryHESOLOAITUHANG: TSmallintField;
    qryHESODENMAHANG: TWideStringField;
    qryHESOLOAIDENHANG: TSmallintField;
    qryHESOHESOQUIDOI: TIBOFloatField;
    qryHESOTENTUHANG: TWideStringField;
    qryHESOTENDENHANG: TWideStringField;
    grdKHTUMAHANG: TdxDBGridPopupColumn;
    grdKHDENMAHANG: TdxDBGridPopupColumn;
    grdKHHESOQUIDOI: TdxDBGridCalcColumn;
    grdKHTENTUHANG: TdxDBGridColumn;
    grdKHTENDENHANG: TdxDBGridColumn;
    qryHESOKF: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryHESOAfterInsert(DataSet: TDataSet);
    procedure qryHESOBeforeDelete(DataSet: TDataSet);
    procedure qryHESOBeforeEdit(DataSet: TDataSet);
    procedure qryHESOBeforeInsert(DataSet: TDataSet);
    procedure qryHESONewRecord(DataSet: TDataSet);
    procedure qryHESOPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHSHTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHMAPXCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHTUMAHANGCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHESOTUMAHANGChange(Sender: TField);
    procedure qryHESODENMAHANGChange(Sender: TField);
    procedure qryHESOBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeSoDoiHangFrm: THeSoDoiHangFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus;


{$R *.dfm}

procedure THeSoDoiHangFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  with MainDM do
  begin
    FilterAccType:=18;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    CurObjTypeID:=2;
  end;
  qryHESOHESOQUIDOI.DisplayFormat:=CACHESO_FORMAT;
 
  qryHESO.Open;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure THeSoDoiHangFrm.BitBtn4Click(Sender: TObject);
begin
  Application.HelpContext(12);
end;

procedure THeSoDoiHangFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure THeSoDoiHangFrm.qryHESOAfterInsert(DataSet: TDataSet);
begin
  qryHESOTUMAHANG.FocusControl;
end;

procedure THeSoDoiHangFrm.qryHESOBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure THeSoDoiHangFrm.qryHESOBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure THeSoDoiHangFrm.qryHESOBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure THeSoDoiHangFrm.qryHESONewRecord(DataSet: TDataSet);
begin
  qryHESOLOAITUHANG.AsInteger := 2;
  qryHESOLOAIDENHANG.AsInteger := 2;
end;

procedure THeSoDoiHangFrm.qryHESOPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryHESOTUMAHANG.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryHESOTUMAHANG.FocusControl;
  end;
end;

procedure THeSoDoiHangFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure THeSoDoiHangFrm.grdKHSHTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure THeSoDoiHangFrm.grdKHMAPXCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text :=vpItemID;
end;

procedure THeSoDoiHangFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure THeSoDoiHangFrm.grdKHTUMAHANGCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure THeSoDoiHangFrm.qryHESOTUMAHANGChange(Sender: TField);
begin
  if MainDM.CheckObject(qryHESOTUMAHANG.Value,2) then
  begin
    if qryHESOTUMAHANG.Value<>MainDM.CurObjID then
      qryHESOTUMAHANG.Value:=MainDM.CurObjID;

    qryHESOTENTUHANG.Value:=MainDM.CurObjName;
  end;
end;

procedure THeSoDoiHangFrm.qryHESODENMAHANGChange(Sender: TField);
begin
  if MainDM.CheckObject(qryHESODENMAHANG.Value,2) then
  begin
    if qryHESODENMAHANG.Value<>MainDM.CurObjID then
      qryHESODENMAHANG.Value:=MainDM.CurObjID;

    qryHESOTENDENHANG.Value:=MainDM.CurObjName;
  end;
end;

procedure THeSoDoiHangFrm.qryHESOBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure THeSoDoiHangFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
