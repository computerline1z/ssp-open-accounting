unit dxTreeGridMenus;

interface

uses
  Classes, Menus, Windows, dxDBGrid, dxTL, dxDBCtrl, dxDBTL, dxBar,ExtActns,
  Controls, Dialogs, XLSReadWriteII,IBODataset,Forms,SysUtils,dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPSdxTLLnk,dxPrnDev,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,ppReport,ppDBPipe,ppEndUsr;
type
  TdxCustomDBGridPopupMenu = class
  private
    fPopupMenu : TdxBarPopupMenu;
    fGrid : TCustomdxDBTreeListControl;
    fGridColumn : TdxDBGridColumn;
    fPGrid: ^TdxDBGrid;
    fParamGrid : Boolean;
  protected
    procedure CreateMenuItems; virtual; abstract;
    procedure BeforePopup; virtual;
    function AddMenuItem(ItemLink: TdxBarItemLinks; ACaption: string; AOnClick: TNotifyEvent; ATag: Integer; AGroup: Boolean): TdxBarButton;
    function AddSubMenuItem(ACaption: string; AGroup: Boolean): TdxBarSubItem;
  public
    constructor Create(ParamGrid: Boolean);
    destructor Destroy; override;
    procedure Popup(AGridColumn: TdxDBGridColumn; X, Y: Integer); virtual;
    procedure PopupFromCursor(AGrid:TdxDBGrid; AGridColumn: TdxDBGridColumn);
  end;
  TdxDBGridHeaderPopupMenu = class(TdxCustomDBGridPopupMenu)
  private
    fFooterItem: TdxBarButton;
    fSearchItem: TdxBarButton;
    fReplaceItem: TdxBarButton;
    fEditDataItem: TdxBarSubItem;
    fDeleteRowItem: TdxBarButton;
    fInsertRowItem: TdxBarButton;
    fCopyRowItem: TdxBarButton;
    fAppendRowItem: TdxBarButton;
    fFilterItem: TdxBarButton;
    fGroupItem: TdxBarButton;
    fViewItem : TdxBarSubItem;
    fExportItem: TdxBarSubItem;
    fImportFromXLSItem: TdxBarButton;
    fAutoHeightItem: TdxBarButton;
    fAutoWidthItem: TdxBarButton;
    fColumnSelector: TdxBarButton;
    fViewByExcel: TdxBarButton;
    fCompareWithExcel: TdxBarButton;
    fPrintItem: TdxBarSubItem;
    fExpandItem: TdxBarButton;
    fCollapseItem: TdxBarButton;
    fHeaderAlignmentItems: array[TAlignment] of TdxBarButton;
    procedure DoRemoveColumn(Sender: TObject);
    procedure DOColumnSelector(Sender: TObject);
    procedure DoAlign(Sender: TObject);
    procedure DoSearchData(Sender: TObject);
    procedure DoReplaceInGrid(Sender: TObject);
    procedure DoSetFilter(Sender: TObject);
    procedure Comparison(Sender: TObject);
    procedure DoImportFromExcel(Sender: TObject);
    procedure DoSetGroup(Sender: TObject);
    procedure DoPrinting(Sender: TObject);
    procedure DoSetFooter(Sender: TObject);
    procedure ExportToExcel(Sender:TObject);
    procedure DoExpandAll(Sender:TObject);
    procedure DoDeleteRow(Sender:TObject);
    procedure DoInsertRow(Sender:TObject);
    procedure DoCopyRow(Sender:TObject);
    procedure DoAppendRow(Sender:TObject);
    procedure DoCollapseAll(Sender:TObject);
    procedure DoSendMail(Sender:TObject);
    procedure DoPrintReport(Sender:TObject);
    procedure DoDesignReport(Sender:TObject);
    procedure OpenByExcel(Sender:TObject);
    procedure ExportToHTML(Sender:TObject);
    procedure ExportToXML(Sender:TObject);
    procedure DoBestFit(Sender: TObject);
    procedure DoAutoWidth(Sender: TObject);
    procedure DoAutoHeight(Sender: TObject);

    procedure DoBestFitAllColumns(Sender: TObject);
  protected
    procedure BeforePopup; override;
    procedure CreateMenuItems; override;
  end;
  TdxDBGridFooterPopupMenu = class(TdxCustomDBGridPopupMenu)
  private
    fIsRowFooter: Boolean;
    fItems: array[TdxSummaryType] of TdxBarButton;
    fSummaryItem: TdxDBGridSummaryItem;
    fSummaryGroup: TdxDBGridSummaryGroup;
    procedure DoFooterSummary(ASummaryType: TdxSummaryType);
    procedure DoRowFooterSummary(ASummaryType: TdxSummaryType);
    procedure DoSummary(Sender: TObject);
  protected
    procedure BeforePopup; override;
    procedure CreateMenuItems; override;
    property SummaryGroup: TdxDBGridSummaryGroup read fSummaryGroup write fSummaryGroup;
    property SummaryItem: TdxDBGridSummaryItem read fSummaryItem write fSummaryItem;
  public
    property IsRowFooter: Boolean read fIsRowFooter write fIsRowFooter;
  end;
  TdxPopupMenuManager = class
  private
    GridHeaderPopupMenu: TdxDBGridHeaderPopupMenu;
    GridFooterPopupMenu: TdxDBGridFooterPopupMenu;
  protected
    constructor CreateInstance(AParamGrid: Boolean);
    class function AccessInstance(Request: Integer; AParamGrid: Boolean): TdxPopupMenuManager;
  public
    constructor Create;
    destructor Destroy; override;
    class function Instance(AParamGrid: Boolean): TdxPopupMenuManager;
    class procedure ReleaseInstance;
    function ShowGridPopupMenu(Grid: TdxDBGrid): Boolean;
  end;
implementation
uses DB,  ImportForm, SheetData, GlobalUnit;

