unit DmLoaiBHFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl,
  cxControls,  dxLayoutLookAndFeels, dxDBTL, DB, IBODataset,
  ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxDBTLCl, dxGrClEx, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppMemo;

type
  TFrmDmLoaiBH = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBTreeList1: TdxDBTreeList;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBTreeList1Column1: TdxDBTreeListColumn;
    qrDmLoaiBH: TIBOQuery;
    dsDmLoaiBH: TDataSource;
    ElFormCaption1: TElFormCaption;
    dxDBTreeList1Column5: TdxDBTreeListColumn;
    ActionList1: TActionList;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    acSelect: TAction;
    acHelp: TAction;
    acClose: TAction;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBTreeList1Column6: TdxDBTreeListPopupColumn;
    dxDBTreeList1Column2: TdxDBTreeListPopupColumn;
    dxDBTreeList1Column3: TdxDBTreeListPopupColumn;
    dxDBTreeList1Column4: TdxDBTreeListPopupColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1Column6CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBTreeList1Column2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBTreeList1Column3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBTreeList1Column4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure DataSetPost1Execute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrDmLoaiBHAfterInsert(DataSet: TDataSet);
    procedure qrDmLoaiBHPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrDmLoaiBHDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDmLoaiBH: TFrmDmLoaiBH;

implementation

uses MainDataMdl, GlobalUnit, PopupForm, Functions;

{$R *.dfm}

procedure TFrmDmLoaiBH.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qrDmLoaiBH.state in [dsInsert, dsEdit] then qrDmLoaiBH.post;
  Canclose := true;
end;

procedure TFrmDmLoaiBH.acCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmDmLoaiBH.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qrDmLoaiBH.Open;
end;

procedure TFrmDmLoaiBH.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TFrmDmLoaiBH.dxDBTreeList1Column6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiBH.Edit;
    qrDmLoaiBH.fieldByname('DOC_TYPE_ID').Value := MainDM.qryPDocType.fieldbyName('DOCTYPE_ID').Value;
    Text := MainDM.qryPDocType.fieldbyName('DOCTYPE_NAME').Value;
    qrDmLoaiBH.fieldByname('DOC_TYPE_NAME').Value := MainDM.qryPDocType.fieldbyName('DOCTYPE_NAME').Value;
  end;
end;

procedure TFrmDmLoaiBH.dxDBTreeList1Column2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiBH.Edit;
    qrDmLoaiBH.fieldByname('TKCO').Value := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
    Text := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
  end;
end;

procedure TFrmDmLoaiBH.dxDBTreeList1Column3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiBH.Edit;
    qrDmLoaiBH.fieldByname('TKNO').Value := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
    Text := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
  end;
end;

procedure TFrmDmLoaiBH.dxDBTreeList1Column4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrDmLoaiBH.Edit;
    qrDmLoaiBH.fieldByname('TKVAT').Value := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
    Text := MainDM.qryPAcc.fieldbyName('ACCOUNT_ID').Value;
  end;
end;

procedure TFrmDmLoaiBH.DataSetPost1Execute(Sender: TObject);
begin
  qrDmLoaiBH.Post;
  qrdmLoaiBH.refresh;
end;

procedure TFrmDmLoaiBH.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFrmDmLoaiBH.qrDmLoaiBHAfterInsert(DataSet: TDataSet);
begin
  qrDmLoaiBH.fieldbyname('DOCTYPE_ID').FocusControl;
end;

procedure TFrmDmLoaiBH.qrDmLoaiBHPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  if ProcessErr(E,'') =-803 then
    qrDmLoaiBH.fieldbyname('DOCTYPE_ID').FocusControl;
end;

procedure TFrmDmLoaiBH.qrDmLoaiBHDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TFrmDmLoaiBH.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
