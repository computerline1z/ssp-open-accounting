unit ActicleGroupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TActicleGroupFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acHide: TAction;
    acCusGrp: TAction;
    acShowAll: TAction;
    qryItemGroup: TIBOQuery;
    dsItemGroup: TDataSource;
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
    ElFormCaption1: TElFormCaption;
    qryItemGroupAGROUP_ID: TWideStringField;
    qryItemGroupPAGROUP_ID: TWideStringField;
    qryItemGroupAGROUP_NAME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryItemGroupBeforePost(DataSet: TDataSet);
    procedure qryItemGroupBeforeInsert(DataSet: TDataSet);
    procedure qryItemGroupBeforeEdit(DataSet: TDataSet);
    procedure qryItemGroupBeforeDelete(DataSet: TDataSet);
    procedure qryItemGroupAfterInsert(DataSet: TDataSet);
    procedure qryItemGroupNewRecord(DataSet: TDataSet);
    procedure btnInsClick(Sender: TObject);
    procedure btnInsChildClick(Sender: TObject);
    procedure qryItemGroupPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryItemGroupDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    Masocha:WideString;//Ma so khach hang cha dung de insert
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActicleGroupFrm: TActicleGroupFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TActicleGroupFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
    dxDBTreeList1Column1.CharCase:=ecUpperCase;
  LastModifyItemID:='';

  SetOnFormCreate(Sender as TControl);
  qryItemGroup.Open;
  if SSPUserRight[11].IR=False then
  begin
    btnIns.Enabled := False;
    btnInsChild.Enabled := False;
  end;
  if SSPUserRight[11].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TActicleGroupFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryItemGroup do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
end;

procedure TActicleGroupFrm.qryItemGroupBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryItemGroupAGROUP_ID) then
  begin
    //get msg at here
    ShowMessageUnicode(95);
    qryItemGroupAGROUP_ID.FocusControl;
    Abort;
    exit;
  end;

  if IsNotHasData(qryItemGroupAGROUP_NAME) then
  begin
    //get msg at here
    ShowMessageUnicode(96);
    qryItemGroupAGROUP_NAME.FocusControl;
    Abort;
  end;
  LastModifyItemID:=qryItemGroupAGROUP_ID.Value;
end;

procedure TActicleGroupFrm.qryItemGroupBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

procedure TActicleGroupFrm.qryItemGroupBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TActicleGroupFrm.qryItemGroupBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TActicleGroupFrm.qryItemGroupAfterInsert(DataSet: TDataSet);
begin
  qryItemGroupAGROUP_ID.FocusControl;
end;

procedure TActicleGroupFrm.qryItemGroupNewRecord(DataSet: TDataSet);
begin
  if Masocha<>'' then
    qryItemGroupPAGROUP_ID.Value := Masocha;
end;

procedure TActicleGroupFrm.btnInsClick(Sender: TObject);
begin
  Masocha := qryItemGroupPAGROUP_ID.Value;
  acIns.Execute;
end;

procedure TActicleGroupFrm.btnInsChildClick(Sender: TObject);
begin
  if qryItemGroup.RecordCount>0 then
    Masocha :=qryItemGroupAGROUP_ID.Value
  else
    Masocha :='';
  acIns.Execute;
end;

procedure TActicleGroupFrm.qryItemGroupPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'nhóm hạn mục')=-803 then
    qryItemGroupAGROUP_ID.FocusControl;
end;

procedure TActicleGroupFrm.qryItemGroupDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TActicleGroupFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TActicleGroupFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TActicleGroupFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

procedure TActicleGroupFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TActicleGroupFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
