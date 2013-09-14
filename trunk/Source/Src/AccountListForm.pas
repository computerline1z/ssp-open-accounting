unit AccountListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Db, IBODataset, DBActns, ActnList,StrUtils,
  TntStdCtrls, TntButtons, Forms, ElXPThemedControl, ElEdits, ElCheckCtl,
  ElBtnCtl, ElPopBtn, ElCaption, ElPanel, ElGroupBox,KTTKNNForm;

type
  TAccountListFrm = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl2: TdxLayoutControl;
    dxDBTreeList2: TdxDBTreeList;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    btnPost: TELPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    btnCancel: TELPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    btnDel: TELPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    btnAdd: TELPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    btnAddChild: TELPopupButton;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxDBTreeList2Column2: TdxDBTreeListColumn;
    dxLayoutControl2Group4: TdxLayoutGroup;
    qryAccLst: TIBOQuery;
    dsAccLst: TDataSource;
    ActionList1: TActionList;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    pedtOtherObjName: TdxDBPopupEdit;
    lciObjType: TdxLayoutItem;
    dxDBTreeList2Column3: TdxDBTreeListColumn;
    rbTKThue: TElRadioButton;
    rbTKDT: TElRadioButton;
    rbTKBT: TElRadioButton;
    grdObjectType: TdxDBGrid;
    dxDBGridColumn15: TdxDBGridColumn;
    qryAccLstOTYPE_ID: TSmallintField;
    qryAccLstACCOUNT_TAG: TSmallintField;
    qryAccLstBALANCE_TYPE: TSmallintField;
    qryAccLstISMIN: TSmallintField;
    dxLayoutControl2Group1: TdxLayoutGroup;
    rbKhongtheodoi: TElRadioButton;
    dxLayoutControl2Item10: TdxLayoutItem;
    rbTheodoi: TElRadioButton;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    rbDuNo: TElRadioButton;
    rbDuCo: TElRadioButton;
    rbDu2ben: TElRadioButton;
    rbLuongtinh: TElRadioButton;
    qryAccLstACCOUNT_ID: TWideStringField;
    qryAccLstPACCOUNT_ID: TWideStringField;
    qryAccLstACCOUNT_NAME: TWideStringField;
    qryAccLstOTYPE_NAME: TWideStringField;
    ElFormCaption1: TElFormCaption;
    ElGroupBox1: TElGroupBox;
    dxLayoutControl2Item16: TdxLayoutItem;
    ElGroupBox2: TElGroupBox;
    dxLayoutControl2Item12: TdxLayoutItem;
    qryAccLstISSELECT: TSmallintField;
    dxLayoutControl2Group5: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item7: TdxLayoutItem;
    qryAccLstDTYPE_NAME: TWideStringField;
    qryAccLstDTYPE_ID: TSmallintField;
    ElGroupBox3: TElGroupBox;
    dxLayoutControl2Item8: TdxLayoutItem;
    rbNoYeuto: TElRadioButton;
    rbYeuto: TElRadioButton;
    pedtYeuto: TdxDBPopupEdit;
    qryAccLstENGLISH_NAME: TWideStringField;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxDBTreeList2ENGLISH_NAME: TdxDBTreeListMaskColumn;
    qryAccLstFOLLOW_BAL: TSmallintField;
    chkFollowBAl: TdxDBCheckEdit;
    rbTKChiphi: TElRadioButton;
    chkFOLLOW_DOCBAL: TdxDBCheckEdit;
    dxLayoutControl2Item13: TdxLayoutItem;
    qryAccLstFOLLOW_DOCBAL: TSmallintField;
    qryAccLstACC_LEVEL: TSmallintField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Group6: TdxLayoutGroup;
    qryAccLstHAS_BALANCE: TSmallintField;
    qryAccLstNOTICE_WHENEXP: TSmallintField;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Group7: TdxLayoutGroup;
    ElGroupBox4: TElGroupBox;
    rbNoYeuto1: TElRadioButton;
    rbYeuto1: TElRadioButton;
    pedtYeuto1: TdxDBPopupEdit;
    chkFollowBAl1: TdxDBCheckEdit;
    dxLayoutControl2Item17: TdxLayoutItem;
    qryAccLstDTYPE_NAME_1: TWideStringField;
    qryAccLstDTYPE_ID_1: TSmallintField;
    qryAccLstFOLLOW_BAL_1: TSmallintField;
    dxLayoutControl2Item18: TdxLayoutItem;
    ElGraphicButton1: TElGraphicButton;
    dxLayoutControl2Item20: TdxLayoutItem;
    chkExpand: TdxCheckEdit;
    qryAccLstACC_MAP_ID: TWideStringField;
    dxDBTreeList2Column4: TdxDBTreeListColumn;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl2Item21: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAccLstAfterPost(DataSet: TDataSet);
    procedure qryAccLstNewRecord(DataSet: TDataSet);
    procedure qryAccLstPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddChildClick(Sender: TObject);
    procedure dxDBTreeList2ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure qryAccLstDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryAccLstBeforeDelete(DataSet: TDataSet);
    procedure qryAccLstBeforePost(DataSet: TDataSet);
    procedure dxDBTreeList2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryAccLstBeforeEdit(DataSet: TDataSet);
    procedure qryAccLstBeforeInsert(DataSet: TDataSet);
    procedure rbTKBTClick(Sender: TObject);
    procedure rbTKThueClick(Sender: TObject);
    procedure rbTKDTClick(Sender: TObject);
    procedure pedtOtherObjNameCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjectTypeDblClick(Sender: TObject);
    procedure grdObjectTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbKhongtheodoiClick(Sender: TObject);
    procedure rbTheodoiClick(Sender: TObject);
    procedure rbDuNoClick(Sender: TObject);
    procedure rbDuCoClick(Sender: TObject);
    procedure rbLuongtinhClick(Sender: TObject);
    procedure rbDu2benClick(Sender: TObject);
    procedure qryAccLstAfterInsert(DataSet: TDataSet);
    procedure qryAccLstACCOUNT_IDChange(Sender: TField);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure qryAccLstAfterDelete(DataSet: TDataSet);
    procedure pedtYeutoCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure rbNoYeutoClick(Sender: TObject);
    procedure rbYeutoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryAccLstDTYPE_IDChange(Sender: TField);
    procedure rbTKChiphiClick(Sender: TObject);
    procedure dxDBTreeList2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbNoYeuto1Click(Sender: TObject);
    procedure rbYeuto1Click(Sender: TObject);
    procedure pedtYeuto1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryAccLstDTYPE_ID_1Change(Sender: TField);
    procedure ElGraphicButton1Click(Sender: TObject);
    procedure chkExpandClick(Sender: TObject);
    procedure qryAccLstAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
    IsChangeKey:Boolean;
    isChangingNode:Boolean;// Dung de kiem tra khi change node khong thuc hien lenh khi ta set cac radio
    PAccount_ID: Widestring;
    PHasBalance:Smallint;
    PAccount_Name: Widestring;
    POType_Name: Widestring;
    PisDebit:Smallint;
    PAccLevel:Smallint;
    PAccountTag:Smallint;
    PAccountType:Smallint;
  public
    { Public declarations }
  end;

