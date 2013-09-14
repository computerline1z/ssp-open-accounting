unit DefRptKQKDFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, ElCaption, DBActns,
  ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, DB, IBODataset
   ;

type
  TFrmDefRptKQKD = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1CHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    ElFormCaption1: TElFormCaption;
    locFormItem5: TdxLayoutItem;
    btnDefine: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    dxDBGrid1ID: TdxDBGridColumn;
    dxDBGrid1LUYKE: TdxDBGridColumn;
    dxDBGrid1LOAICHITIEU: TdxDBGridColumn;
    qrDefKQKD: TIBOQuery;
    dsDefKQKD: TDataSource;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDefineClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDefRptKQKD: TFrmDefRptKQKD;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,
  dxTreeGridMenus, DK_THKQHDKDFrm , DK_KQKDFrm;


{$R *.dfm}

procedure TFrmDefRptKQKD.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qrDefKQKD.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TFrmDefRptKQKD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qrDefKQKD do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TFrmDefRptKQKD.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key=VK_Return) and (btnDefine.Enabled)) then
    btnDefineClick(Sender)
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TFrmDefRptKQKD.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnDefine.Enabled:=(qrDefKQKD.fieldByName('LOAICHITIEU').AsInteger=1);
end;

procedure TFrmDefRptKQKD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFrmDefRptKQKD.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(10);
end;

procedure TFrmDefRptKQKD.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TFrmDefRptKQKD.btnDefineClick(Sender: TObject);
begin
  with TFrmDK_KQKD.Create(Self, qrDefKQKD.fieldbyname('ID').AsInteger) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFrmDefRptKQKD.dxDBGrid1DblClick(Sender: TObject);
begin
  if btnDefine.Enabled then
    btnDefineClick(Sender);
end;

procedure TFrmDefRptKQKD.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
