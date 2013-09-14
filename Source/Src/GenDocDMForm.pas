unit GenDocDMForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels;

type
  TGenDocDMFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxCalcEdit1: TdxCalcEdit;
    locST: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    dxPopupEdit2: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure btnOKClick(Sender: TObject);
    procedure dxCalcEdit1Exit(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure dxCalcEdit1Enter(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Soluong:Double;
  public
    SOPHIEU,MAKHO:WideString;
    GenFromPeriod:Smallint;
    MADOITUONGDU:wideString;
    LOAIDTDU:Smallint;
    { Public declarations }
  end;

var
  GenDocDMFrm: TGenDocDMFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB;

{$R *.dfm}

procedure TGenDocDMFrm.btnOKClick(Sender: TObject);
begin
  MainDM.qryPAcc.Open;
  if dxDBPopupEdit2.Text='' then
  begin
    ShowMessageUnicode(133);
    dxDBPopupEdit2.SetFocus;
    exit;
  end;
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

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_phatsinhtheodm(:SOPHIEU,:KYHT,:MASANPHAM,:SOLUONG,:TKNO,:TKCO,:MADT,:LOAIDT,:MAKHO,:NGUOINHAP,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEU').Value := SOPHIEU;
    ParamByName('KYHT').Value := GenFromPeriod;
    ParamByName('MASANPHAM').Value := MainDM.qryPHHOBJECT_ID.Value;
    ParamByName('SOLUONG').Value := dxCalcEdit1.Text;
    ParamByName('TKNO').Value := dxPopupEdit1.Text;
    ParamByName('TKCO').Value := dxPopupEdit2.Text;
    ParamByName('MADT').Value := MADOITUONGDU;
    ParamByName('LOAIDT').Value := LOAIDTDU;
    ParamByName('MAKHO').Value := MAKHO;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    if prmUseDocumentLog then
      ParamByName('NGUOINHAP').Value := CurrentUser;

    ExecSQL;
    Close;
  end;

  Self.Close;
end;

procedure TGenDocDMFrm.dxCalcEdit1Exit(Sender: TObject);
begin
  if TryStrToFloat(dxCalcEdit1.Text, Soluong) then
    dxCalcEdit1.Text:= FormatFloat(TIENTE_FORMAT,Soluong)
  else
  begin
    ShowMessageUnicode(134);
    dxCalcEdit1.SetFocus;
  end;
end;

procedure TGenDocDMFrm.TntFormCreate(Sender: TObject);
begin
  Soluong:=0;
  MainDM.CurObjTypeID:=2;
  MainDM.qryPAcc.Filtered:=False;

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  
end;

procedure TGenDocDMFrm.dxCalcEdit1Enter(Sender: TObject);
begin
  dxCalcEdit1.Text :=FloatToStr(Soluong);
end;

procedure TGenDocDMFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TGenDocDMFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TGenDocDMFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
