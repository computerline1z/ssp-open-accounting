unit SearchForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB,StrUtils, Forms,DateUtils, 
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, dxTL,
  dxDBCtrl, dxDBGrid, IBODataset, dxDBTLCl, dxGrClms,
  TntButtons, TntStdCtrls, dxBar, ElXPThemedControl, ElEdits, ElCaption,
  ElBtnCtl, ElPopBtn;

type
  TSearchFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    edtTK: TdxEdit;
    lcgSearchSQL: TdxLayoutItem;
    ppKH: TdxPopupEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    edtKeyWord_2: TdxEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    edtKeyWord_1: TdxEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    grdResult: TdxDBGrid;
    dxLayoutControl1Item16: TdxLayoutItem;
    grdResultColumn1: TdxDBGridColumn;
    grdResultColumn4: TdxDBGridColumn;
    qrySearchResult: TIBOQuery;
    dsSearchResult: TDataSource;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    edtTKNo: TdxEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    edtTKCo: TdxEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    lcgSearchNormal: TdxLayoutGroup;
    dedtTungay: TdxDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dedtDenngay: TdxDateEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    grdResultColumn2: TdxDBGridDateColumn;
    grdResultColumn5: TdxDBGridColumn;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    grdResultColumn3: TdxDBGridCalcColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton1: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qrySearchResultSOPHIEU: TWideStringField;
    qrySearchResultKYHT: TSmallintField;
    qrySearchResultNGAYLAP: TDateField;
    qrySearchResultTONGTIEN: TIBOFloatField;
    dxCalcEdit1: TdxCalcEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxCalcEdit2: TdxCalcEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    qrySearchResultMADT: TWideStringField;
    qrySearchResultNDPHIEU: TWideStringField;
    qrySearchResultTENDT: TWideStringField;
    qrySearchResultSUBINFO: TWideStringField;
    grdResultBRANCH_ID: TdxDBGridMaskColumn;
    qrySearchResultBRANCH_ID: TWideStringField;
    qrySearchResultBRANCH_NAME: TWideStringField;
    grdResultBRANCH_NAME: TdxDBGridMaskColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtdocid: TdxEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure dxLayoutControl1Item19CaptionClick(Sender: TObject);
    function getSQLWhere:WideString;
    procedure BitBtn1Click(Sender: TObject);
    procedure grdResultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdResultEnter(Sender: TObject);
    procedure grdResultExit(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure grdResultDblClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxCalcEdit1Enter(Sender: TObject);
    procedure dxCalcEdit2Enter(Sender: TObject);
    procedure dxCalcEdit1Exit(Sender: TObject);
    procedure dxCalcEdit2Exit(Sender: TObject);
    procedure ppKHEnter(Sender: TObject);
    procedure ppKHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdResultMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    flagkeyword_1:Boolean;
    MinValue,MaxValue:Double;
    //=True: va False:Hoac
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchFrm: TSearchFrm;

implementation

uses MainDataMdl, PopupForm, DMInterface, GlobalUnit, LookupFrm, Math,
  dxTreeGridMenus, htmlhlp;

{$R *.dfm}

procedure TSearchFrm.FormCreate(Sender: TObject);
begin
  MinValue:=0;
  MaxValue:=0;

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  grdResultColumn3.SummaryFooterFormat:=TIENTE_FORMAT;

  Self.Width:=Self.Width+(optFontSize-8)*20;
  Self.Height:=Self.Height+(optFontSize-8)*20;

  qrySearchResultNGAYLAP.DisplayFormat:=NGAYTHANG_FORMAT;
  qrySearchResultTONGTIEN.DisplayFormat:=TIENTE_FORMAT;

  flagkeyword_1:=True;

  dedtTungay.Date:= EncodeDate(CurYear, CurMonth,1) ;
  dedtDenngay.Date:=EndOfTheMonth(WorkingDate);

  if optSearchMode=0 then
    lcgSearchSQL.Visible := False
  else
    lcgSearchSQL.Visible := True;
end;

procedure TSearchFrm.dxLayoutControl1Item19CaptionClick(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  if flagkeyword_1 then
    dxLayoutControl1Item19.Caption := UTF8Decode('HOẶC')
  else
    dxLayoutControl1Item19.Caption := UTF8Decode('VÀ');
  dxLayoutControl1.EndUpdate;
  flagkeyword_1:=not flagkeyword_1;
end;

function TSearchFrm.getSQLWhere:WideString;
var
  sqlWhere,sqltmp:Widestring;
begin
  sqlWhere:='';
  if optSearchMode=1 then
  if trim(edtTK.Text)<>'' then
    sqlWhere := ' and (' + Trim(edtTK.Text)+ ') ';

  if (edtTKNo.Text<>'') then
    sqlWhere := ' and TKNO starting with '''+ UTF8Encode(edtTKNo.Text) + '''';
  if edtTKCo.Text<>'' then
    sqlWhere := sqlWhere + ' AND TKCO starting with '''+ UTF8Encode(edtTKCo.Text) + '''';


  if ppKH.Text<>'' then
    sqlWhere := sqlWhere + ' and (MADT=''' + UTF8Encode(ppKH.Text) + ''' and  LOAIDT=1)';
  if MinValue<>0 then
    sqlWhere := sqlWhere + ' and SOTIEN>=' + FloatToStr(MinValue);
  if MaxValue<>0 then
    sqlWhere := sqlWhere + ' and SOTIEN<=' + FloatToStr(MaxValue);

  sqltmp := '';
  if edtKeyWord_1.Text<>'' then
  begin
    sqltmp := ' ((upper(NOIDUNG) like (''%' + UpperCase(UTF8Encode(edtKeyWord_1.Text)) + '%'')) ';
    sqltmp := sqltmp + '  or (upper(GHICHU) like (''%' + UpperCase(UTF8Encode(edtKeyWord_1.Text)) + '%''))) ';
  end;

  if edtKeyWord_2.Text<>'' then
  begin
    if edtKeyWord_1.Text ='' then
    begin
      sqltmp := ' ((upper(NOIDUNG) like (''%' + UpperCase(UTF8Encode(edtKeyWord_2.Text)) + '%'')) ';
      sqltmp := sqltmp+' or (upper(GHICHU) like (''%' + UpperCase(UTF8Encode(edtKeyWord_2.Text)) + '%''))) ';
    end
    else
    begin
      if flagkeyword_1 then
      begin
        sqltmp := sqltmp + ' and ((upper(NOIDUNG) like (''%' + UpperCase(UTF8Encode(edtKeyWord_2.Text)) + '%''))';
        sqltmp := sqltmp + ' or (upper(GHICHU) like (''%' + UpperCase(UTF8Encode(edtKeyWord_2.Text)) + '%'')))';
      end
      else
      begin
        sqltmp := sqltmp + ' or ((upper(NOIDUNG) like (''%' + UpperCase(UTF8Encode(edtKeyWord_2.Text)) + '%''))';
        sqltmp := sqltmp + ' or (upper(GHICHU) like (''%' + UpperCase(UTF8Encode(edtKeyWord_2.Text)) + '%'')))';
      end;
    end;
  end;

  if edtdocid.Text <> '' then
  begin
    sqlwhere := sqlwhere + ' and (upper(SOPHIEU) like (''%' + UpperCase(UTF8Encode(trim(edtdocid.Text))) + '%''))';
  end;

  if sqltmp<>'' then
    sqlWhere := sqlWhere + ' and (' + sqltmp + ')';
  Result := sqlWhere;
end;

procedure TSearchFrm.BitBtn1Click(Sender: TObject);
var
  sqlAll, sql : Widestring;
begin
  if dedtTungay.Text='' then
  begin
    ShowMessageUnicode(118);
    dedtTungay.SetFocus;
    exit;
  end;
  if dedtDenngay.Text='' then
  begin
    ShowMessageUnicode(119);
    dedtDenngay.SetFocus;
    exit;
  end;
  Screen.Cursor:=crHourGlass;
  Screen.Cursor:=crHourGlass;
  sql := getSQLWhere;
  sqlAll := 'select distinct SOPHIEU,KYHT,NGAYLAP,MADT,TENDT,SUBINFO,TONGTIEN,NDPHIEU,BRANCH_NAME,BRANCH_ID ';
  sqlAll := sqlAll + '  from sp_for_search (:tungay,:denngay,:username,:branch_id)';
  sqlAll := sqlAll + ' where 1=1 ' + sql;

  with qrySearchResult do
  begin
    Close;
    SQL.Clear;
    SQL.Text:=sqlAll;
    try
      ParamByName('TUNGAY').AsDate:= dedtTungay.Date;
      ParamByName('DENNGAY').AsDate:= dedtDenngay.Date;
      ParamByName('USERNAME').Value:= CurrentUser;
      ParamByName('BRANCH_ID').Value:=vpBranch_id;

      Open;
    except
      ShowMessageUnicode(120);
      Screen.Cursor := crDefault;
      if optSearchMode=1 then
        edtTK.SetFocus;
      Close;
      exit;
    end;
  end;
  grdResult.FullExpand;
  Screen.Cursor := crDefault;
end;

procedure TSearchFrm.grdResultKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    dxBarButton2Click(Sender)
  else
    ProcessKeyDownInGrid(grdResult, Key, Shift, False);
end;

procedure TSearchFrm.grdResultEnter(Sender: TObject);
begin
  BitBtn1.Default:=False;
end;

procedure TSearchFrm.grdResultExit(Sender: TObject);
begin
  BitBtn1.Default:=True;
end;

procedure TSearchFrm.dxBarButton1Click(Sender: TObject);
begin
  grdResult.Filter.Active:= dxBarButton1.Down;
end;

procedure TSearchFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdResult);
end;

procedure TSearchFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdResult);
end;

procedure TSearchFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdResult);
end;

procedure TSearchFrm.dxBarButton2Click(Sender: TObject);
begin
  if qrySearchResult.RecordCount=0 then exit;
  qryBgDocList:=qrySearchResult;
  DocIDFieldName:='SOPHIEU';
  PeriodFieldName:='KYHT';
  BranchIDFieldName := 'BRANCH_ID';

  if qrySearchResult.RecordCount=1 then
    MainDM.Suachungtu(qrySearchResultSOPHIEU.Value, qrySearchResultKYHT.Value,qrySearchResultBRANCH_ID.Value)
  else
    MainDM.Suachungtu(qrySearchResultSOPHIEU.Value, qrySearchResultKYHT.Value,qrySearchResultBRANCH_ID.Value,True);

  if IsPosted then
  begin
    qrySearchResult.DisableControls;
    qrySearchResult.Refresh;
    qrySearchResult.EnableControls;
  end;
end;

procedure TSearchFrm.grdResultDblClick(Sender: TObject);
begin
  dxBarButton2Click(Sender);
end;

procedure TSearchFrm.ElPopupButton1Click(Sender: TObject);
begin
  dxBarButton2Click(Sender);
end;

procedure TSearchFrm.dxCalcEdit1Enter(Sender: TObject);
begin
  dxCalcEdit1.Text:=FloatToStr(MinValue);
end;

procedure TSearchFrm.dxCalcEdit2Enter(Sender: TObject);
begin
  dxCalcEdit2.Text:=FloatToStr(MaxValue);
end;

procedure TSearchFrm.dxCalcEdit1Exit(Sender: TObject);
var
  tmp:Double;
begin
  if Not TryStrToFloat(dxCalcEdit1.Text,tmp) then
  begin
    ShowMessageUnicode(121);
    dxCalcEdit1.SetFocus;
  end
  else
  begin
    MinValue:=tmp;
    dxCalcEdit1.Text:=FormatFloat(TIENTE_FORMAT,MinValue);
  end;
end;

procedure TSearchFrm.dxCalcEdit2Exit(Sender: TObject);
var
  tmp:Double;
begin
  if Not TryStrToFloat(dxCalcEdit2.Text,tmp) then
  begin
    ShowMessageUnicode(121);
    dxCalcEdit2.SetFocus;
  end
  else
  begin
    MaxValue:=tmp;
    dxCalcEdit2.Text:=FormatFloat(TIENTE_FORMAT,MaxValue);
  end;
end;

procedure TSearchFrm.ppKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=1;
end;

procedure TSearchFrm.ppKHCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TSearchFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Timkiemchungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TSearchFrm.grdResultMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TSearchFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
