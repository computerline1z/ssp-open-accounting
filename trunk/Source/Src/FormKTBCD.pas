unit FormKTBCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls,MainDataMdl, DB, IBODataset,
  dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ElPopBtn, ElCaption,
  dxLayoutLookAndFeels;

type
  TKTBCDForm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    qryKTBCD: TIBOQuery;
    dsKTBCD: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElGraphicButton1: TElGraphicButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    qryKTBCDSHTK: TWideStringField;
    qryKTBCDTENCHITIEU: TWideStringField;
    qryKTBCDTENSHTK: TWideStringField;
    qryKTBCDLOAI_TK: TSmallintField;
    qryKTBCDDIENGIAI: TWideStringField;
    qryKTBCDID: TSmallintField;
    qryKTBCDCHITIEU: TWideStringField;
    qryKTBCDDINHNGHIADK: TWideStringField;
    qryKTBCDSOLANDANGKY: TSmallintField;
    dxDBGrid1SHTK: TdxDBGridMaskColumn;
    dxDBGrid1TENCHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1TENSHTK: TdxDBGridMaskColumn;
    dxDBGrid1CHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1DINHNGHIADK: TdxDBGridMaskColumn;
    dxDBGrid1SOLANDANGKY: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KTBCDForm: TKTBCDForm;

implementation

uses GlobalInterface, GlobalUnit, HtmlHlp;

{$R *.dfm}

procedure TKTBCDForm.FormCreate(Sender: TObject);
begin

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  qryKTBCD.Open;
end;

procedure TKTBCDForm.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
