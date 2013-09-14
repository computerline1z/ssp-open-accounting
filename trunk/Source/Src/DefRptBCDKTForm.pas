unit DefRptBCDKTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,dxDBGrid,
  dxLayout, DB, IBODataset, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList, dxGrClms,FormKTBCD, dxExGrEd, dxExELib,
  TntStdCtrls;

type
  TDefRptBCDKTFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBGrid1CHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    ElFormCaption1: TElFormCaption;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locdel: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    btnDef: TElPopupButton;
    locFormItem8: TdxLayoutItem;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1DAUNAM: TdxDBGridMaskColumn;
    dxDBGrid1CUOIKY: TdxDBGridMaskColumn;
    dxDBGrid1HESO_GROUP: TdxDBGridMaskColumn;
    dxDBGrid1MANHOM: TdxDBGridMaskColumn;
    dxDBGrid1ISMIN: TdxDBGridCheckColumn;
    dxDBGrid1THUYETMINH: TdxDBGridMaskColumn;
    locFormItem9: TdxLayoutItem;
    btCheck: TElGraphicButton;
    locFormItem10: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    btnCopy: TElPopupButton;
    locFormGroup3: TdxLayoutGroup;
    edtBranch: TTntEdit;
    locBranch2: TdxLayoutItem;
    locFormItem12: TdxLayoutItem;
    btnDel: TElPopupButton;
    locBranch: TdxLayoutItem;
    popBranch: TdxPopupEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDefClick(Sender: TObject);
    procedure dxDBGrid1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure FormShow(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure popBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DefRptBCDKTFrm: TDefRptBCDKTFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  DefDKBCDKTForm, DefDefineBCDKTForm, HtmlHlp;


{$R *.dfm}

procedure TDefRptBCDKTFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    MainDM.qryDefRptBCDKT.ParamByName('BRANCH_ID').Value := vpBranch_id;
    MainDM.qryDefRptBCDKT.Open;
    MainDM.qryBranch.Locate('BRANCH_ID',vpBranch_id,[]);

    popbranch.Text := Maindm.qryBranchSHORTNAME.Value;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure TDefRptBCDKTFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with MainDM.qryDefRptBCDKT do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TDefRptBCDKTFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TDefRptBCDKTFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Bangcandoiketoan.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDefRptBCDKTFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Bangcandoiketoan.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TDefRptBCDKTFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(True).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TDefRptBCDKTFrm.btnDefClick(Sender: TObject);
begin
  with TDefDKBCDKTFrm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDefRptBCDKTFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnDef.Enabled:=MainDM.qryDefRptBCDKTISMIN.AsInteger=1;
end;

procedure TDefRptBCDKTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);

  if MainDM.qryBranch.RecordCount = 1 then
    locBranch.Enabled := FALSE;

  locBranch2.Visible := ((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  btnDel.visible := ((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  btncopy.visible := ((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  edtBranch.visible := ((CurrentUser ='SSPAdmin') or (CurrentUser ='UserAdmin'));
  locBranch2.Visible := False;
  btnDel.visible := False;
  btncopy.visible := False;
  edtBranch.visible := False;

end;

procedure TDefRptBCDKTFrm.btCheckClick(Sender: TObject);
begin
  with TKTBCDForm.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDefRptBCDKTFrm.ElPopupButton1Click(Sender: TObject);
begin
   with TfrmDefDefineBCDKT.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TDefRptBCDKTFrm.btnCopyClick(Sender: TObject);
begin
    if trim(edtBranch.Text) <> '' then
    if ShowMessageUnicode(253,edtBranch.Text,4) = 6 then
    if (edtBranch.Text <> MainDM.qryBranchBRANCH_ID.Value) and (trim(edtBranch.Text) <> '') then
      with maindm do
      begin
        qryCommon.SQL.Clear;
        qryCommon.Params.Clear;
        qryCommon.SQL.text := ' INSERT INTO RPT_BANGCANDOI (ID,MANHOM,TEN,MASO,DAUNAM,CUOIKY,HESO_GROUP,ISMIN,THUYETMINH,BRANCH_ID)'+
            ' SELECT ID,MANHOM,TEN,MASO,DAUNAM,CUOIKY,HESO_GROUP,ISMIN,THUYETMINH,''' +edtBranch.Text+ ''' FROM RPT_BANGCANDOI WHERE BRANCH_ID = :FROM_BRANCH_ID';
        qryCommon.ParamByName('FROM_BRANCH_ID').Value := qryBranchBRANCH_ID.Value;
        qryCommon.ExecSQL;
        qryCommon.SQL.text := ' INSERT INTO RPT_BANGCANDOI_DK (ID,DKTK,HESO,METHOD_ID,BRANCH_ID)'+
            ' SELECT ID,DKTK,HESO,METHOD_ID,''' + edtBranch.Text+''' FROM RPT_BANGCANDOI_DK WHERE BRANCH_ID = :FROM_BRANCH_ID';
        qryCommon.ExecSQL;
    end

end;

procedure TDefRptBCDKTFrm.btnDelClick(Sender: TObject);
begin
    if trim(edtBranch.Text) <> '' then
    if ShowMessageUnicode(23,edtBranch.Text,4) = 6 then
    begin
      if MainDM.qryBranchBRANCH_ID.Value = edtBranch.Text then
        MainDM.qryDefRptBCDKT.Close;
        
      MainDM.qryCommon.Params.Clear;
      MainDM.qryCommon.SQL.clear;
      MainDM.qryCommon.SQL.Text := 'delete from RPT_BANGCANDOI_DK where branch_id = :branch_id';
      MainDM.qryCommon.ParamByName('branch_id').Value := edtBranch.Text;
      MainDM.qryCommon.ExecSQL;
      MainDM.qryCommon.SQL.Text := 'delete from RPT_BANGCANDOI where branch_id = :branch_id';
      MainDM.qryCommon.ExecSQL;
      
    end
end;

procedure TDefRptBCDKTFrm.popBranchCloseUp(Sender: TObject;
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
