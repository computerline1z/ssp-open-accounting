unit ObjectSubValForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  Forms, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns,
  ActnList, DB, IBODataset, dxInspct, dxDBInsp, dxInspRw, dxDBInRw;

type
  TObjectSubValFrm = class(TForm)
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
    grdValue: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    qrySubValueSUBINFO_NAME: TWideStringField;
    qrySubValueSUBINFO_DATATYPE: TSmallintField;
    qrySubValueOBJECT_ID: TWideStringField;
    qrySubValueOTYPE_ID: TSmallintField;
    qrySubValueSUBINFO_ID: TSmallintField;
    qrySubValueSTRING_VALUE: TWideStringField;
    qrySubValueNUMBER_VALUE: TIBOFloatField;
    qrySubValueDATE_VALUE: TDateTimeField;
    grdValueSUBINFO_NAME: TdxDBGridColumn;
    grdValueSUBINFO_ID: TdxDBGridColumn;
    grdValueSTRING_VALUE: TdxDBGridColumn;
    grdValueNUMBER_VALUE: TdxDBGridCalcColumn;
    grdValueDATE_VALUE: TdxDBGridDateColumn;
    qrySubValueINFO_ID: TSmallintField;
    qrySubValueOTYPE: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qrySubValuePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qrySubValueBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure grdValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    AUTO_ID :Smallint;
    AUTO_TYPE : Smallint;
    { Public declarations }
  end;

var
  ObjectSubValFrm: TObjectSubValFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit,
  dxTreeGridMenus, Functions, HtmlHlp;
{$R *.dfm}


procedure TObjectSubValFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qrySubValueNUMBER_VALUE.DisplayFormat:=CACHESO_FORMAT;
  grdValueNUMBER_VALUE.SummaryFooterFormat:=CACHESO_FORMAT;
  qrySubValueDATE_VALUE.DisplayFormat:=NGAYTHANG_FORMAT;
  grdValueDATE_VALUE.SummaryFooterFormat:=NGAYTHANG_FORMAT;

  qrySubValue.ParamByName('OBJECT_ID').Value:=MainDM.qryObjectOBJECT_ID.Value;
  qrySubValue.ParamByName('OTYPE_ID').AsInteger:=MainDM.qryObjectOTYPE_ID.AsInteger;
  qrySubValue.Open;    
end;

procedure TObjectSubValFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qrySubValue do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TObjectSubValFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
        ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TObjectSubValFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(13);
end;

procedure TObjectSubValFrm.qrySubValuePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
 
  if ProcessErr(E,'')=-530 then
    ShowMessageUnicode(201,e.Message,0);
end;

procedure TObjectSubValFrm.qrySubValueBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(8) then Abort;
end;

procedure TObjectSubValFrm.FormShow(Sender: TObject);
begin        
  SetVisible(Self);
end;

procedure TObjectSubValFrm.grdValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdValue, Key, Shift,False);
end;

procedure TObjectSubValFrm.TntBitBtn3Click(Sender: TObject);
begin
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Text := 'execute procedure SP_UPD_OBJ_VALUE (:OBJECT_ID,:OTYPE_ID,:SUBINFO_ID,:STRING_VALUE,:NUMBER_VALUE,:DATE_VALUE)';
    ParamByName('OBJECT_ID').Value :=qrySubValueOBJECT_ID.Value;
    ParamByName('OTYPE_ID').Value :=qrySubValueOTYPE_ID.Value;
    ParamByName('SUBINFO_ID').Value :=qrySubValueSUBINFO_ID.Value;
    ParamByName('STRING_VALUE').Value :=qrySubValueSTRING_VALUE.Value;
    ParamByName('NUMBER_VALUE').Value :=qrySubValueNUMBER_VALUE.Value;
    ParamByName('DATE_VALUE').Value :=qrySubValueDATE_VALUE.Value;
    ExecSQL;
    IB_Transaction.CommitRetaining;
  end;
end;

end.
