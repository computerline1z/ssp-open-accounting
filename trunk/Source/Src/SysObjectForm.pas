unit SysObjectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, dxBar,
  Forms, ElCaption, dxDBTLCl, dxGrClms, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList;

type
  TSysObjectFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    dxDBGrid1OBJECT_ID: TdxDBGridMaskColumn;
    dxDBGrid1OBJECT_NAME: TdxDBGridMaskColumn;
    dxDBGrid1NOTES: TdxDBGridMaskColumn;
    dxDBGrid1ACTIVE_OBJECT: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysObjectFrm: TSysObjectFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, GlobalUnit, LookupFrm,
  dxTreeGridMenus;


{$R *.dfm}

procedure TSysObjectFrm.FormCreate(Sender: TObject);
begin

  SetOnFormCreate(Sender as TControl);
  MainDM.qrySysObj.Open;
end;

procedure TSysObjectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qrySysObj do
  begin
    if State in [dsEdit, dsInsert] then
      Post;
    Close;
  end;
end;

procedure TSysObjectFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TSysObjectFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(dxDBGrid1);
end;

procedure TSysObjectFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(dxDBGrid1);
end;

procedure TSysObjectFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(dxDBGrid1);
end;

procedure TSysObjectFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

end;

procedure TSysObjectFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TSysObjectFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
