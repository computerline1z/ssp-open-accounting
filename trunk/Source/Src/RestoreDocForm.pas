unit RestoreDocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  ComCtrls, ElXPThemedControl, ElBtnCtl, ElPopBtn, cxControls, ActnList,
  dxLayoutLookAndFeels, ElCaption, IB_Components, ExtCtrls, DB, IBODataset,
  ElCheckCtl;

type
  TRestoreDocFrm = class(TForm)
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
    qryExe: TIBOQuery;
    Timer2: TTimer;
    tsMain: TIB_Transaction;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acExe: TAction;
    chkKeep: TElCheckBox;
    locFormItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure acExeExecute(Sender: TObject);
    procedure qryExeError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RestoreDocFrm: TRestoreDocFrm;

implementation
uses MainDataMdl, GlobalUnit, DateUtils;

{$R *.dfm}

procedure TRestoreDocFrm.FormCreate(Sender: TObject);
begin
    Timer2.Enabled := FALSE;
     spnFromMonth.IntValue := MonthOf(now);
     spnToMonth.IntValue := MonthOf(now);
     spnFromYear.IntValue := YearOf(now);
     spnToYear.IntValue := YearOf(now);
end;

procedure TRestoreDocFrm.acExeExecute(Sender: TObject);
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
      qryExe.ParamByName('KEEP_CURDATA').Value := 1
    else
      qryExe.ParamByName('KEEP_CURDATA').Value := 0;

    qryExe.ExecSQL;

    Screen.Cursor := crDefault;

end;

procedure TRestoreDocFrm.qryExeError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  RaiseException:=False;
  qryExe.Tag:=1;
  ShowMessageUnicode(188,ErrorMessage.Text,0);
  Timer2.Enabled := FALSE;
end;

end.
