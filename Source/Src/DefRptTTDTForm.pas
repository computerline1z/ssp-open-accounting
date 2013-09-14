unit DefRptTTDTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,
  dxLayout, DB, IBODataset, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList;

type
  TTMBCTC_THDTFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryPMethod: TIBOQuery;
    dsPMethod: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    qryPMethodMETHOD_ID: TSmallintField;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    dxDBGrid1Column7: TdxDBGridExtLookupColumn;
    qryPMethodMETHOD_NAME: TWideStringField;
    ElFormCaption1: TElFormCaption;
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
    locFormGroup2: TdxLayoutGroup;
    dxDBGridLayoutList1Item2: TdxDBGridLayout;
    srcTTDT: TDataSource;
    qryTTDT: TIBOQuery;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1MANHOM: TdxDBGridMaskColumn;
    dxDBGrid1TEN: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1LOAICHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_ID: TdxDBGridMaskColumn;
    dxDBGrid1USER_INPUT: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN: TdxDBGridMaskColumn;
    qryTTDTID: TSmallintField;
    qryTTDTMANHOM: TWideStringField;
    qryTTDTTEN: TWideStringField;
    qryTTDTMASO: TWideStringField;
    qryTTDTDAUKY: TIBOFloatField;
    qryTTDTCUOIKY: TIBOFloatField;
    qryTTDTTANGKY: TIBOFloatField;
    qryTTDTGIAMKY: TIBOFloatField;
    qryTTDTKETQUA_DAUTU: TIBOFloatField;
    qryTTDTUSER_INPUT: TIBOFloatField;
    qryTTDTSTATUSFLAG: TSmallintField;
    qryTTDTDIEUKIEN: TWideStringField;
    qryTTDTDIEUKIEN_1: TWideStringField;
    qryTTDTDIEUKIEN_2: TWideStringField;
    qryTTDTDIEUKIEN_3: TWideStringField;
    qryTTDTDIEUKIEN_4: TWideStringField;
    qryTTDTDIEUKIEN_5: TWideStringField;
    qryTTDTLOAICHITIEU: TSmallintField;
    qryTTDTMETHOD_ID: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxDBGrid1Column7CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn5Click(Sender: TObject);
    procedure qryTTDTBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMBCTC_THDTFrm: TTMBCTC_THDTFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm;


{$R *.dfm}

procedure TTMBCTC_THDTFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qryTTDT.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  qryPMethod.Open;
end;

procedure TTMBCTC_THDTFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryTTDT do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TTMBCTC_THDTFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TTMBCTC_THDTFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
{
  if ((qryTTDTLOAICHITIEU.AsInteger=1) or (qryTTDTLOAICHITIEU.AsInteger=-1)) then
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior+[edgoEditing]
  else
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior-[edgoEditing];
}
end;

procedure TTMBCTC_THDTFrm.dxDBGrid1Column7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryTTDT.Edit;
    Text := qryPMethodMETHOD_NAME.Value;
    qryTTDTMETHOD_ID.AsInteger := qryPMethodMETHOD_ID.AsInteger;
  end;
end;

procedure TTMBCTC_THDTFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTMBCTC_THDTFrm.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(10);
end;

procedure TTMBCTC_THDTFrm.qryTTDTBeforePost(DataSet: TDataSet);
var
  str:String;
  p,i:Integer;
  arrDieukien:Array[1..5] of String;
begin
  i:=1;
  str:=qryTTDTDIEUKIEN.AsString;
  while str<>'' do
  begin
    p:=Pos(',',str);
    if p=0 then
    begin
      arrDieukien[i]:=str;
      str:='';
    end
    else
    begin
      arrDieukien[i]:=copy(str,1,p-1);
      str:=Copy(Str,p+1,Length(str));
    end;

    i:=i+1;
    if i>5 then
    begin
      ShowMessageUnicode(78);
      Abort;
      Exit;
    end;
  end;
  qryTTDTDIEUKIEN_1.AsString:=Trim(arrDieukien[1]);
  qryTTDTDIEUKIEN_2.AsString:=Trim(arrDieukien[2]);
  qryTTDTDIEUKIEN_3.AsString:=Trim(arrDieukien[3]);
  qryTTDTDIEUKIEN_4.AsString:=Trim(arrDieukien[4]);
  qryTTDTDIEUKIEN_5.AsString:=Trim(arrDieukien[5]);

end;

end.
