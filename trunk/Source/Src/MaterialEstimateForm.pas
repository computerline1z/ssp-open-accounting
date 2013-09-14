unit MaterialEstimateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib,
  dxLayoutControl, dxEditor, cxControls, ElPgCtl, ElXPThemedControl, DB,
  IBODataset, DBActns, ActnList, ElCaption, dxBar, dxLayoutLookAndFeels,
  ElBtnCtl, ElPopBtn, dxDBTLCl, dxGrClEx, dxGrClms;

type
  TMaterialEstimateFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPageControl1: TElPageControl;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElTabSheet1: TElTabSheet;
    dxDBGrid2: TdxDBGrid;
    ElTabSheet2: TElTabSheet;
    dxPopupEdit1: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    qryMaterialEstimate: TIBOQuery;
    qryMaterialEstimateBEGIN_PERIOD_ID: TSmallintField;
    qryMaterialEstimateMATERIAL_PRO_ID: TSmallintField;
    qryMaterialEstimateOBJECT_ID: TWideStringField;
    qryMaterialEstimateOTYPE_ID: TSmallintField;
    qryMaterialEstimateFACTOR_ID: TWideStringField;
    qryMaterialEstimateFTYPE_ID: TSmallintField;
    qryMaterialEstimateMATERIAL_ID: TWideStringField;
    qryMaterialEstimateMTYPE_ID: TSmallintField;
    qryMaterialEstimateAMOUNT_ESTIMATE: TIBOFloatField;
    qryMaterialEstimateAMOUNT_ARISE: TIBOFloatField;
    qryMaterialEstimatePRICE_ESTIMATE: TIBOFloatField;
    qryMaterialEstimateVALUE_ESTIMATE: TIBOFloatField;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dsMaterialNormEstimate: TDataSource;
    dxPopupEdit2: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxCalcEdit1: TdxCalcEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    acEdit: TDataSetEdit;
    dxDBGrid2OBJECT_ID: TdxDBGridPopupColumn;
    dxDBGrid2FACTOR_ID: TdxDBGridPopupColumn;
    dxDBGrid2MATERIAL_ID: TdxDBGridPopupColumn;
    dxDBGrid1: TdxDBGrid;
    qryMaterialEstimate_Sum: TIBOQuery;
    DataSource1: TDataSource;
    dxDBGrid1MATERIAL_ID: TdxDBGridMaskColumn;
    dxDBGrid1AMOUNT_ESTIMATE: TdxDBGridMaskColumn;
    dxDBGrid1AMOUNT_INVENTORY: TdxDBGridMaskColumn;
    dxDBGrid1AMOUNT_DIFFERENCE: TdxDBGridMaskColumn;
    dxDBGrid2AMOUNT_ESTIMATE: TdxDBGridCalcColumn;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxEdit1: TdxEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    qryMaterialEstimate_SumBEGIN_PERIOD_ID: TSmallintField;
    qryMaterialEstimate_SumMATERIAL_ID: TStringField;
    qryMaterialEstimate_SumAMOUNT_ESTIMATE: TIBOFloatField;
    qryMaterialEstimate_SumAMOUNT_INVENTORY: TIBOFloatField;
    qryMaterialEstimate_SumAMOUNT_DIFFERENCE: TIBOFloatField;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    procedure dxPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxPopupEdit2Enter(Sender: TObject);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure dxPopupEdit2Change(Sender: TObject);
    procedure dxPopupEdit2Exit(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryMaterialEstimateAfterInsert(DataSet: TDataSet);
    procedure qryMaterialEstimateAfterOpen(DataSet: TDataSet);
    procedure qryMaterialEstimateBeforeDelete(DataSet: TDataSet);
    procedure qryMaterialEstimateBeforeEdit(DataSet: TDataSet);
    procedure qryMaterialEstimateBeforeInsert(DataSet: TDataSet);
    procedure qryMaterialEstimateBeforePost(DataSet: TDataSet);
    function KiemtraHopleNL:Boolean;
    function KiemtraHopleobject:Boolean;
    procedure qryMaterialEstimateNewRecord(DataSet: TDataSet);
    procedure qryMaterialEstimatePostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure dxDBGrid2OBJECT_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid2FACTOR_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid2MATERIAL_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
    procedure qryMaterialEstimate_SumBeforeOpen(DataSet: TDataSet);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
     intMaxNormID, SOLUONG:integer;//Luu giu gia tri lon nhat cua chi tiet cua dinh muc nguyen vat lieu
     MAHM, MACT,MADT,MASANPHAM :WideString;
     LOAIDT,LOAIYT,BeginPeriod_CT, KYHT : Smallint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialEstimateFrm: TMaterialEstimateFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;

{$R *.dfm}

procedure TMaterialEstimateFrm.dxPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit2.Text:=vpItemID;
    dxEdit1.Text:=vpItemName;
   // dxDBGrid2.SetFocus;
    if qryMaterialEstimate.Active then qryMaterialEstimate.close;
    qryMaterialEstimate.Params.ParamByName('KYHT').AsSmallint := CurrentPeriod;
    qryMaterialEstimate.Params.ParamByName('object_id').AsString := dxPopupEdit2.Text;
    qryMaterialEstimate.Open;


    qryMaterialEstimate_Sum.Params.ParamByName('kyht').AsSmallint := CurrentPeriod;
    qryMaterialEstimate_Sum.Open;
    
  end;
end;

procedure TMaterialEstimateFrm.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit1.Text:=vpItemID;
   // dxDBGrid2.SetFocus;
  end;
end;

procedure TMaterialEstimateFrm.FormCreate(Sender: TObject);
begin

  maindm.qryPAcc.Open;
  maindm.qryPAcc.Filtered := false;
  maindm.qryPAcc.Locate('ACCOUNT_ID','621',[]);
  loaiyt := maindm.qryPAccDTYPE_ID.Value;
  loaidt := maindm.qryPAccOTYPE_ID.Value;
  KYHT   := CurrentPeriod;
  intMaxNormID :=0;
  ElPageControl1.ActivePage := ElTabSheet1;
  qryMaterialEstimate.Params.ParamByName('KYHT').AsSmallint := CurrentPeriod;
  qryMaterialEstimate.Params.ParamByName('object_id').AsString := dxPopupEdit2.Text;
  
  qryMaterialEstimate.Open;

  qryMaterialEstimate_Sum.Params.ParamByName('kyht').AsSmallint := CurrentPeriod;
  qryMaterialEstimate_Sum.Open;
  MainDM.qryCommon.SQL.Text := 'select max(MATERIAL_NORM_ID) MAXID from MATERIAL_NORM where PERIOD_ID=' + IntToStr(CurrentPeriod);
  MainDM.qryCommon.Open;

  intMaxNormID :=MainDM.qryCommon.FieldByName('MAXID').AsInteger +1;
  MainDM.qryCommon.Close;
end;

procedure TMaterialEstimateFrm.dxPopupEdit2Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=LOAIDT;
end;

procedure TMaterialEstimateFrm.dxPopupEdit1Enter(Sender: TObject);
begin
 if MainDM.CurObjTypeID <> 2 then
    MainDM.CurObjTypeID := 2;
end;

procedure TMaterialEstimateFrm.dxPopupEdit2Change(Sender: TObject);
begin
  qryMaterialEstimate.Close;
end;

procedure TMaterialEstimateFrm.dxPopupEdit2Exit(Sender: TObject);
begin
  with MainDM do
  begin
    if LOAIDT <>0 then
    if not CheckObject(dxPopupEdit2.Text,LOAIDT) then
    begin
      ShowMessageUnicode(46);
      dxPopupEdit2.SetFocus;
      exit;
    end;
    if dxPopupEdit2.Text<>CurObjID then
      dxPopupEdit2.Text:=CurObjID;
      dxEdit1.Text:=CurObjName;

  end;
  

end;

procedure TMaterialEstimateFrm.ElPopupButton1Click(Sender: TObject);
begin
  if qryMaterialEstimate.State in [dsInsert, dsEdit] then
    qryMaterialEstimate.Post;

  if (dxPopupEdit1.Text = Null) then
  begin
    ShowMessageUnicode(133);
    qryMaterialEstimateOBJECT_ID.FocusControl;
    exit;
  end;
  MADT := dxPopupEdit2.Text;
  MASANPHAM := dxPopupEdit1.Text;
  SOLUONG := Strtoint(dxCalcEdit1.text);
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text := 'execute procedure SP_DUTOANNVL(:KYHT,:MASANPHAM,:SOLUONG,:MADT,:LOAIDT)';
    MainDM.qryCommon.Params.ParamByName('KYHT').AsSmallint := CurrentPeriod;
    MainDM.qryCommon.Params.ParamByName('MASANPHAM').AsString := dxPopupEdit1.Text;
    MainDM.qryCommon.Params.ParamByName('SOLUONG').AsInteger:= Strtoint(dxCalcEdit1.text);
    MainDM.qryCommon.Params.ParamByName('MADT').AsString:= dxPopupEdit2.Text;
    MainDM.qryCommon.Params.ParamByName('LOAIDT').AsSmallint:= loaidt;
    Prepare;

    ExecSQL;
    MainDM.qryCommon.IB_Transaction.CommitRetaining;
    Close;
  end;

  qryMaterialEstimate.Close;

  qryMaterialEstimate.Params.ParamByName('KYHT').AsSmallint := CurrentPeriod;
  qryMaterialEstimate.Params.ParamByName('object_id').AsString := dxPopupEdit2.Text;
  {qryMaterialEstimate.Params.ParamByName('otype_id').AsSmallint := loaidt;
  qryMaterialEstimate.Params.ParamByName('factor_id').AsString := dxPopupEdit1.Text;}
  qryMaterialEstimate.Open;
  qryMaterialEstimate_Sum.Close;

  qryMaterialEstimate_Sum.ParamByName('kyht').AsSmallint := CurrentPeriod;
  qryMaterialEstimate_Sum.Open;

  //MessageDlg('Calculated data success!', mtWarning, [mbOK], 0);
 // qryMaterialEstimate.Refresh;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimateAfterInsert(
  DataSet: TDataSet);
