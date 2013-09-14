unit ImportWizardSamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxLayoutControl, ElCheckCtl, cxControls, dxLayoutLookAndFeels,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, ExtCtrls, ElPanel, DB, IBODataset,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TImportWizardFrm = class(TForm)
    ElPanel1: TElPanel;
    ElPanel2: TElPanel;
    btnSkip: TElPopupButton;
    btnNext: TElPopupButton;
    btnBack: TElPopupButton;
    btnFinish: TElPopupButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElRadioButton1: TElRadioButton;
    ElRadioButton2: TElRadioButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtHeader: TdxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    edtQty: TdxButtonEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtCredit: TdxButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edtDebit: TdxButtonEdit;
    dxLayoutControl1Group3: TdxLayoutGroup;
    OpenDialog1: TOpenDialog;
    locProgress: TdxLayoutGroup;
    ProgressBar: TProgressBar;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    dxLayoutControl1Item8: TdxLayoutItem;
    grdImport: TdxDBGrid;
    dxLayoutControl1Group4: TdxLayoutGroup;
    qry: TIBOQuery;
    ds: TDataSource;
    qryDOC_ID: TStringField;
    qryDOC_NUM: TSmallintField;
    qryDOC_CODE: TStringField;
    qryCOM_ID: TStringField;
    qryLINK_ID: TStringField;
    qryDEBIT_ACC_ID: TStringField;
    qryCREDIT_ACC_ID: TStringField;
    qryENTRY_VALUE: TIBOFloatField;
    qryENTRY_NOTE: TStringField;
    qryCREDIT_OBJ: TStringField;
    qryCREDIT_DETAIL: TStringField;
    qryCREDIT_DETAIL_1: TStringField;
    qryDEBIT_OBJ: TStringField;
    qryDEBIT_DETAIL: TStringField;
    qryDEBIT_DETAIL_1: TStringField;
    qryDOC_DATE: TDateField;
    qryPERIOD_ID: TSmallintField;
    qrySSP_DEBIT_ACC: TStringField;
    qrySSP_CREDIT_ACC: TStringField;
    grdImportDOC_NUM: TdxDBGridMaskColumn;
    grdImportDEBIT_ACC_ID: TdxDBGridMaskColumn;
    grdImportCREDIT_ACC_ID: TdxDBGridMaskColumn;
    grdImportENTRY_VALUE: TdxDBGridMaskColumn;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxCalcEdit1: TdxCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtHeaderButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edtQtyButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edtDebitButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edtCreditButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btnNextClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure btnSkipClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportWizardFrm: TImportWizardFrm;

implementation
uses globalunit, importSamform,maindatamdl;
{$R *.dfm}

procedure TImportWizardFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
end;

procedure TImportWizardFrm.edtHeaderButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  OpenDialog1:=TOpenDialog.Create(nil);
  OpenDialog1.Filter:='Excel Files|*.xls';
  OpenDialog1.DefaultExt:='xls';

  if not OpenDialog1.Execute then exit;
  edtHeader.Text := OpenDialog1.FileName;
end;

procedure TImportWizardFrm.edtQtyButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
OpenDialog1:=TOpenDialog.Create(nil);
  OpenDialog1.Filter:='Excel Files|*.xls';
  OpenDialog1.DefaultExt:='xls';

  if not OpenDialog1.Execute then exit;
  edtQty.Text := OpenDialog1.FileName;
end;

procedure TImportWizardFrm.edtDebitButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  OpenDialog1:=TOpenDialog.Create(nil);
  OpenDialog1.Filter:='Excel Files|*.xls';
  OpenDialog1.DefaultExt:='xls';

  if not OpenDialog1.Execute then exit;
  edtDebit.Text := OpenDialog1.FileName;
end;

procedure TImportWizardFrm.edtCreditButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  OpenDialog1:=TOpenDialog.Create(nil);
  OpenDialog1.Filter:='Excel Files|*.xls';
  OpenDialog1.DefaultExt:='xls';

  if not OpenDialog1.Execute then exit;
  edtCredit.Text := OpenDialog1.FileName;
end;

procedure TImportWizardFrm.btnNextClick(Sender: TObject);
begin
  locProgress.Caption := 'Reading data from excel files...';
  btnNext.Enabled := FALSE;
  btnFinish.Enabled := FALSE;
  ProgressBar.Position := 0;
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  ImportSamfrm.qryImportList.Locate('ID',1,[]);
  ImportSamfrm.acDeleteMem.Execute;
  ImportSamfrm.ExcelToMem(self,edtHeader.Text);
  ImportSamfrm.acDeleteCurrentData.Execute;
  ImportSamfrm.acMemToDatabase.Execute;
  ImportSamfrm.qryImportList.Next;
  ProgressBar.stepit;

  ImportSamfrm.acDeleteMem.Execute;
  ImportSamfrm.ExcelToMem(self,edtQty.Text);
  ImportSamfrm.acDeleteCurrentData.Execute;
  ImportSamfrm.acMemToDatabase.Execute;
  ImportSamfrm.qryImportList.Next;
  ProgressBar.stepit;

  ImportSamfrm.acDeleteMem.Execute;
  ImportSamfrm.ExcelToMem(self,edtDebit.Text);
  ImportSamfrm.acDeleteCurrentData.Execute;
  ImportSamfrm.acMemToDatabase.Execute;
  ImportSamfrm.qryImportList.Next;
  ProgressBar.stepit;

  ImportSamfrm.acDeleteMem.Execute;
  ImportSamfrm.ExcelToMem(self,edtCredit.Text);
  ImportSamfrm.acDeleteCurrentData.Execute;
  ImportSamfrm.acMemToDatabase.Execute;
  ProgressBar.Position := ProgressBar.Max;
  btnFinish.Enabled := TRUE;
  btnNext.Enabled := True;
  Screen.Cursor := crDefault;
  locProgress.Caption := 'Finish reading data from excel files!';
  Application.ProcessMessages;
end;

procedure TImportWizardFrm.btnFinishClick(Sender: TObject);
begin

  if (StrToFloat(dxCalcEdit1.Text) <= 0) or (strtofloat(dxCalcEdit1.Text) = 1)  then
    exit;
  btnNext.Enabled := FALSE;
  btnSkip.Enabled := FALSE;
  locProgress.Caption := 'Importing to Samudera database ...';
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  qry.ParamByName('BRANCH_ID').Value := vpBranch_id;
  qry.ParamByName('RATE').Value := dxCalcEdit1.Text;
  qry.Open;
  qry.Close;

  Screen.Cursor := crDefault;

  locProgress.Caption := 'Finish importing to Samudera database.';
  Application.ProcessMessages;
  btnNext.Enabled := TRUE;
  btnSkip.Enabled := TRUE;
end;

procedure TImportWizardFrm.btnSkipClick(Sender: TObject);
begin
  self.close;
end;

end.
