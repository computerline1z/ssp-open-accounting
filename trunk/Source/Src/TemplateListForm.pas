unit TemplateListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, DB, ActnList, dxBar, Forms,
  TntButtons, ElXPThemedControl, ElBtnCtl, ElPopBtn, ElCaption;

type
  TTemplateListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    BitBtn1: TELPopupButton;
    locFormItem2: TdxLayoutItem;
    btnEdit: TELPopupButton;
    locFormItem3: TdxLayoutItem;
    BitBtn3: TELPopupButton;
    locFormItem4: TdxLayoutItem;
    btnIns: TELPopupButton;
    locFormItem5: TdxLayoutItem;
    btnDel: TELPopupButton;
    locFormItem6: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ActionList1: TActionList;
    acNewTemplate: TAction;
    acDelTemplate: TAction;
    acEditTemplate: TAction;
    btnNewDoc: TELPopupButton;
    locFormItem7: TdxLayoutItem;
    acNewDoc: TAction;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    bbtnIns: TdxBarButton;
    bbtnDel: TdxBarButton;
    bbtnEdit: TdxBarButton;
    bbtnLapphieu: TdxBarButton;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    ElFormCaption1: TElFormCaption;
    procedure FormCreate(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure acNewTemplateExecute(Sender: TObject);
    procedure acDelTemplateExecute(Sender: TObject);
    procedure acEditTemplateExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acNewDocExecute(Sender: TObject);
    procedure btnNewDocClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ImportOrGenerate:Smallint;//1: Import, 2: gen
    { Public declarations }
  end;

var
  TemplateListFrm: TTemplateListFrm;

implementation

uses GlobalInterface, MainDataMdl, GlobalUnit, 
  LookupFrm, TemplateDocForm, DocTempForm, HtmlHlp;


{$R *.dfm}

procedure TTemplateListFrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Sender as TControl);

  btnEdit.Enabled := SSPUserRight[20].ER;
  bbtnEdit.Enabled := btnEdit.Enabled;
  btnIns.Enabled := SSPUserRight[20].IR;
  bbtnIns.Enabled := btnIns.Enabled;
  acNewDoc.Enabled := btnIns.Enabled;
  btnDel.Enabled := SSPUserRight[20].DR;
  bbtnDel.Enabled := btnDel.Enabled;

  btnNewDoc.Enabled := SSPUserRight[21].IR;
  bbtnLapphieu.Enabled := btnNewDoc.Enabled;
  //Thinh them
  btnNewDoc.Enabled := (vpBranch_ismin = 1);
  acNewDoc.Enabled := (vpBranch_ismin = 1);
end;

procedure TTemplateListFrm.btnInsClick(Sender: TObject);
begin
  acNewTemplate.Execute;
end;

procedure TTemplateListFrm.btnEditClick(Sender: TObject);
begin
  acEditTemplate.Execute;
end;

procedure TTemplateListFrm.btnDelClick(Sender: TObject);
begin
  acDelTemplate.Execute;
end;

procedure TTemplateListFrm.dxDBGrid1DblClick(Sender: TObject);
begin
  acNewDoc.Execute;
  exit;
end;

procedure TTemplateListFrm.acNewTemplateExecute(Sender: TObject);
begin
  with TTemplateDocFrm.Create(Self) do
    try
      isInsert:=True;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TTemplateListFrm.acDelTemplateExecute(Sender: TObject);
begin
  if MainDM.qryTemplateList.RecordCount>0 then
    MainDM.qryTemplateList.Delete;
end;

procedure TTemplateListFrm.acEditTemplateExecute(Sender: TObject);
begin
  with TTemplateDocFrm.Create(Self) do
    try
      isInsert:=False;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TTemplateListFrm.BitBtn3Click(Sender: TObject);
begin
  Application.HelpContext(22);
end;

procedure TTemplateListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True,4);
end;

procedure TTemplateListFrm.acNewDocExecute(Sender: TObject);
begin
  with MainDM do
  begin
    if qryTemplateList.RecordCount=0 then exit;
    
    ReadTemplateInfo;
    CurTemp.SOPHIEUBD := '';
    CurTemp.KYHTBD    := 0;
  end;
  Self.Close;
  with TDocTempFrm.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTemplateListFrm.btnNewDocClick(Sender: TObject);
begin
  acNewDoc.Execute;
end;

procedure TTemplateListFrm.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TTemplateListFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

end.
