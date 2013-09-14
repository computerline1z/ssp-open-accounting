unit TemplateDocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib,
  dxEditor, dxLayoutControl, cxControls, StdCtrls, dxLayoutLookAndFeels,
  Buttons, dxDBTLCl, dxGrClEx, dxGrClms, ExtCtrls, DB, IBODataset, DBActns,
  ActnList, IB_NavigationBar, DBCtrls, ppDB, ppBands, ppCtrls, Forms,
  ppClass, ppCache, ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppEndUsr, ppVar, dxExGrEd, dxExELib, dxLayout, ElCaption,
  ElXPThemedControl, ElEdits, ElBtnCtl, ElPopBtn, ElCheckCtl;

type
  TTemplateDocFrm = class(TForm)
    locFrmGroup_Root: TdxLayoutGroup;
    locFrm: TdxLayoutControl;
    locFrmGroup1: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    locFrmItem3: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    locFrmHoten: TdxLayoutItem;
    locFrmGroup4: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnIns: TELPopupButton;
    locbtnIns: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    locFrmItem14: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFrmItem16: TdxLayoutItem;
    BitBtn5: TELPopupButton;
    locFrmItem17: TdxLayoutItem;
    BitBtn7: TELPopupButton;
    locFrmItem19: TdxLayoutItem;
    BitBtn8: TELPopupButton;
    locFrmItem20: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    locFrmItem15: TdxLayoutItem;
    ActionList1: TActionList;
    dxDBEdit5: TdxDBEdit;
    locFrmItem5: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    locWare: TdxLayoutItem;
    locFrmGroup7: TdxLayoutGroup;
    locFrmGroup10: TdxLayoutGroup;
    dxDBPopupEdit4: TdxDBPopupEdit;
    locFrmItem6: TdxLayoutItem;
    dxDBPopupEdit5: TdxDBPopupEdit;
    locFrmItem8: TdxLayoutItem;
    dxDBPopupEdit6: TdxDBPopupEdit;
    locFrmVATAcc: TdxLayoutItem;
    locFrmGroup15: TdxLayoutGroup;
    locFrmGroup16: TdxLayoutGroup;
    locFrmDoituong: TdxLayoutGroup;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    locFrmGroup9: TdxLayoutGroup;
    dxDBCheckEdit8: TdxDBCheckEdit;
    locGIACOTHUE: TdxLayoutItem;
    dxDBCheckEdit9: TdxDBCheckEdit;
    locFrmItem23: TdxLayoutItem;
    locFrmGroup22: TdxLayoutGroup;
    dxDBExtLookupEdit1: TdxDBExtLookupEdit;
    locFrmItem24: TdxLayoutItem;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    qryShotCut: TIBOQuery;
    dsShotCut: TDataSource;
    qryShotCutSHOTCUT_ID: TSmallintField;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    qryShotCutSHOTCUT_NAME: TWideStringField;
    ElFormCaption1: TElFormCaption;
    locFrmItem1: TdxLayoutItem;
    dxDBMemo2: TdxDBMemo;
    locFrmItem9: TdxLayoutItem;
    dxDBCheckEdit2: TdxDBCheckEdit;
    locFrmItem2: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    locFrmItem4: TdxLayoutItem;
    dxDBPopupEdit3: TdxDBPopupEdit;
    locFrmItem7: TdxLayoutItem;
    locFrmGroup2: TdxLayoutGroup;
    dxDBCheckEdit1: TdxDBCheckEdit;
    locFrmItem10: TdxLayoutItem;
    locFrmGroup3: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit6CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBExtLookupEdit1CloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBPopupEdit6InitPopup(Sender: TObject);
    procedure dxDBPopupEdit5InitPopup(Sender: TObject);
    procedure dxDBPopupEdit4Exit(Sender: TObject);
    procedure dxDBPopupEdit5Exit(Sender: TObject);
    procedure dxDBPopupEdit6Exit(Sender: TObject);
    procedure dxDBPopupEdit1Exit(Sender: TObject);
    procedure dxDBPopupEdit4InitPopup(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit2Enter(Sender: TObject);
    procedure dxDBPopupEdit3Enter(Sender: TObject);
  private
  public
    isInsert:Boolean;//=True: Goi Insert
  end;
var
  TemplateDocFrm: TTemplateDocFrm;

implementation

uses MainDataMdl, PopupForm, InvoiceForm, MainForm,
  AssetForm, GlobalUnit, Functions;

{$R *.dfm}


procedure TTemplateDocFrm.FormCreate(Sender: TObject);
begin
  if prmUSEUPPERCASE then
  begin
    dxDBPopupEdit1.CharCase:=ecUpperCase;
  end;

  locFrm.BeginUpdate;
  SetOnFormCreate(Self);
  Self.Height:=Self.Height+(optFontSize-8)*23;
  Self.Width:=Self.Width+(optFontSize-8)*22;
  locFrm.EndUpdate;

  with MainDM do
  begin
    qryPAcc.Open;
    acLoadFilterCond.Execute;      
  end;
  qryShotCut.Open;
end;

procedure TTemplateDocFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  kq:Integer;
begin
  with MainDM do
  begin
    if qryTemplateList.State in [dsInsert,dsEdit] then
    begin
      kq:=ShowMessageUnicode(21,'', 3);
      case kq of
        6:
          qryTemplateList.Post;
        7:
          qryTemplateList.Cancel;
        2:
        begin
          Action := caNone;
          exit;
        end;
      end;
    end;
  end;
  FilterAccType:=-1;
end;

procedure TTemplateDocFrm.FormShow(Sender: TObject);
begin
  if isInsert then
    MainDM.qryTemplateList.Insert;
  SetVisible(Self);    
end;

procedure TTemplateDocFrm.BitBtn7Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Docs/LapPhieuTheoMau.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TTemplateDocFrm.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryTemplateList.Edit;
    Text := qryPWareWAREHOUSE_ID.Value;
    qryTemplateListWAREHOUSE_ID.Value:=qryPWareWAREHOUSE_ID.Value;
  end;
end;

procedure TTemplateDocFrm.dxDBPopupEdit4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TTemplateDocFrm.dxDBPopupEdit5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TTemplateDocFrm.dxDBPopupEdit6CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TTemplateDocFrm.dxDBExtLookupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  with MainDM do
  begin
    qryTemplateList.Edit;
    Text := qryShotCutSHOTCUT_NAME.Value;
    qryTemplateListSHOTCUT_ID.Value:= qryShotCutSHOTCUT_ID.Value;
  end;
end;

procedure TTemplateDocFrm.dxDBPopupEdit6InitPopup(Sender: TObject);
begin
  if FilterAccType<>12 then
  with MainDM do
  begin
    FilterAccType:=12;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
  end;
end;

procedure TTemplateDocFrm.dxDBPopupEdit5InitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord:=MainDM.qryPAccFilterBenCORecord;
  MainDM.qryPAcc.Filtered:=True;
end;

procedure TTemplateDocFrm.dxDBPopupEdit4Exit(Sender: TObject);
begin
  MainDM.KiemtraTKNO;
end;

procedure TTemplateDocFrm.dxDBPopupEdit5Exit(Sender: TObject);
begin
  MainDM.KiemtraTKCO;
end;

procedure TTemplateDocFrm.dxDBPopupEdit6Exit(Sender: TObject);
begin
  MainDM.KiemtraTKVAT;
end;

procedure TTemplateDocFrm.dxDBPopupEdit1Exit(Sender: TObject);
begin
  MainDM.KiemtraKhohang;
end;

procedure TTemplateDocFrm.dxDBPopupEdit4InitPopup(Sender: TObject);
begin
  MainDM.qryPAcc.OnFilterRecord:=MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered:=True;
end;

procedure TTemplateDocFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TTemplateDocFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := vpItemID;
end;

procedure TTemplateDocFrm.dxDBPopupEdit2Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=MainDM.qryTemplateListLOAINO.AsInteger;
end;

procedure TTemplateDocFrm.dxDBPopupEdit3Enter(Sender: TObject);
begin
  MainDM.CurObjTypeID:=MainDM.qryTemplateListLOAICO.AsInteger;
end;

end.
