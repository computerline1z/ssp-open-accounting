unit DmLoaiNXFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl,
  cxControls,  dxLayoutLookAndFeels, DB, IBODataset, ElCaption,
  DBActns, ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBTLCl,
  dxGrClEx;

type
  TFrmDmLoaiNX = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbgDmLoaiNX: TdxDBGrid;
    dbgDmLoaiNXColumn1: TdxDBGridColumn;
    qrDmLoaiNX: TIBOQuery;
    dsDmLoaiNX: TDataSource;
    ElFormCaption1: TElFormCaption;
    dbgDmLoaiNXColumn5: TdxDBGridColumn;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActionList1: TActionList;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    acSelect: TAction;
    acHelp: TAction;
    acClose: TAction;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dbgDmLoaiNXColumn6: TdxDBGridPopupColumn;
    dbgDmLoaiNXColumn2: TdxDBGridPopupColumn;
    dbgDmLoaiNXColumn3: TdxDBGridPopupColumn;
    dbgDmLoaiNXColumn4: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbgDmLoaiNXMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgDmLoaiNXColumn6CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbgDmLoaiNXColumn2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbgDmLoaiNXColumn3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbgDmLoaiNXColumn4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dbgDmLoaiNXKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrDmLoaiNXPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrDmLoaiNXDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrDmLoaiNXAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDmLoaiNX: TFrmDmLoaiNX;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, PopupForm, Functions;

{$R *.dfm}

procedure TFrmDmLoaiNX.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qrDmLoaiNX.Open;
end;

procedure TFrmDmLoaiNX.acCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmDmLoaiNX.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qrDmLoaiNX.state in [dsInsert, dsEdit] then qrDmLoaiNX.post;
  CanClose := true;
end;

procedure TFrmDmLoaiNX.dbgDmLoaiNXMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TFrmDmLoaiNX.dbgDmLoaiNXColumn6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiNX.Edit;
    qrDmLoaiNX.fieldByname('DOCTYPE_ID').Value := MainDM.qryPDocType.fieldbyName('DOCTYPE_ID').Value;
    Text := MainDM.qryPDocType.fieldbyName('DOCTYPE_NAME').Value;
    qrDmLoaiNX.FieldByName('DOCTYPE_NAME').Value := MainDM.qryPDocType.fieldbyName('DOCTYPE_NAME').Value;
  end;
end;

procedure TFrmDmLoaiNX.dbgDmLoaiNXColumn2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiNX.Edit;
    qrDmLoaiNX.fieldByname('TKCO').Value := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
    Text := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
  end;
end;

procedure TFrmDmLoaiNX.dbgDmLoaiNXColumn3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiNX.Edit;
    qrDmLoaiNX.fieldByname('TKNO').Value := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
    Text := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
  end;
end;

procedure TFrmDmLoaiNX.dbgDmLoaiNXColumn4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiNX.Edit;
    qrDmLoaiNX.fieldByname('TKVAT').Value := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
    Text := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
  end;
end;

procedure TFrmDmLoaiNX.dbgDmLoaiNXKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgDmLoaiNX, Key, Shift, True);
end;

procedure TFrmDmLoaiNX.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFrmDmLoaiNX.qrDmLoaiNXPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'') =-803 then
    qrDmLoaiNX.FieldByName('ID_INO').FocusControl;
end;

procedure TFrmDmLoaiNX.qrDmLoaiNXDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TFrmDmLoaiNX.qrDmLoaiNXAfterInsert(DataSet: TDataSet);
begin
  qrDmLoaiNX.fieldbyname('ID_INO').FocusControl;
end;

procedure TFrmDmLoaiNX.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
