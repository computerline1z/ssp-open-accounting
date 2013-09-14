unit AboutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,ShellAPI, ElCLabel, ElLabel,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, ElPanel, TntStdCtrls;

type
  TAboutFrm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ElPopupButton1: TElPopupButton;
    TntMemo1: TTntMemo;
    procedure Label4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutFrm: TAboutFrm;

implementation

uses GlobalUnit;

{$R *.dfm}

procedure TAboutFrm.Label4Click(Sender: TObject);
begin
  ShellExecute(Self.Handle,'Open',Pchar(Label4.Caption),'','',0);
end;

procedure TAboutFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TAboutFrm.Image1Click(Sender: TObject);
var
  sr: TSearchRec;
  Path:String;
begin
  {Path:=ApplicationDir+ '\BeforeScripts\';
  if FindFirst(Path+'*.sql', faAnyFile, sr) = 0 then
    repeat
      ShowMessage(Path+sr.Name);
      //Execute file Path+sr.Name
    until FindNext(sr) <> 0;
  FindClose(sr);}
end;

procedure TAboutFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
