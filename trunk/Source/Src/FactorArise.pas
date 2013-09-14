unit FactorArise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption;

type
  TFactorlAriseFrm = class(TForm)
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
    pm: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    bbtnFilter: TdxBarButton;
    grdKHColumn5: TdxDBGridCalcColumn;
    grdKHColumn6: TdxDBGridCalcColumn;
    grdKHColumn7: TdxDBGridCalcColumn;
    grdKHColumn8: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    qryBalArise: TIBOQuery;
    dsBalArise: TDataSource;
    qryBalAriseLOAIDT: TSmallintField;
    qryBalAriseMADT: TWideStringField;
    qryBalAriseSHTK: TWideStringField;
    qryBalAriseTENDT: TWideStringField;
    qryBalAriseCOCK: TIBOFloatField;
    qryBalAriseCODK: TIBOFloatField;
    qryBalAriseCOPS: TIBOFloatField;
    qryBalAriseNOCK: TIBOFloatField;
    qryBalAriseNODK: TIBOFloatField;
    qryBalAriseNOPS: TIBOFloatField;
    qryBalAriseMAYT: TWideStringField;
    qryBalAriseLOAIYT: TSmallintField;
    grdKHMAYT: TdxDBGridMaskColumn;
    grdKHSHTK: TdxDBGridMaskColumn;
    qryBalAriseKF: TWideStringField;
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
    procedure bbtnFilterClick(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure grdKHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
  FactorlAriseFrm: TFactorlAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TFactorlAriseFrm.FormCreate(Sender: TObject);
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
  qryBalAriseNODK.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseCODK.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseNOPS.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseCOPS.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseNOCK.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseCOCK.DisplayFormat:=TIENTE_FORMAT;
  qryBalArise.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBalArise.ParamByName('BRANCH_ID').Value:=vpBranch_id;
  qryBalArise.Open;
end;
procedure TFactorlAriseFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  FactorlAriseFrm:= nil;
end;

procedure TFactorlAriseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TFactorlAriseFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TFactorlAriseFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TFactorlAriseFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TFactorlAriseFrm.btnDetailClick(Sender: TObject);
var sqlSel:Widestring;
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    if ((qryBalAriseNOPS.AsFloat=0) and (qryBalAriseCOPS.AsFloat=0)) then exit;
    sqlSel :=sqlSelectDocList + ' where ((TKNO = :ASHTK and DTNO=:AMADT and LOAINO=:ALOAIDT and YTNO=:AMAYT and LOAIYTNO=:ALOAIYT)';
    sqlSel :=sqlSel + ' OR (TKCO= :ASHTK and DTCO=:AMADT and LOAICO=:ALOAIDT and YTCO=:AMAYT and LOAIYTCO=:ALOAIYT))';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryBalAriseSHTK.Value;;
    qryDocListAnyWhere.ParamByName('AMADT').Value:=qryBalAriseMADT.Value;
    qryDocListAnyWhere.ParamByName('ALOAIDT').AsInteger:=qryBalAriseLOAIDT.Value;
    qryDocListAnyWhere.ParamByName('AMAYT').Value:=qryBalAriseMAYT.Value;
    qryDocListAnyWhere.ParamByName('ALOAIYT').AsInteger:=qryBalAriseLOAIYT.Value;
    qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
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
end;

procedure TFactorlAriseFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TFactorlAriseFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin   
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TFactorlAriseFrm.dxBarButton4Click(Sender: TObject);
begin
  qryBalArise.Refresh;
end;

procedure TFactorlAriseFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TFactorlAriseFrm.grdKHEnter(Sender: TObject);
begin
  if not qryBalArise.Active then
    qryBalArise.Open;
end;

procedure TFactorlAriseFrm.grdKHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  qryBalArise.Open;
end;

procedure TFactorlAriseFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    pm.PopupFromCursorPos;
  end;
end;

procedure TFactorlAriseFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TFactorlAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFactorlAriseFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
