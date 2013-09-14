unit InstockForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp, 
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  TInstockFrm = class(TForm)
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
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFormItem3: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridCalcColumn5: TdxDBGridCalcColumn;
    dxDBGridCalcColumn6: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaHH: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxDBPopupEdit2: TdxDBPopupEdit;
    locFormItem1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    locFormItem10: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    ElPopupButton1: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    locFormGroup4: TdxLayoutGroup;
    locFormGroup5: TdxLayoutGroup;
    locFormGroup3: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    acDelete: TDataSetDelete;
    grdKHBEGIN_PRICE: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit2Exit(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InstockFrm: TInstockFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus;


{$R *.dfm}

procedure TInstockFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxDBPopupEdit1.CharCase:=ecUpperCase;
    dxDBPopupEdit2.CharCase:=ecUpperCase;
    colMaHH.CharCase:=ecUpperCase;
  end;
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  dxDBGridCalcColumn5.SummaryFooterFormat:=SOLUONG_FORMAT;
  dxDBGridCalcColumn6.SummaryFooterFormat:=TIENTE_FORMAT;

  with MainDM do
  begin
    FilterAccType:=2;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
    
    qryPWare.Open;
    qryInstock.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    qryInstock.ParamByName('BRANCH_ID').Value:=vpBranch_id;
    qryInstock.Open;
   

    qryInstock.Filtered:=True;

    MainDM.CurObjTypeID:=2;
  end;
  if vpBranch_IsMin <> 1 then
    begin
      maindm.qryInstock.ReadOnly := TRUE;
      ElPopupButton1.Enabled := FALSE;
    end
  else
    begin
      maindm.qryInstock.ReadOnly := FALSE;
      ElPopupButton1.Enabled := TRUE;
    end;
  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
end;
procedure TInstockFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryInstock.Edit;
    qryInstockOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryInstockOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TInstockFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with MainDM do
  begin
    IF qryInstock.State in [dsInsert, dsEdit] then
      if ShowMessageUnicode(21,'',4)=6 then
        qryInstock.Post;

    qryInstock.Close;
  end;
end;

procedure TInstockFrm.dxDBPopupEdit2Exit(Sender: TObject);
begin
  with MainDM do
  if qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    qryPAccACCOUNT_ID.FocusControl;
    exit;
  end;
end;

procedure TInstockFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
//  if Accept then
  begin
    MainDM.qryInstock.Refresh;
    //MainDM.qryInstock.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
    //MainDM.qryInstock.Open;
    //MainDM.qryInstock.Filtered:=True;
  end;
end;

procedure TInstockFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TInstockFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TInstockFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if grdKH.FocusedField.FieldName<>'OBJECT_ID' then
    if MainDM.KiemtrahopleInstock=False then
    begin
      MainDM.qryInstockOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TInstockFrm.ElPopupButton1Click(Sender: TObject);
begin

  if MainDM.qryPAccISMIN.AsInteger=0 then
  begin
    ShowMessageUnicode(27);
    dxDBPopupEdit2.SetFocus;
    exit;
  end;
  
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure sp_phatsinhtonkho(:KYHT, :MAKHO,:SHTK,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').AsInteger := CurrentPeriod;
    ParamByName('MAKHO').Value := MainDM.qryPWareWAREHOUSE_ID.Value;
    ParamByName('SHTK').Value := MainDM.qryPAccACCOUNT_ID.Value;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;
  MainDM.qryInstock.Refresh;
end;

procedure TInstockFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TInstockFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TInstockFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
