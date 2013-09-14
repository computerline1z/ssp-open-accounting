unit QuyettoanthueTNDN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DBActns, ActnList, ElCaption, dxBar,
  dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  cxControls, DB, IBODataset, dxGrClEx, ExtCtrls;

type
  TfrmQuyettoanthueTNDN = class(TForm)
    locForm: TdxLayoutControl;
    grdQuyettoanthueTNDN: TdxDBGrid;
    btnIns: TElPopupButton;
    btnDel: TElPopupButton;
    TntBitBtn3: TElPopupButton;
    TntBitBtn4: TElPopupButton;
    TntBitBtn5: TElPopupButton;
    TntBitBtn6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    grdQuyettoanthueTNDNGIATRI: TdxDBGridCalcColumn;
    grdQuyettoanthueTNDNID: TdxDBGridColumn;
    grdQuyettoanthueTNDNMANHOM: TdxDBGridColumn;
    grdQuyettoanthueTNDNMASO: TdxDBGridColumn;
    grdQuyettoanthueTNDNP_MANHOM: TdxDBGridPopupColumn;
    locFormItem1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    acDinhnghia: TAction;
    grdQuyettoanthueTNDNNOTES: TdxDBGridMaskColumn;
    grdQuyettoanthueTNDNTEN: TdxDBGridColumn;
    qryQTTTNDN: TIBOQuery;
    qryQTTTNDNID: TSmallintField;
    qryQTTTNDNMANHOM: TWideStringField;
    qryQTTTNDNMASO: TWideStringField;
    qryQTTTNDNTEN: TWideStringField;
    qryQTTTNDNGIATRI: TIBOFloatField;
    qryQTTTNDNP_MANHOM: TWideStringField;
    qryQTTTNDNNOTES: TWideStringField;
    dsQTTTNDN: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdQuyettoanthueTNDNKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdQuyettoanthueTNDNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acDinhnghiaExecute(Sender: TObject);
    procedure qryQTTTNDNBeforePost(DataSet: TDataSet);
    procedure qryQTTTNDNAfterInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuyettoanthueTNDN: TfrmQuyettoanthueTNDN;

implementation
uses GlobalInterface, LookupFrm,
  GlobalUnit, dxTreeGridMenus, DKQuyettoanthuTNDN, MainDataMdl, HtmlHlp;
{$R *.dfm}

procedure TfrmQuyettoanthueTNDN.FormCreate(Sender: TObject);
begin

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  if not qryQTTTNDN.Active then qryQTTTNDN.Open;
end;

procedure TfrmQuyettoanthueTNDN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryQTTTNDN.Active then qryQTTTNDN.Close;
end;

procedure TfrmQuyettoanthueTNDN.grdQuyettoanthueTNDNKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdQuyettoanthueTNDN, Key, Shift, True,3);
end;

procedure TfrmQuyettoanthueTNDN.grdQuyettoanthueTNDNMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TfrmQuyettoanthueTNDN.acDinhnghiaExecute(Sender: TObject);
begin
  with TfrmDKQuyettoanthueTNDN.Create(Self) do
  try
    Cur_Values := qryQTTTNDNID.Value;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmQuyettoanthueTNDN.qryQTTTNDNBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryQTTTNDNID) then
  begin
    ShowMessageUnicode(900);
    qryQTTTNDNID.FocusControl;
    Abort;
    Exit;
  end;
//  LastModifyItemID:=qryQTTTNDNID.Value;
end;

procedure TfrmQuyettoanthueTNDN.qryQTTTNDNAfterInsert(DataSet: TDataSet);
begin
  qryQTTTNDNID.FocusControl;
end;

procedure TfrmQuyettoanthueTNDN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/QuyettoanthueTNDN.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TfrmQuyettoanthueTNDN.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/QuyettoanthueTNDN.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
