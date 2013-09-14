unit TonghopForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,DateUtils, 
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, ComCtrls, TntButtons,
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn, ElCheckCtl,
  Menus, TntMenus;

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
    chkGhiDTBH: TdxCheckEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    acCapnhatCTGS: TAction;
    chkCLTygia: TdxCheckEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    acCLTygia: TAction;
    chkKCHeSo: TdxCheckEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    acKCSoduHHFIFO: TAction;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acKCDT_BHExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCapnhatCTGSExecute(Sender: TObject);
    procedure acCLTygiaExecute(Sender: TObject);
    procedure acKCSoduHHFIFOExecute(Sender: TObject);
  private
    DaTinhKC, DaTinhPB:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TonghopFrm: TTonghopFrm;

implementation

uses MainDataMdl, IBODataset, DMInterface, HtmlHlp, 
  GlobalUnit, MainForm, DocListForm, RegTransferForm, RegAllocateForm;

{$R *.dfm}

procedure TTonghopFrm.acKhauhaoTSCDExecute(Sender: TObject);
begin
  if chkKHTSCD.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure SP_KC_TRICHKHAUHAO(:KYHT, :NGAYLAP,:NGUOILAP)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate :=  WorkingDate;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;
  end;
  chkKHTSCD.Font.Color := clRed;
  chkKHTSCD.ReadOnly   := True;
end;

procedure TTonghopFrm.acAutoEntryExecute(Sender: TObject);
begin
  if chkExeKetchuyen.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure sp_kc_buttoantudong(:KYHT, :NGAYLAP,:NGUOILAP, :KCHESO)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    if prmUseDocumentLog then
      ParamByName('NGUOILAP').Value := CurrentUser;
    if chkKCHeSo.Checked then
      ParamByName('KCHESO').Value := 1
    else
      ParamByName('KCHESO').Value := 0;
    ExecSQL;
    Close;
  end;
  chkExeKetchuyen.Font.Color := clRed;
  chkExeKetchuyen.ReadOnly:=True;
end;

procedure TTonghopFrm.acKCsoduTKExecute(Sender: TObject);
begin
  if chkKCSoduTK.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_TK(:KYHT)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
  chkKCSoduTK.ReadOnly:=True;
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
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_OBJ(:KYHT)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
  chkKCSoduKH.Font.Color := clRed;
  chkKCSoduKH.ReadOnly := True;
end;

procedure TTonghopFrm.acKCSoduHHExecute(Sender: TObject);
begin
  if chkKCSoduHH.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure SP_KC_KETCHUYENSODU_HH(:KYHT)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
  chkKCSoduHH.Font.Color := clRed;
  chkKCSoduHH.ReadOnly := True;
end;

procedure TTonghopFrm.acKCSoduHHFIFOExecute(Sender: TObject);
begin
  if chkKCSoduHH.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_KETCHUYENSODU_HH_FIFO(:KYHT)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
  chkKCSoduHH.Font.Color := clRed;
  chkKCSoduHH.ReadOnly := True;
end;

procedure TTonghopFrm.btnThuchienClick(Sender: TObject);
begin
  if ShowMessageUnicode(129,'', 4) = 7 then
    exit;

  if LockingData then
  begin
    if SSPUserRight[11].ER = False then
    begin
      ShowMessageUnicode(130);
      Abort;
      exit;
    end;

    if ShowMessageUnicode(116,'', 4) = 6 then
      MainDM.acUnlockData.Execute
    else
      exit;
  end
  else
    if SSPUserRight[13].IR = false then
    begin
      ShowMessageUnicode(131);
      exit;
    end;
  locProgress.Visible := True;
  btnThuchien.Enabled := False;
  Screen.Cursor := crHourGlass;

  ProgressBar1.StepIt;
  acPBCPCCDC.Execute;

  if chkGhiDTBH.Checked then
    acKCDT_BH.Execute;

  ProgressBar1.StepIt;
  if chkDCGBQCK.Checked then
    acDCGBQCK.Execute;

  ProgressBar1.StepIt;
  if chkKHTSCD.Checked then
    acKhauhaoTSCD.Execute;

  ProgressBar1.StepIt;
  if chkCLTygia.Checked then
    acCLTygia.Execute;

  ProgressBar1.StepIt;
  if chkExeKetchuyen.Checked then
    acAutoEntry.Execute;

  ProgressBar1.StepIt;
  if chkKCSoduTK.Checked then
    acKCsoduTK.Execute;
  ProgressBar1.StepIt;

  if chkKCSoduHH.Checked then
      acKCSoduHH.Execute;

  ProgressBar1.StepIt;
  if chkKCSoduKH.Checked then
    acKCSoduKH.Execute;
  ProgressBar1.StepIt;
  if chkKCthongtinGB.Checked then
    acKCGiaban.Execute;
  ProgressBar1.StepIt;
  if chkLockData.Checked then
    acLockData.Execute;
  ProgressBar1.StepIt;
  ProgressBar1.Position:=0;

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
    SQL.Text :='execute procedure SP_KC_GIAMUAGIABAN(:KYHT)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
  chkKCthongtinGB.Font.Color := clRed;
  chkKCthongtinGB.ReadOnly := True;
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
  
