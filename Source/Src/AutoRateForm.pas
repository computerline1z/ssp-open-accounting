unit AutoRateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns,
  ActnList, DB, IBODataset, dxLayout, dxExGrEd, dxExELib;

type
  TAutoRateFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAllocate: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    qryHeso: TIBOQuery;
    dsHeso: TDataSource;
    qryHesoOBJECT_ID: TWideStringField;
    qryHesoOTYPE_ID: TSmallintField;
    qryHesoOBJECT_NAME: TWideStringField;
    grdAllocateCOEFFICIENT: TdxDBGridMaskColumn;
    grdAllocateOBJECT_NAME: TdxDBGridMaskColumn;
    grdAllocateOBJECT_ID: TdxDBGridPopupColumn;
    qryHesoAUTO_ID: TSmallintField;
    qryHesoCOEFFICIENT: TIBOFloatField;
    qryHesoPERIOD_ID: TSmallintField;
    qryHesoAUTO_VALUE: TIBOFloatField;
    grdAllocateAUTO_VALUE: TdxDBGridCalcColumn;
    grdAllocatePTSPB: TdxDBGridCalcColumn;
    grdAllocatePMSPB: TdxDBGridCalcColumn;
    qryHesoTO_FACTYPE: TSmallintField;
    qryHesoTO_FACTOR_2: TWideStringField;
    qryHesoTO_FACTYPE_2: TSmallintField;
    grdAllocateTO_FACTOR: TdxDBGridPopupColumn;
    grdAllocateTO_FACTOR_2: TdxDBGridPopupColumn;
    qryHesoAUTORATE_ID: TSmallintField;
    qryHesoAUTO_TYPE: TSmallintField;
    locFormItem8: TdxLayoutItem;
    pedtBranch: TdxDBExtLookupEdit;
    qryComBranch: TIBOQuery;
    qryComBranchBRANCH_ID: TWideStringField;
    qryComBranchFULLNAME: TWideStringField;
    qryComBranchSHORTNAME: TWideStringField;
    qryComBranchISMIN: TSmallintField;
    qryComBranchPBRANCH_ID: TWideStringField;
    qryComBranchCOMPANY_ID: TSmallintField;
    dsComBranch: TDataSource;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    qryHesoBRANCH_ID: TWideStringField;
    qryHesoFROM_OBJECT: TWideStringField;
    grdAllocateFROM_OBJECT: TdxDBGridPopupColumn;
    grdAllocateAUTORATE_ID: TdxDBGridMaskColumn;
    qryHesoTO_FACTOR: TWideStringField;
    qryHesoFROM_OBJTYPE: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdAllocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAllocateMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryHesoBeforeDelete(DataSet: TDataSet);
    procedure qryHesoBeforePost(DataSet: TDataSet);
    procedure qryHesoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryHesoBeforeEdit(DataSet: TDataSet);
    procedure qryHesoBeforeInsert(DataSet: TDataSet);
    procedure qryHesoAfterInsert(DataSet: TDataSet);
    procedure qryHesoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure grdAllocateOBJECT_IDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryHesoOBJECT_IDChange(Sender: TField);
    procedure grdAllocateTO_FACTORInitPopup(Sender: TObject);
    procedure grdAllocateTO_FACTOR_2InitPopup(Sender: TObject);
    procedure grdAllocateTO_FACTORCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateTO_FACTOR_2CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateOBJECT_IDInitPopup(Sender: TObject);
    procedure qryHesoTO_FACTORChange(Sender: TField);
    procedure qryHesoTO_FACTOR_2Change(Sender: TField);
    procedure pedtBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pedtBranchInitPopup(Sender: TObject);
    procedure qryHesoBeforeOpen(DataSet: TDataSet);
    procedure qryComBranchBeforeOpen(DataSet: TDataSet);
    procedure qryHesoAfterOpen(DataSet: TDataSet);
    procedure qryComBranchAfterOpen(DataSet: TDataSet);
    procedure grdAllocateFROM_OBJECTCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdAllocateFROM_OBJECTInitPopup(Sender: TObject);
    procedure qryHesoFROM_OBJECTChange(Sender: TField);



  private
    { Private declarations }
  public
    AUTO_ID,MAX_ID :Smallint;
    AUTO_TYPE : Smallint;
    FROM_OTYPE, FROM_DTYPE, FROM_DTYPE2, TO_OTYPE, TO_DTYPE, TO_DTYPE2: Smallint;
    FROM_ACC, TO_ACC : WideString;
    { Public declarations }
  end;

