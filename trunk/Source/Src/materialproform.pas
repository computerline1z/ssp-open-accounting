unit materialproform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,   
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TMaterialProFrm = class(TForm)
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
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    grdColSLDM: TdxDBGridCalcColumn;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    grdKHColumn6: TdxDBGridPopupColumn;
    grdColSLPB: TdxDBGridColumn;
    dxPopupEdit1: TdxPopupEdit;
    locFormItem9: TdxLayoutItem;
    dxEdit1: TdxEdit;
    locFormItem10: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    qryMaterialProj: TIBOQuery;
    dsMaterialNormProj: TDataSource;
    grdKHSLTP: TdxDBGridColumn;
    bbtnOne: TdxBarButton;
    bbtnMany: TdxBarButton;
    locFormItem1: TdxLayoutItem;
    dxPopupEdit2: TdxPopupEdit;
    locFormItem3: TdxLayoutItem;
    dxEdit2: TdxEdit;
    locFormGroup4: TdxLayoutGroup;
    locFormGroup5: TdxLayoutGroup;
    locFormGroup3: TdxLayoutGroup;
    grdKHVALUE_ESTIMATE: TdxDBGridMaskColumn;
    qryMaterialProjBEGIN_PERIOD_ID: TSmallintField;
    qryMaterialProjMATERIAL_PRO_ID: TSmallintField;
    qryMaterialProjOBJECT_ID: TWideStringField;
    qryMaterialProjOTYPE_ID: TSmallintField;
    qryMaterialProjFACTOR_ID: TWideStringField;
    qryMaterialProjFTYPE_ID: TSmallintField;
    qryMaterialProjMATERIAL_ID: TWideStringField;
    qryMaterialProjMTYPE_ID: TSmallintField;
    qryMaterialProjAMOUNT_ESTIMATE: TIBOFloatField;
    qryMaterialProjAMOUNT_ARISE: TIBOFloatField;
    qryMaterialProjPRICE_ESTIMATE: TIBOFloatField;
    qryMaterialProjVALUE_ESTIMATE: TIBOFloatField;
    grdKHMATERIAL_PRO_ID: TdxDBGridMaskColumn;
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
    procedure qryMaterialProjAfterInsert(DataSet: TDataSet);
    procedure qryMaterialProjBeforeDelete(DataSet: TDataSet);
    procedure qryMaterialProjBeforeEdit(DataSet: TDataSet);
    procedure qryMaterialProjBeforeInsert(DataSet: TDataSet);
    procedure qryMaterialProjBeforePost(DataSet: TDataSet);
    procedure qryMaterialProjNewRecord(DataSet: TDataSet);
    procedure qryMaterialProjPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    function KiemtraHopleobject:Boolean;
    function KiemtraHopleNL:Boolean;
    function KiemtraHopleFactor :Boolean;
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxPopupEdit1Enter(Sender: TObject);
    procedure dxPopupEdit1Change(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxPopupEdit2Enter(Sender: TObject);
    procedure dxPopupEdit2Exit(Sender: TObject);
    procedure dxPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxPopupEdit2Change(Sender: TObject);
    procedure qryMaterialProjAfterOpen(DataSet: TDataSet);

  private
    MAHM,MACT,TENCT,TENHM,TENNL, TENLOAIDT,TENLOAIYT :WideString;

    LOAIDT,LOAIYT,BeginPeriod_CT : Smallint;
    { Private declarations }
    IsErrorGoodsID:Boolean;
    intMaxNormID:integer;//Luu giu gia tri lon nhat cua chi tiet cua dinh muc nguyen vat lieu
  public
    { Public declarations }
  end;

var
  MaterialProFrm: TMaterialProFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TMaterialProFrm.FormCreate(Sender: TObject);
begin
  MAHM:='';
  MACT:='';
  TENNL:='';
  loaiyt := 0;

  maindm.qryPAcc.Open;
  maindm.qryPAcc.Filtered := false;
  maindm.qryPAcc.Locate('ACCOUNT_ID','621',[]);
  loaiyt := maindm.qryPAccDTYPE_ID.Value;
  loaidt := maindm.qryPAccOTYPE_ID.Value;

  dxPopupEdit1.Enabled := (not maindm.qryPAccDTYPE_ID.IsNull);

  maindm.qryPAcc.close;

  if prmUSEUPPERCASE then
  begin
    dxPopupEdit1.CharCase:=ecUpperCase;
    dxPopupEdit2.CharCase:=ecUpperCase;
    grdKHColumn6.CharCase:=ecUpperCase;

  end;

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdColSLDM.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdColSLPB.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdKHVALUE_ESTIMATE.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHSLTP.SummaryFooterFormat:=SOLUONG_FORMAT;


  qryMaterialProjAMOUNT_ESTIMATE.DisplayFormat:=SOLUONG_FORMAT;

  qryMaterialProjPRICE_ESTIMATE.DisplayFormat:=TIENTE_FORMAT;
  qryMaterialProjAMOUNT_ARISE.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialProjAMOUNT_ESTIMATE.DisplayFormat:=SOLUONG_FORMAT;
  qryMaterialProjVALUE_ESTIMATE.DisplayFormat:=TIENTE_FORMAT;

  intMaxNormID :=0;


  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure TMaterialProFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  {if Accept then
  begin
    qryMaterialProj.Edit;
    qryMaterialProjMATERIAL_ID.Value := vpItemID;
    Text := vpItemID;
    qryMaterialProjOBJECT_NAME.Value := vpItemName;
  end;    }
end;

procedure TMaterialProFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryMaterialProj.Close;
end;

procedure TMaterialProFrm.grdKHColumn6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TMaterialProFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TMaterialProFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,4);
end;

