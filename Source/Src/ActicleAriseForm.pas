
unit ActicleAriseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,DateUtils,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBTLLnk;

type
  TActicleAriseFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryItem: TIBOQuery;
    dsItem: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem1: TdxLayoutItem;
    locFormItem19: TdxLayoutItem;
    btnHelp: TELPopupButton;
    locFormItem20: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormGroup4: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    qryItemMASO: TWideStringField;
    qryItemTENHM: TWideStringField;
    qryItemMANHOM: TWideStringField;
    qryItemPHATSINH: TIBOFloatField;
    qryItemLUYKE: TIBOFloatField;
    qryItemMACHA: TWideStringField;
    qryItemKYSO: TWideStringField;
    qryItemALEVEL: TSmallintField;
    dxDBTreeList1MASO: TdxDBTreeListMaskColumn;
    dxDBTreeList1TENHM: TdxDBTreeListMaskColumn;
    dxDBTreeList1MANHOM: TdxDBTreeListMaskColumn;
    dxDBTreeList1PHATSINH: TdxDBTreeListMaskColumn;
    dxDBTreeList1LUYKE: TdxDBTreeListMaskColumn;
    dxDBTreeList1KYSO: TdxDBTreeListMaskColumn;
    dxDBTreeList1ALEVEL: TdxDBTreeListMaskColumn;
    dxDateEdit1: TdxDateEdit;
    locFormItem2: TdxLayoutItem;
    dxDateEdit2: TdxDateEdit;
    locFormItem3: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxDBTreeListReportLink;
    ElPopupButton2: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure dxDBTreeList1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActicleAriseFrm: TActicleAriseFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, ActicleGroupForm, PopupForm, DocListForm,
  dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TActicleAriseFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qryItemPHATSINH.DisplayFormat:=TIENTE_FORMAT;
  qryItemLUYKE.DisplayFormat:=TIENTE_FORMAT;
    
  dxDateEdit1.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dxDateEdit2.Date:=EncodeDate(CurYear, CurMonth,DaysInMonth(dxDateEdit1.Date)) ;
  qryItem.ParamByName('tungay').AsDate:=dxDateEdit1.Date;
  qryItem.ParamByName('denngay').AsDate:=dxDateEdit2.Date;
  qryItem.ParamByName('branch_id').value := vpBranch_id;
  qryItem.Open;
end;

procedure TActicleAriseFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    dxDBTreeList1DblClick(Sender)
  else
    ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TActicleAriseFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TActicleAriseFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//    Application.HelpContext(21);
end;

procedure TActicleAriseFrm.ElPopupButton1Click(Sender: TObject);
begin
  qryItem.Close;
  qryItem.ParamByName('tungay').AsDate:=dxDateEdit1.Date;
  qryItem.ParamByName('denngay').AsDate:=dxDateEdit2.Date;
  qryItem.ParamByName('branch_id').value := vpBranch_id;
  qryItem.Open;
end;

procedure TActicleAriseFrm.ElPopupButton2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True,nil);
end;

procedure TActicleAriseFrm.dxDBTreeList1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  IF ANode.Parent=nil then
    AFont.Style:=AFont.Style+[fsBold];
end;

procedure TActicleAriseFrm.dxDBTreeList1DblClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name'
      + ' FROM macro_doclistngay(:tungay,:denngay,:USERNAME,:branch_id) where item_id starting with :item_id';
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tungay').AsDate:=dxDateEdit1.Date;
    qryDocListAnyWhere.ParamByName('denngay').AsDate:=dxDateEdit2.Date;
    qryDocListAnyWhere.ParamByName('item_id').Value:=qryItemMASO.Value;
    qryDocListAnyWhere.ParamByName('USERNAME').Value:=CurrentUser;
    qryDocListAnyWhere.ParamByName('branch_id').value := vpBranch_id;
    Screen.Cursor:=crHourGlass;
    qryDocListAnyWhere.Open;
    Screen.Cursor:=crDefault;

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
      qryItem.DisableControls;
      qryItem.Refresh;
      qryItem.EnableControls;
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
    qryItem.DisableControls;
    qryItem.Refresh;
    qryItem.EnableControls;
  end;
end;

procedure TActicleAriseFrm.ElPopupButton3Click(Sender: TObject);
begin
  dxDBTreeList1DblClick(Sender);
end;

procedure TActicleAriseFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TActicleAriseFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
