unit MaterialUnfinishForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TMaterialUnfinishFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    dxDBGridColumn6: TdxDBGridColumn;
    grdKHColSLDK: TdxDBGridCalcColumn;
    grdKHColGTDK: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaNVL: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdKHColSLXD: TdxDBGridColumn;
    grdKHColGTXD: TdxDBGridColumn;
    grdKHColSLPB: TdxDBGridColumn;
    grdKHColGTPB: TdxDBGridColumn;
    grdKHColSLTon: TdxDBGridColumn;
    grdKHColGTTon: TdxDBGridColumn;
    dxPopupEdit1: TdxPopupEdit;
    locFormItem1: TdxLayoutItem;
    dxEdit1: TdxEdit;
    locFormItem3: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qryMaterialUnfinish: TIBOQuery;
    qryMaterialUnfinishMALOAI: TSmallintField;
    qryMaterialUnfinishPERIOD_ID: TSmallintField;
    qryMaterialUnfinishMAPX: TWideStringField;
    qryMaterialUnfinishOBJECT_NAME: TWideStringField;
    dsMaterialUnfinish: TDataSource;
    qryMaterialUnfinishBEGIN_AMOUNT: TIBOFloatField;
    qryMaterialUnfinishIN_AMOUNT: TIBOFloatField;
    qryMaterialUnfinishALLOCATE_AMOUNT: TIBOFloatField;
    qryMaterialUnfinishBEGIN_VALUE: TIBOFloatField;
    qryMaterialUnfinishIN_VALUE: TIBOFloatField;
    qryMaterialUnfinishALLOCATE_VALUE: TIBOFloatField;
    qryMaterialUnfinishOBJECT_ID: TWideStringField;
    qryMaterialUnfinishOTYPE_ID: TSmallintField;
    qryMaterialUnfinishEND_AMOUNT: TIBOFloatField;
    qryMaterialUnfinishEND_VALUE: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure colMaNVLCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure qryMaterialUnfinishAfterInsert(DataSet: TDataSet);
    procedure qryMaterialUnfinishBeforeDelete(DataSet: TDataSet);
    procedure qryMaterialUnfinishBeforeEdit(DataSet: TDataSet);
    procedure qryMaterialUnfinishBeforeInsert(DataSet: TDataSet);
    procedure qryMaterialUnfinishBeforePost(DataSet: TDataSet);
    procedure qryMaterialUnfinishNewRecord(DataSet: TDataSet);
    procedure qryMaterialUnfinishPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryMaterialUnfinishEND_AMOUNTChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialUnfinishFrm: TMaterialUnfinishFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TMaterialUnfinishFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxPopupEdit1.CharCase:=ecUpperCase;
    colMaNVL.CharCase:=ecUpperCase;
  end;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  
  grdKHColSLDK.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHColSLXD.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHColSLPB.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHColSLTon.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHColGTDK.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColGTXD.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColGTPB.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColGTTon.SummaryFooterFormat:=TIENTE_FORMAT;

  qryMaterialUnfinishBEGIN_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryMaterialUnfinishIN_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryMaterialUnfinishALLOCATE_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryMaterialUnfinishEND_VALUE.DisplayFormat:=TIENTE_FORMAT;

  qryMaterialUnfinishBEGIN_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialUnfinishIN_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialUnfinishALLOCATE_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialUnfinishEND_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;

  grdKHColSLDK.DisableEditor:=(CurrentPeriod<>BeginPeriod);
  grdKHColGTDK.DisableEditor:=(CurrentPeriod<>BeginPeriod);

  if CurrentPeriod<>BeginPeriod then
  begin
    btnIns.Visible:=False;
    btnDel.Visible:=False;
    btnPost.Visible:=False;
    btnCancel.Visible:=False;
    colMaNVL.DisableEditor:=True;
  end;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TMaterialUnfinishFrm.colMaNVLCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryMaterialUnfinish.Edit;
    qryMaterialUnfinishOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryMaterialUnfinishOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TMaterialUnfinishFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMaterialUnfinish.Close;
end;

procedure TMaterialUnfinishFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TMaterialUnfinishFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,3);
end;

procedure TMaterialUnfinishFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TMaterialUnfinishFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TMaterialUnfinishFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TMaterialUnfinishFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active:=dxBarButton1.Down;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishAfterInsert(
  DataSet: TDataSet);