const
    stSearchData = 'Tìm kiếm (Phím tắt F8)';
    stReplaceData = 'Tìm kiếm và thay thế';
    stExportData = 'Xuất dữ liệu ra';
    stPrints = 'In dữ liệu này';
    stViews = 'Trình bày';
    stOpenByExcel = 'Xem dữ liệu bằng Excel';
    stComparison = 'So sánh với tập tin Excel';
    stExpandAll = 'Bung toàn bộ dữ liệu ra ';
    stCollapseAll = 'Thu toàn bộ dữ liệu lại';
    stEditData = 'Thao tác về dữ liệu';
    stDeleteARow = 'Xóa một dòng (Ctrl + Delete)';
    stInsertARow = 'Chèn một dòng (Insert)';
    stCopyARow = 'Sao chép dòng này (Copy)';
    stAppendARow = 'Thêm dòng mới đã sao chép';
    stSendMail = 'Email';
    stExportExcel = 'Excel';
    stExportHTML = 'HTML';
    stExportXML = 'XML';
    StImportFromXls = 'Đọc dữ liệu từ Excel';
    StPrintGrid = 'In dữ liệu này';
    StPrintReport = 'Theo mẫu thiết kế';
    StDesignReport = 'Thiết kế mẫu in';
    StGroupOption = 'Gom nhóm dữ liệu';
    StFilterOption = 'Lọc dữ liệu';
    StAutoHeightOption = 'Chiều cao tự động';
    StFooterOption = 'Hiện thanh hạ mục';
    StGroupByThisColumn = 'Nhóm cột này';
    StRemoveThisColumn = 'Giấu cột này';
    StColumnSelector = 'Chọn thêm cột khác';
    StAlignment = 'Canh lề';

    StAlignments: array[TAlignment] of string = ('Canh trái', 'Canh phải', 'Canh giữa');
    StBestFit = 'Độ rộng vừa (cột này)';
    StBestFitAllColumns = 'Độ rộng vừa (Các cột)';
    StAutoWidth = 'Chiều rộng tự động';
    StSummaryItems: array[TdxSummaryType] of string = ('Để trống', 'Lấy giá trị tổng', 'Giá trị nhỏ nhất', 'Giá trị lớn nhất', 'Đếm số lượng dòng', 'Lấy giá trị trung bình');

    stSearchData1 = 'Search (Hot key F8)';
    stReplaceData1 = 'Search and Replace';
    stExportData1 = 'Export data';
    stPrints1 = 'Print this data';
    stViews1 = 'Views';
    stOpenByExcel1 = 'View with Excel';
    stComparison1 = 'Compare to Excel file';
    stExpandAll1 = 'Expand all data';
    stCollapseAll1 = 'Collapse all data';
    stEditData1 = 'Edit data';
    stDeleteARow1 = 'Delete one row (Crtl + Delete)';
    stInsertARow1 = 'Insert one row (Insert)';
    stCopyARow1 = 'Copy one row (Copy)';
    stAppendARow1 = 'Append row';
    stSendMail1 = 'Email';
    stExportExcel1 = 'Excel';
    stExportHTML1 = 'HTML';
    stExportXML1 = 'XML';
    StImportFromXls1 = 'Import from Excels';
    StPrintGrid1 = 'Print grid';
    StPrintReport1 = 'Print report';
    StDesignReport1 = 'Design template';
    StGroupOption1 = 'Collect group option';
    StFilterOption1 = 'Filter option';
    StAutoHeightOption1 = 'Auto height option';
    StFooterOption1 = 'Footer option';
    StGroupByThisColumn1 = 'Group by this column';
    StRemoveThisColumn1 = 'Hide this column';
    stColumnSelector1 = 'Hide/unhide Columns';
    StAlignment1 = 'Alignment';
    StAlignments1 : array[TAlignment] of string = ('Left align', 'Right align', 'Middle align');
    StBestFit1 = 'Best Fit';
    StBestFitAllColumns1 = 'Fit all columns';
    StAutoWidth1 = 'Auto width';
    StSummaryItems1 : array[TdxSummaryType] of string = ('Để trống', 'Empty value', 'Min value', 'Max value', 'Đếm số lượng dòng', 'Average value');
var
  ArrGridValue : Array[0..255] of Variant;
{TdxDBGridPopupMenu}

constructor TdxCustomDBGridPopupMenu.Create(ParamGrid: Boolean);
begin
  inherited Create;
  fPopupMenu := TdxBarPopupMenu.Create(nil);
  fParamGrid := ParamGrid;
  CreateMenuItems;
end;

destructor TdxCustomDBGridPopupMenu.Destroy;
begin
  fPopupMenu.Free;
//  fBarManager.Free;
  inherited Destroy;
end;

function TdxCustomDBGridPopupMenu.AddMenuItem(ItemLink: TdxBarItemLinks; ACaption: string; AOnClick: TNotifyEvent; ATag: Integer; AGroup: Boolean): TdxBarButton;
begin
  Result := TdxBarButton.Create(nil);
  Result.Caption := UTF8Decode(ACaption);
  Result.ButtonStyle := bsChecked;
  Result.OnClick := AOnClick;
  Result.Tag := ATag;
  with ItemLink.Add do
  begin
    Item := Result;
    BeginGroup := AGroup;
  end;
end;

function TdxCustomDBGridPopupMenu.AddSubMenuItem(ACaption: string; AGroup: Boolean): TdxBarSubItem;
begin
  Result := TdxBarSubItem.Create(nil);
  Result.Caption := UTF8Decode(ACaption);
  Result.Tag := -1;
  with fPopupMenu.ItemLinks.Add do
  begin
    Item := Result;
    BeginGroup := AGroup;
  end;
end;

procedure TdxCustomDBGridPopupMenu.BeforePopup;
begin
end;

procedure TdxCustomDBGridPopupMenu.Popup(AGridColumn: TdxDBGridColumn; X, Y: Integer);
begin
  fGridColumn := TdxDBGridColumn(AGridColumn);
  BeforePopup;
  fPopupMenu.Popup(X, Y);
end;

procedure TdxCustomDBGridPopupMenu.PopupFromCursor(AGrid:TdxDBGrid; AGridColumn: TdxDBGridColumn);
var
  Point: TPoint;
begin
  fGrid := AGrid;
  fPGrid := @(AGridColumn.TreeList);
  GetCursorPos(Point);
  Popup(AGridColumn, Point.X, Point.Y);
end;

procedure TdxDBGridHeaderPopupMenu.BeforePopup;
var
  Align : TAlignment;
  HasData : Boolean;
