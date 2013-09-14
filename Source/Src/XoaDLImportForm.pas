unit XoaDLImportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,Registry,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxDBELib, dxLayoutLookAndFeels, DB, IBODataset, DateUtils, dxLayout; 
type
  TXoaDLImportFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Item1: TdxLayoutItem;
    spnFromMonth: TdxSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    spnFromYear: TdxSpinEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    qry_xoadldem: TIBOQuery;
    qry_xoadldemKYHT: TSmallintField;
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
    procedure qry_xoadldemError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    { Private declarations }
  public
    ThuHayChi:Smallint;
    FromDocID:WideString;
    FromPeriodID:Smallint;
    { Public declarations }
  end;

var
  XoaDLImportFrm: TXoaDLImportFrm;
  ErrorCount:Integer;
implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,
  Functions,//, DB;
  SheetData, StrUtils, importwizardsamform, DMInterface,
  MainForm, GlobalInterface, LookupFrm;

{$R *.dfm}

procedure TXoaDLImportFrm.btnOKClick(Sender: TObject);
var
  ngaythang: Tdate;
  kyht:Smallint;
begin
  ErrorCount:=0;
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Clear;
  MainDM.qryCommon.Params.Clear;
  MainDM.qryCommon.SQL.Text := 'delete from documents doc where doc.period_id = :kyht and doc.is_ghd_import = 1;';
  MainDM.qryCommon.ParamByName('kyht').Value := spnFromYear.IntValue*12+spnFromMonth.IntValue;
  MainDM.qryCommon.ExecSQL;
  MainDM.qryCommon.Close;

  qry_xoadldem.Close;
  qry_xoadldem.Params.Clear;
  qry_xoadldem.ExecSQL;
  qry_xoadldem.Close;

  MainDM.qryDocList.DisableControls;
  MainDM.qryDocList.Refresh;
  MainDM.qryDocList.EnableControls;
  if ErrorCount=0 then
    ShowMessageUnicode(265)
  else
    ShowMessageUniText(GetMessage(266) + IntToStr(ErrorCount));
  end;

procedure TXoaDLImportFrm.TntFormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
  //Hoaipt them 20091103
  spnFromMonth.IntValue := MonthOf(WorkingDate);
  spnFromYear.IntValue := YearOf(WorkingDate);
  {Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(RMAIN_KEY + '\ProgramOption', False) then
    begin
      dxPopupEdit3.Text := reg.ReadString('TKTHUCHI');
      dxPopupEdit1.Text :=dxPopupEdit3.Text;
    end;
  except
    Reg.Free;
  end; }
end;

procedure TXoaDLImportFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TXoaDLImportFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TXoaDLImportFrm.dxPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Text := MainDM.qryPDocTypeDOCTYPE_NAME.Value;
end;

procedure TXoaDLImportFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg: TRegistry;
begin
 { Reg := TRegistry.Create;
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
  end;}
end;

procedure TXoaDLImportFrm.FormShow(Sender: TObject);
begin
 { MainDM.qryPDocType.Open;
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
  ElFormCaption1.Texts[1].Visible:=locChi.Visible;  }
  SetVisible(Self);
end;

procedure TXoaDLImportFrm.qry_xoadldemError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  RaiseException:=False;
  ErrorCount:=ErrorCount+1;
end;

end.
