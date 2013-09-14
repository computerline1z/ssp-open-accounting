unit ReportInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,ShellAPI, ElCLabel, ElLabel,DB,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, ElCaption, dxLayoutLookAndFeels,
  dxLayoutControl, cxControls, dxCntner, dxEditor, dxEdLib, dxDBELib,
  dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ElCheckCtl,
  ElPanel, ElGroupBox, ElCheckItemGrp, DBCtrls;

type
  TReportInfoFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    mmSQL: TdxDBMemo;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBSpinEdit5: TdxDBSpinEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    ElLabel3: TElLabel;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxDBGrid1COLUMN_ID: TdxDBGridMaskColumn;
    dxDBGrid1COLUMN_CAPTION: TdxDBGridMaskColumn;
    dxDBGrid1COLUMN_WIDTH: TdxDBGridMaskColumn;
    dxDBGrid1COLUMN_FORMAT: TdxDBGridMaskColumn;
    dxDBGrid1COLUMN_GROUP: TdxDBGridCheckColumn;
    ElRadioButton1: TElRadioButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    ElRadioButton2: TElRadioButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    ElRadioButton3: TElRadioButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    ElRadioButton4: TElRadioButton;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    ElRadioButton5: TElRadioButton;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBSpinEdit6: TdxDBSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBSpinEdit7: TdxDBSpinEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxDBGrid1ENGLISH_CAPTION: TdxDBGridMaskColumn;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    rbGrpConditon: TElRadioGroup;
    dxLayoutControl1Item26: TdxLayoutItem;
    rbGrpReportType: TElRadioGroup;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    btnBanDau: TElPopupButton;
    dxLayoutControl1Item29: TdxLayoutItem;
    locSetdefault: TdxLayoutItem;
    btnSetDefault: TElPopupButton;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxDBEdit10: TdxDBEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    locBranch: TdxLayoutItem;
    edtBranch: TdxDBEdit;
    dxLayoutControl1Group14: TdxLayoutGroup;
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElRadioButton3Click(Sender: TObject);
    procedure ElRadioButton1Click(Sender: TObject);
    procedure ElRadioButton2Click(Sender: TObject);
    procedure ElRadioButton4Click(Sender: TObject);
    procedure ElRadioButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbGrpConditonClick(Sender: TObject);
    procedure rbGrpReportTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBanDauClick(Sender: TObject);
    procedure ElPopupButton3Click(Sender: TObject);
    procedure btnSetDefaultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportInfoFrm: TReportInfoFrm;

implementation

uses GlobalUnit, AnalysisFrm, dxTreeGridMenus, MainDataMdl, HtmlHlp;

{$R *.dfm}

procedure TReportInfoFrm.ElPopupButton1Click(Sender: TObject);
begin
  if AnalystFrm.qryListReport.State in [dsInsert, dsEdit] then
  begin
    if ShowMessageUnicode(35, '', 4) = 7 then
      AnalystFrm.qryListReport.Cancel
    else
      AnalystFrm.qryListReport.Post;
  end;
end;

procedure TReportInfoFrm.ElPopupButton2Click(Sender : TObject);
begin
  if AnalystFrm.qryListReport.State in [dsInsert, dsEdit] then
    AnalystFrm.qryListReport.Cancel;
end;

procedure TReportInfoFrm.ElRadioButton3Click(Sender : TObject);
begin
  mmSQL.DataField := 'SQLSELECT';
end;

procedure TReportInfoFrm.ElRadioButton1Click(Sender : TObject);
begin
  mmSQL.DataField := 'WHERESQLDETAIL';
end;

procedure TReportInfoFrm.ElRadioButton2Click(Sender : TObject);
begin
  mmSQL.DataField := 'SQLSUB_1';
end;

procedure TReportInfoFrm.ElRadioButton4Click(Sender: TObject);
begin
  mmSQL.DataField := 'SQLSUB_2';
end;

procedure TReportInfoFrm.ElRadioButton5Click(Sender: TObject);
begin
  mmSQL.DataField := 'SQLSUB_3';
end;

procedure TReportInfoFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/BaocaoKT.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key = VK_F11 then
    CallErrorForm(Self.Name);
  if Key = VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TReportInfoFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True, 5);
end;

procedure TReportInfoFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TReportInfoFrm.rbGrpConditonClick(Sender: TObject);
begin
  AnalystFrm.qryListReport.Edit;
  AnalystFrm.qryListReportCONDITIONTYPE.AsInteger := rbGrpConditon.ItemIndex;
end;

procedure TReportInfoFrm.rbGrpReportTypeClick(Sender : TObject);
begin
  AnalystFrm.qryListReport.Edit;
  AnalystFrm.qryListReportLOAIBAOCAO.AsInteger := rbGrpReportType.ItemIndex;
end;

