unit SaveDocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, IB_Process, IB_Script,
  IB_Components, dxLayoutLookAndFeels, ElCaption, dxLayoutControl,
  ComCtrls, ElXPThemedControl, ElBtnCtl, ElPopBtn, cxControls, DB,
  IBODataset, ExtCtrls, ActnList, ElPgCtl, ElCheckCtl;

type
  TSaveRestoreDocFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    tsMain: TIB_Transaction;
    qryExe: TIBOQuery;
    Timer2: TTimer;
    ActionList1: TActionList;
    acExe1: TAction;
    Pgc1: TElPageControl;
    tabSave: TElTabSheet;
    locForm: TdxLayoutControl;
    btnCancel: TElPopupButton;
    btnOK: TElPopupButton;
    spnFromMonth: TdxSpinEdit;
    spnFromYear: TdxSpinEdit;
    spnToMonth: TdxSpinEdit;
    spnToYear: TdxSpinEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    locFormItem5: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    tabRestore: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel2: TElPopupButton;
    btnOk2: TElPopupButton;
    dxSpinEdit1: TdxSpinEdit;
    dxSpinEdit2: TdxSpinEdit;
    dxSpinEdit3: TdxSpinEdit;
    dxSpinEdit4: TdxSpinEdit;
    chkKeep: TElCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    locFormItem1: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    acExe2: TAction;
    procedure Timer2Timer(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acExe1Execute(Sender: TObject);
    procedure qryExeError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure acExe2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaveRestoreDocFrm: TSaveRestoreDocFrm;

implementation
uses MainDataMdl, GlobalUnit, DateUtils;
{$R *.dfm}

procedure TSaveRestoreDocFrm.Timer2Timer(Sender: TObject);
begin
  ProgressBar1.StepIt;
  Application.ProcessMessages

end;

procedure TSaveRestoreDocFrm.btnCancelClick(Sender: TObject);
begin
self.Close;
end;

procedure TSaveRestoreDocFrm.FormCreate(Sender: TObject);
begin
     Timer2.Enabled := FALSE;
     spnFromMonth.IntValue := MonthOf(now);
     spnToMonth.IntValue := MonthOf(now);
     spnFromYear.IntValue := YearOf(now);
     spnToYear.IntValue := YearOf(now);
end;

procedure TSaveRestoreDocFrm.acExe1Execute(Sender: TObject);
var FromPeriod, ToPeriod : Smallint;
begin

    FromPeriod := spnFromMonth.IntValue + spnFromYear.IntValue*12;
    ToPeriod := spnToMonth.IntValue + spnToYear.IntValue*12;

    if FromPeriod < BeginPeriod then
    begin
      ShowMessageUnicode(184);
      exit;
    end;
    if FromPeriod > ToPeriod then
    begin
      hintbox(108,self,spnToMonth);
      Exit;
    end;

    if not ShowMessageUnicode(189,'',4) =7 then exit;

    Timer2.Enabled := true;

    Screen.Cursor := crHourGlass;
    qryExe.SQL.Text := 'execute procedure sp_stored_backupdata(:tuky,:denky,:branch_id)';
    qryExe.ParamByName('tuky').Value := FromPeriod;
    qryExe.ParamByName('denky').Value := ToPeriod;
    qryExe.ParamByName('branch_id').Value := vpBranch_id;
      qryExe.ExecSQL;


    Screen.Cursor := crDefault;
    Timer2.Enabled := FALSE;
    //ShowMessageUnicode()
end;

procedure TSaveRestoreDocFrm.qryExeError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
  RaiseException:=False;
  qryExe.Tag:=1;
  ShowMessageUnicode(188,ErrorMessage.Text,0);
  Timer2.Enabled := FALSE;
end;

procedure TSaveRestoreDocFrm.acExe2Execute(Sender: TObject);
var FromPeriod,ToPeriod: smallint;
begin
    FromPeriod := spnFromMonth.IntValue + spnFromYear.IntValue*12;
    ToPeriod := spnToMonth.IntValue + spnToYear.IntValue*12;

    if FromPeriod < BeginPeriod then
    begin
      ShowMessageUnicode(184);
      exit;
    end;
    if FromPeriod > ToPeriod then
    begin
      hintbox(108,self,spnToMonth);
      Exit;
    end;

    if not ShowMessageUnicode(189,'',4) =7 then exit;

    Timer2.Enabled := true;


    Screen.Cursor := crHourGlass;
    qryExe.SQL.Text := 'execute procedure SP_STORED_RESTOREDATA(:tuky,:denky,:KEEP_CURDATA,:branch_id)';
    qryExe.ParamByName('tuky').Value := FromPeriod;
    qryExe.ParamByName('denky').Value := ToPeriod;
    qryExe.ParamByName('branch_id').Value := vpBranch_id;
    if chkKeep.Checked then
      qryExe.ParamByName('KEEP_CURDATA').Value := 1;
    else
      qryExe.ParamByName('KEEP_CURDATA').Value := 0;

    qryExe.ExecSQL;

    Screen.Cursor := crDefault;


end;

end.
