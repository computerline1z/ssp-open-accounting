unit KTTKNNForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, dxExEdtr, DB, IBODataset, ElPopBtn,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ElCaption,MainDataMdl,
  dxLayoutLookAndFeels;

type
  TFormKTTKNN = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElGraphicButton2: TElGraphicButton;
    dsKTTKNN: TDataSource;
    qryKTTKNN: TIBOQuery;
    qryKTTKNNACCOUNT_ID: TWideStringField;
    qryKTTKNNACCOUNT_NAME: TWideStringField;
    qryKTTKNNTAIDULIEU: TWideStringField;
    qryKTTKNNGHICHU: TWideStringField;
    dxDBGrid1ACCOUNT_ID: TdxDBGridMaskColumn;
    dxDBGrid1ACCOUNT_NAME: TdxDBGridMaskColumn;
    dxDBGrid1TAIDULIEU: TdxDBGridMaskColumn;
    dxDBGrid1GHICHU: TdxDBGridMaskColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKTTKNN: TFormKTTKNN;

implementation

uses GlobalInterface, GlobalUnit, DateUtils, md5, SimpleSecurityLibrary, HtmlHlp;

{$R *.dfm}

procedure TFormKTTKNN.FormCreate(Sender: TObject);
begin
    dxLayoutControl1.BeginUpdate;
    SetOnFormCreate(Self);
    dxLayoutControl1.EndUpdate;
    
    qryKTTKNN.Open;
end;

procedure TFormKTTKNN.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
