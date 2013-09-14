unit MaterialNormForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,   
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TMaterialNormFrm = class(TForm)
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
    grdColSLDM: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    colMaHH: TdxDBGridPopupColumn;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdColGTPB: TdxDBGridColumn;
    grdKHColumn6: TdxDBGridPopupColumn;
    grdKHColumn7: TdxDBGridColumn;
    grdColSLPB: TdxDBGridColumn;
    dxPopupEdit1: TdxPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxEdit1: TdxEdit;
    locFormItem10: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qryMaterialNorm: TIBOQuery;
    qryMaterialNormMATERIAL_NORM_ID: TIntegerField;
    qryMaterialNormMALOAI: TSmallintField;
    qryMaterialNormPERIOD_ID: TSmallintField;
    qryMaterialNormMATERIAL_ID: TWideStringField;
    qryMaterialNormOBJECT_NAME: TWideStringField;
    qryMaterialNormMATERIAL_NOTES: TWideStringField;
    qryMaterialNormMAPX: TWideStringField;
    dsMaterialNorm: TDataSource;
    qryMaterialNormMATERIAL_AMOUNT: TIBOFloatField;
    qryMaterialNormREAL_AMOUNT: TIBOFloatField;
    grdKHSLTP: TdxDBGridColumn;
    qryMaterialNormSOLUONGTPSX: TIBOFloatField;
    qryMaterialNormPREAL_AMOUNT: TIBOFloatField;
    bbtnOne: TdxBarButton;
    bbtnMany: TdxBarButton;
    bbtnNhoHon: TdxBarButton;
    bbtnBang: TdxBarButton;
    bbtnLonHon: TdxBarButton;
    bbtnTatca: TdxBarButton;
    qryMaterialNormREAL_VALUE: TIBOFloatField;
    qryMaterialNormPREAL_VALUE: TIBOFloatField;
    qryMaterialNormOBJECT_ID: TWideStringField;
    qryMaterialNormOTYPE_ID: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdKHColumn6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure grdKHEnter(Sender: TObject);
    procedure qryMaterialNormAfterInsert(DataSet: TDataSet);
    procedure qryMaterialNormBeforeDelete(DataSet: TDataSet);
    procedure qryMaterialNormBeforeEdit(DataSet: TDataSet);
    procedure qryMaterialNormBeforeInsert(DataSet: TDataSet);
    procedure qryMaterialNormBeforePost(DataSet: TDataSet);
    procedure qryMaterialNormFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryMaterialNormNewRecord(DataSet: TDataSet);
    procedure qryMaterialNormPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    function KiemtraHopleHH:Boolean;
    function KiemtraHopleNL:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bbtnOneClick(Sender: TObject);
    procedure bbtnManyClick(Sender: TObject);
    procedure bbtnNhoHonClick(Sender: TObject);
    procedure bbtnBangClick(Sender: TObject);
    procedure bbtnLonHonClick(Sender: TObject);
    procedure bbtnTatcaClick(Sender: TObject);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    MATP,TENTP :WideString;
    { Private declarations }
    IsErrorGoodsID:Boolean;
    intMaxNormID:integer;//Luu giu gia tri lon nhat cua chi tiet cua dinh muc nguyen vat lieu
  public
    { Public declarations }
  end;

var
  MaterialNormFrm: TMaterialNormFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TMaterialNormFrm.FormCreate(Sender: TObject);
begin
  MATP:='';
  if prmUSEUPPERCASE then
  begin
    dxPopupEdit1.CharCase:=ecUpperCase;
    grdKHColumn6.CharCase:=ecUpperCase;
    colMaHH.CharCase:=ecUpperCase;
  end;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  grdColSLDM.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColSLPB.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColGTPB.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHSLTP.SummaryFooterFormat:=SOLUONG_FORMAT;


  qryMaterialNormMATERIAL_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialNormREAL_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialNormREAL_VALUE.DisplayFormat:=TIENTE_FORMAT;
  qryMaterialNormSOLUONGTPSX.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialNormPREAL_AMOUNT.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialNormPREAL_VALUE.DisplayFormat:=TIENTE_FORMAT;

  intMaxNormID :=0;
  MainDM.qryCommon.SQL.Text := 'select max(MATERIAL_NORM_ID) MAXID from MATERIAL_NORM where PERIOD_ID=' + IntToStr(CurrentPeriod);
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
procedure TMaterialNormFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryMaterialNorm.Edit;
    qryMaterialNormOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qryMaterialNormOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TMaterialNormFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryMaterialNorm.Close;
