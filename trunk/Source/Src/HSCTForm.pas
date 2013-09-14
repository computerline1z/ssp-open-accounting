unit HSCTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels,  TntButtons,
  ElXPThemedControl, ElEdits, ElBtnCtl, ElPopBtn, ElCaption;

type
  THSCTFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit12: TdxDBEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxDBEdit13: TdxDBEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    ActionList1: TActionList;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    dxDBEdit14: TdxDBEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxDBEdit15: TdxDBEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ElFormCaption1: TElFormCaption;
    dxDBEdit16: TdxDBEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxDBEdit17: TdxDBEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxDBEdit18: TdxDBEdit;
    locCompanyID: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGraphicEdit1AssignPicture(Sender: TObject;
      var Picture: TPicture);
    procedure dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
      var GraphicClass: TGraphicClass);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HSCTFrm: THSCTFrm;

implementation

uses MainDataMdl, IBODataset, GlobalUnit;


{$R *.dfm}

procedure THSCTFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  Self.Height:=Self.Height+(optFontSize-8)*30;
  dxLayoutControl1.EndUpdate;

  locCompanyID.Visible:=(CurrentUser='SSPAdmin');
  locCompanyID.Visible:=False;

  MainDM.qryHSCT.ParamByName('BRANCH_ID').AsString := vpLoginBranch;
  MainDM.qryHSCT.Open;
end;

procedure THSCTFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with MainDM.qryHSCT do
  begin
    if State in [dsInsert, dsEdit] then
      Post;
    Close;
  end;
end;

procedure THSCTFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/hosocongty.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure THSCTFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/hosocongty.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure THSCTFrm.dxDBGraphicEdit1AssignPicture(Sender: TObject;
  var Picture: TPicture);
begin
  with dxDBGraphicEdit1 do
  begin
    if Picture.Graphic <> nil then
      MainDM.qryHSCTLOGO_IMGCLASS.AsString :=Picture.Graphic.ClassName
    else
      MainDM.qryHSCTLOGO_IMGCLASS.Clear;
  end;
end;

procedure THSCTFrm.dxDBGraphicEdit1GetGraphicClass(Sender: TObject;
  var GraphicClass: TGraphicClass);
var
  img_class: string;
begin
  img_class := TdxDBGraphicEdit(Sender).DataSource.DataSet.FieldByName('LOGO_IMGCLASS').Asstring;
  if img_class <> '' then
    GraphicClass := TGraphicClass(GetClass(img_class))
  else
    GraphicClass := TGraphicClass(GetClass(TBitmap.ClassName)); 
end;

procedure THSCTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
