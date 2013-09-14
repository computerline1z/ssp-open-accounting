unit TMBCTC_35Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClEx,
  dxLayout, DB, IBODataset, ElCaption, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList;

type
  TTMBCTC_35Frm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    qryPMethod: TIBOQuery;
    dsPMethod: TDataSource;
    qryPMethodMETHOD_ID: TSmallintField;
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
    srcTGNV: TDataSource;
    qryTGNV: TIBOQuery;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1MANHOM: TdxDBGridMaskColumn;
    dxDBGrid1TEN: TdxDBGridMaskColumn;
    dxDBGrid1MASO: TdxDBGridMaskColumn;
    dxDBGrid1DAUKY: TdxDBGridMaskColumn;
    dxDBGrid1CUOIKY: TdxDBGridMaskColumn;
    dxDBGrid1TANGKY: TdxDBGridMaskColumn;
    dxDBGrid1GIAMKY: TdxDBGridMaskColumn;
    dxDBGrid1STATUSFLAG: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_1: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_2: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_3: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_4: TdxDBGridMaskColumn;
    dxDBGrid1DIEUKIEN_5: TdxDBGridMaskColumn;
    dxDBGrid1LOAICHITIEU: TdxDBGridMaskColumn;
    dxDBGrid1METHOD_ID: TdxDBGridMaskColumn;
    qryTGNVID: TSmallintField;
    qryTGNVMANHOM: TWideStringField;
    qryTGNVTEN: TWideStringField;
    qryTGNVMASO: TWideStringField;
    qryTGNVDAUKY: TIBOFloatField;
    qryTGNVCUOIKY: TIBOFloatField;
    qryTGNVTANGKY: TIBOFloatField;
    qryTGNVGIAMKY: TIBOFloatField;
    qryTGNVSTATUSFLAG: TSmallintField;
    qryTGNVDIEUKIEN: TWideStringField;
    qryTGNVDIEUKIEN_1: TWideStringField;
    qryTGNVDIEUKIEN_2: TWideStringField;
    qryTGNVDIEUKIEN_3: TWideStringField;
    qryTGNVDIEUKIEN_4: TWideStringField;
    qryTGNVDIEUKIEN_5: TWideStringField;
    qryTGNVLOAICHITIEU: TSmallintField;
    qryTGNVMETHOD_ID: TSmallintField;
    dxDBGridLayoutList2: TdxDBGridLayoutList;
    dxDBGridLayout1: TdxDBGridLayout;
    qryTGNVMETHOD_NAME: TWideStringField;
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
    procedure qryTGNVBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMBCTC_35Frm: TTMBCTC_35Frm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm, HtmlHlp;


{$R *.dfm}

procedure TTMBCTC_35Frm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);
  try
    qryTGNV.Open;
  except
    ShowMessageUnicode(101);
    exit;
  end;
  qryPMethod.Open;
end;

procedure TTMBCTC_35Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with qryTGNV do
  begin
    if State in [dsInsert,dsEdit] then
      Post;
    close;
  end;
end;

procedure TTMBCTC_35Frm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift,False);
end;

procedure TTMBCTC_35Frm.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
{
  if ((qryTTDTLOAICHITIEU.AsInteger=1) or (qryTTDTLOAICHITIEU.AsInteger=-1)) then
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior+[edgoEditing]
  else
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior-[edgoEditing];
}
end;

procedure TTMBCTC_35Frm.dxDBGrid1Column7CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    qryTGNV.Edit;
    qryTGNV.FieldByName('METHOD_ID').AsInteger := qryPMethod.Fieldbyname('METHOD_ID').AsInteger;
    Text := qryPMethod.fieldbyname('METHOD_NAME').Value;
  end
end;

procedure TTMBCTC_35Frm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TTMBCTC_35Frm.TntBitBtn5Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TTMBCTC_35Frm.qryTGNVBeforePost(DataSet: TDataSet);
var
  str:String;
  p,i:Integer;
  arrDieukien:Array[1..5] of String;
begin
  i:=1;
  str:=qryTGNV.FieldByName('DIEUKIEN').AsString;
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
  qryTGNV.FieldByName('DIEUKIEN_1').AsString:=Trim(arrDieukien[1]);
  qryTGNV.FieldByName('DIEUKIEN_2').AsString:=Trim(arrDieukien[2]);
  qryTGNV.FieldByName('DIEUKIEN_3').AsString:=Trim(arrDieukien[3]);
  qryTGNV.FieldByName('DIEUKIEN_4').AsString:=Trim(arrDieukien[4]);
  qryTGNV.FieldByName('DIEUKIEN_5').AsString:=Trim(arrDieukien[5]);

end;

procedure TTMBCTC_35Frm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
