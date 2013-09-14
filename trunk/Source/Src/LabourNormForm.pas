unit LabourNormForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TLabourFrm = class(TForm)
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
    grdColumnGTDM: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaHH: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdColumnGTPB: TdxDBGridColumn;
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
    qryLabourNorm: TIBOQuery;
    qryLabourNormLABOURNORM_ID: TIntegerField;
    qryLabourNormMALOAI: TSmallintField;
    qryLabourNormPERIOD_ID: TSmallintField;
    qryLabourNormOBJECT_NAME: TWideStringField;
    qryLabourNormLABOUR_NOTES: TWideStringField;
    qryLabourNormMAPX: TWideStringField;
    dsLabourNorm: TDataSource;
    grdKHSLTP: TdxDBGridColumn;
    grdKHGTPB: TdxDBGridColumn;
    qryLabourNormSOLUONGTPSX: TIBOFloatField;
    qryLabourNormNORM_VALUE: TIBOFloatField;
    qryLabourNormREAL_VALUE: TIBOFloatField;
    qryLabourNormPREAL_VALUE: TIBOFloatField;
    qryLabourNormOBJECT_ID: TWideStringField;
    qryLabourNormOTYPE_ID: TSmallintField;
    qryLabourNormOBJGRP_ID: TWideStringField;
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
    procedure qryLabourNormAfterInsert(DataSet: TDataSet);
    procedure qryLabourNormBeforeDelete(DataSet: TDataSet);
    procedure qryLabourNormBeforeEdit(DataSet: TDataSet);
    procedure qryLabourNormBeforeInsert(DataSet: TDataSet);
    procedure qryLabourNormBeforePost(DataSet: TDataSet);
    procedure qryLabourNormNewRecord(DataSet: TDataSet);
    procedure qryLabourNormPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    intMaxNormID:integer;//Luu giu gia tri lon nhat cua chi tiet cua dinh muc nguyen vat lieu
  public
    { Public declarations }
  end;

var
  LabourFrm: TLabourFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TLabourFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxPopupEdit1.CharCase:=ecUpperCase;
    colMaHH.CharCase:=ecUpperCase;
  end;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdColumnGTDM.SummaryFooterFormat:=TIENTE_FORMAT;
  grdColumnGTPB.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHSLTP.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHGTPB.SummaryFooterFormat:=TIENTE_FORMAT;

  qryLabourNormREAL_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryLabourNormNORM_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryLabourNormSOLUONGTPSX.DisplayFormat:=SOLUONG_FORMAT;
  qryLabourNormPREAL_VALUE.DisplayFormat:=TIENTE_FORMAT;
    
  with MainDM do
  begin
    intMaxNormID :=0;
    qryCommon.Close;
    qryCommon.SQL.Text := 'select max(LABOURNORM_ID) MAXID from LABOUR_NORM where PERIOD_ID=' + IntToStr(CurrentPeriod);
    qryCommon.Open;

    intMaxNormID :=MainDM.qryCommon.FieldByName('MAXID').AsInteger +1;
    qryCommon.Close;
  end;
  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TLabourFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryLabourNorm.Edit;
    qryLabourNormOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryLabourNormOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TLabourFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryLabourNorm.Close;
end;

procedure TLabourFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TLabourFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,3);
end;

procedure TLabourFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TLabourFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TLabourFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TLabourFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active := dxBarButton1.Down;
end;

procedure TLabourFrm.qryLabourNormAfterInsert(DataSet: TDataSet);
begin
  qryLabourNormOBJECT_ID.FocusControl;
end;

procedure TLabourFrm.qryLabourNormBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TLabourFrm.qryLabourNormBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TLabourFrm.qryLabourNormBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TLabourFrm.qryLabourNormBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if KiemtraHople = False then
  begin
    qryLabourNormOBJECT_ID.FocusControl;
    Abort;
  end;
end;

procedure TLabourFrm.qryLabourNormNewRecord(DataSet: TDataSet);
begin
  qryLabourNormPERIOD_ID.Value := CurrentPeriod;
  qryLabourNormLABOURNORM_ID.AsInteger := intMaxNormID;
  qryLabourNormMAPX.Value := dxPopupEdit1.Text;
  qryLabourNormOTYPE_ID.Value := 2;
  qryLabourNormMALOAI.AsInteger := 6;
  intMaxNormID := intMaxNormID+1;
end;
function TLabourFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qryLabourNorm.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryLabourNormOBJECT_ID.Value,2);

  if Result then
  begin
    if qryLabourNormOBJECT_ID.Value <> MainDM.CurObjID then
      qryLabourNormOBJECT_ID.Value := MainDM.CurObjID;
    qryLabourNormOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryLabourNormOBJECT_NAME.Clear;
end;

procedure TLabourFrm.qryLabourNormPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryLabourNormOBJECT_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryLabourNormOBJECT_ID.FocusControl;
  end;
end;

procedure TLabourFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBJECT_ID') then
    if KiemtraHople=False then
    begin
      qryLabourNormOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TLabourFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TLabourFrm.dxPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;
end;

procedure TLabourFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
end;

procedure TLabourFrm.dxPopupEdit1CloseUp(Sender: TObject;
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

procedure TLabourFrm.dxPopupEdit1Exit(Sender: TObject);
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
  if qryLabourNorm.Active then Exit;
  qryLabourNorm.ParamByName('MAPX').Value := dxPopupEdit1.Text;
  qryLabourNorm.ParamByName('PERIOD_ID').Value := CurrentPeriod;
  qryLabourNorm.Open;
end;

procedure TLabourFrm.dxPopupEdit1Change(Sender: TObject);
begin
  qryLabourNorm.Close;
end;

procedure TLabourFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TLabourFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