var
  AccountListFrm: TAccountListFrm;

implementation

uses GlobalInterface, MainDataMdl, Functions, PopupForm, GlobalUnit,
  LookupFrm, dxTreeGridMenus;


{$R *.dfm}

procedure TAccountListFrm.FormCreate(Sender: TObject);
begin
  LastModifyItemID:='';
  
  dxLayoutControl2.BeginUpdate;
  SetOnFormCreate(Self);
  Self.Height:=Self.Height+(optFontSize-8)*30;
  Self.Width:=Self.Width+(optFontSize-8)*30;
  dxLayoutControl2.EndUpdate;

  if prmUSEUPPERCASE then
    dxDBEdit5.CharCase:=ecUpperCase;

  qryAccLst.Open;

  isChangingNode:=False;
  MainDM.qryObjectType.Open;
  //Phan quyen
  btnAdd.Enabled := SSPUserRight[7].IR;
  btnAddChild.Enabled := SSPUserRight[7].IR;
  if SSPUserRight[7].DR=False then
    acDel.DataSource := MainDM.dsBanana;

  //Thinh them
  if CurLanguage =2 then
    dxDBTreeList2Column3.Visible := FALSE
  else
    dxDBTreeList2ENGLISH_NAME.Visible:= FALSE;

end;

procedure TAccountListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryAccLst do
  begin
    if State in [dsInsert, dsEdit] then
       Post;
    Close;
  end;
  MainDM.qryObjectType.Close;
end;

procedure TAccountListFrm.qryAccLstAfterPost(DataSet: TDataSet);
begin
  if IsChangeKey then
    qryAccLst.Refresh;
  MainDM.qryPAcc.Close;    
end;

