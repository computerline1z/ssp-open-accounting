unit FactorDetailForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TFactorDetailFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    pm: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    bbtnFilter: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qryBalArise: TIBOQuery;
    dsBalArise: TDataSource;
    qryBalAriseSHTK: TWideStringField;
    qryBalAriseMADT: TWideStringField;
    qryBalAriseLOAIDT: TSmallintField;
    qryBalAriseMANT: TWideStringField;
    qryBalAriseCOPS: TIBOFloatField;
    qryBalAriseNOPS: TIBOFloatField;
    grdKHSHTK: TdxDBGridMaskColumn;
    grdKHMADT: TdxDBGridMaskColumn;
    grdKHMANT: TdxDBGridMaskColumn;
    grdKHCOPS: TdxDBGridMaskColumn;
    grdKHNOPS: TdxDBGridMaskColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    qryBalAriseNTCOPS: TIBOFloatField;
    qryBalAriseNTNOPS: TIBOFloatField;
    grdKHNTCOPS: TdxDBGridMaskColumn;
    grdKHNTNOPS: TdxDBGridMaskColumn;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    MAYT:WideString;
    { Public declarations }
  end;

var
  FactorDetailFrm: TFactorDetailFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TFactorDetailFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self,0);
  locForm.EndUpdate;

  grdKHCOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHNOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHNTCOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHNTNOPS.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBalAriseCOPS.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseNOPS.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseNTCOPS.DisplayFormat:=TIENTE_FORMAT;
  qryBalAriseNTNOPS.DisplayFormat:=TIENTE_FORMAT;
end;
procedure TFactorDetailFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TFactorDetailFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TFactorDetailFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TFactorDetailFrm.btnDetailClick(Sender: TObject);
var sqlSel:Widestring;
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    if ((qryBalAriseNOPS.AsFloat=0) and (qryBalAriseCOPS.AsFloat=0)) then exit;
    sqlSel :=sqlSelectDocList + ' where ((TKNO = :ASHTK and YTNO=:AMAYT and LOAIYTNO=:ALOAIYT)';
    sqlSel :=sqlSel + ' OR (TKCO= :ASHTK and YTCO=:AMAYT and LOAIYTCO=:ALOAIYT))';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod-12;// Toi da la 12 thang
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod+12;
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryBalAriseSHTK.Value;
    qryDocListAnyWhere.ParamByName('AMAYT').Value:=MAYT;
    qryDocListAnyWhere.ParamByName('ALOAIYT').AsInteger:=8;
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

procedure TFactorDetailFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TFactorDetailFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin   
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TFactorDetailFrm.dxBarButton4Click(Sender: TObject);
begin
  qryBalArise.Refresh;
end;

procedure TFactorDetailFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TFactorDetailFrm.grdKHEnter(Sender: TObject);
begin
  if not qryBalArise.Active then
    qryBalArise.Open;
end;

procedure TFactorDetailFrm.grdKHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  qryBalArise.Open;
end;

procedure TFactorDetailFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    pm.PopupFromCursorPos;
  end;
end;

procedure TFactorDetailFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFactorDetailFrm.ElPopupButton1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFactorDetailFrm.FormShow(Sender: TObject);
begin
  qryBalArise.ParamByName('MAYT').Value:=MAYT;
  qryBalArise.ParamByName('LOAIYT').Value:=8;
  qryBalArise.Open;
  SetVisible(Self);  
end;

end.
