unit SalePriceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms, 
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar,  TntButtons, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, ElPgCtl, ElCLabel, ElLabel;

type
  TSalePriceFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qrySalePrice: TIBOQuery;
    qrySalePricePERIOD_ID: TSmallintField;
    qrySalePriceOBJECT_NAME: TWideStringField;
    qrySalePriceSALEPRICENOTES: TWideStringField;
    dsSalePrice: TDataSource;
    qrySalePriceSALEPRICE: TIBOFloatField;
    qrySalePriceSALE_MIN: TIBOFloatField;
    qrySalePriceSALE_MAX: TIBOFloatField;
    qrySalePriceOBJECT_ID: TWideStringField;
    qrySalePriceOTYPE_ID: TSmallintField;
    ElPageControl1: TElPageControl;
    locFormItem1: TdxLayoutItem;
    locFormGroup3: TdxLayoutGroup;
    tabItemPrice: TElTabSheet;
    grdKH: TdxDBGrid;
    colMaHH: TdxDBGridPopupColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    grdKHColGia: TdxDBGridCalcColumn;
    grdKHColMin: TdxDBGridCalcColumn;
    grdKHColMax: TdxDBGridCalcColumn;
    grdKHColumn4: TdxDBGridColumn;
    tabCusPrice: TElTabSheet;
    grdCusPrice: TdxDBGrid;
    qryCusPrice: TIBOQuery;
    dsCusPrice: TDataSource;
    qryCusPriceOBJECT_ID: TWideStringField;
    qryCusPriceOTYPE_ID: TSmallintField;
    qryCusPriceMUCGIA: TSmallintField;
    grdCusPriceOBJECT_NAME: TdxDBGridMaskColumn;
    grdCusPriceOTYPE_ID: TdxDBGridMaskColumn;
    grdCusPriceMUCGIA: TdxDBGridSpinColumn;
    grdCusPriceOBJECT_ID: TdxDBGridPopupColumn;
    tabGrpPrice: TElTabSheet;
    grdGrpPrice: TdxDBGrid;
    qryGrpPrice: TIBOQuery;
    dsGrpPrice: TDataSource;
    qryGrpPriceOBJGRP_ID: TWideStringField;
    qryGrpPriceOTYPE_ID: TSmallintField;
    qryGrpPriceMUCGIA: TSmallintField;
    qryGrpPriceOBJGRP_NAME: TWideStringField;
    acCusPricePost: TDataSetPost;
    acCusPriceCancel: TDataSetCancel;
    acGrpPost: TDataSetPost;
    acGrpCancel: TDataSetCancel;
    grdGrpPriceOTYPE_ID: TdxDBGridMaskColumn;
    grdGrpPriceMUCGIA: TdxDBGridSpinColumn;
    grdGrpPriceOBJGRP_NAME: TdxDBGridMaskColumn;
    grdGrpPriceOBJGRP_ID: TdxDBGridPopupColumn;
    qryCusPriceOBJECT_NAME: TWideStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElLabel1: TElLabel;
    qrySalePricePRICE_1: TIBOFloatField;
    qrySalePricePRICE_2: TIBOFloatField;
    qrySalePricePRICE_3: TIBOFloatField;
    qrySalePricePRICE_4: TIBOFloatField;
    qrySalePricePRICE_5: TIBOFloatField;
    qrySalePricePRICE_6: TIBOFloatField;
    qrySalePricePRICE_7: TIBOFloatField;
    qrySalePricePRICE_8: TIBOFloatField;
    qrySalePricePRICE_9: TIBOFloatField;
    qrySalePricePRICE_10: TIBOFloatField;
    qrySalePricePRICE_11: TIBOFloatField;
    qrySalePricePRICE_12: TIBOFloatField;
    grdKHPRICE_1: TdxDBGridMaskColumn;
    grdKHPRICE_2: TdxDBGridMaskColumn;
    grdKHPRICE_3: TdxDBGridMaskColumn;
    grdKHPRICE_4: TdxDBGridMaskColumn;
    grdKHPRICE_5: TdxDBGridMaskColumn;
    grdKHPRICE_6: TdxDBGridMaskColumn;
    grdKHPRICE_7: TdxDBGridMaskColumn;
    grdKHPRICE_8: TdxDBGridMaskColumn;
    grdKHPRICE_9: TdxDBGridMaskColumn;
    grdKHPRICE_10: TdxDBGridMaskColumn;
    grdKHPRICE_11: TdxDBGridMaskColumn;
    grdKHPRICE_12: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure colMaHHCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrySalePriceAfterInsert(DataSet: TDataSet);
    procedure qrySalePriceBeforeDelete(DataSet: TDataSet);
    procedure qrySalePriceBeforeEdit(DataSet: TDataSet);
    procedure qrySalePriceBeforeInsert(DataSet: TDataSet);
    procedure qrySalePriceBeforePost(DataSet: TDataSet);
    procedure qrySalePriceNewRecord(DataSet: TDataSet);
    procedure qrySalePricePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    function KiemtraHople:Boolean;
    procedure grdKHChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grdGrpPriceOBJGRP_IDInitPopup(Sender: TObject);
    procedure grdCusPriceOBJECT_IDInitPopup(Sender: TObject);

    procedure tabCusPriceShow(Sender: TObject);
    procedure tabGrpPriceShow(Sender: TObject);
    procedure tabItemPriceShow(Sender: TObject);
    procedure qryGrpPriceAfterInsert(DataSet: TDataSet);
    procedure qryGrpPriceBeforeDelete(DataSet: TDataSet);
    procedure qryGrpPriceBeforeEdit(DataSet: TDataSet);
    procedure qryGrpPriceBeforeInsert(DataSet: TDataSet);
    procedure qryGrpPricePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryCusPricePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryCusPriceBeforePost(DataSet: TDataSet);
    procedure qryCusPriceBeforeInsert(DataSet: TDataSet);
    procedure qryCusPriceBeforeEdit(DataSet: TDataSet);
    procedure qryCusPriceBeforeDelete(DataSet: TDataSet);
    procedure qryCusPriceAfterInsert(DataSet: TDataSet);
    procedure grdGrpPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGrpPriceMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdCusPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCusPriceMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
    procedure FormatDataSet(qry: TDataset);

  public
    { Public declarations }
  end;

