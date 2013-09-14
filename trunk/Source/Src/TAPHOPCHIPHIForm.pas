unit TAPHOPCHIPHIForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TTAPHOPCHIPHIFrm = class(TForm)
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
    ElFormCaption1: TElFormCaption;
    qryHESO: TIBOQuery;
    dsHESO: TDataSource;
    locFormItem1: TdxLayoutItem;
    btnCancel: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TElPopupButton;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem3: TdxLayoutItem;
    dxDBTreeList1DISPLAY_ID: TdxDBTreeListMaskColumn;
    dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1PHATSINH: TdxDBTreeListMaskColumn;
    dxDBTreeList1DDCUOIKY: TdxDBTreeListMaskColumn;
    qryHESOACCOUNT_ID: TWideStringField;
    qryHESODISPLAY_ID: TWideStringField;
    qryHESOATYPE: TSmallintField;
    qryHESOPACCOUNT_ID: TWideStringField;
    qryHESOACCOUNT_NAME: TWideStringField;
    qryHESOPERIOD_ID: TSmallintField;
    qryHESOPHATSINH: TIBOFloatField;
    qryHESODDCUOIKY: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryHESOBeforeEdit(DataSet: TDataSet);
    procedure dxDBTreeList1Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TAPHOPCHIPHIFrm: TTAPHOPCHIPHIFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, htmlhlp;


{$R *.dfm}

procedure TTAPHOPCHIPHIFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  qryHESOPHATSINH.DisplayFormat:=TIENTE_FORMAT;
  qryHESODDCUOIKY.DisplayFormat:=TIENTE_FORMAT;
  with MainDM.qryCommon do
  begin
    Close;
    SQL.Clear;
    Params.Clear;
    SQL.Text :='execute procedure SP_KC_TAPHOPCHIPHI(:KYHT,:BRANCH_ID)';
    Prepare;

    ParamByName('KYHT').Value := CurrentPeriod;
    ParamByName('BRANCH_ID').Value := vpBranch_id;
    ExecSQL;
    Close;
  end;

  qryHESO.ParamByName('KYHT').AsInteger:=CurrentPeriod;
  qryHESO.ParamByName('BRANCH_ID').Value := vpBranch_id;
  qryHESO.Open;
end;
procedure TTAPHOPCHIPHIFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thietlaptinhgiathanh.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure TTAPHOPCHIPHIFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TTAPHOPCHIPHIFrm.dxDBTreeList1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(dxDBTreeList1, Key, Shift);
end;

procedure TTAPHOPCHIPHIFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(False).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TTAPHOPCHIPHIFrm.qryHESOBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure TTAPHOPCHIPHIFrm.dxDBTreeList1Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  Allow:=Not Node.HasChildren;
end;

procedure TTAPHOPCHIPHIFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
