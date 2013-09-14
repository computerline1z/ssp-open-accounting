unit TransferReciveForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutLookAndFeels, ImgList, DBak_Component, DBak_Controller,
  ExtCtrls, ElPanel, ElBtnCtl, ElPopBtn, StdCtrls, ComCtrls,
  IBC_CustomLabel, IBC_Label, ElCLabel, ElLabel, dxLayoutControl, dxEditor,
  dxExEdtr, dxEdLib, dxCntner, cxControls, ElPgCtl, ElXPThemedControl,
  ElCaption, dxTL, dxDBCtrl, DB, IBODataset, dxDBTL, dxDBGrid, DBActns,
  ActnList, dxDBELib, ElCheckCtl, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, FileCtrl, ElACtrls, dxDBTLCl,
  dxGrClms, dxmdaset, ElEdits, ElBtnEdit, ElNameEdits, IB_Process,
  IB_Script, IB_Components, TntStdCtrls;

type
  TTransferReceivefrm = class(TForm)

    ElFormCaption1: TElFormCaption;
    pgcMain: TElPageControl;
    tsConfig: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElPanel1: TElPanel;
    Animation: TImage;
    AnimFixedImg: TImage;
    FileDlg: TOpenDialog;
    AnimationImgs: TImageList;
    dxLayoutControl1Item1: TdxLayoutItem;
    grdHSCT: TdxDBTreeList;
    qryHSCT: TIBOQuery;
    dsHSCT: TDataSource;
    qryHSCTBRANCH_ID: TWideStringField;
    qryHSCTFULLNAME: TWideStringField;
    qryHSCTFTP_DOMAIN: TWideStringField;
    qryHSCTFTP_PASSWORD: TWideStringField;
    qryHSCTFTP_USERNAME: TWideStringField;
    grdHSCTBRANCH_ID: TdxDBTreeListMaskColumn;
    grdHSCTFULLNAME: TdxDBTreeListMaskColumn;
    grdHSCTFTP_DOMAIN: TdxDBTreeListMaskColumn;
    grdHSCTFTP_PASSWORD: TdxDBTreeListMaskColumn;
    grdHSCTFTP_USERNAME: TdxDBTreeListMaskColumn;
    qryHSCTPBRANCH_ID: TWideStringField;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnPost: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnCancel: TElPopupButton;
    tsHistory: TElTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    grdHistory: TdxDBGrid;
    dxLayoutControl1Group4: TdxLayoutGroup;
    tsTransfer: TElTabSheet;
    tsUpdate: TElTabSheet;
    ProgressBar3: TProgressBar;
    locTrans: TdxLayoutControl;
    dxLayoutGroup12: TdxLayoutGroup;
    locTransTimeEnd: TdxLayoutItem;
    spnTransToTime: TdxDBTimeEdit;
    locTransTimeBegin: TdxLayoutItem;
    spnTransFromTime: TdxDBTimeEdit;
    locTransItem4: TdxLayoutItem;
    Bevel5: TBevel;
    rbDuration: TElRadioButton;
    locTransItem5: TdxLayoutItem;
    locTransItem6: TdxLayoutItem;
    rbToday: TElRadioButton;
    locTransItem7: TdxLayoutItem;
    btnGen: TElPopupButton;
    locTransToDate: TdxLayoutItem;
    dedtCurDate2: TdxDateEdit;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    locUpdate: TdxLayoutControl;
    btnSave4: TElPopupButton;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    locManualUpdate: TdxLayoutItem;
    btnUpdate: TElPopupButton;
    locUpdateGroup1: TdxLayoutGroup;
    locTransItem10: TdxLayoutItem;
    Bevel9: TBevel;
    locUpdateItem4: TdxLayoutItem;
    Bevel10: TBevel;
    locUpdateTimeEnd: TdxLayoutItem;
    spnUpdateToTime: TdxDBTimeEdit;
    locUpdateTimeBegin: TdxLayoutItem;
    spnUpdateFromTime: TdxDBTimeEdit;
    locUpdateTime: TdxLayoutGroup;
    ActionList2: TActionList;
    acInfoPost: TDataSetPost;
    acInfoCancel: TDataSetCancel;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    IdFTP1: TIdFTP;
    qryHSCTISMIN: TSmallintField;
    pnlRecurrence: TPanel;
    locRecGroup_Root: TdxLayoutGroup;
    locRec: TdxLayoutControl;
    locRecItem1: TdxLayoutItem;
    rbDaily: TElRadioButton;
    locRecItem2: TdxLayoutItem;
    rbWeekly: TElRadioButton;
    locRecItem3: TdxLayoutItem;
    rbMonthly: TElRadioButton;
    locRecGroup2: TdxLayoutGroup;
    ElLabel1: TElLabel;
    locRecGroup1: TdxLayoutGroup;
    lblWeek: TElLabel;
    ElLabel6: TElLabel;
    btnRec: TElPopupButton;
    locTransItem8: TdxLayoutItem;
    locRecGroup7: TdxLayoutGroup;
    ProgressBar1: TProgressBar;
    locUpdateItem7: TdxLayoutItem;
    locBottom2: TdxLayoutGroup;
    locTransItem11: TdxLayoutItem;
    locBottom: TdxLayoutGroup;
    locTop: TdxLayoutGroup;
    locTransGroup5: TdxLayoutGroup;
    locTransItem9: TdxLayoutItem;
    btnSave3: TElPopupButton;
    locResult: TdxLayoutGroup;
    locManual: TdxLayoutGroup;
    locTransItem2: TdxLayoutItem;
    btnTransfer: TElPopupButton;
    locUpdateGroup2: TdxLayoutGroup;
    dsLog: TDataSource;
    grdUp: TdxDBGrid;
    locTransItem3: TdxLayoutItem;
    grdUpRecId: TdxDBGridColumn;
    grdUpCONTENT: TdxDBGridMaskColumn;
    grdUpTIME: TdxDBGridTimeColumn;
    grdUpDATE: TdxDBGridDateColumn;
    memLog: TdxMemData;
    memLogCONTENT: TWideStringField;
    memLogDATE: TDateField;
    memLogTIME: TTimeField;
    locAutoUpload: TdxLayoutGroup;
    UpDir: TElFolderNameEdit;
    locTransItem13: TdxLayoutItem;
    btnSave: TElPopupButton;
    btnCancel2: TElPopupButton;
    memLogTRANSFERED: TSmallintField;
    memLogUPDATED: TSmallintField;
    grdUpTRANSFERED: TdxDBGridCheckColumn;
    dxLayoutControl1Item11: TdxLayoutItem;
    btnTestConnection: TElPopupButton;
    tsMain: TIB_Transaction;
    IB_Script1: TIB_Script;
    locUpdateItem2: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridTimeColumn1: TdxDBGridTimeColumn;
    dxDBGrid1UPDATED: TdxDBGridCheckColumn;
    locUpdateItem5: TdxLayoutItem;
    DownDir: TElFolderNameEdit;
    locTransGroup2: TdxLayoutGroup;
    qryHistory: TIBOQuery;
    dsHistory: TDataSource;
    qryHistoryLOG_ID: TIntegerField;
    qryHistoryLOG_DATE: TDateTimeField;
    qryHistoryCONTENT: TWideStringField;
    qryHistoryLOG_TIME: TTimeField;
    qryHistoryTRANSFERED: TSmallintField;
    qryHistoryUPDATED: TSmallintField;
    grdHistoryLOG_ID: TdxDBGridMaskColumn;
    grdHistoryLOG_DATE: TdxDBGridDateColumn;
    grdHistoryCONTENT: TdxDBGridMaskColumn;
    grdHistoryLOG_TIME: TdxDBGridTimeColumn;
    grdHistoryTRANSFERED: TdxDBGridCheckColumn;
    grdHistoryUPDATED: TdxDBGridCheckColumn;
    locTransItem12: TdxLayoutItem;
    btnRefresh1: TElPopupButton;
    locUpdateItem6: TdxLayoutItem;
    btnRefresh2: TElPopupButton;
    dxLayoutControl4Item1: TdxLayoutItem;
    btnRefresh3: TElPopupButton;
    dxLayoutControl4Item2: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    chkAutoTransfer: TdxDBCheckEdit;
    locTransItem14: TdxLayoutItem;
    chkAutoUpdate: TdxDBCheckEdit;
    locUpdateItem8: TdxLayoutItem;
    locRecItem5: TdxLayoutItem;
    ElLabel2: TElLabel;
    locRecItem6: TdxLayoutItem;
    dxDBSpinEdit4: TdxDBSpinEdit;
    locRecItem7: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    locRecItem8: TdxLayoutItem;
    ElLabel3: TElLabel;
    locRecItem9: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    locRecItem10: TdxLayoutItem;
    ElLabel4: TElLabel;
    locRecItem11: TdxLayoutItem;
    dxDBSpinEdit1: TdxDBSpinEdit;
    locLine: TdxLayoutItem;
    Bevel2: TBevel;
    locRecItem13: TdxLayoutItem;
    dxDBCheckEdit2: TdxDBCheckEdit;
    locRecItem14: TdxLayoutItem;
    dxDBCheckEdit1: TdxDBCheckEdit;
    locRecItem15: TdxLayoutItem;
    dxDBCheckEdit7: TdxDBCheckEdit;
    locRecItem16: TdxLayoutItem;
    dxDBCheckEdit5: TdxDBCheckEdit;
    locRecItem17: TdxLayoutItem;
    dxDBCheckEdit4: TdxDBCheckEdit;
    locRecItem18: TdxLayoutItem;
    dxDBCheckEdit3: TdxDBCheckEdit;
    locRecItem19: TdxLayoutItem;
    dxDBCheckEdit6: TdxDBCheckEdit;
    locWeekDay: TdxLayoutGroup;
    locRecItem4: TdxLayoutItem;
    Bevel1: TBevel;
    locRecGroup6: TdxLayoutGroup;
    locRecGroup9: TdxLayoutGroup;
    locRecGroup4: TdxLayoutGroup;
    locRecDay: TdxLayoutGroup;
    locRecWeek: TdxLayoutGroup;
    locRecGroup10: TdxLayoutGroup;
    locRecMonth: TdxLayoutGroup;
    btnClose: TElPopupButton;
    locAutoTime: TdxLayoutGroup;
    pnlUpdateRecurr: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    ElLabel5: TElLabel;
    ElLabel8: TElLabel;
    ElLabel9: TElLabel;
    ElLabel10: TElLabel;
    ElLabel11: TElLabel;
    ElLabel12: TElLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    rbUpdateDay: TElRadioButton;
    rbUpdateWeek: TElRadioButton;
    rbUpdateMonth: TElRadioButton;
    dxDBSpinEdit5: TdxDBSpinEdit;
    dxDBSpinEdit6: TdxDBSpinEdit;
    dxDBSpinEdit7: TdxDBSpinEdit;
    dxDBSpinEdit8: TdxDBSpinEdit;
    dxDBCheckEdit8: TdxDBCheckEdit;
    dxDBCheckEdit9: TdxDBCheckEdit;
    dxDBCheckEdit10: TdxDBCheckEdit;
    dxDBCheckEdit11: TdxDBCheckEdit;
    dxDBCheckEdit12: TdxDBCheckEdit;
    dxDBCheckEdit13: TdxDBCheckEdit;
    dxDBCheckEdit14: TdxDBCheckEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    locUpdateDay: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    locUpdateWeek: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    locUpdateMonth: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    locUpdateWeekDay: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    btnSave5: TElPopupButton;
    btnCancel5: TElPopupButton;
    btnClose5: TElPopupButton;
    locUpdateItem9: TdxLayoutItem;
    btnRecUpdate: TElPopupButton;
    Timer2: TTimer;
    Timer1: TTimer;
    qryCommon: TIBOQuery;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnCloseFrm: TElPopupButton;
    locTransGroup4: TdxLayoutGroup;
    locTransGroup8: TdxLayoutGroup;
    locUpdateGroup4: TdxLayoutGroup;
    locUpdateItem1: TdxLayoutItem;
    btnClose3: TElPopupButton;
    locTransItem1: TdxLayoutItem;
    btnClose2: TElPopupButton;
    dxLayoutControl4Item3: TdxLayoutItem;
    btnClose4: TElPopupButton;
    acTransfer: TAction;
    acGenFile: TAction;
    acUpdate: TAction;
    dedtCurDate1: TdxDBDateEdit;
    locTransItem15: TdxLayoutItem;
    locTransItem16: TdxLayoutItem;
    btnCancel3: TElPopupButton;
    locUpdateItem3: TdxLayoutItem;
    btnCancel4: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    edtPassword: TdxEdit;
    qryCommonLOG_ID: TIntegerField;
    qryCommonLOG_CONTENT: TWideStringField;
    qryCommonLOG_DATES: TDateTimeField;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    chkActiveTrigger: TdxDBCheckEdit;
    activetrigger: TIB_Script;
    inactivetrigger: TIB_Script;

    procedure FormCreate(Sender: TObject);
    procedure btnCloseFrmClick(Sender: TObject);
    procedure rbTodayClick(Sender: TObject);
    procedure rbDurationClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function UpLoadFile(): Boolean;
    procedure rbDailyClick(Sender: TObject);
    procedure rbWeeklyClick(Sender: TObject);
    procedure rbMonthlyClick(Sender: TObject);
    procedure btnRecClick(Sender: TObject);
    procedure tsTransferEnter(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnTestConnectionClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure tsConfigEnter(Sender: TObject);
    procedure grdHSCTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdHSCTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPassword1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpDirChange(Sender: TObject);
    
    procedure tsUpdateEnter(Sender: TObject);
    procedure DownDirChange(Sender: TObject);
    procedure btnRefresh1Click(Sender: TObject);
    procedure btnRefresh2Click(Sender: TObject);
    procedure tsHistoryEnter(Sender: TObject);
    procedure btnRefresh3Click(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure chkAutoTransferClick(Sender: TObject);
    procedure btnClose5Click(Sender: TObject);
    procedure btnRecUpdateClick(Sender: TObject);
    procedure rbUpdateDayClick(Sender: TObject);
    procedure rbUpdateWeekClick(Sender: TObject);
    procedure rbUpdateMonthClick(Sender: TObject);
    procedure chkAutoUpdateClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acGenFileExecute(Sender: TObject);
    procedure acTransferExecute(Sender: TObject);
    procedure acUpdateExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkActiveTriggerClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    strUpFileListVi:WideString;
    strUpFileListEn:WideString;
    strDownFileListVi:WideString;
    strDownFileListEn:WideString;
    strFinishVi:WideString;
    strFinishEn:WideString;
    strLine:WideString;
    strInProccessVi:WideString;
    strInProccessEn:WideString;
    strBackupFolderPrefix:WideString;

    ListFile:TStringList;
    bWorking: Boolean;
    bUpdated: Boolean;
    FAnimIdx: TImageIndex;

    isFirst :boolean;
    { Private declarations }
    Procedure BuildAndSaveScript(TenFile:String);
    Function GenerateFileName():String;
    procedure AddGenFileToMem();
    procedure ReadFileList(Dir: String;DirType:Smallint);
    procedure AddRecordToMem(Content:WideString;DateGen:TDate;TimeGen:TTime;Transferd:Smallint;Updated:Smallint);
    procedure AddTransferedLogToMem(Content:WideString;DateGen:TDate;TimeGen:TTime);
    procedure AddUpdatedLogToMem(Content:WideString;DateGen:TDate;TimeGen:TTime);
    procedure AddTransferedLogToDB();
    procedure AddUpdatedLogToDB();
    procedure CreateUpLoadBackup();
    procedure CreateUpdateBackup();
    function GenBackupFolder():String;
    procedure UpdateData();
    procedure SetVisible(Visible:Boolean);
    procedure DrawAnimation(Idx: TImageIndex);

  public
    { Public declarations }
  end;

var
  TransferReceivefrm: TTransferReceivefrm;

implementation
uses GlobalUnit, DMInterface,MainDataMdl, Math, DateUtils,ElStrUtils,
  StrUtils;

{$R *.dfm}
const
  DefaultImg : TImageIndex = 0;
  FirstAnim  : TImageIndex = 1;
  LastAnim   : TImageIndex = 9;

procedure TTransferReceivefrm.FormCreate(Sender: TObject);
var CurTime : TTime;
begin
    isFirst := TRUE;
    strUpFileListVi := UTF8Decode('_______  Danh sách tập tin cần tải lên  _______');
    strUpFileListEn :=           ('__________________  Files to upload  __________________');
    strInProccessVi := UTF8Decode('________________  Đang thực hiện  ________________');
    strInProccessEn :=           ('_____________________  Processing  ____________________');
    strDownFileListVi:=UTF8Decode('______  Danh sách tập tin cần cập nhật  ______');
    strDownFileListEn :=         ('__________  Files to update  __________');

    strLine :=                   ('_______________________________________');
    strFinishVi :=     UTF8Decode('____________  Hoàn tất  ____________');
    strFinishEn :=                '________________  Done  _______________';

    ListFile := TStringList.Create;
    pgcMain.ActivePage := TelTabSheet(tsConfig);


    qryHSCT.Open;
    locTrans.BeginUpdate;
    locRec.BeginUpdate;
    SetOnFormCreate(TControl(self));
    locTrans.EndUpdate;
    locRec.EndUpdate;

    //dedtCurDate1.Date:= WorkingDate;
    dedtCurDate2.date:= WorkingDate;

    grdHSCT.FullExpand;

    bWorking := FALSE;

    if (Maindm.TransferUpdateAction =1 ) then
      pgcMain.ActivePage := tsTransfer;

    if (Maindm.TransferUpdateAction =2 ) then
      pgcMain.ActivePage := tsUpdate;

    if CurrentUser <> 'SSPAdmin' then
      chkActiveTrigger.Visible := FALSE;
end;

procedure TTransferReceivefrm.btnCloseFrmClick(Sender: TObject);
begin
    //if qry
     ModalResult := mrOK;
end;

procedure TTransferReceivefrm.rbTodayClick(Sender: TObject);
begin
  //locTransFromDate.Enabled := FALSE;
  locTransToDate.Enabled := FALSE;
  //dedtCurDate1.Date := WorkingDate;
  dedtCurDate2.Date := WorkingDate;
end;

procedure TTransferReceivefrm.rbDurationClick(Sender: TObject);
begin
  //locTransFromDate.Enabled := TRUE;
  locTransToDate.Enabled := TRUE;
end;

procedure TTransferReceivefrm.FormShow(Sender: TObject);
begin
    qryHSCT.Locate('BRANCH_ID',vpBranch_id,[]);

    // Set tab visible and Loc enable
    if vpBranch_IsMin = 1 then
      tsUpdate.TabVisible := FALSE
    else if ((vpBranch_IsMin =0) and (qryHSCTPBRANCH_ID.IsNull)) then
      tsTransfer.TabVisible := FALSE;

    // Directory ------------
    if MainDM.qryTransferInfoUPLOAD_DIR.isNull then
      MainDM.qryTransferInfoUPLOAD_DIR.Value := applicationdir + '\UPLOAD\';
    if MainDM.qryTransferInfoDOWNLOAD_DIR.isNull then
      MainDM.qryTransferInfoDOWNLOAD_DIR.Value := applicationdir + '\DOWNLOAD\';

    UpDir.Text :=  MainDM.qryTransferInfoUPLOAD_DIR.Value ;
    DownDir.Text :=  MainDM.qryTransferInfoDOWNLOAD_DIR.Value ;
    // Tab sheet Transfer --
    if MainDM.qryTransferInfoAUTO_TRANSFER.Value = 1 then
      begin
        locManual.Enabled := false;
        locAutoTime.Enabled := True;
      end
    else
      begin
        locManual.Enabled := True;
        locAutoTime.Enabled := False;
    end;
    //Panel auto transfer -----------
    pnlRecurrence.Visible := FALSE;
    pnlRecurrence.Width := 400;
    pnlRecurrence.height := 126;

    //dedtCurDate1.Date := now;
    dedtCurDate2.Date := now;
    // ---------------------
    // Tab sheet Update --
    if MainDM.qryTransferInfoAUTO_UPDATE.Value = 1 then
      begin
        locManualUpdate.Enabled := false;
        locUpdateTime.Enabled := True;
      end
    else
      begin
        locManualUpdate.Enabled := True;
        locUpdateTime.Enabled := False;
    end;
    //Panel auto update -----------
    pnlUpdateRecurr.Visible := FALSE;
    pnlUpdateRecurr.Width := 400;
    pnlUpdateRecurr.height := 126;
end;


function TTransferReceivefrm.UpLoadFile(): Boolean;
var
  fileext,filename,destfilename:string;
  strBeg:widestring;
  PBRANCH_ID:widestring;
  i,len : integer;
begin

  if MainDm.qryTransferInfo.State in [dsEdit] then
      MainDm.qryTransferInfo.Post;

  SetVisible(FALSE);
  Timer1.Enabled := TRUE;

  Result:=False;
  IdFTP1.Quit;

    qryHSCT.Locate('BRANCH_ID',vpBranch_id,[]);
    {if qryHSCTISMIN.Value = 1 then
    begin
      PBRANCH_ID := qryHSCTPBRANCH_ID.Value;
      qryHSCT.Locate('BRANCH_ID',PBRANCH_ID,[]);
    end;
    }
    try
          IdFTP1.Host     := qryHSCTFTP_DOMAIN.Value;
          IdFTP1.Username := qryHSCTFTP_USERNAME.Value;
          IdFTP1.Password := SSPDecode(qryHSCTFTP_PASSWORD.Value);
          IdFTP1.Connect;
    Except
          Exit;
    end;



  if (CurLanguage = 0) or (CurLanguage= 1) then
    strBeg := strInProccessVi
  else
    strBeg := strInProccessEn;

  try
    AddRecordToMem(strBeg,now,now,0,0);
    for i := 0 to ListFile.Count -1 do
    begin

        filename := ExtractFileName(ListFile.Strings[i]);
        len := Length(filename);
        filename := copy(filename,0,(Len - 4));
        destfilename := filename + '.ssp';
        filename := filename + '.unf'; // Tao ten file filename.unf

        IdFTP1.Put(ListFile.Strings[i],ExtractFileName(ListFile.Strings[i]));
        IdFTP1.Rename(filename,destfilename);

        AddTransferedLogToMem(ListFile.Strings[i],now,now);
    end;
    AddRecordToMem(strLine,now,now,0,0);
  except
    AddRecordToMem(strLine,now,now,0,0);


        IdFTP1.Disconnect;
    Exit;
  end;

  
  IdFTP1.Disconnect;

  SetVisible(TRUE);
  Timer1.Enabled := FALSE;
  Result:=True;
  MainDm.qryTransferInfoLASTDAY_TRANSFER.Value := now;
  MainDm.qryTransferInfo.Post;

end;

procedure TTransferReceivefrm.rbDailyClick(Sender: TObject);
begin

  if not (MainDM.qryTransferInfo.State in [dsEdit,dsInsert]) then
      MainDM.qryTransferInfo.Edit;
  MainDM.qryTransferInfoRECURR_TYPE.Value :=1;

  locWeekDay.Visible := FALSE;
  locRecDay.Visible :=true;
  locRecMonth.Visible :=FALSE;
  locRecWeek.Visible :=FALSE;
end;

procedure TTransferReceivefrm.rbWeeklyClick(Sender: TObject);
begin

  if not (MainDM.qryTransferInfo.State in [dsEdit,dsInsert]) then
      MainDM.qryTransferInfo.Edit;

  MainDM.qryTransferInfoRECURR_TYPE.Value :=2;
  locWeekDay.Visible := TRUE;
  locRecDay.Visible :=FALSE;
  locRecMonth.Visible :=FALSE;
  locRecWeek.Visible :=true;
end;

procedure TTransferReceivefrm.rbMonthlyClick(Sender: TObject);
begin

  if not (MainDM.qryTransferInfo.State in [dsEdit,dsInsert]) then
      MainDM.qryTransferInfo.Edit;
  MainDM.qryTransferInfoRECURR_TYPE.Value :=3;

  locRecDay.Visible :=FALSE;
  locWeekDay.Visible := FALSE;
  locRecMonth.Visible :=true;
  locRecWeek.Visible :=FALSE;
end;

procedure TTransferReceivefrm.btnRecClick(Sender: TObject);
begin
    if spnTransFromTime.Time > spnTransToTime.Time then
    begin
      pgcMain.ActivePage := tsTransfer;
      HintBox(237,Self,spnTransToTime);
      Abort;
      Exit;
    end;
    if spnUpdateFromTime.Time > spnUpdateToTime.Time then
    begin
      pgcMain.ActivePage := tsUpdate;
      HintBox(237,Self,spnUpdateToTime);
      Abort;
      Exit;
    end;
    pnlRecurrence.Visible := True;
    pnlRecurrence.Top := btnRec.top;
    pnlRecurrence.Left :=Floor((locTrans.width)/2)-190;

    if not (MainDM.qryTransferInfo.state in [dsInsert,dsEdit]) then
      MainDM.qryTransferInfo.Edit;

    Case MainDM.qryTransferInfoRECURR_TYPE.Value of
      1: rbDaily.Click;
      2: rbWeekly.click;
      3: rbMonthly.click;
    end;

end;

function TTransferReceivefrm.GenerateFileName():String;
begin

    qryHSCT.Locate('BRANCH_ID',vpBranch_id,[]);
    Result := MainDM.qryTransferInfoUPLOAD_DIR.asstring + qryHSCTBRANCH_ID.asstring + '-' +
                  IntToStr(MonthOf(dedtCurDate1.date)) + '.' +IntToStr(DayOf(dedtCurDate1.date)) + '-' +
                  IntToStr(MonthOf(dedtCurDate2.date)) + '.' +IntToStr(DayOf(dedtCurDate2.date))+'.ssp';

end;

// Dirtype is to determind the description text
procedure TTransferReceivefrm.ReadFileList(Dir:string; DirType:Smallint);
var FileSearch:TSearchRec;
var strBegin:WideString;
    FileExist : boolean;
begin

    ListFile.Clear;
    FileExist := FALSE;

    if not memLog.Active then memLog.open;

    if DirType = 1 then //Up Dir
      if (CurLanguage = 0) or (CurLanguage = 1) then
        strBegin := strUpFileListVi
      else
        strBegin := strUpFileListEn
    else
      if (CurLanguage = 0) or (CurLanguage = 1) then
        strBegin := strDownFileListVi
      else
        strBegin := strDownFileListEn;


    if FindFirst(Dir+'*.ssp',faAnyFile,FileSearch) = 0 then
    begin
        AddRecordToMem(strBegin,now,now,0,0);
        ListFile.Add(Dir+FileSearch.Name);
        AddRecordToMem(Dir+FileSearch.Name,now,now,0,0);
        FileExist := TRUE;
    end;
    while FindNext(FileSearch) = 0 do
      begin
        ListFile.Add(Dir+FileSearch.Name);
        AddRecordToMem(Dir+FileSearch.Name,now,now,0,0);
    end;
    if FileExist then AddRecordToMem(strLine,now,now,0,0);
end;

procedure TTransferReceivefrm.tsTransferEnter(Sender: TObject);
begin

    memLog.Close;
    ReadFileList(MainDM.qryTransferInfoUPLOAD_DIR.Value,1);

end;

procedure TTransferReceivefrm.AddTransferedLogToDB;
begin
  memLog.First;
  while not memLog.Eof do
  begin
    with MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text :='insert into transfer_log(content,log_date,log_time,transfered,updated) values(:content,:log_date,:log_time,:transfered,:updated)';
      Prepare;

      ParamByName('content').Value := memLogCONTENT.Value;
      ParamByName('log_date').Value := memLogDATE.Value;
      ParamByName('log_time').Value := memLogTIME.Value;
      ParamByName('transfered').Value := memLogTRANSFERED.Value;
      ParamByName('updated').Value := memLogUPDATED.Value;

      ExecSQL;
      Close;
    end;
    memLog.Next;

  end;
end;

procedure TTransferReceivefrm.CreateUpLoadBackup;
var DestDir:String;
    SourceFile:PChar;
    DestFile:PChar;
    FileName: String;
    i:Integer;
    Size:Byte;
begin

    Size := 255;
    SourceFile := StrAlloc(Size);
    DestFile := StrAlloc(Size);
    DestDir := UpDir.Text+'\'+GenBackupFolder;


    if not DirectoryExists(DestDir) then
      Createdir(DestDir);

    for i:=0 to ListFile.Count-1 do
    begin
      Filename := ExtractFileName(ListFile.strings[i]);
      StrPCopy(DestFile,DestDir + '\' + Filename);
      StrPCopy(SourceFile,ListFile.strings[i]);

      CopyFile(SourceFile,DestFile,FALSE);
      DeleteFile(ListFile.strings[i]);

    end

end;

function TTransferReceivefrm.GenBackupFolder: String;
begin

    Result := IntToStr(YearOf(now)) +'.' + IntToStr(MonthOf(now)) + '.' + inttostr(DayOf(now)) + ' ' +
              IntToStr(HourOf(now)) + 'H' + IntToStr(MinuteOf(now));

end;

procedure TTransferReceivefrm.AddGenFileToMem;
begin

end;

procedure TTransferReceivefrm.AddTransferedLogToMem(Content: WideString;
  DateGen: TDate; TimeGen: TTime);
begin
  if not memLog.active then memLog.Open;
  memLog.Append;
  memLogCONTENT.Value := Content;
  memLogTIME.Value := TimeGen;
  memLogDATE.Value := DateGen;
  memLogTransfered.Value := 1;
  memLogUpdated.Value := 0;
  memLog.Post;
end;

procedure TTransferReceivefrm.AddUpdatedLogToMem(Content: WideString;
  DateGen: TDate; TimeGen: TTime);
begin

  if not memLog.active then memLog.Open;

  memLog.Append;
  memLogCONTENT.Value := Content;
  memLogTIME.Value := TimeGen;
  memLogDATE.Value := DateGen;
  memLogTransfered.Value := 0;
  memLogUpdated.Value := 1;
  memLog.Post;
end;

procedure TTransferReceivefrm.AddUpdatedLogToDB;
begin
  memLog.First;
  while not memLog.Eof do
  begin
    with MainDM.qryCommon do
    begin
      Close;
      SQL.Clear;
      Params.Clear;
      SQL.Text :='insert into transfer_log(content,log_date,log_time,transfered,updated) values(:content,:log_date,:log_time,:transfered,:updated)';
      Prepare;

      ParamByName('content').Value := memLogCONTENT.Value;
      ParamByName('log_date').Value := memLogDATE.Value;
      ParamByName('log_time').Value := memLogTIME.Value;
      ParamByName('transfered').Value := memLogTRANSFERED.Value;
      ParamByName('updated').Value := memLogUPDATED.Value;

      ExecSQL;
      Close;
    end;
    memLog.Next;

  end;
end;

procedure TTransferReceivefrm.AddRecordToMem(Content: WideString;
  DateGen: TDate; TimeGen: TTime; Transferd, Updated: Smallint);
begin
  memLog.Open;
  memLog.Append;
  memLogCONTENT.Value := Content;
  memLogTIME.Value := TimeGen;
  memLogDATE.Value := DateGen;
  memLogTransfered.Value := Transferd;
  memLogUpdated.Value := Updated;
  memLog.Post;

end;

procedure TTransferReceivefrm.btnSaveClick(Sender: TObject);
begin
     if MainDM.qryTransferInfo.state in [dsInsert,dsEdit] then
      MainDM.qryTransferInfo.Post;
    pnlRecurrence.Visible := False;
end;

procedure TTransferReceivefrm.UpdateData;
var ErrorCount,i:integer;
    strBegin :widestring;

begin
  if MainDm.qryTransferInfo.State in [dsEdit] then
      MainDm.qryTransferInfo.Post;

  SetVisible(FALSE);
  timer1.Enabled:= TRUE;
  bUpdated := FALSE;
  memLog.close;

  ErrorCount:=0;
  if not memLog.Active then memLog.open;

    if (CurLanguage = 0) or (CurLanguage = 1) then
        strBegin := strUpFileListVi
      else
        strBegin := strUpFileListEn;
    if (CurLanguage = 0) or (CurLanguage = 1) then
        strBegin := strDownFileListVi
      else
        strBegin := strDownFileListEn;

  try
    AddRecordToMem(strBegin,now,now,0,0);
    for i := 0 to ListFile.Count -1 do
    begin

      {IB_Script1.SQL.Text :=SSPDecode(Trim(Memo1.Text));

      MainDm.cnMain.Close;
      MainDm.cnMain.Open;
      ScriptExecuted:=True;
      IB_Script1.Execute;
      IB_Script1.IB_Transaction.CommitRetaining;
      Screen.Cursor := crDefault;}

      AddUpdatedLogToMem(ListFile.Strings[i],now,now);
    end;
    AddRecordToMem(strLine,now,now,0,0);
  except
    AddRecordToMem(strLine,now,now,0,0);
    Exit;
  end;

  {Screen.Cursor := crHourGlass;

  if ErrorCount=0 then
    ShowMessageUnicode(198)
  else
    ShowMessageUniText(GetMessage(199) + IntToStr(ErrorCount));
    }
  bUpdated := TRUE;
  SetVisible(TRUE);
  timer1.Enabled:= FALSE;

  MainDm.qryTransferInfoLASTDAY_UPDATE.Value := now;
  MainDm.qryTransferInfo.Post;

end;

procedure TTransferReceivefrm.btnTestConnectionClick(Sender: TObject);
begin
  IdFTP1.Quit;

  //qryHSCT.Locate('ISMIN',0,[]);
  qryHSCT.Locate('Branch_id',vpBranch_id,[]);
  try
          IdFTP1.Host     := qryHSCTFTP_DOMAIN.Value;
          IdFTP1.Username := qryHSCTFTP_USERNAME.Value;
          IdFTP1.Password := SSPDecode(qryHSCTFTP_PASSWORD.Value);
          IdFTP1.Connect;
  Except

          ShowMessageUnicode(233,qryHSCTFTP_DOMAIN.Value);
          Exit;
  end;
  IdFTP1.Quit;
  ShowMessageUnicode(232,qryHSCTFTP_DOMAIN.Value);

end;

procedure TTransferReceivefrm.btnUpdateClick(Sender: TObject);
var FileSearch:TSearchRec;
    strBegin:WideString;
begin

end;

procedure TTransferReceivefrm.tsConfigEnter(Sender: TObject);
begin
    edtPassword.Text := SSPDecode(qryHSCTFTP_PASSWORD.Value);
end;

procedure TTransferReceivefrm.grdHSCTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   edtPassword.Text := SSPDecode(qryHSCTFTP_PASSWORD.Value);
end;

procedure TTransferReceivefrm.grdHSCTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  edtPassword.Text := SSPDecode(qryHSCTFTP_PASSWORD.Value);
end;

procedure TTransferReceivefrm.edtPassword1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if not (qryHSCT.State in [dsEdit,dsInsert]) then
      qryHSCT.Edit;

    qryHSCTFTP_PASSWORD.Value := SSPEncode(edtPassword.Text);
end;

procedure TTransferReceivefrm.UpDirChange(Sender: TObject);
begin
    MainDM.qryTransferInfo.Edit;
    UpDir.Text := UpDir.Text + '\';
    MainDM.qryTransferInfoUPLOAD_DIR.Value := UpDir.Text;
end;

procedure TTransferReceivefrm.CreateUpdateBackup;
var DestDir:String;
    SourceFile:PChar;
    DestFile:PChar;
    FileName: String;
    i:Integer;
    Size:Byte;
begin

    Size := 255;
    SourceFile := StrAlloc(Size);
    DestFile := StrAlloc(Size);
    DestDir := MainDM.qryTransferInfoDOWNLOAD_DIR.Value+GenBackupFolder;

    if not DirectoryExists(DestDir) then
      Createdir(DestDir);

    for i:=0 to ListFile.Count-1 do
    begin
      Filename := ExtractFileName(ListFile.strings[i]);
      StrPCopy(DestFile,DestDir + '\' + Filename);
      StrPCopy(SourceFile,ListFile.strings[i]);

      CopyFile(SourceFile,DestFile,FALSE);
      DeleteFile(ListFile.strings[i]);
    end

end;


procedure TTransferReceivefrm.tsUpdateEnter(Sender: TObject);
begin
    memLog.Close;
    ReadFileList(MainDM.qryTransferInfoDOWNLOAD_DIR.Value,2);
end;

procedure TTransferReceivefrm.DownDirChange(Sender: TObject);
begin
    MainDM.qryTransferInfo.Edit;
    DownDir.Text := DownDir.Text + '\';
    MainDM.qryTransferInfoDownload_DIR.Value := downDir.Text;

end;

procedure TTransferReceivefrm.btnRefresh1Click(Sender: TObject);
begin
  memLog.close;
  ReadFileList(MainDM.qryTransferInfoUPLOAD_DIR.Value,1);
end;

procedure TTransferReceivefrm.btnRefresh2Click(Sender: TObject);
begin
   memLog.close;
  ReadFileList(MainDM.qryTransferInfoDownload_DIR.Value,2);
end;

procedure TTransferReceivefrm.tsHistoryEnter(Sender: TObject);
begin
  qryHistory.Open;
end;

procedure TTransferReceivefrm.btnRefresh3Click(Sender: TObject);
begin
  qryHistory.close;
  qryHistory.Open;
end;

procedure TTransferReceivefrm.ElPopupButton4Click(Sender: TObject);
begin

  if not ShowMessageUnicode(23,'',4) = 7 then exit;

  qryHistory.close;
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'delete from TRANSFER_LOG';
  maindm.qryCommon.ExecSQL;

end;

procedure TTransferReceivefrm.btnCloseClick(Sender: TObject);
begin
  pnlRecurrence.Visible := FALSE;
end;

procedure TTransferReceivefrm.chkAutoTransferClick(Sender: TObject);
begin
    MainDM.qryTransferInfo.Edit;
    if chkAutoTransfer.Checked then
    begin
      locManual.Enabled := false;
      locAutoTime.Enabled := True;
      end
    else
      begin
       
      locManual.Enabled := True;
      locAutoTime.Enabled := False;
    end;
end;

procedure TTransferReceivefrm.btnClose5Click(Sender: TObject);
begin
  pnlUpdateRecurr.Visible := FALSE;
end;

procedure TTransferReceivefrm.btnRecUpdateClick(Sender: TObject);
begin
    if spnTransFromTime.Time > spnTransToTime.Time then
    begin
      pgcMain.ActivePage := tsTransfer;
      HintBox(237,Self,spnTransToTime);
      Abort;
      Exit;
    end;
    if spnUpdateFromTime.Time > spnUpdateToTime.Time then
    begin
      pgcMain.ActivePage := tsUpdate;
      HintBox(237,Self,spnUpdateToTime);
      Abort;
      Exit;
    end;
    
    pnlUpdateRecurr.Visible := True;
    pnlUpdateRecurr.Top := btnRecUpdate.top;
    pnlUpdateRecurr.Left :=Floor((locUpdate.width)/2)-190;

    if not (MainDM.qryTransferInfo.state in [dsInsert,dsEdit]) then
      MainDM.qryTransferInfo.Edit;

    Case MainDM.qryTransferInfoUPDATE_RECURR_TYPE.Value of
      1: rbUpdateDay.Click;
      2: rbUpdateWeek.click;
      3: rbUpdateMonth.click;
    end;
end;

procedure TTransferReceivefrm.rbUpdateDayClick(Sender: TObject);
begin
  if not (MainDM.qryTransferInfo.State in [dsEdit,dsInsert]) then
      MainDM.qryTransferInfo.Edit;
  MainDM.qryTransferInfoUPDATE_RECURR_TYPE.Value :=1;

  locUpdateWeekDay.Visible := FALSE;
  locUpdateDay.Visible :=true;
  locUpdateMonth.Visible :=FALSE;
  locUpdateWeek.Visible :=FALSE;

end;

procedure TTransferReceivefrm.rbUpdateWeekClick(Sender: TObject);
begin
  if not (MainDM.qryTransferInfo.State in [dsEdit,dsInsert]) then
      MainDM.qryTransferInfo.Edit;
  MainDM.qryTransferInfoUPDATE_RECURR_TYPE.Value :=2;

  locUpdateWeekDay.Visible := TRUE;
  locUpdateDay.Visible :=FALSE;
  locUpdateMonth.Visible :=FALSE;
  locUpdateWeek.Visible :=TRUE;

end;

procedure TTransferReceivefrm.rbUpdateMonthClick(Sender: TObject);
begin
    if not (MainDM.qryTransferInfo.State in [dsEdit,dsInsert]) then
      MainDM.qryTransferInfo.Edit;
  MainDM.qryTransferInfoUPDATE_RECURR_TYPE.Value :=3;

  locUpdateWeekDay.Visible := FALSE;
  locUpdateDay.Visible := FALSE;
  locUpdateMonth.Visible :=TRUE;
  locUpdateWeek.Visible :=FALSE;

end;

procedure TTransferReceivefrm.chkAutoUpdateClick(Sender: TObject);
begin

  if chkAutoUpdate.Checked then
  begin
      locUpdateTime.Enabled := TRUE;
      locManualUpdate.Enabled := FALSE;

  end
  else
    begin
      locUpdateTime.Enabled := FALSE;
      locManualUpdate.Enabled := TRUE;
  end;
end;

procedure TTransferReceivefrm.Timer2Timer(Sender: TObject);
begin

    if (MainDM.TransferUpdateAction = 1)
        and (not bWorking) and (not vpIsTransfered) then
    //Auto transfer and update
    begin
      bWorking := TRUE;
      pgcMain.ActivePage := tsTransfer;
      Screen.Cursor := crHourGlass;
      memLog.Close;         // Tat memlog de tao ra memlog backup

      BuildAndSaveScript(GenerateFileName);

      ReadFileList(MainDM.qryTransferInfoUPLOAD_DIR.Value,1);

      UpLoadFile;           // Bat dau tai file len,

      AddTransferedLogToDB; // Ghi lai nhat ky
      CreateUpLoadBackup;   // Tao thu muc backup
      ListFile.Clear;
      vpIsTransfered := TRUE;
      bWorking := FALSE;
      Screen.Cursor := crDefault;
      self.Close;
    end;

    if (MainDM.TransferUpdateAction = 2) and (not bWorking) then
    begin
      pgcMain.ActivePage := tsUpdate;
      //Updatedata;
    end
end;

procedure TTransferReceivefrm.ElPopupButton2Click(Sender: TObject);
begin
    MainDM.qryTransferInfoUPLOAD_DIR.Value := UpDir.Text;
    MainDM.qryTransferInfoDOWNLOAD_DIR.Value := DownDir.Text;
    if spnTransFromTime.Time > spnTransToTime.Time then
    begin
      pgcMain.ActivePage := tsTransfer;
      HintBox(237,Self,spnTransToTime);
      Abort;
      Exit;
    end;
    if spnUpdateFromTime.Time > spnUpdateToTime.Time then
    begin
      pgcMain.ActivePage := tsUpdate;
      HintBox(237,Self,spnUpdateToTime);
      Abort;
      Exit;
    end;
    acInfoPost.Execute;
end;

procedure TTransferReceivefrm.ElPopupButton3Click(Sender: TObject);
begin
    MainDM.qryTransferInfoUPLOAD_DIR.Value := UpDir.Text;
    MainDM.qryTransferInfoDOWNLOAD_DIR.Value := DownDir.Text;
    if spnTransFromTime.Time > spnTransToTime.Time then
    begin
      pgcMain.ActivePage := tsTransfer;
      HintBox(237,Self,spnTransToTime);
      Abort;
    end;
    if spnUpdateFromTime.Time > spnUpdateToTime.Time then
    begin
      pgcMain.ActivePage := tsUpdate;
      HintBox(237,Self,spnUpdateToTime);
      Abort;
    end;
    acInfoPost.Execute;
end;

procedure TTransferReceivefrm.SetVisible(Visible: Boolean);
begin
    if Visible then
    begin
      btnCloseFrm.Enabled := TRUE;
      btnTestConnection.Enabled:=TRUE;
      btnGen.Enabled:=TRUE;
      btnTransfer.Enabled:=TRUE;
      btnRec.Enabled:=TRUE;
      btnRefresh1.Enabled:=TRUE;
      btnRefresh2.Enabled:=TRUE;
      btnRefresh3.Enabled:=TRUE;
      btnRecUpdate.Enabled:=TRUE;
      btnUpdate.Enabled:=TRUE;
      end
    else
    begin
      btnCloseFrm.Enabled := FALSE;
      btnTestConnection.Enabled:=FALSE;
      btnGen.Enabled:=FALSE;
      btnTransfer.Enabled:=FALSE;
      btnRec.Enabled:=FALSE;
      btnRefresh1.Enabled:=FALSE;
      btnRefresh2.Enabled:=FALSE;
      btnRefresh3.Enabled:=FALSE;
      btnRecUpdate.Enabled:=FALSE;
      btnUpdate.Enabled:=FALSE;
    end;

end;

procedure TTransferReceivefrm.DrawAnimation(Idx: TImageIndex);
begin
  if (Idx >= 0) and (Idx < AnimationImgs.Count) then
    with Animation.Canvas do
    begin
      Brush.Color := Color;
      FillRect(Animation.ClientRect);
      AnimationImgs.Draw(Animation.Canvas, 0, 0, Idx);
      Animation.Invalidate;
    end;
end;

procedure TTransferReceivefrm.Timer1Timer(Sender: TObject);
begin
    if (FAnimIdx < FirstAnim) or (FAnimIdx > LastAnim) then
    FAnimIdx := FirstAnim;
    DrawAnimation(FAnimIdx);
    Inc(FAnimIdx);
    Application.ProcessMessages;
    DrawAnimation(FAnimIdx);
    //Process bar
    Application.ProcessMessages;

end;

procedure TTransferReceivefrm.BuildAndSaveScript(TenFile: String);
var i : integer;
    SQLScript : string;
begin
    qryCommon.ParamByName('tungay').Value := dedtCurDate1.Date;
    qryCommon.ParamByName('denngay').Value := dedtCurDate2.Date;
    qryCommon.Prepare;
    qryCommon.open;
    i := 0;
    while not qryCommon.eof do
    begin
      SQLScript := SQLScript + qryCommonLOG_CONTENT.value + #13#10;
      i := i+1;

      if i = 500 then
      begin
          SQLScript := SQLScript + #13#10 + 'Commit work;' + #13#10;
          if isFirst then begin
            isFirst := False;
            SaveToTextFile(TenFile,SQLScript);
          end
          else
            AppendToTextFile(TenFile,SQLScript);
          i := 0;
          SQLScript :='';
      end;

      qryCommon.Next;
    end; //End qryCommon

    SQLScript := SQLScript + #13#10 + 'Commit work;' + #13#10;
    if isFirst then
        SaveToTextFile(TenFile,SQLScript)
    else
        AppendToTextFile(TenFile,SQLScript);

    isFirst := TRUE;
end;

procedure TTransferReceivefrm.acGenFileExecute(Sender: TObject);
var FileSearch: TSearchRec;
begin
  if not ShowMessageUnicode(234,'',4) = 7 then exit;
  if dedtCurDate2.Date < dedtCurDate1.Date then
  begin
      dedtCurDate2.Focused;
      HintBox(110,Self,dedtCurDate2);
      Exit;
  end ;

  //Ton tai file chua truyen, ban muon ps file moi chong len file nay?
  if FindFirst(MainDM.qryTransferInfoUPLOAD_DIR.Value+'*.ssp',faAnyFile,FileSearch) = 0 then
    if not ShowMessageUnicode(1,'',4) = 7 then exit;

  DeleteFile(MainDM.qryTransferInfoUPLOAD_DIR.Value+'*.ssp');

  bworking := TRUE;
  btnTransfer.Enabled := FALSE;
  memLog.Close;
  BuildAndSaveScript(GenerateFileName);
  ListFile.Clear;
  ReadFileList(MainDM.qryTransferInfoUPLOAD_DIR.Value,1);
  btnTransfer.enabled := TRUE;
  bworking := FALSE;
end;

procedure TTransferReceivefrm.acTransferExecute(Sender: TObject);
begin

    if not ShowMessageUnicode(235,'',4) = 7 then exit;
    if ListFile.Count = 0 then exit;

    btnGen.enabled := FALSE;
    bWorking := TRUE;
    memLog.Close; // Tat memlog de tao ra memlog backup

    UpLoadFile;   // Bat dau tai file len,

    AddTransferedLogToDB; // Ghi lai nhat ky
    CreateUpLoadBackup; // Tao thu muc backup
    ListFile.Clear;
    ReadFileList(MainDM.qryTransferInfoUPLOAD_DIR.value,1);
    btnGen.enabled := TRUE;
    bWorking := FALSE;
end;

procedure TTransferReceivefrm.acUpdateExecute(Sender: TObject);
var FileSearch:TSearchRec;
    strBegin:WideString;
begin
    if not ShowMessageUnicode(236,'',4) = 7 then exit;

    if ListFile.Count = 0 then exit;
    bWorking := TRUE;
    memLog.Close; // Tat memlog de tao ra memlog backup

    Updatedata;   // Bat dau cap nhat file
    AddUpdatedLogToDB; // Ghi lai nhat ky
    CreateUpdateBackup; // Tao thu muc backup
    ListFile.Clear;
    ReadFileList(MainDM.qryTransferInfoUPLOAD_DIR.value,1);
    bWorking := FALSE;
end;

procedure TTransferReceivefrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if MainDM.qryTransferInfo.State in [dsInsert, dsEdit] then
    MainDM.qryTransferInfo.post;

  if qryHSCT.State in [dsInsert, dsEdit] then
    qryHSCT.Post;
end;

procedure TTransferReceivefrm.edtPasswordKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if not (qryHSCT.State in [dsEdit,dsInsert]) then
      qryHSCT.Edit;

    qryHSCTFTP_PASSWORD.Value := SSPEncode(edtPassword.Text);
end;

procedure TTransferReceivefrm.chkActiveTriggerClick(Sender: TObject);
begin
    if chkActiveTrigger.Checked then
    begin
       activetrigger.Execute;
       activetrigger.IB_Transaction.CommitRetaining;
    end
    else
    begin
       inactivetrigger.Execute;
       inactivetrigger.IB_Transaction.CommitRetaining;
    end
end;

procedure TTransferReceivefrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

end.
