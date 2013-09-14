unit ChungtuGhisoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,   
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  ElCheckCtl, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppRelatv, ppProd,
  ppReport, ppComm, ppEndUsr, ElPanel, ElCLabel, ElLabel;

type
  TChungtuGhisoFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryVoucher: TIBOQuery;
    dsVoucher: TDataSource;
    qryVoucherVOUCHER_ID: TWideStringField;
    qryVoucherPERIOD_ID: TSmallintField;
    qryVoucherVOUCHER_DATE: TDateField;
    qryVoucherVOUCHER_NOTE: TWideStringField;
    qryVoucherKF: TWideStringField;
    grdKHVOUCHER_ID: TdxDBGridMaskColumn;
    grdKHVOUCHER_DATE: TdxDBGridDateColumn;
    grdKHVOUCHER_NOTE: TdxDBGridMaskColumn;
    locFormItem1: TdxLayoutItem;
    grdDetail: TdxDBGrid;
    grdDetailDEBIT_ACC: TdxDBGridPopupColumn;
    grdDetailCREDIT_ACC: TdxDBGridPopupColumn;
    grdDetailENTRY_SUB: TdxDBGridMaskColumn;
    grdDetailENTRY_VAL: TdxDBGridMaskColumn;
    grdDetailENTRY_NOTE: TdxDBGridMaskColumn;
    locFormGroup3: TdxLayoutGroup;
    qryDetail: TIBOQuery;
    dsDetail: TDataSource;
    ElPopupButton2: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    dsgReport: TppDesigner;
    rptReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dplDetail: TppDBPipeline;
    dplDocReportppField1: TppField;
    dplDocReportppField2: TppField;
    dplDocReportppField3: TppField;
    dplDocReportppField4: TppField;
    dplDocReportppField5: TppField;
    dplDocReportppField6: TppField;
    dplDocReportppField7: TppField;
    dplDocReportppField8: TppField;
    dplDocReportppField9: TppField;
    dplDocReportppField10: TppField;
    dplDocReportppField11: TppField;
    dplDocReportppField12: TppField;
    dplDocReportppField13: TppField;
    dplDocReportppField14: TppField;
    dplDocReportppField15: TppField;
    dplDocReportppField16: TppField;
    dplDocReportppField17: TppField;
    dplMaster: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    edtPrefix: TdxEdit;
    edtSuffix: TdxEdit;
    ElPopupButton1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormItem10: TdxLayoutItem;
    locFormItem11: TdxLayoutItem;
    locFormGroup4: TdxLayoutGroup;
    qryDetailDEBIT_ACC: TWideStringField;
    qryDetailCREDIT_ACC: TWideStringField;
    qryDetailPERIOD_ID: TSmallintField;
    qryDetailENTRY_SUB: TWideStringField;
    qryDetailENTRY_VAL: TIBOFloatField;
    qryDetailENTRY_NOTE: TWideStringField;
    qryDetailVOUCHER_ID: TWideStringField;
    qryDetailKF: TWideStringField;
    ElPopupButton3: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    qryVoucherMANHOMCTGS: TWideStringField;
    qryVoucherTONGTIEN: TIBOFloatField;
    grdKHTONGTIEN: TdxDBGridMaskColumn;
    ElPopupButton4: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    PnlRemind: TElPanel;
    grdRemind: TdxDBGrid;
    qryRemind: TIBOQuery;
    dsRemind: TDataSource;
    qryRemindCOLONGNHAU: TSmallintField;
    qryRemindTKNO: TWideStringField;
    qryRemindTKCO: TWideStringField;
    qryRemindMANHOM: TWideStringField;
    grdRemindTKNO: TdxDBGridMaskColumn;
    grdRemindTKCO: TdxDBGridMaskColumn;
    grdRemindMANHOM: TdxDBGridMaskColumn;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    lblLongnhau: TElLabel;
    LblThieusot: TElLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryVoucherAfterInsert(DataSet: TDataSet);
    procedure qryVoucherBeforeDelete(DataSet: TDataSet);
    procedure qryVoucherBeforeEdit(DataSet: TDataSet);
    procedure qryVoucherBeforeInsert(DataSet: TDataSet);
    procedure qryVoucherNewRecord(DataSet: TDataSet);
    procedure qryVoucherPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryVoucherBeforePost(DataSet: TDataSet);
    procedure grdDetailNullDEBIT_ACCCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdDetailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDetailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure ElPopupButton6Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ChungtuGhisoFrm: TChungtuGhisoFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, ButtoanCTGSForm, HtmlHlp;


{$R *.dfm}

