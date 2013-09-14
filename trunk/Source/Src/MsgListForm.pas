unit MsgListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClms,
  ElCaption, XLSReadWriteII, ElXPThemedControl, ElBtnCtl, ElPopBtn, ImgList;

type
  TMsgListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    OpenDialog1: TOpenDialog;
    dxDBGrid1MESSAGE_ID: TdxDBGridMaskColumn;
    dxDBGrid1MESSAGE_VN: TdxDBGridMaskColumn;
    dxDBGrid1MESSAGE_ENG: TdxDBGridMaskColumn;
    dxDBGrid1TITLE_VN: TdxDBGridMaskColumn;
    dxDBGrid1TITLE_ENG: TdxDBGridMaskColumn;
    dxDBGrid1IMAGE_ID: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MsgListFrm: TMsgListFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, DB, GlobalUnit, LookupFrm,
  SheetData, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TMsgListFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    MainDM.qryMsgList.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TMsgListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TMsgListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TMsgListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MainDM.qryMsgList.State = dsEdit then
    MainDM.qryMsgList.Post;
end;

procedure TMsgListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TMsgListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
