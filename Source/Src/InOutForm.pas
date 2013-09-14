unit InOutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption;

type
  TInOutFrm = class(TForm)
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
    grdColSLDK: TdxDBGridCalcColumn;
    grdColGTDK: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    dxDBGridColumn5: TdxDBGridPopupColumn;
    dxDBPopupEdit2: TdxDBPopupEdit;
    locFormItem1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    locFormItem10: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnRutSodu: TdxBarButton;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure grdKHDblClick(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBPopupEdit2Enter(Sender: TObject);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure btnDetailClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnRutSoduClick(Sender: TObject);
    procedure bbtnFilterClick(Sender: TObject);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure qryInOutFilterRecord(DataSet: TDataSet; var Accept: Boolean);
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
  InOutFrm: TInOutFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, DocListForm,
  GlobalUnit, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TInOutFrm.FormCreate(Sender: TObject);
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


  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  with MainDM do
  begin
    qryPAcc.Open;
    qryPWare.Open;
  end;
  qryInOut.Close;
  qryInOut.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryInOut.ParamByName('BRANCH_ID').Value:= vpBranch_id;
  qryInOut.Open;

  if BeginPeriod=CurrentPeriod then
    btnRutSodu.Enabled := False
  else
    btnRutSodu.Enabled := SSPUserRight[12].ER ;
end;
procedure TInOutFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  with MainDM do
  begin
    qryInOut.Close;
  end;
  Action := caFree;
end;

procedure TInOutFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  InOutFrm := nil;
end;

procedure TInOutFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TInOutFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TInOutFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TInOutFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TInOutFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  qryInOut.Open;
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, False);
end;

procedure TInOutFrm.dxDBPopupEdit2Enter(Sender: TObject);
begin
  if MainDM.qryPAcc.Active=False then
    MainDM.qryPAcc.Open;
end;

procedure TInOutFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  if MainDM.qryPWare.Active =False then
    MainDM.qryPWare.Open;
end;

procedure TInOutFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  qryInOut.OnFilterRecord:=qryInOutFilterRecord;
  qryInOut.Filtered:=True;
end;

procedure TInOutFrm.btnDetailClick(Sender: TObject);
const
  sqlSel='SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher,'
    + ' doc_total , doc_notes, object_id,object_name,branch_id'
    + ' FROM macro_doclistky(:kyht,:kyht,:username,:branch_id)'
    + ' where (warehouse_id=:makho or  to_warehouse=:makho) and ((dtno=:mahh and loaino=2 and tkno=:shtk) or (dtco=:mahh and loaico=2 and tkco=:shtk))';
var SHTK, MAKHO:Widestring;
begin
  with MainDM do
  begin
    if qryInOutSLNHAP.AsFloat=0 then
      if qryInOutGTNHAP.AsFloat=0 then
        if qryInOutSLXUAT.AsFloat=0 then
          if qryInOutGTXUAT.AsFloat=0 then
            exit;

    MAKHO := qryPWareWAREHOUSE_ID.Value;
    SHTK := qryPAccACCOUNT_ID.Value;
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('kyht').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('makho').Value:=qryPWareWAREHOUSE_ID.Value;
    qryDocListAnyWhere.ParamByName('mahh').Value:=qryInOutMAHH.Value;
    qryDocListAnyWhere.ParamByName('shtk').Value:=qryInOutSHTK.Value;
    qryDocListAnyWhere.ParamByName('username').Value:=CurrentUser;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').Value := vpBranch_id;
    Screen.Cursor:=crHourGlass;
    qryDocListAnyWhere.Open;
    Screen.Cursor:=crDefault;
    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
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
  MainDM.qryPAcc.Open;

  with MainDM do
  begin
    qryPWare.Open;
    qryPWare.Locate('WAREHOUSE_ID',MAKHO,[]);
    if IsPosted then
    begin
      qryInOut.DisableControls;
      qryInOut.Close;
      qryInOut.Open;
      qryInOut.EnableControls;
    end;
  end;
end;

procedure TInOutFrm.dxBarButton4Click(Sender: TObject);
begin
  qryInOut.Refresh;
end;

procedure TInOutFrm.btnRutSoduClick(Sender: TObject);
begin
  if BeginPeriod=CurrentPeriod then exit;
  Screen.Cursor:=crHourGlass;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_HH(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod-1;
    ParamByName('BRANCH_ID').Value := vpBranch_id ;
    ExecSQL;
    Close;
  end;

  qryInOut.Refresh;
  Screen.Cursor := crDefault;
  ShowMessageUnicode(117);
end;

procedure TInOutFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TInOutFrm.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  if FilterAccType<>2 then
  begin
    FilterAccType:=2;
    MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterRecord;
    MainDM.qryPAcc.Filtered := True;
  end;
end;

procedure TInOutFrm.qryInOutFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  with MainDM do
  Accept := (qryInOutMAKHO.Value = qryPWareWAREHOUSE_ID.Value) and (qryInOutSHTK.Value=qryPAccACCOUNT_ID.Value);
end;

procedure TInOutFrm.grdKHEnter(Sender: TObject);
begin
  qryInOut.Open;
end;

procedure TInOutFrm.grdKHMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  qryInOut.Open;
end;

procedure TInOutFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TInOutFrm.FormActivate(Sender: TObject);
begin
MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TInOutFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Tinhhinhnhapxuat.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInOutFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