var
  AutoRateFrm: TAutoRateFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, HtmlHlp;
{$R *.dfm}


procedure TAutoRateFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  qryHesoAUTO_VALUE.DisplayFormat:=TIENTE_FORMAT;
  grdAllocateAUTO_VALUE.SummaryFooterFormat:=TIENTE_FORMAT;

  
  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TAutoRateFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryHeso do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TAutoRateFrm.grdAllocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdAllocate, Key, Shift, True);
end;

procedure TAutoRateFrm.grdAllocateMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TAutoRateFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TAutoRateFrm.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(13);
end;

procedure TAutoRateFrm.qryHesoBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TAutoRateFrm.qryHesoBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;

  if qryHesoTO_FACTOR.IsNull then
    qryHesoTO_FACTYPE.Clear;
  if qryHesoTO_FACTOR_2.IsNull then
    qryHesoTO_FACTYPE_2.Clear;
 if qryHesoOBJECT_ID.IsNull then
    qryHesoOTYPE_ID.Clear;

  if qryHesoFROM_OBJECT.IsNull then
    qryHesoFROM_OBJTYPE.Clear;

end;

procedure TAutoRateFrm.qryHesoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(42,e.Message,0);

  qryHesoOBJECT_ID.FocusControl;
end;

procedure TAutoRateFrm.qryHesoBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure TAutoRateFrm.qryHesoBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure TAutoRateFrm.qryHesoAfterInsert(DataSet: TDataSet);
begin
  if grdAllocateFROM_OBJECT.Visible then
    qryHesoFROM_OBJECT.FocusControl
  else
    qryHesoOBJECT_ID.FocusControl;
end;

procedure TAutoRateFrm.qryHesoNewRecord(DataSet: TDataSet);
begin
  max_id := max_id + 1;

  qryHesoPERIOD_ID.AsInteger:=CurrentPeriod;
  qryHesoAUTO_ID.AsInteger:= AUTO_ID;
  qryHesoBRANCH_ID.Value := qryComBranchBRANCH_ID.Value;


  qryHesoOTYPE_ID.AsInteger := TO_OTYPE;
  qryHesoTO_FACTYPE.AsInteger := TO_DTYPE;
  qryHesoTO_FACTYPE_2.AsInteger := TO_DTYPE2;

  qryHesoFROM_OBJTYPE.AsInteger := FROM_OTYPE;

  qryHesoCOEFFICIENT.AsFloat:=1;

  qryHesoAUTORATE_ID.AsInteger := max_id;


  if ((AUTO_TYPE=6) or (AUTO_TYPE=7)) then
    qryHesoAUTO_VALUE.AsFloat:=100;
end;

