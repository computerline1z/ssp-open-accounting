unit GenDocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, dxExEdtr, TntStdCtrls,dxBar,
  ElXPThemedControl, ElEdits, ElCaption, ElCheckCtl, ElBtnCtl, ElPopBtn,
  dxLayoutLookAndFeels;

type
  TGenDocFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnCancel: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnOK: TELPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    rbPSPT: TElRadioButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    rbPSTT: TElRadioButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxCalcEdit1: TdxCalcEdit;
    locST: TdxLayoutItem;
    dxSpinEdit1: TdxSpinEdit;
    locPT: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPopupEdit2: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxPopupEdit3: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxSpinEdit2: TdxSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxEdit1: TdxEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxButtonEdit1: TdxButtonEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxEdit2: TdxEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxPopupEdit4: TdxPopupEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxCalcEdit2: TdxCalcEdit;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxPopupEdit5: TdxPopupEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxEdit3: TdxEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxSpinEdit3: TdxSpinEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxSpinEdit4: TdxSpinEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure rbPSPTClick(Sender: TObject);
    procedure rbPSTTClick(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit2Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure dxPopupEdit3InitPopup(Sender: TObject);
    procedure dxCalcEdit1Exit(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure dxCalcEdit1Enter(Sender: TObject);
    procedure dxPopupEdit2Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure dxCalcEdit2Enter(Sender: TObject);
    procedure dxCalcEdit2Exit(Sender: TObject);
    procedure dxPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit5InitPopup(Sender: TObject);
    procedure dxPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit5Exit(Sender: TObject);
  private
    { Private declarations }
    Tongtienhang:Double;
    TyGiaQuidoi:Double;
  public
    GenFromDocID:WideString;//So phieu va ky hach toan cua phieu can Gen
    GenFromPeriod:Smallint;
    GenFromBranch :widestring;
    { Public declarations }
  end;

var
  GenDocFrm: TGenDocFrm;

implementation

uses PopupForm, MainDataMdl, GlobalUnit, MaskUtils,  Functions, DB;

{$R *.dfm}

procedure TGenDocFrm.BitBtn1Click(Sender: TObject);
begin
  Application.HelpContext(8);
end;

procedure TGenDocFrm.rbPSPTClick(Sender: TObject);
begin
  locPT.Enabled:=True;
  locST.Enabled:=False;
  dxCalcEdit1.Text:='0';
end;

procedure TGenDocFrm.rbPSTTClick(Sender: TObject);
begin
  locPT.Enabled:=False;
  locST.Enabled:=True;
  dxSpinEdit1.Value:=0;
end;

procedure TGenDocFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := MainDM.qryPAccACCOUNT_ID.Value;
    dxEdit2.Text:= MainDM.qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TGenDocFrm.dxPopupEdit3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TGenDocFrm.dxPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := vpItemID;
    dxEdit1.Text := vpItemName;
  end;
end;

procedure TGenDocFrm.dxPopupEdit2Exit(Sender: TObject);
begin
  if dxPopupEdit2.Text='' then
    dxEdit1.Text:='';
end;

procedure TGenDocFrm.btnOKClick(Sender: TObject);
begin
  if ((rbPSPT.Checked) and (dxSpinEdit1.IntValue=0)) then
  begin
    ShowMessageUnicode(146);
    dxSpinEdit1.SetFocus;
    exit;
  end;
  if ((rbPSTT.Checked) and (Tongtienhang=0)) then
  begin
    ShowMessageUnicode(147);
    dxCalcEdit1.SetFocus;
    exit;
  end;

  MainDM.qryPCurrency.Open;
  if Not MainDM.qryPCurrency.Locate('CURRENCY_ID',dxPopupEdit4.Text,[]) then
  begin
    ShowMessageUnicode(20);
    dxPopupEdit4.SetFocus;
    exit;
  end;

  {if dxButtonEdit1.Text=GenFromDocID then
  begin
    ShowMessageUnicode(81);
    dxButtonEdit1.SetFocus;
    exit;
  end;}
  
  if dxPopupEdit1.Text='' then
  begin
    ShowMessageUnicode(67);
    dxPopupEdit1.SetFocus;
    exit;
  end;
  //Kiem tar tai khoan co
  if FilterAccType<>1 then
  with MainDM do
  begin
    FilterAccType:=1;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
  with MainDM do
  if qryPAccACCOUNT_ID.Value<>dxPopupEdit1.Text then
  if qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit1.Text,[])=False then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit1.SetFocus;
    exit;
  end
  else if qryPAccISMIN.AsInteger=0 then
  begin
    ShowMessageUnicode(27);
    dxPopupEdit1.SetFocus;
    exit;
  end;
  //Kiem tar tai khoan vat
  if dxSpinEdit2.IntValue<>0 then
  with MainDM do
  begin
    FilterAccType:=12;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
    if qryPAccACCOUNT_ID.Value<>dxPopupEdit3.Text then
    if qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit3.Text,[])=False then
    begin
      ShowMessageUnicode(42);
      dxPopupEdit3.SetFocus;
      exit;
    end
    else if qryPAccISMIN.AsInteger=0 then
    begin
      ShowMessageUnicode(27);
      dxPopupEdit3.SetFocus;
      exit;
    end;
  end;
  with MainDM do
  begin
    FilterAccType:=1;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
  with MainDM do
    if qryPAccACCOUNT_ID.Value<>dxPopupEdit1.Text then
      qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit1.Text,[]);

  if MainDM.qryPAccOTYPE_ID.AsInteger<>0 then
  if Not MainDM.CheckObject(dxPopupEdit2.Text,MainDM.qryPAccOTYPE_ID.AsInteger) then
  begin
    ShowMessageUnicode(91);
    dxPopupEdit2.SetFocus;
    exit;
  end;
  if dxPopupEdit2.Text<>MainDM.CurObjID then
    dxPopupEdit2.Text:=MainDM.CurObjID;

  MainDM.qryCommon.Tag :=1;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_phatsinhphieunhap (:SOPHIEU,:KYHT,:LOAIPS,:PTPS,:TONGTIEN,:TIENTE,:TYGIA,:SPPSRA,:SHTKCO,:MAKH,:LOAIDT,:PTVAT,:SHTKVAT,:FROMID,:TOID,:TKNO,:BRANCH_ID)';
    Prepare;

    ParamByName('SOPHIEU').Value := GenFromDocID;
    if rbPSPT.Checked then
      ParamByName('LOAIPS').Value :=0
    else
      ParamByName('LOAIPS').Value :=1;
    ParamByName('PTPS').Value :=dxSpinEdit1.Value;
    if dxCalcEdit1.Text='' then
      ParamByName('TONGTIEN').Value :=0
    else
      ParamByName('TONGTIEN').Value :=Tongtienhang;
    ParamByName('TIENTE').Value := MainDM.qryPCurrencyCURRENCY_ID.Value;
    ParamByName('TYGIA').Value := TyGiaQuidoi;
    ParamByName('KYHT').Value := GenFromPeriod;
    ParamByName('SPPSRA').Value := dxButtonEdit1.Text;
    ParamByName('SHTKCO').Value := dxPopupEdit1.Text;
    if MainDM.qryPAccOTYPE_ID.AsInteger<>0 then
    begin
      ParamByName('MAKH').Value := Trim(dxPopupEdit2.Text);
      ParamByName('LOAIDT').Value := MainDM.qryPAccOTYPE_ID.Value;
    end;
    ParamByName('PTVAT').Value := dxSpinEdit2.Value;
    ParamByName('SHTKVAT').Value := dxPopupEdit3.Text;
    ParamByName('FROMID').Value := dxSpinEdit3.Text;
    ParamByName('TOID').Value := dxSpinEdit4.Text;
    ParamByName('TKNO').Value := dxPopupEdit5.Text;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  if MainDM.qryCommon.Tag<>1 then
  begin
    if MainDM.qryCommon.Tag=-803 then
      dxButtonEdit1.SetFocus;
    if MainDM.qryCommon.Tag=-530 then
      dxPopupEdit2.SetFocus;
    MainDM.qryCommon.Tag :=0;
    exit;
  end;
  MainDM.qryCommon.Tag :=0;

  Self.Close;
  SPPHATSINHRA := dxButtonEdit1.Text;
