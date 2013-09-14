unit DefRptLCTTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, ElCaption, DBActns,
  ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxLayout, TntStdCtrls,
  dxExGrEd, dxExELib;

type
  TDefRptLCTTFrm = class(TForm)
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
    locFormItem3: TdxLayoutItem;
    edtBranch: TTntEdit;
    locFormItem4: TdxLayoutItem;
    btnDel: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    btnCopy: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    popBranch: TdxPopupEdit;
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
    procedure btnDelClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure popBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DefRptLCTTFrm: TDefRptLCTTFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, DB, GlobalUnit, LookupFrm,
  dxTreeGridMenus, LCTTCondForm, HtmlHlp;


{$R *.dfm}

procedure TDefRptLCTTFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    MainDM.qryDefRptLCTT.ParamByName('BRANCH_ID').Value := vpBranch_id;
    MainDM.qryDefRptLCTT.Open;
    MainDM.qryBranch.Locate('BRANCH_ID',vpBranch_id,[]);
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TDefRptLCTTFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryDefRptLCTT do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TDefRptLCTTFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Key=VK_Return) and (btnDefine.Enabled)) then
    btnDefineClick(Sender)
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TDefRptLCTTFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnDefine.Enabled:=((MainDM.qryDefRptLCTTLOAILUUCHUYEN.AsInteger=1) or (MainDM.qryDefRptLCTTLOAILUUCHUYEN.AsInteger=-1));
end;

procedure TDefRptLCTTFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TDefRptLCTTFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Luuchuyentiente.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TDefRptLCTTFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TDefRptLCTTFrm.btnDefineClick(Sender: TObject);
begin
  with TLCTTCondFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDefRptLCTTFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  if btnDefine.Enabled then
    btnDefineClick(Sender);
end;

procedure TDefRptLCTTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
  if Maindm.qryBranch.RecordCount = 1 then
    locformItem2.Enabled := FALSE;
  locFormItem3.Visible := ((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  btnDel.Visible :=((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  btnCopy.Visible :=((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  locFormItem3.Visible := False;
  btnDel.Visible :=False;
  btnCopy.Visible :=False;

end;

procedure TDefRptLCTTFrm.btnDelClick(Sender: TObject);
begin
    if Trim(edtBranch.Text) <> '' then
    if ShowMessageUnicode(23,edtBranch.Text,4) = 6 then
    begin
      if MainDM.qryBranchBRANCH_ID.Value = edtBranch.Text then
        MainDM.qryDefRptBCDKT.Close;
        
      MainDM.qryCommon.Params.Clear;
      MainDM.qryCommon.SQL.clear;
      MainDM.qryCommon.SQL.Text := 'delete from RPT_LCTT_CONDITION where branch_id = :branch_id';
      MainDM.qryCommon.ParamByName('branch_id').Value := edtBranch.Text;
      MainDM.qryCommon.ExecSQL;
      MainDM.qryCommon.SQL.Text := 'delete from RPT_LUUCHUYENTIENTE where branch_id = :branch_id';
      MainDM.qryCommon.ExecSQL;
      
    end
end;

procedure TDefRptLCTTFrm.btnCopyClick(Sender: TObject);
begin
 if Trim(edtBranch.Text) <> '' then
 if ShowMessageUnicode(253,edtBranch.Text,4) = 6 then
    if (edtBranch.Text <> MainDM.qryBranchBRANCH_ID.Value) and (trim(edtBranch.Text) <> '') then
      with maindm do
      begin
        qryCommon.SQL.Clear;
        qryCommon.Params.Clear;
        qryCommon.SQL.text := ' INSERT INTO RPT_LUUCHUYENTIENTE (ID,MASONHOM,CHITIEU,MASO,KYNAY,KYTRUOC,STATUSFLAG,LOAILUUCHUYEN,THUYETMINH,BRANCH_ID)'+
            ' SELECT ID,MASONHOM,CHITIEU,MASO,KYNAY,KYTRUOC,STATUSFLAG,LOAILUUCHUYEN,THUYETMINH,''' +edtBranch.Text+ ''' FROM RPT_LUUCHUYENTIENTE WHERE BRANCH_ID = :FROM_BRANCH_ID';
        qryCommon.ParamByName('FROM_BRANCH_ID').Value := qryBranchBRANCH_ID.Value;
        qryCommon.ExecSQL;
        qryCommon.SQL.text := 'INSERT INTO RPT_LCTT_CONDITION (ID,TKNOBDV,TKCOBDV,HESO,GHICHU,BRANCH_ID)'+
            ' SELECT ID,TKNOBDV,TKCOBDV,HESO,GHICHU,''' + edtBranch.Text+''' FROM RPT_LCTT_CONDITION WHERE BRANCH_ID = :FROM_BRANCH_ID';
        qryCommon.ExecSQL;
    end
end;

procedure TDefRptLCTTFrm.popBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  iF accept then
  begin
      Text := Maindm.qryBranchSHORTNAME.Value;
      MainDM.qryDefRptBCDKT.Close;
      MainDM.qryDefRptBCDKT.ParamByName('BRANCH_ID').Value := maindm.qryBranchBRANCH_ID.Value;
      MainDM.qryDefRptBCDKT.Open;
  end
end;

end.