begin
  qryMaterialEstimateMATERIAL_ID.FocusControl;
  intMaxNormID := intMaxNormID + 1 ;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimateAfterOpen(
  DataSet: TDataSet);
begin
  if qryMaterialEstimate.recordcount <> 0 then
    BeginPeriod_CT := qryMaterialEstimateBEGIN_PERIOD_ID.Value
  else
    BeginPeriod_CT := CurrentPeriod;

  MainDM.qryCommon.SQL.Text := 'select max(MATERIAL_PRO_ID) MAXID from MATERIAL_PROJECT where begin_period_id = ' + IntToStr(BeginPeriod_CT);
  MainDM.qryCommon.Open;

  intMaxNormID :=MainDM.qryCommon.FieldByName('MAXID').AsInteger +1;
  MainDM.qryCommon.Close;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimateBeforeDelete(
  DataSet: TDataSet);
begin
 if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimateBeforeEdit(
  DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimateBeforeInsert(
  DataSet: TDataSet);
begin
   if Not MainDM.CheckAllowInsert(5) then Abort;

   MAHM :=dxPopupEdit1.Text;
   MACT :=dxPopupEdit2.Text;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimateBeforePost(
  DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;
  if KiemtraHopleObject = False then
  begin
    qryMaterialEstimateOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if KiemtraHopleNL = False then
  begin
    qryMaterialEstimateMATERIAL_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryMaterialEstimateMATERIAL_ID) then
  begin
    ShowMessageUnicode(125);
    qryMaterialEstimateMATERIAL_ID.FocusControl;
    Abort;
  end;
end;
function TMaterialEstimateFrm.KiemtraHopleNL:Boolean;
begin
  Result:=MainDM.CheckObject(qryMaterialEstimateMATERIAL_ID.Value,2);
  if Result then
    if qryMaterialEstimate.State in [dsInsert,dsEdit] then
      if qryMaterialEstimateMATERIAL_ID.Value<>MainDM.CurObjID then
        qryMaterialEstimateMATERIAL_ID.Value:=MainDM.CurObjID;
end;

function TMaterialEstimateFrm.KiemtraHopleObject:Boolean;
begin
  Result:=True;
  if Not (qryMaterialEstimate.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryMaterialEstimateobject_id.Value,qryMaterialEstimateotype_id.value);
  if Result then
  begin
    if qryMaterialEstimateobject_id.Value <> MainDM.CurObjID then
      qryMaterialEstimateobject_id.Value := MainDM.CurObjID;
  end

end;
procedure TMaterialEstimateFrm.qryMaterialEstimateNewRecord(
  DataSet: TDataSet);
begin
  qryMaterialEstimateMATERIAL_PRO_ID.Value := intMaxNormID;
  qryMaterialEstimateBEGIN_PERIOD_ID.Value := BeginPeriod_CT;
  qryMaterialEstimateFACTOR_ID.Value := dxPopupEdit1.Text;
  qryMaterialEstimateOBJECT_ID.Value := dxPopupEdit2.Text;
  qryMaterialEstimateOTYPE_ID.AsInteger:=loaidt;
  qryMaterialEstimateMTYPE_ID.AsInteger:=2;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimatePostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
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
    qryMaterialEstimateMATERIAL_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    if MainDM.CheckObject(qryMaterialEstimateMATERIAL_ID.Value,2,False) then
    begin
      ShowMessageUnicode(68,e.Message,0);
      qryMaterialEstimateMATERIAL_ID.FocusControl;
    end
    else
    begin
      ShowMessageUnicode(164,e.Message,0);
      qryMaterialEstimateMATERIAL_ID.FocusControl;
    end
    end;
end;

procedure TMaterialEstimateFrm.dxDBGrid2OBJECT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TMaterialEstimateFrm.dxDBGrid2FACTOR_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TMaterialEstimateFrm.dxDBGrid2MATERIAL_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TMaterialEstimateFrm.ElPopupButton7Click(Sender: TObject);
begin
 If ElPageControl1.ActivePage = ElTabSheet1 then
  begin
    ExportToExcel(dxDBGrid2);
  end
  Else
  begin
    ExportToExcel(dxDBGrid1);
  end
end;

procedure TMaterialEstimateFrm.dxBarButton1Click(Sender: TObject);
begin
 ExportToExcel(dxDBGrid2);
end;

procedure TMaterialEstimateFrm.ElPopupButton8Click(Sender: TObject);
begin
   self.close;
end;

procedure TMaterialEstimateFrm.qryMaterialEstimate_SumBeforeOpen(
  DataSet: TDataSet);
begin
  qryMaterialEstimate_Sum.ParamByName('branch_id').Value := vpBranch_id;
end;

procedure TMaterialEstimateFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TMaterialEstimateFrm.dxDBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

end.
