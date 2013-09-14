unit SoCaiHMKP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption, IBODataset;

type
  TSoCaiHMKPFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    grdAccountArise: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnDetail: TdxBarButton;
    dxBarButton4: TdxBarButton;
    ElFormCaption1: TElFormCaption;
    dsAccountArise: TDataSource;
    qryAccountArise: TIBOQuery;
    qryAccountAriseNGAYLAP: TDateField;
    qryAccountAriseSOPHIEU: TWideStringField;
    qryAccountAriseKYHT: TSmallintField;
    qryAccountAriseDIENGIAI: TWideStringField;
    qryAccountAriseTKNO: TWideStringField;
    qryAccountAriseTKCO: TWideStringField;
    qryAccountAriseSOTIEN: TIBOFloatField;
    qryAccountAriseTK_1: TWideStringField;
    qryAccountAriseTK_2: TWideStringField;
    qryAccountAriseTK_3: TWideStringField;
    qryAccountAriseTK_4: TWideStringField;
    qryAccountAriseTK_5: TWideStringField;
    qryAccountAriseTK_6: TWideStringField;
    qryAccountAriseTK_7: TWideStringField;
    qryAccountAriseTK_8: TWideStringField;
    qryAccountAriseTK_9: TWideStringField;
    qryAccountAriseTK_10: TWideStringField;
    qryAccountAriseNO_1: TIBOFloatField;
    qryAccountAriseCO_1: TIBOFloatField;
    qryAccountAriseNO_2: TIBOFloatField;
    qryAccountAriseCO_2: TIBOFloatField;
    qryAccountAriseNO_3: TIBOFloatField;
    qryAccountAriseCO_3: TIBOFloatField;
    qryAccountAriseNO_4: TIBOFloatField;
    qryAccountAriseCO_4: TIBOFloatField;
    qryAccountAriseNO_5: TIBOFloatField;
    qryAccountAriseCO_5: TIBOFloatField;
    qryAccountAriseNO_6: TIBOFloatField;
    qryAccountAriseCO_6: TIBOFloatField;
    qryAccountAriseNO_7: TIBOFloatField;
    qryAccountAriseCO_7: TIBOFloatField;
    qryAccountAriseNO_8: TIBOFloatField;
    qryAccountAriseCO_8: TIBOFloatField;
    qryAccountAriseNO_9: TIBOFloatField;
    qryAccountAriseCO_9: TIBOFloatField;
    qryAccountAriseNO_10: TIBOFloatField;
    qryAccountAriseCO_10: TIBOFloatField;
    qryAccountAriseNO_K: TIBOFloatField;
    qryAccountAriseCO_K: TIBOFloatField;
    grdAccountAriseNGAYLAP: TdxDBGridDateColumn;
    grdAccountAriseSOPHIEU: TdxDBGridMaskColumn;
    grdAccountAriseDIENGIAI: TdxDBGridMaskColumn;
    grdAccountAriseTKNO: TdxDBGridMaskColumn;
    grdAccountAriseTKCO: TdxDBGridMaskColumn;
    grdAccountAriseSOTIEN: TdxDBGridMaskColumn;
    grdAccountAriseNO_1: TdxDBGridMaskColumn;
    grdAccountAriseCO_1: TdxDBGridMaskColumn;
    grdAccountAriseNO_2: TdxDBGridMaskColumn;
    grdAccountAriseCO_2: TdxDBGridMaskColumn;
    grdAccountAriseNO_3: TdxDBGridMaskColumn;
    grdAccountAriseCO_3: TdxDBGridMaskColumn;
    grdAccountAriseNO_4: TdxDBGridMaskColumn;
    grdAccountAriseCO_4: TdxDBGridMaskColumn;
    grdAccountAriseNO_5: TdxDBGridMaskColumn;
    grdAccountAriseCO_5: TdxDBGridMaskColumn;
    grdAccountAriseNO_6: TdxDBGridMaskColumn;
    grdAccountAriseCO_6: TdxDBGridMaskColumn;
    grdAccountAriseNO_7: TdxDBGridMaskColumn;
    grdAccountAriseCO_7: TdxDBGridMaskColumn;
    grdAccountAriseNO_8: TdxDBGridMaskColumn;
    grdAccountAriseCO_8: TdxDBGridMaskColumn;
    grdAccountAriseNO_9: TdxDBGridMaskColumn;
    grdAccountAriseCO_9: TdxDBGridMaskColumn;
    grdAccountAriseNO_10: TdxDBGridMaskColumn;
    grdAccountAriseCO_10: TdxDBGridMaskColumn;
    grdAccountAriseNO_K: TdxDBGridMaskColumn;
    grdAccountAriseCO_K: TdxDBGridMaskColumn;
    qryAccountAriseBRANCH_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure grdAccountAriseDblClick(Sender: TObject);
    procedure grdAccountAriseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton4Click(Sender: TObject);
    procedure grdAccountAriseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoCaiHMKPFrm: TSoCaiHMKPFrm;

