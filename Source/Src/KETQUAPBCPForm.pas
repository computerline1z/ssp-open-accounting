unit KETQUAPBCPForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TKETQUAPBCPFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    qryHESO: TIBOQuery;
    dsHESO: TDataSource;
    qryHESOPERIOD_ID: TSmallintField;
    qryHESOMAPX: TWideStringField;
    qryHESOMALOAI: TSmallintField;
    qryHESOSHTK: TWideStringField;
    qryHESOOBJECT_NAME: TWideStringField;
    grdKHOBJECT_NAME: TdxDBGridMaskColumn;
    grdKHGTPHANBO: TdxDBGridCalcColumn;
    qryHESOGTPHANBO: TIBOFloatField;
    grdKHMAPX: TdxDBGridColumn;
    grdKHSHTK: TdxDBGridColumn;
    qryHESOGTDAUKY: TIBOFloatField;
    qryHESOGTCUOIKY: TIBOFloatField;
    qryHESOTIEUHAO: TFloatField;
    grdKHGTDAUKY: TdxDBGridMaskColumn;
    grdKHGTCUOIKY: TdxDBGridMaskColumn;
    grdKHTIEUHAO: TdxDBGridColumn;
    qryHESOKF: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryHESOCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KETQUAPBCPFrm: TKETQUAPBCPFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TKETQUAPBCPFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryHESOGTDAUKY.DisplayFormat:=TIENTE_FORMAT;
  qryHESOGTPHANBO.DisplayFormat:=TIENTE_FORMAT;
  qryHESOTIEUHAO.DisplayFormat:=TIENTE_FORMAT;
  qryHESOGTCUOIKY.DisplayFormat:=TIENTE_FORMAT;
  grdKHGTDAUKY.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHGTPHANBO.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHGTCUOIKY.SummaryFooterFormat:=TIENTE_FORMAT;
  grdKHTIEUHAO.SummaryFooterFormat:=TIENTE_FORMAT;
  
  grdKH.SummaryGroups[0].SummaryItems[0].SummaryFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[2].SummaryFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[3].SummaryFormat:=TIENTE_FORMAT;
  grdKH.SummaryGroups[0].SummaryItems[4].SummaryFormat:=TIENTE_FORMAT;

  qryHESO.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryHESO.Open;
end;
procedure TKETQUAPBCPFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TKETQUAPBCPFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, False,3);
end;

procedure TKETQUAPBCPFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TKETQUAPBCPFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TKETQUAPBCPFrm.qryHESOCalcFields(DataSet: TDataSet);
begin
  qryHESOTIEUHAO.AsFloat:=qryHESOGTDAUKY.AsFloat+qryHESOGTPHANBO.AsFloat-qryHESOGTCUOIKY.AsFloat;
end;

procedure TKETQUAPBCPFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