end;

procedure TGenDocFrm.TntFormShow(Sender: TObject);
begin
  dxButtonEdit1.Text := GenFromDocID;
  SetVisible(Self);  
end;

procedure TGenDocFrm.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  dxButtonEdit1.Text := MainDM.Phatsinhsophieu();
end;

procedure TGenDocFrm.dxPopupEdit1InitPopup(Sender: TObject);
begin
  if FilterAccType<>1 then
  with MainDM do
  begin
    FilterAccType:=1;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
end;

procedure TGenDocFrm.dxPopupEdit3InitPopup(Sender: TObject);
begin
  if FilterAccType<>12 then
  with MainDM do
  begin
    FilterAccType:=12;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
end;

procedure TGenDocFrm.dxCalcEdit1Exit(Sender: TObject);
begin
  if TryStrToFloat(dxCalcEdit1.Text, Tongtienhang) then
    dxCalcEdit1.Text:= FormatFloat(NGOAITE_FORMAT,Tongtienhang)
  else
  begin
    ShowMessageUnicode(134);
    dxCalcEdit1.SetFocus;
  end;
end;

procedure TGenDocFrm.TntFormCreate(Sender: TObject);
begin
  Tongtienhang:=0;
  TyGiaQuidoi := 1;

  SetCaption(Self);

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
end;

