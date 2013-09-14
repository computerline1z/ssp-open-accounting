unit OutTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx, DB,
  IBODataset, TntButtons, DBActns, ActnList, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElEdits, ElCheckCtl, ElCLabel, ElLabel;

type
  TOutTypeFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBTreeListColumn;
    locFormItem1: TdxLayoutItem;
    TntBitBtn1: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    TntBitBtn3: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn4: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn7: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    qryOutTypeList: TIBOQuery;
    dsOutTypeList: TDataSource;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    qryOutTypeListOUT_ID: TSmallintField;
    qryOutTypeListOUT_NAME: TWideStringField;
    qryOutTypeListDEBIT_ACC: TWideStringField;
    qryOutTypeListCREDIT_ACC: TWideStringField;
    dxDBGrid1OUT_ID: TdxDBGridMaskColumn;
    ElPopupButton2: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    acIns: TDataSetInsert;
    acDelete: TDataSetDelete;
    dxDBGrid1Column6: TdxDBGridPopupColumn;
    qryOutTypeListTKGIAVON: TWideStringField;
    dxDBGrid1Column5: TdxDBGridPopupColumn;
    dxDBGrid1Column4: TdxDBGridPopupColumn;
    qryOutTypeListTKHAUHAO: TWideStringField;
    dxDBGrid1Column7: TdxDBGridPopupColumn;
    locFormItem3: TdxLayoutItem;
    ElLabel1: TElLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1Column4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure TntBitBtn7Click(Sender: TObject);
    procedure TntBitBtn4Click(Sender: TObject);
    procedure qryOutTypeListAfterInsert(DataSet: TDataSet);
    procedure qryOutTypeListBeforeDelete(DataSet: TDataSet);
    procedure qryOutTypeListBeforeEdit(DataSet: TDataSet);
    procedure qryOutTypeListBeforeInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryOutTypeListPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryOutTypeListBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutTypeFrm: TOutTypeFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,  PopupForm,
  Functions;


{$R *.dfm}

procedure TOutTypeFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  FilterAccType:=-1;
  try
    qryOutTypeList.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  MainDM.qryPAcc.Filtered:=False;
end;

procedure TOutTypeFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryOutTypeList do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TOutTypeFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,True);
end;

procedure TOutTypeFrm.dxDBGrid1Column4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TOutTypeFrm.TntBitBtn7Click(Sender: TObject);
begin
  Application.HelpContext(21);
end;

procedure TOutTypeFrm.TntBitBtn4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TOutTypeFrm.qryOutTypeListAfterInsert(DataSet: TDataSet);
begin
  qryOutTypeListOUT_ID.FocusControl;
end;

procedure TOutTypeFrm.qryOutTypeListBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TOutTypeFrm.qryOutTypeListBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TOutTypeFrm.qryOutTypeListBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TOutTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TOutTypeFrm.qryOutTypeListPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'')=-530 then
  begin
    ShowMessageUnicode(42,e.Message,0);
    qryOutTypeListDEBIT_ACC.FocusControl;
  end;
end;

procedure TOutTypeFrm.qryOutTypeListBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TOutTypeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
