unit AutoTypesForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns,
  ActnList, DB, IBODataset;

type
  TAutoTypesFrm = class(TForm)
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
    qryHeso: TIBOQuery;
    dsHeso: TDataSource;
    qryHesoAUTO_TYPE: TSmallintField;
    qryHesoAUTOTYPE_NAME: TWideStringField;
    grdAllocateAUTO_TYPE: TdxDBGridMaskColumn;
    grdAllocateAUTOTYPE_NAME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdAllocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryHesoBeforePost(DataSet: TDataSet);
    procedure qryHesoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryHesoBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    AUTO_ID :Smallint;
    AUTO_TYPE : Smallint;
    { Public declarations }
  end;

var
  AutoTypesFrm: TAutoTypesFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, htmlhlp;
{$R *.dfm}

procedure TAutoTypesFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
end;

procedure TAutoTypesFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryHeso do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TAutoTypesFrm.grdAllocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdAllocate, Key, Shift, False);
end;

procedure TAutoTypesFrm.grdAllocateMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TAutoTypesFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/DLbuttoanketchuyen.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TAutoTypesFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/DLbuttoanketchuyen.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TAutoTypesFrm.qryHesoBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure TAutoTypesFrm.qryHesoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action       := daAbort;
  ErrImportMsg := e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'') = -530 then
    ShowMessageUnicode(42, e.Message, 0);

  qryHesoAUTO_TYPE.FocusControl;
end;

procedure TAutoTypesFrm.qryHesoBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TAutoTypesFrm.FormShow(Sender: TObject);
begin
  qryHeso.Open;
  SetVisible(Self);
end;

end.
