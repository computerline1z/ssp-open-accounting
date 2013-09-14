unit TMBCTC_4Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DBActns, ActnList, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxLayoutControl, ElXPThemedControl, ElBtnCtl, ElPopBtn, cxControls,
  ElCaption, DB, IBODataset, dxLayoutLookAndFeels;

type
  TTMBCTC_4Frm = class(TForm)
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
    dxDBGrid1KYNAY: TdxDBGridMaskColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryKQHDSXKDID: TSmallintField;
    qryKQHDSXKDCHITIEU: TWideStringField;
    qryKQHDSXKDKYNAY: TIBOFloatField;
    procedure ElPopupButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMBCTC_4Frm: TTMBCTC_4Frm;

implementation

uses MainDataMdl, TMBCTC_4CondForm, GlobalUnit;

{$R *.dfm}

procedure TTMBCTC_4Frm.ElPopupButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TTMBCTC_4Frm.FormCreate(Sender: TObject);
begin
  qryKQHDSXKD.Open;
end;

procedure TTMBCTC_4Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryKQHDSXKD.Close;
end;

procedure TTMBCTC_4Frm.ElPopupButton7Click(Sender: TObject);
begin
  with TTMBCTC_4CondFrm.Create(Self) do
  try
    CurID:=qryKQHDSXKD.FieldByName('ID').AsInteger;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTMBCTC_4Frm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