begin
  HasData := fGrid.Count <> 0;

  Assert(fGridColumn <> nil, 'Parameter column is NULL');
  if fParamGrid then
    fPGrid := @fGridColumn.TreeList
  else
    fPGrid := nil;

  if (fGrid.DataSource.DataSet is TIBOQuery)then
  begin
    fSearchItem.Enabled := HasData;
    fReplaceItem.Enabled := HasData and (Not (fGrid.DataSource.DataSet as TIBOQuery).ReadOnly);
    if fReplaceItem.Enabled then
      fReplaceItem.Enabled := Trim((fGrid.DataSource.DataSet as TIBOQuery).EditSQL.Text)<>'';

    fDeleteRowItem.Enabled := HasData and Not (fGrid.DataSource.DataSet as TIBOQuery).ReadOnly;
    if fDeleteRowItem.Enabled then
      fDeleteRowItem.Enabled := Trim((fGrid.DataSource.DataSet as TIBOQuery).DeleteSQL.Text)<>'';

    fInsertRowItem.Enabled := Not (fGrid.DataSource.DataSet as TIBOQuery).ReadOnly;
    if fInsertRowItem.Enabled then
      fInsertRowItem.Enabled := Trim((fGrid.DataSource.DataSet as TIBOQuery).InsertSQL.Text)<>'';
    fCopyRowItem.Enabled := HasData;
    fAppendRowItem.Enabled := Not (fGrid.DataSource.DataSet as TIBOQuery).ReadOnly;
    if fAppendRowItem.Enabled then
      fAppendRowItem.Enabled := Trim((fGrid.DataSource.DataSet as TIBOQuery).InsertSQL.Text)<>'';
  end
  else
  begin
    fSearchItem.Enabled := false;
    fDeleteRowItem.Enabled := false;
    fInsertRowItem.Enabled := false;
    fCopyRowItem.Enabled := false;
    fAppendRowItem.Enabled := false;
  end;

  if (fGrid is TdxDBGrid) then
  begin
    fFilterItem.Enabled := HasData;
    fFilterItem.Down := (fGrid as TdxDBGrid).Filter.Active;
    fGroupItem.Enabled := HasData;
    fGroupItem.Down := (fGrid as TdxDBGrid).ShowGroupPanel;

    if (fGrid as TdxDBGrid).IsImportFromXLS then
      fImportFromXLSItem.Visible := ivAlways
    else
      fImportFromXLSItem.Visible := ivNever;

  end;

  if (fGrid is TdxDBGrid) then
    fAutoHeightItem.Down := (edgoRowAutoHeight in (fGrid as TdxDBGrid).OptionsView)
  else
    fAutoHeightItem.Down := (etoRowAutoHeight in (fGrid as TdxDBTreeList).OptionsView);

  fExportItem.Enabled := HasData;
  fViewByExcel.Enabled := HasData;
  fCompareWithExcel.Enabled := HasData;
  fPrintItem.Enabled := HasData;
  fExpandItem.Enabled := HasData;
  fCollapseItem.Enabled := HasData;
  if (fGrid is TdxDBGrid) then
    fAutoWidthItem.Down := (edgoAutoWidth in (fGrid as TdxDBGrid).OptionsView)
  else
    fAutoWidthItem.Down := (etoAutoWidth in (fGrid as TdxDBTreeList).OptionsView);

  if (fGrid is TdxDBGrid) then
    fFooterItem.Down := (fGrid as TdxDBGrid).ShowSummaryFooter
  else
    fFooterItem.Down := (fGrid as TdxDBTreeList).ShowFooter;

  fColumnSelector.Down := fGridColumn.TreeList.IsCustomizing;
  for Align := Low(TAlignment) to High(TAlignment) do
    fHeaderAlignmentItems[Align].Down := fGridColumn.Alignment = Align;
end;

procedure TdxDBGridHeaderPopupMenu.CreateMenuItems;
var
  MenuItem : TdxBarSubItem;
  ItemLink : TdxBarItemLinks;
  Align : TAlignment;
