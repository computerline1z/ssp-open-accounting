unit AccDetailArise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption;

type
  TAccDetailAriseFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    grdKH: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    grdKHColumn3: TdxDBGridCalcColumn;
    grdKHColumn4: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    dxDBGridColumn5: TdxDBGridPopupColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btnRutSodu: TdxBarButton;
    bbtnFilter: TdxBarButton;
    grdKHColumn5: TdxDBGridCalcColumn;
    grdKHColumn6: TdxDBGridCalcColumn;
    grdKHColumn7: TdxDBGridCalcColumn;
    grdKHColumn8: TdxDBGridCalcColumn;
    pm: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    qryObjArise: TIBOQuery;
    dsObjArise: TDataSource;
    qryObjAriseMADT: TWideStringField;
    qryObjAriseLOAIDT: TSmallintField;
    qryObjAriseTENDT: TWideStringField;
    qryObjAriseSHTK: TWideStringField;
    qryObjAriseNODK: TIBOFloatField;
    qryObjAriseCODK: TIBOFloatField;
    qryObjAriseNOPS: TIBOFloatField;
    qryObjAriseCOPS: TIBOFloatField;
    qryObjAriseNOCK: TIBOFloatField;
    qryObjAriseCOCK: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdKHDblClick(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
    procedure btnRutSoduClick(Sender: TObject);
    procedure bbtnFilterClick(Sender: TObject);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure grdKHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryObjAriseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccDetailAriseFrm: TAccDetailAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TAccDetailAriseFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self,0);
  locForm.EndUpdate;

  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  grdKHColumn3.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn4.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn5.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn6.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn7.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColumn8.SummaryFooterFormat:=TIENTE_FORMAT;
  qryObjAriseNODK.DisplayFormat:=TIENTE_FORMAT;
  qryObjAriseCODK.DisplayFormat:=TIENTE_FORMAT;
  qryObjAriseNOPS.DisplayFormat:=TIENTE_FORMAT;
  qryObjAriseCOPS.DisplayFormat:=TIENTE_FORMAT;
  qryObjAriseNOCK.DisplayFormat:=TIENTE_FORMAT;
  qryObjAriseCOCK.DisplayFormat:=TIENTE_FORMAT;

  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    qryObjArise.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryObjArise.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryObjArise.Open;
  end;

  if BeginPeriod=CurrentPeriod then
    btnRutSodu.Enabled := False
  else
    btnRutSodu.Enabled := SSPUserRight[12].ER ;
end;
procedure TAccDetailAriseFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  AccDetailAriseFrm:= nil;
end;

procedure TAccDetailAriseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TAccDetailAriseFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TAccDetailAriseFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TAccDetailAriseFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TAccDetailAriseFrm.btnDetailClick(Sender: TObject);
var sqlSel,SHTK:Widestring;
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    if ((qryObjAriseNOPS.AsFloat=0) and (qryObjAriseCOPS.AsFloat=0)) then exit;
    sqlSel :=sqlSelectDocList + ' where ((TKNO = :ASHTK and DTNO=:AMADT and LOAINO=:ALOAIDT)';
    sqlSel :=sqlSel + ' OR (TKCO= :ASHTK and DTCO=:AMADT and LOAICO=:ALOAIDT))';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryPAccACCOUNT_ID.Value;
    qryDocListAnyWhere.ParamByName('AMADT').Value:=qryObjAriseMADT.Value;
    qryDocListAnyWhere.ParamByName('ALOAIDT').AsInteger:=qryPAccOTYPE_ID.AsInteger;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
  end;
  SHTK := MainDM.qryPAccACCOUNT_ID.Value;
  IsPosted:=False;
  with MainDM do
  if qryDocListAnyWhere.RecordCount=1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
            qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
  end
  else
  begin
    DocListFrm:=TDocListFrm.Create(Self);
    try
      DocListFrm.ShowModal;
    finally
      DocListFrm.Free;
    end;
  end;

  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
    qryPAcc.Locate('ACCOUNT_ID',SHTK,[]);
  end;

  if IsPosted then
  with MainDM do
  begin
    qryObjArise.DisableControls;
    qryObjArise.Close;
    qryObjArise.Open;
    qryObjArise.EnableControls;
  end;
end;

procedure TAccDetailAriseFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TAccDetailAriseFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, False);
end;

procedure TAccDetailAriseFrm.dxBarButton4Click(Sender: TObject);
begin
  qryObjArise.Refresh;
end;

procedure TAccDetailAriseFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  if MainDM.qryPAcc.Active=False then
    MainDM.qryPAcc.Open;
end;

procedure TAccDetailAriseFrm.btnRutSoduClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  if BeginPeriod=CurrentPeriod then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_OBJ(:KYHT,:BRANCH_ID)';


    Prepare;
    ParamByName('KYHT').Value := CurrentPeriod-1;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;

  qryObjArise.Refresh;
  Screen.Cursor:=crDefault;
  ShowMessageUnicode(117);
end;

procedure TAccDetailAriseFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TAccDetailAriseFrm.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  if FilterAccType<>3 then
  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
end;

procedure TAccDetailAriseFrm.grdKHEnter(Sender: TObject);
begin
  if qryObjArise.Active=False then
    qryObjArise.Open;
end;

procedure TAccDetailAriseFrm.grdKHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if qryObjArise.Active=False then
    qryObjArise.Open;
end;

procedure TAccDetailAriseFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    pm.PopupFromCursorPos;
  end;
end;

procedure TAccDetailAriseFrm.qryObjAriseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  with MainDM do
  Accept:=(qryObjAriseSHTK.Value=qryPAccACCOUNT_ID.Value) and (qryObjAriseLOAIDT.AsInteger=qryPAccOTYPE_ID.AsInteger);
end;

procedure TAccDetailAriseFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  qryObjArise.OnFilterRecord:=qryObjAriseFilterRecord;
  qryObjArise.Filtered:=True;
end;

procedure TAccDetailAriseFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TAccDetailAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Chitietphatsinh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TAccDetailAriseFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