procedure TReportInfoFrm.FormCreate(Sender: TObject);
begin

  dxLayoutControl1.BeginUpdate;
  SetOnFormCreate(Self);
  dxLayoutControl1.EndUpdate;

  if CurLanguage = 2 then
  begin
    rbGrpReportType.Items[0] := Utf8Decode('Finance');
    rbGrpReportType.Items[1] := Utf8Decode('Administratino');
    rbGrpReportType.Items[2] := Utf8Decode('Book');
    rbGrpReportType.Items[3] := Utf8Decode('Other');
  end
  else
  begin
    rbGrpReportType.Items[0] := Utf8Decode('Tài chính');
    rbGrpReportType.Items[1] := Utf8Decode('Quản trị');
    rbGrpReportType.Items[2] := Utf8Decode('Sổ sách');
    rbGrpReportType.Items[3] := Utf8Decode('Loại khác');
  end;


  //rbGrpReportType.Items[4] := Utf8Decode('Đặc thù');
  if CurLanguage = 2 then
  begin
    rbGrpConditon.Items[0]   := Utf8Decode('1 Year');
    rbGrpConditon.Items[1]   := Utf8Decode('1 Month');
    rbGrpConditon.Items[2]   := Utf8Decode('Month, Quarter');
    rbGrpConditon.Items[3]   := Utf8Decode('Day - Day');
    rbGrpConditon.Items[4]   := Utf8Decode('Date');
  end
  else
  begin
    rbGrpConditon.Items[0]   := Utf8Decode('Một năm');
    rbGrpConditon.Items[1]   := Utf8Decode('Một tháng');
    rbGrpConditon.Items[2]   := Utf8Decode('Tháng, Quý');
    rbGrpConditon.Items[3]   := Utf8Decode('Ngày - Ngày');
    rbGrpConditon.Items[4]   := Utf8Decode('Tại ngày');
  end;

  rbGrpConditon.ItemIndex   := AnalystFrm.qryListReportCONDITIONTYPE.AsInteger;
  rbGrpReportType.ItemIndex := AnalystFrm.qryListReportLOAIBAOCAO.AsInteger;

//  locNavigator.Visible := (CurrentUser = 'SSPAdmin');
end;

procedure TReportInfoFrm.dxDBGrid1Enter(Sender: TObject);
begin
  if AnalystFrm.qryListReport.State = dsinsert then
    AnalystFrm.qryListReport.Post;
end;

procedure TReportInfoFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
  if (CurrentUser = 'SSPAdmin') or (CurrentUser = 'UserAdmin') then
      locSetdefault.Visible := TRue
  else
      locSetdefault.Visible := False;
end;

procedure TReportInfoFrm.btnBanDauClick(Sender: TObject);
var i : integer;
begin
{
     QuynhND - Lam cach nay thi chi hien len dung row dau tien trong bang DEFAULT_SYSREPORT

     for i := 0 to self.ComponentCount - 1 do
     begin
       if self.Components[i] is TdxDBEdit then
         (Components[i] as TdxDBEdit).DataSource := AnalystFrm.dsListDefaultSysReport;
       if self.Components[i] is TdxDBSpinEdit then
         (Components[i] as TdxDBSpinEdit).DataSource := AnalystFrm.dsListDefaultSysReport;
       if self.Components[i] is TdxDBMemo then
         (Components[i] as TdxDBMemo).DataSource := AnalystFrm.dsListDefaultSysReport;
       if Self.Components[i] is TdxDBCheckEdit then
         (Components[i] as TdxDBCheckEdit).DataSource := AnalystFrm.dsListDefaultSysReport;
     end;

     if not AnalystFrm.qryListDefaultSysReport.Active then
       AnalystFrm.qryListDefaultSysReport.Open;

     AnalystFrm.qryListDefaultSysReport.Locate('REPORT_ID', AnalystFrm.qryListReportREPORT_ID.Value,[]);

     {
     if AnalystFrm.qryListDefaultSysReport.State in [dsInsert,dsEdit] then
     begin
        if ShowMessageUnicode(35,'',4) = 7 then
          AnalystFrm.qryListDefaultSysReport.Cancel
        else
          AnalystFrm.qryListDefaultSysReport.Post;
          ShowMessageUnicode(218);
     end; }
{    ShowMessageUnicode(218);

}
  //Thinh them

  if ( ShowMessageUnicode(227,'',4) <> 6 ) then
    exit;

  with AnalystFrm do
  begin
    qryListDefaultSysReport.ParamByName('USERNAME').Value  := CurrentUser;
    qryListDefaultSysReport.ParamByName('REPORT_ID').Value := qryListReportREPORT_ID.Value;
    qryListDefaultSysReport.ParamByName('BRANCH_ID').Value := vpBranch_id;
    qryListDefaultSysReport.Open;

    qryListReport.Edit;

    for i := 0 to qryListReport.FieldCount - 1 do
    begin
      if Not qryListDefaultSysReport.FieldByName(qryListReport.Fields[i].FieldName).IsNull then
        qryListReport.Fields[i].Value := qryListDefaultSysReport.FieldByName(qryListReport.Fields[i].FieldName).Value
      else
        qryListReport.Fields[i].Clear;
    end;

    qryListReport.Post;
    qryListDefaultSysReport.Close;
  end;
end;

procedure TReportInfoFrm.ElPopupButton3Click(Sender: TObject);
begin
  if HtmlHelp(Self.handle,'HDSDKT.chm::/BaocaoKT.htm',HH_DISPLAY_TOPIC,0)=0 then
    ShowMessageUnicode(182);
end;

procedure TReportInfoFrm.btnSetDefaultClick(Sender: TObject);
var i : integer;
begin
  if (ShowMessageUnicode(230,'',4) <> 6) then
    exit;
  with AnalystFrm do
  begin
    qryListDefaultSysReport.ParamByName('USERNAME').Value  := CurrentUser;
    qryListDefaultSysReport.ParamByName('REPORT_ID').Value := qryListReportREPORT_ID.Value;
    qryListDefaultSysReport.ParamByName('BRANCH_ID').Value := vpBranch_id;

    qryListDefaultSysReport.Open;

    qryListDefaultSysReport.edit;

    for i := 0 to qryListDefaultSysReport.FieldCount - 1 do
    begin
      if Not qryListReport.FieldByName(qryListDefaultSysReport.Fields[i].FieldName).IsNull then
        qryListDefaultSysReport.Fields[i].Value := qryListReport.FieldByName(qryListDefaultSysReport.Fields[i].FieldName).Value
      else
        qryListDefaultSysReport.Fields[i].Clear;
    end;
    qryListDefaultSysReport.Post;
    qryListDefaultSysReport.Close;
  end;
end;

end.
