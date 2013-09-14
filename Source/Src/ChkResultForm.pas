unit ChkResultForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, ElXPThemedControl, ElBtnCtl, ElPopBtn, ExtCtrls,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutLookAndFeels, ElCaption,
  dxBar, DB, dxmdaset, IBODataset;

type
  TChkResultFrm = class(TForm)
    bmReport: TdxBarManager;
    bbtnPreview: TdxBarButton;
    dxBarButton4: TdxBarButton;
    bbtnDesign: TdxBarButton;
    bbtnSeeDetail: TdxBarButton;
    bbtnDirectPrint: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    bbtnCompare1: TdxBarButton;
    bbtnCompare2: TdxBarButton;
    pmExport: TdxBarPopupMenu;
    ElFormCaption1: TElFormCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    grdChkResult: TdxDBGrid;
    Panel1: TPanel;
    ElPopupButton3: TElPopupButton;
    qryChkreport: TIBOQuery;
    memChkReport: TdxMemData;
    dsChkReport: TDataSource;
    grdChkResultRecId: TdxDBGridColumn;
    grdChkResultReportID: TdxDBGridMaskColumn;
    grdChkResultReportName: TdxDBGridMaskColumn;
    grdChkResultSQLSelect: TdxDBGridMaskColumn;
    grdChkResultSQLSub1: TdxDBGridMaskColumn;
    grdChkResultSQLSub2: TdxDBGridMaskColumn;
    grdChkResultSQLSub3: TdxDBGridMaskColumn;
    grdChkResultTemplatePath: TdxDBGridMaskColumn;
    grdChkResultNhom: TdxDBGridColumn;
    grdChkResultOrderF: TdxDBGridColumn;
    grdChkResultTemplateEng: TdxDBGridColumn;
   
    procedure FormCreate(Sender: TObject);
    procedure CheckReport;
    procedure Check1Report;
    procedure grdChkResultDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Report_id : Smallint;
  end;

var
  ChkResultFrm: TChkResultFrm;

implementation
uses dxTreeGridMenus, MainDataMdl, GlobalUnit , AnalysisFrm, ReportInfoForm;

{$R *.dfm}

procedure TChkResultFrm.Check1Report;
var i :Smallint;
    col: TdxDBTreeListColumn;
    f : TWideStringField;
begin

    Screen.Cursor:=crHourGlass;
    memChkReport.CreateFieldsFromDataSet(AnalystFrm.qryListReport);

   memChkReport.Open;
   AnalystFrm.qryListReport.First;

   AnalystFrm.qryListReport.locate('REPORT_ID',Report_id,[]);
   with AnalystFrm do
   begin
      memChkReport.Append;
      

      if (qryListreport.FieldByName('SQLSELECT').Value ='') or (qryListreport.FieldByName('SQLSELECT').isnull) then Next;


      memChkReport.FieldByName('REPORT_ID').Value := qryListreport.FieldByName('REPORT_ID').Value;
      memChkReport.FieldByName('REPORT_NAME').Value := qryListreport.FieldByName('REPORT_NAME').Value;
      memChkReport.FieldByName('FILETEMPLATE').Value := qryListreport.FieldByName('FILETEMPLATE').Value;
      memChkReport.FieldByName('ENGTEMPLATE').Value := qryListreport.FieldByName('ENGTEMPLATE').Value;
      memChkReport.FieldByName('ORDER_FIELD').Value := qryListreport.FieldByName('ORDER_FIELD').Value;
      memChkReport.FieldByName('TENNHOM').Value := qryListreport.FieldByName('TENNHOM').Value;

      //Kiem tra mau in
      if IsHasData(qryListReportENGTEMPLATE) then
        if not FileExists(TemplatePath + qryListReportENGTEMPLATE.AsString) then
            memChkReport.FieldByName('ENGTEMPLATE').Value := 'Error';

      if IsHasData(qryListReportFILETEMPLATE) then
        if not FileExists(TemplatePath + qryListReportFILETEMPLATE.AsString) then
            memChkReport.FieldByName('FILETEMPLATE').Value := 'Error';
      // het kiem tra mau in
      
          memChkReport.FieldByName('SQLSELECT').Value := '100%';
          qryChkreport.sql.Clear;
          qryChkreport.sql.Text := qryListreport.FieldByName('SQLSELECT').Value;
      try
          qryChkreport.prepare;
      except
          memChkReport.FieldByName('SQLSELECT').Value := 'Error';
      end;

          memChkReport.FieldByName('SQLSUB_1').Value := '100%';
          qryChkreport.close;
          qryChkreport.sql.Clear;

      if (trim(qryChkreport.sql.Text) <> '') and (not qryListreport.FieldByName('SQLSUB_1').IsNull) then
      begin
        qryChkreport.sql.Text := qryListreport.FieldByName('SQLSUB_1').Value;
        try
          qryChkreport.prepare;
        except
          memChkReport.FieldByName('SQLSUB_1').value := 'Error';
        end;
      end;


          memChkReport.FieldByName('SQLSUB_2').Value := '100%';
          qryChkreport.close;
          qryChkreport.sql.Clear;

      if (qryChkreport.sql.Text <> '') and (not qryListreport.FieldByName('SQLSUB_2').IsNull) then
      begin
        qryChkreport.sql.Text := qryListreport.FieldByName('SQLSUB_2').Value;
        try
          qryChkreport.prepare;
        except
          memChkReport.FieldByName('SQLSUB_2').Value := 'Error';
        end;
      end;


          memChkReport.FieldByName('SQLSUB_3').Value := '100%';
          qryChkreport.close;
          qryChkreport.sql.Clear;

      if (qryChkreport.sql.Text <> '') and (not qryListreport.FieldByName('SQLSUB_3').IsNull) then
      begin
        qryChkreport.sql.Text := qryListreport.FieldByName('SQLSUB_3').Value;
        try
          qryChkreport.prepare;
        except
          memChkReport.FieldByName('SQLSUB_3').Value :=  'Error';
        end;
      end;

    end;
      memChkReport.Post;

   memChkReport.DisableControls;
   grdChkResult.Refresh;
   memChkReport.EnableControls;
   Screen.Cursor:=crDefault;
