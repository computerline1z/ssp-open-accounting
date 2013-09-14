unit PopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls, dxDBTL, Forms,
  ActnList, StdCtrls, Buttons, dxEditor, dxEdLib, dxDBELib, 
  dxDBTLCl, dxGrClms, TntButtons, ElXPThemedControl, ElEdits, ElBtnCtl,
  ElPopBtn, ElCLabel, ElLabel, ElPanel;

type
  TPopupFrm = class(TForm)
    PnlTK: TPanel;
    tlAcc: TdxDBTreeList;
    tlAccColumn1: TdxDBTreeListColumn;
    tlAccColumn2: TdxDBTreeListColumn;
    ActionList1: TActionList;
    acSelObj: TAction;
    acSelTK: TAction;
    btnNewAcc: TELPopupButton;
    SpeedButton17: TELPopupButton;
    acNoSelObj: TAction;
    acNoselTK: TAction;
    PnlWare: TPanel;
    btnNewWare: TELPopupButton;
    SpeedButton23: TELPopupButton;
    grdWare: TdxDBGrid;
    grdWareMaso: TdxDBGridColumn;
    grdWareTen: TdxDBGridColumn;
    acSelWare: TAction;
    acNoSelWare: TAction;
    Pnl_DocType: TPanel;
    TreeDocType: TdxDBTreeList;
    TreeDocType_Name: TdxDBTreeListColumn;
    grdNgoaite: TdxDBGrid;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    PnlItem: TPanel;
    btnNewHanmuc: TELPopupButton;
    SpeedButton4: TELPopupButton;
    TreeItem: TdxDBTreeList;
    dxDBTreeListColumn4: TdxDBTreeListColumn;
    dxDBTreeListColumn5: TdxDBTreeListColumn;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    PnlCommonObj: TPanel;
    btnCommonObj: TElPopupButton;
    btnSelCommonObj: TElPopupButton;
    grdCommonObj: TdxDBGrid;
    btnNoSelComObj: TElPopupButton;
    grdCommonObjOBJECT_ID: TdxDBGridMaskColumn;
    grdCommonObjOBJECT_NAME: TdxDBGridMaskColumn;
    grdCommonObjOTHER_NAME: TdxDBGridMaskColumn;
    grdCommonObjSUBINFO_1: TdxDBGridMaskColumn;
    grdCommonObjSUBINFO_2: TdxDBGridMaskColumn;
    grdCommonObjOBJECT_NOTES: TdxDBGridMaskColumn;
    PnlObjGrp: TPanel;
    btnObjGrp: TElPopupButton;
    btnSelObjGrp: TElPopupButton;
    grdObjGrp: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    btnCancelObjGrp: TElPopupButton;
    grdCommonObjOBJGRP_NAME: TdxDBGridMaskColumn;
    grdWareDiachi: TdxDBGridColumn;
    PnlWork: TPanel;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    grdCongtrinh: TdxDBGrid;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    ElPopupButton5: TElPopupButton;
    btnWareArise: TElPopupButton;
    btnWorkArise: TElPopupButton;
    btnObjArise: TElPopupButton;
    btnAccArise: TElPopupButton;
    PnlBudget: TPanel;
    btnBudgetList: TElPopupButton;
    btnSelBudget: TElPopupButton;
    TreeBudget: TdxDBTreeList;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    dxDBTreeListColumn3: TdxDBTreeListColumn;
    btnCancelBudget: TElPopupButton;
    TreeItemACTICLE_NO: TdxDBTreeListColumn;
    tlAccENGLISH_NAME: TdxDBTreeListColumn;
    grdCongtrinhWORK_ID: TdxDBGridMaskColumn;
    PnlInvType: TPanel;
    ElPopupButton6: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    grdInvType: TdxDBGrid;
    ElPopupButton9: TElPopupButton;
    grdInvTypeINVTYPE_ID: TdxDBGridMaskColumn;
    grdInvTypeINVTYPE_NAME: TdxDBGridMaskColumn;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    PnlButton: TElPanel;
    PnlBalance: TElPanel;
    ElLabel1: TElLabel;
    PnlPPXK: TPanel;
    ElPopupButton14: TElPopupButton;
    ElPopupButton15: TElPopupButton;
    acPPXK: TAction;
    grdPPXK: TdxDBGrid;
    grdPPXKMS_PPXK: TdxDBGridMaskColumn;
    grdPPXKTEN_PPXK: TdxDBGridMaskColumn;
    PnlUnit: TPanel;
    btnUnitList: TElPopupButton;
    btnSelectUnit: TElPopupButton;
    gridUnit: TdxDBGrid;
    btnCancelUnit: TElPopupButton;
    gridUnitUNIT_ID: TdxDBGridMaskColumn;
    gridUnitUNIT_NAME: TdxDBGridMaskColumn;
    pnlBranch: TPanel;
    grdBranch: TdxDBTreeList;
    grdBranchBRANCH_ID: TdxDBTreeListMaskColumn;
    grdBranchFULLNAME: TdxDBTreeListMaskColumn;
    grdBranchPBRANCH_ID: TdxDBTreeListMaskColumn;
    grdBranchSHORTNAME: TdxDBTreeListMaskColumn;
    pnlVATList: TPanel;
    grdVATList: TdxDBGrid;
    grdVATListVAT_ID: TdxDBGridMaskColumn;
    grdVATListVAT_NAME: TdxDBGridMaskColumn;
    grdVATListVAT_PER: TdxDBGridMaskColumn;
    grdVATListOTHER_ID: TdxDBGridMaskColumn;
    grdVATListMETHOD_ID: TdxDBGridMaskColumn;
    PnlDMDinhmuc: TPanel;
    ElPopupButton10: TElPopupButton;
    ElPopupButton11: TElPopupButton;
    grdDMDinhmuc: TdxDBGrid;
    ElPopupButton12: TElPopupButton;
    grdDMDinhmucMATERIAL_NORM_ID: TdxDBGridMaskColumn;
    grdDMDinhmucMAPX: TdxDBGridMaskColumn;
    grdDMDinhmucOBJECT_ID: TdxDBGridMaskColumn;
    grdDMDinhmucMATERIAL_ID: TdxDBGridMaskColumn;
    tlAccACC_MAP_ID: TdxDBTreeListColumn;
    grdobjectlist: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    grdCommonObjSHORT_NAME: TdxDBGridMaskColumn;
    pnlObjectList: TdxDBGrid;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    dxDBGridMaskColumn7: TdxDBGridMaskColumn;
    procedure tlAccDblClick(Sender: TObject);
    procedure tlAccKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNewAccClick(Sender: TObject);
    procedure acSelTKExecute(Sender: TObject);
    procedure acNoselTKExecute(Sender: TObject);
    procedure acSelWareExecute(Sender: TObject);
    procedure acNoSelWareExecute(Sender: TObject);
    procedure btnNewWareClick(Sender: TObject);
    procedure grdWareDblClick(Sender: TObject);
    procedure grdWareKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeDocTypeDblClick(Sender: TObject);
    procedure TreeDocTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SetPopupValue();
    procedure grdNgoaiteEnter(Sender: TObject);
    procedure grdNgoaiteDblClick(Sender: TObject);
    procedure grdNgoaiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdWareEnter(Sender: TObject);
    procedure tlAccEnter(Sender: TObject);
    procedure TreeDocTypeEnter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnNewHanmucClick(Sender: TObject);
    procedure TreeItemEnter(Sender: TObject);
    procedure TreeItemDblClick(Sender: TObject);
    procedure TreeItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdWareChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure grdCommonObjEnter(Sender: TObject);
    procedure btnCommonObjClick(Sender: TObject);
    procedure btnSelCommonObjClick(Sender: TObject);
    procedure btnNoSelComObjClick(Sender: TObject);
    procedure grdCommonObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCommonObjDblClick(Sender: TObject);
    procedure grdObjGrpEnter(Sender: TObject);
    procedure grdObjGrpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjGrpDblClick(Sender: TObject);
    procedure btnSelObjGrpClick(Sender: TObject);
    procedure btnCancelObjGrpClick(Sender: TObject);
    procedure btnObjGrpClick(Sender: TObject);
    procedure grdCongtrinhDblClick(Sender: TObject);
    procedure grdCongtrinhEnter(Sender: TObject);
    procedure grdCongtrinhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure btnWareAriseClick(Sender: TObject);
    procedure btnWorkAriseClick(Sender: TObject);
    procedure btnObjAriseClick(Sender: TObject);
    procedure btnAccAriseClick(Sender: TObject);
    procedure btnBudgetListClick(Sender: TObject);
    procedure btnSelBudgetClick(Sender: TObject);
    procedure btnCancelBudgetClick(Sender: TObject);
    procedure TreeBudgetDblClick(Sender: TObject);
    procedure TreeBudgetEnter(Sender: TObject);
    procedure TreeBudgetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton6Click(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
    procedure ElPopupButton9Click(Sender: TObject);
    procedure grdInvTypeDblClick(Sender: TObject);
    procedure grdInvTypeEnter(Sender: TObject);
    procedure grdInvTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCommonObjChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure ElPopupButton15Click(Sender: TObject);
    procedure acPPXKExecute(Sender: TObject);
    procedure grdPPXKDblClick(Sender: TObject);
    procedure grdPPXKEnter(Sender: TObject);
    procedure grdPPXKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridUnitDblClick(Sender: TObject);
    procedure gridUnitEnter(Sender: TObject);
    procedure btnUnitListClick(Sender: TObject);
    procedure btnSelectUnitClick(Sender: TObject);
    procedure btnCancelUnitClick(Sender: TObject);
    procedure grdBranchEnter(Sender: TObject);
    procedure grdBranchDblClick(Sender: TObject);
    procedure grdBranchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdVATListDblClick(Sender: TObject);
    procedure grdVATListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDMDinhmucDblClick(Sender: TObject);
    procedure grdDMDinhmucEnter(Sender: TObject);
    procedure ElPopupButton11Click(Sender: TObject);
    procedure ElPopupButton12Click(Sender: TObject);
    procedure ElPopupButton10Click(Sender: TObject);
    procedure gridUnitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdobjectlistDblClick(Sender: TObject);
    procedure grdobjectlistKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PopupFrm: TPopupFrm;
implementation

uses MainDataMdl, DB, MainForm, GlobalUnit, ObjectForm,
  AssetForm, LookupFrm, GlobalInterface, ObjGrpForm, InstockWare,
  RentAriseCT, ObjectDetailForm, AccDetailForm, ChildAccDetailForm,
  ActicleForm, dxTreeGridMenus, InvoiceTypeForm, BudgetForm, UnitForm,
  MaterialNormForm, WarehouseForm;

{$R *.dfm}

procedure TPopupFrm.SetPopupValue();
begin
  with MainDM do
    begin
      vpItemID := dsPComObj.DataSet.FieldByName('OBJECT_ID').Value;
      if dsPComObj.DataSet.FieldByName('OBJECT_NAME').IsNull then
        vpItemName := ''
      else
        vpItemName := dsPComObj.DataSet.FieldByName('OBJECT_NAME').Value;
      if dsPComObj.DataSet.FieldByName('SUBINFO_1').IsNull then
        vpSubItem_1 :=''
      else
        vpSubItem_1 := dsPComObj.DataSet.FieldByName('SUBINFO_1').Value;
      if dsPComObj.DataSet.FieldByName('SUBINFO_2').IsNull then
        vpSubItem_2 := ''
      else
        vpSubItem_2 := dsPComObj.DataSet.FieldByName('SUBINFO_2').Value;
      if dsPComObj.DataSet.FieldByName('SUBINFO_3').IsNull then
        vpSubItem_3 := ''
      else
        vpSubItem_3 := dsPComObj.DataSet.FieldByName('SUBINFO_3').Value;
      vpOtypeID :=CurObjTypeID;
    end;
end;

procedure TPopupFrm.tlAccDblClick(Sender: TObject);
begin
  acSelTK.Execute;
end;

procedure TPopupFrm.tlAccKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self)
  else if Key = VK_RETURN then
    acSelTK.Execute
  else if (Key = VK_ESCAPE) then
    acNoselTK.Execute
  else
    ProcessKeyDownInTreeList(tlAcc, Key, Shift);
