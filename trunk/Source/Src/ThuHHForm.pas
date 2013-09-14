unit ThuHHForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels;

type
  TThuHHFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxPopupEdit4: TdxPopupEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    locTKPTTienHH: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    MANCC,SOPHIEU:WideString;
    KYHT:Smallint;
  end;

var
  ThuHHFrm: TThuHHFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB;

{$R *.dfm}

procedure TThuHHFrm.btnOKClick(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  if dxPopupEdit1.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit1.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit1.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit1.SetFocus;
    exit;
  end;

  if dxPopupEdit4.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit4.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit4.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit4.SetFocus;
    exit;
  end;          

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_THUTIENHH(:SOPHIEU,:KYHT,:MANCC,:TKTMAT,:TKPTHH)';
    Prepare;

    ParamByName('SOPHIEU').Value := SOPHIEU;
    ParamByName('KYHT').Value := KYHT;
    ParamByName('MANCC').Value := MANCC;
    ParamByName('TKTMAT').Value := dxPopupEdit4.Text;
    ParamByName('TKPTHH').Value := dxPopupEdit1.Text;

    ExecSQL;
    Close;
  end;        

  ModalResult:=mrOk;
end;

procedure TThuHHFrm.TntFormCreate(Sender: TObject);
begin
  MainDM.qryPAcc.Filtered:=False;
  MainDM.qryAccOpt.Open;
  MainDM.qryAccOpt.Locate('OPTION_ID',9,[]);
  dxPopupEdit1.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',11,[]);
  dxPopupEdit4.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Close;
end;

procedure TThuHHFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TThuHHFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

end.
