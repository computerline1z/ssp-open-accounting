unit TonghopCPGTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TTonghopCPGTFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryTHCPGT: TIBOQuery;
    dsTHCPGT: TDataSource;
    qryTHCPGTPERIOD_ID: TSmallintField;
    qryTHCPGTMAPX: TWideStringField;
    qryTHCPGTMALOAI: TSmallintField;
    qryTHCPGTCPNC_DK: TIBOFloatField;
    qryTHCPGTCPSXC_DK: TIBOFloatField;
    qryTHCPGTCPNC_PS: TIBOFloatField;
    qryTHCPGTCPSXC_PS: TIBOFloatField;
    qryTHCPGTCPNC_TH: TIBOFloatField;
    qryTHCPGTCPSXC_TH: TIBOFloatField;
    qryTHCPGTCPNC_CK: TIBOFloatField;
    qryTHCPGTCPSXC_CK: TIBOFloatField;
    qryTHCPGTCPNL_TH: TIBOFloatField;
    qryTHCPGTCPNL_CK: TIBOFloatField;
    qryTHCPGTCPNL_DK: TIBOFloatField;
    qryTHCPGTCPNL_PS: TIBOFloatField;
    qryTHCPGTOBJECT_NAME: TWideStringField;
    qryTHCPGTSUBINFO_1: TWideStringField;
    qryTHCPGTSUBINFO_2: TWideStringField;
    grdKHCPNL_TH: TdxDBGridMaskColumn;
    grdKHCPNL_CK: TdxDBGridMaskColumn;
    grdKHCPNL_DK: TdxDBGridMaskColumn;
    grdKHCPNL_PS: TdxDBGridMaskColumn;
    grdKHOBJECT_NAME: TdxDBGridMaskColumn;
    grdKHSUBINFO_1: TdxDBGridMaskColumn;
    grdKHSUBINFO_2: TdxDBGridMaskColumn;
    grdKHMAPX: TdxDBGridPopupColumn;
    grdKHCPNC_DK: TdxDBGridCalcColumn;
    grdKHCPSXC_DK: TdxDBGridCalcColumn;
    grdKHCPNC_PS: TdxDBGridCalcColumn;
    grdKHCPSXC_PS: TdxDBGridCalcColumn;
    grdKHCPNC_CK: TdxDBGridCalcColumn;
    grdKHCPSXC_CK: TdxDBGridCalcColumn;
    grdKHCPNC_TH: TdxDBGridCalcColumn;
    grdKHCPSXC_TH: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryTHCPGTAfterInsert(DataSet: TDataSet);
    procedure qryTHCPGTBeforeDelete(DataSet: TDataSet);
    procedure qryTHCPGTBeforeEdit(DataSet: TDataSet);
    procedure qryTHCPGTBeforeInsert(DataSet: TDataSet);
    procedure qryTHCPGTBeforePost(DataSet: TDataSet);
    procedure qryTHCPGTNewRecord(DataSet: TDataSet);
    procedure qryTHCPGTPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHMAPXCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryTHCPGTMAPXChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TonghopCPGTFrm: TTonghopCPGTFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TTonghopCPGTFrm.FormCreate(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdKHCPNC_DK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNC_PS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNC_CK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNC_TH.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNL_DK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNL_PS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNL_CK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPNL_TH.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPSXC_DK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPSXC_PS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPSXC_CK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHCPSXC_TH.SummaryFooterFormat:=TIENTE_FORMAT;

  qryTHCPGTCPNC_DK.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNC_TH.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNC_PS.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNC_CK.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNL_DK.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNL_TH.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNL_PS.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPNL_CK.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPSXC_DK.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPSXC_TH.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPSXC_PS.DisplayFormat:=TIENTE_FORMAT;
  qryTHCPGTCPSXC_CK.DisplayFormat:=TIENTE_FORMAT;

  grdKHCPNC_DK.DisableEditor:=(CurrentPeriod<>BeginPeriod);
  grdKHCPSXC_DK.DisableEditor:=(CurrentPeriod<>BeginPeriod);

  qryTHCPGT.ParamByName('KYHT').AsInteger:=CurrentPeriod;
  qryTHCPGT.ParamByName('BRANCH_ID').Value:=vpBranch_id;
  qryTHCPGT.Open;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TTonghopCPGTFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TTonghopCPGTFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,3);
end;

procedure TTonghopCPGTFrm.qryTHCPGTAfterInsert(DataSet: TDataSet);
begin
  qryTHCPGTMAPX.FocusControl;
end;

procedure TTonghopCPGTFrm.qryTHCPGTBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TTonghopCPGTFrm.qryTHCPGTBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TTonghopCPGTFrm.qryTHCPGTBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TTonghopCPGTFrm.qryTHCPGTBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if KiemtraHople = False then
  begin
    qryTHCPGTMAPX.FocusControl;
    Abort;
  end;
end;

procedure TTonghopCPGTFrm.qryTHCPGTNewRecord(DataSet: TDataSet);
begin
  qryTHCPGTPERIOD_ID.Value := CurrentPeriod;
  qryTHCPGTMALOAI.Value := 6;
end;
function TTonghopCPGTFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryTHCPGT.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryTHCPGTMAPX.Value,6);

  if Result then
  begin
    if qryTHCPGTMAPX.Value <> MainDM.CurObjID then
      qryTHCPGTMAPX.Value := MainDM.CurObjID;
    qryTHCPGTOBJECT_NAME.Value := MainDM.CurObjName;
    qryTHCPGTSUBINFO_1.Value := MainDM.CurObjSub1;
    qryTHCPGTSUBINFO_2.Value := MainDM.CurObjSub2;
  end
  else
    qryTHCPGTOBJECT_NAME.Clear;
end;

procedure TTonghopCPGTFrm.qryTHCPGTPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs := ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryTHCPGTMAPX.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryTHCPGTMAPX.FocusControl;
  end;
end;

procedure TTonghopCPGTFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TTonghopCPGTFrm.grdKHMAPXCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TTonghopCPGTFrm.qryTHCPGTMAPXChange(Sender: TField);
begin
  KiemtraHople;
end;

procedure TTonghopCPGTFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTonghopCPGTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