procedure TGenDocFrm.dxCalcEdit1Enter(Sender: TObject);
begin
  dxCalcEdit1.Text :=FloatToStr(Tongtienhang);
end;

procedure TGenDocFrm.dxPopupEdit2Enter(Sender: TObject);
begin
  if dxPopupEdit1.Text='' then
  begin
    dxPopupEdit1.SetFocus;
    Exit;
  end;

  MainDM.qryPAcc.Open;
  if MainDM.qryPAccACCOUNT_ID.Value<>dxPopupEdit1.Text then
  if MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit1.Text,[])=False then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit1.SetFocus;
    exit;
  end;
  MainDM.CurObjTypeID:= MainDM.qryPAccOTYPE_ID.Value;

  if MainDM.CurObjTypeID=0 then
  begin
    dxPopupEdit2.Text:='';
    dxPopupEdit2.Enabled:=False;
    dxSpinEdit2.SetFocus;
  end;
end;

procedure TGenDocFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TGenDocFrm.dxPopupEdit1Exit(Sender: TObject);
begin
  // tradtt: sua loi 1776 - nhap chuot vao ma khong nhap so TK thi khong cho thoat
  if (trim(dxPopupEdit1.Text)='') then exit;

  MainDM.qryPAcc.Open;
  if MainDM.qryPAccACCOUNT_ID.Value<>dxPopupEdit1.Text then
  if MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit1.Text,[])=False then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit1.SetFocus;
    exit;
  end;
  MainDM.CurObjTypeID:= MainDM.qryPAccOTYPE_ID.Value;
  dxPopupEdit2.Enabled:=MainDM.CurObjTypeID<>0;
  if MainDM.CurObjTypeID=0 then
  begin
    dxPopupEdit2.Text:='';
    dxSpinEdit2.SetFocus;
  end;
end;

procedure TGenDocFrm.dxCalcEdit2Enter(Sender: TObject);
begin
  dxCalcEdit2.Text :=FloatToStr(TyGiaQuidoi);
end;

procedure TGenDocFrm.dxCalcEdit2Exit(Sender: TObject);
begin
  if TryStrToFloat(dxCalcEdit2.Text, TyGiaQuidoi) then
    dxCalcEdit2.Text:= FormatFloat(TIENTE_FORMAT,TyGiaQuidoi)
  else
  begin
    ShowMessageUnicode(134);
    dxCalcEdit2.SetFocus;
  end;
end;

procedure TGenDocFrm.dxPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TGenDocFrm.dxPopupEdit5InitPopup(Sender: TObject);
begin
 if FilterAccType<>2then
  with MainDM do
  begin
    FilterAccType:=2;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
end;

procedure TGenDocFrm.dxPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := MainDM.qryPAccACCOUNT_ID.Value;
    dxEdit3.Text:= MainDM.qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TGenDocFrm.dxPopupEdit5Exit(Sender: TObject);
begin
  // tradtt: sua loi 1776 - nhap chuot vao ma khong nhap so TK thi khong cho thoat
  if (trim(dxPopupEdit5.Text)='') then exit;

  MainDM.qryPAcc.Open;
  if MainDM.qryPAccACCOUNT_ID.Value<>dxPopupEdit1.Text then
  if MainDM.qryPAcc.Locate('ACCOUNT_ID',dxPopupEdit5.Text,[])=False then
  begin
    ShowMessageUnicode(42);
    dxPopupEdit5.SetFocus;
    exit;
  end;
end;

end.
