unit ScriptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Controls, Forms,
  Dialogs, IB_Components,Registry, dxEditor, dxExEdtr, dxEdLib,
  dxLayoutControl, dxCntner, cxControls, StdCtrls, IB_Process, IB_Script,
  DB, IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn,StrUtils,
  dxLayoutLookAndFeels, ElCaption;
type
  TScriptFrm = class(TForm)
    tsMain: TIB_Transaction;
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    locFormGroup1: TdxLayoutGroup;
    IB_Script1: TIB_Script;
    Memo1: TMemo;
    locFormItem8: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    btnExe: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    Memo2: TMemo;
    locFormItem3: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    procedure Memo1Change(Sender: TObject);
    procedure btnExeClick(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure IB_Script1Error(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScriptFrm: TScriptFrm;
  ScriptExecuted: Boolean;//Co thuc hien script hay khong
  ErrorCount:Integer;

implementation

uses SimpleSecurityLibrary, MainDataMdl, GlobalUnit, HtmlHlp;

{$R *.dfm}

procedure TScriptFrm.Memo1Change(Sender: TObject);
begin
  btnExe.Enabled := Memo1.Text<>'';
end;

procedure TScriptFrm.btnExeClick(Sender: TObject);
begin
  if Memo1.Text='' then exit;

  Memo2.Text:='';
  ErrorCount:=0;

  Screen.Cursor := crHourGlass;

  IB_Script1.SQL.Text :=SSPDecode(Trim(Memo1.Text));

  MainDm.cnMain.Close;
  MainDm.cnMain.Open;
  ScriptExecuted:=True;
  IB_Script1.Execute;
  IB_Script1.IB_Transaction.CommitRetaining;
  Screen.Cursor := crDefault;

  if ErrorCount=0 then
    ShowMessageUnicode(198)
  else
    ShowMessageUniText(GetMessage(199) + IntToStr(ErrorCount));
end;

procedure TScriptFrm.ElPopupButton3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TScriptFrm.IB_Script1Error(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
  RaiseException:=False;
  ErrorCount:=ErrorCount+1;
  Memo2.Lines.Add(IntToStr(ErrorCount)+ '////' + ErrorMessage.Text);
  {IB_Script1.Tag:=1;
  ShowMessage(ErrorMessage.Text);}
end;

procedure TScriptFrm.FormCreate(Sender: TObject);
begin
  ScriptExecuted:=False;
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
end;

procedure TScriptFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TScriptFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ScriptExecuted then
  begin
    ShowMessageUnicode(197);
    Application.Terminate;
  end;
end;

procedure TScriptFrm.ElPopupButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Screen.Cursor := crHourGlass;
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    Memo1.Lines.Text:=Trim(Memo1.Lines.Text);

    Screen.Cursor := crDefault;
  end;
end;

procedure TScriptFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  
end;

end.
