unit PPXKForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, dxLayoutControl, cxControls, dxExEdtr, DB,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid,MainDataMdl, dxLayoutLookAndFeels, DBActns, ActnList;

type
  TFormPPXK = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsPPXK: TDataSource;
    qryPPXK: TIBOQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1MSPPXK: TdxDBGridMaskColumn;
    dxDBGrid1TENPPXK: TdxDBGridMaskColumn;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    qryPPXKMS_PPXK: TSmallintField;
    qryPPXKTEN_PPXK: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPPXK: TFormPPXK;

implementation

uses GlobalInterface, GlobalUnit, HtmlHlp;

{$R *.dfm}

procedure TFormPPXK.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  Self.qryPPXK.Open;

end;

procedure TFormPPXK.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TFormPPXK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPPXK.Close;
end;

end.
