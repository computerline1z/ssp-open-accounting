unit BalDetailForeign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  TBalForeignFrm = class(TForm)
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
    dxDBPopupEdit2: TdxDBPopupEdit;
    locFormItem1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    grdObjDEF_DEBIT: TdxDBGridCalcColumn;
    grdObjDEF_CREDIT: TdxDBGridCalcColumn;
    qryBalForeign: TIBOQuery;
    qryBalForeignOTYPE_ID: TSmallintField;
    qryBalForeignPERIOD_ID: TSmallintField;
    qryBalForeignOBJECT_ID: TWideStringField;
    qryBalForeignACCOUNT_ID: TWideStringField;
    qryBalForeignOBJECT_NAME: TWideStringField;
    qryBalForeignCURRENCY_ID: TWideStringField;
    qryBalForeignBEGIN_DEBIT: TIBOFloatField;
    qryBalForeignBEGIN_CREDIT: TIBOFloatField;
    qryBalForeignDEF_DEBIT: TIBOFloatField;
    qryBalForeignDEF_CREDIT: TIBOFloatField;
    dsBalForeign: TDataSource;
    edtTyGia: TdxCalcEdit;
    locFormItem10: TdxLayoutItem;
    qryBalForeignBRANCH_ID: TWideStringField;
    qryBalForeignCUR_RATE: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Col_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdObjEnter(Sender: TObject);
    procedure grdObjChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryBalForeignAfterInsert(DataSet: TDataSet);
    procedure qryBalForeignBeforeDelete(DataSet: TDataSet);
    procedure qryBalForeignBeforeEdit(DataSet: TDataSet);
    procedure qryBalForeignBeforeInsert(DataSet: TDataSet);
    procedure qryBalForeignBeforePost(DataSet: TDataSet);
    procedure qryBalForeignFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryBalForeignNewRecord(DataSet: TDataSet);
    procedure qryBalForeignPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KiemtrahopleBalForeign:Boolean;
    procedure qryBalForeignBEGIN_DEBITChange(Sender: TField);
    procedure qryBalForeignBEGIN_CREDITChange(Sender: TField);
    procedure edtTyGiaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BalForeignFrm: TBalForeignFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Functions;


{$R *.dfm}

procedure TBalForeignFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  Col_No.SummaryFooterFormat:=NGOAITE_FORMAT;
  Col_Co.SummaryFooterFormat:=NGOAITE_FORMAT;
  grdObjDEF_DEBIT.SummaryFooterFormat:=TIENTE_FORMAT;
  grdObjDEF_CREDIT.SummaryFooterFormat:=TIENTE_FORMAT;

  qryBalForeignBEGIN_DEBIT.DisplayFormat:=NGOAITE_FORMAT;
  qryBalForeignBEGIN_CREDIT.DisplayFormat:=NGOAITE_FORMAT;
  qryBalForeignDEF_DEBIT.DisplayFormat:=TIENTE_FORMAT;
  qryBalForeignDEF_CREDIT.DisplayFormat:=TIENTE_FORMAT;

  if prmUSEUPPERCASE then
  begin
    Col_ID.CharCase:=ecUpperCase;
    dxDBPopupEdit1.CharCase:=ecUpperCase;
    dxDBPopupEdit2.CharCase:=ecUpperCase;
  end;

  with MainDM do
  begin
    FilterAccType:=3;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;
  end;
  MainDM.qryPCurrency.Open;

  qryBalForeign.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryBalForeign.ParamByName('BRANCH_ID').Value:= vpBranch_id ;
  qryBalForeign.Open;

  if CurrentPeriod=BeginPeriod then
  begin
    qryBalForeign.ReadOnly := False;
  end
  else
  begin
    btnIns.Visible:=False;
    btnDel.Visible:=False;
    btnPost.Visible:=False;
    btnCancel.Visible:=False;
    qryBalForeign.ReadOnly := True;
    col_ID.DisableEditor:=True;
    grdObj.ShowNewItemRow:=False;
  end;

  if vpBranch_IsMin <> 1 then
    qryBalForeign.ReadOnly := TRUE
  else qryBalForeign.ReadOnly := FALSE;

  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TBalForeignFrm.Col_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryBalForeign.Edit;
    qryBalForeignOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryBalForeignOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TBalForeignFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IF qryBalForeign.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBalForeign.Post;
  qryBalForeign.Close;
  MainDM.qryPAcc.Filtered:=false;
  MainDM.qryPAcc.Close;
end;

procedure TBalForeignFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  if qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    qryPAccACCOUNT_ID.FocusControl;
    exit;
  end;
  MainDM.CurObjTypeID:= MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TBalForeignFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/ThietLapSoDubanDau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TBalForeignFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  qryBalForeign.OnFilterRecord := qryBalForeignFilterRecord;
  qryBalForeign.Filtered := True;
  {them sua bug 5.0 ID_795}
  if (qryBalForeign.RecordCount>0)then
    edtTyGia.Text := FloatToStr(qryBalForeignCUR_RATE.AsFloat)
  else
    edtTyGia.Text := '0';
  {end them sua bug 5.0 ID_795}
end;

procedure TBalForeignFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryBalForeign.OnFilterRecord := qryBalForeignFilterRecord;
    qryBalForeign.Filtered := True;
  end;
end;

procedure TBalForeignFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TBalForeignFrm.grdObjEnter(Sender: TObject);
begin
  if qryBalForeign.RecordCount=0 then
    qryBalForeign.Insert;
end;

