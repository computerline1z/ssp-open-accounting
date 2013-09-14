unit BeginForeign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, ElCaption;

type
  TBeginForeignFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdObj: TdxDBGrid;
    Col_Name: TdxDBGridColumn;
    Col_No: TdxDBGridCalcColumn;
    Col_Co: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    Col_ID: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdObjNT: TdxDBGridPopupColumn;
    ElFormCaption1: TElFormCaption;
    grdObjDEBIT_VND: TdxDBGridCalcColumn;
    grdObjCREDIT_VND: TdxDBGridCalcColumn;
    grdObjTYGIA: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure Col_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjNTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjEnter(Sender: TObject);
    procedure grdObjChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    isErrorValueAcc:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeginForeignFrm: TBeginForeignFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus;


{$R *.dfm}

procedure TBeginForeignFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  Col_No.SummaryFooterFormat:=NGOAITE_FORMAT;
  Col_Co.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdObjDEBIT_VND.SummaryFooterFormat:=TIENTE_FORMAT;
  grdObjCREDIT_VND.SummaryFooterFormat:=TIENTE_FORMAT;

  if prmUSEUPPERCASE then
  begin
    Col_ID.CharCase:=ecUpperCase;
    grdObjNT.CharCase:=ecUpperCase;
  end;

  MainDM.qryPAcc.Open;
  with MainDM do
  begin
    qryPCurrency.Open;
    qryPAcc.Open;
//[NXHop them]
    qryPAcc.Filtered:=false;
//
    qryBeginFBal.Close;
    qryBeginFBal.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryBeginFBal.ParamByName('BRANCH_ID').Value:=vpBranch_id ;
    qryBeginFBal.Open;
    

    if CurrentPeriod=BeginPeriod then
      qryBeginFBal.ReadOnly := False
    else
    begin
      btnIns.Visible:=False;
      btnDel.Visible:=False;
      btnPost.Visible:=False;
      btnCancel.Visible:=False;
      qryBeginFBal.ReadOnly := True;
    end;
  end;

  if vpBranch_IsMin <> 1 then
      maindm.qryBeginFBal.ReadOnly := TRUE
  else
      maindm.qryBeginFBal.ReadOnly := false;
  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TBeginForeignFrm.Col_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryBeginFBal.Edit;
    qryBeginFBalACCOUNT_ID.Value := qryPAccACCOUNT_ID.Value;
    Text := qryPAccACCOUNT_ID.Value;
    qryBeginFBalACCOUNT_NAME.Value := qryPAccACCOUNT_NAME.Value;
  end;
end;

procedure TBeginForeignFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM do
  begin
    IF qryBeginFBal.State in [dsInsert, dsEdit] then
      if ShowMessageUnicode(21,'',4)=6 then
        qryBeginFBal.Post;
    qryBeginFBal.Close;
    qryPAcc.Close;
  end;
end;

procedure TBeginForeignFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TBeginForeignFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TBeginForeignFrm.grdObjNTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPCurrencyCURRENCY_ID.Value;
end;

procedure TBeginForeignFrm.grdObjEnter(Sender: TObject);
begin
  if (MainDM.qryBeginFBal.RecordCount=0) and (MainDM.qryBeginFBal.ReadOnly = FALSE) then
    MainDM.qryBeginFBal.Insert;
end;

procedure TBeginForeignFrm.grdObjChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if grdObj.FocusedField.FieldName<>'ACCOUNT_ID' then
    if MainDM.KiemtrahopleTKBeginFBal=False then
    begin
      isErrorValueAcc:=True;
      MainDM.qryBeginFBalACCOUNT_ID.FocusControl;
      Abort;
      exit;
    end
    else
      isErrorValueAcc:=False;
  if isErrorValueAcc=False then
    if grdObj.FocusedField.FieldName<>'CURRENCY_ID' then
      if MainDM.KiemtrahopleTTBeginFBal=False then
      begin
        MainDM.qryBeginFBalCURRENCY_ID.FocusControl;
        Abort;
        exit;
      end;
end;

procedure TBeginForeignFrm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBeginForeignFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBeginForeignFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
