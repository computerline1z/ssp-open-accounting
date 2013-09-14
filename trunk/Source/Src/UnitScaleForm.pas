unit UnitScaleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxLayout, DB, IBODataset, DBActns, ActnList,
  ElCaption, dxLayoutLookAndFeels, dxLayoutControl, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxDBTLCl, dxGrClEx, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, cxControls;

type
  TUnitScaleFrm = class(TForm)
    locForm: TdxLayoutControl;
    grdUnit_Scale: TdxDBGrid;
    TntBitBtn1: TElPopupButton;
    TntBitBtn2: TElPopupButton;
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
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    grdUnit_ScaleSCALE: TdxDBGridMaskColumn;
    grdUnit_ScaleFROM_UNIT: TdxDBGridPopupColumn;
    grdUnit_ScaleTO_UNIT: TdxDBGridPopupColumn;
    procedure grdUnit_ScaleFROM_UNITInitPopup(Sender: TObject);
    procedure grdUnit_ScaleFROM_UNITCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure grdUnit_ScaleTO_UNITInitPopup(Sender: TObject);
    procedure grdUnit_ScaleTO_UNITCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TntBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitScaleFrm: TUnitScaleFrm;

implementation

uses MainDataMdl, GlobalUnit, HtmlHlp;

{$R *.dfm}

procedure TUnitScaleFrm.grdUnit_ScaleFROM_UNITInitPopup(Sender: TObject);
begin
  MainDM.qryUnit.Open;
end;

procedure TUnitScaleFrm.grdUnit_ScaleFROM_UNITCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryUnitUNIT_ID.Value;
  MainDM.qryUnit.Close;
end;

procedure TUnitScaleFrm.grdUnit_ScaleTO_UNITInitPopup(Sender: TObject);
begin
  MainDM.qryUnit.Open;
end;

procedure TUnitScaleFrm.grdUnit_ScaleTO_UNITCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryUnitUNIT_ID.Value;
  MainDM.qryUnit.Close;
end;

procedure TUnitScaleFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  MainDM.qryUnit_Scale.Open;

  if SSPUserRight[11].IR = False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[11].DR = False then
    DataSetDelete1.DataSource := MainDM.dsBanana;
end;

procedure TUnitScaleFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
        ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);

end;

procedure TUnitScaleFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryUnit_Scale do
  begin
    if State in [dsEdit, dsInsert] then
      Post;
  end;
end;

procedure TUnitScaleFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
