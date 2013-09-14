unit ErrorListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBTLCl, dxGrClms, DBActns,
  ActnList, IBODataset, ElEdits;

type
  TErrorListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1ERROR_ID: TdxDBGridMaskColumn;
    dxDBGrid1ERROR_FORM: TdxDBGridMaskColumn;
    dxDBGrid1ERROR_SUBJECT: TdxDBGridMaskColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ElPopupButton4: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    ElPopupButton5: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    qryErr: TIBOQuery;
    qryErrERROR_ID: TIntegerField;
    qryErrERROR_FORM: TWideStringField;
    qryErrERROR_SUBJECT: TWideStringField;
    qryErrERROR_CONTENT: TWideStringField;
    dsErr: TDataSource;
    dxDBEdit1: TdxDBEdit;
    locFormItem8: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    locFormItem9: TdxLayoutItem;
    dxDBGrid1ERROR_CONTENT: TdxDBGridColumn;
    qryErrERROR_TIME: TDateTimeField;
    dxDBGrid1ERROR_TIME: TdxDBGridDateColumn;
    qryErrERROR_STATUS: TSmallintField;
    qryErrUSER_INPUT: TWideStringField;
    dxDBGrid1ERROR_STATUS: TdxDBGridCheckColumn;
    dxDBGrid1USER_INPUT: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure qryErrNewRecord(DataSet: TDataSet);
    procedure qryErrAfterInsert(DataSet: TDataSet);
    procedure qryErrBeforeDelete(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryErrBeforePost(DataSet: TDataSet);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    AcctiveFormName:String;
    { Public declarations }
  end;

var
  ErrorListFrm: TErrorListFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
HtmlHlp;


{$R *.dfm}

procedure TErrorListFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryErr.Open;
  qryErrERROR_TIME.DisplayFormat:=NGAYTHANG_FORMAT;
end;

procedure TErrorListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryErr do
  begin
    if State in [dsInsert,dsEdit] then
      Post;

    Close;
  end;
end;

procedure TErrorListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TErrorListFrm.ElPopupButton3Click(Sender: TObject);
begin
  dxDBGrid1ERROR_ID.Visible:=True;
  dxDBGrid1ERROR_FORM.Visible:=True;

  ExportToExcel(dxDBGrid1);
  dxDBGrid1ERROR_ID.Visible:=False;
  dxDBGrid1ERROR_FORM.Visible:=False;
end;

procedure TErrorListFrm.qryErrNewRecord(DataSet: TDataSet);
begin
  qryErrERROR_STATUS.AsInteger:=0;
  qryErrUSER_INPUT.Value:=CurrentUser;
  qryErrERROR_TIME.AsDateTime:=Now;
  qryErrERROR_FORM.Value := AcctiveFormName;
end;

procedure TErrorListFrm.qryErrAfterInsert(DataSet: TDataSet);
begin
  dxDBEdit1.SetFocus;
end;

procedure TErrorListFrm.qryErrBeforeDelete(DataSet: TDataSet);
begin
  if optConfirmDelete=1 then
  if ShowMessageUnicode(23,'', 4)=7 then
    Abort;
end;

procedure TErrorListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TErrorListFrm.qryErrBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryErrERROR_SUBJECT) then
  begin
    ShowMessageUnicode(194);
    qryErrERROR_SUBJECT.FocusControl;
    Abort;
    Exit;
  end;
end;

procedure TErrorListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TErrorListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
