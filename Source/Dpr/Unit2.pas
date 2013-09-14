unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxLayout, DBActns, ActnList,
  ElCaption, dxBar, dxLayoutLookAndFeels, dxLayoutControl,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, dxCntner, cxControls, DB,
  IBODataset;

type
  TForm2 = class(TForm)
    qryItem: TIBOQuery;
    qryItemACTICLE_ID: TWideStringField;
    qryItemPACTICLE_ID: TWideStringField;
    qryItemACTICLE_NO: TWideStringField;
    qryItemACTICLE_NAME: TWideStringField;
    qryItemPLAN_MAX: TIBOFloatField;
    qryItemPLAN_MIN: TIBOFloatField;
    qryItemBRANCH_ID: TWideStringField;
    qryItemPLAN_BEGIN: TIBOFloatField;
    qryItemPLAN_ADJUST: TIBOFloatField;
    qryItemKYHT: TSmallintField;
    dsItem: TDataSource;
    locForm: TdxLayoutControl;
    grdKho: TdxDBGrid;
    btnIns: TElPopupButton;
    btnDel: TElPopupButton;
    TntBitBtn3: TElPopupButton;
    TntBitBtn4: TElPopupButton;
    TntBitBtn5: TElPopupButton;
    TntBitBtn6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormItem2: TdxLayoutItem;
    locFormItem3: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    locFormItem5: TdxLayoutItem;
    locFormItem6: TdxLayoutItem;
    locFormItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pmAsset: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    grdKhoACTICLE_ID: TdxDBGridMaskColumn;
    grdKhoPACTICLE_ID: TdxDBGridMaskColumn;
    grdKhoACTICLE_NO: TdxDBGridMaskColumn;
    grdKhoACTICLE_NAME: TdxDBGridMaskColumn;
    grdKhoPLAN_MAX: TdxDBGridMaskColumn;
    grdKhoPLAN_MIN: TdxDBGridMaskColumn;
    grdKhoBRANCH_ID: TdxDBGridMaskColumn;
    grdKhoPLAN_BEGIN: TdxDBGridMaskColumn;
    grdKhoPLAN_ADJUST: TdxDBGridMaskColumn;
    grdKhoKYHT: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
 qryItem.Open;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 qryItem.Close;
end;

end.
