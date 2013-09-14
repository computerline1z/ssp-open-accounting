unit SaveRestoreDocForm;

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
    loctuthang: TdxLayoutItem;
    loctunam: TdxLayoutItem;
    locdenthang: TdxLayoutItem;
    locdennam: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    locFormItem5: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    tabRestore: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel2: TElPopupButton;
    btnOk2: TElPopupButton;
    spnfromMonth2: TdxSpinEdit;
    spnfromyear2: TdxSpinEdit;
    SpntoMonth2: TdxSpinEdit;
    spntoyear2: TdxSpinEdit;
    chkKeep: TElCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    loctuthang2: TdxLayoutItem;
    loctunam2: TdxLayoutItem;
    locdenthang2: TdxLayoutItem;
    locdennam2: TdxLayoutItem;
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
    procedure btnCancel2Click(Sender: TObject);
  private
    { Private declarations }
    ErrorCount:smallint;
    Memo1: Widestring;

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

  //Application.ProcessMessages

end;

procedure TSaveRestoreDocFrm.btnCancelClick(Sender: TObject);
begin
  self.Close;
end;

procedure TSaveRestoreDocFrm.FormCreate(Sender: TObject);
begin
     memo1 := '';
     ErrorCount := 0;
     Timer2.Enabled := FALSE;
     spnFromMonth.IntValue := MonthOf(now);
     spnToMonth.IntValue := MonthOf(now);
     spnFromYear.IntValue := YearOf(now);
     spnToYear.IntValue := YearOf(now);
     spnfromMonth2.IntValue :=MonthOf(now);
     spnfromyear2.IntValue :=YearOf(now);
     SpntoMonth2.IntValue  :=MonthOf(now);
     spntoyear2.IntValue :=YearOf(now);
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

    if ShowMessageUnicode(253,'',4) =7 then exit;

    Screen.Cursor := crHourGlass;
    qryExe.SQL.Text := 'execute procedure sp_stored_backupdata(:tuky,:denky,:branch_id)';
    qryExe.ParamByName('tuky').Value := FromPeriod;
    qryExe.ParamByName('denky').Value := ToPeriod;
    qryExe.ParamByName('branch_id').Value := vpBranch_id;

    try
      qryExe.ExecSQL;
    except
      ShowMessageUnicode(251, Memo1);
    end;

    ShowMessageUnicode(251);

    Screen.Cursor := crDefault;
    memo1 := '';
end;

procedure TSaveRestoreDocFrm.qryExeError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
  RaiseException:=False;
  qryExe.Tag:=1;
  //ShowMessageUnicode(188,ErrorMessage.Text,0);
  ErrorCount:=ErrorCount+1;
  Memo1 := Memo1 + #13#10 + IntToStr(ErrorCount)+ '////' + ErrorMessage.Text;

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

    if ShowMessageUnicode(189,'',4) =7 then exit;

    Screen.Cursor := crHourGlass;
    qryExe.SQL.Text := 'execute procedure SP_STORED_RESTOREDATA(:tuky,:denky,:KEEP_CURDATA,:branch_id)';
    qryExe.ParamByName('tuky').Value := FromPeriod;
    qryExe.ParamByName('denky').Value := ToPeriod;
    qryExe.ParamByName('branch_id').Value := vpBranch_id;
    if chkKeep.Checked then
      qryExe.ParamByName('KEEP_CURDATA').Value := 1
    else
      qryExe.ParamByName('KEEP_CURDATA').Value := 0;

    try
      qryExe.ExecSQL;
    except
      ShowMessageUnicode(252,Memo1);
    end;

    ShowMessageUnicode(252);

    memo1 := '';

end;

procedure TSaveRestoreDocFrm.btnCancel2Click(Sender: TObject);
begin
    self.Close;
end;

end.
