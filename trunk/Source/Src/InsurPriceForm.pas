
unit InsurPriceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,DB,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, dxGrClEx,
  dxBar, ActnList, dxLayout, dxExGrEd, dxExELib, IBODataset, DBActns, Forms, 
  TntStdCtrls, TntButtons, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn;

type
  TInsurPriceFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ActionList1: TActionList;
    acHide: TAction;
    acShowAll: TAction;
    qryItem: TIBOQuery;
    dsItem: TDataSource;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem1: TdxLayoutItem;
    locIns: TdxLayoutItem;
    btnIns: TELPopupButton;
    locDel: TdxLayoutItem;
    btnDel: TELPopupButton;
    locSave: TdxLayoutItem;
    btnSave: TELPopupButton;
    locCancel: TdxLayoutItem;
    btnCancel: TELPopupButton;
    locFormItem19: TdxLayoutItem;
    btnHelp: TELPopupButton;
    locFormItem20: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormGroup4: TdxLayoutGroup;
    btnInsChild: TELPopupButton;
    locInsChild: TdxLayoutItem;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryItemPRICE_ID: TSmallintField;
    qryItemPPRICE_ID: TSmallintField;
    qryItemPRICE_NOTE: TWideStringField;
    dxDBTreeList1PRICE_NOTE: TdxDBTreeListColumn;
    qryItemPRICE_A: TIBOFloatField;
    qryItemPRICE_B: TIBOFloatField;
    qryItemPRICE_C: TIBOFloatField;
    dxDBTreeList1PRICE_A: TdxDBTreeListCalcColumn;
    dxDBTreeList1PRICE_B: TdxDBTreeListCalcColumn;
    dxDBTreeList1PRICE_C: TdxDBTreeListCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryItemBeforeInsert(DataSet: TDataSet);
    procedure qryItemBeforeEdit(DataSet: TDataSet);
    procedure qryItemBeforeDelete(DataSet: TDataSet);
    procedure qryItemAfterInsert(DataSet: TDataSet);
    procedure btnInsClick(Sender: TObject);
    procedure btnInsChildClick(Sender: TObject);
    procedure qryItemPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryItemDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
    procedure qryItemNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    NewPID:Integer;//Ma so khach hang cha dung de insert
    { Private declarations }
  public
    Selecting:Boolean;
    { Public declarations }
  end;

var
  InsurPriceFrm: TInsurPriceFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  Functions, LookupFrm;


{$R *.dfm}

procedure TInsurPriceFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qryItemPRICE_A.DisplayFormat:=TIENTE_FORMAT;
  qryItemPRICE_B.DisplayFormat:=TIENTE_FORMAT;
  qryItemPRICE_C.DisplayFormat:=TIENTE_FORMAT;
  qryItem.Open;
  if SSPUserRight[11].IR=False then
  begin
    btnIns.Enabled := False;
    btnInsChild.Enabled := False;
  end;
  if SSPUserRight[11].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;

procedure TInsurPriceFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryItem do
  begin
    if State In [dsInsert, dsEdit] then
      Post;
    Close;
  end;
end;

procedure TInsurPriceFrm.qryItemBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryItemPRICE_NOTE) then
  begin
    ShowMessageUnicode(137);
    qryItemPRICE_NOTE.FocusControl;
    Abort;
  end;
end;

procedure TInsurPriceFrm.qryItemBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(11) then Abort;
end;

procedure TInsurPriceFrm.qryItemBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(11) then Abort;
end;

procedure TInsurPriceFrm.qryItemBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,11) then Abort;
end;

procedure TInsurPriceFrm.qryItemAfterInsert(DataSet: TDataSet);
begin
  qryItemPRICE_NOTE.FocusControl;
end;

procedure TInsurPriceFrm.btnInsClick(Sender: TObject);
begin
  if qryItemPPRICE_ID.IsNull then
    NewPID :=-1
  else
    NewPID :=qryItemPPRICE_ID.AsInteger;
  acIns.Execute;
end;

procedure TInsurPriceFrm.btnInsChildClick(Sender: TObject);
begin
  if qryItem.RecordCount>0 then
    NewPID :=qryItemPRICE_ID.AsInteger
  else
    NewPID :=-1;
  acIns.Execute;
end;

procedure TInsurPriceFrm.qryItemPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  rs:= ProcessErr(E,'hạn mục');
  if rs=-803 then
    qryItemPRICE_NOTE.FocusControl;
end;

procedure TInsurPriceFrm.qryItemDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TInsurPriceFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key=VK_ESCAPE) and Selecting) then
    Self.Close
  else  if ((key=VK_RETURN) and Selecting) then
  begin
    if dxDBTreeList1.FocusedField.FieldName='PRICE_A' then
    begin
      SelectedPrice:=qryItemPRICE_A.AsFloat;
      Self.Close;
    end;
    if dxDBTreeList1.FocusedField.FieldName='PRICE_B' then
    begin
      SelectedPrice:=qryItemPRICE_B.AsFloat;
      Self.Close;
    end;
    if dxDBTreeList1.FocusedField.FieldName='PRICE_C' then
    begin
      SelectedPrice:=qryItemPRICE_C.AsFloat;
      Self.Close;
    end;
  end
  else ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TInsurPriceFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TInsurPriceFrm.btnHelpClick(Sender: TObject);
begin
    Application.HelpContext(21);
end;

procedure TInsurPriceFrm.qryItemNewRecord(DataSet: TDataSet);
begin
  if NewPID<>-1 then
    qryItemPPRICE_ID.AsInteger:=NewPID;
end;

procedure TInsurPriceFrm.FormShow(Sender: TObject);
begin
  dxDBTreeList1PRICE_NOTE.DisableEditor:=Selecting;
  dxDBTreeList1PRICE_A.DisableEditor:=Selecting;
  dxDBTreeList1PRICE_B.DisableEditor:=Selecting;
  dxDBTreeList1PRICE_C.DisableEditor:=Selecting;
  locIns.Visible:=Not Selecting;
  locInsChild.Visible:=Not Selecting;
  locDel.Visible:=Not Selecting;
  locSave.Visible:=Not Selecting;
  locCancel.Visible:=Not Selecting;
  SetVisible(Self);  
end;

end.
