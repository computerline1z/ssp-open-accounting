unit InstockWare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption;

type
  TInstockWareFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    grdKHTENHH: TdxDBGridColumn;
    grdColSLDK: TdxDBGridCalcColumn;
    grdColGTDK: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    grdKHMAHHH: TdxDBGridPopupColumn;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    bbtnFilter: TdxBarButton;
    grdColSLNhap: TdxDBGridCalcColumn;
    grdColGTNhap: TdxDBGridCalcColumn;
    grdColSLXuat: TdxDBGridCalcColumn;
    grdColGTXuat: TdxDBGridCalcColumn;
    grdColSLTon: TdxDBGridCalcColumn;
    grdColGTTon: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    qryInOut: TIBOQuery;
    dsInOut: TDataSource;
    qryInOutMAHH: TWideStringField;
    qryInOutTENHH: TWideStringField;
    qryInOutMAKHO: TWideStringField;
    qryInOutSHTK: TWideStringField;
    qryInOutSLDAUKY: TIBOFloatField;
    qryInOutGTDAUKY: TIBOFloatField;
    qryInOutSLNHAP: TIBOFloatField;
    qryInOutGTNHAP: TIBOFloatField;
    qryInOutSLXUAT: TIBOFloatField;
    qryInOutGTXUAT: TIBOFloatField;
    qryInOutSLTON: TIBOFloatField;
    qryInOutGTTON: TIBOFloatField;
    grdKHSHTK: TdxDBGridMaskColumn;
    grdKHMAKHO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure grdKHDblClick(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDetailClick(Sender: TObject);
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
    AParamMAKHO,AParamMAHH,AParamSHTK:WideString;
  end;

var
  InstockWareFrm: TInstockWareFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, DocListForm,
  GlobalUnit, LookupFrm, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TInstockWareFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self,0);
  locForm.EndUpdate;

  grdColSLDK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColGTDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdColSLNhap.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColGTNhap.SummaryFooterFormat:=TIENTE_FORMAT;
  grdColSLXuat.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColGTXuat.SummaryFooterFormat:=TIENTE_FORMAT;
  grdColSLTon.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColGTTon.SummaryFooterFormat:=TIENTE_FORMAT;
             
  qryInOutSLDAUKY.DisplayFormat:= SOLUONG_FORMAT;
  qryInOutGTDAUKY.DisplayFormat:= TIENTE_FORMAT;
  qryInOutSLNHAP.DisplayFormat:= SOLUONG_FORMAT;
  qryInOutGTNHAP.DisplayFormat:= TIENTE_FORMAT;
  qryInOutSLXUAT.DisplayFormat:= SOLUONG_FORMAT;
  qryInOutGTXUAT.DisplayFormat:= TIENTE_FORMAT;
  qryInOutSLTON.DisplayFormat:= SOLUONG_FORMAT;
  qryInOutGTTON.DisplayFormat:= TIENTE_FORMAT;
end;

procedure TInstockWareFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TInstockWareFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TInstockWareFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TInstockWareFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TInstockWareFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  qryInOut.Open;
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TInstockWareFrm.btnDetailClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher,'
    + ' doc_total , doc_notes, object_id,object_name,branch_id'
    + ' FROM macro_doclistky(:kyht,:kyht,:username,:branch_id)'
    + ' where (warehouse_id=:makho or  to_warehouse=:makho) and ((dtno=:mahh and loaino=2 and tkno=:shtk) or (dtco=:mahh and loaico=2 and tkco=:shtk))';
begin
  if qryInOutSLNHAP.AsFloat=0 then
    if qryInOutGTNHAP.AsFloat=0 then
      if qryInOutSLXUAT.AsFloat=0 then
        if qryInOutGTXUAT.AsFloat=0 then
          exit;

  MainDM.qryDocListAnyWhere.SQL.Clear;
  MainDM.qryDocListAnyWhere.SQL.Text :=sqlSel;
  MainDM.qryDocListAnyWhere.ParamByName('kyht').AsInteger:=CurrentPeriod;
  MainDM.qryDocListAnyWhere.ParamByName('makho').Value:=qryInOutMAKHO.Value;
  MainDM.qryDocListAnyWhere.ParamByName('mahh').Value:=qryInOutMAHH.Value;
  MainDM.qryDocListAnyWhere.ParamByName('shtk').Value:=qryInOutSHTK.Value;
  MainDM.qryDocListAnyWhere.ParamByName('username').Value:=CurrentUser;
  MainDM.qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
  Screen.Cursor:=crHourGlass;
  MainDM.qryDocListAnyWhere.Open;
  Screen.Cursor:=crDefault;
  if MainDM.qryDocListAnyWhere.RecordCount=0 then
  begin
    MainDM.qryDocListAnyWhere.Close;
    Exit;
  end;
  
  IsPosted := False;
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

procedure TInstockWareFrm.dxBarButton4Click(Sender: TObject);
begin
  qryInOut.Refresh;
end;

procedure TInstockWareFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TInstockWareFrm.grdKHEnter(Sender: TObject);
begin
  qryInOut.Open;
end;

procedure TInstockWareFrm.grdKHMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  qryInOut.Open;
end;

procedure TInstockWareFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TInstockWareFrm.FormShow(Sender: TObject);
begin
  qryInOut.Close;
  if AParamMAKHO<>'' then
  begin
    qryInOut.SQL.Add('where MAKHO=:MAKHO order by MAHH,SHTK');
    qryInOut.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryInOut.ParamByName('MAKHO').Value:=AParamMAKHO;
    qryInOut.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryInOut.Open;
    ElFormCaption1.Texts[0].Caption:= ElFormCaption1.Texts[0].Caption + UTF8Decode(' kho hàng : ') + MainDM.qryPWareWAREHOUSE_ID.Value;
    grdKHMAKHO.Visible:=False;
  end
  else if AParamMAHH<>'' then
  begin
    qryInOut.SQL.Add('where MAHH=:MAHH order by MAKHO,SHTK');
    qryInOut.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryInOut.ParamByName('MAHH').Value:=AParamMAHH;
    qryInOut.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryInOut.Open;
    ElFormCaption1.Texts[0].Caption:= ElFormCaption1.Texts[0].Caption + UTF8Decode(' mặt hàng : ')+ MainDM.qryPHHOBJECT_NAME.Value;
    grdKHMAHHH.Visible:=False;
    grdKHTENHH.Visible:=False;
  end
  else if AParamSHTK<>'' then
  begin
    qryInOut.SQL.Add('where SHTK=:SHTK order by MAKHO,MAHH');
    qryInOut.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryInOut.ParamByName('SHTK').Value:=AParamSHTK;
    qryInOut.ParamByName('BRANCH_ID').Value:=vpBranch_id;

    qryInOut.Open;
    ElFormCaption1.Texts[0].Caption:= ElFormCaption1.Texts[0].Caption + UTF8Decode(' tài khoản : ')+ MainDM.qryPAccACCOUNT_ID.Value;
    grdKHSHTK.Visible:=False;
  end;
  SetVisible(Self);  
end;

procedure TInstockWareFrm.FormKeyDown(Sender: TObject; var Key: Word;
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
