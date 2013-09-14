unit ObjGrpForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, Forms, ElCaption,
  IBODataset, ElXPThemedControl, ElBtnCtl, ElPopBtn, DBActns, ActnList,
  dxLayout, dxDBTLCl, dxGrClEx;

type
  TObjGrpFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    qryObjGrp: TIBOQuery;
    qryObjGrpOBJGRP_ID: TWideStringField;
    qryObjGrpOTYPE_ID: TSmallintField;
    qryObjGrpOBJGRP_NAME: TWideStringField;
    dsObjGrp: TDataSource;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    locFormItem2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    locFormItem3: TdxLayoutItem;
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
    qryObjGrpP_OBJGRP_ID: TWideStringField;
    dxDBTreeList1: TdxDBTreeList;
    locFormItem8: TdxLayoutItem;
    dxDBTreeList1OBJGRP_ID: TdxDBTreeListColumn;
    dxDBTreeList1OBJGRP_NAME: TdxDBTreeListColumn;
    ElPopupButton1: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    DataSetInsert2: TDataSetInsert;
    qryObjGrpMS_PPXK: TSmallintField;
    dxDBTreeList1MS_PPXK: TdxDBTreeListExtLookupColumn;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryObjGrpNewRecord(DataSet: TDataSet);
    procedure qryObjGrpAfterInsert(DataSet: TDataSet);
    procedure qryObjGrpAfterPost(DataSet: TDataSet);
    procedure qryObjGrpAfterDelete(DataSet: TDataSet);
    procedure qryObjGrpBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryObjGrpPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryObjGrpDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryObjGrpBeforeDelete(DataSet: TDataSet);
    procedure qryObjGrpBeforeEdit(DataSet: TDataSet);
    procedure qryObjGrpBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DataSetInsert1Execute(Sender: TObject);
    procedure DataSetInsert2Execute(Sender: TObject);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    P_OBJGRP_ID:WideString;
  public
    { Public declarations }
  end;

var
  ObjGrpFrm: TObjGrpFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, dxTreeGridMenus,
  Functions, HtmlHlp;


{$R *.dfm}

procedure TObjGrpFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  if prmUSEUPPERCASE then
  begin
  //[NXHop sua]
  //  dxDBGrid1OBJGRP_ID.CharCase:=ecUpperCase;
     dxDBTreeList1OBJGRP_ID.CharCase:=ecUpperCase;
  end;
  //Open dataset
  qryObjGrp.ParamByName('OTYPE_ID').AsInteger:=MainDM.CurObjTypeID;
  qryObjGrp.Open;

  if SSPUserRight[10].IR=False then
    DataSetInsert1.DataSource := MainDM.dsBanana;
  if SSPUserRight[10].DR=False then
    DataSetDelete1.DataSource := MainDM.dsBanana;

  //[NXHop sua]
    dxDBTreeList1.FullExpand;
  //Thinh - Them PPXK cho Nhom hang hoa
  dxDBTreeList1MS_PPXK.Visible := MainDM.CurObjTypeID = 2;
end;

procedure TObjGrpFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryObjGrp do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    Close;
  end;
end;

procedure TObjGrpFrm.qryObjGrpNewRecord(DataSet: TDataSet);
begin
  qryObjGrpOTYPE_ID.AsInteger:= MainDM.CurObjTypeID;
  if P_OBJGRP_ID='' then
    qryObjGrpP_OBJGRP_ID.Clear
  else
    qryObjGrpP_OBJGRP_ID.Value:=P_OBJGRP_ID;
end;

procedure TObjGrpFrm.qryObjGrpAfterInsert(DataSet: TDataSet);
begin
  qryObjGrpOBJGRP_ID.FocusControl;
end;

procedure TObjGrpFrm.qryObjGrpAfterPost(DataSet: TDataSet);
begin
//[NXHop sua]    MainDM.qryPObjGrp.Close;
end;

procedure TObjGrpFrm.qryObjGrpAfterDelete(DataSet: TDataSet);
begin
//[NXHop sua]    MainDM.qryPObjGrp.Close;
end;

procedure TObjGrpFrm.qryObjGrpBeforePost(DataSet: TDataSet);
begin
  if IsNotHasData(qryObjGrpOBJGRP_ID) then
  begin
    ShowMessageUnicode(193);
    qryObjGrpOBJGRP_ID.FocusControl;
    Abort;
    Exit;
  end;
  LastModifyItemID := qryObjGrpOBJGRP_ID.Value;
end;

procedure TObjGrpFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TObjGrpFrm.qryObjGrpPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;

  ErrImportMsg := e.Message;
  if ImportingFromXLS then Exit;

  if ProcessErr(E,'') = -803 then
    qryObjGrpOBJGRP_ID.FocusControl;
end;

procedure TObjGrpFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(17);
end;

procedure TObjGrpFrm.qryObjGrpDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Action := daAbort;
  ShowMessageUnicode(29, E.Message, 0);
  if DataSet.RecordCount = 1 then
    DataSet.Refresh;
end;

procedure TObjGrpFrm.qryObjGrpBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDm.CheckAllowDelete(DataSet,10) then Abort;
end;

procedure TObjGrpFrm.qryObjGrpBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(10) then Abort;
end;

procedure TObjGrpFrm.qryObjGrpBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(10) then Abort;
end;

procedure TObjGrpFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TObjGrpFrm.DataSetInsert1Execute(Sender: TObject);
begin
  if qryObjGrpP_OBJGRP_ID.IsNull then
    P_OBJGRP_ID := ''
  else
    P_OBJGRP_ID := qryObjGrpP_OBJGRP_ID.Value;
  qryObjGrp.Append;
end;

procedure TObjGrpFrm.DataSetInsert2Execute(Sender: TObject);
begin
  P_OBJGRP_ID:=qryObjGrpOBJGRP_ID.Value;
  qryObjGrp.Append;
end;

procedure TObjGrpFrm.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    begin
      if TdxPopupMenuManager.Instance(false).ShowGridPopupMenu(TdxDBGrid(Sender)) then Exit;
    end;
end;

procedure TObjGrpFrm.dxDBTreeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  ProcessKeyDownInTreeList(TdxDBTreeList(Sender), Key, Shift);
end;

end.
