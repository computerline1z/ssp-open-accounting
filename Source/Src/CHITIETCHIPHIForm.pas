unit CHITIETCHIPHIForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TCHITIETCHIPHIFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    qryHESO: TIBOQuery;
    dsHESO: TDataSource;
    qryHESOPERIOD_ID: TSmallintField;
    qryHESOMAPX: TWideStringField;
    qryHESOMALOAI: TSmallintField;
    qryHESOSHTK: TWideStringField;
    qryHESOOBJECT_NAME: TWideStringField;
    grdKHOBJECT_NAME: TdxDBGridMaskColumn;
    grdKHGTPHANBO: TdxDBGridCalcColumn;
    qryHESOGTPHANBO: TIBOFloatField;
    qryHESOACCOUNT_NAME: TWideStringField;
    grdKHACCOUNT_NAME: TdxDBGridMaskColumn;
    qryHESOQUITRINH: TWideStringField;
    grdKHQUITRINH: TdxDBGridMaskColumn;
    qryHESOGTDAUKY: TIBOFloatField;
    qryHESOGTCUOIKY: TIBOFloatField;
    qryHESOTIEUHAO: TFloatField;
    grdKHGTDAUKY: TdxDBGridMaskColumn;
    grdKHGTCUOIKY: TdxDBGridMaskColumn;
    grdKHTIEUHAO: TdxDBGridColumn;
    btnCancel: TElPopupButton;
    btnPost: TElPopupButton;
    btnDel: TElPopupButton;
    btnIns: TElPopupButton;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    locFormItem1: TdxLayoutItem;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    grdKHMAPX: TdxDBGridPopupColumn;
    grdKHSHTK: TdxDBGridPopupColumn;
    qryHESOKF: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryHESOCalcFields(DataSet: TDataSet);
    procedure grdKHSHTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHMAPXCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHESONewRecord(DataSet: TDataSet);
    procedure qryHESOAfterInsert(DataSet: TDataSet);
    procedure qryHESOBeforeDelete(DataSet: TDataSet);
    procedure qryHESOBeforeEdit(DataSet: TDataSet);
    procedure qryHESOBeforeInsert(DataSet: TDataSet);
    procedure qryHESOPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryHESOMAPXChange(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    MAPX:WideString;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CHITIETCHIPHIFrm: TCHITIETCHIPHIFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TCHITIETCHIPHIFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryHESOGTDAUKY.DisplayFormat:=TIENTE_FORMAT;
  qryHESOGTPHANBO.DisplayFormat:=TIENTE_FORMAT;
  qryHESOTIEUHAO.DisplayFormat:=TIENTE_FORMAT;
  qryHESOGTCUOIKY.DisplayFormat:=TIENTE_FORMAT;
  grdKHGTDAUKY.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHGTPHANBO.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHGTCUOIKY.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHTIEUHAO.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[0].SummaryFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[2].SummaryFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[3].SummaryFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[4].SummaryFormat:=TIENTE_FORMAT;

  qryHESO.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryHESO.Open;
  with MainDM do
  begin
    FilterAccType:=24;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    CurObjTypeID:=6;
  end;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TCHITIETCHIPHIFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
  Application.HelpContext(12);
end;

procedure TCHITIETCHIPHIFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, False,3);
end;

procedure TCHITIETCHIPHIFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TCHITIETCHIPHIFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TCHITIETCHIPHIFrm.qryHESOCalcFields(DataSet: TDataSet);
begin
  qryHESOTIEUHAO.AsFloat:=qryHESOGTDAUKY.AsFloat+qryHESOGTPHANBO.AsFloat-qryHESOGTCUOIKY.AsFloat;
end;

procedure TCHITIETCHIPHIFrm.grdKHSHTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryHESO.Edit;
    Text := MainDM.qryPAccACCOUNT_ID.Value;
    qryHESOACCOUNT_NAME.Value:= MainDM.qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TCHITIETCHIPHIFrm.grdKHMAPXCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryHESO.Edit;
    Text := vpItemID;
    qryHESOOBJECT_NAME.Value:= vpItemName;
  end;
end;

procedure TCHITIETCHIPHIFrm.qryHESONewRecord(DataSet: TDataSet);
begin
  qryHESOPERIOD_ID.AsInteger:=CurrentPeriod;
  qryHESOMALOAI.AsInteger:=6;
  qryHESOMAPX.Value:=MAPX;
end;

procedure TCHITIETCHIPHIFrm.qryHESOAfterInsert(DataSet: TDataSet);
begin
  qryHESOSHTK.FocusControl;
end;

procedure TCHITIETCHIPHIFrm.qryHESOBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TCHITIETCHIPHIFrm.qryHESOBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TCHITIETCHIPHIFrm.qryHESOBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
  MAPX:=qryHESOMAPX.Value;
end;

procedure TCHITIETCHIPHIFrm.qryHESOPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-803 then
    qryHESOSHTK.FocusControl;
end;

procedure TCHITIETCHIPHIFrm.qryHESOMAPXChange(Sender: TField);
begin
  if MainDM.CheckObjectField(qryHESOMAPX,6) then
  begin
    qryHESOOBJECT_NAME.Value:=MainDM.CurObjName;
    qryHESOQUITRINH.Value:=MainDM.CurObjID+' ('+MainDM.CurObjName+')';
  end;
end;

procedure TCHITIETCHIPHIFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