begin
  fPopupMenu.ItemLinks.Clear;
  ItemLink := fPopupmenu.ItemLinks;

  if GlobalUnit.CurLanguage = 0 then
  begin
    fSearchItem := AddMenuItem(ItemLink, stSearchData, DoSearchData, -1, False);
    fReplaceItem := AddMenuItem(ItemLink, stReplaceData, DoReplaceInGrid, -1, False);
    fEditDataItem := AddSubMenuItem(stEditData, TRUE);
    fDeleteRowItem := AddMenuItem(fEditDataItem.ItemLinks, stDeleteARow, DoDeleteRow, -1, False);
    fInsertRowItem := AddMenuItem(fEditDataItem.ItemLinks, stInsertARow, DoInsertRow, -1, False);
    fCopyRowItem := AddMenuItem(fEditDataItem.ItemLinks, stCopyARow, DoCopyRow, -1, False);
    fAppendRowItem := AddMenuItem(fEditDataItem.ItemLinks, stAppendARow, DoAppendRow, -1, False);
    AddMenuItem(ItemLink, StRemoveThisColumn, DoRemoveColumn, -1, TRUE);
    fColumnSelector := AddMenuItem(ItemLink, StColumnSelector, DoColumnSelector, -1, FALSE);
    fViewItem := AddSubMenuItem(stViews, TRUE);
    fFooterItem := AddMenuItem(fViewItem.ItemLinks, StFooterOption, DoSetFooter, -1, False);
    fAutoHeightItem := AddMenuItem(fViewItem.ItemLinks, StAutoHeightOption, DoAutoHeight, -1, False);
    fAutoWidthItem:= AddMenuItem(fViewItem.ItemLinks, StAutoWidth, DoAutoWidth, -1, FALSE);
    AddMenuItem(fViewItem.ItemLinks, StBestFit, DoBestFit, -1, FALSE);
    AddMenuItem(fViewItem.ItemLinks, StBestFitAllColumns, DoBestFitAllColumns, -1, FALSE);
    MenuItem := AddSubMenuItem(StAlignment, TRUE);
    fExpandItem := AddMenuItem(ItemLink, stExpandAll, DoExpandAll, -1, True);
    fCollapseItem := AddMenuItem(ItemLink, stCollapseAll, DoCollapseAll, -1, False);
    fPrintItem := AddSubMenuItem(stPrints, TRUE);
    AddMenuItem(fPrintItem.ItemLinks, StPrintGrid, DoPrinting, -1, False);
    AddMenuItem(fPrintItem.ItemLinks, StPrintReport, DoPrintReport, -1, False);
    AddMenuItem(fPrintItem.ItemLinks, StDesignReport, DoDesignReport, -1, True);
    fExportItem := AddSubMenuItem(stExportData, TRUE);
    AddMenuItem(fExportItem.ItemLinks, stExportExcel, ExportToExcel, -1, False);
    AddMenuItem(fExportItem.ItemLinks, stSendMail, DoSendMail, -1, True);
    fViewByExcel := AddMenuItem(ItemLink, stOpenByExcel, OpenByExcel, -1, False);
    fCompareWithExcel := AddMenuItem(ItemLink, stComparison, Comparison, -1, False);

    if (fParamGrid) then
    begin
      fFilterItem := AddMenuItem(ItemLink, StFilterOption, DoSetFilter, -1, TRUE);
      fGroupItem := AddMenuItem(ItemLink, StGroupOption, DoSetGroup, -1, False);
    end;

    if fParamGrid then
    begin
      AddMenuItem(fExportItem.ItemLinks, stExportHTML, ExportToHTML, -1, False);
      AddMenuItem(fExportItem.ItemLinks, stExportXML, ExportToXML, -1, False);
    end;

    for Align := Low(TAlignment) to High(TAlignment) do
     fHeaderAlignmentItems[Align] := AddMenuItem(MenuItem.ItemLinks, StAlignments[Align], DoAlign, Integer(Align), FALSE);

    if fParamGrid then   //Hoaipt che de test
     fImportFromXLSItem := AddMenuItem(ItemLink, StImportFromXls, DoImportFromExcel, -1, False);
  end
  else if GlobalUnit.CurLanguage = 1 then
  begin
    fSearchItem := AddMenuItem(ItemLink, stSearchData, DoSearchData, -1, False);
    fReplaceItem := AddMenuItem(ItemLink, stReplaceData, DoReplaceInGrid, -1, False);
    fEditDataItem := AddSubMenuItem(stEditData, TRUE);
    fDeleteRowItem := AddMenuItem(fEditDataItem.ItemLinks, stDeleteARow, DoDeleteRow, -1, False);
    fInsertRowItem := AddMenuItem(fEditDataItem.ItemLinks, stInsertARow, DoInsertRow, -1, False);
    fCopyRowItem := AddMenuItem(fEditDataItem.ItemLinks, stCopyARow, DoCopyRow, -1, False);
    fAppendRowItem := AddMenuItem(fEditDataItem.ItemLinks, stAppendARow, DoAppendRow, -1, False);
    AddMenuItem(ItemLink, StRemoveThisColumn, DoRemoveColumn, -1, TRUE);
    fColumnSelector := AddMenuItem(ItemLink, StColumnSelector, DoColumnSelector, -1, FALSE);
    fViewItem := AddSubMenuItem(stViews, TRUE);
    fFooterItem := AddMenuItem(fViewItem.ItemLinks, StFooterOption, DoSetFooter, -1, False);
    fAutoHeightItem := AddMenuItem(fViewItem.ItemLinks, StAutoHeightOption, DoAutoHeight, -1, False);
    fAutoWidthItem:= AddMenuItem(fViewItem.ItemLinks, StAutoWidth, DoAutoWidth, -1, FALSE);
    AddMenuItem(fViewItem.ItemLinks, StBestFit, DoBestFit, -1, FALSE);
    AddMenuItem(fViewItem.ItemLinks, StBestFitAllColumns, DoBestFitAllColumns, -1, FALSE);
    MenuItem := AddSubMenuItem(StAlignment, TRUE);
    fExpandItem := AddMenuItem(ItemLink, stExpandAll, DoExpandAll, -1, True);
    fCollapseItem := AddMenuItem(ItemLink, stCollapseAll, DoCollapseAll, -1, False);
    fPrintItem := AddSubMenuItem(stPrints, TRUE);
    AddMenuItem(fPrintItem.ItemLinks, StPrintGrid, DoPrinting, -1, False);
    AddMenuItem(fPrintItem.ItemLinks, StPrintReport, DoPrintReport, -1, False);
    AddMenuItem(fPrintItem.ItemLinks, StDesignReport, DoDesignReport, -1, True);
    fExportItem := AddSubMenuItem(stExportData, TRUE);
    AddMenuItem(fExportItem.ItemLinks, stExportExcel, ExportToExcel, -1, False);
    AddMenuItem(fExportItem.ItemLinks, stSendMail, DoSendMail, -1, True);
    fViewByExcel := AddMenuItem(ItemLink, stOpenByExcel, OpenByExcel, -1, False);
    fCompareWithExcel := AddMenuItem(ItemLink, stComparison, Comparison, -1, False);

    if (fParamGrid) then
    begin
      fFilterItem := AddMenuItem(ItemLink, StFilterOption, DoSetFilter, -1, TRUE);
      fGroupItem := AddMenuItem(ItemLink, StGroupOption, DoSetGroup, -1, False);
    end;

    if fParamGrid then
    begin
      AddMenuItem(fExportItem.ItemLinks, stExportHTML, ExportToHTML, -1, False);
      AddMenuItem(fExportItem.ItemLinks, stExportXML, ExportToXML, -1, False);
    end;

    for Align := Low(TAlignment) to High(TAlignment) do
     fHeaderAlignmentItems[Align] := AddMenuItem(MenuItem.ItemLinks, StAlignments[Align], DoAlign, Integer(Align), FALSE);

    if fParamGrid then     //Hoaipt che de test
      fImportFromXLSItem := AddMenuItem(ItemLink, StImportFromXls, DoImportFromExcel, -1, False);
  end
  else
  begin
    fSearchItem := AddMenuItem(ItemLink, stSearchData1, DoSearchData, -1, False);
    fReplaceItem := AddMenuItem(ItemLink, stReplaceData1, DoReplaceInGrid, -1, False);
    fEditDataItem := AddSubMenuItem(stEditData1, TRUE);
    fDeleteRowItem := AddMenuItem(fEditDataItem.ItemLinks, stDeleteARow1, DoDeleteRow, -1, False);
    fInsertRowItem := AddMenuItem(fEditDataItem.ItemLinks, stInsertARow1, DoInsertRow, -1, False);
    fCopyRowItem := AddMenuItem(fEditDataItem.ItemLinks, stCopyARow1, DoCopyRow, -1, False);
    fAppendRowItem := AddMenuItem(fEditDataItem.ItemLinks, stAppendARow1, DoAppendRow, -1, False);
    AddMenuItem(ItemLink, StRemoveThisColumn1, DoRemoveColumn, -1, TRUE);
    fColumnSelector := AddMenuItem(ItemLink, StColumnSelector1, DoColumnSelector, -1, FALSE);
    fViewItem := AddSubMenuItem(stViews1, TRUE);
    fFooterItem := AddMenuItem(fViewItem.ItemLinks, StFooterOption1, DoSetFooter, -1, False);
    fAutoHeightItem := AddMenuItem(fViewItem.ItemLinks, StAutoHeightOption1, DoAutoHeight, -1, False);
    fAutoWidthItem:= AddMenuItem(fViewItem.ItemLinks, StAutoWidth1, DoAutoWidth, -1, FALSE);
    AddMenuItem(fViewItem.ItemLinks, StBestFit1, DoBestFit, -1, FALSE);
    AddMenuItem(fViewItem.ItemLinks, StBestFitAllColumns1, DoBestFitAllColumns, -1, FALSE);
    MenuItem := AddSubMenuItem(StAlignment1, TRUE);
    fExpandItem := AddMenuItem(ItemLink, stExpandAll1, DoExpandAll, -1, True);
    fCollapseItem := AddMenuItem(ItemLink, stCollapseAll1, DoCollapseAll, -1, False);
    fPrintItem := AddSubMenuItem(stPrints1, TRUE);
    AddMenuItem(fPrintItem.ItemLinks, StPrintGrid1, DoPrinting, -1, False);
    AddMenuItem(fPrintItem.ItemLinks, StPrintReport1, DoPrintReport, -1, False);
    AddMenuItem(fPrintItem.ItemLinks, StDesignReport1, DoDesignReport, -1, True);
    fExportItem := AddSubMenuItem(stExportData1, TRUE);
    AddMenuItem(fExportItem.ItemLinks, stExportExcel1, ExportToExcel, -1, False);
    AddMenuItem(fExportItem.ItemLinks, stSendMail1, DoSendMail, -1, True);
    fViewByExcel := AddMenuItem(ItemLink, stOpenByExcel1, OpenByExcel, -1, False);
    fCompareWithExcel := AddMenuItem(ItemLink, stComparison1, Comparison, -1, False);

    if (fParamGrid) then
    begin
      fFilterItem := AddMenuItem(ItemLink, StFilterOption1, DoSetFilter, -1, TRUE);
      fGroupItem := AddMenuItem(ItemLink, StGroupOption1, DoSetGroup, -1, False);
    end;

    if fParamGrid then
    begin
      AddMenuItem(fExportItem.ItemLinks, stExportHTML1, ExportToHTML, -1, False);
      AddMenuItem(fExportItem.ItemLinks, stExportXML1, ExportToXML, -1, False);
    end;

    for Align := Low(TAlignment) to High(TAlignment) do
      fHeaderAlignmentItems[Align] := AddMenuItem(MenuItem.ItemLinks, StAlignments1[Align], DoAlign, Integer(Align), FALSE);

    if fParamGrid then
      fImportFromXLSItem := AddMenuItem(ItemLink, StImportFromXls1, DoImportFromExcel, -1, False);
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoSearchData(Sender: TObject);
begin
  SearchData(fGrid);
