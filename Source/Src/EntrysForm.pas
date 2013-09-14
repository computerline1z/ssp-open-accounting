unit EntrysForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms, 
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  ElCaption;

type
  TEntrysFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdEntrys: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    grdEntrys_TkNO: TdxDBGridColumn;
    grdEntrys_TKCO: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    grdEntrys_SP: TdxDBGridColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    grdEntrys_DTNo: TdxDBGridColumn;
    grdEntrys_DTCo: TdxDBGridColumn;
    bbtnFileter: TdxBarButton;
    bbtnGrp: TdxBarButton;
    grdEntrys_Diengiai: TdxDBGridColumn;
    grdEntrys_Sotien: TdxDBGridCalcColumn;
    grdEntrys_Ngay: TdxDBGridDateColumn;
    ElFormCaption1: TElFormCaption;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdEntrysDblClick(Sender: TObject);
    procedure grdEntrysKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton4Click(Sender: TObject);
    procedure bbtnFileterClick(Sender: TObject);
    procedure bbtnGrpClick(Sender: TObject);
    procedure grdEntrysCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure grdEntrysMouseUp(Sender: TObject; Button: TMouseButton;
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
  EntrysFrm: TEntrysFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TEntrysFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
  
  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;

  with MainDM.qryEntrys do
  begin
    ParamByName('tuky').Value :=CurrentPeriod;
    ParamByName('denky').Value :=CurrentPeriod;
    ParamByName('branch_id').Value := vpBranch_id;
    Open;
  end;
  grdEntrys_Sotien.SummaryFooterFormat:=TIENTE_FORMAT;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
end;

procedure TEntrysFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  MainDM.qryEntrys.Close;
  Action:=caFree;
  with MainFrm do
  MyMDIChildCount:= MyMDIChildCount-1;
  with MainFrm do
  if MDIChildCount=1 then
    PnlMain.Visible := True;
end;

procedure TEntrysFrm.FormDestroy(Sender: TObject);
begin
   with MainFrm.bbWindowList.Items do
      Delete(IndexOfObject(Self));
   EntrysFrm:=nil;
end;

procedure TEntrysFrm.FormShow(Sender: TObject);
begin
  MainFrm.PnlMain.Visible := False;
  SetVisible(Self);  
end;

procedure TEntrysFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdEntrys);
end;

procedure TEntrysFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdEntrys);
end;

procedure TEntrysFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdEntrys);
end;

procedure TEntrysFrm.btnDetailClick(Sender: TObject);
begin
  IsPosted:=False;
  with MainDM do
  begin
    if qryEntrys.RecordCount=0 then exit;
    Suachungtu(MainDM.qryEntrysSOPHIEU.Value, CurrentPeriod,MainDM.qryEntrysBRANCH_ID.Value);
    if IsPosted then
    begin
      qryEntrys.DisableControls;
      qryEntrys.Close;
      qryEntrys.Open;
      qryEntrys.EnableControls;
    end;
  end;
end;

procedure TEntrysFrm.grdEntrysDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TEntrysFrm.grdEntrysKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdEntrys, Key, Shift, False);
end;

procedure TEntrysFrm.dxBarButton4Click(Sender: TObject);
begin
  MainDM.qryEntrys.Close;
  MainDM.qryEntrys.Open;
end;

procedure TEntrysFrm.bbtnFileterClick(Sender: TObject);
begin
  grdEntrys.Filter.Active := bbtnFileter.Down;
end;

procedure TEntrysFrm.bbtnGrpClick(Sender: TObject);
begin
  grdEntrys.ShowGroupPanel:= bbtnGrp.Down;
end;

procedure TEntrysFrm.grdEntrysCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Index mod 2=1 then
    AColor:= clInfoBk;
end;

procedure TEntrysFrm.grdEntrysMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TEntrysFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TEntrysFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Nhatkychungthang.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

end.
