unit CPDodangForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TCPDodangFrm = class(TForm)
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
    qryDodang: TIBOQuery;
    dsDodang: TDataSource;
    qryDodangPERIOD_ID: TSmallintField;
    qryDodangSHTK: TWideStringField;
    qryDodangCPDODANG: TIBOFloatField;
    qryDodangACCOUNT_NAME: TWideStringField;
    qryDodangENGLISH_NAME: TWideStringField;
    grdKHSHTK: TdxDBGridPopupColumn;
    grdKHCPDODANG: TdxDBGridCalcColumn;
    grdKHACCOUNT_NAME: TdxDBGridColumn;
    grdKHENGLISH_NAME: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDodangAfterInsert(DataSet: TDataSet);
    procedure qryDodangBeforeDelete(DataSet: TDataSet);
    procedure qryDodangBeforeEdit(DataSet: TDataSet);
    procedure qryDodangBeforeInsert(DataSet: TDataSet);
    procedure qryDodangNewRecord(DataSet: TDataSet);
    procedure qryDodangPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHSHTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CPDodangFrm: TCPDodangFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, HtmlHlp;

{$R *.dfm}

procedure TCPDodangFrm.FormCreate(Sender: TObject);
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
  end;
  qryDodangCPDODANG.DisplayFormat:=TIENTE_FORMAT;

  qryDodang.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryDodang.Open;

  grdKHACCOUNT_NAME.Visible:=(CurLanguage<>2);
  grdKHENGLISH_NAME.Visible:=(CurLanguage=2);

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TCPDodangFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
  Application.HelpContext(12);
end;

procedure TCPDodangFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,3);
end;

procedure TCPDodangFrm.qryDodangAfterInsert(DataSet: TDataSet);
begin
  qryDodangSHTK.FocusControl;
end;

procedure TCPDodangFrm.qryDodangBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TCPDodangFrm.qryDodangBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TCPDodangFrm.qryDodangBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TCPDodangFrm.qryDodangNewRecord(DataSet: TDataSet);
begin
  qryDodangPERIOD_ID.Value := CurrentPeriod;
end;

procedure TCPDodangFrm.qryDodangPostError(DataSet: TDataSet;
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
    qryDodangSHTK.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryDodangSHTK.FocusControl;
  end;
end;

procedure TCPDodangFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TCPDodangFrm.grdKHSHTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
    qryDodang.Edit;
    qryDodangENGLISH_NAME.Value:=MainDM.qryPAccENGLISH_NAME.Value;
    qryDodangACCOUNT_NAME.Value:=MainDM.qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TCPDodangFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TCPDodangFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
