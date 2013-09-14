unit DKQuyettoanthuTNDN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DBActns, ActnList, DB, IBODataset, ElCaption,
  dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  cxControls, dxGrClEx;

type
  TfrmDKQuyettoanthueTNDN = class(TForm)
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1HESO: TdxDBGridCalcColumn;
    dxDBGrid1GHICHU: TdxDBGridColumn;
    TntBitBtn1: TElPopupButton;
    TntBitBtn2: TElPopupButton;
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
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dsQTTTNDNCond: TDataSource;
    qryQTTTNDNCond: TIBOQuery;
    qryQTTTNDNCondID: TSmallintField;
    qryQTTTNDNCondTKNOBDV: TWideStringField;
    qryQTTTNDNCondTKCOBDV: TWideStringField;
    qryQTTTNDNCondKF: TWideStringField;
    qryQTTTNDNCondGHICHU: TWideStringField;
    qryQTTTNDNCondHESO: TIBOFloatField;
    dxDBGrid1TKNOBDV: TdxDBGridPopupColumn;
    dxDBGrid1TKCOBDV: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryQTTTNDNCondNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1TKNOBDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1TKCOBDVCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryQTTTNDNCondBeforeDelete(DataSet: TDataSet);
    procedure qryQTTTNDNCondAfterInsert(DataSet: TDataSet);
    procedure qryQTTTNDNCondBeforeEdit(DataSet: TDataSet);
    procedure qryQTTTNDNCondBeforeInsert(DataSet: TDataSet);
    procedure qryQTTTNDNCondBeforePost(DataSet: TDataSet);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    Cur_Values: smallint; 
     {Public declarations }
  end;

var
  frmDKQuyettoanthueTNDN: TfrmDKQuyettoanthueTNDN;

implementation

{$R *.dfm}
uses MainDataMdl, GlobalUnit, Functions, dxTreeGridMenus, QuyettoanthueTNDN, HtmlHlp;

procedure TfrmDKQuyettoanthueTNDN.FormCreate(Sender: TObject);
begin

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate; 

  with qryQTTTNDNCond do
  begin
    if Active then Close;
//  ParamByName('ID').AsInteger:=frmQuyettoanthueTNDN.qryQTTTNDNID.AsInteger;
    Open;
  end;
end;

procedure TfrmDKQuyettoanthueTNDN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryQTTTNDNCond do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;
procedure TfrmDKQuyettoanthueTNDN.qryQTTTNDNCondNewRecord(
  DataSet: TDataSet);
begin
  qryQTTTNDNCondHESO.AsFloat:=1;
  qryQTTTNDNCondID.AsInteger:= Cur_Values;
  qryQTTTNDNCondTKNOBDV.FocusControl;
end;

procedure TfrmDKQuyettoanthueTNDN.dxDBGrid1TKNOBDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TfrmDKQuyettoanthueTNDN.dxDBGrid1TKCOBDVCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TfrmDKQuyettoanthueTNDN.qryQTTTNDNCondBeforeDelete(
  DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TfrmDKQuyettoanthueTNDN.qryQTTTNDNCondAfterInsert(
  DataSet: TDataSet);
begin
  qryQTTTNDNCondID.FocusControl;
end;

procedure TfrmDKQuyettoanthueTNDN.qryQTTTNDNCondBeforeEdit(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TfrmDKQuyettoanthueTNDN.qryQTTTNDNCondBeforeInsert(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TfrmDKQuyettoanthueTNDN.qryQTTTNDNCondBeforePost(
  DataSet: TDataSet);
begin
  if IsNotHasData(qryQTTTNDNCondTKNOBDV) then
  begin
    ShowMessageUnicode(900);
    qryQTTTNDNCondTKNOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryQTTTNDNCondTKCOBDV) then
  begin
    ShowMessageUnicode(900);
    qryQTTTNDNCondTKCOBDV.FocusControl;
    Abort;
    Exit;
  end;
//  LastModifyItemID:=qryObjGrpOBJGRP_ID.Value;
end;

procedure TfrmDKQuyettoanthueTNDN.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TfrmDKQuyettoanthueTNDN.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TfrmDKQuyettoanthueTNDN.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
