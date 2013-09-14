unit ObjDocBeginBalForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption, XLSReadWriteII;

type
  TObjDocBeginBalFrm = class(TForm)
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
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdObj: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    acDelete: TDataSetDelete;
    qryBeginObjDoc: TIBOQuery;
    dsBeginObjDoc: TDataSource;
    qryBeginObjDocOBJECT_ID: TWideStringField;
    qryBeginObjDocOTYPE_ID: TSmallintField;
    qryBeginObjDocACCOUNT_ID: TWideStringField;
    qryBeginObjDocPERIOD_ID: TSmallintField;
    qryBeginObjDocDOC_ARISE: TWideStringField;
    qryBeginObjDocPERIOD_ARISE: TSmallintField;
    qryBeginObjDocBEGIN_DEBIT: TIBOFloatField;
    qryBeginObjDocBEGIN_CREDIT: TIBOFloatField;
    qryBeginObjDocTENNGOAITE: TWideStringField;
    qryBeginObjDocSOTIENNGOAITE: TIBOFloatField;
    grdObjOBJECT_ID: TdxDBGridPopupColumn;
    grdObjDOC_ARISE: TdxDBGridColumn;
    grdObjPERIOD_ARISE: TdxDBGridColumn;
    grdObjBEGIN_DEBIT: TdxDBGridCalcColumn;
    grdObjBEGIN_CREDIT: TdxDBGridCalcColumn;
    grdObjTENNGOAITE: TdxDBGridPopupColumn;
    grdObjSOTIENNGOAITE: TdxDBGridCalcColumn;
    ElPopupButton2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    qryBeginObjDocKF: TWideStringField;
    qryBeginObjDocARISE_DATE: TDateField;
    grdObjARISE_DATE: TdxDBGridDateColumn;
    qryBeginObjDocBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjTENNGOAITECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdObjOBJECT_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryBeginObjDocAfterInsert(DataSet: TDataSet);
    procedure qryBeginObjDocNewRecord(DataSet: TDataSet);
    procedure qryBeginObjDocBeforePost(DataSet: TDataSet);
    procedure qryBeginObjDocBeforeDelete(DataSet: TDataSet);
    procedure qryBeginObjDocBeforeEdit(DataSet: TDataSet);
    procedure qryBeginObjDocBeforeInsert(DataSet: TDataSet);
    procedure qryBeginObjDocPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdObjEnter(Sender: TObject);
    procedure qryBeginObjDocTENNGOAITEChange(Sender: TField);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryBeginObjDocAfterPost(DataSet: TDataSet);
  private
    IsRefresh:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ObjDocBeginBalFrm: TObjDocBeginBalFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm, Cell,
  dxTreeGridMenus, Functions, DateUtils;


{$R *.dfm}

procedure TObjDocBeginBalFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  grdObjBEGIN_DEBIT.SummaryFooterFormat:=TIENTE_FORMAT;
  grdObjBEGIN_CREDIT.SummaryFooterFormat:=TIENTE_FORMAT;
  grdObjSOTIENNGOAITE.SummaryFooterFormat:=NGOAITE_FORMAT;

  with MainDM do
  begin
    FilterAccType:=23;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
    if vpBranch_IsMin <> 1 then
      qryBeginObjDoc.ReadOnly := true
    else
      qryBeginObjDoc.ReadOnly := false;
  end;
  qryBeginObjDocBEGIN_DEBIT.DisplayFormat:=TIENTE_FORMAT;
  qryBeginObjDocBEGIN_CREDIT.DisplayFormat:=TIENTE_FORMAT;
  qryBeginObjDocSOTIENNGOAITE.DisplayFormat:=NGOAITE_FORMAT;
  qryBeginObjDocARISE_DATE.DisplayFormat:=NGAYTHANG_FORMAT;
  
  qryBeginObjDoc.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBeginObjDoc.ParamByName('BRANCH_ID').Value:=vpBranch_id;
  qryBeginObjDoc.Open;
  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
     // tradtt: sua bug 1762 - giau nut 'xem phieu'
  locFormItem4.Visible := false;
end;
procedure TObjDocBeginBalFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF qryBeginObjDoc.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBeginObjDoc.Post;

  qryBeginObjDoc.Close;
end;

procedure TObjDocBeginBalFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  if qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    qryPAccACCOUNT_ID.FocusControl;
    exit;
  end;
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TObjDocBeginBalFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TObjDocBeginBalFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TObjDocBeginBalFrm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TObjDocBeginBalFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TObjDocBeginBalFrm.grdObjTENNGOAITECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TObjDocBeginBalFrm.grdObjOBJECT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocAfterInsert(DataSet: TDataSet);
begin
  qryBeginObjDocOBJECT_ID.FocusControl;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocNewRecord(DataSet: TDataSet);
begin
  qryBeginObjDocARISE_DATE.AsDateTime:=WorkingDate;
  qryBeginObjDocPERIOD_ID.Value:=CurrentPeriod;
  qryBeginObjDocOTYPE_ID.AsInteger:=MainDM.qryPAccOTYPE_ID.AsInteger;
  qryBeginObjDocACCOUNT_ID.AsInteger:=MainDM.qryPAccACCOUNT_ID.AsInteger;
  qryBeginObjDocBRANCH_ID.Value := vpBranch_id;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocBeforePost(DataSet: TDataSet);
begin
  qryBeginObjDocPERIOD_ARISE.AsInteger:=MonthOf(qryBeginObjDocARISE_DATE.AsDateTime)+YearOf(qryBeginObjDocARISE_DATE.AsDateTime)*12;

  if Not MainDM.CheckRequireField(DataSet) then
    Abort;

  qryBeginObjDocKF.Value:=  qryBeginObjDocOBJECT_ID.Value+qryBeginObjDocOTYPE_ID.AsString+qryBeginObjDocACCOUNT_ID.Value+qryBeginObjDocPERIOD_ID.AsString+qryBeginObjDocDOC_ARISE.Value+qryBeginObjDocPERIOD_ARISE.AsString;
  IsRefresh:=qryBeginObjDoc.State=dsEdit;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs:=ProcessErr(E,'',0);
  case rs of
    -803://Trung khoa
    begin
      ShowMessageUnicode(45,e.Message,0);
    end;
    -530://Trung khoa
    begin
      ShowMessageUnicode(46,e.Message,0);
    end;
  end;
  qryBeginObjDocOBJECT_ID.FocusControl;
end;

procedure TObjDocBeginBalFrm.grdObjEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocTENNGOAITEChange(
  Sender: TField);
begin
  MainDM.CheckCurrency(qryBeginObjDocTENNGOAITE);
end;

procedure TObjDocBeginBalFrm.ElPopupButton2Click(Sender: TObject);
begin
  if qryBeginObjDoc.State in [dsInsert, dsEdit] then
    qryBeginObjDoc.Post;

  IsPosted:=False;
  MainDM.Suachungtu(qryBeginObjDocDOC_ARISE.Value,qryBeginObjDocPERIOD_ARISE.AsInteger,qryBeginObjDocBRANCH_ID.Value);
  if IsPosted then
  begin
    qryBeginObjDoc.DisableControls;
    qryBeginObjDoc.Refresh;
    qryBeginObjDoc.EnableControls;
  end;
end;

procedure TObjDocBeginBalFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TObjDocBeginBalFrm.qryBeginObjDocAfterPost(DataSet: TDataSet);
begin
  if IsRefresh then
    qryBeginObjDoc.Refresh;
end;

end.

