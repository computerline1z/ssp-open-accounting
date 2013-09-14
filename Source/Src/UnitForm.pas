unit UnitForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList, dxDBTLCl,
  dxGrClEx, dxLayout, IBODataset;

type
  TUnitFrm = class(TForm)
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
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
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    dxDBGrid1UNIT_ID: TdxDBGridMaskColumn;
    dxDBGrid1UNIT_NAME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitFrm: TUnitFrm;

implementation

{$R *.dfm}

uses GlobalInterface, MainDataMdl, GlobalUnit, dxTreeGridMenus, htmlhlp;

procedure TUnitFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  MainDM.qryUnit.Open;

  if SSPUserRight[11].IR = False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[11].DR = False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TUnitFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with MainDM.qryUnit do
  begin
    if State in [dsEdit, dsInsert] then
      Post;
  end;
end;

procedure TUnitFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TUnitFrm.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TUnitFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TUnitFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TUnitFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

end.