begin
  qryMaterialUnfinishOBJECT_ID.FocusControl;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishBeforeDelete(
  DataSet: TDataSet);
begin
  if CurrentPeriod<>BeginPeriod then Abort;

  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishBeforeEdit(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishBeforeInsert(DataSet: TDataSet);
begin
  if CurrentPeriod<>BeginPeriod then Abort;
  
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishBeforePost(
  DataSet: TDataSet);
begin
  if KiemtraHople = False then
  begin
    ShowMessageUnicode(125);
    qryMaterialUnfinishOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  qryMaterialUnfinishPERIOD_ID.Value := CurrentPeriod;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishNewRecord(
  DataSet: TDataSet);
begin
  qryMaterialUnfinishMAPX.Value := dxPopupEdit1.Text;
  qryMaterialUnfinishMALOAI.AsInteger :=6;
  qryMaterialUnfinishOTYPE_ID.AsInteger:=2;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
rs : Integer;
begin
  Action := daAbort;
  rs:=ProcessErr(E,'',0);
  case rs of
    -803://Trung khoa
    begin
      ShowMessageUnicode(163);
    end;
    -530://khoa ngoai
    begin
      ShowMessageUnicode(164);
    end;
  end;
end;

function TMaterialUnfinishFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryMaterialUnfinish.State in [dsInsert, dsEdit]) then exit;
  
  Result:=MainDM.CheckObject(qryMaterialUnfinishOBJECT_ID.Value,2);
  if Result then
  begin
    if qryMaterialUnfinishOBJECT_ID.Value <> MainDM.CurObjID then
      qryMaterialUnfinishOBJECT_ID.Value := MainDM.CurObjID;
      
    qryMaterialUnfinishOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryMaterialUnfinishOBJECT_NAME.Clear;
end;

procedure TMaterialUnfinishFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBEJCT_ID') then
    if KiemtraHople=False then
    begin
      qryMaterialUnfinishOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TMaterialUnfinishFrm.dxPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;
end;

procedure TMaterialUnfinishFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
end;

procedure TMaterialUnfinishFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit1.Text:= MainDM.dsPComObj.DataSet.FieldByName('OBJECT_ID').Value;
    //Thinh sua
    if MainDM.qryPComObjOBJECT_NAME.IsNull then
      dxEdit1.Text:= ''
    else
      dxEdit1.Text:=MainDM.qryPComObjOBJECT_NAME.value;//dsPComObj.DataSet.FieldByName('OBJECT_NAME').Value;
      
    grdKH.SetFocus;
  end;
end;

procedure TMaterialUnfinishFrm.dxPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  begin
      if not CheckObject(dxPopupEdit1.Text,6) then
      begin
        ShowMessageUnicode(100);
        dxPopupEdit1.SetFocus;
        exit;
      end;
    if dxPopupEdit1.Text<>CurObjID then
      dxPopupEdit1.Text:=CurObjID;
    dxEdit1.Text:=CurObjName;
  end;
  if qryMaterialUnfinish.Active then exit;
  qryMaterialUnfinish.ParamByName('MAPX').Value:=dxPopupEdit1.Text;
  qryMaterialUnfinish.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qryMaterialUnfinish.Open;
end;

procedure TMaterialUnfinishFrm.dxPopupEdit1Change(Sender: TObject);
begin
  qryMaterialUnfinish.Close;
end;

procedure TMaterialUnfinishFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TMaterialUnfinishFrm.qryMaterialUnfinishEND_AMOUNTChange(
  Sender: TField);
var
  Soluong,Giatri:Double;
begin
  Soluong:=qryMaterialUnfinishBEGIN_AMOUNT.AsFloat+qryMaterialUnfinishIN_AMOUNT.AsFloat;
  Giatri:=qryMaterialUnfinishBEGIN_VALUE.AsFloat+qryMaterialUnfinishIN_VALUE.AsFloat;
  if Soluong<>0 then
    qryMaterialUnfinishEND_VALUE.AsFloat:=Round(qryMaterialUnfinishEND_AMOUNT.AsFloat*Giatri/Soluong);
end;

procedure TMaterialUnfinishFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TMaterialUnfinishFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
