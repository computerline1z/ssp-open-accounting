unit DefEntrysForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TDefEntrysFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column1: TdxDBGridPopupColumn;
    dxDBGrid1Column2: TdxDBGridPopupColumn;
    ElFormCaption1: TElFormCaption;
    ElPopupButton1: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1Column1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1Column2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DefEntrysFrm: TDefEntrysFrm;
implementation

uses GlobalInterface, MainDataMdl, IBODataset, DB, PopupForm, GlobalUnit,
htmlhlp;

{$R *.dfm}

procedure TDefEntrysFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  if FilterAccType<>1 then
  with MainDM do
  begin
    FilterAccType:=1;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
  try
    MainDM.qryDefEntrys.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TDefEntrysFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryDefEntrys do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TDefEntrysFrm.dxDBGrid1Column1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDefEntrysFrm.dxDBGrid1Column2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text:=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDefEntrysFrm.dxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TDefEntrysFrm.ElPopupButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TDefEntrysFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/DLbuttoanketchuyen.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDefEntrysFrm.ElPopupButton1Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/DLbuttoanketchuyen.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(13);
end;

procedure TDefEntrysFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