procedure TMaterialProFrm.dxBarButton8Click(Sender: TObject);
begin
  ExportToExcel(grdKH);
end;

procedure TMaterialProFrm.dxBarButton9Click(Sender: TObject);
begin
  ExportToHTML(grdKH);
end;

procedure TMaterialProFrm.dxBarButton10Click(Sender: TObject);
begin
  ExportToXML(grdKH);
end;

procedure TMaterialProFrm.dxBarButton1Click(Sender: TObject);
begin
  grdKH.Filter.Active:= dxBarButton1.Down;
end;

procedure TMaterialProFrm.grdKHEnter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=2;
  if qryMaterialProj.RecordCount=0 then
    qryMaterialProj.Insert;
  qryMaterialProjMATERIAL_ID.FocusControl;
end;

procedure TMaterialProFrm.qryMaterialProjAfterInsert(DataSet: TDataSet);
begin
  qryMaterialProjMATERIAL_ID.FocusControl;
  intMaxNormID := intMaxNormID + 1 ;
end;

procedure TMaterialProFrm.qryMaterialProjBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TMaterialProFrm.qryMaterialProjBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TMaterialProFrm.qryMaterialProjBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;

  MAHM :=dxPopupEdit1.Text;
  MACT :=dxPopupEdit2.Text;
end;

procedure TMaterialProFrm.qryMaterialProjBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;
  if KiemtraHopleObject = False then
  begin
    qryMaterialProjOBJECT_ID.FocusControl;
    Abort;
    exit;
  end;
  if KiemtraHopleNL = False then
  begin
    qryMaterialProjMATERIAL_ID.FocusControl;
    Abort;
    exit;
  end;
  if IsNotHasData(qryMaterialProjMATERIAL_ID) then
  begin
    ShowMessageUnicode(125);
    qryMaterialProjMATERIAL_ID.FocusControl;
    Abort;
  end;
end;

procedure TMaterialProFrm.qryMaterialProjNewRecord(DataSet: TDataSet);
begin

  qryMaterialProjMATERIAL_PRO_ID.Value := intMaxNormID;
  qryMaterialProjBEGIN_PERIOD_ID.Value := BeginPeriod_CT;
  qryMaterialProjFACTOR_ID.Value := dxPopupEdit1.Text;
  qryMaterialProjFTYPE_ID.AsInteger:=loaiyt;
  if (trim(dxPopupEdit1.Text) = '') then
  begin
    qryMaterialProjFTYPE_ID.Clear;
    qryMaterialProjFACTOR_ID.Clear;
  end ;
  qryMaterialProjOBJECT_ID.Value := dxPopupEdit2.Text;
  qryMaterialProjOTYPE_ID.AsInteger:=loaidt;
  qryMaterialProjMTYPE_ID.AsInteger:=2;

end;

function TMaterialProFrm.KiemtraHopleObject:Boolean;
begin
  Result:=True;
  if Not (qryMaterialProj.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryMaterialProjobject_id.Value,qryMaterialProjotype_id.value);
  if Result then
  begin
    if qryMaterialProjobject_id.Value <> MainDM.CurObjID then
      qryMaterialProjobject_id.Value := MainDM.CurObjID;
  end

end;

