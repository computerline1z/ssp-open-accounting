unit KTTKDTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, ShellAPI, Forms,
  dxDBEdtr, dxDBELib, Registry, dxLayoutControl, cxControls,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl,
  ElPopBtn, ExtCtrls, ElPanel, ElGroupBox, ElCheckItemGrp, dxBar,
  dxLayoutLookAndFeels, DB, IBODataset, dxTL, dxDBCtrl, dxDBGrid;

type
  TFormKTTKDT = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElGraphicButton1: TElGraphicButton;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    qryKTTKDT: TIBOQuery;
    dsKTTKDT: TDataSource;
    ElFormCaption1: TElFormCaption;
    qryKTTKDTSHTK: TWideStringField;
    qryKTTKDTSDNO: TIBOFloatField;
    qryKTTKDTSDCO: TIBOFloatField;
    qryKTTKDTSDDTCO: TIBOFloatField;
    qryKTTKDTSDDTNO: TIBOFloatField;
    dxDBGrid1SHTK: TdxDBGridMaskColumn;
    dxDBGrid1SDNO: TdxDBGridMaskColumn;
    dxDBGrid1SDCO: TdxDBGridMaskColumn;
    dxDBGrid1SDDTCO: TdxDBGridMaskColumn;
    dxDBGrid1SDDTNO: TdxDBGridMaskColumn;
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
  FormKTTKDT: TFormKTTKDT;

implementation

uses MainDataMdl, GlobalUnit, GlobalInterface, DateUtils, md5,SimpleSecurityLibrary,
HtmlHlp;

{$R *.dfm}

procedure TFormKTTKDT.FormCreate(Sender: TObject);
begin
  //  dxDateDenngay.Date := Date;
    qryKTTKDT.ParamByName('denngay').value := Date;
    qryKTTKDT.ParamByName('branch_id').value := vpBranch_id; 
    qryKTTKDT.Open;
end;

procedure TFormKTTKDT.FormKeyDown(Sender: TObject; var Key: Word;
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
