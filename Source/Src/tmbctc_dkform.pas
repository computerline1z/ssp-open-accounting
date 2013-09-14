unit TMBCTC_DKForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DBActns, ActnList, DB, IBODataset, ElCaption,
  dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, dxTL, dxDBCtrl, dxDBGrid, dxCntner, cxControls, dxEditor,
  dxEdLib, dxDBELib;

type
  TfrmTMBCTC_DK = class(TForm)
    locForm: TdxLayoutControl;
    TntBitBtn3: TElPopupButton;
    TntBitBtn4: TElPopupButton;
    TntBitBtn5: TElPopupButton;
    TntBitBtn6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBMemo1: TdxDBMemo;
    locFormItem1: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    procedure TntBitBtn5Click(Sender: TObject);
    procedure TntBitBtn6Click(Sender: TObject);
    procedure dxDBMemo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTMBCTC_DK: TfrmTMBCTC_DK;
  iChange:smallint;

implementation
uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions,ThuyetminhBCTC;

{$R *.dfm}

procedure TfrmTMBCTC_DK.TntBitBtn5Click(Sender: TObject);
begin
  if (iChange=1)then
    dxDBMemo1.DataSource.DataSet.Post;
end;

procedure TfrmTMBCTC_DK.TntBitBtn6Click(Sender: TObject);
begin
  dxDBMemo1.DataSource.DataSet.Cancel;
end;

procedure TfrmTMBCTC_DK.dxDBMemo1Change(Sender: TObject);
begin
  iChange :=1;
end;

procedure TfrmTMBCTC_DK.FormCreate(Sender: TObject);
begin
  iChange :=0;
end;

end.
