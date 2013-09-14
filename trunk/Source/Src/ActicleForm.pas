unit ActicleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TActicleFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acHide: TAction;
    acShowAll: TAction;
    qryItem: TIBOQuery;
    dsItem: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem1: TdxLayoutItem;
    dxDBTreeList1Column1: TdxDBTreeListColumn;
    dxDBTreeList1Column2: TdxDBTreeListColumn;
    locFormItem15: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem16: TdxLayoutItem;
    btnDel: TELPopupButton;
    locFormItem17: TdxLayoutItem;
    btnSave: TELPopupButton;
    locFormItem18: TdxLayoutItem;
    btnCancel: TELPopupButton;
    locFormItem19: TdxLayoutItem;
    btnHelp: TELPopupButton;
    locFormItem20: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormGroup4: TdxLayoutGroup;
    btnInsChild: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    qryItemGrp: TIBOQuery;
    dsGrp: TDataSource;
    PnlGroup: TPanel;
    dxDBTreeList1Column3: TdxDBTreeListPopupColumn;
    TreeGroup: TdxDBTreeList;
    TreeGroupColumn1: TdxDBTreeListColumn;
    TreeGroupColumn2: TdxDBTreeListColumn;
    ElFormCaption1: TElFormCaption;
    btnNewHanmuc: TElPopupButton;
    SpeedButton4: TElPopupButton;
    dxDBTreeList1ITEM_LEVEL: TdxDBTreeListMaskColumn;
    dxDBTreeList1ITEM_ID: TdxDBTreeListMaskColumn;
    qryItemACTICLE_ID: TWideStringField;
    qryItemPACTICLE_ID: TWideStringField;
    qryItemACTICLE_NO: TWideStringField;
    qryItemAGROUP_ID: TWideStringField;
    qryItemACTICLE_LEVEL: TSmallintField;
    qryItemGrpAGROUP_ID: TWideStringField;
    qryItemGrpPAGROUP_ID: TWideStringField;
    qryItemGrpAGROUP_NAME: TWideStringField;
    qryItemTKNO: TWideStringField;
    qryItemTKCO: TWideStringField;
    dxDBTreeList1TKNO: TdxDBTreeListPopupColumn;
    dxDBTreeList1TKCO: TdxDBTreeListPopupColumn;
    btnCancelSel: TElPopupButton;
    qryItemACTICLE_NAME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryItemBeforeInsert(DataSet: TDataSet);
    procedure qryItemBeforeEdit(DataSet: TDataSet);
    procedure qryItemBeforeDelete(DataSet: TDataSet);
    procedure qryItemAfterInsert(DataSet: TDataSet);
    procedure qryItemNewRecord(DataSet: TDataSet);
    procedure btnInsClick(Sender: TObject);
    procedure btnInsChildClick(Sender: TObject);
    procedure qryItemPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryItemDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TreeGroupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeGroupDblClick(Sender: TObject);
    procedure dxDBTreeList1Column3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure TreeGroupEnter(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNewHanmucClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryItemAfterDelete(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
    procedure dxDBTreeList1TKNOCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure btnCancelSelClick(Sender: TObject);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    NewPID:WideString;//Ma so khach hang cha dung de insert
    NewLevel:Smallint;
    NewGroup:Widestring;//Ma so nhom va vung mia cua khach hang cha
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActicleFrm: TActicleFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, ActicleGroupForm, PopupForm, dxTreeGridMenus,
  htmlhlp;


{$R *.dfm}

procedure TActicleFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxDBTreeList1Column1.CharCase:=ecUpperCase;
    dxDBTreeList1Column3.CharCase:=ecUpperCase;
  end;
  LastModifyItemID:='';
  SetOnFormCreate(Sender as TControl);
  qryItem.Open;
  qryItemGrp.Open;
  if SSPUserRight[11].IR=False then
  begin
    btnIns.Enabled := False;
    btnInsChild.Enabled := False;
  end;
  MainDM.qryPAcc.Filtered:=False;
  if SSPUserRight[11].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TActicleFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryItem do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
  qryItemGrp.Close;
end;

procedure TActicleFrm.qryItemBeforePost(DataSet: TDataSet);
begin
  if qryItemACTICLE_ID.IsNull then
  begin
    //get msg at here
    ShowMessageUnicode(136);
    qryItemACTICLE_ID.FocusControl;
    Abort;
    exit;
  end;

  if IsNotHasData(qryItemACTICLE_NAME) then
  begin
    //get msg at here
    ShowMessageUnicode(137);
    qryItemACTICLE_NAME.FocusControl;
    Abort;
  end;
  if IsNotHasData(qryItemAGROUP_ID) then
    qryItemAGROUP_ID.Clear;
  if IsNotHasData(qryItemPACTICLE_ID) then
    qryItemACTICLE_ID.Value:=qryItemACTICLE_NO.Value;
  //else
  if IsNotHasData(qryItemACTICLE_ID) then
    qryItemACTICLE_ID.Value:=qryItemPACTICLE_ID.Value+'.'+qryItemACTICLE_NO.Value;
end;

procedure TActicleFrm.qryItemBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

procedure TActicleFrm.qryItemBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TActicleFrm.qryItemBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TActicleFrm.qryItemAfterInsert(DataSet: TDataSet);
begin
  qryItemACTICLE_NO.FocusControl;
end;

procedure TActicleFrm.qryItemNewRecord(DataSet: TDataSet);
begin
  if NewPID<>'' then
  begin
    qryItemPACTICLE_ID.Value := NewPID;
    if NewGroup<>'' then
      qryItemAGROUP_ID.Value := NewGroup;
  end;
  qryItemACTICLE_LEVEL.AsInteger := NewLevel;
end;

procedure TActicleFrm.btnInsClick(Sender: TObject);
begin
  NewPID :=qryItemPACTICLE_ID.Value;
  if qryItemAGROUP_ID.IsNull then
    NewGroup :=''
  else
    NewGroup :=qryItemAGROUP_ID.Value;
  NewLevel:=qryItemACTICLE_LEVEL.AsInteger;
  acIns.Execute;
end;

procedure TActicleFrm.btnInsChildClick(Sender: TObject);
begin
  if qryItem.RecordCount>0 then
  begin
    NewPID :=qryItemACTICLE_ID.Value;
    if qryItemAGROUP_ID.IsNull then
      NewGroup :=''
    else
      NewGroup :=qryItemAGROUP_ID.Value;
  end
  else
  begin
    NewPID :='';
    NewGroup :='';
  end;
  NewLevel:=qryItemACTICLE_LEVEL.AsInteger+1;
  acIns.Execute;
end;

procedure TActicleFrm.qryItemPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs:= ProcessErr(E,'hạn mục');
  if rs=-803 then
    qryItemACTICLE_NO.FocusControl;
  if rs=-530 then
  begin
    if Not qryItemGrp.Locate('AGROUP_ID',qryItemAGROUP_ID.Value,[]) then
    begin
      ShowMessageUnicode(138,e.Message,0);
      qryItemAGROUP_ID.FocusControl;
      exit;
    end;
    MainDM.qryPAcc.Open;
    if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',qryItemTKNO.Value,[]) then
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryItemTKNO.FocusControl;
      exit;
    end
    else
    begin
      ShowMessageUnicode(42,e.Message,0);
      qryItemTKCO.FocusControl;
      exit;
    end;
  end;
end;

procedure TActicleFrm.qryItemDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TActicleFrm.TreeGroupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    (GetParentForm(TreeGroup) as TdxPopupEditForm).ClosePopup(True);
  if (Key = VK_ESCAPE) then
    (GetParentForm(TreeGroup) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TActicleFrm.TreeGroupDblClick(Sender: TObject);
begin
  (GetParentForm(TreeGroup) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TActicleFrm.dxDBTreeList1Column3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := qryItemGrpAGROUP_ID.Value;
end;

procedure TActicleFrm.TreeGroupEnter(Sender: TObject);
begin
  if not qryItemGrp.Active then
    qryItemGrp.Open;
end;

procedure TActicleFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TActicleFrm.btnNewHanmucClick(Sender: TObject);
begin
  with TActicleGroupFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
  qryItemGrp.Refresh;
  if LastModifyItemID<>'' then
    qryItemGrp.Locate('AGROUP_ID', LastModifyItemID,[]);
end;

procedure TActicleFrm.SpeedButton4Click(Sender: TObject);
begin
  (GetParentForm(TreeGroup) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TActicleFrm.qryItemAfterDelete(DataSet: TDataSet);
begin
  MainDM.qryPActicle.Close;
end;

procedure TActicleFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TActicleFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//    Application.HelpContext(21);
end;

procedure TActicleFrm.dxDBTreeList1TKNOCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TActicleFrm.qryItemAfterPost(DataSet: TDataSet);
begin
  LastModifyItemID:=qryItemACTICLE_ID.Value;
  MainDM.qryPActicle.Close;
end;

procedure TActicleFrm.btnCancelSelClick(Sender: TObject);
begin
    (GetParentForm(TreeGroup) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TActicleFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TActicleFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