end;

procedure TChkResultFrm.CheckReport;
var i :Smallint;
    col: TdxDBTreeListColumn;
    f : TWideStringField;
begin
   Screen.Cursor:=crHourGlass;
    memChkReport.CreateFieldsFromDataSet(AnalystFrm.qryListReport);

   memChkReport.Open;
   AnalystFrm.qryListReport.First;

   with AnalystFrm do
   while not AnalystFrm.qryListReport.Eof do
   begin


      if (qryListreport.FieldByName('SQLSELECT').Value ='') or (qryListreport.FieldByName('SQLSELECT').isnull) then Next;

      memChkReport.Append;
      memChkReport.FieldByName('REPORT_ID').Value := qryListreport.FieldByName('REPORT_ID').Value;
      memChkReport.FieldByName('REPORT_NAME').Value := qryListreport.FieldByName('REPORT_NAME').Value;
      memChkReport.FieldByName('FILETEMPLATE').Value := qryListreport.FieldByName('FILETEMPLATE').Value;
      memChkReport.FieldByName('ENGTEMPLATE').Value := qryListreport.FieldByName('ENGTEMPLATE').Value;
      memChkReport.FieldByName('ORDER_FIELD').Value := qryListreport.FieldByName('ORDER_FIELD').Value;
      memChkReport.FieldByName('TENNHOM').Value := qryListreport.FieldByName('TENNHOM').Value;

      //Kiem tra mau in
      if IsHasData(qryListReportENGTEMPLATE) then
        if not FileExists(TemplatePath + qryListReportENGTEMPLATE.AsString) then
            memChkReport.FieldByName('ENGTEMPLATE').Value := 'Error';

      if IsHasData(qryListReportFILETEMPLATE) then
        if not FileExists(TemplatePath + qryListReportFILETEMPLATE.AsString) then
            memChkReport.FieldByName('FILETEMPLATE').Value := 'Error';
      // het kiem tra mau in

          memChkReport.FieldByName('SQLSELECT').Value := '100%';
          qryChkreport.sql.Clear;
          qryChkreport.sql.Text := qryListreport.FieldByName('SQLSELECT').Value;
      try
          qryChkreport.prepare;
      except
          memChkReport.FieldByName('SQLSELECT').Value := 'Error';
      end;

          memChkReport.FieldByName('SQLSUB_1').Value := '100%';
          qryChkreport.close;
          qryChkreport.sql.Clear;

      if (trim(qryChkreport.sql.Text) <> '') and (not qryListreport.FieldByName('SQLSUB_1').IsNull) then
      begin
        qryChkreport.sql.Text := qryListreport.FieldByName('SQLSUB_1').Value;
        try
          qryChkreport.prepare;
        except
          memChkReport.FieldByName('SQLSUB_1').value := 'Error';
        end;
      end;

          memChkReport.FieldByName('SQLSUB_2').Value := '100%';
          qryChkreport.close;
          qryChkreport.sql.Clear;

      if (qryChkreport.sql.Text <> '') and (not qryListreport.FieldByName('SQLSUB_2').IsNull) then
      begin
        qryChkreport.sql.Text := qryListreport.FieldByName('SQLSUB_2').Value;
        try
          qryChkreport.prepare;
        except
          memChkReport.FieldByName('SQLSUB_2').Value := 'Error';
        end;
      end;

          memChkReport.FieldByName('SQLSUB_3').Value := '100%';
          qryChkreport.close;
          qryChkreport.sql.Clear;

      if (qryChkreport.sql.Text <> '') and (not qryListreport.FieldByName('SQLSUB_3').IsNull) then
      begin
        qryChkreport.sql.Text := qryListreport.FieldByName('SQLSUB_3').Value;
        try
          qryChkreport.prepare;
        except
          memChkReport.FieldByName('SQLSUB_3').Value :=  'Error';
        end;
      end;

      memChkReport.Post;
      qryListreport.Next;
   end;

   memChkReport.DisableControls;
   grdChkResult.Refresh;
   grdChkResult.OptionsView := grdChkResult.OptionsView + [edgoAutoWidth];
   memChkReport.EnableControls;
   Screen.Cursor:=crDefault;
end;

procedure TChkResultFrm.FormCreate(Sender: TObject);
begin

    Report_id := -1;
end;

procedure TChkResultFrm.grdChkResultDblClick(Sender: TObject);
begin
      if pub_checking_report then
          AnalystFrm.qryListReport.Locate('REPORT_ID',memChkReport.fieldbyname('REPORT_ID').value,[]);
      with TReportInfoFrm.Create(Self) do
      try
          ShowModal;
      finally
          Free;
  end;
end;

procedure TChkResultFrm.FormShow(Sender: TObject);
begin
  if (Report_id <> -1) and (pub_checking_report) then
      Check1Report
  else if pub_checking_report then
      CheckReport;

end;

end.
