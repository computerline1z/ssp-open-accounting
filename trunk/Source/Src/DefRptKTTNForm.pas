unit DefRptKTTNForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,
  dxLayout, DB, IBODataset, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList;

type
  TTMBCTC_KTTNFrm = class(TForm)
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
    srcKTTN: TDataSource;
    qryKTTN: TIBOQuery;
    qryKTTNID: TSmallintField;
    qryKTTNMANHOM: TWideStringField;
    qryKTTNTEN: TWideStringField;
    qryKTTNMASO: TWideStringField;
    qryKTTNTONGSO_DAUKY: TIBOFloatField;
    qryKTTNTONGSO_CUOIKY: TIBOFloatField;
    qryKTTNQUAHAN_DAUKY: TIBOFloatField;
    qryKTTNQUAHAN_CUOIKY: TIBOFloatField;
    qryKTTNTONGSO_TRANHCHAP: TIBOFloatField;
    qryKTTNUSER_INPUT: TIBOFloatField;
    qryKTTNSTATUSFLAG: TSmallintField;
    qryKTTNDIEUKIEN: TWideStringField;
    qryKTTNDIEUKIEN_1: TWideStringField;
    qryKTTNDIEUKIEN_2: TWideStringField;
    qryKTTNDIEUKIEN_3: TWideStringField;
    qryKTTNDIEUKIEN_4: TWideStringField;
    qryKTTNDIEUKIEN_5: TWideStringField;
    qryKTTNLOAICHITIEU: TSmallintField;
    qryKTTNMETHOD_ID: TSmallintField;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1MANHOM: TdxDBGridMaskColumn;
    dxDBGrid1TEN: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1TONGSO_DAUKY: TdxDBGridMaskColumn;
    dxDBGrid1TONGSO_CUOIKY: TdxDBGridMaskColumn;
    dxDBGrid1QUAHAN_DAUKY: TdxDBGridMaskColumn;
    dxDBGrid1QUAHAN_CUOIKY: TdxDBGridMaskColumn;
    dxDBGrid1TONGSO_TRANHCHAP: TdxDBGridMaskColumn;
    dxDBGrid1USER_INPUT: TdxDBGridMaskColumn;
    dxDBGrid1STATUSFLAG: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_1: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_2: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_3: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_4: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_5: TdxDBGridMaskColumn;
    dxDBGrid1LOAICHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_ID: TdxDBGridMaskColumn;
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
    procedure qryKTTNBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMBCTC_KTTNFrm: TTMBCTC_KTTNFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm;


{$R *.dfm}

procedure TTMBCTC_KTTNFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qryKTTN.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  qryPMethod.Open;
end;

procedure TTMBCTC_KTTNFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryKTTN do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TTMBCTC_KTTNFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TTMBCTC_KTTNFrm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
{
  if ((qryTTDTLOAICHITIEU.AsInteger=1) or (qryTTDTLOAICHITIEU.AsInteger=-1)) then
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior+[edgoEditing]
  else
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior-[edgoEditing];
}
end;

procedure TTMBCTC_KTTNFrm.dxDBGrid1Column7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryKTTN.Edit;
    Text := qryPMethodMETHOD_NAME.Value;
    qryKTTNMETHOD_ID.AsInteger := qryPMethodMETHOD_ID.AsInteger;
  end;
end;

procedure TTMBCTC_KTTNFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTMBCTC_KTTNFrm.TntBitBtn5Click(Sender: TObject);
begin
  Application.HelpContext(10);
end;

procedure TTMBCTC_KTTNFrm.qryKTTNBeforePost(DataSet: TDataSet);
var str:String;
  p,i:Integer;
  arrDieukien:Array[1..5] of String;
begin
  i:=1;
  str:=qryKTTNDIEUKIEN.AsString;
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
  qryKTTNDIEUKIEN_1.AsString:=Trim(arrDieukien[1]);
  qryKTTNDIEUKIEN_2.AsString:=Trim(arrDieukien[2]);
  qryKTTNDIEUKIEN_3.AsString:=Trim(arrDieukien[3]);
  qryKTTNDIEUKIEN_4.AsString:=Trim(arrDieukien[4]);
  qryKTTNDIEUKIEN_5.AsString:=Trim(arrDieukien[5]);

end;

end.
