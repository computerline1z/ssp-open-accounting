unit ObjectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  TntButtons, DBActns, ActnList, dxBar, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxGrClEx, ElCLabel, ElLabel, ElHTMLHint, dxLayout,
  IBODataset;

type
  TObjectFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdObj: TdxDBGrid;
    locFormGrd: TdxLayoutItem;
    grdObj_ID: TdxDBGridColumn;
    grdObj_Name: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    grdObj_Other: TdxDBGridColumn;
    grdObj_Sub1: TdxDBGridColumn;
    grdObj_Note: TdxDBGridColumn;
    locFormItem3: TdxLayoutItem;
    TntBitBtn1: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn2: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn3: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn4: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn5: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    TntBitBtn6: TELPopupButton;
    locFormGroup1: TdxLayoutGroup;
    ActionList1: TActionList;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    btnAutoSetOrder: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton1: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    grdObjGrp: TdxDBGridPopupColumn;
    grdObjAcc: TdxDBGridPopupColumn;
    grdObjHanTT: TdxDBGridSpinColumn;
    grdObjMAKH: TdxDBGridPopupColumn;
    grdObjCREATE_DATE: TdxDBGridDateColumn;
    grdObjOBJECT_VALUE: TdxDBGridCalcColumn;
    grdObjSUBINFO_3: TdxDBGridColumn;
    grdObjSUBINFO_4: TdxDBGridColumn;
    grdObjSUBINFO_5: TdxDBGridColumn;
    grdObjSUBINFO_6: TdxDBGridColumn;
    grdObjDISCOUNT_DEF: TdxDBGridCalcColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    grdObjOTHER_DATE: TdxDBGridDateColumn;
    btnSubInfo: TElPopupButton;
    locbtnSubInfo: TdxLayoutItem;
    grdObjOBJECT_HIDE: TdxDBGridCheckColumn;
    grdObjStatus: TdxDBGridColumn;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    grdObjTONKHOTT: TdxDBGridCalcColumn;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    IBOQuery1: TIBOQuery;
    DataSource1: TDataSource;
    IBOQuery1MS_PPXK: TSmallintField;
    IBOQuery1TEN_PPXK: TStringField;
    grdObjMS_PPXK: TdxDBGridPopupColumn;
    ActionList2: TActionList;
    DataSetInsert1: TDataSetInsert;
    grdObjOBJREF_ID: TdxDBGridPopupColumn;
    grdObj_Sub2: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdObjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAutoSetOrderClick(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure grdObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdObjGrpCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjAccCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjMAKHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure grdObjMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure btnSubInfoClick(Sender: TObject);
    procedure grdObjGrpInitPopup(Sender: TObject);
    procedure grdObjMS_PPXKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObjMS_PPXKInitPopup(Sender: TObject);
    procedure grdObjDEFAULT_UNITInitPopup(Sender: TObject);
    procedure grdObjDEFAULT_UNITCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdObjOBJREF_IDCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure grdObj_Sub2InitPopup(Sender: TObject);
    procedure grdObj_Sub2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    LOAIDTCHINH, LOAIDTTC,LOAIDTTC2 : Smallint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ObjectFrm: TObjectFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, PopupForm, DocListForm, ObjectSubValueForm,
  ObjectSubValForm, StrUtils, CM_PopupForm, CM_Functions, DBFunctions,
  htmlhlp;

{$R *.dfm}

procedure TObjectFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
    grdObj_ID.CharCase := ecUpperCase;

  SetOnFormCreate(Sender as TControl);

  if SSPUserRight[9].IR = False then
    acInsert.DataSource := MainDM.dsBanana;
  if SSPUserRight[9].DR = False then
    acDelete.DataSource := MainDM.dsBanana;

  grdObjMS_PPXK.Visible      := MainDM.CurObjTypeID = 2; //Hien thi tuy chon PPXK khi la danh muc hang hoa
  grdObjTONKHOTT.Visible     := MainDM.CurObjTypeID = 2;
{  grdObjDEFAULT_UNIT.Visible := MainDM.CurObjTypeID = 2;}

  MainDM.qryPPXK.Open;

end;

procedure TObjectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryObject do
  begin
    if State in [dsInsert, dsEdit] then
      Post;
    Close;
  end;

  grdObj.SaveToRegistry(RMAIN_KEY + '\ObjectForm\' + IntToStr(MainDM.CurObjTypeID));
end;

procedure TObjectFrm.FormShow(Sender: TObject);
var
  postemp : Smallint;
begin
  with MainDM do
  begin
    if not qryObjectType.Active then //Goi tu 1 cho khac, tu popop chang han
      qryObjectType.Open;
    qryObjectType.Locate('OTYPE_ID', CurObjTypeID, []);
    LOAIDTCHINH := CurObjTypeID;
    PosFirst := 0;
    PosLast  := 0;
    if qryObjectTypeID_FORMAT.IsNull then
      CurObjIDFormat := ''
    else
    begin
      CurObjIDFormat := qryObjectTypeID_FORMAT.Value;
      GenObjIDGrp := (Pos('$GROUP$', CurObjIDFormat) <> 0);
      PosFirst := Pos('#', CurObjIDFormat);
      postemp := PosFirst;
      while (postemp <> 0) do
      begin
        PosLast := postemp;
        postemp := PosEx('#', CurObjIDFormat, PosLast + 1);
      end;
    end;

    LOAIDTTC := qryObjectTypeLOAIDTTC.AsInteger;
    LOAIDTTC2 := qryObjectTypeLOAIDTTC2.AsInteger;

    if Not qryObjectTypeLOAIDTTC.IsNull then
      grdObjMAKH.Caption := qryObjectTypeTENDTTC.Value;

    grdObjMAKH.Visible := Not qryObjectTypeLOAIDTTC.IsNull;
    grdObjMAKH.DisableEditor := qryObjectTypeLOAIDTTC.IsNull;

    if Not qryObjectTypeLOAIDTTC2.IsNull then
      grdObjOBJREF_ID.Caption := qryObjectTypeTENDTTC2.Value;

    grdObjOBJREF_ID.Visible := Not qryObjectTypeLOAIDTTC2.IsNull;
    grdObjOBJREF_ID.DisableEditor := qryObjectTypeLOAIDTTC2.IsNull;


    grdObjGrp.Caption := qryObjectTypeGROUP_NAME.Value;

    if IsNotHasData(qryObjectTypeGROUP_NAME) then
      grdObj.DeleteGroupColumn(0);
    grdObjGrp.Visible := IsHasData(qryObjectTypeGROUP_NAME);

    grdObjOTHER_DATE.Visible := (qryObjectTypeOTYPE_ID.AsInteger = 11);

    FilterAccType := 20;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    qryObject.Open;
    ElFormCaption1.Texts[0].Caption := qryObjectTypeOTYPE_NAME.Value;
    grdObj_ID.Caption := qryObjectTypeID_CAPTION.Value;
    grdObj_Name.Caption := qryObjectTypeNAME_CAPTION.Value;

    if IsNotHasData(qryObjectTypeOTHER_CAPTION) then
      grdObj_Other.Visible := False
    else
      grdObj_Other.Caption := qryObjectTypeOTHER_CAPTION.Value;

    if IsNotHasData(qryObjectTypeSUB1_CAPTION) then
      grdObj_Sub1.Visible := False
    else
      grdObj_Sub1.Caption := qryObjectTypeSUB1_CAPTION.Value;

    if IsNotHasData(qryObjectTypeSUB2_CAPTION) then
      grdObj_Sub2.Visible := False
    else
      grdObj_Sub2.Caption := qryObjectTypeSUB2_CAPTION.Value;

    if IsNotHasData(qryObjectTypeSUB3_CAPTION) then
      grdObjSUBINFO_3.Visible := False
    else
      grdObjSUBINFO_3.Caption := qryObjectTypeSUB3_CAPTION.Value;

    if IsNotHasData(qryObjectTypeSUB4_CAPTION) then
      grdObjSUBINFO_4.Visible := False
    else
      grdObjSUBINFO_4.Caption := qryObjectTypeSUB4_CAPTION.Value;

    if IsNotHasData(qryObjectTypeSUB5_CAPTION) then
      grdObjSUBINFO_5.Visible := False
    else
      grdObjSUBINFO_5.Caption := qryObjectTypeSUB5_CAPTION.Value;

    if IsNotHasData(qryObjectTypeSUB6_CAPTION) then
      grdObjSUBINFO_6.Visible := False
    else
      grdObjSUBINFO_6.Caption := qryObjectTypeSUB6_CAPTION.Value;

    if IsNotHasData(qryObjectTypeDATE_CAPTION) then
      grdObjCREATE_DATE.Visible := False
    else
      grdObjCREATE_DATE.Caption := qryObjectTypeDATE_CAPTION.Value;

    if IsNotHasData(qryObjectTypeNOTE_CAPTION) then
      grdObj_Note.Visible:=False
    else
      grdObj_Note.Caption := qryObjectTypeNOTE_CAPTION.Value;

    if IsNotHasData(qryObjectTypeVALUE_CAPTION) then
      grdObjOBJECT_VALUE.Visible := False
    else
      grdObjOBJECT_VALUE.Caption := qryObjectTypeVALUE_CAPTION.Value;

    if IsNotHasData(qryObjectTypeINT_CAPTION) then
      grdObjHanTT.Visible := False
    else
      grdObjHanTT.Caption := qryObjectTypeINT_CAPTION.Value;

    qryPObjGrp.Open;
  end;
  if MainDM.CurObjTypeID = 6 then //danh muc phan xuong san xuat
  begin
    grdObjStatus.Visible := True;
    dxBarButton2.Visible := ivAlways;
  end;
  btnAutoSetOrder.Visible := (MainDM.CurObjTypeID = 6);
  grdObjDISCOUNT_DEF.Visible := MainDM.CurObjTypeID = 1;
  if LastViewItemID <> '' then
    MainDM.qryObject.Locate('OBJECT_ID', LastViewItemID, []);

  MainDm.qrySubInfo.Open;
//  locbtnSubInfo.Visible := (MainDm.qrySubInfo.RecordCount > 0);

  SetVisible(Self);

  if grdObj.VisibleColumnCount > 7 then
    grdObj.OptionsView := grdObj.OptionsView - [edgoAutoWidth]
  else
    grdObj.OptionsView := grdObj.OptionsView + [edgoAutoWidth];

  try
    grdObj.LoadFromRegistry(RMAIN_KEY + '\ObjectForm\' + IntToStr(MainDM.CurObjTypeID));
  except
  end;

  {MainDM.qrySysObj.Open;
  case MainDM.CurObjTypeID of
    1:
      if Not MainDM.qrySysObj.Locate('OBJECT_ID', 6, []) then
        Exit;
    2:
      if Not MainDM.qrySysObj.Locate('OBJECT_ID', 13, []) then
        Exit;
    4:
      if Not MainDM.qrySysObj.Locate('OBJECT_ID', 1, []) then
        Exit;
    5:
      if Not MainDM.qrySysObj.Locate('OBJECT_ID', 11, []) then
        Exit;
    else
      Exit;
  end;}
  //Khong co table sysobject
  //MainDM.qryObject.ReadOnly := MainDM.qrySysObjACTIVE_OBJECT.AsInteger = 0;
  MainDM.CurObjTypeID := 1;

  grdObj.FullExpand;

end;

procedure TObjectFrm.grdObjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdObj, Key, Shift, True);
end;

procedure TObjectFrm.btnAutoSetOrderClick(Sender: TObject);
begin
  with MainDM do
  begin
    qryCommon.Close;
    qryCommon.SQL.Clear;
    qryCommon.Params.Clear;
    qryCommon.SQL.Text := 'SELECT ISLOOP FROM SP_LAPTHUTUTGT(:KYHT,:BRANCH_ID)';
    qryCommon.Prepare;

    qryCommon.ParamByName('KYHT').Value := CurrentPeriod;
    qryCommon.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryCommon.Open;
    if qryCommon.FieldByName('ISLOOP').Value = 1 then
    begin
      ShowMessageUnicode(135);
      qryCommon.Close;
    end
    else
    begin
      qryCommon.Close;
      qryObject.Refresh;
    end;
  end;
end;

procedure TObjectFrm.dxBarButton8Click(Sender : TObject);
begin
  ExportToExcel(grdObj);
end;

procedure TObjectFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdObj);
end;

procedure TObjectFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdObj);
end;