procedure TChungtuGhisoFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  
  qryVoucher.ParamByName('KYHT').Value := CurrentPeriod;
  qryVoucher.Open;

  qryDetail.ParamByName('KYHT').Value := CurrentPeriod;
  qryDetailENTRY_VAL.DisplayFormat:=TIENTE_FORMAT;
  qryVoucherTONGTIEN.DisplayFormat:=TIENTE_FORMAT;
  grdDetailENTRY_VAL.SummaryFooterFormat:=TIENTE_FORMAT;

  qryDetail.Open;

  if CurMonth>9 then
    edtPrefix.Text:=IntToStr(CurMonth)+'.'
  else
    edtPrefix.Text:='0'+IntToStr(CurMonth)+'.';
  if (CurYear-2000)>10 then
    edtSuffix.Text:='.'+IntToStr(CurYear-2000)
  else
    edtSuffix.Text:='.0'+IntToStr(CurYear-2000);

  if SSPUserRight[6].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TChungtuGhisoFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TChungtuGhisoFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TChungtuGhisoFrm.qryVoucherAfterInsert(DataSet: TDataSet);
begin
  qryVoucherVOUCHER_ID.FocusControl;
end;

procedure TChungtuGhisoFrm.qryVoucherBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TChungtuGhisoFrm.qryVoucherBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TChungtuGhisoFrm.qryVoucherBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TChungtuGhisoFrm.qryVoucherNewRecord(DataSet: TDataSet);
begin
  qryVoucherVOUCHER_DATE.AsDateTime := WorkingDate;
  qryVoucherPERIOD_ID.AsInteger := CurrentPeriod;
end;

procedure TChungtuGhisoFrm.qryVoucherPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs:= ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryVoucherVOUCHER_ID.FocusControl;
    exit;
  end;
end;

procedure TChungtuGhisoFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TChungtuGhisoFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TChungtuGhisoFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);  
end;

procedure TChungtuGhisoFrm.qryVoucherBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TChungtuGhisoFrm.grdDetailNullDEBIT_ACCCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TChungtuGhisoFrm.grdDetailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdDetail, Key, Shift,False,0);
end;

procedure TChungtuGhisoFrm.grdDetailMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TChungtuGhisoFrm.ElPopupButton2Click(Sender: TObject);
begin
  rptReport.Template.FileName := TemplatePath+ 'Chungtu\ChungtuGhiso.rtm';

  if not FileExists(rptReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  rptReport.Template.LoadFromFile;

  rptReport.PreviewFormSettings.WindowState:=wsMaximized;
  rptReport.PreviewFormSettings.ZoomPercentage:=100;
  //If Not rptReport.PrintReport then
//    ShowMessageUnicode(210);
  try
    rptReport.PrintReport
  except
     ShowMessageUnicode(210);
  end;
end;

procedure TChungtuGhisoFrm.ElPopupButton2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button<>mbRight then Exit;

  rptReport.Template.FileName := TemplatePath+ 'Chungtu\ChungtuGhiso.rtm';

  if not FileExists(rptReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  rptReport.Template.LoadFromFile;
  dsgReport.Report := rptReport;

  dsgReport.ShowModal;
  dsgReport.Report := nil;
end;

procedure TChungtuGhisoFrm.ElPopupButton1Click(Sender: TObject);
begin
  qryRemind.Close;

  qryRemind.ParamByName('KYHT').Value := CurrentPeriod;
  qryRemind.ParamByName('NGAY').Value := WorkingDate;
  qryRemind.ParamByName('PERFIX').Value := edtPrefix.Text;
  qryRemind.ParamByName('SUFFIX').Value := edtSuffix.Text;
  qryRemind.ParamByName('BRANCH_ID').Value := vpBranch_id; 
  qryRemind.Open;
  if qryRemind.RecordCount<>0 then
  begin
    PnlRemind.Visible:=True;

    if qryRemindCOLONGNHAU.AsInteger=1 then
    begin
      lblLongnhau.Visible:=True;
      LblThieusot.Visible:=False;
      grdRemindMANHOM.Visible:=True;
      //ShowMessageUnicode(214);
    end
    else
    begin
      lblLongnhau.Visible:=False;
      LblThieusot.Visible:=True;
      grdRemindMANHOM.Visible:=False;
      //ShowMessageUnicode(215);
    end;
    locForm.Enabled:=False;
    grdRemind.SetFocus;
    
    Exit;
  end;

  qryRemind.Close;

  qryVoucher.Close;
  qryVoucher.Open;
  qryDetail.Refresh;
end;

procedure TChungtuGhisoFrm.ElPopupButton3Click(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_CTGS_REFRESH(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  qryVoucher.Close;
  qryVoucher.Open;
  qryDetail.Refresh;
end;

procedure TChungtuGhisoFrm.ElPopupButton5Click(Sender: TObject);
begin
  PnlRemind.Visible:=False;
  locForm.Enabled:=True;
end;

procedure TChungtuGhisoFrm.ElPopupButton6Click(Sender: TObject);
begin
  with TButtoanCTGSFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

end.
