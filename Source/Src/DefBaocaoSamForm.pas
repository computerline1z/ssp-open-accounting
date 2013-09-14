unit DefBaocaoSamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, ElCaption, DBActns,
  ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxLayout, TntStdCtrls,
  dxExGrEd, dxExELib, DB, IBODataset;

type
  TDefBaocaoSamFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1CHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1LOAILUUCHUYEN: TdxDBGridMaskColumn;
    ElFormCaption1: TElFormCaption;
    locFormItem5: TdxLayoutItem;
    btnDefine: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    dxDBGrid1ID: TdxDBGridColumn;
    dxDBGrid1KYNAY: TdxDBGridColumn;
    dxDBGrid1KYTRUOC: TdxDBGridColumn;
    dxDBGrid1MASONHOM: TdxDBGridColumn;
    dxDBGrid1THUYETMINH: TdxDBGridMaskColumn;
    locFormItem2: TdxLayoutItem;
    popBranch: TdxPopupEdit;
    qryDefBaocaoSam: TIBOQuery;
    qryDefBaocaoSamID: TIntegerField;
    qryDefBaocaoSamSTATUSFLAG: TSmallintField;
    qryDefBaocaoSamLOAILUUCHUYEN: TSmallintField;
    qryDefBaocaoSamCHITIEU: TWideStringField;
    qryDefBaocaoSamMASO: TWideStringField;
    qryDefBaocaoSamKYNAY: TIBOFloatField;
    qryDefBaocaoSamKYTRUOC: TIBOFloatField;
    qryDefBaocaoSamMASONHOM: TSmallintField;
    qryDefBaocaoSamTHUYETMINH: TWideStringField;
    qryDefBaocaoSamBRANCH_ID: TWideStringField;
    dsDefBaocaoSam: TDataSource;
    locFormItem3: TdxLayoutItem;
    BitBtn4: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    BitBtn5: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    BitBtn2: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBGrid1BRANCH_ID: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDefineClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryDefBaocaoSamNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DefBaocaoSamFrm: TDefBaocaoSamFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,
  dxTreeGridMenus, defbaocaosamcondForm, HtmlHlp;


{$R *.dfm}

procedure TDefBaocaoSamFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qryDefBaocaoSam.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryDefBaocaoSam.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TDefBaocaoSamFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryDefBaocaoSam do
  begin
    if State in [dsInsert,dsEdit] then
      cancel;
    close;
  end;
end;

procedure TDefBaocaoSamFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key=VK_Return) and (btnDefine.Enabled)) then
    btnDefineClick(Sender)
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TDefBaocaoSamFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnDefine.Enabled:=((qryDefBaocaoSamLOAILUUCHUYEN.AsInteger=1) or (qryDefBaocaoSamLOAILUUCHUYEN.AsInteger=-1));
end;

procedure TDefBaocaoSamFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Luuchuyentiente.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDefBaocaoSamFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Luuchuyentiente.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TDefBaocaoSamFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TDefBaocaoSamFrm.btnDefineClick(Sender: TObject);
begin
  with TdefbaocaosamCondFrm.Create(Self) do
  try
    ID := qryDefBaocaoSamID.Value;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDefBaocaoSamFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  if btnDefine.Enabled then
    btnDefineClick(Sender);
end;

procedure TDefBaocaoSamFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
  if Maindm.qryBranch.RecordCount = 1 then
    locformItem2.Enabled := FALSE;
  locFormItem3.Visible := ((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  locFormItem3.Visible := False;
end;

procedure TDefBaocaoSamFrm.qryDefBaocaoSamNewRecord(DataSet: TDataSet);
begin
  qryDefBaocaoSamBRANCH_ID.Value := 'S';
  dxDBGrid1.SetFocus;
end;

end.