end;

procedure TMaterialNormFrm.grdKHColumn6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TMaterialNormFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TMaterialNormFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TMaterialNormFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TMaterialNormFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TMaterialNormFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TMaterialNormFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active:= dxBarButton1.Down;
end;

procedure TMaterialNormFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
  if qryMaterialNorm.RecordCount=0 then
    qryMaterialNorm.Insert;
end;

procedure TMaterialNormFrm.qryMaterialNormAfterInsert(DataSet: TDataSet);
begin
  qryMaterialNormMATERIAL_ID.FocusControl;
end;

procedure TMaterialNormFrm.qryMaterialNormBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TMaterialNormFrm.qryMaterialNormBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TMaterialNormFrm.qryMaterialNormBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;

  MATP:=qryMaterialNormOBJECT_ID.Value;
  TENTP:=qryMaterialNormOBJECT_NAME.Value;
end;

procedure TMaterialNormFrm.qryMaterialNormBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;
  if KiemtraHopleHH = False then
  begin
    qryMaterialNormOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if KiemtraHopleNL = False then
  begin
    qryMaterialNormMATERIAL_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryMaterialNormMATERIAL_ID) then
  begin
    ShowMessageUnicode(125);
    qryMaterialNormMATERIAL_ID.FocusControl;
    Abort;
  end;
end;

procedure TMaterialNormFrm.qryMaterialNormFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if bbtnNhoHon.Down then
    Accept := (qryMaterialNormMATERIAL_AMOUNT.AsFloat<qryMaterialNormREAL_AMOUNT.AsFloat)
  else if bbtnBang.Down then
    Accept := (qryMaterialNormMATERIAL_AMOUNT.AsFloat=qryMaterialNormREAL_AMOUNT.AsFloat)
  else if bbtnLonHon.Down then
    Accept := (qryMaterialNormMATERIAL_AMOUNT.AsFloat>qryMaterialNormREAL_AMOUNT.AsFloat)
  else
    Accept := True;
end;

procedure TMaterialNormFrm.qryMaterialNormNewRecord(DataSet: TDataSet);
begin
  qryMaterialNormPERIOD_ID.Value := CurrentPeriod;
  qryMaterialNormMATERIAL_NORM_ID.AsInteger := intMaxNormID;
  qryMaterialNormMAPX.Value := dxPopupEdit1.Text;
  qryMaterialNormOTYPE_ID.AsInteger:=2;
  if MATP<>'' then
  begin
    qryMaterialNormOBJECT_ID.Value:=MATP;
    qryMaterialNormOBJECT_NAME.Value:=TENTP;
  end;
  qryMaterialNormMALOAI.AsInteger :=6;//Phan xuong
  intMaxNormID := intMaxNormID + 1;
end;

function TMaterialNormFrm.KiemtraHopleHH:Boolean;
begin
  Result:=True;
  if Not (qryMaterialNorm.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryMaterialNormOBJECT_ID.Value,2);
  if Result then
  begin
    if qryMaterialNormOBJECT_ID.Value <> MainDM.CurObjID then
      qryMaterialNormOBJECT_ID.Value := MainDM.CurObjID;

    qryMaterialNormOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qryMaterialNormOBJECT_NAME.Clear;
end;

function TMaterialNormFrm.KiemtraHopleNL:Boolean;
begin
  Result:=MainDM.CheckObject(qryMaterialNormOBJECT_ID.Value,2);
  if Result then
    if qryMaterialNorm.State in [dsInsert,dsEdit] then
      if qryMaterialNormOBJECT_ID.Value<>MainDM.CurObjID then
        qryMaterialNormOBJECT_ID.Value:=MainDM.CurObjID;
