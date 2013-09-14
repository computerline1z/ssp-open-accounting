unit AutoEntryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns,
  ActnList, DB, IBODataset, dxLayout;

type
  TAutoEntryFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAllocate: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    grdAllocateAUTO_NOTE: TdxDBGridColumn;
    grdAllocateFROM_ACCOUNT: TdxDBGridPopupColumn;
    grdAllocateTO_ACCOUNT: TdxDBGridPopupColumn;
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
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    grdAllocateAUTO_ID: TdxDBGridMaskColumn;
    grdAllocatePERCENT: TdxDBGridMaskColumn;
    qryAutoEntry: TIBOQuery;
    dsAutoEntry: TDataSource;
    btnHeso: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    qryAutoEntryAUTO_ID: TSmallintField;
    qryAutoEntryFROM_ACCOUNT: TWideStringField;
    qryAutoEntryTO_ACCOUNT: TWideStringField;
    qryAutoEntryPERCENT: TIBOFloatField;
    qryAutoEntryAUTO_TYPE: TSmallintField;
    qryAutoEntryAUTO_NOTE: TWideStringField;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    qryHeso: TIBOQuery;
    qryHesoAUTO_TYPE: TSmallintField;
    qryHesoAUTOTYPE_NAME: TWideStringField;
    dsHeso: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    qryAutoEntryAUTOTYPE_NAME: TWideStringField;
    grdAllocateAUTOTYPE_NAME: TdxDBGridExtLookupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdAllocateFROM_ACCOUNTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdAllocateTO_ACCOUNTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdAllocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryAutoEntryBeforeDelete(DataSet: TDataSet);
    procedure qryAutoEntryBeforePost(DataSet: TDataSet);
    procedure qryAutoEntryPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryAutoEntryBeforeEdit(DataSet: TDataSet);
    procedure qryAutoEntryBeforeInsert(DataSet: TDataSet);
    procedure qryAutoEntryAfterInsert(DataSet: TDataSet);
    procedure qryAutoEntryNewRecord(DataSet: TDataSet);
    procedure btnHesoClick(Sender: TObject);
    procedure grdAllocateChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormShow(Sender: TObject);
    procedure qryAutoEntryAUTO_TYPEChange(Sender: TField);
    procedure grdAllocateAUTOTYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateAUTOTYPE_NAMEInitPopup(Sender: TObject);
    procedure grdAllocateDblClick(Sender: TObject);
  private
    MaxID:Smallint;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  AutoEntryFrm: TAutoEntryFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, AutoRateForm, HtmlHlp;
{$R *.dfm}


procedure TAutoEntryFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  AllowSelectParent:=True;

  MainDM.qryPAcc.Filtered := False;
  qryHeso.Open;

  try
    qryAutoEntry.Open;
    MainDM.qryPAcc.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  
  qryAutoEntry.Last;
  MaxID:=qryAutoEntryAUTO_ID.AsInteger;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TAutoEntryFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryAutoEntry do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
  AllowSelectParent:=False;
end;

procedure TAutoEntryFrm.grdAllocateFROM_ACCOUNTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryAutoEntry.Edit;
    Text:=qryPAccACCOUNT_ID.Value;
    //qryAutoEntryAUTO_NOTE.Value:= qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TAutoEntryFrm.grdAllocateTO_ACCOUNTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TAutoEntryFrm.grdAllocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdAllocate, Key, Shift, True);
end;

procedure TAutoEntryFrm.grdAllocateMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TAutoEntryFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/DLbuttoanketchuyen.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TAutoEntryFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/DLbuttoanketchuyen.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(13);
end;

procedure TAutoEntryFrm.qryAutoEntryBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TAutoEntryFrm.qryAutoEntryBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;

  if qryAutoEntry.State = dsInsert then
    MaxID:=MaxID+1;
end;

