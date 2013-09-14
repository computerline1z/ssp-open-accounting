unit BatchListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, Forms,
  IBODataset, dxGrClEx, DBActns, ActnList, TntButtons, ElXPThemedControl,
  ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  TBatchListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locCancel: TdxLayoutItem;
    btnPost: TELPopupButton;
    locSave: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnIns: TELPopupButton;
    locInsert: TdxLayoutItem;
    grdBatchList: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    ElPopupButton2: TElPopupButton;
    locDelete: TdxLayoutItem;
    acDelete: TDataSetDelete;
    qryBatchList: TIBOQuery;
    dsBatchList: TDataSource;
    qryBatchListBATCH_ID: TIntegerField;
    qryBatchListSLBANDAU: TIBOFloatField;
    qryBatchListGTBANDAU: TIBOFloatField;
    qryBatchListMASO_HH: TWideStringField;
    qryBatchListLOAI_HH: TSmallintField;
    qryBatchListOBJECT_NAME: TWideStringField;
    qryBatchListSUBINFO_2: TWideStringField;
    grdBatchListBATCH_ID: TdxDBGridMaskColumn;
    grdBatchListTGSDCL: TdxDBGridMaskColumn;
    grdBatchListOBJECT_NAME: TdxDBGridMaskColumn;
    grdBatchListMASO_HH: TdxDBGridPopupColumn;
    grdBatchListSLBANDAU: TdxDBGridCalcColumn;
    grdBatchListGTBANDAU: TdxDBGridCalcColumn;
    qryBatchListBATCH_NOTE: TWideStringField;
    grdBatchListBATCH_NOTE: TdxDBGridMaskColumn;
    qryBatchListTGSDCL: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdBatchListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBatchListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryBatchListBeforeDelete(DataSet: TDataSet);
    procedure qryBatchListBeforeEdit(DataSet: TDataSet);
    procedure qryBatchListBeforeInsert(DataSet: TDataSet);
    procedure qryBatchListNewRecord(DataSet: TDataSet);
    procedure qryBatchListBeforePost(DataSet: TDataSet);
    procedure qryBatchListPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdBatchListMASO_HHCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryBatchListAfterInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    Masolo:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BatchListFrm: TBatchListFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  dxTreeGridMenus, Math;

{$R *.dfm}

procedure TBatchListFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  grdBatchListSLBANDAU.SummaryFooterFormat:=SOLUONG_FORMAT;
  grdBatchListGTBANDAU.SummaryFooterFormat:=TIENTE_FORMAT;
  qryBatchListSLBANDAU.DisplayFormat:=SOLUONG_FORMAT;
  qryBatchListGTBANDAU.DisplayFormat:=TIENTE_FORMAT;

  locInsert.Visible:=CurrentPeriod=BeginPeriod;
  locDelete.Visible:=CurrentPeriod=BeginPeriod;
  locSave.Visible:=CurrentPeriod=BeginPeriod;
  locCancel.Visible:=CurrentPeriod=BeginPeriod;
  qryBatchList.ReadOnly:=CurrentPeriod<>BeginPeriod;

  qryBatchList.Open;
  Masolo:=0;
  while Not qryBatchList.Eof do
  begin
    if qryBatchListBATCH_ID.AsInteger>Masolo then
      Masolo:=qryBatchListBATCH_ID.AsInteger;

    qryBatchList.Next;
  end;
  qryBatchList.First;
  MainDM.CurObjTypeID:=2;
  
  Masolo:=Masolo+1;
  if SSPUserRight[1].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[1].DR=False then
    acDelete.DataSource := MainDM.dsBanana;
end;
procedure TBatchListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF qryBatchList.State in [dsInsert, dsEdit] then
    if ShowMessageUnicode(21,'',4)=6 then
      qryBatchList.Post;

  qryBatchList.Close;
end;

procedure TBatchListFrm.BitBtn4Click(Sender: TObject);
begin
  Application.HelpContext(5);
end;

procedure TBatchListFrm.grdBatchListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdBatchList, Key, Shift, CurrentPeriod=BeginPeriod);
end;

procedure TBatchListFrm.grdBatchListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TBatchListFrm.qryBatchListBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,1) then Abort;
end;

procedure TBatchListFrm.qryBatchListBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(1) then Abort;
end;

procedure TBatchListFrm.qryBatchListBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(1) then Abort;
end;

procedure TBatchListFrm.qryBatchListNewRecord(DataSet: TDataSet);
begin
  qryBatchListBATCH_ID.AsInteger:=Masolo;
  qryBatchListLOAI_HH.AsInteger:=2;
  qryBatchListTGSDCL.AsInteger:=48;
  Masolo:=Masolo+1;
end;

procedure TBatchListFrm.qryBatchListBeforePost(DataSet: TDataSet);
begin
  if qryBatchListBATCH_ID.IsNull then
  begin
    ShowMessageUnicode(126);
    qryBatchListBATCH_ID.FocusControl;
    Abort;
    Exit;
  end;
  if qryBatchListMASO_HH.IsNull then
  begin
    ShowMessageUnicode(127);
    qryBatchListMASO_HH.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TBatchListFrm.qryBatchListPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action:=daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  ShowMessageUnicode(128,e.Message,0);
end;

procedure TBatchListFrm.grdBatchListMASO_HHCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryBatchList.Edit;
    qryBatchListMASO_HH.Value := vpItemID;
    Text := vpItemID;
    qryBatchListOBJECT_NAME.Value := vpItemName;
  end;
end;

procedure TBatchListFrm.qryBatchListAfterInsert(DataSet: TDataSet);
begin
  qryBatchListBATCH_ID.FocusControl;
end;

procedure TBatchListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBatchListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