end;

procedure TMaterialNormFrm.qryMaterialNormPostError(DataSet: TDataSet;
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
    qryMaterialNormOBJECT_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    if MainDM.CheckObject(qryMaterialNormOBJECT_ID.Value,2,False) then
    begin
      ShowMessageUnicode(68,e.Message,0);
      qryMaterialNormOBJECT_ID.FocusControl;
    end
    else
    begin
      ShowMessageUnicode(164,e.Message,0);
      qryMaterialNormMATERIAL_ID.FocusControl;
    end
  end;
end;

procedure TMaterialNormFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBJECT_ID') then
    if KiemtraHopleHH=False then
    begin
      IsErrorGoodsID:=True;
      qryMaterialNormOBJECT_ID.FocusControl;
      Abort;
      exit;
    end
    else
      IsErrorGoodsID:=False;

  if IsErrorGoodsID=False then
    if (grdKH.FocusedField.FieldName<>'MATERIAL_ID') then
    if KiemtraHopleNL=False then
    begin
      qryMaterialNormMATERIAL_ID.FocusControl;
      Abort;
      exit;
    end
end;

procedure TMaterialNormFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TMaterialNormFrm.bbtnOneClick(Sender: TObject);
begin
  grdColSLPB.FieldName:='REAL_AMOUNT';
  grdColGTPB.FieldName:='REAL_VALUE';
  bbtnOne.Down:=True;
  bbtnMany.Down:=False;
end;

procedure TMaterialNormFrm.bbtnManyClick(Sender: TObject);
begin
  grdColSLPB.FieldName:='PREAL_AMOUNT';
  grdColGTPB.FieldName:='PREAL_VALUE';
  bbtnMany.Down:=True;
  bbtnOne.Down:=False;
end;

procedure TMaterialNormFrm.bbtnNhoHonClick(Sender: TObject);
begin
  bbtnNhoHon.Down:=True;
  bbtnBang.Down:=False;
  bbtnLonHon.Down:=False;
  bbtnTatca.Down:=False;

  qryMaterialNorm.OnFilterRecord := qryMaterialNormFilterRecord;
  qryMaterialNorm.Filtered :=True;
end;

procedure TMaterialNormFrm.bbtnBangClick(Sender: TObject);
begin
  bbtnNhoHon.Down:=False;
  bbtnBang.Down:=True;
  bbtnLonHon.Down:=False;
  bbtnTatca.Down:=False;

  qryMaterialNorm.OnFilterRecord := qryMaterialNormFilterRecord;
  qryMaterialNorm.Filtered :=True;
end;

procedure TMaterialNormFrm.bbtnLonHonClick(Sender: TObject);
begin
  bbtnNhoHon.Down:=False;
  bbtnBang.Down:=False;
  bbtnLonHon.Down:=True;
  bbtnTatca.Down:=False;

  qryMaterialNorm.OnFilterRecord := qryMaterialNormFilterRecord;
  qryMaterialNorm.Filtered :=True;
end;

procedure TMaterialNormFrm.bbtnTatcaClick(Sender: TObject);
begin
  bbtnNhoHon.Down:=False;
  bbtnBang.Down:=False;
  bbtnLonHon.Down:=False;
  bbtnTatca.Down:=True;

  qryMaterialNorm.Filtered :=False;
end;

procedure TMaterialNormFrm.dxPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;
end;

procedure TMaterialNormFrm.dxPopupEdit1Change(Sender: TObject);
begin
  qryMaterialNorm.Close;
end;

procedure TMaterialNormFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit1.Text:=vpItemID;
    dxEdit1.Text:=vpItemName;
    grdKH.SetFocus;
  end;
end;

procedure TMaterialNormFrm.dxPopupEdit1Exit(Sender: TObject);
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
  if qryMaterialNorm.Active then Exit;
  qryMaterialNorm.ParamByName('MAPX').Value := dxPopupEdit1.Text;
  qryMaterialNorm.ParamByName('PERIOD_ID').Value := CurrentPeriod;
  qryMaterialNorm.Open;
end;

procedure TMaterialNormFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TMaterialNormFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
