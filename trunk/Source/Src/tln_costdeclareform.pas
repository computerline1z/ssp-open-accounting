unit tln_costdeclareform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, IBODataset, dxLayout, DBActns, ActnList,
  dxLayoutLookAndFeels, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxGrClEx, dxCntner, dxLayoutControl,
  dxEditor, dxExGrEd, dxExELib, cxControls, ElCaption, dxEdLib, dxDBELib,
  ElPgCtl;

type
  Ttln_Costdeclarefrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    locFormItem7: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    qryHeso: TIBOQuery;
    dsHeso: TDataSource;
    locFormGroup1: TdxLayoutGroup;
    qryHesoOBJECT_ID: TWideStringField;
    qryHesoOTYPE_ID: TSmallintField;
    qryHesoTABLE_ID: TSmallintField;
    qryHesoPERIOD_ID: TSmallintField;
    locFormGroup2: TdxLayoutGroup;
    locFormItem9: TdxLayoutItem;
    pedtKH: TdxPopupEdit;
    locFormItem11: TdxLayoutItem;
    chkExpand: TdxCheckEdit;
    qryHesoOBJECT_ID_2: TWideStringField;
    qryHesoOTYPE_ID_2: TSmallintField;
    qryHesoOBJECT_ID_3: TWideStringField;
    qryHesoOTYPE_ID_3: TSmallintField;
    qryHesoOBJECT_ID_4: TWideStringField;
    qryHesoOTYPE_ID_4: TSmallintField;
    qryHesoCOST_VALUE: TIBOFloatField;
    qryHesoNOTES: TWideStringField;
    qryHesoHESO: TSmallintField;
    qryHeso2: TIBOQuery;
    dsheso2: TDataSource;
    qryHeso2TABLE_ID: TSmallintField;
    qryHeso2PERIOD_ID: TSmallintField;
    qryHeso2OBJECT_ID: TWideStringField;
    qryHeso2OTYPE_ID: TSmallintField;
    qryHeso2OBJECT_ID_2: TWideStringField;
    qryHeso2OTYPE_ID_2: TSmallintField;
    qryHeso2OBJECT_ID_3: TWideStringField;
    qryHeso2OTYPE_ID_3: TSmallintField;
    qryHeso2OBJECT_ID_4: TWideStringField;
    qryHeso2OTYPE_ID_4: TSmallintField;
    qryHeso2COST_VALUE: TIBOFloatField;
    qryHeso2NOTES: TWideStringField;
    qryHeso2HESO: TSmallintField;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    ElPageControl1: TElPageControl;
    locFormItem15: TdxLayoutItem;
    ElTabSheet1: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    grdAllocate: TdxDBGrid;
    grdAllocateTABLE_ID: TdxDBGridMaskColumn;
    grdAllocateOBJECT_ID: TdxDBGridPopupColumn;
    grdAllocateOBJECT_ID_2: TdxDBGridPopupColumn;
    grdAllocateOBJECT_ID_3: TdxDBGridPopupColumn;
    grdAllocateOBJECT_ID_4: TdxDBGridPopupColumn;
    grdAllocateCOST_VALUE: TdxDBGridColumn;
    grdAllocateNOTES: TdxDBGridMaskColumn;
    grdAllocateHESO: TdxDBGridColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElTabSheet2: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridPopupColumn1: TdxDBGridPopupColumn;
    dxDBGridPopupColumn2: TdxDBGridPopupColumn;
    dxDBGridPopupColumn3: TdxDBGridPopupColumn;
    dxDBGridPopupColumn4: TdxDBGridPopupColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    procedure FormCreate(Sender: TObject);
    procedure qryHesoBeforeOpen(DataSet: TDataSet);
    procedure qryHesoBeforePost(DataSet: TDataSet);
    procedure qryHesoNewRecord(DataSet: TDataSet);
    procedure qryHesoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdAllocateOBJECT_ID_1InitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_IDInitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateOBJECT_ID_1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHesoOBJECT_IDChange(Sender: TField);
    procedure grdAllocateOBJECT_ID_2InitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_ID_2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure pedtKHEnter(Sender: TObject);
    procedure pedtKHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHesoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure grdAllocateEnter(Sender: TObject);
    procedure pedtKHChange(Sender: TObject);
    procedure chkExpandChange(Sender: TObject);
    procedure popObjGrpCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHesoAfterOpen(DataSet: TDataSet);
    procedure grdAllocateOBJECT_ID_3InitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_ID_4InitPopup(Sender: TObject);
    procedure grdAllocateOBJECT_ID_3CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateOBJECT_ID_4CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHesoOBJECT_ID_2Change(Sender: TField);
    procedure qryHeso2NewRecord(DataSet: TDataSet);
    procedure qryHeso2PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryHeso2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure qryHeso2BeforePost(DataSet: TDataSet);
    procedure qryHeso2BeforeOpen(DataSet: TDataSet);
    procedure qryHeso2AfterOpen(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryHesoOBJECT_ID_3Change(Sender: TField);
    procedure qryHesoOBJECT_ID_4Change(Sender: TField);
    procedure WideStringField1Change(Sender: TField);
    procedure WideStringField2Change(Sender: TField);
    procedure WideStringField3Change(Sender: TField);
    procedure qryHeso2OBJECT_IDChange(Sender: TField);
    procedure qryHeso2OBJECT_ID_3Change(Sender: TField);
    procedure qryHeso2OBJECT_ID_4Change(Sender: TField);
    procedure grdAllocateDblClick(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AUTO_ID,MAX_ID : smallint;
    OTYPE_ID_1,OTYPE_ID_2,OTYPE_ID_3,OTYPE_ID_4 : smallint;
  end;

var
  tln_Costdeclarefrm: Ttln_Costdeclarefrm;

implementation
uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, HtmlHlp, DateUtils,CM_PopupForm,CM_FUNCTIONS;

{$R *.dfm}

procedure Ttln_Costdeclarefrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure Ttln_Costdeclarefrm.qryHesoBeforeOpen(DataSet: TDataSet);
begin

  qryHeso.ParamByName('PERIOD_ID_IN').AsInteger:= CurrentPeriod;
end;

procedure Ttln_Costdeclarefrm.qryHesoBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;

end;

procedure Ttln_Costdeclarefrm.qryHesoNewRecord(DataSet: TDataSet);
begin

  maindm.qryCommon.Close;
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select max(table_id) table_id from tln_costdeclare  where period_id = :period_id ';

  maindm.qryCommon.ParamByName('period_id').Value:= CurrentPeriod;

  maindm.qryCommon.Open;

  if maindm.qryCommon.fieldbyname('table_id').IsNull then
    MAX_ID := 0
  else
    MAX_ID := maindm.qryCommon.fieldbyname('table_id').Value;
  maindm.qryCommon.Close;

  max_id := max_id + 1;

  qryHesoTABLE_ID.AsInteger:= max_id;
  qryHesoPERIOD_ID.Value := CurrentPeriod;

  qryHesoOTYPE_ID.AsInteger := OTYPE_ID_1;
  if pedtKH.Text <> ''then
    qryHesoOBJECT_ID.Value := pedtKH.Text;
  qryHesoOTYPE_ID_2.AsInteger := OTYPE_ID_2;
  qryHesoOTYPE_ID_3.AsInteger := OTYPE_ID_3;
  qryHesoOTYPE_ID_4.AsInteger := OTYPE_ID_4;
  //qryHesoTABLE_ID.FocusControl;
  qryHesoHESO.AsInteger := 1;

end;

procedure Ttln_Costdeclarefrm.qryHesoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(42,e.Message,0);

  qryHesoOBJECT_ID.FocusControl;
end;

procedure Ttln_Costdeclarefrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure Ttln_Costdeclarefrm.grdAllocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ProcessKeyDownInGrid(grdAllocate, Key, Shift, True);
end;

procedure Ttln_Costdeclarefrm.grdAllocateMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

end;

procedure Ttln_Costdeclarefrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with qryHeso do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
  with qryHeso2 do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure Ttln_Costdeclarefrm.FormShow(Sender: TObject);
begin

  SetVisible(Self);

  OTYPE_ID_1 :=  1;
  OTYPE_ID_2 :=  4;
  OTYPE_ID_3 :=  11;
  OTYPE_ID_4 :=  21;
  qryHeso.Open;
  qryHeso2.Open;

  qryHeso2COST_VALUE.DisplayFormat := TIENTE_FORMAT;
  qryHesoCOST_VALUE.DisplayFormat := TIENTE_FORMAT;

end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_1InitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_2;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_IDInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_1;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure Ttln_Costdeclarefrm.qryHesoOBJECT_IDChange(Sender: TField);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_1; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoOBJECT_ID.FocusControl;
      Exit;
    end;

    if qryHesoOBJECT_ID.Value<>CurObjID then
    begin
      qryHesoOBJECT_ID.Value:=CurObjID;
      qryHesoOTYPE_ID.Value := OTYPE_ID_1;
    end;
    GetCurObjInfo;

    //qryHesoOBJECT_NAME.Value :=CurObjName;
  end;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_2InitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= otype_id_2;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure Ttln_Costdeclarefrm.pedtKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:= 1;
end;

procedure Ttln_Costdeclarefrm.pedtKHCloseUp(Sender: TObject; var Text: WideString;
  var Accept: Boolean);
begin
  if Accept then
  begin
    Text := vpItemID;
  end;
end;

procedure Ttln_Costdeclarefrm.qryHesoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if (pedtKH.Text <> '') then
    Accept := (qryHesoOBJECT_ID.Value = pedtKH.Text)
  else
    Accept := TRUE;


end;

procedure Ttln_Costdeclarefrm.grdAllocateEnter(Sender: TObject);
begin
  if qryHeso.RecordCount =0 then
    qryHeso.Insert;
end;

procedure Ttln_Costdeclarefrm.pedtKHChange(Sender: TObject);
begin
  if qryHeso.State in [dsinsert,dsedit] then
    qryHeso.Post;
  if qryHeso2.State in [dsinsert,dsedit] then
    qryHeso2.Post;

  if pedtKH.Text = '' then
  begin
    qryHeso.Filtered:= FALSE;
    qryHeso2.Filtered:= FALSE;
  end
  else
  begin

    qryHeso.OnFilterRecord := qryHesoFilterRecord;
    qryHeso.Filtered:= TRUE;
    qryHeso2.OnFilterRecord := qryHeso2FilterRecord;
    qryHeso2.Filtered:= TRUE;
  end;

  qryHeso.Open;
  qryHeso2.Open;

  if chkExpand.Checked then
  begin
      grdAllocate.FullExpand;
      dxDBGrid1.FullExpand;
    end
  else begin
    grdAllocate.FullCollapse;
    dxDBGrid1.FullCollapse;
  end;

end;

procedure Ttln_Costdeclarefrm.chkExpandChange(Sender: TObject);
begin
   if chkExpand.Checked then
  begin
      grdAllocate.FullExpand;
      dxDBGrid1.FullExpand;
      end
  else begin
    grdAllocate.FullCollapse;
    dxDBGrid1.FullCollapse;
  end;
end;

procedure Ttln_Costdeclarefrm.popObjGrpCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    text := MainDM.qryPObjGrpOBJGRP_ID.Value;
end;

procedure Ttln_Costdeclarefrm.qryHesoAfterOpen(DataSet: TDataSet);
begin
if chkExpand.Checked then
  begin
      grdAllocate.FullExpand;
      dxDBGrid1.FullExpand;
      end
  else begin
    grdAllocate.FullCollapse;
    dxDBGrid1.FullCollapse;
  end;
end;


procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_3InitPopup(Sender: TObject);
begin
  maindm.CurObjTypeID := otype_id_3;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_4InitPopup(Sender: TObject);
begin
  maindm.CurObjTypeID := otype_id_4;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure Ttln_Costdeclarefrm.grdAllocateOBJECT_ID_4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure Ttln_Costdeclarefrm.qryHesoOBJECT_ID_2Change(Sender: TField);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_2; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID_2.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoOBJECT_ID_2.FocusControl;
      Exit;
    end;

    if qryHesoOBJECT_ID_2.Value<>CurObjID then
    begin
      qryHesoOBJECT_ID_2.Value:=CurObjID;
      qryHesoOTYPE_ID_2.Value := OTYPE_ID_2;
    end;
    GetCurObjInfo;

  end;
end;

procedure Ttln_Costdeclarefrm.qryHeso2NewRecord(DataSet: TDataSet);
begin
  maindm.qryCommon.Close;
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select max(table_id) table_id from tln_costdeclare  where period_id = :period_id ';

  maindm.qryCommon.ParamByName('period_id').Value:= CurrentPeriod;

  maindm.qryCommon.Open;

  if maindm.qryCommon.fieldbyname('table_id').IsNull then
    MAX_ID := 0
  else
    MAX_ID := maindm.qryCommon.fieldbyname('table_id').Value;
  maindm.qryCommon.Close;

  max_id := max_id + 1;

  qryHeso2TABLE_ID.AsInteger:= max_id;
  qryHeso2PERIOD_ID.Value := CurrentPeriod;

  qryHeso2OTYPE_ID.AsInteger := OTYPE_ID_1;
  if pedtKH.Text <> ''then
    qryHeso2OBJECT_ID.Value := pedtKH.Text;
  qryHeso2OTYPE_ID_2.AsInteger := OTYPE_ID_2;
  qryHeso2OTYPE_ID_3.AsInteger := OTYPE_ID_3;
  qryHeso2OTYPE_ID_4.AsInteger := OTYPE_ID_4;
  //qryHeso2TABLE_ID.FocusControl;
  qryHeso2HESO.AsInteger := -1;
end;

procedure Ttln_Costdeclarefrm.qryHeso2PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(42,e.Message,0);


end;

procedure Ttln_Costdeclarefrm.qryHeso2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if (pedtKH.Text <> '') then
    Accept := (qryHeso2OBJECT_ID.Value = pedtKH.Text)
  else
    Accept := TRUE;
end;

procedure Ttln_Costdeclarefrm.qryHeso2BeforePost(DataSet: TDataSet);
begin
if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

procedure Ttln_Costdeclarefrm.qryHeso2BeforeOpen(DataSet: TDataSet);
begin
 qryHeso2.ParamByName('PERIOD_ID_IN').AsInteger:= CurrentPeriod;

end;

procedure Ttln_Costdeclarefrm.qryHeso2AfterOpen(DataSet: TDataSet);
begin
if chkExpand.Checked then
  begin
      grdAllocate.FullExpand;
      dxDBGrid1.FullExpand;
      end
  else begin
    grdAllocate.FullCollapse;
    dxDBGrid1.FullCollapse;
  end;
end;

procedure Ttln_Costdeclarefrm.dxDBGrid1Enter(Sender: TObject);
begin
  if qryHeso2.RecordCount =0 then
    qryHeso2.Insert;
end;

procedure Ttln_Costdeclarefrm.dxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure Ttln_Costdeclarefrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

end;

procedure Ttln_Costdeclarefrm.qryHesoOBJECT_ID_3Change(Sender: TField);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_3; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID_3.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoOBJECT_ID_3.FocusControl;
      Exit;
    end;

    if qryHesoOBJECT_ID_3.Value<>CurObjID then
    begin
      qryHesoOBJECT_ID_3.Value:=CurObjID;
      qryHesoOTYPE_ID_3.Value := OTYPE_ID_3;
    end;
    GetCurObjInfo;

    //qryHesoOBJECT_NAME.Value :=CurObjName;
  end;
end;

procedure Ttln_Costdeclarefrm.qryHesoOBJECT_ID_4Change(Sender: TField);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_4; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID_4.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoOBJECT_ID_4.FocusControl;
      Exit;
    end;

    if qryHesoOBJECT_ID_4.Value<>CurObjID then
    begin
      qryHesoOBJECT_ID_4.Value:=CurObjID;
      qryHesoOTYPE_ID_4.Value := OTYPE_ID_4;
    end;
    GetCurObjInfo;

  end;
end;

procedure Ttln_Costdeclarefrm.WideStringField1Change(Sender: TField);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_1; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHeso2OBJECT_ID.FocusControl;
      Exit;
    end;

    if qryHeso2OBJECT_ID.Value<>CurObjID then
    begin
      qryHeso2OBJECT_ID.Value:=CurObjID;
      qryHeso2OTYPE_ID.Value := OTYPE_ID_1;
    end;
    GetCurObjInfo;

    //qryHesoOBJECT_NAME.Value :=CurObjName;
  end;
end;

procedure Ttln_Costdeclarefrm.WideStringField2Change(Sender: TField);
begin
  MainDM.CurObjTypeID:= OTYPE_ID_2; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHeso2OBJECT_ID_2.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHeso2OBJECT_ID_2.FocusControl;
      Exit;
    end;

    if qryHeso2OBJECT_ID_2.Value<>CurObjID then
    begin
      qryHeso2OBJECT_ID_2.Value:=CurObjID;
      qryHeso2OTYPE_ID_2.Value := OTYPE_ID_2;
    end;
    GetCurObjInfo;

  end;
end;

procedure Ttln_Costdeclarefrm.WideStringField3Change(Sender: TField);
begin
MainDM.CurObjTypeID:= OTYPE_ID_2; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHeso2OBJECT_ID_3.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHeso2OBJECT_ID_3.FocusControl;
      Exit;
    end;

    if qryHeso2OBJECT_ID_3.Value<>CurObjID then
    begin
      qryHeso2OBJECT_ID_3.Value:=CurObjID;
      qryHeso2OTYPE_ID_3.Value := OTYPE_ID_3;
    end;
    GetCurObjInfo;

  end;
end;

procedure Ttln_Costdeclarefrm.qryHeso2OBJECT_IDChange(Sender: TField);
begin
MainDM.CurObjTypeID:= OTYPE_ID_1; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHeso2OBJECT_ID.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHeso2OBJECT_ID.FocusControl;
      Exit;
    end;

    if qryHeso2OBJECT_ID.Value<>CurObjID then
    begin
      qryHeso2OBJECT_ID.Value:=CurObjID;
      qryHeso2OTYPE_ID.Value := OTYPE_ID_1;
    end;
    GetCurObjInfo;

    //qryHesoOBJECT_NAME.Value :=CurObjName;
  end;
end;

procedure Ttln_Costdeclarefrm.qryHeso2OBJECT_ID_3Change(Sender: TField);
begin
MainDM.CurObjTypeID:= OTYPE_ID_3; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHeso2OBJECT_ID_3.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHeso2OBJECT_ID_3.FocusControl;
      Exit;
    end;

    if qryHeso2OBJECT_ID_3.Value<>CurObjID then
    begin
      qryHeso2OBJECT_ID_3.Value:=CurObjID;
      qryHeso2OTYPE_ID_3.Value := OTYPE_ID_3;
    end;
    GetCurObjInfo;

    //qryHesoOBJECT_NAME.Value :=CurObjName;
  end;
end;

procedure Ttln_Costdeclarefrm.qryHeso2OBJECT_ID_4Change(Sender: TField);
begin
MainDM.CurObjTypeID:= OTYPE_ID_4; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHeso2OBJECT_ID_4.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHeso2OBJECT_ID_4.FocusControl;
      Exit;
    end;

    if qryHeso2OBJECT_ID_4.Value<>CurObjID then
    begin
      qryHeso2OBJECT_ID_4.Value:=CurObjID;
      qryHeso2OTYPE_ID_4.Value := OTYPE_ID_4;
    end;
    GetCurObjInfo;

  end;
end;

procedure Ttln_Costdeclarefrm.grdAllocateDblClick(Sender: TObject);
var fieldcount : Smallint;
begin

end;

procedure Ttln_Costdeclarefrm.ElPopupButton5Click(Sender: TObject);
var fieldcount : Smallint;
begin
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select count(*) A from tln_costdeclare c ' +
          ' where  c.object_id = :OBJECT_ID  and '+
          ' c.object_id_2 = :object_id_2  and '+
          ' c.object_id_3 = :object_id_3  and '+
          ' c.object_id_4 = :object_id_4  and '+
          ' c.period_id = :period_id and heso = -1';
      maindm.qryCommon.ParamByName('object_id').Value := qryHesoOBJECT_ID.value;
      maindm.qryCommon.ParamByName('object_id_2').Value := qryHesoOBJECT_ID_2.value;
      maindm.qryCommon.ParamByName('object_id_3').Value := qryHesoobject_id_3.value;
      maindm.qryCommon.ParamByName('object_id_4').Value := qryHesoobject_id_4.value;
      maindm.qryCommon.ParamByName('period_id').Value := qryHesoPERIOD_ID.Value;
      maindm.qryCommon.Open;
  if maindm.qryCommon.FieldByName('A').Value = 0 then
  begin
    qryHeso2.Insert;

    for fieldcount := 1 to qryHeso.FieldCount
    do begin
      if (qryHeso.fields.FieldByNumber(fieldcount).FieldName <> 'TABLE_ID') then
         qryHeso2.Fields.FieldByNumber(fieldcount).Value := qryHeso.Fields.FieldByNumber(fieldcount).Value
    end;
    qryHeso2HESO.Value := -1;
  end
  else begin
    qryHeso2.Locate('object_id; object_id_2;object_id_3;object_id_4',VarArrayOf([qryHesoOBJECT_ID.Value, qryHesoobject_id_2.Value,qryHesoobject_id_3.Value,qryHesoobject_id_4.Value]),[]);
    qryHeso2.Edit;
    qryHeso2COST_VALUE.Value:= qryHesoCOST_VALUE.Value;
    qryHeso2.Post;

  end;
  ShowMessageUniText(UTF8Decode('Đã hoàn thành quá trình ra bill!'),0);
end;

end.