end;

procedure TdxDBGridHeaderPopupMenu.DoReplaceInGrid(Sender: TObject);
begin
  ReplaceData(fGrid);
end;

procedure TdxDBGridHeaderPopupMenu.DoRemoveColumn(Sender: TObject);
begin
  if fGrid.VisibleColumnCount > 1 then
    fGridColumn.Visible := False
  else
    ShowMessageUnicode(102);
end;

procedure TdxDBGridHeaderPopupMenu.DoColumnSelector(Sender: TObject);
begin
  if fGridColumn.TreeList.IsCustomizing then
    fGridColumn.TreeList.EndColumnsCustomizing
  else fGridColumn.TreeList.ColumnsCustomizing;
end;

procedure TdxDBGridHeaderPopupMenu.DoAlign(Sender: TObject);
begin
  fGridColumn.Alignment := TAlignment(TMenuItem(Sender).Tag);
end;

procedure TdxDBGridHeaderPopupMenu.DoSetFilter(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    (fGrid as TdxDBGrid).Filter.Active := Not (fGrid as TdxDBGrid).Filter.Active;
  end;
end;

procedure TdxDBGridHeaderPopupMenu.Comparison(Sender: TObject);
var
  OpenDialog1 : TOpenDialog;
  cfr : TCustomFileRun;
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel Files|*.xls';
  OpenDialog1.DefaultExt := 'xls';

  if not OpenDialog1.Execute then exit;

  try
    if (fGrid is TdxDBGrid) then
      (fGrid as TdxDBGrid).SaveToXLS(ApplicationDir + '\data.xls', true)
    else if (fGrid is TdxDBTreeList) then
      (fGrid as TdxDBTreeList).SaveToXLS(ApplicationDir + '\data.xls', true, 0, nil);
  except
    ShowMessageUnicode(55);
    Exit;
  end;

  cfr := TCustomFileRun.Create(nil);
  cfr.FileName := ApplicationDir+'\data.xls';
  cfr.Execute;
  cfr.Free;

  OpenDialog1.Free;
end;

procedure TdxDBGridHeaderPopupMenu.DoImportFromExcel(Sender: TObject);
var
{  OpenDialog1 : TOpenDialog;
  ImportCount, ErrorCount : Integer;
  Msg : String; }
  i, j: Integer;
  XLSRead: TXLSReadWriteII;
  XLSWriteLog: TXLSReadWriteII;
  OpenDialog1: TOpenDialog;
begin
  if Not (fGrid is TdxDBGrid) then Exit;
  
  with TImportFrm.Create(Application) do
  try
    ImportGrid := fGrid;
    ShowModal;
  finally
    Free;
  end;
{  if Not (fGrid is TdxDBGrid) then Exit;

  if Not (fGrid as TdxDBGrid).IsImportFromXLS then exit;

  if (fGrid.DataSource.DataSet is TIBOQuery) then
    if (fGrid.DataSource.DataSet as TIBOQuery).InsertSQL.Text = '' then exit;

  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel Files | *.xls';
  OpenDialog1.DefaultExt := 'xls';

  if not OpenDialog1.Execute then exit;

  ImportingFromXLS := True;
  Screen.Cursor := crHourGlass;
  try
    (fGrid as TdxDBGrid).LoadFromXLS(OpenDialog1.FileName, ImportCount, ErrorCount);
  except
    Screen.Cursor := crDefault;
    ShowMessageUnicode(30);

    OpenDialog1.Free;
    ImportingFromXLS := False;
    Exit;
  end;
  Screen.Cursor := crDefault;

  OpenDialog1.Free;
  ImportingFromXLS := False;
  Msg := UTF8Encode(GetMessage(56));
  Msg := StringReplace(Msg, '#SUCCESS#', IntToStr(ImportCount), [rfReplaceAll]);
  Msg := StringReplace(Msg, '#ERROR#', IntToStr(ErrorCount), [rfReplaceAll]);
  ShowMessageUniText(UTF8Decode(Msg));
}
end;

procedure TdxDBGridHeaderPopupMenu.DoSetGroup(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).ShowGroupPanel := Not (fGrid as TdxDBGrid).ShowGroupPanel;
end;
procedure TdxDBGridHeaderPopupMenu.DoPrinting(Sender: TObject);
var
  CompPrint : TdxComponentPrinter;
  CompPrintLink : TBasedxReportLink;
begin
  CompPrint := TdxComponentPrinter.Create(fGrid.Parent);
  CompPrintLink :=  CompPrint.AddLink(fGrid);
  CompPrintLink.ShrinkToPageWidth := True;
  if fGrid.Width > 600 then
    CompPrintLink.PrinterPage.Orientation := poLandscape
  else
    CompPrintLink.PrinterPage.Orientation := poPortrait;
  CompPrintLink.Print(True, nil);
end;

procedure TdxDBGridHeaderPopupMenu.DoSetFooter(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    (fGrid as TdxDBGrid).ShowSummaryFooter := Not (fGrid as TdxDBGrid).ShowSummaryFooter;
    (fGrid as TdxDBGrid).ShowRowFooter := (fGrid as TdxDBGrid).ShowSummaryFooter;
  end
  else if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).ShowFooter := Not (fGrid as TdxDBTreeList).ShowFooter;
end;

procedure TdxDBGridHeaderPopupMenu.OpenByExcel(Sender:TObject);
var
  cfr: TCustomFileRun;
begin
  try
    if (fGrid is TdxDBGrid) then
      (fGrid as TdxDBGrid).SaveToXLS(ApplicationDir + '\data.xls', true)
    else if (fGrid is TdxDBTreeList) then
      (fGrid as TdxDBTreeList).SaveToXLS(ApplicationDir + '\data.xls', true)
    else Exit;
  except
    ShowMessageUnicode(55);
    Exit;
  end;

  cfr := TCustomFileRun.Create(nil);
  cfr.FileName := ApplicationDir + '\data.xls';
  cfr.Execute;
  cfr.Free;
end;

procedure TdxDBGridHeaderPopupMenu.DoSendMail(Sender:TObject);
var strName : string;
  SaveDlg : TSaveDialog;
begin
  SaveDlg := TSaveDialog.Create(nil);
  SaveDlg.Filter := 'Excel Files|*.xls';
  SaveDlg.DefaultExt := 'xls';
  strName := GetCurrentDir + '\data.xls';
  SaveDlg.FileName := strName;
  try
    if SaveDlg.Execute then
      strName := SaveDlg.FileName
    else
      Exit;

    if (fGrid is TdxDBGrid) then
      (fGrid as TdxDBGrid).SaveToXLS(strName, true)
    else if (fGrid is TdxDBTreeList) then
      (fGrid as TdxDBTreeList).SaveToXLS(strName,true)
      //ExportTreeToExcel((fGrid as TdxDBTreeList),strName)
    else
      Exit;
  except
    ShowMessageUnicode(55);
    Exit;
  end;

  SendMail('', strName);
end;

procedure TdxDBGridHeaderPopupMenu.DoPrintReport(Sender:TObject);
var
  GridForm : TWinControl;
  ReportFileName, BlankFileName, AppPath : String;
  GridRpt : TppReport;
  GridRptDpl : TppDBPipeline;
begin

  GridForm := fGrid.Parent;
  while Not (GridForm is TForm) do
    GridForm := GridForm.Parent;

  AppPath := ApplicationDir;
  //ShowMessage(GridForm.Name);
  ReportFileName := AppPath + '\Grids\' + GridForm.Name + '\' + fGrid.Name + '.rtm';
  BlankFileName := AppPath  + '\Grids\GridBlank.rtm';

  if not FileExists(BlankFileName) then
  begin
    ShowMessageUnicode(200, 'T�p tin m�u Grids\GridBlank.rtm trong th� m�c hi�n t�i �� b� m�t, vui l�ng ch�p t�p tin tr�ng kh�c v�o thay th�', 0);
    Exit;
  end;

  if not DirectoryExists(AppPath + '\Grids\' + GridForm.Name) then
    CreateDir(AppPath + '\Grids\' + GridForm.Name);
  if not FileExists(ReportFileName) then
    if not CopyFile(PAnsiChar(BlankFileName), PAnsiChar(ReportFileName), False) then exit;

  GridRptDpl := TppDBPipeline.Create(GridForm);
  GridRptDpl.Name := 'dplReportGrid';
  GridRptDpl.UserName := 'dplReportGrid';
  GridRptDpl.DataSource := fGrid.DataSource;
  GridRpt := TppReport.Create(GridForm);
  GridRpt.DataPipeline := GridRptDpl;
  GridRpt.Template.FileName := ReportFileName;
  GridRpt.Template.LoadFromFile;
  GridRpt.PreviewFormSettings.WindowState := wsMaximized;
  GridRpt.PreviewFormSettings.ZoomPercentage := 100;

  //thuyttb dong
{  if Not GridRpt.PrintReport then
    ShowMessageUnicode(210);}

  GridRptDpl.Free;
  GridRpt.Free;
end;

procedure TdxDBGridHeaderPopupMenu.DoDesignReport(Sender:TObject);
var
  GridForm:TWinControl;
  ReportFileName, BlankFileName,AppPath:String;
  GridRpt:TppReport;
  GridRptDsg:TppDesigner;
  GridRptDpl:TppDBPipeline;
begin
  GridForm:=fGrid.Parent;
  while Not (GridForm is TForm) do
    GridForm:=GridForm.Parent;

  AppPath:=ApplicationDir;
  //ShowMessage(GridForm.Name);
  ReportFileName:=AppPath+'\Grids\'+GridForm.Name+'\'+fGrid.Name+'.rtm';
  BlankFileName:=AppPath+'\Grids\GridBlank.rtm';

  if not FileExists(BlankFileName) then
  begin
    ShowMessageUnicode(200,'T�p tin m�u Grids\GridBlank.rtm trong th� m�c hi�n t�i �� b� m�t, vui l�ng ch�p t�p tin tr�ng kh�c v�o thay th�',0);
    Exit;
  end;

  if not DirectoryExists(AppPath+'\Grids\'+GridForm.Name) then
    CreateDir(AppPath+'\Grids\'+GridForm.Name);
  if not FileExists(ReportFileName) then
    CopyFile(PAnsiChar(BlankFileName),PAnsiChar(ReportFileName),False);

  GridRptDpl:=TppDBPipeline.Create(GridForm);
  GridRptDpl.Name:='dplReportGrid';
  GridRptDpl.UserName:='dplReportGrid';
  GridRptDpl.DataSource:=fGrid.DataSource;
  GridRpt:=TppReport.Create(GridForm);
  GridRpt.DataPipeline:=GridRptDpl;
  GridRptDsg:=TppDesigner.Create(GridForm);
  GridRptDsg.Report:=GridRpt;
  GridRpt.Template.FileName:=ReportFileName;
  GridRpt.Template.LoadFromFile;
  GridRptDsg.ShowModal;

  GridRptDpl.Free;
  GridRpt.Free;
  GridRptDsg.Free;
end;

procedure TdxDBGridHeaderPopupMenu.ExportToExcel(Sender:TObject);
var
  SaveDlg:TSaveDialog;
begin
  SaveDlg:=TSaveDialog.Create(nil);
  SaveDlg.Filter:='Excel Files|*.xls';
  SaveDlg.DefaultExt:='xls';
  try
    if SaveDlg.Execute then
    begin
      if (fGrid is TdxDBTreeList) then
        (fGrid as TdxDBTreeList).SaveToXLS(SaveDlg.FileName, true)
      else
        (fGrid as TdxDBGrid).SaveToXLS(SaveDlg.FileName, true);
    end;
  except
    SaveDlg.Free;
    ShowMessageUnicode(55);
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoExpandAll(Sender:TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).FullExpand
  else if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).FullExpand;
end;

procedure TdxDBGridHeaderPopupMenu.DoDeleteRow(Sender:TObject);
begin
  fGrid.DataSource.DataSet.Delete;
end;

procedure TdxDBGridHeaderPopupMenu.DoInsertRow(Sender:TObject);
begin
  fGrid.DataSource.DataSet.Insert;
end;

procedure TdxDBGridHeaderPopupMenu.DoCopyRow(Sender:TObject);
var
  i:Smallint;
begin
  for i:=0 to fGrid.VisibleColumnCount-1 do
    ArrGridValue[i]:= fGrid.DataSource.DataSet.FieldByName(fGrid.VisibleColumns[i].FieldName).Value;
end;

procedure TdxDBGridHeaderPopupMenu.DoAppendRow(Sender:TObject);
var
  i:Smallint;
begin
  fGrid.DataSource.DataSet.Append;
  for i:=0 to fGrid.VisibleColumnCount-1 do
    fGrid.DataSource.DataSet.FieldByName(fGrid.VisibleColumns[i].FieldName).Value:=ArrGridValue[i];
end;


procedure TdxDBGridHeaderPopupMenu.DoCollapseAll(Sender:TObject);
begin
  if (fGrid is TdxDBGrid) then
    (fGrid as TdxDBGrid).FullCollapse
  else if (fGrid is TdxDBTreeList) then
    (fGrid as TdxDBTreeList).FullCollapse;
end;

procedure TdxDBGridHeaderPopupMenu.ExportToHTML(Sender:TObject);
var
  SaveDlg:TSaveDialog;
begin
  if Not (fGrid is TdxDBGrid) then exit;
  
  SaveDlg:=TSaveDialog.Create(nil);
  SaveDlg.Filter:='Web Page Files|*.html';
  SaveDlg.DefaultExt:='htm';
    try
      if SaveDlg.Execute then
        (fGrid as TdxDBGrid).SaveToHTML(SaveDlg.FileName, true);
    except
      SaveDlg.Free;
      ShowMessageUnicode(55);
      Exit;
    end;
end;

procedure TdxDBGridHeaderPopupMenu.ExportToXML(Sender:TObject);
var
  SaveDlg:TSaveDialog;
begin
  if not (fGrid is TdxDBGrid) then Exit;

  SaveDlg:=TSaveDialog.Create(nil);
  SaveDlg.Filter:='XML Files|*.xml';
  SaveDlg.DefaultExt:='xml';
    try
      if SaveDlg.Execute then
        (fGrid as TdxDBGrid).SaveToXML(SaveDlg.FileName, true);
    except
      SaveDlg.Free;
      ShowMessageUnicode(55);
      Exit;
    end;
end;

procedure TdxDBGridHeaderPopupMenu.DoBestFit(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(fGridColumn);
end;

procedure TdxDBGridHeaderPopupMenu.DoBestFitAllColumns(Sender: TObject);
begin
  fGridColumn.TreeList.ApplyBestFit(nil);
end;

procedure TdxDBGridHeaderPopupMenu.DoAutoWidth(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fAutoWidthItem.Down then
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView + [edgoAutoWidth]
    else
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView - [edgoAutoWidth];
  end
  else if (fGrid is TdxDBTreeList) then
  begin
    if fAutoWidthItem.Down then
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as TdxDBTreeList).OptionsView + [etoAutoWidth]
    else
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as TdxDBTreeList).OptionsView - [etoAutoWidth];
  end;
end;

procedure TdxDBGridHeaderPopupMenu.DoAutoHeight(Sender: TObject);
begin
  if (fGrid is TdxDBGrid) then
  begin
    if fAutoHeightItem.Down then
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView + [edgoRowAutoHeight]
    else
      (fGrid as TdxDBGrid).OptionsView := (fGrid as TdxDBGrid).OptionsView - [edgoRowAutoHeight];
  end
  else if (fGrid is TdxDBTreeList) then
  begin
    if fAutoHeightItem.Down then
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as TdxDBTreeList).OptionsView + [etoRowAutoHeight]
    else
      (fGrid as TdxDBTreeList).OptionsView := (fGrid as TdxDBTreeList).OptionsView - [etoRowAutoHeight];
  end
end;

procedure TdxDBGridFooterPopupMenu.BeforePopup;
var
  SummaryType: TdxSummaryType;
begin
  Assert(fGridColumn <> nil, 'Parameter column is NULL');
  if IsRowFooter then
    SummaryType := SummaryItem.SummaryType
  else SummaryType := fGridColumn.SummaryFooterType;
  fItems[SummaryType].Down := True;
  fItems[cstMin].Enabled := (fGridColumn.Field.DataType in
    [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, ftAutoInc]);
  fItems[cstMax].Enabled := fItems[cstMin].Enabled;
  fItems[cstSum].Enabled := (fGridColumn.Field.DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc]);
  fItems[cstAvg].Enabled := fItems[cstSum].Enabled;
end;

procedure TdxDBGridFooterPopupMenu.CreateMenuItems;
var
  SummaryType: TdxSummaryType;
  ItemLink: TdxBarItemLinks;
begin
  fPopupMenu.ItemLinks.Clear;
  ItemLink := fPopupmenu.ItemLinks;
  for SummaryType := cstSum to cstAvg do //Low(TdxSummaryType-1) to High(TdxSummaryType) do
  begin
    fItems[SummaryType] := AddMenuItem(ItemLink, StSummaryItems[SummaryType], DoSummary, Integer(SummaryType), FALSE);
    fItems[SummaryType].GroupIndex := 1;
  end;
  SummaryType := Low(TdxSummaryType);
  fItems[SummaryType] := AddMenuItem(ItemLink, StSummaryItems[SummaryType], DoSummary, Integer(SummaryType), TRUE);
  fItems[SummaryType].GroupIndex := 1;
end;

procedure TdxDBGridFooterPopupMenu.DoFooterSummary(ASummaryType: TdxSummaryType);
begin
  fGridColumn.SummaryFooterType := ASummaryType;
  fGridColumn.SummaryFooterField := fGridColumn.FieldName;
  if fGridColumn.Field is TIBOFloatField then
    if fGridColumn.SummaryFooterFormat='' then
      fGridColumn.SummaryFooterFormat:=CACHESO_FORMAT;
end;

procedure TdxDBGridFooterPopupMenu.DoRowFooterSummary(ASummaryType: TdxSummaryType);
begin
  SummaryItem.SummaryType := ASummaryType;
  if fGridColumn.Field is TIBOFloatField then
    if SummaryItem.SummaryFormat='' then
      SummaryItem.SummaryFormat:=CACHESO_FORMAT;
end;

procedure TdxDBGridFooterPopupMenu.DoSummary(Sender: TObject);
begin
  if IsRowFooter then
    DoRowFooterSummary(TdxSummaryType(TMenuItem(Sender).Tag))
  else DoFooterSummary(TdxSummaryType(TMenuItem(Sender).Tag));
  if fParamGrid then
    TdxDBGrid(fGridColumn.TreeList).RefreshGroupColumns
  else
    TCustomdxDBGrid(fGridColumn.TreeList).FullRefresh;
end;

class function TdxPopupMenuManager.AccessInstance(Request: Integer; AParamGrid: Boolean): TdxPopupMenuManager;
var FInstance: TdxPopupMenuManager;
begin
  FInstance := nil;
  case Request of
    0: ;
    1: if not Assigned(FInstance) then FInstance := CreateInstance(AParamGrid);
    2: FInstance := nil;
  else
    raise Exception.CreateFmt('Illegal request %d in AccessInstance',
      [Request]);
  end;
  Result := FInstance;
end;

constructor TdxPopupMenuManager.Create;
begin
  inherited Create;
  raise Exception.CreateFmt('Access class %s through Instance only',
    [ClassName]);
end;

constructor TdxPopupMenuManager.CreateInstance(AParamGrid: Boolean);
begin
  inherited Create;
  GridHeaderPopupMenu := TdxDBGridHeaderPopupMenu.Create(AParamGrid);
  GridFooterPopupMenu := TdxDBGridFooterPopupMenu.Create(AParamGrid);
end;

destructor TdxPopupMenuManager.Destroy;
begin
  if AccessInstance(0, TRUE) = Self then AccessInstance(2, TRUE);
  GridHeaderPopupMenu.Free;
  GridFooterPopupMenu.Free;
  inherited Destroy;
end;

class function TdxPopupMenuManager.Instance(AParamGrid: Boolean): TdxPopupMenuManager;
begin
  Result := AccessInstance(1, AParamGrid);
end;

class procedure TdxPopupMenuManager.ReleaseInstance;
begin
  AccessInstance(0, TRUE).Free;
end;

function TdxPopupMenuManager.ShowGridPopupMenu(Grid: TdxDBGrid): Boolean;
var
  hTest: TdxTreeListHitTest;
  GridColumn: TdxDBGridColumn;
  SummaryGroup: TdxDBGridSummaryGroup;
  p: TPoint;
begin
  GetCursorPos(p);
  p := Grid.ScreenToClient(p);
  hTest := Grid.GetHitTestInfoAt(p.X, p.Y);
  GridColumn := nil;
  case hTest of
    htColumn, htColumnEdge:
      begin
        GridColumn := TdxDBGridColumn(Grid.GetColumnAt(p.X, p.Y));
        if GridColumn <> nil then
        begin
          GridHeaderPopupMenu.PopupFromCursor(Grid, GridColumn);
        end;
      end;
    htSummaryFooter:
      begin
        GridColumn := TdxDBGridColumn(Grid.GetFooterColumnAt(p.X, p.Y));
        if GridColumn <> nil then
        begin
          GridFooterPopupMenu.IsRowFooter := False;
          GridFooterPopupMenu.PopupFromCursor(Grid,GridColumn);
        end;
      end;
    htSummaryNodeFooter:
      begin
        GridFooterPopupMenu.SummaryItem := Grid.GetSummaryItemAt(p.X, p.Y, SummaryGroup, TdxDBTreeListColumn(GridColumn), True);
        if GridColumn <> nil then
        begin
          GridFooterPopupMenu.SummaryGroup := SummaryGroup;
          GridFooterPopupMenu.IsRowFooter := True;
          GridFooterPopupMenu.PopupFromCursor(Grid, GridColumn);
        end;
      end;
  end;
  Result := GridColumn <> nil;
end;

initialization
finalization
  TdxPopupMenuManager.ReleaseInstance;
end.