implementation

uses GlobalInterface, MainDataMdl, MainForm, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure TSoCaiHMKPFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);

  qryAccountArise.SQL.Text:=SQLSelectHMKP;
  qryAccountArise.Prepare;
  qryAccountArise.ParamByName('TUNGAY').AsDate:=ATUNGAYHMKP;
  qryAccountArise.ParamByName('DENNGAY').AsDate:=ADENNGAYHMKP;
  qryAccountArise.ParamByName('MANGUON').Value:=AMANGUONHMKP;
  qryAccountArise.ParamByName('BRANCH_ID').Value:=vpBranch_id;
  qryAccountArise.Open;
  
  qryAccountArise.Last;
  grdAccountArise.Bands[2].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_1.Value;
  grdAccountArise.Bands[3].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_2.Value;
  grdAccountArise.Bands[4].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_3.Value;
  grdAccountArise.Bands[5].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_4.Value;
  grdAccountArise.Bands[6].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_5.Value;
  grdAccountArise.Bands[7].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_6.Value;
  grdAccountArise.Bands[8].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_7.Value;
  grdAccountArise.Bands[9].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_8.Value;
  grdAccountArise.Bands[10].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_9.Value;
  grdAccountArise.Bands[11].Caption:=UTF8Decode('Tài khoản ')+ qryAccountAriseTK_10.Value;

  grdAccountArise.Bands[2].Visible:=IsHasData(qryAccountAriseTK_1);
  grdAccountArise.Bands[3].Visible:=IsHasData(qryAccountAriseTK_2);
  grdAccountArise.Bands[4].Visible:=IsHasData(qryAccountAriseTK_3);
  grdAccountArise.Bands[5].Visible:=IsHasData(qryAccountAriseTK_4);
  grdAccountArise.Bands[6].Visible:=IsHasData(qryAccountAriseTK_5);
  grdAccountArise.Bands[7].Visible:=IsHasData(qryAccountAriseTK_6);
  grdAccountArise.Bands[8].Visible:=IsHasData(qryAccountAriseTK_7);
  grdAccountArise.Bands[9].Visible:=IsHasData(qryAccountAriseTK_8);
  grdAccountArise.Bands[10].Visible:=IsHasData(qryAccountAriseTK_9);
  grdAccountArise.Bands[11].Visible:=IsHasData(qryAccountAriseTK_10);
  grdAccountArise.Bands[12].Visible:=IsHasData(qryAccountAriseTK_10);
end;

procedure TSoCaiHMKPFrm.dxBarButton1Click(Sender: TObject);
begin
  ExportToExcel(grdAccountArise);
end;

procedure TSoCaiHMKPFrm.dxBarButton2Click(Sender: TObject);
begin
  ExportToHTML(grdAccountArise);
end;

procedure TSoCaiHMKPFrm.dxBarButton3Click(Sender: TObject);
begin
  ExportToXML(grdAccountArise);
end;

procedure TSoCaiHMKPFrm.btnDetailClick(Sender: TObject);
begin
  IsPosted:=False;
  MainDM.Suachungtu(qryAccountAriseSOPHIEU.Value, qryAccountAriseKYHT.AsInteger,qryAccountAriseBRANCH_ID.Value);
  if IsPosted then
  begin
    qryAccountArise.DisableControls;
    qryAccountArise.Refresh;
    qryAccountArise.EnableControls;
  end;
end;

procedure TSoCaiHMKPFrm.grdAccountAriseDblClick(Sender: TObject);
begin
  btnDetailClick(Sender);
end;

procedure TSoCaiHMKPFrm.grdAccountAriseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    btnDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdAccountArise, Key, Shift, True,4);
end;

procedure TSoCaiHMKPFrm.dxBarButton4Click(Sender: TObject);
begin
  qryAccountArise.Refresh;
end;

procedure TSoCaiHMKPFrm.grdAccountAriseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TSoCaiHMKPFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TSoCaiHMKPFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