//  chkDCGBQCK.Checked := (prmPPXUATKHO=1);
//  rbAdjustOther.Enabled:= prmPPXUATKHO<2;
  chkDCGBQCK.Checked := False;
	rbAdjustOther.Enabled:= True;
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
    qryDocListAnyWhere.ParamByName('branch_id').Value:=vpBranch_id;
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
    SQL.Text :='execute procedure sp_khoaso(:KYHT)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ExecSQL;
    Close;
  end;
  MainDM.qrySysLog.Close;
  MainDM.qrySysLog.Open;
  chkLockData.Font.Color := clRed;
  chkLockData.ReadOnly := True;
  LockingData := True;
  MainFrm.BarStaticStatus.Caption :=UTF8Decode('Khóa sổ');
end;

procedure TTonghopFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Tonghopsolieu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(31);
end;

procedure TTonghopFrm.acDCGBQCKExecute(Sender: TObject);
begin
  if chkDCGBQCK.ReadOnly then exit;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_OUT(:KYHT,'',:NGUOILAP)';
    Prepare;
    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGUOILAP').Value := CurrentUser;
    ExecSQL;
    Close;

    SQL.Clear;
    Params.Clear;

    if rbAdjustSelf.Checked then
        SQL.Text :='execute procedure SP_DGBQ_CUOIKY(:KYHT,:NGUOILAP)'
    else
    begin
        SQL.Text :='execute procedure SP_DC_DGBQCK(:KYHT,:NGAYLAP,:NGUOILAP)';
        Prepare;
        ParamByName('NGAYLAP').Value := WorkingDate;
        ParamByName('NGUOILAP').Value := CurrentUser;
        ExecSQL;
        Close;
    end;
    {if prmPPXUATKHO > 1 then
      SQL.Text :='execute procedure SP_OUT(:KYHT,:PPXK,:NGUOILAP)'
    else
    begin
      if rbAdjustSelf.Checked then
        SQL.Text :='execute procedure SP_DGBQ_CUOIKY(:KYHT,:NGUOILAP)'
      else
        SQL.Text :='execute procedure SP_DC_DGBQCK(:KYHT,:NGAYLAP,:NGUOILAP)';
    end;

    Prepare;
    ParamByName('KYHT').Value := CurrentPeriod;
    if prmPPXUATKHO>1 then
      ParamByName('PPXK').AsInteger := prmPPXUATKHO
    else if rbAdjustOther.Checked then
      ParamByName('NGAYLAP').Value := WorkingDate;

    ParamByName('NGUOILAP').Value := CurrentUser;

    ExecSQL;
    Close;
  end;     }
  end;
  chkDCGBQCK.Font.Color := clRed;
  chkDCGBQCK.ReadOnly :=True;
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
    SQL.Text :='execute procedure SP_KC_PBCPCCDC(:KYHT,:NGAYLAP,:THUOCTINH)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').AsDate := WorkingDate;
    
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

procedure TTonghopFrm.acKCDT_BHExecute(Sender: TObject);
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

procedure TTonghopFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TTonghopFrm.acCapnhatCTGSExecute(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_CTGS_REFRESH(:KYHT)';
    Prepare;

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
    SQL.Text :='execute procedure SP_CHENHLECHTYGIA(:KYHT,:NGAYLAP)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('NGAYLAP').Value := WorkingDate;
    ExecSQL;
    Close;
  end;
  chkCLTygia.Font.Color := clRed;
  chkCLTygia.ReadOnly := True;
end;

end.
