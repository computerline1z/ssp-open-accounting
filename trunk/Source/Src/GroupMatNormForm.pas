unit GroupMatNormForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn,
  ElCheckCtl;

type
  TGroupMatNormFrm = class(TForm)
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
    qryGroupNorm: TIBOQuery;
    dsGroupNorm: TDataSource;
    grdKHOBJGRP_ID: TdxDBGridPopupColumn;
    grdKHNORM_VALUE: TdxDBGridCalcColumn;
    grdKHOBJGRP_NAME: TdxDBGridColumn;
    grdKHMAPX: TdxDBGridPopupColumn;
    grdKHMALOAI: TdxDBGridPopupColumn;
    qryGroupNormMATGROUP_NORM_ID: TIntegerField;
    qryGroupNormPERIOD_ID: TSmallintField;
    qryGroupNormMAPX: TWideStringField;
    qryGroupNormMALOAI: TSmallintField;
    qryGroupNormGRPTYPE_ID: TSmallintField;
    qryGroupNormMATERIAL_ID: TWideStringField;
    qryGroupNormMATERIAL_AMOUNT: TIBOFloatField;
    qryGroupNormSTANDARDNORM: TSmallintField;
    qryGroupNormMTYPE_ID: TSmallintField;
    qryGroupNormOBJGRP_NAME: TWideStringField;
    qryGroupNormOBJGRP_ID: TWideStringField;
    grdKHColumn7: TdxDBGridPopupColumn;
    grdKHMATGROUP_NORM_ID: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryGroupNormAfterInsert(DataSet: TDataSet);
    procedure qryGroupNormBeforeDelete(DataSet: TDataSet);
    procedure qryGroupNormBeforeEdit(DataSet: TDataSet);
    procedure qryGroupNormBeforeInsert(DataSet: TDataSet);
    procedure qryGroupNormNewRecord(DataSet: TDataSet);
    procedure qryGroupNormPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHOBJGRP_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHMAPXCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qryGroupNormOBJGRP_IDChange(Sender: TField);
    procedure qryGroupNormBeforePost(DataSet: TDataSet);
    procedure grdKHOBJGRP_IDInitPopup(Sender: TObject);
    procedure grdKHColumn7CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdKHEnter(Sender: TObject);
    procedure qryGroupNormAfterPost(DataSet: TDataSet);
  private
    prevGroup_id : widestring;

  public
    LOAICHIPHI:Smallint;
    { Public declarations }
  end;

var
  GroupMatNormFrm: TGroupMatNormFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, CM_PopupForm, DBFunctions, CM_Functions, htmlhlp;


{$R *.dfm}

procedure TGroupMatNormFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdKHNORM_VALUE.SummaryFooterFormat:=SOLUONG_FORMAT;
  qryGroupNormMATERIAL_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TGroupMatNormFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TGroupMatNormFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TGroupMatNormFrm.qryGroupNormAfterInsert(DataSet: TDataSet);
begin
  qryGroupNormMAPX.FocusControl;
end;

procedure TGroupMatNormFrm.qryGroupNormBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TGroupMatNormFrm.qryGroupNormBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TGroupMatNormFrm.qryGroupNormBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TGroupMatNormFrm.qryGroupNormNewRecord(DataSet: TDataSet);
begin
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select max(MATGROUP_NORM_ID) maxid from MATGROUP_NORM where period_id = :period_id';
  maindm.qryCommon.ParamByName('period_id').AsInteger := CurrentPeriod;
  maindm.qryCommon.Prepare;
  maindm.qryCommon.Open;

  qryGroupNormMATGROUP_NORM_ID.Value :=maindm.qryCommon.fieldbyname('maxid').AsInteger +1;
  qryGroupNormPERIOD_ID.Value := CurrentPeriod;
  qryGroupNormMTYPE_ID.Value := 2;
  qryGroupNormMALOAI.AsInteger := 6;
  qryGroupNormGRPTYPE_ID.Value := 2;
  qryGroupNormOBJGRP_ID.Value  :=  prevGroup_id;
  if prevGroup_id = '' then
    qryGroupNormOBJGRP_ID.Clear;

end;

procedure TGroupMatNormFrm.qryGroupNormPostError(DataSet: TDataSet;
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
    qryGroupNormOBJGRP_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryGroupNormOBJGRP_ID.FocusControl;
  end;
end;

procedure TGroupMatNormFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TGroupMatNormFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TGroupMatNormFrm.grdKHOBJGRP_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
//[NXHop sua]
{  if accept then
    Text := MainDM.qryPObjGrpOBJGRP_ID.Value;
}
  OnPopupCloseUp(Accept, MainDM.qryPObjGrp,
      qryGroupNorm, 'OBJGRP_ID',
        'OBJGRP_ID', 'OBJGRP_ID', Text);
  MainDM.qryPObjGrp.Close;
  MainDM.qryPObjGrp.SQLWhere.Clear;
end;

procedure TGroupMatNormFrm.grdKHMAPXCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
    Text := vpItemID;
end;

procedure TGroupMatNormFrm.grdKHEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  if grdKH.FocusedField.FieldName='OBJGRP_ID' then
    MainDM.CurObjTypeID:=2
  else if grdKH.FocusedField.FieldName='MAPX' then
    MainDM.CurObjTypeID:=6
  else if grdKH.FocusedField.FieldName='MATERIAL_ID' then
    MainDM.CurObjTypeID:=2;
end;

procedure TGroupMatNormFrm.FormShow(Sender: TObject);
begin
  qryGroupNorm.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;

  qryGroupNorm.Open;
  SetVisible(Self);  
end;

procedure TGroupMatNormFrm.qryGroupNormOBJGRP_IDChange(Sender: TField);
begin
  MainDM.qryPObjGrp.Open;
  if qryGroupNormOBJGRP_ID.Value<>MainDM.qryPObjGrpOBJGRP_ID.Value then
  if Not MainDM.qryPObjGrp.Locate('OBJGRP_ID',qryGroupNormOBJGRP_ID.Value,[loCaseInsensitive,loPartialKey]) then
  begin
    qryGroupNormOBJGRP_ID.FocusControl;
    Exit;
  end;
  if qryGroupNormOBJGRP_ID.Value<>MainDM.qryPObjGrpOBJGRP_ID.Value then
    qryGroupNormOBJGRP_ID.Value:=MainDM.qryPObjGrpOBJGRP_ID.Value;
  qryGroupNormOBJGRP_NAME.Value:=MainDM.qryPObjGrpOBJGRP_NAME.Value;
end;

procedure TGroupMatNormFrm.qryGroupNormBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TGroupMatNormFrm.grdKHOBJGRP_IDInitPopup(Sender: TObject);
begin
  with MainDM.qryPObjGrp do
  begin
    if Active then Close;
    SQLWhere.Text:=' WHERE OTYPE_ID=:OTYPE_ID';
    ParamByName('OTYPE_ID').Value:=MainDM.CurObjTypeID;
    Open;
  end;
  InitPopupControl('dxlcObjGroup', CM_PopupFrm, Sender, 2,grdKH);
  CM_PopupFrm.dxtlObjGroup.FullExpand;
end;

procedure TGroupMatNormFrm.grdKHColumn7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TGroupMatNormFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
  if qryGroupNorm.RecordCount=0 then
    qryGroupNorm.Insert;
end;

procedure TGroupMatNormFrm.qryGroupNormAfterPost(DataSet: TDataSet);
begin
  prevGroup_id := qryGroupNormOBJGRP_ID.Value;

end;

end.
