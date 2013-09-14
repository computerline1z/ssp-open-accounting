unit InvoiceTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,  TntButtons, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TInvoiceTypeFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryInvType: TIBOQuery;
    dsInvType: TDataSource;
    qryInvTypeINVTYPE_ID: TWideStringField;
    qryInvTypeINVTYPE_NAME: TWideStringField;
    grdKHINVTYPE_ID: TdxDBGridMaskColumn;
    grdKHINVTYPE_NAME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryInvTypeAfterInsert(DataSet: TDataSet);
    procedure qryInvTypeBeforeDelete(DataSet: TDataSet);
    procedure qryInvTypeBeforeEdit(DataSet: TDataSet);
    procedure qryInvTypeBeforeInsert(DataSet: TDataSet);
    procedure qryInvTypeBeforePost(DataSet: TDataSet);
    procedure qryInvTypePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryInvTypeAfterPost(DataSet: TDataSet);
    procedure qryInvTypeAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceTypeFrm: TInvoiceTypeFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TInvoiceTypeFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryInvType.Open;
  if SSPUserRight[11].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[11].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TInvoiceTypeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryInvType.Close;
end;

procedure TInvoiceTypeFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TInvoiceTypeFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TInvoiceTypeFrm.qryInvTypeAfterInsert(DataSet: TDataSet);
begin
  qryInvTypeINVTYPE_ID.FocusControl;
end;

procedure TInvoiceTypeFrm.qryInvTypeBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TInvoiceTypeFrm.qryInvTypeBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TInvoiceTypeFrm.qryInvTypeBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

procedure TInvoiceTypeFrm.qryInvTypeBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if IsNotHasData(qryInvTypeINVTYPE_ID) then
  begin
    ShowMessageUnicode(20);
    qryInvTypeINVTYPE_ID.FocusControl;
    Abort;
  end;
end;

procedure TInvoiceTypeFrm.qryInvTypePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  ProcessErr(E,'hàng hóa');
  qryInvTypeINVTYPE_ID.FocusControl;
end;

procedure TInvoiceTypeFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TInvoiceTypeFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInvoiceTypeFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TInvoiceTypeFrm.qryInvTypeAfterPost(DataSet: TDataSet);
begin
  MainDM.qryPInvType.Close;
end;

procedure TInvoiceTypeFrm.qryInvTypeAfterDelete(DataSet: TDataSet);
begin
  MainDM.qryPInvType.Close;
end;

end.
