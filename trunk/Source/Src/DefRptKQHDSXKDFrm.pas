unit DefRptKQHDSXKDFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DBActns, ActnList, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxLayoutControl, ElXPThemedControl, ElBtnCtl, ElPopBtn, cxControls,
  ElCaption, DB, IBODataset, dxLayoutLookAndFeels;

type
  TTMBCTC_KQSXKDFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    srcKQHDSXKD: TDataSource;
    qryKQHDSXKD: TIBOQuery;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1CHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1KYNAY: TdxDBGridMaskColumn;
    dxDBGrid1LOAICHITIEU: TdxDBGridMaskColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure ElPopupButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ElPopupButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMBCTC_KQSXKDFrm: TTMBCTC_KQSXKDFrm;

implementation

uses MainDataMdl, KQHDKDCond_BHForm, KQHDSXKDCondForm;

{$R *.dfm}

procedure TTMBCTC_KQSXKDFrm.ElPopupButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TTMBCTC_KQSXKDFrm.FormCreate(Sender: TObject);
begin
  qryKQHDSXKD.Open;
end;

procedure TTMBCTC_KQSXKDFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryKQHDSXKD.Close;
end;

procedure TTMBCTC_KQSXKDFrm.ElPopupButton7Click(Sender: TObject);
begin
  
  with TTMBCTC_KQSXKDCondFrm.Create(Self) do
  try
    CurID:=qryKQHDSXKD.FieldByName('ID').AsInteger;
    ShowModal;
  finally
    Free;
  end;
end;

end.
