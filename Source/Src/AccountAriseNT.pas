unit AccountAriseNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption;

type
  TAccountAriseNTFrm = class(TForm)
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
    grdAccountAriseColumn9: TdxDBGridColumn;
    dxBarButton5: TdxBarButton;
    grdAccountAriseNODK: TdxDBGridCalcColumn;
    grdAccountAriseCODK: TdxDBGridCalcColumn;
    grdAccountAriseNOPS: TdxDBGridCalcColumn;
    grdAccountAriseCOPS: TdxDBGridCalcColumn;
    grdAccountAriseNOCK: TdxDBGridCalcColumn;
    grdAccountAriseCOCK: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    grdAccountAriseColumn10: TdxDBGridColumn;
    grdAccountAriseTENTK_TA: TdxDBGridMaskColumn;
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
    procedure grdAccountAriseEnter(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure grdAccountAriseMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
  AccountAriseNTFrm: TAccountAriseNTFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TAccountAriseNTFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
  
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;

  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  with MainDM.qryAriseNT do
  begin
    ParamByName('kyht').Value :=CurrentPeriod;
    ParamByName('branch_id').Value :=vpBranch_id;
    Open;
  end;
  grdAccountAriseNODK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdAccountAriseCODK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdAccountAriseNOPS.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdAccountAriseCOPS.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdAccountAriseNOCK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdAccountAriseCOCK.SummaryFooterFormat:=SOLUONG_FORMAT;

  btnRutSodu.Enabled := SSPUserRight[12].ER;
  if BeginPeriod=CurrentPeriod then
    btnRutSodu.Caption :=UTF8Decode('Tính lại số dư đầu kỳ')
  else
    btnRutSodu.Caption :=UTF8Decode('Rút số dư cuối kỳ trước');
end;

procedure TAccountAriseNTFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  with MainDM.qryAriseNT do
  begin
    Close;
  end;
  Action:=caFree;
  with MainFrm do
  MyMDIChildCount:= MyMDIChildCount-1;
  with MainFrm do
  if MDIChildCount=1 then
    PnlMain.Visible := True;
end;

procedure TAccountAriseNTFrm.FormDestroy(Sender: TObject);
begin
   with MainFrm.bbWindowList.Items do
      Delete(IndexOfObject(Self));
   AccountAriseNTFrm:=nil;
end;

procedure TAccountAriseNTFrm.FormShow(Sender: TObject);
begin
  MainFrm.PnlMain.Visible := False;
  SetVisible(Self);
  if CurLanguage=2 then
  begin
    grdAccountAriseTENTK_TA.Visible := TRUE;
    grdAccountAriseColumn10.Visible := False;
  end
  else
  begin
    grdAccountAriseTENTK_TA.Visible := False;
    grdAccountAriseColumn10.Visible := True;
  end
end;

procedure TAccountAriseNTFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdAccountArise);
end;

procedure TAccountAriseNTFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdAccountArise);
end;

procedure TAccountAriseNTFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdAccountArise);
end;

procedure TAccountAriseNTFrm.btnDetailClick(Sender: TObject);
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSelectDocList + ' where (TKNO=:ASHTK OR TKCO=:ASHTK) and MATT=:AMATT';

    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryAriseNTSHTK.Value;
    qryDocListAnyWhere.ParamByName('AMATT').Value:=qryAriseNTCURRENCY_ID.Value;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
  end;
  IsPosted:=False;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    if IsPosted then
    begin
      qryAriseNT.DisableControls;
      qryAriseNT.Refresh;
      qryAriseNT.EnableControls;
    end;

    Exit;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;

  if IsPosted then
  begin
    MainDM.qryAriseNT.DisableControls;
    MainDM.qryAriseNT.Refresh;
    MainDM.qryAriseNT.EnableControls;
  end;
end;

procedure TAccountAriseNTFrm.grdAccountAriseDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TAccountAriseNTFrm.grdAccountAriseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdAccountArise, Key, Shift, False);
end;

procedure TAccountAriseNTFrm.grdAccountAriseChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  if ((MainDM.qryAriseNTNOPS.AsFloat=0) and (MainDM.qryAriseNTCOPS.AsFloat=0)) then
    btnDetail.Enabled:=False
  else
    btnDetail.Enabled:=True;
end;

procedure TAccountAriseNTFrm.dxBarButton4Click(Sender: TObject);
begin
  MainDM.qryAriseNT.Refresh;
end;

procedure TAccountAriseNTFrm.btnRutSoduClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  if BeginPeriod=CurrentPeriod then
  begin
    with MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text :='execute procedure SP_TINHLAISODUDK(:KYHT,:BRANCH_ID)';
      Prepare;

      ParamByName('KYHT').Value := CurrentPeriod;
      ParamByName('BRANCH_ID').Value := vpBranch_id; 
      ExecSQL;
      Close;
    end;
    MainDM.qryAriseNT.Refresh;
    Screen.Cursor:=crDefault;
    ShowMessageUnicode(132);
  end
  else
  begin
    with MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_TK_NT(:KYHT,:BRANCH_ID)';
      Prepare;

      ParamByName('KYHT').Value := CurrentPeriod-1;
      ParamByName('BRANCH_ID').Value := vpBranch_id; 
      ExecSQL;
      Close;
    end;
    MainDM.qryAriseNT.Refresh;
    Screen.Cursor:=crDefault;
    ShowMessageUnicode(117);
  end;
end;

procedure TAccountAriseNTFrm.grdAccountAriseEnter(Sender: TObject);
begin
  if not MainDM.qryAriseNT.Active then
    MainDM.qryAriseNT.Open;
end;

procedure TAccountAriseNTFrm.dxBarButton5Click(Sender: TObject);
begin
  grdAccountArise.Filter.Active:=dxBarButton5.Down;
end;

procedure TAccountAriseNTFrm.grdAccountAriseMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if not MainDM.qryAriseNT.Active then
    MainDM.qryAriseNT.Open;
end;

procedure TAccountAriseNTFrm.grdAccountAriseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TAccountAriseNTFrm.FormActivate(Sender: TObject);
begin
MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TAccountAriseNTFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Tinhhinhphatsinh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

end.
