unit LoaiTCForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl,
  cxControls,  dxLayoutLookAndFeels, DB, IBODataset, ElCaption,
  DBActns, ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBTLCl,
  dxGrClEx;

type
  TLoaiTCFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbgDmLoaiNX: TdxDBGrid;
    qrDmLoaiNX: TIBOQuery;
    dsDmLoaiNX: TDataSource;
    ElFormCaption1: TElFormCaption;
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
    qrDmLoaiNXINTERFACE_ID: TIntegerField;
    qrDmLoaiNXINTERFACE_NAME: TWideStringField;
    qrDmLoaiNXDOCTYPE_ID: TIntegerField;
    qrDmLoaiNXDOCTYPE_NAME: TWideStringField;
    dbgDmLoaiNXINTERFACE_ID: TdxDBGridColumn;
    dbgDmLoaiNXINTERFACE_NAME: TdxDBGridColumn;
    dbgDmLoaiNXDOCTYPE_NAME: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbgDmLoaiNXMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgDmLoaiNXKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrDmLoaiNXPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrDmLoaiNXDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dbgDmLoaiNXDOCTYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoaiTCFrm: TLoaiTCFrm;

implementation

uses MainDataMdl, GlobalUnit, dxTreeGridMenus, PopupForm, Functions;

{$R *.dfm}

procedure TLoaiTCFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qrDmLoaiNX.Open;
end;

procedure TLoaiTCFrm.acCloseExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TLoaiTCFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qrDmLoaiNX.state in [dsInsert, dsEdit] then qrDmLoaiNX.post;
  CanClose := true;
end;

procedure TLoaiTCFrm.dbgDmLoaiNXMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TLoaiTCFrm.dbgDmLoaiNXKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dbgDmLoaiNX, Key, Shift, True);
end;

procedure TLoaiTCFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TLoaiTCFrm.qrDmLoaiNXPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'') =-803 then
    qrDmLoaiNXDOCTYPE_NAME.FocusControl;
end;

procedure TLoaiTCFrm.qrDmLoaiNXDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TLoaiTCFrm.dbgDmLoaiNXDOCTYPE_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiNX.Edit;
    qrDmLoaiNXDOCTYPE_ID.Value := MainDM.qryPDocTypeDOCTYPE_ID.Value;
    Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
  end;
end;

procedure TLoaiTCFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
