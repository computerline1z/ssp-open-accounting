unit CHITIETPHANBOForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TCHITIETPHANBOFrm = class(TForm)
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
    qryHESOMASOSP: TWideStringField;
    qryHESOLOAISP: TSmallintField;
    qryHESOGTPHANBO: TIBOFloatField;
    qryHESOOBJECT_NAME: TWideStringField;
    qryHESOSUBINFO_1: TWideStringField;
    qryHESOSUBINFO_2: TWideStringField;
    grdKHSHTK: TdxDBGridMaskColumn;
    grdKHMASOSP: TdxDBGridMaskColumn;
    grdKHGTPHANBO: TdxDBGridMaskColumn;
    grdKHOBJECT_NAME: TdxDBGridMaskColumn;
    grdKHSUBINFO_1: TdxDBGridMaskColumn;
    grdKHSUBINFO_2: TdxDBGridMaskColumn;
    locFormItem1: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locFormItem2: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    locFormGroup3: TdxLayoutGroup;
    qryHESOKF: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBPopupEdit1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CHITIETPHANBOFrm: TCHITIETPHANBOFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TCHITIETPHANBOFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryHESOGTPHANBO.DisplayFormat:=TIENTE_FORMAT;
  grdKHGTPHANBO.SummaryFooterFormat:=TIENTE_FORMAT;

  grdKH.SummaryGroups[0].SummaryItems[0].SummaryFormat:=TIENTE_FORMAT;

  qryHESO.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryHESO.Open;
end;
procedure TCHITIETPHANBOFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TCHITIETPHANBOFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, False,3);
end;

procedure TCHITIETPHANBOFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TCHITIETPHANBOFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TCHITIETPHANBOFrm.dxDBPopupEdit1Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=6;
end;

procedure TCHITIETPHANBOFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
