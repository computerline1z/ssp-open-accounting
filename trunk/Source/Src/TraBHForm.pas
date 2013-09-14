unit TraBHForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels;

type
  TTraBHFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxPopupEdit2: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxPopupEdit4: TdxPopupEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxPopupEdit3: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPopupEdit5: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxPopupEdit6: TdxPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    pedtMADTTIEN: TdxPopupEdit;
    procedure btnOKClick(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure pedtMADTTIENCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtMADTTIENEnter(Sender: TObject);
  private
    { Private declarations }
  public
    MANCC,SOPHIEU:WideString;
    NGAYLAP :TDate;
    KYHT:Smallint;
  end;

var
  TraBHFrm: TTraBHFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB;

{$R *.dfm}

procedure TTraBHFrm.btnOKClick(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  if dxPopupEdit2.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit2.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit2.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit2.SetFocus;
    exit;
  end;
  if dxPopupEdit6.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit6.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit6.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit6.SetFocus;
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
  if dxPopupEdit3.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit3.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit3.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit3.SetFocus;
    exit;
  end;
  if dxPopupEdit5.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit5.SetFocus;
    exit;
  end;
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit5.Text,[]) then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit5.SetFocus;
    exit;
  end;


  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_TRATIENBH(:SOPHIEU,:NGAYLAP,:KYHT,:MANCC,:TKPTRA,:TKPT,:TKTMAT,:MADTTIEN,:TKDTHH, :TKTHUE,:TKTHUENT)';
    Prepare;

    ParamByName('SOPHIEU').Value := SOPHIEU;
    ParamByName('NGAYLAP').AsDate := NGAYLAP;
    ParamByName('KYHT').Value := KYHT;
    ParamByName('MANCC').Value := MANCC;
    ParamByName('TKPTRA').Value := dxPopupEdit2.Text;
    ParamByName('TKPT').Value := dxPopupEdit6.Text;
    ParamByName('TKTMAT').Value := dxPopupEdit4.Text;
    ParamByName('MADTTIEN').Value := pedtMADTTIEN.Text;
    ParamByName('TKDTHH').Value := dxPopupEdit3.Text;
    ParamByName('TKTHUE').Value := dxPopupEdit5.Text;
    ParamByName('TKTHUENT').Value := dxPopupEdit1.Text;

    ExecSQL;
    Close;
  end;        

  ModalResult:=mrOk;
end;

procedure TTraBHFrm.TntFormCreate(Sender: TObject);
begin
  MainDM.qryPAcc.Filtered:=False;
  MainDM.qryAccOpt.Open;
  MainDM.qryAccOpt.Locate('OPTION_ID',7,[]);
  dxPopupEdit2.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',14,[]);
  dxPopupEdit6.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',8,[]);
  dxPopupEdit3.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',10,[]);
  dxPopupEdit5.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',11,[]);
  dxPopupEdit4.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Locate('OPTION_ID',13,[]);
  dxPopupEdit1.Text :=MainDM.qryAccOptACCOUNT_ID.Value;
  MainDM.qryAccOpt.Close;
end;

procedure TTraBHFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TTraBHFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTraBHFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TTraBHFrm.pedtMADTTIENCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TTraBHFrm.pedtMADTTIENEnter(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  if MainDM.qryPAccACCOUNT_ID.Value<>dxPopupEdit4.Text then
  if Not MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit4.Text,[]) then
  begin
    dxPopupEdit4.SetFocus;
    Exit;
  end;
  MainDM.CurObjTypeID:=MainDM.qryPAccOTYPE_ID.AsInteger;
end;

end.
