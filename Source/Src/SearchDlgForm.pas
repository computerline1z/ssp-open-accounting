unit SearchDlgForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner,
  dxEditor, dxEdLib, TntButtons, ElXPThemedControl, ElEdits, ElCaption,
  ElBtnCtl, ElPopBtn, dxLayoutLookAndFeels;

type
  TSearchDlgFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtSP: TdxEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchDlgFrm: TSearchDlgFrm;

implementation

uses GlobalUnit, htmlhlp;


{$R *.dfm}

procedure TSearchDlgFrm.btnOKClick(Sender: TObject);
begin
  SophieuCantim := edtSP.Text;
end;

procedure TSearchDlgFrm.btnCancelClick(Sender: TObject);
begin
  SophieuCantim:='';
end;

procedure TSearchDlgFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  
  edtSP.Text := SophieuCantim;
end;

procedure TSearchDlgFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Timkiemchungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

end.
