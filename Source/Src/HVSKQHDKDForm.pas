unit HVSKQHDKDForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, ElCaption, DBActns,
  ActnList, ElXPThemedControl, ElBtnCtl, ElPopBtn, DB, IBODataset,
  dxDBTLCl, dxGrClms;

type
  THVSKQHDKDFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    locFormItem5: TdxLayoutItem;
    btnDefine: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    TntBitBtn5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    qry: TIBOQuery;
    ds: TDataSource;
    qryID: TSmallintField;
    qryCHITIEU: TWideStringField;
    qryMASO: TWideStringField;
    qryMANHOM: TWideStringField;
    qryVANPHONG: TIBOFloatField;
    qryLIKSHO: TIBOFloatField;
    qryBAOBI: TIBOFloatField;
    qryHUONGVIET: TIBOFloatField;
    qryISBOLD: TSmallintField;
    qryISUNDERLINE: TSmallintField;
    qryISMIN: TSmallintField;
    qryORDERCALC: TSmallintField;
    dxDBGrid1ID: TdxDBGridColumn;
    dxDBGrid1CHITIEU: TdxDBGridColumn;
    dxDBGrid1MASO: TdxDBGridColumn;
    dxDBGrid1LOAI: TdxDBGridColumn;
    dxDBGrid1MANHOM: TdxDBGridColumn;
    dxDBGrid1VANPHONG: TdxDBGridColumn;
    dxDBGrid1LIKSHO: TdxDBGridColumn;
    dxDBGrid1BAOBI: TdxDBGridColumn;
    dxDBGrid1HUONGVIET: TdxDBGridColumn;
    dxDBGrid1ISBOLD: TdxDBGridCheckColumn;
    dxDBGrid1ISUNDERLINE: TdxDBGridCheckColumn;
    dxDBGrid1ISMIN: TdxDBGridCheckColumn;
    dxDBGrid1ORDERCALC: TdxDBGridColumn;
    qryLOAI: TIBOFloatField;
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
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryBeforeEdit(DataSet: TDataSet);
    procedure qryBeforeInsert(DataSet: TDataSet);
    procedure qryPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HVSKQHDKDFrm: THVSKQHDKDFrm;

implementation

uses GlobalInterface, MainDataMdl,  GlobalUnit, LookupFrm,
  dxTreeGridMenus, HtmlHlp, HVSKQHDKDCondForm, Functions,HVSKQHDKDCond2Form;


{$R *.dfm}

procedure THVSKQHDKDFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qry.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
end;

procedure THVSKQHDKDFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Qry do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure THVSKQHDKDFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure THVSKQHDKDFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  btnDefine.Enabled:=(qryLOAI.AsInteger<>0);
end;

procedure THVSKQHDKDFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/KetquahoatdongKD.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure THVSKQHDKDFrm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/KetquahoatdongKD.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure THVSKQHDKDFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure THVSKQHDKDFrm.btnDefineClick(Sender: TObject);
begin
  if qryISMIN.value = 1 then
  begin
    with THVSKQHDKDCondFrm.Create(Self) do
    try
      ID := qryID.Value;
      ShowModal;
    finally
      Free;
    end;
  end
  else
  begin
    with THVSKQHDKDCond2Frm.Create(Self) do
    try
      ID := qryID.Value;
      ShowModal;
    finally
      Free;
    end;
   
  end
end;

procedure THVSKQHDKDFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  if btnDefine.Enabled then
    btnDefineClick(Sender);
end;

procedure THVSKQHDKDFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure THVSKQHDKDFrm.qryBeforePost(DataSet: TDataSet);
begin
  if qryID.IsNull then
  begin
    ShowMessageUnicode(20);
    qryID.FocusControl;
    Abort;
  end;
end;

procedure THVSKQHDKDFrm.qryAfterInsert(DataSet: TDataSet);
begin
  qryID.FocusControl;
end;

procedure THVSKQHDKDFrm.qryBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure THVSKQHDKDFrm.qryBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

procedure THVSKQHDKDFrm.qryBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(6) then Abort;
end;

procedure THVSKQHDKDFrm.qryPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Action:=daAbort;
  ProcessErr(E,'');
  qryID.FocusControl;
end;

end.
