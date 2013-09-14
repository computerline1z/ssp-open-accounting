unit AccDetailForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption;

type
  TAccDetailFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
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
    qryObjAriseSHTK: TWideStringField;
    qryObjAriseTENTK: TWideStringField;
    qryObjAriseNODK: TIBOFloatField;
    qryObjAriseCODK: TIBOFloatField;
    qryObjAriseNOPS: TIBOFloatField;
    qryObjAriseCOPS: TIBOFloatField;
    qryObjAriseNOCK: TIBOFloatField;
    qryObjAriseCOCK: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdKHDblClick(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton4Click(Sender: TObject);
    procedure bbtnFilterClick(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure grdKHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    AParamMADT:WideString;
    AParamLOAIDT:Smallint;
  end;

var
  AccDetailFrm: TAccDetailFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TAccDetailFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self,0);
  locForm.EndUpdate;

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
end;
procedure TAccDetailFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TAccDetailFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TAccDetailFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TAccDetailFrm.btnDetailClick(Sender: TObject);
var sqlSel:Widestring;
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
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryObjAriseSHTK.Value;
    qryDocListAnyWhere.ParamByName('AMADT').Value:=APAramMADT;
    qryDocListAnyWhere.ParamByName('ALOAIDT').AsInteger:=APAramLOAIDT;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').asstring:=vpBranch_id;

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

  if IsPosted then
  begin
    qryObjArise.DisableControls;
    qryObjArise.Close;
    qryObjArise.Open;
    qryObjArise.EnableControls;
  end;
end;

procedure TAccDetailFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TAccDetailFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TAccDetailFrm.dxBarButton4Click(Sender: TObject);
begin
  qryObjArise.Refresh;
end;

procedure TAccDetailFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TAccDetailFrm.grdKHEnter(Sender: TObject);
begin
  if qryObjArise.Active=False then
    qryObjArise.Open;
end;

procedure TAccDetailFrm.grdKHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if qryObjArise.Active=False then
    qryObjArise.Open;
end;

procedure TAccDetailFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    pm.PopupFromCursorPos;
  end;
end;

procedure TAccDetailFrm.FormShow(Sender: TObject);
begin
  qryObjArise.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryObjArise.ParamByName('MADT').Value:=APAramMADT;
  qryObjArise.ParamByName('LOAIDT').Value:=APAramLOAIDT;
  qryObjArise.ParamByName('BRANCH_ID').Value:=vpBranch_id;
  qryObjArise.Open;
  SetVisible(Self);  
end;

procedure TAccDetailFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
