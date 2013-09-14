unit SelectAccForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels,  TntButtons,
  dxTL, dxDBCtrl, dxDBTL, IBODataset, ElCaption, ElXPThemedControl,
  ElBtnCtl, ElPopBtn;

type
  TSelectAccFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxDBTreeList1: TdxDBTreeList;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBTreeList1ACCOUNT_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn;
    dsPSubAcc: TDataSource;
    qryPSubAcc: TIBOQuery;
    qryPSubAccACCOUNT_TAG: TSmallintField;
    qryPSubAccOTYPE_ID: TSmallintField;
    qryPSubAccACCOUNT_ID: TWideStringField;
    qryPSubAccPACCOUNT_ID: TWideStringField;
    qryPSubAccACCOUNT_NAME: TWideStringField;
    qryPSubAccISMIN: TSmallintField;
    ElFormCaption1: TElFormCaption;
    qryPSubAccACC_MAP_ID: TWideStringField;
    dxDBTreeList1ACC_MAP_ID: TdxDBTreeListColumn;
    procedure FormCreate(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
  end;

var
  SelectAccFrm: TSelectAccFrm;

implementation

uses MainDataMdl, GlobalUnit,  LookupFrm, HtmlHlp;

{$R *.dfm}

procedure TSelectAccFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  SHTIEUKHOAN:='';
  qryPSubAcc.ParamByName('ACCOUNT_ID').Value :=SHTAIKHOAN;
  qryPSubAcc.Open;
end;

procedure TSelectAccFrm.TntFormShow(Sender: TObject);
begin
  dxDBTreeList1.FullExpand;
  SetVisible(Self);  
end;

procedure TSelectAccFrm.BitBtn1Click(Sender: TObject);
begin
  if (qryPSubAccISMIN.AsInteger=1) then
  begin
    SHTIEUKHOAN := qryPSubAccACCOUNT_ID.Value;
    ModalResult := mrOk;
  end;
end;

procedure TSelectAccFrm.dxDBTreeList1DblClick(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

procedure TSelectAccFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key= VK_Return then
    BitBtn1Click(Sender)
  else
    ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TSelectAccFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
