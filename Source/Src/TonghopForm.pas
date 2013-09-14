unit TonghopForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,DateUtils, 
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, ComCtrls, TntButtons,
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn, ElCheckCtl,
  Menus, TntMenus, ElCLabel, ElLabel, dxExGrEd, dxExELib, dxLayout;

type
  TTonghopFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnThuchien: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    chkKHTSCD: TdxCheckEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkKCSoduTK: TdxCheckEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    chkKCSoduHH: TdxCheckEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    chkKCSoduKH: TdxCheckEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    chkKCthongtinGB: TdxCheckEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    chkExeKetchuyen: TdxCheckEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    ProgressBar1: TProgressBar;
    locProgress: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ActionList1: TActionList;
    acKhauhaoTSCD: TAction;
    acAutoEntry: TAction;
    acKCsoduTK: TAction;
    acKCSoduKH: TAction;
    acKCSoduHH: TAction;
    acKCGiaban: TAction;
    acTranferInfo: TAction;
    acAllocateInfo: TAction;
    chkLockData: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    acLockData: TAction;
    acKCCongnoDT: TAction;
    chkDCGBQCK: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    acDCGBQCK: TAction;
    ElFormCaption1: TElFormCaption;
    chkPBHangChothue: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    chkPBHangKho: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    acPBCPCCDC: TAction;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    rbAdjustOther: TElRadioButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    rbAdjustSelf: TElRadioButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    acKCDT_BH: TAction;
    acCapnhatCTGS: TAction;
    chkCLTygia: TdxCheckEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    acCLTygia: TAction;
    chkKCHeSo: TdxCheckEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    acKCSoduHHFIFO: TAction;
    locTuthang: TdxLayoutItem;
    spnFromMonth: TdxSpinEdit;
    locTunam: TdxLayoutItem;
    spnFromYear: TdxSpinEdit;
    locDenthang: TdxLayoutItem;
    spnToMonth: TdxSpinEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    lblTo: TElLabel;
    locDennam: TdxLayoutItem;
    spnToYear: TdxSpinEdit;
    locKyKy: TdxLayoutGroup;
    dxLayoutControl1Item24: TdxLayoutItem;
    lblFrom: TElLabel;
    loclblStatus: TdxLayoutItem;
    lblStatus: TElLabel;
    dxLayoutControl1Item25: TdxLayoutItem;
    chkKCKYKY: TdxCheckEdit;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    chkPBTKTT: TdxCheckEdit;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    dxLayoutLookAndFeelListGobal: TdxLayoutLookAndFeelList;
    lfActiveX: TdxLayoutWebLookAndFeel;
    StyleWeb: TdxLayoutWebLookAndFeel;
    StyleDetrong: TdxLayoutWebLookAndFeel;
    StyleStandard: TdxLayoutStandardLookAndFeel;
    StylePhang: TdxLayoutWebLookAndFeel;
    StyleMacDinh: TdxLayoutWebLookAndFeel;
    acPBTKTT: TAction;
    procedure acKhauhaoTSCDExecute(Sender: TObject);
    procedure acAutoEntryExecute(Sender: TObject);
    procedure acKCsoduTKExecute(Sender: TObject);
    procedure acKCSoduKHExecute(Sender: TObject);
    procedure acKCSoduHHExecute(Sender: TObject);
    procedure btnThuchienClick(Sender: TObject);
    procedure acKCGiabanExecute(Sender: TObject);
    procedure acTranferInfoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxLayoutControl1Item8CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item11CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item12CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item9CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item10CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item13CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item20CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item21CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item22CaptionClick(Sender: TObject);
    procedure dxLayoutControl1Item1CaptionClick(Sender: TObject);
    procedure acLockDataExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure acDCGBQCKExecute(Sender: TObject);
    procedure acAllocateInfoExecute(Sender: TObject);
    procedure acPBCPCCDCExecute(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    //procedure acKCDT_BHExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCapnhatCTGSExecute(Sender: TObject);
    procedure acCLTygiaExecute(Sender: TObject);
    procedure acKCSoduHHFIFOExecute(Sender: TObject);
    procedure chkKCKYKYClick(Sender: TObject);
    procedure acPBTKTTExecute(Sender: TObject);
  private
    DaTinhKC, DaTinhPB:Boolean;
    FromPeriod, ToPeriod : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TonghopFrm: TTonghopFrm;

implementation

uses MainDataMdl, IBODataset, DMInterface,
  GlobalUnit, MainForm, DocListForm, RegTransferForm, RegAllocateForm,htmlhlp;
  //BatchInPeriodForm;

{$R *.dfm}

procedure TTonghopFrm.acKhauhaoTSCDExecute(Sender: TObject);
begin
  if chkKHTSCD.ReadOnly then exit;
  
  with MainDM.qryCommon do
  begin
    Close;       
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_TRICHKHAUHAO(:KYHT, :NGAYLAP,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate :=  WorkingDate;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id;

    ExecSQL;
    Close;
  end;
  chkKHTSCD.Font.Color := clRed;
  //chkKHTSCD.ReadOnly :=True; Thinh sua, dem ra ngoai btnThuchienClick
end;

procedure TTonghopFrm.acAutoEntryExecute(Sender: TObject);
begin

  if chkExeKetchuyen.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_kc_buttoantudong(:KYHT, :NGAYLAP,:NGUOILAP, :KCHESO,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    if chkKCHeSo.Checked then
      ParamByName('KCHESO').Value := 1
    else
      ParamByName('KCHESO').Value := 0;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  chkExeKetchuyen.Font.Color := clRed;
  if chkKCHeSo.Checked then chkKCHeSo.font.color := clRed;
  // chkExeKetchuyen.ReadOnly:=True; Thinh sua, dem ra ngoai btnThuchienClick
end;

procedure TTonghopFrm.acKCsoduTKExecute(Sender: TObject);
begin
  if chkKCSoduTK.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_TK(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;    
    ExecSQL;
    Close;
  end;
  //chkKCSoduTK.ReadOnly:=True; Thinh sua
  chkKCSoduTK.Font.Color := clRed;
end;

procedure TTonghopFrm.acKCSoduKHExecute(Sender: TObject);
begin
  if chkKCSoduKH.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_OBJ(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  chkKCSoduKH.Font.Color := clRed;
  //chkKCSoduKH.ReadOnly:=True; Thinh sua
end;

procedure TTonghopFrm.acKCSoduHHExecute(Sender: TObject);
begin
  if chkKCSoduHH.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_HH(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  chkKCSoduHH.Font.Color := clRed;
  //chkKCSoduHH.ReadOnly := True;
end;

procedure TTonghopFrm.btnThuchienClick(Sender: TObject);
var
  Loop_Period,Tmp_CurPeriod : Integer;
  Tmp_WorkingDate : TDateTime;
  Tmp_Branch,Branch_Name : widestring;
  month_change :String;
  cYear, cMonth :smallint;
begin

    FromPeriod := spnFromMonth.IntValue+spnFromYear.IntValue*12;
    ToPeriod := spnToMonth.IntValue+spnToYear.IntValue*12;

  if chkKCKYKY.Checked then

    if  (FromPeriod > ToPeriod)
    then
    begin
      ShowMessageUnicode(108);
      exit;
  end;


  if ShowMessageUnicode(129,'', 4)=7 then
    exit;

  if LockingData then
  begin
    if SSPUserRight[11].ER = False then
    begin
      ShowMessageUnicode(130);
      Abort;
      exit;
    end;

    if ShowMessageUnicode(116,'', 4)=6 then
      MainDM.acUnlockData.Execute
    else
      exit;
  end
  else
    if SSPUserRight[13].IR=false then
    begin
      ShowMessageUnicode(131);
      exit;
    end;

  //Thinh - Thong bao co thay doi du lieu
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'Select period_id,is_changed from system_log where period_id < :kyht and is_changed = 1 and is_changed is not null';
  maindm.qryCommon.ParamByName('kyht').Value := FromPeriod;
  maindm.qryCommon.open;

  while not maindm.qryCommon.eof do
  begin
      month_change := month_change + MainDm.PeriodToString(MainDM.qryCommon.fieldbyname('period_id').value) + '; ';
      maindm.qryCommon.next;
  end;
  if maindm.qryCommon.RecordCount <> 0 then
      if ShowMessageUnicode(240,month_change,4) = 7 then exit;

  //Thinh sua KC tu ky toi ky ------------------------
  //Luu lai Current period
  Tmp_CurPeriod := CurrentPeriod;
  Tmp_WorkingDate := WorkingDate;

  Tmp_Branch := vpBranch_id;

  ////Ket chuyen nhieu don vi
  vpBranch_Filter_Type := 1; // filter is min
  Maindm.qryBranch.OnFilterRecord := Maindm.qryBranchFilterRecord;
  Maindm.qryBranch.Filtered := TRUE;
  Maindm.qryBranch.first;

  while ((not Maindm.qryBranch.Eof) and (Maindm.qryBranchISMIN.AsInteger = 1)) do
  begin
    if (copy(Maindm.qryBranchBRANCH_ID.Value,1,Length(Tmp_Branch)) = Tmp_Branch ) then
    begin //Ket chuyen nhieu don vi

      vpBranch_id := Maindm.qryBranchBRANCH_ID.Value;

      for Loop_Period := FromPeriod to ToPeriod do
      begin

         cYear := Loop_Period div 12;
         cMonth := Loop_Period - (cYear * 12);
         if cMonth = 0 then
         begin
            cYear := cYear - 1;
            cMonth := 12;
         end;
         WorkingDate := EndOfAMonth(cYear,  cMonth);


    chkPBTKTT.Font.Color := clBlack;
    chkKCHeSo.font.color := clBlack;
    chkKHTSCD.Font.Color := clblack;
    chkExeKetchuyen.Font.Color := clBlack;
    chkKCthongtinGB.Font.Color := clblack;
    chkLockData.Font.Color := clblack;
    chkDCGBQCK.Font.Color := clblack;
    chkKCSoduHH.Font.Color := clBlack;
    chkKCSoduKH.Font.Color := clBlack;
    chkKCSoduTK.Font.Color := clBlack;
    chkCLTygia.Font.Color := clBlack;

    if CurLanguage = 2 then
      loclblStatus.Caption :=UTF8Decode('Transfering data of month ' + IntToStr(MonthOf(WorkingDate)) + ', Branch: ' + maindm.qryBranchSHORTNAME.Value)
    else
      loclblStatus.Caption :=UTF8Decode(('Đang kết chuyển dữ liệu tháng ') + IntToStr(MonthOf(WorkingDate))
                             + ', đơn vị : ' + maindm.qryBranchSHORTNAME.Value );

    CurrentPeriod  := Loop_Period;

    locProgress.Visible:=True;
    btnThuchien.Enabled:=False;
    Screen.Cursor :=crHourGlass;

    Application.ProcessMessages;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    acPBCPCCDC.Execute;


    ProgressBar1.StepIt;             
    Application.ProcessMessages;
    if chkDCGBQCK.Checked then
      acDCGBQCK.Execute;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkPBTKTT.Checked then
      acPBTKTT.Execute;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkKHTSCD.Checked then
      acKhauhaoTSCD.Execute;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkCLTygia.Checked then
      acCLTygia.Execute;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkExeKetchuyen.Checked then
      acAutoEntry.Execute;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkKCSoduTK.Checked then
      acKCsoduTK.Execute;
    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if  chkKCSoduHH.Checked then
      acKCSoduHH.Execute;

    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkKCSoduKH.Checked then
      acKCSoduKH.Execute;
    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkKCthongtinGB.Checked then
      acKCGiaban.Execute;
    ProgressBar1.StepIt;
    Application.ProcessMessages;
    if chkLockData.Checked then
      acLockData.Execute;
    ProgressBar1.StepIt;
    Application.ProcessMessages;
    ProgressBar1.Position:=0;

    Application.ProcessMessages;

    maindm.qryCommon.SQL.Clear;
    maindm.qryCommon.Params.Clear;
    maindm.qryCommon.SQL.Text := 'update system_log set is_changed = 0 where period_id =:period_id';
    maindm.qryCommon.ParamByName('period_id').Value := CurrentPeriod;
    maindm.qryCommon.ExecSQL;


      end;//Ket thuc xu ly FOR KC Ky - ky
      Branch_Name := MainDM.qryBranchSHORTNAME.Value + '; ' + Branch_Name;
    end; // End if
    Maindm.qryBranch.Next;
  end; //end while


  vpBranch_id := Tmp_Branch;
  Maindm.qryBranch.Filtered := FALSE;

  //locProgress2.Visible := False;
  loclblStatus.Caption :=UTF8Decode('Đã kết chuyển xong');
  workingdate := Tmp_WorkingDate;
  CurrentPeriod := Tmp_CurPeriod;

  {chkKHTSCD.ReadOnly :=True; // Function Thuc hien
  chkExeKetchuyen.ReadOnly:=True; // Function Thuc hien
  chkKCthongtinGB.ReadOnly := True; // Function Thuc hien
  chkLockData.ReadOnly := True; // Function Thuc hien
  chkDCGBQCK.ReadOnly :=True; // Function Thuc hien
  chkCLTygia.ReadOnly := True;// Function Thuc hien
  chkKCSoduHH.ReadOnly := True; // Function Thuc hien
  chkKCSoduKH.ReadOnly:=True;// Function Thuc hien
  chkKCSoduTK.ReadOnly:=True;// Function Thuc hien}
 //Thinh --------------------------------

  btnThuchien.Enabled:=True;
  Screen.Cursor :=crDefault;
  locProgress.Visible:=False;

  acCapnhatCTGS.Execute;
end;

procedure TTonghopFrm.acKCGiabanExecute(Sender: TObject);
begin
  if chkKCthongtinGB.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_GIAMUAGIABAN(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  chkKCthongtinGB.Font.Color := clRed;
  //chkKCthongtinGB.ReadOnly := True; Thinh sua
end;

procedure TTonghopFrm.acTranferInfoExecute(Sender: TObject);
begin
  with TRegTransferFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TTonghopFrm.FormCreate(Sender: TObject);

begin
  SetCaption(Self);
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  DaTinhKC:=false;
  DaTinhPB:=false;
  btnThuchien.Enabled := SSPUserRight[13].IR;

  chkDCGBQCK.Checked := (prmPPXUATKHO=1);
  rbAdjustOther.Enabled:= prmPPXUATKHO<2;

  //Thinh them theo y/c khach hang 200606
  spnFromMonth.IntValue :=CurMonth;
  spnFromYear.IntValue := CurYear;
  spnToMonth.IntValue :=CurMonth;
  spnToYear.IntValue := CurYear;
  ElFormCaption1.Texts[1].Caption := vpBranch_Name; //MainDM.qryBranchSHORTNAME.Value;
  //-------------------------------------


end;

procedure TTonghopFrm.dxLayoutControl1Item8CaptionClick(Sender: TObject);
begin
  MainFrm.acAccountArise.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item11CaptionClick(Sender: TObject);
begin
  MainFrm.acDetailArise.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item12CaptionClick(Sender: TObject);
begin
  MainFrm.acDetailArise.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item9CaptionClick(Sender: TObject);
begin
  MainFrm.acInOut.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item10CaptionClick(Sender: TObject);
begin
  MainFrm.acDetailArise.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item13CaptionClick(Sender: TObject);
begin
  MainFrm.acDetailArise.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item20CaptionClick(Sender: TObject);
begin
  MainFrm.acSalePrice.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item21CaptionClick(Sender: TObject);
begin
  acTranferInfo.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item22CaptionClick(Sender: TObject);
begin
  acAllocateInfo.Execute;
end;

procedure TTonghopFrm.dxLayoutControl1Item1CaptionClick(Sender: TObject);
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text:= sqlSelectDocList + ' where DOC_ID starting with ''sysPBKH''';
    qryDocListAnyWhere.ParamByName('tuky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('denky').AsInteger:=CurrentPeriod;
    qryDocListAnyWhere.ParamByName('BRANCH_ID').Value := vpBranch_id;

    qryDocListAnyWhere.Open;

    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;

    if qryDocListAnyWhere.RecordCount=1 then
    begin
      Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
                        qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);

      qryDocListAnyWhere.Close;
      exit;
    end;
  end;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
end;

procedure TTonghopFrm.acLockDataExecute(Sender: TObject);
begin
  if chkLockData.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_khoaso(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  MainDM.qrySysLog.Close;
  MainDM.qrySysLog.Open;
  chkLockData.Font.Color := clRed;
  //chkLockData.ReadOnly := True;
  LockingData := True;
  MainFrm.BarStaticStatus.Caption :=UTF8Decode('Khóa sổ');
end;

procedure TTonghopFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Tonghopsolieu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
  //Application.HelpContext(31);
end;

procedure TTonghopFrm.acDCGBQCKExecute(Sender: TObject);
begin
   if chkDCGBQCK.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_OUT(:KYHT,'''',:NGUOILAP,:BRANCH_ID)';
    Prepare;
    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;

    SQL.Clear;
    Params.Clear;

    if rbAdjustSelf.Checked then
    begin
      SQL.Text :='execute procedure SP_DGBQ_CUOIKY(:KYHT,:NGUOILAP,:BRANCH_ID)';
      Prepare;
    end
    else
    begin
      SQL.Text :='execute procedure SP_DC_DGBQCK(:KYHT,:NGAYLAP,:NGUOILAP,:BRANCH_ID)';
      Prepare;
      ParamByName('NGAYLAP').Value := WorkingDate;
    end;
        
    ParamByName('KYHT').Value := CurrentPeriod;
    //ParamByName('NGAYLAP').Value := WorkingDate;
    ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
    //end;

  end;
  chkDCGBQCK.Font.Color := clRed;
  //chkDCGBQCK.ReadOnly :=True;
end;

procedure TTonghopFrm.acAllocateInfoExecute(Sender: TObject);
begin
  with TRegAllocateFrm.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TTonghopFrm.acPBCPCCDCExecute(Sender: TObject);
begin
  if ((chkPBHangChothue.Checked) or (chkPBHangKho.Checked)) then
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_PBCPCCDC(:KYHT,:NGAYLAP,:THUOCTINH,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    
    if (chkPBHangChothue.Checked) and (chkPBHangKho.Checked) then
      ParamByName('THUOCTINH').AsInteger := 2
    else if (chkPBHangChothue.Checked) then
      ParamByName('THUOCTINH').AsInteger := 0
    else ParamByName('THUOCTINH').AsInteger := 1;
    Prepare;
    ExecSQL;
    Close;
  end;
  chkPBHangChothue.Font.Color := clRed;
  chkPBHangKho.Font.Color := clRed;
end;

procedure TTonghopFrm.ElPopupButton1Click(Sender: TObject);
begin
  {with TBatchInPeriodFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;  }
end;

procedure TTonghopFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Tonghopsolieu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

{procedure TTonghopFrm.acKCDT_BHExecute(Sender: TObject);
begin
  if chkGhiDTBH.ReadOnly then exit;
  if chkGhiDTBH.Checked then
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_GHIDT_BAOHIEM(:THANGHT,:NAMHT,:TUNGAY,:DENNGAY)';

    ParamByName('THANGHT').Value := CurMonth;
    ParamByName('NAMHT').Value := CurYear;
    ParamByName('TUNGAY').AsDate := EncodeDate(CurYear, CurMonth,1) ;
    ParamByName('DENNGAY').AsDate := EndOfAMonth(CurYear,CurMonth);

    Prepare;
    ExecSQL;
    Close;
  end;
  chkGhiDTBH.Font.Color := clRed;
  chkGhiDTBH.ReadOnly:=True;
end;
}
procedure TTonghopFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);

end;

procedure TTonghopFrm.acCapnhatCTGSExecute(Sender: TObject);
begin
  chkCLTygia.Font.Color := clBlack;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_CTGS_REFRESH(:KYHT,:BRANCH_ID)';

    Prepare;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
end;

procedure TTonghopFrm.acCLTygiaExecute(Sender: TObject);
begin
  if chkCLTygia.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_CHENHLECHTYGIA(:KYHT,:NGAYLAP,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').Value := WorkingDate;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  chkCLTygia.Font.Color := clRed;
  //chkCLTygia.ReadOnly := True;
end;

procedure TTonghopFrm.acKCSoduHHFIFOExecute(Sender: TObject);
begin
  if chkKCSoduHH.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_HH_FIFO(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  chkKCSoduHH.Font.Color := clRed;
  //chkKCSoduHH.ReadOnly := True;
end;

procedure TTonghopFrm.chkKCKYKYClick(Sender: TObject);
begin
    if (chkKCKYKY.Checked = true) then
      begin
        locTuthang.Enabled := True;
        locTunam.Enabled := TRUE;
        locDenthang.Enabled := TRUE;
        locDennam.Enabled := TRUE;
      end
    else
      begin
        locTuthang.Enabled := FALSE;
        locTunam.Enabled := FALSE;
        locDenthang.Enabled := FALSE;
        locDennam.Enabled := FALSE;
      end
end;

procedure TTonghopFrm.acPBTKTTExecute(Sender: TObject);
begin
  if chkPBTKTT.ReadOnly then exit;

  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_PHANBO_CPTRICHTRUOC(:KYHT, :NGAYLAP,:NGUOILAP,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate :=  WorkingDate;
    if prmUseDocumentLog then
    ParamByName('NGUOILAP').Value := CurrentUser;
    ParamByName('BRANCH_ID').Value := vpBranch_id;

    ExecSQL;
    Close;
  end;
  chkPBTKTT.Font.Color := clRed;
end;

end.
