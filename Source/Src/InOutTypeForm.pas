unit InOutTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx, DB,
  IBODataset, TntButtons, DBActns, ActnList, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElEdits, ElCheckCtl;

type
  TInOutTypeFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBTreeListColumn;
    dxDBGrid1Column4: TdxDBTreeListPopupColumn;
    dxDBGrid1Column5: TdxDBTreeListPopupColumn;
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
    qryInOutTypeList: TIBOQuery;
    dsInOutTypeList: TDataSource;
    qryInOutTypeListINOUT_ID: TSmallintField;
    qryInOutTypeListINOUT_NAME: TWideStringField;
    qryInOutTypeListDOCTYPE_ID: TSmallintField;
    qryInOutTypeListDEBIT_ACC: TWideStringField;
    qryInOutTypeListCREDIT_ACC: TWideStringField;
    qryInOutTypeListDOCTYPE_NAME: TWideStringField;
    dxDBGrid1Column3: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    rbIn: TElRadioButton;
    locFormItem3: TdxLayoutItem;
    rbOut: TElRadioButton;
    locFormItem6: TdxLayoutItem;
    rbAll: TElRadioButton;
    locFormItem7: TdxLayoutItem;
    qryInOutTypeListDIRECTION: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1Column4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure TntBitBtn7Click(Sender: TObject);
    procedure TntBitBtn4Click(Sender: TObject);
    procedure dxDBGrid1Column3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryInOutTypeListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure rbInClick(Sender: TObject);
    procedure rbOutClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InOutTypeFrm: TInOutTypeFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,  PopupForm, HtmlHlp;


{$R *.dfm}

procedure TInOutTypeFrm.FormCreate(Sender: TObject);
begin
  MainDM.qryPAcc.Filtered:=False;
  SetOnFormCreate(Sender as TControl);
  try
    qryInOutTypeList.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TInOutTypeFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryInOutTypeList do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TInOutTypeFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TInOutTypeFrm.dxDBGrid1Column4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TInOutTypeFrm.TntBitBtn7Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

procedure TInOutTypeFrm.TntBitBtn4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TInOutTypeFrm.dxDBGrid1Column3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := qryPDocTypeDOCTYPE_NAME.Value;
    qryInOutTypeList.Edit;
    qryInOutTypeListDOCTYPE_ID.AsInteger:=qryPDocTypeDOCTYPE_ID.AsInteger;
  end;
end;

procedure TInOutTypeFrm.qryInOutTypeListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if rbIn.Checked then
    Accept:=qryInOutTypeListDIRECTION.AsInteger=1
  else if rbOut.Checked then
    Accept:=qryInOutTypeListDIRECTION.AsInteger=-1
  else
    Accept:=True;
end;

procedure TInOutTypeFrm.rbInClick(Sender: TObject);
begin
  qryInOutTypeList.OnFilterRecord:=qryInOutTypeListFilterRecord;
  qryInOutTypeList.Filtered:=True;
end;

procedure TInOutTypeFrm.rbOutClick(Sender: TObject);
begin
  qryInOutTypeList.OnFilterRecord:=qryInOutTypeListFilterRecord;
  qryInOutTypeList.Filtered:=True;
end;

procedure TInOutTypeFrm.rbAllClick(Sender: TObject);
begin
  qryInOutTypeList.Filtered:=False;
end;

procedure TInOutTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TInOutTypeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
