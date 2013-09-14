unit OtherNormForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TOtherNormFrm = class(TForm)
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
    grdColHS: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaHH: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdColGT: TdxDBGridColumn;
    grdKHColumn6: TdxDBGridColumn;
    dxPopupEdit1: TdxPopupEdit;
    locFormItem3: TdxLayoutItem;
    dxEdit1: TdxEdit;
    locFormItem9: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qryOtherNorm: TIBOQuery;
    qryOtherNormOTHERNORM_ID: TIntegerField;
    qryOtherNormPERIOD_ID: TSmallintField;
    qryOtherNormMALOAI: TSmallintField;
    qryOtherNormOBJECT_NAME: TWideStringField;
    qryOtherNormOTHER_NOTES: TWideStringField;
    qryOtherNormMAPX: TWideStringField;
    dsOtherNorm: TDataSource;
    qryOtherNormSOLUONGTPSX: TIBOFloatField;
    grdKHSLTP: TdxDBGridColumn;
    grdKHGTPB: TdxDBGridColumn;
    qryOtherNormNORM_VALUE: TIBOFloatField;
    qryOtherNormREAL_VALUE: TIBOFloatField;
    qryOtherNormPREAL_VALUE: TIBOFloatField;
    qryOtherNormOBJECT_ID: TWideStringField;
    qryOtherNormOTYPE_ID: TSmallintField;
    qryOtherNormOBJGRP_ID: TWideStringField;
    grdKHOBJGRP_ID: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure qryOtherNormAfterInsert(DataSet: TDataSet);
    procedure qryOtherNormBeforePost(DataSet: TDataSet);
    procedure qryOtherNormNewRecord(DataSet: TDataSet);
    procedure qryOtherNormPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryOtherNormBeforeInsert(DataSet: TDataSet);
    procedure qryOtherNormBeforeDelete(DataSet: TDataSet);
    procedure qryOtherNormBeforeEdit(DataSet: TDataSet);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    intMaxNormID:integer;
  public
    { Public declarations }
  end;

var
  OtherNormFrm: TOtherNormFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TOtherNormFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxPopupEdit1.CharCase:=ecUpperCase;
    colMaHH.CharCase:=ecUpperCase;
  end;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdColHS.SummaryFooterFormat:=TIENTE_FORMAT;
  grdColGT.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHSLTP.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHGTPB.SummaryFooterFormat:=TIENTE_FORMAT;

  qryOtherNormNORM_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryOtherNormREAL_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryOtherNormSOLUONGTPSX.DisplayFormat:=SOLUONG_FORMAT;
  qryOtherNormPREAL_VALUE.DisplayFormat:=TIENTE_FORMAT;
  
  intMaxNormID :=0;
  MainDM.qryCommon.SQL.Text := 'select max(OtherNORM_ID) MAXID from Other_NORM where PERIOD_ID=' + IntToStr(CurrentPeriod);
  MainDM.qryCommon.Open;

  intMaxNormID :=MainDM.qryCommon.FieldByName('MAXID').AsInteger +1;
  MainDM.qryCommon.Close;
  with MainDM do
    CurObjTypeID:=6;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TOtherNormFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryOtherNorm.Edit;
    qryOtherNormOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryOtherNormOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TOtherNormFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryOtherNorm.Close;
end;

procedure TOtherNormFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TOtherNormFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,3);
end;

procedure TOtherNormFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TOtherNormFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TOtherNormFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TOtherNormFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active:=dxBarButton1.Down;
end;

procedure TOtherNormFrm.qryOtherNormAfterInsert(DataSet: TDataSet);
begin
  qryOtherNormOBJECT_ID.FocusControl;
end;

procedure TOtherNormFrm.qryOtherNormBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;
  
  if KiemtraHople = False then
  begin
    qryOtherNormOBJECT_ID.FocusControl;
    Abort;
  end;
end;

procedure TOtherNormFrm.qryOtherNormNewRecord(DataSet: TDataSet);
begin
  qryOtherNormPERIOD_ID.Value := CurrentPeriod;
  qryOtherNormOTHERNORM_ID.AsInteger := intMaxNormID;
  qryOtherNormOTYPE_ID.Value := 2;
  qryOtherNormMAPX.Value := dxPopupEdit1.Text;
  qryOtherNormMALOAI.AsInteger := 6;
  intMaxNormID := intMaxNormID+1;
end;

procedure TOtherNormFrm.qryOtherNormPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs:= ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryOtherNormOBJECT_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryOtherNormOBJECT_ID.FocusControl;
  end;
end;

function TOtherNormFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryOtherNorm.State in [dsInsert, dsEdit]) then exit;

  Result:=MainDM.CheckObject(qryOtherNormOBJECT_ID.Value,2);

  if Result then
  begin
    if qryOtherNormOBJECT_ID.Value <> MainDM.CurObjID then
      qryOtherNormOBJECT_ID.Value := MainDM.CurObjID;
    qryOtherNormOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryOtherNormOBJECT_NAME.Clear;
end;

procedure TOtherNormFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBJECT_ID') then
    if KiemtraHople=False then
    begin
      qryOtherNormOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TOtherNormFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TOtherNormFrm.qryOtherNormBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TOtherNormFrm.qryOtherNormBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TOtherNormFrm.qryOtherNormBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TOtherNormFrm.dxPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;
end;

procedure TOtherNormFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
end;

procedure TOtherNormFrm.dxPopupEdit1Change(Sender: TObject);
begin
  qryOtherNorm.Close;
end;

procedure TOtherNormFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit1.Text:= vpItemID;
    dxEdit1.Text:=vpItemName;
    grdKH.SetFocus;
  end;
end;

procedure TOtherNormFrm.dxPopupEdit1Exit(Sender: TObject);
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
  if qryOtherNorm.Active then Exit;
  qryOtherNorm.ParamByName('MAPX').Value := dxPopupEdit1.Text;
  qryOtherNorm.ParamByName('PERIOD_ID').Value := CurrentPeriod;
  qryOtherNorm.Open;
end;

procedure TOtherNormFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TOtherNormFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
