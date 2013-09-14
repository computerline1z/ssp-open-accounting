unit UserManagerForm;

interface

uses
  Qt, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  IB_Components, TntButtons, ComCtrls, TntComCtrls, ElCaption, ElPgCtl,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, dxLayout, dxExGrEd, dxExELib;

type
  TUserManagerFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column4: TdxDBGridColumn;
    locFormGroup3: TdxLayoutGroup;
    grdRightModule: TdxDBGrid;
    grdRightModule_Name: TdxDBGridColumn;
    grdRightModule_Read: TdxDBGridCheckColumn;
    grdRightModule_Ins: TdxDBGridCheckColumn;
    grdRightModule_Del: TdxDBGridCheckColumn;
    grdRightModule_Edit: TdxDBGridCheckColumn;
    TreeRightReport: TdxDBGrid;
    TreeRightReport_Name: TdxDBTreeListColumn;
    TreeRightReport_Read: TdxDBTreeListCheckColumn;
    qryUser: TIBOQuery;
    dsUser: TDataSource;
    qryRight: TIBOQuery;
    dsRight: TDataSource;
    qryUserLAST_ACCESS: TDateTimeField;
    qryUserACCESSCOUNT: TIntegerField;
    dxBarManager1: TdxBarManager;
    pmRight: TdxBarPopupMenu;
    btnSeeAll: TdxBarButton;
    btnNoSee: TdxBarButton;
    btnInsAll: TdxBarButton;
    btnNoIns: TdxBarButton;
    btnEditAll: TdxBarButton;
    btnNoEdit: TdxBarButton;
    btnDelAll: TdxBarButton;
    btnNoDel: TdxBarButton;
    qryRightDoc: TIBOQuery;
    dsRightDoc: TDataSource;
    qryRightRpt: TIBOQuery;
    dsRightRpt: TDataSource;
    qryRightRptREPORT_ID: TIntegerField;
    qryRightRptALLOWREAD: TSmallintField;
    qryRightMODUL_ID: TSmallintField;
    qryRightALLOWREAD: TSmallintField;
    qryRightALLOWINSERT: TSmallintField;
    qryRightALLOWEDIT: TSmallintField;
    qryRightALLOWDELETE: TSmallintField;
    dxDBGrid5: TdxDBGrid;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    grdUserOutofGroup: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    grdUserInofGroup: TdxDBGrid;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    Panel1: TPanel;
    btnAdd: TELPopupButton;
    btnRemove: TELPopupButton;
    TreeRightDocType: TdxDBTreeList;
    TreeDocType_Name: TdxDBTreeListColumn;
    col_R: TdxDBTreeListCheckColumn;
    col_Ins: TdxDBTreeListCheckColumn;
    col_Edit: TdxDBTreeListCheckColumn;
    col_Del: TdxDBTreeListCheckColumn;
    qryRightDocDOCTYPE_ID: TIntegerField;
    qryRightDocALLOWREAD: TSmallintField;
    qryRightDocALLOWINSERT: TSmallintField;
    qryRightDocALLOWEDIT: TSmallintField;
    qryRightDocALLOWDELETE: TSmallintField;
    qryRightDocPDOC_TYPE: TIntegerField;
    Edit1: TEdit;
    dxDBGrid5Column3: TdxDBGridColumn;
    qryGroup: TIBOQuery;
    dsGroup: TDataSource;
    qryGroupDoc: TIBOQuery;
    dsGroupDoc: TDataSource;
    qryGroupDocDOCTYPE_ID: TIntegerField;
    qryGroupDocALLOWREAD: TSmallintField;
    qryGroupDocALLOWINSERT: TSmallintField;
    qryGroupDocALLOWEDIT: TSmallintField;
    qryGroupDocALLOWDELETE: TSmallintField;
    qryGroupDocPDOC_TYPE: TIntegerField;
    qryUserAvailable: TIBOQuery;
    dsUserAvailable: TDataSource;
    qryUserGroup: TIBOQuery;
    dsUserGroup: TDataSource;
    tsUserManager: TIB_Transaction;
    qryGroupModule: TIBOQuery;
    dsGroupModule: TDataSource;
    qryGroupReport: TIBOQuery;
    dsGroupReport: TDataSource;
    qryGroupModuleMODUL_ID: TSmallintField;
    qryGroupModuleALLOWREAD: TSmallintField;
    qryGroupModuleALLOWINSERT: TSmallintField;
    qryGroupModuleALLOWEDIT: TSmallintField;
    qryGroupModuleALLOWDELETE: TSmallintField;
    qryGroupReportREPORT_ID: TIntegerField;
    qryGroupReportALLOWREAD: TSmallintField;
    acAddUserIntoGrp: TAction;
    acRemoveUserFromgrp: TAction;
    PgCtrlLeft: TELPageControl;
    locFormItem1: TdxLayoutItem;
    TntTabSheet1: TELTabSheet;
    TntTabSheet2: TELTabSheet;
    PgCtrlRight: TELPageControl;
    locFormItem9: TdxLayoutItem;
    tab_1: TELTabSheet;
    tab_2: TELTabSheet;
    tab_3: TELTabSheet;
    TreeRightReportColumn3: TdxDBGridColumn;
    Splitter1: TSplitter;
    qryUserAvailableUSER_NAME: TWideStringField;
    qryUserAvailableFULL_NAME: TWideStringField;
    qryGroupGROUP_ID: TWideStringField;
    qryGroupGROUP_NAME: TWideStringField;
    qryGroupGROUP_NOTES: TWideStringField;
    qryGroupModuleGROUP_ID: TWideStringField;
    qryGroupModuleMODUL_NAME: TWideStringField;
    qryGroupDocGROUP_ID: TWideStringField;
    qryGroupDocDOCTYPE_NAME: TWideStringField;
    qryGroupReportGROUP_ID: TWideStringField;
    qryGroupReportREPORT_NAME: TWideStringField;
    qryGroupReportTENLOAIBC: TWideStringField;
    qryUserGroupFULL_NAME: TWideStringField;
    qryUserGroupUSER_NAME: TWideStringField;
    qryUserGroupGROUP_ID: TWideStringField;
    qryUserUSER_NAME: TWideStringField;
    qryUserFULL_NAME: TWideStringField;
    qryRightUSER_NAME: TWideStringField;
    qryRightMODUL_NAME: TWideStringField;
    qryRightDocUSER_NAME: TWideStringField;
    qryRightDocDOCTYPE_NAME: TWideStringField;
    qryRightRptUSER_NAME: TWideStringField;
    qryRightRptREPORT_NAME: TWideStringField;
    qryRightRptTENLOAIBC: TWideStringField;
    ElFormCaption1: TElFormCaption;
    btnXemnhatky: TElPopupButton;
    locFormXemnhatky: TdxLayoutItem;
    btnEdit: TElPopupButton;
    locFormEditBtn: TdxLayoutItem;
    acShowUserDetail: TAction;
    bbtnAll: TdxBarButton;
    bbtnNoAll: TdxBarButton;
    qryRightDocENGLISH_NAME: TWideStringField;
    qryRightRptENGLISH_NAME: TWideStringField;
    qryGroupDocENGLISH_NAME: TWideStringField;
    qryGroupReportENGLISH_NAME: TWideStringField;
    qryUserUSER_PWD: TWideStringField;
    qryRightENGNAME: TWideStringField;
    qryRightRptENGTYPE: TWideStringField;
    locFormGroup4: TdxLayoutGroup;
    qryRightDocBRANCH_ID: TWideStringField;
    qryRightRptBRANCH_ID: TWideStringField;
    qryRightBRANCH_ID: TWideStringField;
    locFormItem10: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormGroup5: TdxLayoutGroup;
    btnChechAllBranch: TdxBarButton;
    btnUncheckAllBranch: TdxBarButton;
    locFormItem3: TdxLayoutItem;
    popBranch: TdxPopupEdit;
    procedure FormCreate(Sender: TObject);
    procedure qryUserAfterPost(DataSet: TDataSet);
    procedure qryUserAfterDelete(DataSet: TDataSet);
    procedure btnSeeAllClick(Sender: TObject);
    procedure btnNoSeeClick(Sender: TObject);
    procedure btnInsAllClick(Sender: TObject);
    procedure btnNoInsClick(Sender: TObject);
    procedure btnEditAllClick(Sender: TObject);
    procedure btnNoEditClick(Sender: TObject);
    procedure btnDelAllClick(Sender: TObject);
    procedure btnNoDelClick(Sender: TObject);
    procedure grdRightModuleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryUserBeforePost(DataSet: TDataSet);
    procedure TreeRightReportMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryRightDocBeforePost(DataSet: TDataSet);
    procedure qryRightALLOWINSERTChange(Sender: TField);
    procedure qryRightALLOWEDITChange(Sender: TField);
    procedure qryRightALLOWDELETEChange(Sender: TField);
    procedure qryRightDocALLOWINSERTChange(Sender: TField);
    procedure qryRightDocALLOWEDITChange(Sender: TField);
    procedure qryRightDocALLOWDELETEChange(Sender: TField);
    procedure dxDBGrid2Exit(Sender: TObject);
    procedure qryUserBeforeDelete(DataSet: TDataSet);
    procedure TreeRightDocTypeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdRightModule_InsChange(Sender: TObject);
    procedure grdRightModule_EditChange(Sender: TObject);
    procedure grdRightModule_DelChange(Sender: TObject);
    procedure qryUserPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure col_InsChange(Sender: TObject);
    procedure col_EditChange(Sender: TObject);
    procedure col_DelChange(Sender: TObject);
    procedure qryRightDocALLOWREADChange(Sender: TField);
    procedure col_RChange(Sender: TObject);
    procedure qryRightALLOWREADChange(Sender: TField);
    procedure grdRightModule_ReadChange(Sender: TObject);
    procedure qryUserBeforeEdit(DataSet: TDataSet);
    procedure qryUserBeforeInsert(DataSet: TDataSet);
    procedure grdRightModuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeRightDocTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeRightReportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryUserAfterInsert(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryGroupAfterInsert(DataSet: TDataSet);
    procedure qryGroupAfterPost(DataSet: TDataSet);
    procedure grdUserOutofGroupDblClick(Sender: TObject);
    procedure grdUserInofGroupDblClick(Sender: TObject);
    procedure qryGroupModuleALLOWREADChange(Sender: TField);
    procedure qryGroupDocALLOWREADChange(Sender: TField);
    procedure qryGroupModuleALLOWINSERTChange(Sender: TField);
    procedure qryGroupModuleALLOWEDITChange(Sender: TField);
    procedure qryGroupModuleALLOWDELETEChange(Sender: TField);
    procedure qryGroupDocALLOWINSERTChange(Sender: TField);
    procedure qryGroupDocALLOWEDITChange(Sender: TField);
    procedure qryGroupDocALLOWDELETEChange(Sender: TField);
    procedure qryGroupBeforePost(DataSet: TDataSet);
    procedure qryGroupBeforeDelete(DataSet: TDataSet);
    procedure qryGroupBeforeEdit(DataSet: TDataSet);
    procedure qryGroupBeforeInsert(DataSet: TDataSet);
    procedure acAddUserIntoGrpExecute(Sender: TObject);
    procedure acRemoveUserFromgrpExecute(Sender: TObject);
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PgCtrlLeftChange(Sender: TObject);
    procedure PgCtrlRightChange(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnXemnhatkyClick(Sender: TObject);
    procedure dxDBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure acShowUserDetailExecute(Sender: TObject);
    procedure dxDBGrid5ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure bbtnNoAllClick(Sender: TObject);
    procedure bbtnAllClick(Sender: TObject);
    procedure qryRightBeforeOpen(DataSet: TDataSet);
    procedure pedtBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryRightDocBeforeOpen(DataSet: TDataSet);
    procedure qryRightRptBeforeOpen(DataSet: TDataSet);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure btnChechAllBranchClick(Sender: TObject);
    procedure btnUncheckAllBranchClick(Sender: TObject);
    procedure pedtBranchInitPopup(Sender: TObject);
    procedure popBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    FlagInsert:Boolean;//Cho biet sau khi post co phai la user moi insert vao khong de biet ma refresh cac qryRight
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserManagerFrm: TUserManagerFrm;

implementation

uses GlobalInterface, MainDataMdl, Functions, GlobalUnit, LookupFrm,
  UserForm;


{$R *.dfm}

procedure TUserManagerFrm.FormCreate(Sender: TObject);
var
  w,h:Integer;
begin
  PgCtrlRight.ActivePage := tab_1;
  PgCtrlLeft.ActivePage := TntTabSheet1;

  popBranch.Text := MainDM.qryBranchSHORTNAME.Value;

  if CurLanguage=2 then
  begin
    TreeDocType_Name.FieldName:='ENGLISH_NAME';
    TreeRightReport_Name.FieldName:='ENGLISH_NAME';
    grdRightModule_Name.FieldName := 'ENGNAME';
    TreeRightReportColumn3.FieldName := 'ENGTYPE';
  end;
  w :=Screen.DesktopWidth;
  h :=Screen.DesktopHeight;
  if w>800 then w:=800;
  if h>600 then h:=600;
  Self.Width:=w;
  Self.Height:=h;

  SetCaption(Self);
  
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryUser.Open;
  qryRight.Open;
  qryRightDoc.Open;
  qryRightRpt.Open;

  qryGroup.Open;
  qryGroupModule.Open;
  qryGroupDoc.Open;
  qryGroupReport.Open;


  qryUserAvailable.Open;
  qryUserGroup.Open;
  bbtnAll.Enabled := SSPUserRight[4].ER;
  bbtnNoAll.Enabled := SSPUserRight[4].ER;
  btnEdit.Enabled := SSPUserRight[4].ER;
  btnSeeAll.Enabled := SSPUserRight[4].ER;
  btnNoSee.Enabled := SSPUserRight[4].ER;
  btnInsAll.Enabled := SSPUserRight[4].ER;
  btnNoIns.Enabled := SSPUserRight[4].ER;
  btnEditAll.Enabled := SSPUserRight[4].ER;
  btnNoEdit.Enabled := SSPUserRight[4].ER;
  btnDelAll.Enabled := SSPUserRight[4].ER;
  btnNoDel.Enabled := SSPUserRight[4].ER;
  btnXemnhatky.Enabled:= SSPUserRight[15].RR;
  acAddUserIntoGrp.Enabled :=SSPUserRight[4].ER;
  acRemoveUserFromgrp.Enabled :=SSPUserRight[4].ER;

  if SSPUserRight[4].ER then
  begin
    grdRightModule.OptionsBehavior:=grdRightModule.OptionsBehavior + [edgoEditing];
    TreeRightDocType.OptionsBehavior:=TreeRightDocType.OptionsBehavior + [etoEditing];
    TreeRightReport.OptionsBehavior:=TreeRightReport.OptionsBehavior + [edgoEditing];
  end
  else
  begin
    grdRightModule.OptionsBehavior:=grdRightModule.OptionsBehavior - [edgoEditing];
    TreeRightDocType.OptionsBehavior:=TreeRightDocType.OptionsBehavior - [etoEditing];
    TreeRightReport.OptionsBehavior:=TreeRightReport.OptionsBehavior - [edgoEditing];
  end;
end;

procedure TUserManagerFrm.qryUserAfterPost(DataSet: TDataSet);
begin
  if qryRight.State in [dsedit, dsInsert] then
    qryRight.Post;
  if FlagInsert then
  begin
    qryRight.Refresh;
    qryRightDoc.Refresh;
    qryRightRpt.Refresh;
    qryUserAvailable.Refresh;
    qryUserGroup.Refresh;
  end;
end;

procedure TUserManagerFrm.qryUserAfterDelete(DataSet: TDataSet);
begin
  qryUserAvailable.Refresh;
  qryUserGroup.Refresh;
end;

procedure TUserManagerFrm.btnSeeAllClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    2:
      dst := TreeRightReport.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWREAD').AsInteger:=1;
      dst.Post;      
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.btnNoSeeClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    2:
      dst := TreeRightReport.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWREAD').AsInteger:=0;
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.btnInsAllClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWINSERT').AsInteger:=1;
      dst.Next;
    end;
    dst.First;

end;

procedure TUserManagerFrm.btnNoInsClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWINSERT').AsInteger:=0;
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.btnEditAllClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWEDIT').AsInteger:=1;
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.btnNoEditClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWEDIT').AsInteger:=0;
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.btnDelAllClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWDELETE').AsInteger:=1;
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.btnNoDelClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
    dst.First;
    while not dst.Eof do
    begin
      dst.Edit;
      dst.FieldByName('ALLOWDELETE').AsInteger:=0;
      dst.Next;
    end;
    dst.First;
end;

procedure TUserManagerFrm.grdRightModuleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button<>mbRight then exit;
  pmRight.PopupFromCursorPos;
end;

procedure TUserManagerFrm.qryUserBeforePost(DataSet: TDataSet);
begin
  if qryUserUSER_NAME.Value='SSPAdmin' then
  begin
    ShowMessageUnicode(143);
    qryUserUSER_NAME.FocusControl;
    Abort;
  end;
  if qryUser.State =dsEdit then
    FlagInsert:=False
  else
    FlagInsert:=True;
end;

procedure TUserManagerFrm.TreeRightReportMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button<>mbRight then exit;
  pmRight.PopupFromCursorPos;
end;

procedure TUserManagerFrm.qryRightDocBeforePost(DataSet: TDataSet);
begin
  if ((qryRightDocALLOWINSERT.AsInteger=1) and (qryRightDocALLOWREAD.AsInteger=0)) then
  begin
    qryRightDoc.Edit;
    qryRightDocALLOWREAD.AsInteger:=1;
  end;
  if ((qryRightDocALLOWEDIT.AsInteger=1) and (qryRightDocALLOWREAD.AsInteger=0)) then
  begin
    qryRightDoc.Edit;
    qryRightDocALLOWREAD.AsInteger:=1;
  end;
  if ((qryRightDocALLOWDELETE.AsInteger=1) and (qryRightDocALLOWREAD.AsInteger=0)) then
  begin
    qryRightDoc.Edit;
    qryRightDocALLOWREAD.AsInteger:=1;
  end;

  qryRightDocUSER_NAME.Value := qryUserUSER_NAME.Value;
end;

procedure TUserManagerFrm.qryRightALLOWINSERTChange(Sender: TField);
begin
  if qryRightALLOWINSERT.AsInteger=1 then
    qryRightALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryRightALLOWEDITChange(Sender: TField);
begin
  if qryRightALLOWEDIT.AsInteger=1 then
    qryRightALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryRightALLOWDELETEChange(Sender: TField);
begin
  if qryRightALLOWDELETE.AsInteger=1 then
    qryRightALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryRightDocALLOWINSERTChange(Sender: TField);
begin
  if qryRightDocALLOWINSERT.AsInteger=1 then
    qryRightDocALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryRightDocALLOWEDITChange(Sender: TField);
begin
  if qryRightDocALLOWEDIT.AsInteger=1 then
    qryRightDocALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryRightDocALLOWDELETEChange(Sender: TField);
begin
  if qryRightDocALLOWDELETE.AsInteger=1 then
    qryRightDocALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.dxDBGrid2Exit(Sender: TObject);
begin
  if qryUser.State in [dsInsert, dsEdit] then
    qryUser.Post;
end;

procedure TUserManagerFrm.qryUserBeforeDelete(DataSet: TDataSet);
begin
  if SSPUserRight[4].DR=False then
  begin
    ShowMessageUnicode(25);
    Abort;
    exit;
  end;

  if qryUserUSER_NAME.Value=CurrentUser then
  begin
    ShowMessageUnicode(144);
    Abort;
    exit;
  end;
  if ShowMessageUnicode(23,'', 4)=7 then
  begin
    Abort;
    exit;
  end;
end;

procedure TUserManagerFrm.TreeRightDocTypeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button<>mbRight then exit;
  pmRight.PopupFromCursorPos;
end;

procedure TUserManagerFrm.grdRightModule_InsChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightALLOWINSERT.AsInteger=1 then
      qryRightALLOWINSERT.AsInteger:=0
    else
      qryRightALLOWINSERT.AsInteger:=1;
  end
  else
  begin
    if qryGroupModuleALLOWINSERT.AsInteger=1 then
      qryGroupModuleALLOWINSERT.AsInteger:=0
    else
      qryGroupModuleALLOWINSERT.AsInteger:=1;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.grdRightModule_EditChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightALLOWEDIT.AsInteger=1 then
      qryRightALLOWEDIT.AsInteger:=0
    else
      qryRightALLOWEDIT.AsInteger:=1;
  end
  else
  begin
    if qryGroupModuleALLOWEDIT.AsInteger=1 then
      qryGroupModuleALLOWEDIT.AsInteger:=0
    else
      qryGroupModuleALLOWEDIT.AsInteger:=1;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.grdRightModule_DelChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightALLOWDELETE.AsInteger=1 then
      qryRightALLOWDELETE.AsInteger:=0
    else
      qryRightALLOWDELETE.AsInteger:=1;
  end
  else
  begin
    if qryGroupModuleALLOWDELETE.AsInteger=1 then
      qryGroupModuleALLOWDELETE.AsInteger:=0
    else
      qryGroupModuleALLOWDELETE.AsInteger:=1;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.qryUserPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'người dùng')=-803 then
    qryUserUSER_NAME.FocusControl;
end;

procedure TUserManagerFrm.col_InsChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightDocALLOWINSERT.AsInteger=1 then
      qryRightDocALLOWINSERT.AsInteger:=0
    else
      qryRightDocALLOWINSERT.AsInteger:=1;
  end
  else
  begin
    if qryGroupDocALLOWINSERT.AsInteger=1 then
      qryGroupDocALLOWINSERT.AsInteger:=0
    else
      qryGroupDocALLOWINSERT.AsInteger:=1;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.col_EditChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightDocALLOWEDIT.AsInteger=1 then
      qryRightDocALLOWEDIT.AsInteger:=0
    else
      qryRightDocALLOWEDIT.AsInteger:=1;
  end
  else
  begin
    if qryGroupDocALLOWEDIT.AsInteger=1 then
      qryGroupDocALLOWEDIT.AsInteger:=0
    else
      qryGroupDocALLOWEDIT.AsInteger:=1;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.col_DelChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightDocALLOWDELETE.AsInteger=1 then
      qryRightDocALLOWDELETE.AsInteger:=0
    else
      qryRightDocALLOWDELETE.AsInteger:=1;
  end
  else
  begin
    if qryGroupDocALLOWDELETE.AsInteger=1 then
      qryGroupDocALLOWDELETE.AsInteger:=0
    else
      qryGroupDocALLOWDELETE.AsInteger:=1;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.qryRightDocALLOWREADChange(Sender: TField);
begin
  if qryRightDocALLOWREAD.AsInteger=0 then
  begin
    qryRightDocALLOWINSERT.AsInteger:=0;
    qryRightDocALLOWEDIT.AsInteger:=0;
    qryRightDocALLOWDELETE.AsInteger:=0;
  end;
end;

procedure TUserManagerFrm.col_RChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightDocALLOWREAD.AsInteger=0 then
      qryRightDocALLOWREAD.AsInteger:=1
    else
      qryRightDocALLOWREAD.AsInteger:=0;
  end
  else
  begin
    if qryGroupDocALLOWREAD.AsInteger=0 then
      qryGroupDocALLOWREAD.AsInteger:=1
    else
      qryGroupDocALLOWREAD.AsInteger:=0;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.qryRightALLOWREADChange(Sender: TField);
begin
  if qryRightALLOWREAD.AsInteger=0 then
  begin
    qryRightALLOWINSERT.AsInteger:=0;
    qryRightALLOWEDIT.AsInteger:=0;
    qryRightALLOWDELETE.AsInteger:=0;
  end;
end;

procedure TUserManagerFrm.grdRightModule_ReadChange(Sender: TObject);
begin
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    if qryRightALLOWREAD.AsInteger=0 then
      qryRightALLOWREAD.AsInteger:=1
    else
      qryRightALLOWREAD.AsInteger:=0;
  end
  else
  begin
    if qryGroupModuleALLOWREAD.AsInteger=0 then
      qryGroupModuleALLOWREAD.AsInteger:=1
    else
      qryGroupModuleALLOWREAD.AsInteger:=0;
  end;

  Edit1.SetFocus;
end;

procedure TUserManagerFrm.qryUserBeforeEdit(DataSet: TDataSet);
begin
  if SSPUserRight[4].ER =False then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;
end;

procedure TUserManagerFrm.qryUserBeforeInsert(DataSet: TDataSet);
begin
  if SSPUserRight[4].IR =False then
  begin
    ShowMessageUnicode(26);
    Abort;
    exit;
  end;
end;

procedure TUserManagerFrm.grdRightModuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if SSPUserRight[4].ER =False then exit;
  if Key = Key_1 then
  begin
    qryRight.Edit;
    if qryRightALLOWREAD.AsInteger=1 then
      qryRightALLOWREAD.AsInteger:=0
    else
      qryRightALLOWREAD.AsInteger:=1;

    exit;
  end;
  if Key = Key_2 then
  begin
    qryRight.Edit;
    if qryRightALLOWINSERT.AsInteger=1 then
      qryRightALLOWINSERT.AsInteger:=0
    else
      qryRightALLOWINSERT.AsInteger:=1;

    exit;
  end;
  if Key = Key_3 then
  begin
    qryRight.Edit;
    if qryRightALLOWEDIT.AsInteger=1 then
      qryRightALLOWEDIT.AsInteger:=0
    else
      qryRightALLOWEDIT.AsInteger:=1;

    exit;
  end;
  if Key = Key_4 then
  begin
    qryRight.Edit;
    if qryRightALLOWDELETE.AsInteger=1 then
      qryRightALLOWDELETE.AsInteger:=0
    else
      qryRightALLOWDELETE.AsInteger:=1;

    exit;
  end;
end;

procedure TUserManagerFrm.TreeRightDocTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if SSPUserRight[4].ER=False then exit;
  if Key = Key_1 then
  begin
    qryRightDoc.Edit;
    if qryRightDocALLOWREAD.AsInteger=1 then
      qryRightDocALLOWREAD.AsInteger:=0
    else
      qryRightDocALLOWREAD.AsInteger:=1;

    exit;
  end;
  if Key = Key_2 then
  begin
    qryRightDoc.Edit;
    if qryRightDocALLOWINSERT.AsInteger=1 then
      qryRightDocALLOWINSERT.AsInteger:=0
    else
      qryRightDocALLOWINSERT.AsInteger:=1;

    exit;
  end;
  if Key = Key_3 then
  begin
    qryRightDoc.Edit;
    if qryRightDocALLOWEDIT.AsInteger=1 then
      qryRightDocALLOWEDIT.AsInteger:=0
    else
      qryRightDocALLOWEDIT.AsInteger:=1;

    exit;
  end;
  if Key = Key_4 then
  begin
    qryRightDoc.Edit;
    if qryRightDocALLOWDELETE.AsInteger=1 then
      qryRightDocALLOWDELETE.AsInteger:=0
    else
      qryRightDocALLOWDELETE.AsInteger:=1;

    exit;
  end;
end;

procedure TUserManagerFrm.TreeRightReportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if SSPUserRight[4].ER=False then exit;
  if Key = Key_1 then
  begin
    qryRightRpt.Edit;
    if qryRightRptALLOWREAD.AsInteger=1 then
      qryRightRptALLOWREAD.AsInteger:=0
    else
      qryRightRptALLOWREAD.AsInteger:=1;

    exit;
  end;
end;

procedure TUserManagerFrm.qryUserAfterInsert(DataSet: TDataSet);
begin
  acShowUserDetail.Execute;
end;

procedure TUserManagerFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/QuanTriNguoiDung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TUserManagerFrm.qryGroupAfterInsert(DataSet: TDataSet);
begin
  qryGroupGROUP_ID.FocusControl;
end;

procedure TUserManagerFrm.qryGroupAfterPost(DataSet: TDataSet);
begin
  qryGroupModule.Refresh;
  qryGroupDoc.Refresh;
  qryGroupReport.Refresh;
end;

procedure TUserManagerFrm.grdUserOutofGroupDblClick(Sender: TObject);
begin
  acAddUserIntoGrp.Execute;
end;

procedure TUserManagerFrm.grdUserInofGroupDblClick(Sender: TObject);
begin
  acRemoveUserFromgrp.Execute;
end;

procedure TUserManagerFrm.qryGroupModuleALLOWREADChange(Sender: TField);
begin
  if qryGroupModuleALLOWREAD.AsInteger=0 then
  begin
    qryGroupModuleALLOWINSERT.AsInteger:=0;
    qryGroupModuleALLOWEDIT.AsInteger:=0;
    qryGroupModuleALLOWDELETE.AsInteger:=0;
  end;
end;

procedure TUserManagerFrm.qryGroupDocALLOWREADChange(Sender: TField);
begin
  if qryGroupDocALLOWREAD.AsInteger=0 then
  begin
    qryGroupDocALLOWINSERT.AsInteger:=0;
    qryGroupDocALLOWEDIT.AsInteger:=0;
    qryGroupDocALLOWDELETE.AsInteger:=0;
  end;
end;

procedure TUserManagerFrm.qryGroupModuleALLOWINSERTChange(Sender: TField);
begin
  if qryGroupModuleALLOWINSERT.AsInteger=1 then
    qryGroupModuleALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryGroupModuleALLOWEDITChange(Sender: TField);
begin
  if qryGroupModuleALLOWEDIT.AsInteger=1 then
    qryGroupModuleALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryGroupModuleALLOWDELETEChange(Sender: TField);
begin
  if qryGroupModuleALLOWDELETE.AsInteger=1 then
    qryGroupModuleALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryGroupDocALLOWINSERTChange(Sender: TField);
begin
  if qryGroupDocALLOWINSERT.AsInteger=1 then
    qryGroupDocALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryGroupDocALLOWEDITChange(Sender: TField);
begin
  if qryGroupDocALLOWEDIT.AsInteger=1 then
    qryGroupDocALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryGroupDocALLOWDELETEChange(Sender: TField);
begin
  if qryGroupDocALLOWDELETE.AsInteger=1 then
    qryGroupDocALLOWREAD.AsInteger :=1;
end;

procedure TUserManagerFrm.qryGroupBeforePost(DataSet: TDataSet);
begin
  if qryGroupGROUP_ID.IsNull then
  begin
    ShowMessageUnicode(145);
    qryGroupGROUP_ID.FocusControl;
    Abort;
    exit;
  end;
end;

procedure TUserManagerFrm.qryGroupBeforeDelete(DataSet: TDataSet);
begin
  if SSPUserRight[4].DR=False then
  begin
    ShowMessageUnicode(25);
    Abort;
    exit;
  end;

  if ShowMessageUnicode(23,'', 4)=7 then
    Abort;
end;

procedure TUserManagerFrm.qryGroupBeforeEdit(DataSet: TDataSet);
begin
  if SSPUserRight[4].ER=False then
  begin
    ShowMessageUnicode(24);
    Abort;
    exit;
  end;
end;

procedure TUserManagerFrm.qryGroupBeforeInsert(DataSet: TDataSet);
begin
  if SSPUserRight[4].IR =False then
  begin
    ShowMessageUnicode(26);
    Abort;
    exit;
  end;
end;

procedure TUserManagerFrm.acAddUserIntoGrpExecute(Sender: TObject);
begin
  if qryUserAvailable.RecordCount=0 then exit;
  if qryGroup.RecordCount=0 then exit;
  if qryGroup.State in [dsInsert, dsEdit] then
    qryGroup.Post;
  qryUserGroup.Insert;
  qryUserGroupUSER_NAME.Value := qryUserAvailableUSER_NAME.Value;
  qryUserGroupFULL_NAME.Value := qryUserAvailableFULL_NAME.Value;
  qryUserGroupGROUP_ID.Value := qryGroupGROUP_ID.Value;
  qryUserGroup.Post;
  qryUserAvailable.Refresh;
end;

procedure TUserManagerFrm.acRemoveUserFromgrpExecute(Sender: TObject);
begin
  if qryUserGroup.RecordCount=0 then exit;
  qryUserGroup.Delete;
  qryUserAvailable.Refresh;
end;

procedure TUserManagerFrm.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_Return then
    acShowUserDetail.Execute
  else
    ProcessKeyDownInGrid(dxDBGrid2, Key, Shift, False);
end;

procedure TUserManagerFrm.PgCtrlLeftChange(Sender: TObject);
begin
  locFormXemnhatky.Visible := (PgCtrlLeft.ActivePage.TabIndex=0);
  if PgCtrlLeft.ActivePage.TabIndex=0 then
  begin
    locFormEditBtn.Visible:=True;
    acIns.DataSource := dsUser;
    acDel.DataSource := dsUser;
    acPost.DataSource := dsUser;
    acCancel.DataSource := dsUser;

    grdRightModule.DataSource:= dsRight;
    TreeRightDocType.DataSource:=dsRightDoc;
    TreeRightReport.DataSource := dsRightRpt;
    //grdDaklak.Visible := True;
  end
  else
  begin
    grdUserOutofGroup.Bands[0].Caption:=UTF8Decode('Người dùng ngoài nhóm ''')+qryGroupGROUP_ID.Value+'''';
    grdUserInofGroup.Bands[0].Caption:=UTF8Decode('Người dùng trong nhóm ''')+qryGroupGROUP_ID.Value+'''';
    
    locFormEditBtn.Visible:=False;
    acIns.DataSource := dsGroup;
    acDel.DataSource := dsGroup;
    acPost.DataSource := dsGroup;
    acCancel.DataSource := dsGroup;

    grdRightModule.DataSource:= dsGroupModule;
    TreeRightDocType.DataSource:= dsGroupDoc;
    TreeRightReport.DataSource := dsGroupReport;
  end
end;

procedure TUserManagerFrm.PgCtrlRightChange(Sender: TObject);
begin
  if PgCtrlRight.ActivePage=tab_3 then
  begin
    bbtnAll.Visible    := ivNever;
    bbtnNoAll.Visible  := ivNever;
    btnInsAll.Visible  := ivNever;
    btnNoIns.Visible   := ivNever;
    btnEditAll.Visible := ivNever;
    btnNoEdit.Visible  := ivNever;
    btnDelAll.Visible  := ivNever;
    btnNoDel.Visible   := ivNever;
  end
  else
  begin
    bbtnAll.Visible    := ivAlways;
    bbtnNoAll.Visible  := ivAlways;
    btnInsAll.Visible  := ivAlways;
    btnNoIns.Visible   := ivAlways;
    btnEditAll.Visible := ivAlways;
    btnNoEdit.Visible  := ivAlways;
    btnDelAll.Visible  := ivAlways;
    btnNoDel.Visible   := ivAlways;
  end;
end;

procedure TUserManagerFrm.TntFormShow(Sender: TObject);
begin
  TreeRightReport.FullExpand;
  SetVisible(Self);

end;

procedure TUserManagerFrm.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/QuanTriNguoiDung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
end;

procedure TUserManagerFrm.btnXemnhatkyClick(Sender: TObject);
begin
  MainDM.Xemnhatkynguoidung(qryUserUSER_NAME.Value);
end;

procedure TUserManagerFrm.dxDBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid5, Key, Shift, True);
end;

procedure TUserManagerFrm.dxDBGrid2DblClick(Sender: TObject);
begin
  acShowUserDetail.Execute;
end;

procedure TUserManagerFrm.btnEditClick(Sender: TObject);
begin
  acShowUserDetail.Execute;
end;

procedure TUserManagerFrm.acShowUserDetailExecute(Sender: TObject);
begin
  with TUserFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
  qryRight.Refresh;
  qryRightDoc.Refresh;
  qryRightRpt.Refresh;
end;

procedure TUserManagerFrm.dxDBGrid5ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  grdUserOutofGroup.Bands[0].Caption:=UTF8Decode('Người dùng ngoài nhóm ''')+qryGroupGROUP_ID.Value+'''';
  grdUserInofGroup.Bands[0].Caption:=UTF8Decode('Người dùng trong nhóm ''')+qryGroupGROUP_ID.Value+'''';
end;

procedure TUserManagerFrm.bbtnNoAllClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
  dst.Edit;
  dst.FieldByName('ALLOWREAD').AsInteger:=0;
  dst.FieldByName('ALLOWINSERT').AsInteger:=0;
  dst.FieldByName('ALLOWEDIT').AsInteger:=0;
  dst.FieldByName('ALLOWDELETE').AsInteger:=0;

  if (PgCtrlRight.ActivePage.TabIndex=1) then
  if TreeRightDocType.FocusedNode.HasChildren then
  begin
    TreeRightDocType.FocusedNode.GetFirstChild.Focused:=True;
    dst.Edit;
      dst.FieldByName('ALLOWREAD').AsInteger:=0;
      dst.FieldByName('ALLOWINSERT').AsInteger:=0;
      dst.FieldByName('ALLOWEDIT').AsInteger:=0;
      dst.FieldByName('ALLOWDELETE').AsInteger:=0;

    while TreeRightDocType.FocusedNode.GetNextSibling<>nil do
    begin
      TreeRightDocType.FocusedNode.GetNextSibling.Focused:=True;
      dst.Edit;
      dst.FieldByName('ALLOWREAD').AsInteger:=0;
      dst.FieldByName('ALLOWINSERT').AsInteger:=0;
      dst.FieldByName('ALLOWEDIT').AsInteger:=0;
      dst.FieldByName('ALLOWDELETE').AsInteger:=0;
    end;
  end;
end;

procedure TUserManagerFrm.bbtnAllClick(Sender: TObject);
var
  dst: TDataSet;
begin
  case PgCtrlRight.ActivePage.TabIndex of
    0:
      dst := grdRightModule.DataSource.DataSet;
    1:
      dst := TreeRightDocType.DataSource.DataSet;
    else
      exit;
  end;
  dst.Edit;
  dst.FieldByName('ALLOWREAD').AsInteger:=1;
  dst.FieldByName('ALLOWINSERT').AsInteger:=1;
  dst.FieldByName('ALLOWEDIT').AsInteger:=1;
  dst.FieldByName('ALLOWDELETE').AsInteger:=1;
  if (PgCtrlRight.ActivePage.TabIndex=1) then
  if TreeRightDocType.FocusedNode.HasChildren then
  begin
    TreeRightDocType.FocusedNode.GetFirstChild.Focused:=True;
    dst.Edit;
      dst.FieldByName('ALLOWREAD').AsInteger:=1;
      dst.FieldByName('ALLOWINSERT').AsInteger:=1;
      dst.FieldByName('ALLOWEDIT').AsInteger:=1;
      dst.FieldByName('ALLOWDELETE').AsInteger:=1;

    while TreeRightDocType.FocusedNode.GetNextSibling<>nil do
    begin
      TreeRightDocType.FocusedNode.GetNextSibling.Focused:=True;
      dst.Edit;
      dst.FieldByName('ALLOWREAD').AsInteger:=1;
      dst.FieldByName('ALLOWINSERT').AsInteger:=1;
      dst.FieldByName('ALLOWEDIT').AsInteger:=1;
      dst.FieldByName('ALLOWDELETE').AsInteger:=1;
    end;
  end;
end;

procedure TUserManagerFrm.qryRightBeforeOpen(DataSet: TDataSet);
begin
     qryRight.ParamByName('BRANCH_ID').value := Maindm.qryBranchBRANCH_ID.Value;
end;

procedure TUserManagerFrm.pedtBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
    if accept then
    begin
        qryRight.Close;
        qryRightDoc.Close;
        qryRightRpt.Close;
        qryRight.Open;
        qryRightDoc.Open;
        qryRightRpt.Open;
    end
end;

procedure TUserManagerFrm.qryRightDocBeforeOpen(DataSet: TDataSet);
begin
  qryRightDoc.ParamByName('BRANCH_ID').value := Maindm.qryBranchBRANCH_ID.Value;
end;

procedure TUserManagerFrm.qryRightRptBeforeOpen(DataSet: TDataSet);
begin
  qryRightRpt.ParamByName('BRANCH_ID').value := Maindm.qryBranchBRANCH_ID.Value;
end;

procedure TUserManagerFrm.ElPopupButton2Click(Sender: TObject);
begin
  btnNoSee.Click;
end;

procedure TUserManagerFrm.ElPopupButton1Click(Sender: TObject);
begin
   btnSeeAll.Click;
   btnEditAll.Click;
   btnInsAll.Click;
   btnDelAll.Click;
end;

procedure TUserManagerFrm.btnChechAllBranchClick(Sender: TObject);
begin
    Maindm.qryCommon.SQL.Clear;
    Maindm.qryCommon.Params.Clear;
    Maindm.qryCommon.SQL.text := 'update USER_MODUL set ALLOWREAD=1, ALLOWINSERT=1,ALLOWEDIT=1, ALLOWDELETE =1 where USER_NAME =:USER_NAME';
    Maindm.qryCommon.ParamByName('USER_NAME').Value := qryUserUSER_NAME.Value;
    Maindm.qryCommon.ExecSQL;
    Maindm.qryCommon.SQL.text := 'update USER_DOCTYPE set ALLOWREAD=1, ALLOWINSERT=1,ALLOWEDIT=1, ALLOWDELETE =1 where USER_NAME =:USER_NAME';
    Maindm.qryCommon.ExecSQL;
    Maindm.qryCommon.SQL.text := 'update USER_REPORT set ALLOWREAD=1 where USER_NAME =:USER_NAME';
    Maindm.qryCommon.ExecSQL;
    qryRight.close;
    qryRight.open;
    qryRightDoc.close;
    qryRightDoc.open;
    qryRightRpt.Close;
    qryRightRpt.open;

end;

procedure TUserManagerFrm.btnUncheckAllBranchClick(Sender: TObject);
begin
    Maindm.qryCommon.SQL.Clear;
    Maindm.qryCommon.Params.Clear;
    Maindm.qryCommon.SQL.text := 'update USER_MODUL set ALLOWREAD=0, ALLOWINSERT=0,ALLOWEDIT=0, ALLOWDELETE =0 where USER_NAME =:USER_NAME';
    Maindm.qryCommon.ParamByName('USER_NAME').Value := qryUserUSER_NAME.Value;
    Maindm.qryCommon.ExecSQL;
    Maindm.qryCommon.SQL.text := 'update USER_DOCTYPE set ALLOWREAD=0, ALLOWINSERT=0,ALLOWEDIT=0, ALLOWDELETE =0 where USER_NAME =:USER_NAME';
    Maindm.qryCommon.ExecSQL;
    Maindm.qryCommon.SQL.text := 'update USER_REPORT set ALLOWREAD=0 where USER_NAME =:USER_NAME';
    Maindm.qryCommon.ExecSQL;
    qryRight.close;
    qryRight.open;
    qryRightDoc.close;
    qryRightDoc.open;
    qryRightRpt.Close;
    qryRightRpt.open;
end;

procedure TUserManagerFrm.pedtBranchInitPopup(Sender: TObject);
begin
    Maindm.qryBranch.Close;
    Maindm.qryBranch.open;
end;

procedure TUserManagerFrm.popBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if accept then
    begin
        text := MainDM.qryBranchSHORTNAME.Value;
        qryRight.Close;
        qryRightDoc.Close;
        qryRightRpt.Close;
        qryRight.Open;
        qryRightDoc.Open;
        qryRightRpt.Open;
    end
end;

end.
