unit AccountArise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption;

type
  TAccountAriseFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAccountArise: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    grdAccountAriseUnit_ID: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btnRutSodu: TdxBarButton;
    grdAccountAriseNODK: TdxDBGridCalcColumn;
    grdAccountAriseCODK: TdxDBGridCalcColumn;
    grdAccountAriseNOPS: TdxDBGridCalcColumn;
    grdAccountAriseCOPS: TdxDBGridCalcColumn;
    grdAccountAriseNOCK: TdxDBGridCalcColumn;
    grdAccountAriseCOCK: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    grdAccountAriseColumn8: TdxDBGridColumn;
    grdAccountAriseTENTA: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdAccountAriseDblClick(Sender: TObject);
    procedure grdAccountAriseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAccountAriseChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnRutSoduClick(Sender: TObject);
    procedure grdAccountAriseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountAriseFrm: TAccountAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TAccountAriseFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);

  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  
  MainFrm.MyMDIChildCount := MainFrm.MyMDIChildCount+1;
  with MainDM do
  begin
    qryAccountArise.ParamByName('tuky').Value := CurrentPeriod;
    qryAccountArise.ParamByName('denky').Value := CurrentPeriod;
    qryAccountArise.ParamByName('branch_id').Value := vpBranch_id;
    qryAccountArise.Open;
  end;

  grdAccountAriseNODK.SummaryFooterFormat := TIENTE_FORMAT;
  grdAccountAriseCODK.SummaryFooterFormat := TIENTE_FORMAT;
  grdAccountAriseNOPS.SummaryFooterFormat := TIENTE_FORMAT;
  grdAccountAriseCOPS.SummaryFooterFormat := TIENTE_FORMAT;
  grdAccountAriseNOCK.SummaryFooterFormat := TIENTE_FORMAT;
  grdAccountAriseCOCK.SummaryFooterFormat := TIENTE_FORMAT;

  btnRutSodu.Enabled := SSPUserRight[12].ER;
  if BeginPeriod = CurrentPeriod then
  begin
    btnRutSodu.Caption := UTF8Decode('Tính lại số dư của các TK có chi tiết');
    dxBarManager1.ShowHint := True;
  end
  else
    btnRutSodu.Caption := UTF8Decode('Rút số dư cuối kỳ trước');
end;

procedure TAccountAriseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption := '';
  MainDM.qryAccountArise.Close;
  Action := caFree;
  with MainFrm do
  MyMDIChildCount := MyMDIChildCount-1;
  with MainFrm do
  if MDIChildCount = 1 then
    PnlMain.Visible := True;
end;

procedure TAccountAriseFrm.FormDestroy(Sender: TObject);
begin
   with MainFrm.bbWindowList.Items do
      Delete(IndexOfObject(Self));
   AccountAriseFrm := nil;
end;

procedure TAccountAriseFrm.FormShow(Sender: TObject);
begin
  MainFrm.PnlMain.Visible := False;
  SetVisible(Self);
  if CurLanguage=2 then
  begin
    grdAccountAriseTENTA.Visible := TRUE;
    grdAccountAriseColumn8.Visible := False;
  end
  else
  begin
    grdAccountAriseTENTA.Visible := False;
    grdAccountAriseColumn8.Visible := TRUE;
  end
end;

procedure TAccountAriseFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdAccountArise);
end;

procedure TAccountAriseFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdAccountArise);
end;

procedure TAccountAriseFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdAccountArise);
end;

procedure TAccountAriseFrm.btnDetailClick(Sender: TObject);
const
  sqlSel = 'SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclistky(:kyht,:kyht,:username,:branch_id)'
      + ' where tkno starting with :shtk or tkco starting with :shtk';
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text := sqlSel;
    qryDocListAnyWhere.ParamByName('kyht').AsInteger := CurrentPeriod;
    qryDocListAnyWhere.ParamByName('shtk').Value := qryAccountAriseSHTK.Value;
    qryDocListAnyWhere.ParamByName('username').Value := CurrentUser;
    qryDocListAnyWhere.ParamByName('branch_id').Value := vpBranch_id;
    Screen.Cursor := crHourGlass;
    qryDocListAnyWhere.Open;
    Screen.Cursor := crDefault;

    if qryDocListAnyWhere.RecordCount = 0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
  end;
  IsPosted := False;
  with MainDM do
  if qryDocListAnyWhere.RecordCount = 1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
            qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    if IsPosted then
    begin
      qryAccountArise.DisableControls;
      qryAccountArise.Refresh;
      qryAccountArise.EnableControls;
    end;
    Exit;
  end;
  DocListFrm := TDocListFrm.Create(Self);
  try
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;

  if IsPosted then
  begin
    MainDM.qryAccountArise.DisableControls;
    MainDM.qryAccountArise.Refresh;
    MainDM.qryAccountArise.EnableControls;
  end;
end;

procedure TAccountAriseFrm.grdAccountAriseDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TAccountAriseFrm.grdAccountAriseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdAccountArise, Key, Shift, False);
end;

procedure TAccountAriseFrm.grdAccountAriseChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  if ((MainDM.qryAccountAriseNOPS.AsFloat = 0) and (MainDM.qryAccountAriseCOPS.AsFloat = 0)) then
    btnDetail.Enabled := False
  else
    btnDetail.Enabled := True;
end;

procedure TAccountAriseFrm.dxBarButton4Click(Sender: TObject);
begin
  MainDM.qryAccountArise.Refresh;
end;

procedure TAccountAriseFrm.btnRutSoduClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if BeginPeriod = CurrentPeriod then
  begin
    with MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text := 'execute procedure SP_TINHLAISODUDK(:KYHT,:BRANCH_ID)';
      Prepare;

      ParamByName('KYHT').Value := CurrentPeriod;
      ParamByName('BRANCH_ID').Value := vpBranch_id;
      ExecSQL;
      Close;
    end;
    MainDM.qryAccountArise.Refresh;
    Screen.Cursor := crDefault;
    ShowMessageUnicode(132);
  end
  else
  begin
    with MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text := 'execute procedure SP_KC_KETCHUYENSODU_TK(:KYHT,:BRANCH_ID)';
      Prepare;

      ParamByName('KYHT').Value := CurrentPeriod-1;
      ParamByName('BRANCH_ID').Value := vpBranch_id;
      ExecSQL;
      Close;
    end;
    MainDM.qryAccountArise.Refresh;
    Screen.Cursor := crDefault;
    ShowMessageUnicode(117);
  end;
end;

procedure TAccountAriseFrm.grdAccountAriseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TAccountAriseFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption := ' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TAccountAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Tinhhinhphatsinh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

end.