function TMaterialProFrm.KiemtraHopleNL:Boolean;
begin
  Result:=MainDM.CheckObject(qryMaterialProjMATERIAL_ID.Value,2);
  if Result then
    if qryMaterialProj.State in [dsInsert,dsEdit] then
      if qryMaterialProjMATERIAL_ID.Value<>MainDM.CurObjID then
        qryMaterialProjMATERIAL_ID.Value:=MainDM.CurObjID;
end;

procedure TMaterialProFrm.qryMaterialProjPostError(DataSet: TDataSet;
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
    qryMaterialProjMATERIAL_ID.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    if MainDM.CheckObject(qryMaterialProjMATERIAL_ID.Value,2,False) then
    begin
      ShowMessageUnicode(68,e.Message,0);
      qryMaterialProjMATERIAL_ID.FocusControl;
    end
    else
    begin
      ShowMessageUnicode(164,e.Message,0);
      qryMaterialProjMATERIAL_ID.FocusControl;
    end
  end;
end;

procedure TMaterialProFrm.grdKHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  pmAsset.PopupFromCursorPos;
end;

procedure TMaterialProFrm.dxPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=loaiyt;
end;

procedure TMaterialProFrm.dxPopupEdit1Change(Sender: TObject);
begin
  qryMaterialProj.Close;
end;

procedure TMaterialProFrm.dxPopupEdit1CloseUp(Sender: TObject;
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

procedure TMaterialProFrm.dxPopupEdit1Exit(Sender: TObject);
begin
  with MainDM do
  begin
    if not CheckObject(dxPopupEdit1.Text,loaiyt) then
    begin
      ShowMessageUnicode(100);
      dxPopupEdit1.SetFocus;
      exit;
    end;
    if dxPopupEdit1.Text<>CurObjID then
      dxPopupEdit1.Text:=CurObjID;
    dxEdit1.Text:=CurObjName;
  end;
  if qryMaterialProj.Active then Exit;
  qryMaterialProj.ParamByName('FACTOR_ID').Value := dxPopupEdit1.Text;
  qryMaterialProj.ParamByName('FTYPE_ID').Value := loaiyt;
  qryMaterialProj.ParamByName('OBJECT_id').Value := dxPopupEdit2.Text;
  qryMaterialProj.ParamByName('OTYPE_ID').Value := LOAIDT;
  qryMaterialProj.Open;



end;

procedure TMaterialProFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TMaterialProFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TMaterialProFrm.dxPopupEdit2Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=LOAIDT;
end;

procedure TMaterialProFrm.dxPopupEdit2Exit(Sender: TObject);
begin
//  intMaxNormID := 0;

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
    dxEdit2.Text:=CurObjName;
  
  end;

  if qryMaterialProj.Active then qryMaterialProj.close;

  qryMaterialProj.ParamByName('object_id').Value := dxPopupEdit2.Text;
  qryMaterialProj.ParamByName('otype_id').Value := loaidt;
  qryMaterialProj.ParamByName('factor_id').Value := dxPopupEdit1.Text;
  qryMaterialProj.ParamByName('ftype_id').Value := LOAIYT;
  qryMaterialProj.Open;


end;

procedure TMaterialProFrm.dxPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    Text := vpItemID;
    dxPopupEdit2.Text:=vpItemID;
    dxEdit2.Text:=vpItemName;
    //grdKH.SetFocus;
  end;
end;

procedure TMaterialProFrm.dxPopupEdit2Change(Sender: TObject);
begin
  qryMaterialProj.Close;
end;

function TMaterialProFrm.KiemtraHopleFactor: Boolean;
begin
  Result:=True;
  if Not (qryMaterialProj.State in [dsInsert, dsEdit]) then exit;
  Result:=MainDM.CheckObject(qryMaterialProjFACTOR_ID.Value,qryMaterialProjFTYPE_ID.value);
  if Result then
  begin
    if qryMaterialProjFACTOR_ID.Value <> MainDM.CurObjID then
      qryMaterialProjFACTOR_ID.Value := MainDM.CurObjID;
  end
end;

procedure TMaterialProFrm.qryMaterialProjAfterOpen(DataSet: TDataSet);
begin
  if qryMaterialProj.recordcount <> 0 then
    BeginPeriod_CT := qryMaterialProjBEGIN_PERIOD_ID.Value
  else
    BeginPeriod_CT := CurrentPeriod;

  MainDM.qryCommon.SQL.Text := 'select max(MATERIAL_PRO_ID) MAXID from MATERIAL_PROJECT where begin_period_id = ' + IntToStr(BeginPeriod_CT);
  MainDM.qryCommon.Open;

  intMaxNormID :=MainDM.qryCommon.FieldByName('MAXID').AsInteger +1;
  MainDM.qryCommon.Close;

end;

end.
