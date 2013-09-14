unit DocTypeInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ActnList, DBActns, DB, Forms,
  dxLayoutControl, cxControls, Buttons, dxLayoutLookAndFeels, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClEx, IBODataset, dxBar, Menus,
  TntStdCtrls, TntButtons, ElXPThemedControl, ElEdits, ElCaption,
  ElCheckCtl, ElBtnCtl, ElPopBtn, ElPanel, ElGroupBox, ElCheckItemGrp;

type
  TDocTypeInfoFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    pedtTK: TdxDBPopupEdit;
    lciTK: TdxLayoutItem;
    dxDBPopupEdit2: TdxDBPopupEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    spnPTKH: TdxDBSpinEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    grdObjectType: TdxDBGrid;
    dxDBGridColumn15: TdxDBGridColumn;
    pedtOtherObjName: TdxDBPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    rbOneWare: TElRadioButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    rbNoWare: TElRadioButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    rbWareWork: TElRadioButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    rbTwoWare: TElRadioButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    rbGrpChedoLaplai: TElRadioGroup;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxDBEdit12: TdxDBEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxDBEdit13: TdxDBEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Group22: TdxLayoutGroup;
    dxDBEdit14: TdxDBEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    dxDBEdit15: TdxDBEdit;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    rgrpVitriKHR: TElRadioGroup;
    dxLayoutControl1Item36: TdxLayoutItem;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure pedtOtherObjNameCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdObjectTypeDblClick(Sender: TObject);
    procedure grdObjectTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure rbNoWareClick(Sender: TObject);
    procedure rbOneWareClick(Sender: TObject);
    procedure rbTwoWareClick(Sender: TObject);
    procedure rbWareWorkClick(Sender: TObject);
    procedure pedtOtherObjNameInitPopup(Sender: TObject);
    procedure rbGrpChedoLaplaiClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgrpVitriKHRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
  end;

var
  DocTypeInfoFrm: TDocTypeInfoFrm;

implementation

uses MainDataMdl, PopupForm, GlobalUnit, Functions, HtmlHlp;


{$R *.dfm}

procedure TDocTypeInfoFrm.FormCreate(Sender: TObject);
begin
//[NXHop sua]
  rgrpVitriKHR.Items[0]:=Utf8Decode('Ở trước');
  rgrpVitriKHR.Items[1]:=Utf8Decode('Ở sau');
  rbGrpChedoLaplai.Items[0]:=Utf8Decode('Đầu tháng');
  rbGrpChedoLaplai.Items[1]:=Utf8Decode('Đầu năm');
//
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self,0);
  dxLayoutControl1.EndUpdate;
  if CurLanguage=2 then
    dxDBEdit2.DataField:='ENGLISH_NAME';
  with MainDM do
  begin
    qryPAcc.Filtered := False;
    rbGrpChedoLaplai.ItemIndex:=qryDocTypeListCHEDOLAPLAI.AsInteger;
    rgrpVitriKHR.ItemIndex:=qryDocTypeListKYHIEUSAU.AsInteger;
    case qryDocTypeListWARE_FLAG.AsInteger of
      0:rbNoWare.Checked:=True;
      1:rbOneWare.Checked:=True;
      2:rbTwoWare.Checked:=True;
      3:rbWareWork.Checked:=True;
    end;
  end;
end;

procedure TDocTypeInfoFrm.BitBtn3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Phanloaichungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(10);
end;

procedure TDocTypeInfoFrm.pedtOtherObjNameCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  with MainDM do
  if Accept then
  begin
    qryDocTypeList.Edit;
    qryDocTypeListLOAIDT.AsInteger:= qryObjectTypeOTYPE_ID.AsInteger;
    qryDocTypeListOBJECT_CAP.Value:= qryObjectTypeSHORT_NAME.Value;
    Text:= qryObjectTypeOTYPE_NAME.Value;
  end;
end;

procedure TDocTypeInfoFrm.BitBtn1Click(Sender: TObject);
begin
  if MainDM.qryDocTypeList.State in [dsInsert,dsEdit] then
    MainDM.qryDocTypeList.Post;
  ModalResult:=mrOK;
end;

procedure TDocTypeInfoFrm.BitBtn2Click(Sender: TObject);
begin
  if MainDM.qryDocTypeList.State in [dsInsert,dsEdit] then
    MainDM.qryDocTypeList.Cancel;
  ModalResult:=mrCancel;
end;

procedure TDocTypeInfoFrm.grdObjectTypeDblClick(Sender: TObject);
begin
  (GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(True);
end;
procedure TDocTypeInfoFrm.grdObjectTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    (GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(True);
  if (Key = VK_ESCAPE) then
    (GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(False);
end;

procedure TDocTypeInfoFrm.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TDocTypeInfoFrm.rbNoWareClick(Sender: TObject);
begin
  MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeListWARE_FLAG.AsInteger:=0;
end;

procedure TDocTypeInfoFrm.rbOneWareClick(Sender: TObject);
begin
  MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeListWARE_FLAG.AsInteger:=1;
end;

procedure TDocTypeInfoFrm.rbTwoWareClick(Sender: TObject);
begin
  MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeListWARE_FLAG.AsInteger:=2;
end;

procedure TDocTypeInfoFrm.rbWareWorkClick(Sender: TObject);
begin
  MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeListWARE_FLAG.AsInteger:=3;
end;

procedure TDocTypeInfoFrm.pedtOtherObjNameInitPopup(Sender: TObject);
begin
  if Not MainDM.qryObjectType.Active then
    MainDM.qryObjectType.Open;
end;

procedure TDocTypeInfoFrm.rbGrpChedoLaplaiClick(Sender: TObject);
begin
  MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeListCHEDOLAPLAI.AsInteger:=rbGrpChedoLaplai.ItemIndex;
end;

procedure TDocTypeInfoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/Phanloaichungtu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDocTypeInfoFrm.rgrpVitriKHRClick(Sender: TObject);
begin
  MainDM.qryDocTypeList.Edit;
  MainDM.qryDocTypeListKYHIEUSAU.AsInteger:=rgrpVitriKHR.ItemIndex;
end;

procedure TDocTypeInfoFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.