procedure TAccountListFrm.qryAccLstNewRecord(DataSet: TDataSet);
begin
  if PAccount_ID<>'' then
  begin
    qryAccLstPACCOUNT_ID.Value := PAccount_ID;
    qryAccLstACCOUNT_NAME.Value := PAccount_Name;
    qryAccLstOTYPE_NAME.Value := POType_Name;
  end;
  qryAccLstHAS_BALANCE.AsInteger:=PHasBalance;
  qryAccLstFOLLOW_BAL.AsInteger := 0;
  qryAccLstFOLLOW_BAL_1.AsInteger := 0;
  qryAccLstFOLLOW_DOCBAL.AsInteger:=0;
  qryAccLstBALANCE_TYPE.AsInteger := PisDebit;
  qryAccLstACCOUNT_TAG.AsInteger := PAccountTag;
  qryAccLstACC_LEVEL.AsInteger:=PAccLevel+1;
  if PAccountType<>0 then
    qryAccLstOTYPE_ID.AsInteger := PAccountType;

  qryAccLstISMIN.value:=1;
end;

procedure TAccountListFrm.qryAccLstPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'tài khoản')=-803 then
    qryAccLstACCOUNT_ID.FocusControl;
  if (E.Message = 'Khong cho phep thay doi thuoc tinh tai khoan') then
  begin
    ShowMessageUnicode(264,E.Message,0);
    qryAccLst.Cancel;
    qryAccLst.DisableControls;
    qryAccLst.Refresh;
    qryAccLst.EnableControls;
  end

end;

procedure TAccountListFrm.btnAddClick(Sender: TObject);
begin
  if qryAccLst.RecordCount=0 then
  begin
    PAccount_ID:= '';
    PAccLevel:=0;
    PHasBalance:=1;
  end
  else
  begin
    PAccount_ID:= qryAccLstPACCOUNT_ID.Value;
    PAccLevel:=qryAccLstACC_LEVEL.AsInteger-1;
    PHasBalance:=qryAccLstHAS_BALANCE.AsInteger;
  end;

  PisDebit := 0;
  PAccount_Name:= '';
  POType_Name:='';
  PAccountTag:= 0;
  PAccountType:=0;
  qryAccLst.Insert;
end;

procedure TAccountListFrm.btnAddChildClick(Sender: TObject);
begin
  if qryAccLst.RecordCount=0 then
  begin
    PAccount_ID:= '';
    PAccount_Name:= '';
    PAccLevel:=0;
    PHasBalance:=1;
  end
  else
  begin
    PHasBalance:=qryAccLstHAS_BALANCE.AsInteger;
    PAccount_ID:= qryAccLstACCOUNT_ID.Value;
    PAccount_Name:= qryAccLstACCOUNT_NAME.Value;
    POType_Name:=qryAccLstOTYPE_NAME.Value;
    PisDebit := qryAccLstBALANCE_TYPE.AsInteger;
    PAccountTag:= qryAccLstACCOUNT_TAG.AsInteger;
    PAccountType:=qryAccLstOTYPE_ID.AsInteger;
    PAccLevel:=qryAccLstACC_LEVEL.AsInteger;
  end;
  qryAccLst.Insert;
end;

procedure TAccountListFrm.dxDBTreeList2ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  isChangingNode:=True;
  if qryAccLstOTYPE_ID.IsNull then
  begin
    rbKhongtheodoi.Checked := True;
    pedtOtherObjName.Enabled := False;
  end
  else
  begin
    rbTheodoi.Checked := True;
    pedtOtherObjName.Enabled := True;
  end;

  if qryAccLstDTYPE_ID.IsNull then
  begin
    rbNoYeuto.Checked := True;
    pedtYeuto.Enabled := False;
  end
  else
  begin
    rbYeuto.Checked := True;
    pedtYeuto.Enabled := True;
  end;
  chkFollowBAl.Enabled := Not qryAccLstDTYPE_ID.IsNull;

  if qryAccLstDTYPE_ID_1.IsNull then
  begin
    rbNoYeuto1.Checked := True;
    pedtYeuTo1.Enabled := False;
  end
  else
  begin
    rbYeuto1.Checked := True;
    pedtYeuto1.Enabled := True;
  end;
  chkFollowBAl1.Enabled := Not qryAccLstDTYPE_ID_1.IsNull;

  case qryAccLstACCOUNT_TAG.AsInteger of
    0: rbTKBT.Checked:= True;
    1: rbTKThue.Checked := True;
    2: rbTKDT.Checked := True;
    3: rbTKChiphi.Checked := True;
  end;
  case qryAccLstBALANCE_TYPE.AsInteger of
    0:  rbDuNo.Checked:=True;
    1:  rbDuCo.Checked:=True;
    2:  rbLuongtinh.Checked:=True;
    3:  rbDu2ben.Checked:=True;
    else rbDuNo.Checked:=True;
  end;
  isChangingNode:=False;
