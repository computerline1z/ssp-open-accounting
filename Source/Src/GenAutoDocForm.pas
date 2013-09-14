unit GenAutoDocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,Registry,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels;

type
  TGenAutoDocFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxPopupEdit3: TdxPopupEdit;
    locThu: TdxLayoutItem;
    dxPopupEdit4: TdxPopupEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    locChi: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure btnOKClick(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ThuHayChi:Smallint;
    FromDocID:WideString;
    FromPeriodID:Smallint;
    { Public declarations }
  end;

var
  GenAutoDocFrm: TGenAutoDocFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions, DB;

{$R *.dfm}

procedure TGenAutoDocFrm.btnOKClick(Sender: TObject);
var
  Sophieu:WideString;
  SaveDocType:Smallint;
begin
  MainDM.qryPAcc.Open;
  if dxPopupEdit4.Text='' then
  begin
    ShowMessageUnicode(183);
    dxPopupEdit4.SetFocus;
    exit;
  end;

  if ThuHayChi=1 then
  begin
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
  end
  else
  begin
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
  end;

  SaveDocType:=MainDM.qryDocTypeDOCTYPE_ID.AsInteger;

  MainDM.qryDocType.Locate('DOCTYPE_ID',MainDM.qryPDocTypeDOCTYPE_ID.AsInteger,[]);
  SOPHIEU:=MainDM.Phatsinhsophieu;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_GEN_AUTODOC(:THUHAYCHI,:FROMDOCID,:FROMPERIODID,:TODOCID,:TODOCTYPE,:TODOCDATE,:SHTK,:BRANCH_ID)';
    Prepare;

    ParamByName('THUHAYCHI').Value := ThuHayChi;
    ParamByName('FROMDOCID').Value := FromDocID;
    ParamByName('FROMPERIODID').Value := FromPeriodID;
    ParamByName('TODOCID').Value := Sophieu;
    ParamByName('TODOCTYPE').Value := MainDM.qryPDocTypeDOCTYPE_ID.Value;
    ParamByName('TODOCDATE').Value := WorkingDate;
    ParamByName('BRANCH_ID').Value := vpBranch_id; 
    if ThuHayChi=1 then
      ParamByName('SHTK').Value := dxPopupEdit3.Text
    else
      ParamByName('SHTK').Value := dxPopupEdit1.Text;

    ExecSQL;
    Close;
  end;

  ModalResult:=mrOk;
  MainDM.Suachungtu(Sophieu,FromPeriodID,vpBranch_id);

  MainDM.qryDocType.Locate('DOCTYPE_ID',SaveDocType,[]);
end;

procedure TGenAutoDocFrm.TntFormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption', False) then
    begin
      dxPopupEdit3.Text := reg.ReadString('TKTHUCHI');
      dxPopupEdit1.Text :=dxPopupEdit3.Text;
    end;
  except
    Reg.Free;
  end;
end;

procedure TGenAutoDocFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TGenAutoDocFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TGenAutoDocFrm.dxPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
end;

procedure TGenAutoDocFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption', False) then
    begin
      if ThuHayChi=1 then
        Reg.WriteString('TKTHUCHI',dxPopupEdit3.Text)
      else
        Reg.WriteString('TKTHUCHI',dxPopupEdit1.Text);
    end;
  except
    Reg.Free;
  end;   
end;

procedure TGenAutoDocFrm.FormShow(Sender: TObject);
begin
  MainDM.qryPDocType.Open;
  if (ThuHayChi=1) then
    MainDM.qryPDocType.Locate('DOCTYPE_ID',110,[])
  else
    MainDM.qryPDocType.Locate('DOCTYPE_ID',120,[]);

  dxPopupEdit4.Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;

  with MainDM do
  begin
    FilterAccType := 15;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
  
  locThu.Visible:=(ThuHayChi=1);
  locChi.Visible:=Not locThu.Visible;

  ElFormCaption1.Texts[0].Visible:=locThu.Visible;
  ElFormCaption1.Texts[1].Visible:=locChi.Visible;
  SetVisible(Self);
end;

end.
