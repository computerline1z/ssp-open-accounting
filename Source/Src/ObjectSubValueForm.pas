unit ObjectSubValueForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns,
  ActnList, DB, IBODataset, dxInspct, dxDBInsp, dxInspRw, dxDBInRw;

type
  TObjectSubValueFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    qrySubValue: TIBOQuery;
    dsSubValue: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    Insp: TdxDBInspector;
    locFormItem1: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    qrySubValueSTRING_VALUE1: TWideStringField;
    qrySubValueNUMBER_VALUE1: TIBOFloatField;
    qrySubValueDATE_VALUE1: TDateTimeField;
    qrySubValueSTRING_VALUE2: TWideStringField;
    qrySubValueNUMBER_VALUE2: TIBOFloatField;
    qrySubValueDATE_VALUE2: TDateTimeField;
    qrySubValueSTRING_VALUE3: TWideStringField;
    qrySubValueNUMBER_VALUE3: TIBOFloatField;
    qrySubValueDATE_VALUE3: TDateTimeField;
    qrySubValueSTRING_VALUE4: TWideStringField;
    qrySubValueNUMBER_VALUE4: TIBOFloatField;
    qrySubValueDATE_VALUE4: TDateTimeField;
    qrySubValueSTRING_VALUE5: TWideStringField;
    qrySubValueNUMBER_VALUE5: TIBOFloatField;
    qrySubValueDATE_VALUE5: TDateTimeField;
    qrySubValueSTRING_VALUE6: TWideStringField;
    qrySubValueNUMBER_VALUE6: TIBOFloatField;
    qrySubValueDATE_VALUE6: TDateTimeField;
    qrySubValueSTRING_VALUE7: TWideStringField;
    qrySubValueNUMBER_VALUE7: TIBOFloatField;
    qrySubValueDATE_VALUE7: TDateTimeField;
    qrySubValueSTRING_VALUE8: TWideStringField;
    qrySubValueNUMBER_VALUE8: TIBOFloatField;
    qrySubValueDATE_VALUE8: TDateTimeField;
    qrySubValueSTRING_VALUE9: TWideStringField;
    qrySubValueNUMBER_VALUE9: TIBOFloatField;
    qrySubValueDATE_VALUE9: TDateTimeField;
    qrySubValueSTRING_VALUE10: TWideStringField;
    qrySubValueNUMBER_VALUE10: TIBOFloatField;
    qrySubValueDATE_VALUE10: TDateTimeField;
    qrySubValueSTRING_VALUE11: TWideStringField;
    qrySubValueNUMBER_VALUE11: TIBOFloatField;
    qrySubValueDATE_VALUE11: TDateTimeField;
    qrySubValueSTRING_VALUE12: TWideStringField;
    qrySubValueNUMBER_VALUE12: TIBOFloatField;
    qrySubValueDATE_VALUE12: TDateTimeField;
    qrySubValueSTRING_VALUE13: TWideStringField;
    qrySubValueNUMBER_VALUE13: TIBOFloatField;
    qrySubValueDATE_VALUE13: TDateTimeField;
    qrySubValueSTRING_VALUE14: TWideStringField;
    qrySubValueNUMBER_VALUE14: TIBOFloatField;
    qrySubValueDATE_VALUE14: TDateTimeField;
    qrySubValueSTRING_VALUE15: TWideStringField;
    qrySubValueNUMBER_VALUE15: TIBOFloatField;
    qrySubValueDATE_VALUE15: TDateTimeField;
    qrySubValueSTRING_VALUE16: TWideStringField;
    qrySubValueNUMBER_VALUE16: TIBOFloatField;
    qrySubValueDATE_VALUE16: TDateTimeField;
    InspSTRING_VALUE1: TdxInspectorDBRow;
    InspDATE_VALUE1: TdxInspectorDBDateRow;
    InspSTRING_VALUE2: TdxInspectorDBRow;
    InspDATE_VALUE2: TdxInspectorDBDateRow;
    InspSTRING_VALUE3: TdxInspectorDBRow;
    InspDATE_VALUE3: TdxInspectorDBDateRow;
    InspSTRING_VALUE4: TdxInspectorDBRow;
    InspNUMBER_VALUE4: TdxInspectorDBMaskRow;
    InspDATE_VALUE4: TdxInspectorDBDateRow;
    InspSTRING_VALUE5: TdxInspectorDBRow;
    InspNUMBER_VALUE5: TdxInspectorDBMaskRow;
    InspDATE_VALUE5: TdxInspectorDBDateRow;
    InspSTRING_VALUE6: TdxInspectorDBRow;
    InspNUMBER_VALUE6: TdxInspectorDBMaskRow;
    InspDATE_VALUE6: TdxInspectorDBDateRow;
    InspSTRING_VALUE7: TdxInspectorDBRow;
    InspNUMBER_VALUE7: TdxInspectorDBMaskRow;
    InspDATE_VALUE7: TdxInspectorDBDateRow;
    InspSTRING_VALUE8: TdxInspectorDBRow;
    InspNUMBER_VALUE8: TdxInspectorDBMaskRow;
    InspDATE_VALUE8: TdxInspectorDBDateRow;
    InspSTRING_VALUE9: TdxInspectorDBRow;
    InspNUMBER_VALUE9: TdxInspectorDBMaskRow;
    InspDATE_VALUE9: TdxInspectorDBDateRow;
    InspSTRING_VALUE10: TdxInspectorDBRow;
    InspNUMBER_VALUE10: TdxInspectorDBMaskRow;
    InspDATE_VALUE10: TdxInspectorDBDateRow;
    InspSTRING_VALUE11: TdxInspectorDBRow;
    InspNUMBER_VALUE11: TdxInspectorDBMaskRow;
    InspDATE_VALUE11: TdxInspectorDBDateRow;
    InspSTRING_VALUE12: TdxInspectorDBRow;
    InspNUMBER_VALUE12: TdxInspectorDBMaskRow;
    InspDATE_VALUE12: TdxInspectorDBDateRow;
    InspSTRING_VALUE13: TdxInspectorDBRow;
    InspNUMBER_VALUE13: TdxInspectorDBMaskRow;
    InspDATE_VALUE13: TdxInspectorDBDateRow;
    InspSTRING_VALUE14: TdxInspectorDBRow;
    InspNUMBER_VALUE14: TdxInspectorDBMaskRow;
    InspDATE_VALUE14: TdxInspectorDBDateRow;
    InspSTRING_VALUE15: TdxInspectorDBRow;
    InspNUMBER_VALUE15: TdxInspectorDBMaskRow;
    InspDATE_VALUE15: TdxInspectorDBDateRow;
    InspSTRING_VALUE16: TdxInspectorDBRow;
    InspNUMBER_VALUE16: TdxInspectorDBMaskRow;
    InspDATE_VALUE16: TdxInspectorDBDateRow;
    InspNUMBER_VALUE1: TdxInspectorDBCalcRow;
    InspNUMBER_VALUE2: TdxInspectorDBCalcRow;
    InspNUMBER_VALUE3: TdxInspectorDBCalcRow;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qrySubValuePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrySubValueBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    AUTO_ID :Smallint;
    AUTO_TYPE : Smallint;
    { Public declarations }
  end;

