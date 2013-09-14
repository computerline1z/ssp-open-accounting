unit CaptionListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,HtmlHlp,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClms,
  ElCaption, XLSReadWriteII, ElXPThemedControl, ElBtnCtl, ElPopBtn, ImgList,
  ElCheckCtl, DB, IBODataset;

type
  TCaptionListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    OpenDialog1: TOpenDialog;
    dxDBGrid1CONTROL_NAME: TdxDBGridMaskColumn;
    dxDBGrid1CAPTION_ENG: TdxDBGridMaskColumn;
    btnReFresh: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    btnDelete: TElPopupButton;
    locDel: TdxLayoutItem;
    btnApply: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    qryCap: TIBOQuery;
    qryCapFORM_NAME: TWideStringField;
    qryCapCONTROL_NAME: TWideStringField;
    dsCap: TDataSource;
    qryCapCAPTION_VISIBLE: TSmallintField;
    dxDBGrid1CAPTION_VISIBLE: TdxDBGridCheckColumn;
    dxDBGrid1CAPTION_DEF: TdxDBGridColumn;
    qryCapCAPTION_VN: TWideStringField;
    qryCapCAPTION_ENG: TWideStringField;
    qryCapCAPTION_DEF: TWideStringField;
    dxDBGrid1CAPTION_VN: TdxDBGridMaskColumn;
    dxDBGrid1FORM_NAME: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnReFreshClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure qryCapAfterDelete(DataSet: TDataSet);
    procedure qryCapAfterPost(DataSet: TDataSet);
    procedure qryCapBeforeDelete(DataSet: TDataSet);
    procedure qryCapBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    CurForm : TControl;
    { Public declarations }
  end;

var
  CaptionListFrm: TCaptionListFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, LookupFrm,
  SheetData, dxTreeGridMenus;


{$R *.dfm}

procedure TCaptionListFrm.FormCreate(Sender: TObject);
begin
  dxDBGrid1CAPTION_VISIBLE.Visible:=(CurrentUser='SSPAdmin');
  dxDBGrid1CAPTION_VISIBLE.Visible:=False;
  SetCaption(Self);
  qryCap.Tag:=0;
  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
  
end;

procedure TCaptionListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TCaptionListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TCaptionListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryCap.State = dsEdit then
    qryCap.Post;

  qryCap.Close;

  if qryCap.Tag=1 then
    SetCaption(CurForm);
end;

procedure TCaptionListFrm.FormShow(Sender: TObject);
begin
  qryCap.Close;
  qryCap.ParamByName('FORM_NAME').Value:=CurForm.Name;
  qryCap.Open;           
  SetVisible(Self);
  locDel.Visible:=(CurrentUser='SSPAdmin');
  btnReFresh.Enabled:=(CurLanguage=0);
  dxDBGrid1CAPTION_DEF.Visible := (CurrentUser='SSPAdmin');
end;

procedure TCaptionListFrm.btnReFreshClick(Sender: TObject);
begin
  LoadCaption(CurForm);
  qryCap.Refresh;
end;

procedure TCaptionListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/dinhnghiangonngu.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
  if Self.Name='CaptionListFrm' then
    LoadCaptionFormInfo(Self);
end;

procedure TCaptionListFrm.btnDeleteClick(Sender: TObject);
begin
  if qryCap.RecordCount>0 then
    qryCap.Delete;
end;

procedure TCaptionListFrm.btnApplyClick(Sender: TObject);
begin
  SetCaption(CurForm);
end;

procedure TCaptionListFrm.ElPopupButton2Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/dinhnghiangonngu.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TCaptionListFrm.qryCapAfterDelete(DataSet: TDataSet);
begin
  qryCap.Tag:=1;
end;

procedure TCaptionListFrm.qryCapAfterPost(DataSet: TDataSet);
begin
  qryCap.Tag:=1;
end;

procedure TCaptionListFrm.qryCapBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,6) then Abort;
end;

procedure TCaptionListFrm.qryCapBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(6) then Abort;
end;

end.