var
  SalePriceFrm: TSalePriceFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TSalePriceFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
    colMaHH.CharCase:=ecUpperCase;
  
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdKHColGia.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColMin.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHColMax.SummaryFooterFormat:=TIENTE_FORMAT;
  // tradtt bo
 { qrySalePriceSALEPRICE.DisplayFormat := TIENTE_FORMAT;
  qrySalePriceSALEPRICE.EditFormat :='###############';
  qrySalePriceSALE_MIN.DisplayFormat := TIENTE_FORMAT;
  qrySalePriceSALE_MIN.EditFormat :='###############';
  qrySalePriceSALE_MAX.DisplayFormat := TIENTE_FORMAT;
  qrySalePriceSALE_MAX.EditFormat :='###############';
  }

 // tradtt: sua loi 1836 - them dinh dang tien te cho cac gia
  FormatDataSet(qrySalePrice);
  
  qryCusPrice.Open;
  qryGrpPrice.Open;

  qrySalePrice.ParamByName('PERIOD_ID').Value:=CurrentPeriod;
  qrySalePrice.Open;
  MainDM.CurObjTypeID:=2;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TSalePriceFrm.colMaHHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qrySalePrice.Edit;
    qrySalePriceOBJECT_ID.Value := vpItemID;
    Text := vpItemID;
    qrySalePriceOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TSalePriceFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryCusPrice.Close;
  qryGrpPrice.Close;
  qrySalePrice.Close;
end;

procedure TSalePriceFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TSalePriceFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True);
end;

procedure TSalePriceFrm.qrySalePriceAfterInsert(DataSet: TDataSet);
begin
  qrySalePriceOBJECT_ID.FocusControl;
end;

procedure TSalePriceFrm.qrySalePriceBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TSalePriceFrm.qrySalePriceBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TSalePriceFrm.qrySalePriceBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TSalePriceFrm.qrySalePriceBeforePost(DataSet: TDataSet);
begin
  if ImportingFromXLS then exit;

  if qrySalePriceSALE_MIN.AsFloat<>0 then
    if qrySalePriceSALEPRICE.AsFloat<qrySalePriceSALE_MIN.AsFloat then
    begin
      ShowMessageUnicode(168);
      qrySalePriceSALEPRICE.FocusControl;
      Abort;
      exit;
    end;
  if qrySalePriceSALE_MAX.AsFloat<>0 then
    if qrySalePriceSALEPRICE.AsFloat>qrySalePriceSALE_MAX.AsFloat then
    begin
      ShowMessageUnicode(169);
      qrySalePriceSALEPRICE.FocusControl;
      Abort;
      exit;
    end;
  if KiemtraHople=False then
  begin
    qrySalePriceOBJECT_ID.FocusControl;
    Abort;
  end;
end;

procedure TSalePriceFrm.qrySalePriceNewRecord(DataSet: TDataSet);
begin
  qrySalePricePERIOD_ID.Value := CurrentPeriod;
  qrySalePriceOTYPE_ID.Value  :=2;
end;

function TSalePriceFrm.KiemtraHople:Boolean;
begin
  Result:=True;
  if Not (qrySalePrice.State in [dsInsert, dsEdit]) then exit;

  Result:=MainDM.CheckObject(qrySalePriceOBJECT_ID.Value,2);

  if Result then
  begin
    if qrySalePriceOBJECT_ID.Value <> MainDM.CurObjID then
      qrySalePriceOBJECT_ID.Value := MainDM.CurObjID;
    qrySalePriceOBJECT_NAME.Value := MainDM.CurObjName;
  end
  else
    qrySalePriceOBJECT_NAME.Clear;
end;

