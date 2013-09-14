unit ObjectSubInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns,
  ActnList, DB, IBODataset;

type
  TObjectSubInfoFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAllocate: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    qrySubInfo: TIBOQuery;
    dsHeso: TDataSource;
    qrySubInfoOTYPE_ID: TSmallintField;
    qrySubInfoSUBINFO_ID: TSmallintField;
    qrySubInfoSUBINFO_NAME: TWideStringField;
    qrySubInfoSUBINFO_DATATYPE: TSmallintField;
    grdAllocateSUBINFO_ID: TdxDBGridColumn;
    grdAllocateSUBINFO_NAME: TdxDBGridColumn;
    grdAllocateSTRING_TYPE: TdxDBGridCheckColumn;
    grdAllocateNUMBER_TYPE: TdxDBGridCheckColumn;
    grdAllocateDATE_TYPE: TdxDBGridCheckColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdAllocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qrySubInfoBeforePost(DataSet: TDataSet);
    procedure qrySubInfoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrySubInfoBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qrySubInfoBeforeInsert(DataSet: TDataSet);
    procedure qrySubInfoBeforeDelete(DataSet: TDataSet);
    procedure qrySubInfoNewRecord(DataSet: TDataSet);
    procedure qrySubInfoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    AUTO_ID :Smallint;
    AUTO_TYPE : Smallint;
    { Public declarations }
  end;

var
  ObjectSubInfoFrm: TObjectSubInfoFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, HtmlHlp;
{$R *.dfm}


procedure TObjectSubInfoFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  if Not SSPUserRight[8].IR then
    DataSetInsert1.DataSource:=MainDM.dsBanana;
  if Not SSPUserRight[8].DR then
    DataSetDelete1.DataSource:=MainDM.dsBanana;
end;

procedure TObjectSubInfoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qrySubInfo do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TObjectSubInfoFrm.grdAllocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdAllocate, Key, Shift, True);
end;

procedure TObjectSubInfoFrm.grdAllocateMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TObjectSubInfoFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TObjectSubInfoFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(13);
end;

procedure TObjectSubInfoFrm.qrySubInfoBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TObjectSubInfoFrm.qrySubInfoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(42,e.Message,0);

  qrySubInfoSUBINFO_ID.FocusControl;
end;

procedure TObjectSubInfoFrm.qrySubInfoBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(8) then Abort;
end;

procedure TObjectSubInfoFrm.FormShow(Sender: TObject);
begin
  qrySubInfo.ParamByName('OTYPE_ID').AsInteger:=MainDM.qryObjectTypeOTYPE_ID.AsInteger;
  qrySubInfo.Open;
  SetVisible(Self);
end;

procedure TObjectSubInfoFrm.qrySubInfoBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(8) then Abort;
end;

procedure TObjectSubInfoFrm.qrySubInfoBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet, 8) then Abort;
end;

procedure TObjectSubInfoFrm.qrySubInfoNewRecord(DataSet: TDataSet);
begin
  qrySubInfoSUBINFO_ID.AsInteger:=qrySubInfo.RecNo;
  qrySubInfoSUBINFO_DATATYPE.AsInteger:=1;
  qrySubInfoOTYPE_ID.AsInteger:=MainDM.qryObjectTypeOTYPE_ID.AsInteger;
end;

procedure TObjectSubInfoFrm.qrySubInfoAfterInsert(DataSet: TDataSet);
begin
  qrySubInfoSUBINFO_NAME.FocusControl;
end;

end.