procedure TBalForeignFrm.grdObjChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if grdObj.FocusedField.FieldName<>'OBJECT_ID' then
    if KiemtrahopleBalForeign=False then
    begin
      qryBalForeignOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TBalForeignFrm.grdObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBalForeignFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TBalForeignFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TBalForeignFrm.qryBalForeignAfterInsert(DataSet: TDataSet);
begin
  qryBalForeignOBJECT_ID.FocusControl;
end;

procedure TBalForeignFrm.qryBalForeignBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TBalForeignFrm.qryBalForeignBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TBalForeignFrm.qryBalForeignBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TBalForeignFrm.qryBalForeignBeforePost(DataSet: TDataSet);
var
  Tygia:Double;
begin
  if ImportingFromXLS then exit;

  if qryBalForeignOBJECT_ID.IsNull then
  begin
    ShowMessageUnicode(65);
    qryBalForeignOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if MainDM.qryPAccISMIN.AsInteger<>1 then
  begin
    ShowMessageUnicode(27);
    MainDM.qryPAccACCOUNT_ID.FocusControl;
    Abort;
    exit;
  end;
  if KiemtrahopleBalForeign=False then
  begin
    qryBalForeignOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;

  qryBalForeignCURRENCY_ID.Value := MainDM.qryPCurrencyCURRENCY_ID.Value;
  qryBalForeignACCOUNT_ID.Value := MainDM.qryPAccACCOUNT_ID.Value;
  qryBalForeignOTYPE_ID.Value := MainDM.qryPAccOTYPE_ID.Value;
  qryBalForeignPERIOD_ID.Value := CurrentPeriod;
  {sua loi 5.0 ID_795}
  if Not TryStrToFloat(edtTyGia.Text,Tygia) then
    Tygia:=1;
  qryBalForeignCUR_RATE.Value := TyGia;
end;

procedure TBalForeignFrm.qryBalForeignFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := (qryBalForeignCURRENCY_ID.Value = MainDM.qryPCurrencyCURRENCY_ID.Value);
  Accept := Accept and (qryBalForeignACCOUNT_ID.Value = MainDM.qryPAccACCOUNT_ID.Value);
end;

procedure TBalForeignFrm.qryBalForeignNewRecord(DataSet: TDataSet);
begin
  qryBalForeignCURRENCY_ID.Value := MainDM.qryPCurrencyCURRENCY_ID.Value;
  qryBalForeignACCOUNT_ID.Value := MainDM.qryPAccACCOUNT_ID.Value;
  qryBalForeignOTYPE_ID.Value := MainDM.qryPAccOTYPE_ID.Value;
  qryBalForeignPERIOD_ID.Value := CurrentPeriod;
  qryBalForeignBRANCH_ID.Value := vpBranch_id;
end;

procedure TBalForeignFrm.qryBalForeignPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;

  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  rs:=ProcessErr(E,'', 0);
  case rs of
    -803://Trung khoa
    begin
      ShowMessageUnicode(72,e.Message,0);
    end;
    -530://khoa ngoai
    begin
      ShowMessageUnicode(73,e.Message,0);
    end;
  end;
end;

function TBalForeignFrm.KiemtrahopleBalForeign:Boolean;
begin
  Result:=True;
  if Not (qryBalForeign.State in [dsEdit, dsInsert]) then exit;
  if qryBalForeignOBJECT_ID.IsNull then exit;
  if IsNotHasData(qryBalForeignOBJECT_ID) then exit;

  Result:=False;
  if Not MainDM.CheckObject(qryBalForeignOBJECT_ID.Value,MainDM.CurObjTypeID) then
  begin
    ShowMessageUnicode(66);
    qryBalForeignOBJECT_ID.FocusControl;
    exit;
  end;
  if qryBalForeignOBJECT_ID.Value<>MainDM.CurObjID then
    qryBalForeignOBJECT_ID.Value:=MainDM.CurObjID;

  qryBalForeignOBJECT_NAME.Value := MainDM.CurObjName;
  qryBalForeignOTYPE_ID.AsInteger:=MainDM.CurObjTypeID;

  Result := True;
end;

procedure TBalForeignFrm.qryBalForeignBEGIN_DEBITChange(Sender: TField);
var
  Tygia:Double;
begin
  if Not TryStrToFloat(edtTyGia.Text,Tygia) then
    Tygia:=1;
  qryBalForeignDEF_DEBIT.AsFloat:=qryBalForeignBEGIN_DEBIT.AsFloat*Tygia;
end;

procedure TBalForeignFrm.qryBalForeignBEGIN_CREDITChange(Sender: TField);
var
  Tygia:Double;
begin
  if Not TryStrToFloat(edtTyGia.Text,Tygia) then
    Tygia:=1;
  qryBalForeignDEF_CREDIT.AsFloat:=qryBalForeignBEGIN_CREDIT.AsFloat*Tygia;
end;

procedure TBalForeignFrm.edtTyGiaExit(Sender: TObject);
var
  f:Double;
begin
  if Not TryStrToFloat(edtTyGia.Text,f) then
  begin
    ShowMessageUnicode(128);
    edtTyGia.SetFocus;
  end
  {them sua bug 5.0 ID_795}
  else
  begin
    qryBalForeign.First;
    while not qryBalForeign.Eof do
    begin
      qryBalForeign.Edit;
      qryBalForeignCUR_RATE.Value := f;
      qryBalForeignDEF_CREDIT.AsFloat:=qryBalForeignBEGIN_CREDIT.AsFloat*f;
      qryBalForeignDEF_DEBIT.AsFloat:=qryBalForeignBEGIN_DEBIT.AsFloat*f;
      qryBalForeign.Post;
      qryBalForeign.Next;
    end;
  end;
  {end them sua bug 5.0 ID_795}  
end;

end.