var
  ObjectSubValueFrm: TObjectSubValueFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions;
{$R *.dfm}

procedure TObjectSubValueFrm.FormCreate(Sender: TObject);
var
  sir:TdxInspectorRow;
  //nir:TdxInspectorDBCalcRow;
  //dir:TdxInspectorDBDateRow;
begin
  SetOnFormCreate(Sender as TControl);
  qrySubValue.ParamByName('OID').Value:=MainDM.qryObjectOBJECT_ID.Value;
  qrySubValue.ParamByName('OTYPE').AsInteger:=MainDM.qryObjectOTYPE_ID.AsInteger;
  qrySubValue.Open;

  with MainDM do
  while Not qrySubInfo.Eof do
  begin
    case qrySubInfo.RecNo of
      1 :
      begin
        InspSTRING_VALUE1.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE1.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE1.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE1.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE1.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE1.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      2 :
      begin
        InspSTRING_VALUE2.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE2.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE2.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE2.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE2.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE2.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      3 :
      begin
        InspSTRING_VALUE3.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE3.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE3.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE3.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE3.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE3.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      4 :
      begin
        InspSTRING_VALUE4.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE4.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE4.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE4.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE4.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE4.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      5 :
      begin
        InspSTRING_VALUE5.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE5.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE5.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE5.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE5.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE5.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      6 :
      begin
        InspSTRING_VALUE6.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE6.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE6.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE6.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE6.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE6.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      7 :
      begin
        InspSTRING_VALUE7.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE7.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE7.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE7.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE7.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE7.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      8 :
      begin
        InspSTRING_VALUE8.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE8.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE8.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE8.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE8.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE8.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      9 :
      begin
        InspSTRING_VALUE9.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE9.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE9.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE9.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE9.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE9.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      10 :
      begin
        InspSTRING_VALUE10.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE10.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE10.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE10.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE10.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE10.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      11 :
      begin
        InspSTRING_VALUE11.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE11.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE11.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE11.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE11.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE11.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      12 :
      begin
        InspSTRING_VALUE12.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE12.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE12.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE12.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE12.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE12.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      13 :
      begin
        InspSTRING_VALUE13.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE13.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE13.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE13.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE13.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE13.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      14 :
      begin
        InspSTRING_VALUE14.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE14.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE14.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE14.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE14.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE14.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      15 :
      begin
        InspSTRING_VALUE15.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE15.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE15.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE15.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE15.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE15.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
      16 :
      begin
        InspSTRING_VALUE16.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=1);
        InspNUMBER_VALUE16.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=2);
        InspDATE_VALUE16.Visible:=(qrySubInfoSUBINFO_DATATYPE.AsInteger=3);
        InspSTRING_VALUE16.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspNUMBER_VALUE16.Caption:=qrySubInfoSUBINFO_NAME.Value;
        InspDATE_VALUE16.Caption:=qrySubInfoSUBINFO_NAME.Value;
      end;
    end;

    qrySubInfo.Next;
  end;
end;

procedure TObjectSubValueFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qrySubValue do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TObjectSubValueFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TObjectSubValueFrm.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(13);
end;

procedure TObjectSubValueFrm.qrySubValuePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(42,e.Message,0);
end;

procedure TObjectSubValueFrm.qrySubValueBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(8) then Abort;
end;

procedure TObjectSubValueFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
