unit AccOptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx, DB,
  IBODataset, TntButtons, DBActns, ActnList, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElEdits, ElCheckCtl, ElCLabel, ElLabel, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk;

type
  TAccOptFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1: TdxDBGrid;
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
    qryAccOpt: TIBOQuery;
    dsAccOpt: TDataSource;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    qryAccOptOPTION_ID: TSmallintField;
    qryAccOptOPTION_NOTE: TWideStringField;
    dxDBGrid1OPTION_ID: TdxDBGridMaskColumn;
    dxDBGrid1OPTION_NOTE: TdxDBGridMaskColumn;
    dxDBGrid1ACCOUNT_ID: TdxDBGridPopupColumn;
    qryAccOptACCOUNT_ID: TWideStringField;
    qryAccOptGROUP_NAME: TWideStringField;
    dxDBGrid1GROUP_NAME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn7Click(Sender: TObject);
    procedure TntBitBtn4Click(Sender: TObject);
    procedure qryAccOptAfterInsert(DataSet: TDataSet);
    procedure qryAccOptBeforeEdit(DataSet: TDataSet);
    procedure qryAccOptBeforeInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1ACCOUNT_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryAccOptPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryAccOptBeforePost(DataSet: TDataSet);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccOptFrm: TAccOptFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,  PopupForm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TAccOptFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  FilterAccType:=-1;
  try
    qryAccOpt.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  MainDM.qryPAcc.Filtered:=False;
end;

procedure TAccOptFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryAccOpt do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TAccOptFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TAccOptFrm.TntBitBtn7Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

procedure TAccOptFrm.TntBitBtn4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TAccOptFrm.qryAccOptAfterInsert(DataSet: TDataSet);
begin
  qryAccOptOPTION_NOTE.FocusControl;
end;

procedure TAccOptFrm.qryAccOptBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TAccOptFrm.qryAccOptBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TAccOptFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAccOptFrm.dxDBGrid1ACCOUNT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TAccOptFrm.qryAccOptPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'')=-530 then
  begin
    ShowMessageUnicode(42);
    qryAccOptACCOUNT_ID.FocusControl;  
  end;
end;

procedure TAccOptFrm.qryAccOptBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryAccOptACCOUNT_ID) then
  Begin
    ShowMessageUnicode(67);
    Abort;
  end;
end;

procedure TAccOptFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TAccOptFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
