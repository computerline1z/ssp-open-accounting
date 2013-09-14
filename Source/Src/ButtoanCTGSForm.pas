unit ButtoanCTGSForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,   
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  ElCheckCtl, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppRelatv, ppProd,
  ppReport, ppComm, ppEndUsr, ElPanel;

type
  TButtoanCTGSFrm = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    grdBTCTGS: TdxDBGrid;
    dsBTCTGS: TDataSource;
    qryBTCTGS: TIBOQuery;
    grdBTCTGSDEBIT_ACC: TdxDBGridPopupColumn;
    grdBTCTGSCREDIT_ACC: TdxDBGridPopupColumn;
    grdBTCTGSENTRY_SUB: TdxDBGridMaskColumn;
    locForm: TdxLayoutControl;
    btnCancel: TElPopupButton;
    btnPost: TElPopupButton;
    btnClose: TElPopupButton;
    BitBtn4: TElPopupButton;
    btnDel: TElPopupButton;
    btnIns: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    locFormItem5: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem2: TdxLayoutItem;
    locFormItem8: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    locFormItem1: TdxLayoutItem;
    qryBTCTGSDEBIT_ACC: TWideStringField;
    qryBTCTGSCREDIT_ACC: TWideStringField;
    qryBTCTGSENTRY_SUB: TWideStringField;
    qryBTCTGSKF: TWideStringField;
    qryGroup: TIBOQuery;
    qryGroupMANHOMCTGS: TWideStringField;
    qryGroupTENNHOMCTGS: TWideStringField;
    dsGroup: TDataSource;
    locFormItem3: TdxLayoutItem;
    grdGroup: TdxDBGrid;
    grdGroupMANHOMCTGS: TdxDBGridMaskColumn;
    grdGroupTENNHOMCTGS: TdxDBGridMaskColumn;
    qryBTCTGSMANHOMCTGS: TWideStringField;
    qryBTCTGSENTRY_NOTE: TWideStringField;
    grdBTCTGSENTRY_NOTE: TdxDBGridMaskColumn;
    PnlRemind: TElPanel;
    grdRemind: TdxDBGrid;
    grdRemindTKNO: TdxDBGridMaskColumn;
    grdRemindTKCO: TdxDBGridMaskColumn;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dsRemind: TDataSource;
    qryRemind: TIBOQuery;
    qryRemindCOLONGNHAU: TSmallintField;
    qryRemindTKNO: TWideStringField;
    qryRemindTKCO: TWideStringField;
    qryRemindMANHOM: TWideStringField;
    locFormItem9: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    acInsert1: TDataSetInsert;
    acDelete1: TDataSetDelete;
    acPost1: TDataSetPost;
    acCancel1: TDataSetCancel;
    locFormItem10: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem12: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFormItem13: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryVoucherBeforeEdit(DataSet: TDataSet);
    procedure qryVoucherBeforeInsert(DataSet: TDataSet);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryVoucherBeforePost(DataSet: TDataSet);
    procedure qryBTCTGSBeforeEdit(DataSet: TDataSet);
    procedure qryBTCTGSBeforePost(DataSet: TDataSet);
    procedure grdBTCTGSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBTCTGSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdBTCTGSDEBIT_ACCCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryBTCTGSPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryBTCTGSAfterInsert(DataSet: TDataSet);
    procedure qryBTCTGSBeforeDelete(DataSet: TDataSet);
    procedure qryBTCTGSNewRecord(DataSet: TDataSet);
    procedure grdBTCTGSEnter(Sender: TObject);
    procedure grdGroupEnter(Sender: TObject);
    procedure qryGroupAfterInsert(DataSet: TDataSet);
    procedure qryGroupBeforeDelete(DataSet: TDataSet);
    procedure qryGroupBeforeEdit(DataSet: TDataSet);
    procedure qryGroupBeforeInsert(DataSet: TDataSet);
    procedure qryBTCTGSBeforeInsert(DataSet: TDataSet);
    procedure qryGroupBeforePost(DataSet: TDataSet);
    procedure qryGroupPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdGroupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGroupMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryGroupDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdRemindDblClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton6Click(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ButtoanCTGSFrm: TButtoanCTGSFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TButtoanCTGSFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryGroup.Open;
  qryBTCTGS.Open;
  MainDM.qryPAcc.Filtered:=False;
  AllowSelectParent:=True;

  if SSPUserRight[6].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TButtoanCTGSFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TButtoanCTGSFrm.qryVoucherBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TButtoanCTGSFrm.qryVoucherBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TButtoanCTGSFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TButtoanCTGSFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TButtoanCTGSFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);  