procedure TSalePriceFrm.qrySalePricePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  rs:= ProcessErr(E,'hàng hóa');
  if rs=-803 then
    qrySalePriceOBJECT_ID.FocusControl;

  if rs=-530 then
  begin
    ShowMessageUnicode(68,e.Message,0);
    qrySalePriceOBJECT_ID.FocusControl;
  end;
end;

procedure TSalePriceFrm.grdKHChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  if (grdKH.FocusedField.FieldName<>'OBJECT_ID') then
    if KiemtraHople=False then
    begin
      qrySalePriceOBJECT_ID.FocusControl;
      Abort;
      exit;
    end;
end;

procedure TSalePriceFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TSalePriceFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TSalePriceFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;


procedure TSalePriceFrm.grdGrpPriceOBJGRP_IDInitPopup(Sender: TObject);
begin
    MainDM.CurObjTypeID :=1;
end;

procedure TSalePriceFrm.grdCusPriceOBJECT_IDInitPopup(Sender: TObject);
begin
  MainDM.CurObjTypeID :=1;
end;

procedure TSalePriceFrm.tabCusPriceShow(Sender: TObject);
begin

    btnPost.Action :=acCusPricePost;
    btnCancel.Action :=acCusPriceCancel;
end;

procedure TSalePriceFrm.tabGrpPriceShow(Sender: TObject);
begin
    qryGrpPrice.Open;
    btnPost.Action :=acGrpPost;
    btnCancel.Action :=acGrpCancel;
end;

procedure TSalePriceFrm.tabItemPriceShow(Sender: TObject);
begin
    btnPost.Action :=acPost;
    btnCancel.Action :=acCancel;
end;

procedure TSalePriceFrm.qryGrpPriceAfterInsert(DataSet: TDataSet);
begin
  qryGrpPriceOBJGRP_ID.FocusControl;
end;

procedure TSalePriceFrm.qryGrpPriceBeforeDelete(DataSet: TDataSet);
begin
 if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure TSalePriceFrm.qryGrpPriceBeforeEdit(DataSet: TDataSet);
begin
  //if Not MainDM.CheckAllowEdit(DataSet,5) then Abort;
end;

procedure TSalePriceFrm.qryGrpPriceBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TSalePriceFrm.qryGrpPricePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var rs:Integer;
begin
 Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  rs:= ProcessErr(E,'nhóm khách hàng');
  if rs=-803 then
    qryGrpPriceOBJGRP_ID.FocusControl;

  if rs=-530 then
  begin
    ShowMessageUnicode(68,e.Message,0);
    qryGrpPriceOBJGRP_ID.FocusControl;
  end;
end;

procedure TSalePriceFrm.qryCusPricePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var rs: Integer;
begin
 Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  rs:= ProcessErr(E,'khách hàng');
  if rs=-803 then
    qryCusPriceOBJECT_ID.FocusControl;

  if rs=-530 then
  begin
    ShowMessageUnicode(68,e.Message,0);
    qryCusPriceOBJECT_ID.FocusControl;
  end;
end;

procedure TSalePriceFrm.qryCusPriceBeforePost(DataSet: TDataSet);
begin
 if KiemtraHople=False then
  begin
    qryCusPriceOBJECT_ID.FocusControl;
    Abort;
  end;
end;

procedure TSalePriceFrm.qryCusPriceBeforeInsert(DataSet: TDataSet);
begin
 if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure TSalePriceFrm.qryCusPriceBeforeEdit(DataSet: TDataSet);
begin
 if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TSalePriceFrm.qryCusPriceBeforeDelete(DataSet: TDataSet);
begin
 //if Not MainDM.CheckAllowDelete(5) then Abort;
end;

procedure TSalePriceFrm.qryCusPriceAfterInsert(DataSet: TDataSet);
begin
  qryCusPriceOBJECT_ID.FocusControl;
end;
procedure TSalePriceFrm.grdGrpPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdGrpPrice, Key, Shift, True);
end;

procedure TSalePriceFrm.grdGrpPriceMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

end;

procedure TSalePriceFrm.grdCusPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdGrpPrice, Key, Shift, True);
end;

procedure TSalePriceFrm.grdCusPriceMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TSalePriceFrm.FormatDataSet(qry: TDataset);
var
  i: smallint;
begin
  // tradtt: format cac field float
  for i := 0 to qry.FieldCount - 1 do
    begin
      if (qry.Fields[i] is TIBOFloatField) then
        begin
          TIBOFloatField(qry.Fields[i]).DisplayFormat := TIENTE_FORMAT;
          TIBOFloatField(qry.Fields[i]).EditFormat := '###############';
        end;
      if (qry.Fields[i] is TFloatField) then
        begin
          TFloatField(qry.Fields[i]).DisplayFormat := TIENTE_FORMAT;
          TFloatField(qry.Fields[i]).EditFormat := '###############';
        end;
      if (qry.Fields[i] is TIntegerField) then
        begin
          TIntegerField(qry.Fields[i]).DisplayFormat := TIENTE_FORMAT;
          TIntegerField(qry.Fields[i]).EditFormat := '###############';
        end;
    end;

end;

end.