procedure TObjectFrm.dxBarButton1Click(Sender : TObject);
begin
  grdObj.Filter.Active := dxBarButton1.Down;
end;

procedure TObjectFrm.dxBarButton2Click(Sender : TObject);
begin
  btnAutoSetOrderClick(Sender);
end;

procedure TObjectFrm.grdObjMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TObjectFrm.grdObjGrpCloseUp(Sender : TObject;
  var Text : WideString; var Accept : Boolean);
begin
  OnPopupCloseUp(Accept, MainDM.qryPObjGrp, MainDM.qryObject, 'OBJGRP_ID', 'OBJGRP_ID', 'OBJGRP_ID', Text);
  MainDM.qryPObjGrp.Close;
  MainDM.qryPObjGrp.SQLWhere.Clear;
end;

procedure TObjectFrm.grdObjAccCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TObjectFrm.grdObjMAKHCloseUp(Sender : TObject;
  var Text : WideString; var Accept : Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TObjectFrm.grdObjEditing(Sender : TObject; Node : TdxTreeListNode;
  var Allow : Boolean);
begin

  if grdObj.FocusedField.FieldName = 'MAKH' then
    MainDM.CurObjTypeID := LOAIDTTC
  else if grdObj.FocusedField.FieldName = 'OBJREF_ID' then
    MainDM.CurObjTypeID := LOAIDTTC2
  else
    MainDM.CurObjTypeID := LOAIDTCHINH;
end;

procedure TObjectFrm.FormKeyDown(Sender : TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TObjectFrm.FormActivate(Sender : TObject);
begin
  MainDM.CurObjTypeID := LOAIDTCHINH;
  if not MainDM.qryObjectType.Active then MainDM.qryObjectType.Open;
  MainDM.qryObjectType.Locate('OTYPE_ID', MainDM.CurObjTypeID, []);
  if Not MainDM.qryObject.Active then
    MainDM.qryObject.Open;

end;

procedure TObjectFrm.TntBitBtn5Click(Sender: TObject);
begin

  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(21);
end;

procedure TObjectFrm.grdObjMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y : Integer);
var
  ANode : TdxTreeListNode;
  ACol  : TdxDBTreeListColumn;
begin
  ANode := grdObj.GetNodeAt(X,Y);
  ACol  := grdObj.GetColumnAt(X,Y);
  if (Anode <> nil) and (ACol <> nil) then
    grdObj.Hint := ANode.Strings[ACol.Index];
end;

procedure TObjectFrm.ElPopupButton1Click(Sender: TObject);
const
  sqlSel = 'SELECT distinct doc_id, period_id, doctype_id, doc_date, doc_person, doc_voucher, doc_total , doc_notes, object_id,object_name,branch_id'
      + ' FROM macro_doclistky(:tuky, :denky, :username,:branch_id) '
      + ' where (dtno = :madt and loaino = :loaidt) or (dtco = :madt and loaico = :loaidt) '
      + ' or (ytno = :madt and loaiytno = :loaidt) or (ytco = :madt and loaiytco = :loaidt) or (object_id = :madt and loaidoituong = :loaidt)';
begin
  with MainDM do
  begin
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.SQL.Text := sqlSel;
    qryDocListAnyWhere.ParamByName('tuky').AsInteger  := 0;
    qryDocListAnyWhere.ParamByName('denky').AsInteger := 32000;
    qryDocListAnyWhere.ParamByName('madt').Value      := qryObjectOBJECT_ID.Value;
    qryDocListAnyWhere.ParamByName('loaidt').Value    := qryObjectOTYPE_ID.Value;
    qryDocListAnyWhere.ParamByName('username').Value  := CurrentUser;
    qryDocListAnyWhere.ParamByName('branch_id').Value  := vpBranch_id;

    Screen.Cursor := crHourGlass;
    qryDocListAnyWhere.Open;
    Screen.Cursor := crDefault;

    if qryDocListAnyWhere.RecordCount = 0 then
    begin
      qryDocListAnyWhere.Close;
      Exit;
    end;
  end;
  with MainDM do
  if qryDocListAnyWhere.RecordCount = 1 then
  begin
    Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
    qryDocListAnyWhere.Close;
    Exit;
  end;
  DocListFrm := TDocListFrm.Create(Self);
  try
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
end;

procedure TObjectFrm.btnSubInfoClick(Sender: TObject);
begin
  with TObjectSubValFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TObjectFrm.grdObjGrpInitPopup(Sender: TObject);
begin
  with MainDM.qryPObjGrp do
  begin
    if Active then Close;
    SQLWhere.Text := ' WHERE OTYPE_ID = :OTYPE_ID';
    ParamByName('OTYPE_ID').Value := MainDM.CurObjTypeID;
    Open;
  end;
  InitPopupControl('dxlcObjGroup', CM_PopupFrm, Sender, 2,grdObj);
  CM_PopupFrm.dxtlObjGroup.FullExpand;
end;

procedure TObjectFrm.grdObjMS_PPXKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    MainDM.qryObject.Edit;
    if Not MainDM.qryObjectMS_PPXK.IsNull then
      MainDM.qryObjectMS_PPXK.Value := MainDM.qryPPXKMS_PPXK.Value;
    Text := MainDM.qryPPXKMS_PPXK.AsString;
  end;
end;

procedure TObjectFrm.grdObjMS_PPXKInitPopup(Sender: TObject);
begin
{  with MainDM do
  if Not qryPPXKMS_PPXK.IsNull then
  begin
    qryPPXK.Open;
  end; }
end;

procedure TObjectFrm.grdObjDEFAULT_UNITInitPopup(Sender: TObject);
begin
  MainDM.qryUnit.Open;
end;

procedure TObjectFrm.grdObjDEFAULT_UNITCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryUnitUNIT_ID.Value;
    MainDM.qryUnit.Close;
end;

procedure TObjectFrm.grdObjOBJREF_IDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
    Text := vpItemID;
end;

procedure TObjectFrm.grdObj_Sub2InitPopup(Sender: TObject);
begin
  MainDM.qryUnit.Open;
end;

procedure TObjectFrm.grdObj_Sub2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryUnitUNIT_ID.Value;
    MainDM.qryUnit.Close;
end;

end.
