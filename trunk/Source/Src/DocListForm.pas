unit DocListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, ExtCtrls, dxLayoutControl, Forms,
  dxCntner, dxTL, dxDBCtrl, dxDBTL, cxControls, dxDBTLCl, StdCtrls, Buttons,
  dxGrClms, dxDBGrid,dxTreeGridMenus, dxEdLib, dxDBELib, dxBar, ActnList,DB,
  TntButtons, ElXPThemedControl, ElEdits, ElCaption, ElBtnCtl, ElPopBtn;

type
  TDocListFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    btnIns: TELPopupButton;
    btnHelp: TELPopupButton;
    btnClose: TELPopupButton;
    lciIns: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    acExcel: TAction;
    acHTML: TAction;
    acXML: TAction;
    DlgSave: TSaveDialog;
    BitBtn1: TELPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BitBtn2: TELPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBGrid1DOC_ID: TdxDBGridMaskColumn;
    dxDBGrid1DOC_DATE: TdxDBGridDateColumn;
    dxDBGrid1DOC_PERSON: TdxDBGridMaskColumn;
    chkAutoHeight: TdxCheckEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBGrid1_KH: TdxDBGridColumn;
    colLoaiKhonghople: TdxDBGridColumn;
    dxDBGrid1DOC_NOTES: TdxDBGridColumn;
    dxDBGrid1DOC_TOTAL: TdxDBGridCalcColumn;
    ElFormCaption1: TElFormCaption;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1BRANCH_ID: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
    procedure acHTMLExecute(Sender: TObject);
    procedure acXMLExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkAutoHeightChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocListFrm: TDocListFrm;

implementation

uses MainForm, MainDataMdl, AssetForm, GlobalUnit, LookupFrm, HtmlHlp;

{$R *.dfm}

procedure TDocListFrm.FormCreate(Sender: TObject);
begin
  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  dxDBGrid1DOC_TOTAL.SummaryFooterFormat:=TIENTE_FORMAT;
  (MainDM.qryDocListAnyWhere.FieldByName('DOC_TOTAL') as TFloatField).DisplayFormat:=TIENTE_FORMAT;

  dxDBGrid1.FullExpand;
end;

procedure TDocListFrm.acExcelExecute(Sender: TObject);
begin
  ExportToExcel(dxDBGrid1);
end;

procedure TDocListFrm.acHTMLExecute(Sender: TObject);
begin
  ExportToHTML(dxDBGrid1);
end;

procedure TDocListFrm.acXMLExecute(Sender: TObject);
begin
  ExportToXML(dxDBGrid1);
end;

procedure TDocListFrm.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TDocListFrm.BitBtn1Click(Sender: TObject);
begin
  acExcel.Execute;
end;

procedure TDocListFrm.BitBtn2Click(Sender: TObject);
begin
  acHTML.Execute;
end;

procedure TDocListFrm.BitBtn3Click(Sender: TObject);
begin
  acXML.Execute;
end;

procedure TDocListFrm.btnInsClick(Sender: TObject);
var
  P:Pointer;
begin
  with MainDM do
  begin
    if qryDocListAnyWhere.RecordCount=0 then exit;

    qryBgDocList:=qryDocListAnyWhere;
    DocIDFieldName:='DOC_ID';
    PeriodFieldName:='PERIOD_ID';
    BranchIDFieldName:='BRANCH_ID';
    isPosted:=False;
    if qryDocListAnyWhere.RecordCount=1 then
      Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
                qryDocListAnyWhere.FieldByName('BRANCH_ID').Value)
    else
      Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
                qryDocListAnyWhere.FieldByName('BRANCH_ID').Value,True);

    if isPosted then
    begin
      Screen.Cursor:=crHourGlass;
      P:=qryDocListAnyWhere.GetBookmark;
      qryDocListAnyWhere.DisableControls;
      qryDocListAnyWhere.Close;
      qryDocListAnyWhere.Open;
      qryDocListAnyWhere.EnableControls;
      try
        qryDocListAnyWhere.GotoBookmark(P);
      except
        //
      end;
      (MainDM.qryDocListAnyWhere.FieldByName('DOC_TOTAL') as TFloatField).DisplayFormat:=TIENTE_FORMAT;
      Screen.Cursor:=crDefault;
    end;
  end;
end;

procedure TDocListFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  btnInsClick(Sender);
end;

procedure TDocListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_Return then
    btnInsClick(Sender)
  else
    ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TDocListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainDM.qryDocListAnyWhere.Close;
end;

procedure TDocListFrm.chkAutoHeightChange(Sender: TObject);
begin
  if chkAutoHeight.Checked then
    dxDBGrid1.OptionsView := dxDBGrid1.OptionsView + [edgoRowAutoHeight]
  else
    dxDBGrid1.OptionsView := dxDBGrid1.OptionsView - [edgoRowAutoHeight];
end;

procedure TDocListFrm.FormShow(Sender: TObject);
begin
  if MainDM.qryDocListAnyWhere.RecordCount<>1 then exit;
  btnInsClick(Sender);
  Self.Close;
  SetVisible(Self);

end;

procedure TDocListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TDocListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Phieukonghople.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TDocListFrm.btnHelpClick(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/Phieukonghople.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

end.
