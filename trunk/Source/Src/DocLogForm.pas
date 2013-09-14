unit DocLogForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,
  ElCaption,RichEdit, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxGrClms;
const
  HistoryOfDeleted=0;
  HistoryOfADoc=1;
  HistoryOfAnUser=2;
type
  TDocLogFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    btnDeleteAll: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    btnDelete: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    dxDBGrid1USER_ID: TdxDBGridMaskColumn;
    dxDBGrid1TIME_POINT: TdxDBGridDateColumn;
    dxDBGrid1SOPHIEU: TdxDBGridMaskColumn;
    btnXemPhieu: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    dxDBGrid1LOG_CONTENT: TdxDBGridColumn;
    dxDBGrid1BRANCH_ID: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDeleteAllClick(Sender: TObject);
    procedure btnXemPhieuClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ElPopupButton3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    HistoryType:Smallint;//0: Deleted Doc, 1:History of A Doc; 2:History of an User.
    { Public declarations }
  end;

var
  DocLogFrm: TDocLogFrm;

implementation

uses GlobalInterface, MainDataMdl, DB, IBODataset, GlobalUnit, LookupFrm,
  PopupForm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TDocLogFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  btnDelete.Enabled:= SSPUserRight[15].DR;
  btnDeleteAll.Enabled:= SSPUserRight[15].DR;
end;

procedure TDocLogFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainDM.qryDocLog.Close;
end;

procedure TDocLogFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
  begin
    if btnXemPhieu.Visible then
      btnXemPhieuClick(Sender);
  end
  else if Key=VK_DELETE then
  begin
    if btnDelete.Enabled then
      btnDeleteClick(Sender);
  end
  else ProcessKeyDownInGrid(dxDBGrid1,Key,Shift,False);
end;

procedure TDocLogFrm.btnDeleteClick(Sender: TObject);
begin
  if ShowMessageUnicode(23,'',4)=6 then
  try
    if MainDM.qryDocLog.RecordCount>0 then
      MainDM.qryDocLog.Delete;
  except
  end;
end;

procedure TDocLogFrm.btnDeleteAllClick(Sender: TObject);
begin
  if ShowMessageUnicode(23,'',4)=7 then exit;
  if MainDM.qryDocLog.RecordCount=0 then Exit;
    
  MainDM.qryCommon.Close;
  with MainDM do
  case HistoryType of
    HistoryOfDeleted:
    begin
      qryCommon.SQL.Text:='delete from doc_log where PERIOD_ID is Null';
    end;
    HistoryOfADoc:
    begin
      qryCommon.SQL.Text:='delete from doc_log where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID';
      qryCommon.ParamByName('PERIOD_ID').Value:=qryDocLogPERIOD_ID.AsInteger;
      qryCommon.ParamByName('DOC_ID').Value:=qryDocLogDOC_ID.Value;
    end;
    HistoryOfAnUser:
    begin
      qryCommon.SQL.Text:='delete from doc_log where USER_ID=:USER_ID';
      qryCommon.ParamByName('USER_ID').Value :=qryDocLogUSER_ID.Value;
    end;
  end;

  MainDM.qryCommon.ExecSQL;
  MainDM.qryCommon.Close;
  MainDM.qryDocLog.Refresh;
end;

procedure TDocLogFrm.btnXemPhieuClick(Sender: TObject);
begin
  with MainDM do
  begin
    Suachungtu(qryDocLogDOC_ID.Value, qryDocLogPERIOD_ID.AsInteger,qryDocLogBRANCH_ID.Value);
    qryDocLog.Refresh;
  end;
end;

procedure TDocLogFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  if btnXemPhieu.Visible then
    btnXemPhieuClick(Sender);
end;

procedure TDocLogFrm.ElPopupButton1Click(Sender: TObject);
begin
  ExportToExcel(dxDBGrid1);
end;

procedure TDocLogFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TDocLogFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TDocLogFrm.ElPopupButton3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(18);
end;

procedure TDocLogFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TDocLogFrm.ElPopupButton3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
end;

end.
