unit KQHDKDCondForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxDBTLCl, dxGrClms;

type
  TKQHDKDCondFrm = class(TForm)
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
    qryLCTTCondTKNOBDV: TWideStringField;
    qryLCTTCondTKCOBDV: TWideStringField;
    qryLCTTCondGHICHU: TWideStringField;
    dxDBGrid1TKNOBDV: TdxDBGridColumn;
    dxDBGrid1TKCOBDV: TdxDBGridColumn;
    dxDBGrid1GHICHU: TdxDBGridColumn;
    qryLCTTCondHESO: TIBOFloatField;
    dxDBGrid1HESO: TdxDBGridCalcColumn;
    qryLCTTCondKF: TWideStringField;
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
  KQHDKDCondFrm: TKQHDKDCondFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, HtmlHlp;


{$R *.dfm}

procedure TKQHDKDCondFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  qryLCTTCond.ParamByName('ID').AsInteger:=MainDM.qryDefKQHDKDID.AsInteger;
  qryLCTTCond.Open;

  if SSPUserRight[6].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[6].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TKQHDKDCondFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryLCTTCond do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TKQHDKDCondFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TKQHDKDCondFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TKQHDKDCondFrm.qryLCTTCondNewRecord(DataSet: TDataSet);
begin
  qryLCTTCondHESO.AsFloat:=1;
  qryLCTTCondID.AsInteger:= MainDM.qryDefKQHDKDID.AsInteger;

end;

procedure TKQHDKDCondFrm.qryLCTTCondAfterInsert(DataSet: TDataSet);
begin
  qryLCTTCondTKNOBDV.FocusControl;
end;

procedure TKQHDKDCondFrm.qryLCTTCondBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryLCTTCondTKNOBDV) then
  begin
    ShowMessageUnicode(67);
    qryLCTTCondTKNOBDV.FocusControl;
    Abort;
    Exit;
  end;
  if IsNotHasData(qryLCTTCondTKCOBDV) then
  begin
    ShowMessageUnicode(67);
    qryLCTTCondTKCOBDV.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TKQHDKDCondFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TKQHDKDCondFrm.qryLCTTCondPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  if ProcessErr(E,'') =-803 then
    qryLCTTCondTKNOBDV.FocusControl;
end;

procedure TKQHDKDCondFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TKQHDKDCondFrm.qryLCTTCondDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(62,e.Message,0);
  if DataSet.RecordCount=1 then
    DataSet.Refresh;
end;

procedure TKQHDKDCondFrm.qryLCTTCondBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TKQHDKDCondFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
