unit RestoreForm;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, ElXPThemedControl,  ElCaption,
  ElBtnCtl, ElPopBtn, ElBiProgr, dxExEdtr, ComCtrls, IB_Dialogs,
  IB_Components, IB_Process, IB_Script, dxLayoutLookAndFeels;

const
  AliasNameDocs         ='<$SSP$DOCUMENTS$>';
  AliasNameEntrys       ='<$SSP$FULL_ENTRYS$>';
  AliasNameInvoice      ='<$SSP$INVOICE_INFO$>';
  AliasNameInvoiceDetail='<$SSP$INVOICE_DETAIL$>';

type
  TRestoreFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    locForm: TdxLayoutControl;
    btnCancel: TElPopupButton;
    btnOK: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormItem5: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    dxButtonEdit1: TdxButtonEdit;
    locFormItem1: TdxLayoutItem;
    ProgressBar1: TProgressBar;
    locProgress: TdxLayoutItem;
    OpenDlg: TOpenDialog;
    IB_Script1: TIB_Script;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    
    procedure btnCancelClick(Sender: TObject);
    procedure IB_Script1Statement(Sender: TIB_Script;
      var Statement: String; var SkipIt: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  RestoreFrm: TRestoreFrm;
implementation

uses MainDataMdl, GlobalUnit, md5, DB;

{$R *.dfm}

procedure TRestoreFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TRestoreFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  
end;

procedure TRestoreFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TRestoreFrm.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if OpenDlg.Execute then
    dxButtonEdit1.Text:=OpenDlg.FileName;
end;

procedure TRestoreFrm.btnOKClick(Sender: TObject);
begin
  if dxButtonEdit1.Text='' then
  begin
    ShowMessageUnicode(20);
    dxButtonEdit1.SetFocus;
    Exit;
  end;

  Screen.Cursor:=crHourGlass;
  ProgressBar1.Position:=0;

  IB_Script1.SQL.LoadFromFile(dxButtonEdit1.Text);
  ProgressBar1.Max:= IB_Script1.SQL.Count;
  IB_Script1.Execute;

  ProgressBar1.Position:=0;
  Screen.Cursor:=crDefault;
end;

procedure TRestoreFrm.btnCancelClick(Sender: TObject);
begin
  Screen.Cursor:=crDefault;
  Self.Close;
end;

procedure TRestoreFrm.IB_Script1Statement(Sender: TIB_Script;
  var Statement: String; var SkipIt: Boolean);
begin
  if ProgressBar1.Position<ProgressBar1.Max then
    ProgressBar1.Position:=ProgressBar1.Position+1;
end;

end.