end;

procedure TAccountListFrm.qryAccLstDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action :=daAbort;
  ShowMessageUnicode(29,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TAccountListFrm.qryAccLstBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,7) then Abort;
end;

procedure TAccountListFrm.qryAccLstBeforePost(DataSet: TDataSet);
begin
  if qryAccLstACCOUNT_ID.IsNull then
  begin
    ShowMessageUnicode(67);
    qryAccLstACCOUNT_ID.FocusControl;
    Abort;
    Exit;
  end;
  if qryAccLstACCOUNT_NAME.IsNull then
  begin
    ShowMessageUnicode(32);
    qryAccLstACCOUNT_NAME.FocusControl;
    Abort;
    Exit;
  end;
  LastModifyItemID:=qryAccLstACCOUNT_ID.Value;
end;

procedure TAccountListFrm.dxDBTreeList2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList2, Key, Shift);
end;

procedure TAccountListFrm.qryAccLstBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(7) then Abort;
  IsChangeKey:=False;
end;

procedure TAccountListFrm.qryAccLstBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(7) then Abort;
  IsChangeKey:=False;
end;

procedure TAccountListFrm.rbTKBTClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstACCOUNT_TAG.AsInteger:=0;
end;

procedure TAccountListFrm.rbTKThueClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstACCOUNT_TAG.AsInteger:=1;
end;

procedure TAccountListFrm.rbTKDTClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstACCOUNT_TAG.AsInteger:=2;
end;

procedure TAccountListFrm.pedtOtherObjNameCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryAccLst.Edit;
    qryAccLstOTYPE_ID.AsInteger:= MainDM.qryObjectTypeOTYPE_ID.AsInteger;
    Text:= MainDM.qryObjectTypeOTYPE_NAME.Value;
  end;
end;