end;

procedure TButtoanCTGSFrm.qryVoucherBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TButtoanCTGSFrm.qryBTCTGSBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TButtoanCTGSFrm.qryBTCTGSBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TButtoanCTGSFrm.grdBTCTGSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdBTCTGS, Key, Shift,False,0);
end;

procedure TButtoanCTGSFrm.grdBTCTGSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TButtoanCTGSFrm.grdBTCTGSDEBIT_ACCCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TButtoanCTGSFrm.qryBTCTGSPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  if ProcessErr(E,'',0)=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryBTCTGSDEBIT_ACC.FocusControl;
    exit;
  end
  else
  with MainDM do
  begin
    qryPAcc.Open;
    ShowMessageUnicode(42,e.Message);
    if qryPAcc.Locate('ACCOUNT_ID',qryBTCTGSDEBIT_ACC.Value,[]) then
      qryBTCTGSCREDIT_ACC.FocusControl
    else
      qryBTCTGSDEBIT_ACC.FocusControl;
  end;
end;

procedure TButtoanCTGSFrm.qryBTCTGSAfterInsert(DataSet: TDataSet);
begin
  qryBTCTGSDEBIT_ACC.FocusControl;
end;

procedure TButtoanCTGSFrm.qryBTCTGSBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TButtoanCTGSFrm.qryBTCTGSNewRecord(DataSet: TDataSet);
begin
  qryBTCTGSMANHOMCTGS.Value:=qryGroupMANHOMCTGS.Value;
end;

procedure TButtoanCTGSFrm.grdBTCTGSEnter(Sender: TObject);
begin
  if qryGroup.RecordCount=0 then
    grdGroup.SetFocus
  else
  begin
    if qryGroup.State in [dsInsert,dsEdit] then
      qryGroup.Post;
    if qryBTCTGS.RecordCount=0 then
      qryBTCTGS.Insert;
  end;
end;

procedure TButtoanCTGSFrm.grdGroupEnter(Sender: TObject);
begin
  if qryGroup.RecordCount=0 then
    qryGroup.Insert;
end;

procedure TButtoanCTGSFrm.qryGroupAfterInsert(DataSet: TDataSet);
begin
  qryGroupMANHOMCTGS.FocusControl;
end;

procedure TButtoanCTGSFrm.qryGroupBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TButtoanCTGSFrm.qryGroupBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TButtoanCTGSFrm.qryGroupBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;  
end;

procedure TButtoanCTGSFrm.qryBTCTGSBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TButtoanCTGSFrm.qryGroupBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TButtoanCTGSFrm.qryGroupPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ProcessErr(E,'');
  qryGroupMANHOMCTGS.FocusControl;
end;

procedure TButtoanCTGSFrm.grdGroupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdGroup, Key, Shift,False,0);
end;

procedure TButtoanCTGSFrm.grdGroupMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TButtoanCTGSFrm.qryGroupDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);

  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TButtoanCTGSFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryGroup.State in [dsInsert,dsEdit] then
    qryGroup.Post;
  if qryBTCTGS.State in [dsInsert,dsEdit] then
    qryBTCTGS.Post;
  AllowSelectParent:=False;
end;

procedure TButtoanCTGSFrm.grdRemindDblClick(Sender: TObject);
begin

  ElPopupButton6.Click;

end;

procedure TButtoanCTGSFrm.ElPopupButton1Click(Sender: TObject);
begin
  if qryBTCTGS.State in [dsInsert,dsEdit] then
    qryBTCTGS.Post;

  qryRemind.Close;

  qryRemind.ParamByName('KYHT').Value := CurrentPeriod;
  qryRemind.ParamByName('NGAY').Value := WorkingDate;
  
  qryRemind.ParamByName('BRANCH_ID').Value := vpBranch_id;
  qryRemind.Open;
  PnlRemind.Visible := TRUE;

end;

procedure TButtoanCTGSFrm.ElPopupButton6Click(Sender: TObject);
begin
  qryBTCTGS.Insert;
  qryBTCTGSDEBIT_ACC.Value := qryRemindTKNO.Value;
  qryBTCTGSCREDIT_ACC.Value := qryRemindTKCO.Value;

end;

procedure TButtoanCTGSFrm.ElPopupButton5Click(Sender: TObject);
begin
  PnlRemind.Visible := FALSE;


end;

end.