end;

procedure TPopupFrm.btnNewAccClick(Sender: TObject);
begin
  MainFrm.acAccountList.Execute;
  {dong dong nay sua bug 5.0 ID 1139}
{  MainDM.qryPAcc.Filtered:=True;}
  MainDM.qryPAcc.Open;
  if LastModifyItemID<>'' then
    MainDM.qryPAcc.Locate('ACCOUNT_ID',LastModifyItemID,[]);
end;

procedure TPopupFrm.acSelTKExecute(Sender: TObject);
begin
  if MainDM.qryPAcc.RecordCount=0 then exit;
  if MainDM.qryPAccISMIN.AsInteger =1  then
    (GetParentForm(tlAcc) as TdxPopupEditForm).ClosePopup(True)
  else
    if AllowSelectParent then
      (GetParentForm(tlAcc) as TdxPopupEditForm).ClosePopup(True)
    else
      tlAcc.FocusedNode.Expand(True);
end;

procedure TPopupFrm.acNoselTKExecute(Sender: TObject);
begin
  (GetParentForm(tlAcc) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.acSelWareExecute(Sender: TObject);
begin
  (GetParentForm(grdWare) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.acNoSelWareExecute(Sender: TObject);
begin
  (GetParentForm(grdWare) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.btnNewWareClick(Sender: TObject);
begin
  with TWarehouseFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  MainDM.qryPWare.Open;
end;

procedure TPopupFrm.grdWareDblClick(Sender: TObject);
begin
  acSelWare.Execute;
end;

procedure TPopupFrm.grdWareKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self)
  else if Key = VK_RETURN then
    acSelWare.Execute
  else  if (Key = VK_ESCAPE) then
    acNoSelWare.Execute
  else
    ProcessKeyDownInGrid(grdWare, Key, Shift, True,4);
end;

procedure TPopupFrm.TreeDocTypeDblClick(Sender: TObject);
begin
  if TreeDocType.FocusedNode<>nil then
  if not TreeDocType.FocusedNode.HasChildren then
    (GetParentForm(TreeDocType) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.TreeDocTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key=VK_ESCAPE then
    (GetParentForm(TreeDocType) as TdxPopupEditForm).ClosePopup(False);

  if Key<>VK_Return then exit;
  if TreeDocType.FocusedNode=nil then exit;
  if not TreeDocType.FocusedNode.HasChildren then
    (GetParentForm(TreeDocType) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.FormCreate(Sender: TObject);
begin
  btnNewAcc.Enabled := SSPUserRight[7].RR;
  btnNewWare.Enabled := SSPUserRight[11].RR;
  btnNewHanmuc.Enabled := MainFrm.acItemList.Enabled;
  SetCaption(Self);
end;

procedure TPopupFrm.grdNgoaiteEnter(Sender: TObject);
begin
  if not MainDM.qryPCurrency.Active then
    MainDM.qryPCurrency.Open;
end;

procedure TPopupFrm.grdNgoaiteDblClick(Sender: TObject);
begin
  (GetParentForm(grdNgoaite) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdNgoaiteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key = VK_RETURN then
    (GetParentForm(grdNgoaite) as TdxPopupEditForm).ClosePopup(True);

  if (Key = VK_ESCAPE) then
    (GetParentForm(grdNgoaite) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.grdWareEnter(Sender: TObject);
begin
  if not MainDM.qryPWare.Active then
    MainDM.qryPWare.Open;
end;

procedure TPopupFrm.tlAccEnter(Sender: TObject);
begin
  if not MainDM.qryPAcc.Active then
    MainDM.qryPAcc.Open;
  if CurLanguage=2 then
    tlAccColumn2.FieldName:='ENGLISH_NAME'
  else
    tlAccColumn2.FieldName:='ACCOUNT_NAME';
end;

procedure TPopupFrm.TreeDocTypeEnter(Sender: TObject);
begin
  if not MainDM.qryPDocType.Active then
    MainDM.qryPDocType.Open;

  if CurLanguage=2 then
    TreeDocType_Name.FieldName:='ENGLISH_NAME'
  else
    TreeDocType_Name.FieldName:='DOCTYPE_NAME';
end;

procedure TPopupFrm.SpeedButton4Click(Sender: TObject);
begin
  if MainDM.qryPActicle.RecordCount=0 then exit;
  if not TreeItem.FocusedNode.HasChildren then
    (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.btnNewHanmucClick(Sender: TObject);
begin
  with TActicleFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;

  MainDM.qryPActicle.Open;
  if LastModifyItemID<>'' then
    MainDM.qryPActicle.Locate('ACTICLE_ID', LastModifyItemID,[]);
end;

procedure TPopupFrm.TreeItemEnter(Sender: TObject);
begin
  if not MainDM.qryPActicle.Active then
    MainDM.qryPActicle.Open;
end;

procedure TPopupFrm.TreeItemDblClick(Sender: TObject);
begin
  {if TreeItem.FocusedNode=nil then exit;
  if not TreeItem.FocusedNode.HasChildren then
    (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(True);
 }
 if MainDM.qryPActicle.RecordCount = 0 then exit;

 if not TreeItem.FocusedNode.HasChildren then
    (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(True)
 else
 if AllowSelectBudgetParent then
      (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(True)
 else
 begin
      TreeItem.FocusedNode.Expand(True);
 end

end;

procedure TPopupFrm.TreeItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self)
  else if Key = VK_RETURN then
  begin
    if TreeItem.FocusedNode<>nil then
      if not TreeItem.FocusedNode.HasChildren then
        (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(True);
  end
  else if (Key = VK_ESCAPE) then
    (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInTreeList(TreeItem, Key, Shift);    
end;

procedure TPopupFrm.grdWareChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  grdWare.Hint := MainDM.qryPWareWAREHOUSE_ADDR.Value;
end;

procedure TPopupFrm.ElPopupButton3Click(Sender: TObject);
begin
  (GetParentForm(tlAcc) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.ElPopupButton4Click(Sender: TObject);
begin
  (GetParentForm(TreeItem) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.ElPopupButton7Click(Sender: TObject);
begin
  (GetParentForm(grdWare) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.grdCommonObjEnter(Sender: TObject);
begin
  with MainDM do
  begin

    if qryObjType.Active=False then qryObjType.Open;
    if dsPComObj.DataSet.Active=False then dsPComObj.DataSet.Open;

    if ((PreObjTypeID<>CurObjTypeID) and ((CurObjTypeID>4) or (CurObjTypeID=0))) then
    begin
      qryPComObj.OnFilterRecord:=qryPComObjFilterRecord;
      qryPComObj.Filtered:=True;
      PreObjTypeID:=CurObjTypeID;
    end;

    if qryObjTypeOTYPE_ID.AsInteger<>CurObjTypeID then
      qryObjType.Locate('OTYPE_ID',CurObjTypeID,[]);

    grdCommonObjOBJECT_ID.Caption :=qryObjTypeID_CAPTION.Value;
    grdCommonObjOBJECT_NAME.Caption :=qryObjTypeNAME_CAPTION.Value;
  end;
  //grdCommonObj.FullExpand;
end;

procedure TPopupFrm.btnCommonObjClick(Sender: TObject);
begin
  IsChangeList:=False;
  if MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').IsNull then
    LastViewItemID:=''
  else
    LastViewItemID:=MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value;
  if MainDM.CurObjTypeID=0 then Exit;
  if MainDM.CurObjTypeID=3 then
  begin
    if MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').IsNull then
      SohieuTSCD:=''
    else
      SohieuTSCD:=MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value;
    with TAssetFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
  end 
  else
    with TObjectFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;

  if IsChangeList then
  with MainDM do
  begin
    dsPComObj.DataSet.Open;
    if LastModifyItemID<>'' then
      dsPComObj.DataSet.Locate('OBJECT_ID', LastModifyItemID,[]);
  end;
end;

procedure TPopupFrm.btnSelCommonObjClick(Sender: TObject);
begin
  if MainDM.dsPComObj.DataSet.RecordCount=0 then Exit;
  SetPopupValue();
 (GetParentForm(grdCommonObj) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.btnNoSelComObjClick(Sender: TObject);
begin
  (GetParentForm(grdCommonObj) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.grdCommonObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if ((ssShift in Shift) and (ssCtrl in Shift) and (Key=ord('B'))) then
    grdCommonObj.FullExpand
  else if ((ssShift in Shift) and (ssCtrl in Shift) and (Key=ord('T'))) then
    grdCommonObj.FullCollapse
  else if Key = VK_RETURN then
  begin
    if MainDM.dsPComObj.DataSet.RecordCount=0 then Exit;
    SetPopupValue;
    (GetParentForm(grdCommonObj) as TdxPopupEditForm).ClosePopup(True);
  end
  else if (Key = VK_ESCAPE) then
    (GetParentForm(grdCommonObj) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInGrid(grdCommonObj, Key, Shift, True,4);
end;

procedure TPopupFrm.grdCommonObjDblClick(Sender: TObject);
begin
  if MainDM.dsPComObj.DataSet.RecordCount=0 then Exit;  
  SetPopupValue;
  (GetParentForm(grdCommonObj) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdObjGrpEnter(Sender: TObject);
begin
  if not MainDM.qryPObjGrp.Active then
    MainDM.qryPObjGrp.Open;

  if MainDM.qryPObjGrpOTYPE_ID.AsInteger<>MainDM.CurObjTypeID then
  begin
    MainDM.qryPObjGrp.OnFilterRecord:=MainDM.qryPObjGrpFilterRecord;
    MainDM.qryPObjGrp.Filtered:=True;
  end;
end;

procedure TPopupFrm.grdObjGrpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
    
  if Key = VK_RETURN then
    (GetParentForm(grdObjGrp) as TdxPopupEditForm).ClosePopup(True)
  else  if (Key = VK_ESCAPE) then
    (GetParentForm(grdObjGrp) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInGrid(grdObjGrp, Key, Shift, True,4);
end;

procedure TPopupFrm.grdObjGrpDblClick(Sender: TObject);
begin
  (GetParentForm(grdObjGrp) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.btnSelObjGrpClick(Sender: TObject);
begin
  (GetParentForm(grdObjGrp) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.btnCancelObjGrpClick(Sender: TObject);
begin
  (GetParentForm(grdObjGrp) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.btnObjGrpClick(Sender: TObject);
begin
  with TObjGrpFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  MainDM.qryPObjGrp.Open;
end;

procedure TPopupFrm.grdCongtrinhDblClick(Sender: TObject);
begin
  (GetParentForm(grdCongtrinh) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdCongtrinhEnter(Sender: TObject);
begin
  if Not MainDM.qryPWork.Active then
    MainDM.qryPWork.Open;
end;

procedure TPopupFrm.grdCongtrinhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
    
  if Key = VK_RETURN then
      (GetParentForm(grdCongtrinh) as TdxPopupEditForm).ClosePopup(True)
  else  if (Key = VK_ESCAPE) then
      (GetParentForm(grdCongtrinh) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInGrid(grdCongtrinh, Key, Shift, True,4);      
end;

procedure TPopupFrm.ElPopupButton2Click(Sender: TObject);
begin
  (GetParentForm(grdCongtrinh) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.ElPopupButton5Click(Sender: TObject);
begin
  (GetParentForm(grdCongtrinh) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.ElPopupButton1Click(Sender: TObject);
begin
  MainFrm.acCongtrinh.Execute;

  if LastModifyItemID<>'' then
  begin
    MainDM.qryPWork.Open;
    MainDM.qryPWork.Locate('WORK_ID', LastModifyItemID,[]);
  end;
end;

procedure TPopupFrm.btnWareAriseClick(Sender: TObject);
begin
  if MainDM.qryPWareWAREHOUSE_ID.IsNull then Exit;
  with TInstockWareFrm.Create(Self) do
  try
    AParamMAKHO:=MainDM.qryPWareWAREHOUSE_ID.Value;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TPopupFrm.btnWorkAriseClick(Sender: TObject);
begin
  with TRentAriseCTFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TPopupFrm.btnObjAriseClick(Sender: TObject);
begin
  if MainDM.CurObjTypeID=2 then
  begin
    if MainDM.qryPHHOBJECT_ID.IsNull then exit;
    with TInstockWareFrm .Create(Self) do
    try
      AParamMAKHO:='';
      AParamMAHH:= MainDM.qryPHHOBJECT_ID.Value;
      ShowModal;
    finally
      Free;
    end;
  end
  else
  begin
    if MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').IsNull then Exit;
    with TAccDetailFrm.Create(Self) do
    try
      APAramLOAIDT:=MainDM.CurObjTypeID;
      APAramMADT:= MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TPopupFrm.btnAccAriseClick(Sender: TObject);
var
  loaitk : Smallint;
begin
  loaitk:=MainDM.qryPAccOTYPE_ID.AsInteger;
  if ((loaitk=0) or (MainDM.qryPAccISMIN.AsInteger=0) or ((loaitk=2) and (MainDM.qryPAccACCOUNT_TAG.AsInteger=2))) then
    with TChildAccDetailFrm.Create(Self) do
      try
        ShowModal;
      finally
        Free;
      end
  else if (loaitk=2) then
    with TInstockWareFrm .Create(Self) do
    try
      AParamMAKHO:='';
      AParamMAHH:= '';
      AParamSHTK:= MainDM.qryPAccACCOUNT_ID.Value;
      ShowModal;
    finally
      Free;
    end
  else
    with TObjectDetailFrm.Create(Self) do
      try
        ShowModal;
      finally
        Free;
      end;
end;

procedure TPopupFrm.btnBudgetListClick(Sender: TObject);
begin
  With TBudgetFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  MainDM.qryPBudget.Open;
end;

procedure TPopupFrm.btnSelBudgetClick(Sender: TObject);
begin
  if MainDM.qryPBudget.RecordCount=0 then exit;
  if Not TreeBudget.FocusedNode.HasChildren then
    (GetParentForm(TreeBudget) as TdxPopupEditForm).ClosePopup(True)
  else
    if Not TreeBudget.FocusedNode.Expanded then
      TreeBudget.FocusedNode.Expand(True);
end;

procedure TPopupFrm.btnCancelBudgetClick(Sender: TObject);
begin
  (GetParentForm(tlAcc) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.TreeBudgetDblClick(Sender: TObject);
begin
  btnSelBudgetClick(Sender);
end;

procedure TPopupFrm.TreeBudgetEnter(Sender: TObject);
begin
  if not MainDM.qryPBudget.Active then
    MainDM.qryPBudget.Open;
end;

procedure TPopupFrm.TreeBudgetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key = VK_RETURN then
    btnSelBudgetClick(Sender)
  else if (Key = VK_ESCAPE) then
    btnCancelBudgetClick(Sender)
  else
    ProcessKeyDownInTreeList(TreeBudget, Key, Shift);
end;

procedure TPopupFrm.ElPopupButton6Click(Sender: TObject);
begin
  with TInvoiceTypeFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  MainDM.qryPInvType.Open;
end;

procedure TPopupFrm.ElPopupButton8Click(Sender: TObject);
begin
  (GetParentForm(grdInvType) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.ElPopupButton9Click(Sender: TObject);
begin
  (GetParentForm(grdInvType) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.grdInvTypeDblClick(Sender: TObject);
begin
  (GetParentForm(grdInvType) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdInvTypeEnter(Sender: TObject);
begin
  if Not MainDM.qryPInvType.Active then
    MainDM.qryPInvType.Open;
end;

procedure TPopupFrm.grdInvTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key = VK_RETURN then
      (GetParentForm(grdInvType) as TdxPopupEditForm).ClosePopup(True)
  else  if (Key = VK_ESCAPE) then
      (GetParentForm(grdInvType) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInGrid(grdInvType, Key, Shift,False);
end;

procedure TPopupFrm.grdCommonObjChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  //Khi mo nay ra nho mo o DocFullActive this panel.visile=True
  {if ((grdCommonObj.Focused) and (Not IsSearching)) then
  begin
    MainDM.qryGetBalObj.Close;
    MainDM.qryGetBalObj.Open;
  end;}
end;

procedure TPopupFrm.ElPopupButton15Click(Sender: TObject);
begin
  (GetParentForm(PnlPPXK) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.acPPXKExecute(Sender: TObject);
begin
{  if MainDM.qryPPXK.RecordCount = 0 then exit;
  if MainDM.qryPPXK.AsInteger = 1  then
    (GetParentForm(PnlPPXK) as TdxPopupEditForm).ClosePopup(True)
  else
    if AllowSelectParent then
      (GetParentForm(PnlPPXK) as TdxPopupEditForm).ClosePopup(True)
    else
      PnlPPXK.FocusedNode.Expand(True); }
  (GetParentForm(grdPPXK) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdPPXKDblClick(Sender: TObject);
begin
  if grdPPXK.FocusedNode=nil then exit;
  if not grdPPXK.FocusedNode.HasChildren then
    (GetParentForm(grdPPXK) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdPPXKEnter(Sender: TObject);
begin
  if Not MainDM.qryPPXK.Active then
    MainDM.qryPPXK.Open;
end;

procedure TPopupFrm.grdPPXKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key = VK_RETURN then
    (GetParentForm(grdPPXK) as TdxPopupEditForm).ClosePopup(True);

  if (Key = VK_ESCAPE) then
    (GetParentForm(grdPPXK) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.gridUnitDblClick(Sender: TObject);
begin
  (GetParentForm(gridUnit) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.gridUnitEnter(Sender: TObject);
begin
  if not MainDM.qryUnit.Active then
    MainDM.qryUnit.Open;
end;

procedure TPopupFrm.btnUnitListClick(Sender: TObject);
begin
  with TUnitFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TPopupFrm.btnSelectUnitClick(Sender: TObject);
begin
  (GetParentForm(gridUnit) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.btnCancelUnitClick(Sender: TObject);
begin
  (GetParentForm(gridUnit) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.grdBranchEnter(Sender: TObject);
begin
    grdBranch.FullExpand;
end;

procedure TPopupFrm.grdBranchDblClick(Sender: TObject);
begin
  if MainDM.qryBranch.RecordCount=0 then exit;
  (GetParentForm(grdBranch) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdBranchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self)
end;

procedure TPopupFrm.grdVATListDblClick(Sender: TObject);
begin
  if MainDM.qryVATList.RecordCount=0 then exit;
  (GetParentForm(grdVATList) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdVATListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    (GetParentForm(grdVATList) as TdxPopupEditForm).ClosePopup(True);

  if (Key = VK_ESCAPE) then
    (GetParentForm(grdVATList) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.grdDMDinhmucDblClick(Sender: TObject);
begin
  (GetParentForm(grdDMDinhmuc) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdDMDinhmucEnter(Sender: TObject);
begin
  if not MainDM.qryDMDinhmuc.Active then
    MainDM.qryDMDinhmuc.Open;
end;

procedure TPopupFrm.ElPopupButton11Click(Sender: TObject);
begin
  (GetParentForm(grdDMDinhmuc) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.ElPopupButton12Click(Sender: TObject);
begin
  (GetParentForm(grdDMDinhmuc) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TPopupFrm.ElPopupButton10Click(Sender: TObject);
begin
  with TMaterialNormFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TPopupFrm.gridUnitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self)
  else if Key = VK_RETURN then
    (GetParentForm(gridUnit) as TdxPopupEditForm).ClosePopup(True)
  else  if (Key = VK_ESCAPE) then
    (GetParentForm(gridUnit) as TdxPopupEditForm).ClosePopup(False)
  else
    ProcessKeyDownInGrid(grdWare, Key, Shift, True,4);
end;

procedure TPopupFrm.grdobjectlistDblClick(Sender: TObject);
begin
 (GetParentForm(grdobjectlist) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TPopupFrm.grdobjectlistKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_F10 then
    LoadCaptionFormInfo(Self);

  if Key = VK_RETURN then
  begin
    (GetParentForm(grdobjectlist) as TdxPopupEditForm).ClosePopup(True);
  end
  else if (Key = VK_ESCAPE) then
    (GetParentForm(grdCommonObj) as TdxPopupEditForm).ClosePopup(False)

end;

end.


