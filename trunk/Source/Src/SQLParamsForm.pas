unit SQLParamsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, ExtCtrls, StdCtrls, ElXPThemedControl, ElEdits,
  ElBtnCtl, ElPopBtn, dxLayoutControl, cxControls, dxLayoutLookAndFeels,
  dxCntner, dxEditor, dxEdLib, dxDBELib;

type
  TSQLParamsFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormShow(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLParamsFrm: TSQLParamsFrm;
  EditArray:array[0..100] of TdxEdit;
  ItemArray:array[0..100] of TdxLayoutItem;
implementation

uses SQLTesterForm, IBODataset, DB, GlobalUnit;

{$R *.dfm}

procedure TSQLParamsFrm.FormShow(Sender: TObject);
var i:integer;
begin
  with SQLTesterFrm.qryExecuteSQL do
  begin
    //for i:=ParamCount-1 downto 0 do
    for i:=0 to ParamCount-1 do
    begin
      EditArray[i]:=TdxEdit.Create(Self);
      EditArray[i].Parent:=Self;
      ItemArray[i]:= dxLayoutControl1.Items.CreateItemForControl(EditArray[i]);
      ItemArray[i].AlignVert:=avTop;
      ItemArray[i].Caption:=Params[i].Name;
      EditArray[i].Text:=SQLParamValueArray[i];
    end;

    Self.Height:=(ParamCount)*29 +80;
  end;
  EditArray[0].SetFocus;
end;

procedure TSQLParamsFrm.ElPopupButton1Click(Sender: TObject);
var i:integer;
begin
  with SQLTesterFrm.qryExecuteSQL do
  begin
    for i:=0 to ParamCount-1 do
    begin
      Params[i].Value:=EditArray[i].Text;
      SQLParamValueArray[i]:=EditArray[i].Text;
    end;
  end;
end;

procedure TSQLParamsFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;
end;

end.
