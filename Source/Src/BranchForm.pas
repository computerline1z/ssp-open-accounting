unit BranchForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxLayout, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxTL,
  dxDBCtrl, dxLayoutControl, dxCntner, dxDBTL, cxControls, ElCaption, DB,
  IBODataset, DBActns, ActnList, dxEditor, dxEdLib, dxDBELib,dxDBGrid;

type
  TBranchFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnOK: TElPopupButton;
    ElFormCaption1: TElFormCaption;
    grdHSCT: TdxDBTreeList;
    grdHSCTBRANCH_ID: TdxDBTreeListMaskColumn;
    grdHSCTFULLNAME: TdxDBTreeListMaskColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnAdd: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnAddChild: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnDel: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnPost: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    btnCancel: TElPopupButton;
    dsBranch: TDataSource;
    qryBranch: TIBOQuery;
    qryBranchBRANCH_ID: TWideStringField;
    qryBranchFULLNAME: TWideStringField;
    qryBranchSHORTNAME: TWideStringField;
    qryBranchISMIN: TSmallintField;
    qryBranchPBRANCH_ID: TWideStringField;
    qryBranchCOMPANY_ID: TSmallintField;
    ActionList1: TActionList;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBEdit1: TdxDBEdit;
    locName: TdxLayoutItem;
    locBranch: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    grdHSCTSHORTNAME: TdxDBTreeListMaskColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    procedure btnAddChildClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBranchNewRecord(DataSet: TDataSet);
    procedure btnSkipClick(Sender: TObject);
    procedure grdHSCTDblClick(Sender: TObject);
    procedure qryBranchBeforeOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdHSCTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryBranchBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    PBRANCH : widestring;
    BRANCH : widestring;
  end;

var
  BranchFrm: TBranchFrm;

implementation
uses DMInterface,MainDataMdl,GlobalUnit,dxTreeGridMenus;
{$R *.dfm}

procedure TBranchFrm.btnAddChildClick(Sender: TObject);
begin
  PBRANCH :=qryBranchBRANCH_ID.Value;
  BRANCH := qryBranchBRANCH_ID.Value;
  qryBranch.Insert;
end;

procedure TBranchFrm.btnAddClick(Sender: TObject);
begin
  PBRANCH :=qryBranchPBRANCH_ID.Value;
  BRANCH := qryBranchBRANCH_ID.Value;
  qryBranch.Insert;
end;

procedure TBranchFrm.btnOKClick(Sender: TObject);
begin
    if qryBranch.State in [dsInsert, dsEdit] then qryBranch.Post;
    vpBranch_id := qryBranchBRANCH_ID.Value;
    vpBranch_IsMin := qryBranchISMIN.Value;
    vpBranch_Name := qryBranchSHORTNAME.Value;//qryBranchFULLNAME.Value;

end;

procedure TBranchFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(self);
  qryBranch.open;
  qryBranch.Locate('BRANCH_ID',vpBranch_id,[]);
  grdHSCT.FullExpand;
end;

procedure TBranchFrm.qryBranchNewRecord(DataSet: TDataSet);
begin
  qryBranchPBRANCH_ID.Value := PBRANCH;
  //qryBranchCOMPANY_ID.Value := 1;
  qryBranchBRANCH_ID.FocusControl;
  dxDBEdit2.Text := '';
end;

procedure TBranchFrm.btnSkipClick(Sender: TObject);
begin
  close;
end;

procedure TBranchFrm.grdHSCTDblClick(Sender: TObject);
begin
   if qryBranch.State in [dsInsert, dsEdit] then qryBranch.Post;

end;

procedure TBranchFrm.qryBranchBeforeOpen(DataSet: TDataSet);
begin
  qryBranch.ParamByName('LOGIN_BRANCH_ID').Value := vpLoginBranch;
end;

procedure TBranchFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBranchFrm.grdHSCTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if Button <> mbRight then exit;
 if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then
    exit;

end;

procedure TBranchFrm.qryBranchBeforePost(DataSet: TDataSet);
begin
    if IsNotHasData(qryBranchBRANCH_ID) then
    begin
        HintBox(180,self,dxDBEdit2);
        abort;
        exit;
    end;
    if IsNotHasData(qryBranchFULLNAME) then
    begin
        HintBox(180,self,dxDBEdit3);
        abort;
        exit;
    end;

end;

end.