procedure TAutoEntryFrm.qryAutoEntryPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  kq:integer;
begin
  if qryAutoEntry.State = dsInsert then
    MaxID:=MaxID-1;

  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  kq:=ProcessErr(E,'');
  if kq=-803 then
    qryAutoEntryAUTO_ID.FocusControl
  else  if kq=-530 then
  begin
    ShowMessageUnicode(42,e.Message,0);

    if MainDM.qryPAcc.Locate('ACCOUNT_ID',qryAutoEntryFROM_ACCOUNT.Value,[]) then
      qryAutoEntryTO_ACCOUNT.FocusControl
    else
      qryAutoEntryFROM_ACCOUNT.FocusControl;
  end
  else
    ShowMessageUnicode(210,e.Message,0);
end;

procedure TAutoEntryFrm.qryAutoEntryBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TAutoEntryFrm.qryAutoEntryBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TAutoEntryFrm.qryAutoEntryAfterInsert(DataSet: TDataSet);
begin
  qryAutoEntryFROM_ACCOUNT.FocusControl;
end;

procedure TAutoEntryFrm.qryAutoEntryNewRecord(DataSet: TDataSet);
begin
  qryAutoEntryAUTO_ID.AsInteger:=MaxID+1;
  qryAutoEntryPERCENT.AsFloat:=100;
end;

procedure TAutoEntryFrm.btnHesoClick(Sender: TObject);
begin
  if qryAutoEntry.State in [dsInsert, dsEdit] then
    qryAutoEntry.Post;


  MainDM.qryPAcc.Open;

  if qryAutoEntryAUTO_TYPE.AsInteger=5 then
    MainDM.qryPAcc.Locate('ACCOUNT_ID',qryAutoEntryTO_ACCOUNT.Value,[])
  else
    MainDM.qryPAcc.Locate('ACCOUNT_ID',qryAutoEntryFROM_ACCOUNT.Value,[]);

  if qryAutoEntryAUTO_TYPE.AsInteger=12 then
    MainDM.qryPAcc.Locate('ACCOUNT_ID',qryAutoEntryTO_ACCOUNT.Value,[]);

  if MainDM.qryPAccOTYPE_ID.IsNull then
  begin
    ShowMessageUnicode(208);
    Exit;
  end;

  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;

  with TAutoRateFrm.Create(Self) do
    try
      AUTO_ID:=qryAutoEntryAUTO_ID.AsInteger;
      AUTO_TYPE:=qryAutoEntryAUTO_TYPE.AsInteger;
      FROM_ACC := qryAutoEntryFROM_ACCOUNT.Value;
      TO_ACC := qryAutoEntryTO_ACCOUNT.Value;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TAutoEntryFrm.grdAllocateChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnHeso.Enabled:=(qryAutoEntryAUTO_TYPE.AsInteger >= 5) and
                    (qryAutoEntryAUTO_TYPE.AsInteger <> 11) and
                    (qryAutoEntryAUTO_TYPE.AsInteger <> 10 );
end;

procedure TAutoEntryFrm.FormShow(Sender: TObject);
begin
  btnHeso.Enabled:=(qryAutoEntryAUTO_TYPE.AsInteger >= 5) and
                    (qryAutoEntryAUTO_TYPE.AsInteger <> 11) and
                    (qryAutoEntryAUTO_TYPE.AsInteger <> 10 );
  SetVisible(Self);  
end;

procedure TAutoEntryFrm.qryAutoEntryAUTO_TYPEChange(Sender: TField);
begin
  btnHeso.Enabled:=(qryAutoEntryAUTO_TYPE.AsInteger>=5);
end;

procedure TAutoEntryFrm.grdAllocateAUTOTYPE_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Not Accept then Exit;

  Text := qryHesoAUTOTYPE_NAME.Value;
  qryAutoEntry.Edit;
  qryAutoEntryAUTO_TYPE.AsInteger:=qryHesoAUTO_TYPE.AsInteger;
end;

procedure TAutoEntryFrm.grdAllocateAUTOTYPE_NAMEInitPopup(Sender: TObject);
begin
  qryHeso.Open;
  if Not qryAutoEntryAUTO_TYPE.IsNull then
    qryHeso.Locate('AUTO_TYPE',qryAutoEntryAUTO_TYPE.AsInteger,[]);
end;

procedure TAutoEntryFrm.grdAllocateDblClick(Sender: TObject);
begin
  if btnHeso.Enabled then
    btnHeso.Click;
end;

end.
