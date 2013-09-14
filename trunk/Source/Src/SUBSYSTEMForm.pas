unit SUBSYSTEMForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList, IBODataset;

type
  TSUBSYSTEMFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    qrySubSystem: TIBOQuery;
    dsSubSystem: TDataSource;
    qrySubSystemSUBSYSTEM_ID: TIntegerField;
    qrySubSystemSUBSYSTEM_NAME: TWideStringField;
    dxDBGrid1SUBSYSTEM_ID: TdxDBGridMaskColumn;
    dxDBGrid1SUBSYSTEM_NAME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrySubSystemBeforeDelete(DataSet: TDataSet);
    procedure qrySubSystemBeforeEdit(DataSet: TDataSet);
    procedure qrySubSystemBeforeInsert(DataSet: TDataSet);
    procedure qrySubSystemAfterInsert(DataSet: TDataSet);
    procedure qrySubSystemBeforePost(DataSet: TDataSet);
    procedure qrySubSystemPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormShow(Sender: TObject);
    procedure qrySubSystemDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SUBSYSTEMFrm: TSUBSYSTEMFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, dxTreeGridMenus, Functions;


{$R *.dfm}

procedure TSUBSYSTEMFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qrySubSystem.Open;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TSUBSYSTEMFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qrySubSystem do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TSUBSYSTEMFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TSUBSYSTEMFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TSUBSYSTEMFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TSUBSYSTEMFrm.qrySubSystemBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TSUBSYSTEMFrm.qrySubSystemBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TSUBSYSTEMFrm.qrySubSystemBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TSUBSYSTEMFrm.qrySubSystemAfterInsert(DataSet: TDataSet);
begin
  qrySubSystemSUBSYSTEM_ID.FocusControl;
end;

procedure TSUBSYSTEMFrm.qrySubSystemBeforePost(DataSet: TDataSet);
begin
  if qrySubSystemSUBSYSTEM_ID.IsNull then
  begin
    ShowMessageUnicode(20);
    qrySubSystemSUBSYSTEM_ID.FocusControl;
    Abort;
  end;
end;

procedure TSUBSYSTEMFrm.qrySubSystemPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action:=daAbort;
  ProcessErr(E,'');
  qrySubSystemSUBSYSTEM_ID.FocusControl;
end;

procedure TSUBSYSTEMFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TSUBSYSTEMFrm.qrySubSystemDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
end;

end.