procedure TAutoRateFrm.FormShow(Sender: TObject);
begin
  qryComBranch.Open;
  qryComBranch.Locate('branch_id',vpBranch_id,[]);
  qryHeso.Open;

  SetVisible(Self);

  grdAllocateCOEFFICIENT.Visible:=(AUTO_TYPE=5);
  grdAllocateCOEFFICIENT.DisableCustomizing:= Not grdAllocateCOEFFICIENT.Visible;

  grdAllocatePTSPB.Visible:= (AUTO_TYPE=6) or (AUTO_TYPE=7);
  grdAllocatePTSPB.DisableCustomizing:= Not grdAllocatePTSPB.Visible;
  grdAllocatePMSPB.Visible:= grdAllocatePTSPB.Visible;
  grdAllocatePMSPB.DisableCustomizing:= grdAllocatePTSPB.DisableCustomizing;

  grdAllocateAUTO_VALUE.Visible:= (AUTO_TYPE=8) or (AUTO_TYPE=9);
  grdAllocateAUTO_VALUE.DisableCustomizing:= Not grdAllocateAUTO_VALUE.Visible;

  grdAllocateFROM_OBJECT.Visible := (AUTO_TYPE=6) or (AUTO_TYPE=7);

  grdAllocateTO_FACTOR.DisableEditor := (AUTO_TYPE<>12) and (AUTO_TYPE<>6);
  grdAllocateTO_FACTOR_2.DisableEditor := (AUTO_TYPE<>12);

  grdAllocateTO_FACTOR.Visible := (AUTO_TYPE=12) or (AUTO_TYPE=6);
  grdAllocateTO_FACTOR_2.Visible := (AUTO_TYPE=12);

  grdAllocatePMSPB.Visible := (AUTO_TYPE <> 12);
  grdAllocatePTSPB.Visible := (AUTO_TYPE <> 12);
  grdAllocateOBJECT_NAME.Visible := (AUTO_TYPE <> 12);
  grdAllocateCOEFFICIENT.Visible:=(AUTO_TYPE=12);

  MainDM.qryPAcc.Locate('ACCOUNT_ID',FROM_ACC,[]);
  FROM_OTYPE :=  MainDM.qryPAccOTYPE_ID.value;
  FROM_DTYPE :=  MainDM.qryPAccDTYPE_ID.value;
  FROM_DTYPE2 :=  MainDM.qryPAccDTYPE_ID_1.value;

  MainDM.qryPAcc.Locate('ACCOUNT_ID',TO_ACC,[]);
  TO_OTYPE :=  MainDM.qryPAccOTYPE_ID.value;
  TO_DTYPE :=  MainDM.qryPAccDTYPE_ID.value;
  TO_DTYPE2 :=  MainDM.qryPAccDTYPE_ID_1.value;

end;

procedure TAutoRateFrm.grdAllocateOBJECT_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TAutoRateFrm.qryHesoOBJECT_IDChange(Sender: TField);
begin
  MainDM.CurObjTypeID:= TO_OTYPE; //MainDM.qryPAccOTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoOBJECT_ID.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoOBJECT_ID.FocusControl;
      Exit;
    end;

    {if qryHesoOBJECT_ID.Value<>CurObjID then
    begin
      qryHesoOBJECT_ID.Value:=CurObjID;
      qryHesoOTYPE_ID.Value := TO_OTYPE;
    end;}
    GetCurObjInfo;

    qryHesoOBJECT_NAME.Value :=CurObjName;
    //qryHesoOBJECT_ID.Value := CurObjID;
    qryHesoOTYPE_ID.Value := TO_OTYPE;
  end;
end;

procedure TAutoRateFrm.grdAllocateTO_FACTORInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:= TO_DTYPE;//MainDM.qryPAccDTYPE_ID.AsInteger;
end;

procedure TAutoRateFrm.grdAllocateTO_FACTOR_2InitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:=TO_DTYPE2;//MainDM.qryPAccDTYPE_ID_1.AsInteger;
end;

procedure TAutoRateFrm.grdAllocateTO_FACTORCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TAutoRateFrm.grdAllocateTO_FACTOR_2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TAutoRateFrm.grdAllocateOBJECT_IDInitPopup(Sender: TObject);
begin
    MainDM.CurObjTypeID:= TO_OTYPE;//MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TAutoRateFrm.qryHesoTO_FACTORChange(Sender: TField);
begin
  MainDM.CurObjTypeID:=TO_DTYPE;//MainDM.qryPAccDTYPE_ID.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoTO_FACTOR.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoTO_FACTOR.FocusControl;
      Exit;
    end;

    {if (qryHesoTO_FACTOR.Value<>CurObjID) or (qryHesoTO_FACTYPE.AsInteger <> TO_DTYPE) then
    begin}
      qryHesoTO_FACTYPE.Value := TO_DTYPE;
      //qryHesoTO_FACTOR.Value:=CurObjID;

    //end
  end;
