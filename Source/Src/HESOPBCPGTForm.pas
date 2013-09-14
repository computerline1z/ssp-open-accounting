unit HESOPBCPGTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB,
  IBODataset, dxGrClEx, DBActns, ActnList, dxBar, Forms, 
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  THESOPBCPGTFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    locFormGroup1: TdxLayoutGroup;
    btnCancel: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnPost: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    btnClose: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    BitBtn4: TELPopupButton;
    locFormItem8: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    btnDel: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    grdKH: TdxDBGrid;
    lociKH: TdxLayoutItem;
    ActionList1: TActionList;
    acIns: TDataSetInsert;
    acDel: TDataSetDelete;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    ElFormCaption1: TElFormCaption;
    qryHESO: TIBOQuery;
    dsHESO: TDataSource;
    qryHESOPERIOD_ID: TSmallintField;
    qryHESOMAPX: TWideStringField;
    qryHESOMALOAI: TSmallintField;
    qryHESOSHTK: TWideStringField;
    qryHESOHESOPB: TIBOFloatField;
    qryHESOOBJECT_NAME: TWideStringField;
    grdKHOBJECT_NAME: TdxDBGridMaskColumn;
    grdKHMAPX: TdxDBGridPopupColumn;
    grdKHSHTK: TdxDBGridPopupColumn;
    grdKHHESOPB: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grdKHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryHESOAfterInsert(DataSet: TDataSet);
    procedure qryHESOBeforeDelete(DataSet: TDataSet);
    procedure qryHESOBeforeEdit(DataSet: TDataSet);
    procedure qryHESOBeforeInsert(DataSet: TDataSet);
    procedure qryHESONewRecord(DataSet: TDataSet);
    procedure qryHESOPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure grdKHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdKHSHTKCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryHESOMAPXChange(Sender: TField);
    procedure grdKHMAPXCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryHESOBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HESOPBCPGTFrm: THESOPBCPGTFrm;

implementation

uses GlobalInterface, MainDataMdl, PopupForm, GlobalUnit, LookupFrm,
  Functions, dxTreeGridMenus, HtmlHlp;


{$R *.dfm}

procedure THESOPBCPGTFrm.FormCreate(Sender: TObject);
begin
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;

  with MainDM do
  begin
    FilterAccType:=18;
    qryPAcc.OnFilterRecord := qryPAccFilterRecord;
    qryPAcc.Filtered := True;
    qryPAcc.Open;

    CurObjTypeID:=6;
  end;
  qryHESOHESOPB.DisplayFormat:=CACHESO_FORMAT;
  
  qryHESO.ParamByName('PERIOD_ID').AsInteger:=CurrentPeriod;
  qryHESO.Open;

  if SSPUserRight[5].IR=False then
    acIns.DataSource := MainDM.dsBanana;
  if SSPUserRight[5].DR=False then
    acDel.DataSource := MainDM.dsBanana;
end;
procedure THESOPBCPGTFrm.BitBtn4Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Thaotacthuongdung.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
//  Application.HelpContext(12);
end;

procedure THESOPBCPGTFrm.grdKHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(grdKH, Key, Shift, True,3);
end;

procedure THESOPBCPGTFrm.qryHESOAfterInsert(DataSet: TDataSet);
begin
  qryHESOMAPX.FocusControl;
end;

procedure THESOPBCPGTFrm.qryHESOBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,5) then Abort;
end;

procedure THESOPBCPGTFrm.qryHESOBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(5) then Abort;
end;

procedure THESOPBCPGTFrm.qryHESOBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(5) then Abort;
end;

procedure THESOPBCPGTFrm.qryHESONewRecord(DataSet: TDataSet);
begin
  qryHESOPERIOD_ID.Value := CurrentPeriod;
  qryHESOMALOAI.AsInteger := 6;
end;

procedure THESOPBCPGTFrm.qryHESOPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var
  rs:Integer;
begin
  Action := daAbort;
  ErrImportMsg:=e.Message;
  if ImportingFromXLS then Exit;
  
  rs := ProcessErr(E,'',0);
  if rs=-803 then
  begin
    ShowMessageUnicode(166,e.Message,0);
    qryHESOMAPX.FocusControl;
    exit;
  end;
  if rs=-530 then
  begin
    ShowMessageUnicode(167,e.Message,0);
    qryHESOMAPX.FocusControl;
  end;
end;

procedure THESOPBCPGTFrm.grdKHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure THESOPBCPGTFrm.grdKHSHTKCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text :=MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure THESOPBCPGTFrm.qryHESOMAPXChange(Sender: TField);
begin
  if MainDM.CheckObject(qryHESOMAPX.Value,6) then
  begin
    if qryHESOMAPX.Value<>MainDM.CurObjID then
      qryHESOMAPX.Value:=MainDM.CurObjID;
      
    qryHESOOBJECT_NAME.Value:=MainDM.CurObjName;
  end;
end;

procedure THESOPBCPGTFrm.grdKHMAPXCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text :=vpItemID;
end;

procedure THESOPBCPGTFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure THESOPBCPGTFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure THESOPBCPGTFrm.qryHESOBeforePost(DataSet: TDataSet);
begin
  if Not MainDM.CheckRequireField(DataSet) then
    Abort;
end;

end.
