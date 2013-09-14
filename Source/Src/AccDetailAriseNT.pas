unit AccDetailAriseNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, ElXPThemedControl,
  ElEdits, ElCaption;

type
  TAccDetailAriseNTFrm = class(TForm)
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
    btnRutSodu: TdxBarButton;
    bbtnFilter: TdxBarButton;
    dxDBPopupEdit2: TdxDBPopupEdit;
    locFormItem1: TdxLayoutItem;
    grdKHColumn5: TdxDBGridCalcColumn;
    grdKHColumn6: TdxDBGridCalcColumn;
    grdKHColumn7: TdxDBGridCalcColumn;
    grdKHColumn8: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    qryBalArise: TIBOQuery;
    dsBalArise: TDataSource;
    qryBalAriseDCKH: TWideStringField;
    qryBalAriseLOAIDT: TSmallintField;
    qryBalAriseMADT: TWideStringField;
    qryBalAriseMANT: TWideStringField;
    qryBalAriseSHTK: TWideStringField;
    qryBalAriseTENDT: TWideStringField;
    qryBalAriseCOCK: TIBOFloatField;
    qryBalAriseCODK: TIBOFloatField;
    qryBalAriseCOPS: TIBOFloatField;
    qryBalAriseNOCK: TIBOFloatField;
    qryBalAriseNODK: TIBOFloatField;
    qryBalAriseNOPS: TIBOFloatField;
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
    procedure btnRutSoduClick(Sender: TObject);
    procedure bbtnFilterClick(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHEnter(Sender: TObject);
    procedure grdKHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryBalAriseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
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
  AccDetailAriseNTFrm: TAccDetailAriseNTFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TAccDetailAriseNTFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self,0);
  locForm.EndUpdate;

  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  grdKHColumn3.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdKHColumn4.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdKHColumn5.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdKHColumn6.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdKHColumn7.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdKHColumn8.SummaryFooterFormat:=NGOAITE_FORMAT;
  qryBalAriseNODK.DisplayFormat:=NGOAITE_FORMAT;
  qryBalAriseCODK.DisplayFormat:=NGOAITE_FORMAT;
  qryBalAriseNOPS.DisplayFormat:=NGOAITE_FORMAT;
  qryBalAriseCOPS.DisplayFormat:=NGOAITE_FORMAT;
  qryBalAriseNOCK.DisplayFormat:=NGOAITE_FORMAT;
  qryBalAriseCOCK.DisplayFormat:=NGOAITE_FORMAT;
  with MainDM do
  begin
    qryPAcc.Open;
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
  qryBalArise.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBalArise.ParamByName('BRANCH_ID').Value:=vpBranch_id;  
  qryBalArise.Open;
  MainDM.qryPCurrency.Open;

  if BeginPeriod=CurrentPeriod then
    btnRutSodu.Enabled := False
  else
    btnRutSodu.Enabled := SSPUserRight[12].ER;
end;
procedure TAccDetailAriseNTFrm.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  AccDetailAriseNTFrm:= nil;
end;

procedure TAccDetailAriseNTFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action :=caFree;
end;

procedure TAccDetailAriseNTFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TAccDetailAriseNTFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TAccDetailAriseNTFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TAccDetailAriseNTFrm.btnDetailClick(Sender: TObject);
var sqlSel,MANT:Widestring;
begin
  with MainDM do
  begin
    MANT := qryCurrencyCURRENCY_ID.Value;

    qryDocListAnyWhere.SQL.Clear;
    if ((qryBalAriseNOPS.AsFloat=0) and (qryBalAriseCOPS.AsFloat=0)) then exit;
    sqlSel :=sqlSelectDocList + ' where ((TKNO = :ASHTK and DTNO=:AMADT and LOAINO=:ALOAIDT)';
    sqlSel :=sqlSel + ' OR (TKCO= :ASHTK and DTCO=:AMADT and LOAICO=:ALOAIDT)) AND MATT=:AMATT ';

    qryDocListAnyWhere.SQL.Text :=sqlSel;
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('ASHTK').Value:=qryPAccACCOUNT_ID.Value;
    qryDocListAnyWhere.ParamByName('AMADT').Value:=qryBalAriseMADT.Value;
    qryDocListAnyWhere.ParamByName('ALOAIDT').AsInteger:=qryPAccOTYPE_ID.AsInteger;
    qryDocListAnyWhere.ParamByName('AMATT').Value:=qryBalAriseMANT.Value;
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

  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    qryCurrency.Open;
    qryCurrency.Locate('CURRENCY_ID',MANT,[]);
    if IsPosted then
    begin
      qryBalArise.DisableControls;
      qryBalArise.Close;
      qryBalArise.Open;
      qryBalArise.EnableControls;
    end;
  end;
end;

procedure TAccDetailAriseNTFrm.grdKHDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TAccDetailAriseNTFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin   
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdKH, Key, Shift, False);
end;

procedure TAccDetailAriseNTFrm.dxBarButton4Click(Sender: TObject);
begin
  qryBalArise.Refresh;
end;

procedure TAccDetailAriseNTFrm.btnRutSoduClick(Sender: TObject);
begin
  if BeginPeriod=CurrentPeriod then exit;
  Screen.Cursor:=crHourGlass;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_OBJ_NT(:KYHT,:BRANCH_ID)';


    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod-1;
    ExecSQL;
    Close;
  end;
  qryBalArise.Refresh;
  Screen.Cursor:=crDefault;
  ShowMessageUnicode(117);
end;

procedure TAccDetailAriseNTFrm.bbtnFilterClick(Sender: TObject);
begin
  grdKH.Filter.Active := bbtnFilter.Down;
end;

procedure TAccDetailAriseNTFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  qryBalArise.OnFilterRecord:=qryBalAriseFilterRecord;
  qryBalArise.Filtered:=True;
end;

procedure TAccDetailAriseNTFrm.grdKHEnter(Sender: TObject);
begin
  if not qryBalArise.Active then
    qryBalArise.Open;
end;

procedure TAccDetailAriseNTFrm.grdKHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  qryBalArise.Open;
end;

procedure TAccDetailAriseNTFrm.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  if FilterAccType<>3 then
  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
end;

procedure TAccDetailAriseNTFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    pm.PopupFromCursorPos;
  end;
end;

procedure TAccDetailAriseNTFrm.qryBalAriseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  with MainDM do
  Accept:=(qryBalAriseSHTK.Value=qryPAccACCOUNT_ID.Value) and (qryBalAriseMANT.Value=qryPCurrencyCURRENCY_ID.Value) and (qryBalAriseLOAIDT.AsInteger=qryPAccOTYPE_ID.AsInteger);
end;

procedure TAccDetailAriseNTFrm.FormActivate(Sender: TObject);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
end;

procedure TAccDetailAriseNTFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAccDetailAriseNTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