procedure TAccountListFrm.grdObjectTypeDblClick(Sender: TObject);
begin
  (GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TAccountListFrm.grdObjectTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    (GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(True);
  if (Key = VK_ESCAPE) then
    (GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TAccountListFrm.rbKhongtheodoiClick(Sender: TObject);
begin
  if not qryAccLstOTYPE_ID.IsNull then
  begin
    qryAccLst.Edit;
    qryAccLstOTYPE_ID.Clear;
    qryAccLstOTYPE_NAME.Clear;
  end;
  pedtOtherObjName.Enabled:=False;
end;

procedure TAccountListFrm.rbTheodoiClick(Sender: TObject);
begin
  pedtOtherObjName.Enabled:=True;
end;

procedure TAccountListFrm.rbDuNoClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstBALANCE_TYPE.AsInteger:= 0;
end;

procedure TAccountListFrm.rbDuCoClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstBALANCE_TYPE.AsInteger:= 1;
end;

procedure TAccountListFrm.rbLuongtinhClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstBALANCE_TYPE.AsInteger:= 2;
end;

procedure TAccountListFrm.rbDu2benClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstBALANCE_TYPE.AsInteger:= 3;
end;

procedure TAccountListFrm.qryAccLstAfterInsert(DataSet: TDataSet);
var
  cd:Integer;
begin
  if PAccount_ID<>'' then
    qryAccLstACCOUNT_ID.Value:= PAccount_ID
  else
    qryAccLstACCOUNT_ID.Value:= '';
  cd:= Length(PAccount_ID);
  qryAccLstACCOUNT_ID.FocusControl;
  dxDBEdit5.SetSelection(cd,cd,True);
end;

procedure TAccountListFrm.qryAccLstACCOUNT_IDChange(Sender: TField);
begin
  if qryAccLst.State in [dsEdit] then
    IsChangeKey:=False;
end;

procedure TAccountListFrm.ElPopupButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TAccountListFrm.qryAccLstAfterDelete(DataSet: TDataSet);
begin
  MainDM.qryPAcc.Close;
end;

procedure TAccountListFrm.pedtYeutoCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryAccLst.Edit;
    qryAccLstDTYPE_ID.AsInteger:= MainDM.qryObjectTypeOTYPE_ID.AsInteger;
    Text:= MainDM.qryObjectTypeOTYPE_NAME.Value;
  end;
end;

procedure TAccountListFrm.rbNoYeutoClick(Sender: TObject);
begin
  if not qryAccLstDTYPE_ID.IsNull then
  begin
    qryAccLst.Edit;
    qryAccLstDTYPE_ID.Clear;
    qryAccLstDTYPE_NAME.Clear;
  end;
  pedtYeuto.Enabled:=False;
end;

procedure TAccountListFrm.rbYeutoClick(Sender: TObject);
begin
  pedtYeuto.Enabled:=True;
end;

procedure TAccountListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapHeThongTK.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TAccountListFrm.ElPopupButton1Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapHeThongTK.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TAccountListFrm.qryAccLstDTYPE_IDChange(Sender: TField);
begin
  if qryAccLstDTYPE_ID.IsNull then
    qryAccLstFOLLOW_BAL.AsInteger:=0;
  chkFollowBAl.Enabled:=Not qryAccLstDTYPE_ID.IsNull;
end;

procedure TAccountListFrm.rbTKChiphiClick(Sender: TObject);
begin
  if isChangingNode then exit;
  qryAccLst.Edit;
  qryAccLstACCOUNT_TAG.AsInteger:=3;
end;

procedure TAccountListFrm.dxDBTreeList2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TAccountListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TAccountListFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TAccountListFrm.rbNoYeuto1Click(Sender: TObject);
begin
  if not qryAccLstDTYPE_ID_1.IsNull then
  begin
    qryAccLst.Edit;
    qryAccLstDTYPE_ID_1.Clear;
    qryAccLstDTYPE_NAME_1.Clear;
  end;
  pedtYeuto1.Enabled:=False;
end;

procedure TAccountListFrm.rbYeuto1Click(Sender: TObject);
begin
  pedtYeuto1.Enabled:=True;
end;

procedure TAccountListFrm.pedtYeuto1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryAccLst.Edit;
    qryAccLstDTYPE_ID_1.AsInteger := MainDM.qryObjectTypeOTYPE_ID.AsInteger;
    Text := MainDM.qryObjectTypeOTYPE_NAME.Value;
  end;
end;

procedure TAccountListFrm.qryAccLstDTYPE_ID_1Change(Sender: TField);
begin
  if qryAccLstDTYPE_ID_1.IsNull then
    qryAccLstFOLLOW_BAL_1.AsInteger := 0;
  chkFollowBal1.Enabled := Not qryAccLstDTYPE_ID_1.IsNull;
end;

procedure TAccountListFrm.ElGraphicButton1Click(Sender: TObject);
begin
  with TFormKTTKNN.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAccountListFrm.chkExpandClick(Sender: TObject);
begin
    if chkExpand.Checked then
      dxDBTreeList2.FullExpand
    else dxDBTreeList2.FullCollapse;
end;

procedure TAccountListFrm.qryAccLstAfterRefresh(DataSet: TDataSet);
begin
if qryAccLstOTYPE_ID.IsNull then
  begin
    rbKhongtheodoi.Checked := True;
    pedtOtherObjName.Enabled := False;
  end
  else
  begin
    rbTheodoi.Checked := True;
    pedtOtherObjName.Enabled := True;
  end;

  if qryAccLstDTYPE_ID.IsNull then
  begin
    rbNoYeuto.Checked := True;
    pedtYeuto.Enabled := False;
  end
  else
  begin
    rbYeuto.Checked := True;
    pedtYeuto.Enabled := True;
  end;
  chkFollowBAl.Enabled := Not qryAccLstDTYPE_ID.IsNull;

  if qryAccLstDTYPE_ID_1.IsNull then
  begin
    rbNoYeuto1.Checked := True;
    pedtYeuTo1.Enabled := False;
  end
  else
  begin
    rbYeuto1.Checked := True;
    pedtYeuto1.Enabled := True;
  end;
  chkFollowBAl1.Enabled := Not qryAccLstDTYPE_ID_1.IsNull;

  case qryAccLstACCOUNT_TAG.AsInteger of
    0: rbTKBT.Checked:= True;
    1: rbTKThue.Checked := True;
    2: rbTKDT.Checked := True;
    3: rbTKChiphi.Checked := True;
  end;
  case qryAccLstBALANCE_TYPE.AsInteger of
    0:  rbDuNo.Checked:=True;
    1:  rbDuCo.Checked:=True;
    2:  rbLuongtinh.Checked:=True;
    3:  rbDu2ben.Checked:=True;
    else rbDuNo.Checked:=True;
  end;
  isChangingNode:=False;
end;

end.
