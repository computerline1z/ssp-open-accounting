unit KQHDKDCondBForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxDBTLCl, dxGrClms;

type
  TKQHDKDCondBFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryLCTTCond: TIBOQuery;
    dsLCTTCond: TDataSource;
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
    qryLCTTCondID: TSmallintField;
    qryLCTTCondCONDITION_ID: TSmallintField;
    qryLCTTCondDBEGINWITH: TWideStringField;
    qryLCTTCondCBEGINWITH: TWideStringField;
    qryLCTTCondCOEFFICIENT: TIBOFloatField;
    qryLCTTCondPSHAYNOP: TSmallintField;
    qryLCTTCondCONDITION_NOTE: TWideStringField;
    dxDBGrid1CONDITION_ID: TdxDBGridMaskColumn;
    dxDBGrid1DBEGINWITH: TdxDBGridMaskColumn;
    dxDBGrid1CBEGINWITH: TdxDBGridMaskColumn;
    dxDBGrid1COEFFICIENT: TdxDBGridMaskColumn;
    dxDBGrid1CONDITION_NOTE: TdxDBGridMaskColumn;
    dxDBGrid1PHATSINH: TdxDBGridCheckColumn;
    dxDBGrid1NOP: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryLCTTCondNewRecord(DataSet: TDataSet);
    procedure qryLCTTCondAfterInsert(DataSet: TDataSet);
    procedure qryLCTTCondBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryLCTTCondPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryLCTTCondDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryLCTTCondBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KQHDKDCondBFrm: TKQHDKDCondBFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, HtmlHlp;


{$R *.dfm}

procedure TKQHDKDCondBFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qryLCTTCond.ParamByName('ID').AsInteger:=MainDM.qryDefRptKQHDKDBID.AsInteger;
  qryLCTTCond.Open;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TKQHDKDCondBFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryLCTTCond do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TKQHDKDCondBFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TKQHDKDCondBFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TKQHDKDCondBFrm.qryLCTTCondNewRecord(DataSet: TDataSet);
begin
  qryLCTTCondCONDITION_ID.AsInteger:=qryLCTTCond.RecNo;
  qryLCTTCondCOEFFICIENT.AsFloat:=1;
  qryLCTTCondPSHAYNOP.AsInteger:=0;
  qryLCTTCondID.AsInteger:= MainDM.qryDefRptKQHDKDBID.AsInteger;
end;

procedure TKQHDKDCondBFrm.qryLCTTCondAfterInsert(DataSet: TDataSet);
begin
  qryLCTTCondCONDITION_ID.FocusControl;
end;

procedure TKQHDKDCondBFrm.qryLCTTCondBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryLCTTCondCONDITION_ID) then
  begin
    ShowMessageUnicode(20);
    qryLCTTCondCONDITION_ID.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TKQHDKDCondBFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TKQHDKDCondBFrm.qryLCTTCondPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  ProcessErr(E,'');
  qryLCTTCondCONDITION_ID.FocusControl;
end;

procedure TKQHDKDCondBFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TKQHDKDCondBFrm.qryLCTTCondDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TKQHDKDCondBFrm.qryLCTTCondBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TKQHDKDCondBFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
