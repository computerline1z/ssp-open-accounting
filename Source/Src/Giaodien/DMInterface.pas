unit DMInterface;

interface

uses
  SysUtils, Classes, dxCntner, dxExEdtr, dxLayoutLookAndFeels, DB,
  IBCustomDataSet, IBQuery, IBODataset;

type
  TInterfaceDM = class(TDataModule)
    edtStyleController: TdxEditStyleController;
    chkStyleController: TdxCheckEditStyleController;
    dxLayoutLookAndFeelListGobal: TdxLayoutLookAndFeelList;
    lfActiveX: TdxLayoutWebLookAndFeel;
    StyleWeb: TdxLayoutWebLookAndFeel;
    StyleDetrong: TdxLayoutWebLookAndFeel;
    StyleStandard: TdxLayoutStandardLookAndFeel;
    StylePhang: TdxLayoutWebLookAndFeel;
    StyleMacDinh: TdxLayoutWebLookAndFeel;
    procedure DataModuleCreate(Sender: TObject);
    procedure edtStyleControllerStyleChanged(Sender, Link: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterfaceDM: TInterfaceDM;
  lang : integer;



implementation

uses GlobalInterface, MainDataMdl;

{$R *.dfm}

procedure TInterfaceDM.DataModuleCreate(Sender: TObject);
begin
  if not ReadRegistry then
    GlobalActiveStyle :=5;
end;

procedure TInterfaceDM.edtStyleControllerStyleChanged(Sender,
  Link: TObject);
begin
  chkStyleController.BorderColor:=edtStyleController.BorderColor;
  chkStyleController.BorderStyle:=edtStyleController.BorderStyle;
  chkStyleController.ButtonStyle:=edtStyleController.ButtonStyle;
  chkStyleController.ButtonTransparence:=edtStyleController.ButtonTransparence;
  chkStyleController.HotTrack:=edtStyleController.HotTrack;
  chkStyleController.Shadow:=edtStyleController.Shadow;
end;

end.