end;

procedure TAutoRateFrm.qryHesoTO_FACTOR_2Change(Sender: TField);
begin
  MainDM.CurObjTypeID:=TO_DTYPE2;//MainDM.qryPAccDTYPE_ID_1.AsInteger;
  with MainDM do
  begin
    if Not CheckObject(qryHesoTO_FACTOR_2.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoTO_FACTOR_2.FocusControl;
      Exit;
    end;

    {if qryHesoTO_FACTOR_2.Value<>CurObjID then
    begin}
      //qryHesoTO_FACTOR_2.Value:=CurObjID;
      qryHesoTO_FACTYPE_2.Value := TO_DTYPE2;
    //end
  end;
end;

procedure TAutoRateFrm.pedtBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin

  if accept then
  //Neu luu lai thay doi Branch thi close form
  begin
    qryheso.Close;
    qryheso.Open;
  end

end;

procedure TAutoRateFrm.pedtBranchInitPopup(Sender: TObject);
begin
    {Maindm.qryBranch.OnFilterRecord := Maindm.qryBranchFilterRecord;
    Maindm.qryBranch.Filtered := TRUE;    }
end;

procedure TAutoRateFrm.qryHesoBeforeOpen(DataSet: TDataSet);
begin
  qryHeso.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryHeso.ParamByName('AUTO_ID').AsInteger:=AUTO_ID;
  qryHeso.ParamByName('BRANCH_ID').value:= qryComBranchBRANCH_ID.Value;
end;

procedure TAutoRateFrm.qryComBranchBeforeOpen(DataSet: TDataSet);
begin
  qryComBranch.ParamByName('BRANCH_ID').Value := vpBranch_id;
end;

procedure TAutoRateFrm.qryHesoAfterOpen(DataSet: TDataSet);
begin
  maindm.qryCommon.Close;
  maindm.qryCommon.SQL.Clear;
  maindm.qryCommon.Params.Clear;
  maindm.qryCommon.SQL.Text := 'select max(autorate_id) max_id from AUTO_RATE  where branch_id = :branch_id and period_id = :period_id and auto_id = :auto_id';

  maindm.qryCommon.ParamByName('auto_id').Value := auto_id;
  maindm.qryCommon.ParamByName('branch_id').Value := qryComBranchBRANCH_ID.Value;
  maindm.qryCommon.ParamByName('period_id').Value := CurrentPeriod;
  maindm.qryCommon.Open;
  if maindm.qryCommon.fieldbyname('max_id').IsNull then
    MAX_ID := 1
  else
    MAX_ID := maindm.qryCommon.fieldbyname('max_id').Value;
  maindm.qryCommon.Close;
  
end;

procedure TAutoRateFrm.qryComBranchAfterOpen(DataSet: TDataSet);
begin
  if qryComBranch.recordcount = 1 then
    pedtBranch.Enabled := FALSE;

end;

procedure TAutoRateFrm.grdAllocateFROM_OBJECTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TAutoRateFrm.grdAllocateFROM_OBJECTInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID:=FROM_OTYPE;//MainDM.qryPAccOTYPE_ID.AsInteger;
end;

procedure TAutoRateFrm.qryHesoFROM_OBJECTChange(Sender: TField);
begin
  MainDM.CurObjTypeID:= FROM_OTYPE;
  with MainDM do
  begin
    if Not CheckObject(qryHesoFROM_OBJECT.Value,MainDM.CurObjTypeID) then
    begin
      ShowMessageUnicode(46);
      qryHesoFROM_OBJECT.FocusControl;
      Exit;
    end;
    //if qryHesoFROM_OBJECT.Value<>CurObjID then
    //begin
      //qryHesoFROM_OBJECT.Value:=CurObjID;
      qryHesoFROM_OBJTYPE.Value := FROM_OTYPE;
    //end
  end;
end;

end.
