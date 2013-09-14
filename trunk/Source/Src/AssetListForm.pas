unit AssetListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl, Forms,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid,dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList,DB,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  DBActns;

type
  TAssetListFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnIns: TELPopupButton;
    btnEdit: TELPopupButton;
    btnHelp: TELPopupButton;
    btnClose: TELPopupButton;
    btnDel: TELPopupButton;
    lciIns: TdxLayoutItem;
    lciEdit: TdxLayoutItem;
    lciDel: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBGrid1ASSET_ID: TdxDBGridColumn;
    dxDBGrid1GROUP_ID: TdxDBGridColumn;
    dxDBGrid1ACCOUNT_ID: TdxDBGridColumn;
    dxDBGrid1ASSET_NAME: TdxDBGridColumn;
    dxDBGrid1ORIGIN_COST: TdxDBGridColumn;
    dxDBGrid1USING_PART: TdxDBGridColumn;
    dxBarManager1: TdxBarManager;
    pmAsset: TdxBarPopupMenu;
    ActionList1: TActionList;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    acExcel: TAction;
    acHTML: TAction;
    acXML: TAction;
    acGenAmor: TAction;
    dxBarButton11: TdxBarButton;
    chkAutoHeight: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxDBGrid1Column14: TdxDBGridColumn;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1ASSET_NOTES: TdxDBGridColumn;
    bbtnReadExcel: TdxBarButton;
    dxDBGrid1Column15: TdxDBGridColumn;
    acDelete: TDataSetDelete;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnRefresh: TElPopupButton;
    dxDBGrid1USEOBJECT_DETAIL_1: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acExcelExecute(Sender: TObject);
    procedure acHTMLExecute(Sender: TObject);
    procedure acXMLExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure acGenAmorExecute(Sender: TObject);
    procedure chkAutoHeightClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnReadExcelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssetListFrm: TAssetListFrm;

implementation

uses MainForm, MainDataMdl, AssetForm, GlobalUnit, LookupFrm,
  AssetHistoryForm, HtmlHlp;

{$R *.dfm}

procedure TAssetListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainDM.qryAssetList.Close;
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TAssetListFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;
  AssetListFrm:=nil;
end;

procedure TAssetListFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  btnIns.Enabled := SSPUserRight[3].IR ;
  btnDel.Enabled := SSPUserRight[3].DR ;
  acGenAmor.Enabled:=SSPUserRight[3].ER;
  bbtnReadExcel.Enabled:=btnIns.Enabled and (CurrentPeriod=BeginPeriod);
  
  dxDBGrid1ORIGIN_COST.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1Column8.SummaryFooterFormat:=TIENTE_FORMAT;
  dxDBGrid1Column9.SummaryFooterFormat:=TIENTE_FORMAT;


  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;
  

  MainDM.qryAssetList.Open;
end;

procedure TAssetListFrm.btnEditClick(Sender: TObject);
begin
  if MainDM.qryAssetList.RecordCount=0 then exit;
  SohieuTSCD:=MainDM.qryAssetListOBJECT_ID.Value;
  with TAssetFrm.Create(Self) do
  try
    ShowModal;
{    if ShowModal=mrOK then
      MainDM.qryAssetList.Refresh;}
  finally
    free;
  end;
end;

procedure TAssetListFrm.btnInsClick(Sender: TObject);
begin
  SohieuTSCD:='';
  AssetAccountID:='';
  AssetDocInID:='';
  AssetDocInDate:=WorkingDate;

  with TAssetFrm.Create(Self) do
  try
    ShowModal;
{    if ShowModal=mrOK then
      MainDM.qryAssetList.Refresh;}
  finally
    free;
  end;
end;

procedure TAssetListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TAssetListFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TAssetListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_Return) and (dxDBGrid1.FocusedField.FieldName<>'AMOR_VALUE') then
    btnEditClick(Sender)
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;                                                                           

procedure TAssetListFrm.acExcelExecute(Sender: TObject);
begin
  ExportToExcel(dxDBGrid1);
end;

procedure TAssetListFrm.acHTMLExecute(Sender: TObject);
begin
  ExportToHTML(dxDBGrid1);
end;

procedure TAssetListFrm.acXMLExecute(Sender: TObject);
begin
  ExportToXML(dxDBGrid1);
end;

procedure TAssetListFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TAssetListFrm.acGenAmorExecute(Sender: TObject);
begin
  if ShowMessageUnicode(122,'',4)=7 then
    exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_PHATSINHKHAUHAO(:KYHT,1,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    ExecSQL;
    Close;
  end;
  MainDM.qryAssetList.Refresh;
end;

procedure TAssetListFrm.chkAutoHeightClick(Sender: TObject);
begin
  if chkAutoHeight.Checked then
    dxDBGrid1.OptionsView := dxDBGrid1.OptionsView + [edgoRowAutoHeight]
  else
    dxDBGrid1.OptionsView := dxDBGrid1.OptionsView - [edgoRowAutoHeight];
end;

procedure TAssetListFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TAssetListFrm.dxBarButton1Click(Sender: TObject);
begin
  with TAssetHistoryFrm.Create(Self) do
  try
    qryAssetHistory.ParamByName('ASSET_ID').Value := MainDM.qryAssetListOBJECT_ID.Value;
    qryAssetHistory.ParamByName('ASSET_ID').Value := vpBranch_id;
    qryAssetHistory.Open;

    ShowModal;
  finally
    Free;
  end;
end;

procedure TAssetListFrm.dxBarButton2Click(Sender: TObject);
begin
  if ShowMessageUnicode(123,'',4)=7 then
    exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_PHATSINHKHAUHAO(:KYHT,0,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  MainDM.qryAssetList.Refresh;
end;

procedure TAssetListFrm.FormActivate(Sender: TObject);
begin
MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TAssetListFrm.bbtnReadExcelClick(Sender: TObject);
begin
  if ShowMessageUnicode(124,'',4)=6 then
    MainDM.ImportTSCDFromExcel;
end;

procedure TAssetListFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAssetListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TAssetListFrm.btnRefreshClick(Sender: TObject);
begin
  Maindm.qryAssetList.Refresh;
end;

end.
