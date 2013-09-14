unit ReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls, Forms,
  Buttons, dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, dxBar,
  dxGrClEx, ElCaption, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  XLSReadWriteII;

type
  TReportFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ElFormCaption1: TElFormCaption;
    locFormItem1: TdxLayoutItem;
    grdReport: TdxDBGrid;
    locFormItem4: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    locFormItem7: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    locFormGroup1: TdxLayoutGroup;
    pmExport: TdxBarPopupMenu;
    bmReport: TdxBarManager;
    bbtnPreview: TdxBarButton;
    dxBarButton4: TdxBarButton;
    bbtnDesign: TdxBarButton;
    bbtnSeeDetail: TdxBarButton;
    bbtnDirectPrint: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    btnSeeDetail: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    bbtnCompare1: TdxBarButton;
    bbtnCompare2: TdxBarButton;
    XLSReadWriteII1: TXLSReadWriteII;
    procedure FormCreate(Sender: TObject);
    procedure LoadDataReport;
    procedure ReLoadDataReport;
    procedure NODKDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure CODKDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure NOPSDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure COPSDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure NOCKDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure COCKDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    
    procedure grdReportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure grdReportMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnSeeDetailClick(Sender: TObject);
    procedure grdReportDblClick(Sender: TObject);
    procedure bbtnPreviewClick(Sender: TObject);
    procedure bbtnDirectPrintClick(Sender: TObject);
    procedure bbtnDesignClick(Sender: TObject);
    procedure bbtnSeeDetailClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bbtnCompare1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportFrm: TReportFrm;

implementation

uses GlobalInterface, MainDataMdl, IBODataset, GlobalUnit,
  DocListForm, LookupFrm, dxTreeGridMenus, AnalysisFrm, DateUtils,
  ActnList, HtmlHlp;


{$R *.dfm}

procedure TReportFrm.FormCreate(Sender: TObject);
begin
  SetCaption(Self);

  locForm.BeginUpdate;
  SetOnFormCreate(Self);
  locForm.EndUpdate;
    
  if CurLanguage=2 then
    ElFormCaption1.Texts[0].Caption:=AnalystFrm.qryListReportENGLISH_NAME.Value+' - '+AnalystFrm.GetCaptionConditionTime
  else
    ElFormCaption1.Texts[0].Caption:=AnalystFrm.qryListReportREPORT_NAME.Value+' - '+AnalystFrm.GetCaptionConditionTime;

  if AnalystFrm.wStrOtherCondition<>'' then
    ElFormCaption1.Texts[0].Caption:=ElFormCaption1.Texts[0].Caption+' ('+AnalystFrm.wStrOtherCondition+')';

  LoadDataReport;

  btnSeeDetail.Enabled:=(AnalystFrm.WhereSQLDetail<>'') or ((AnalystFrm.qryListReportDOCID_FN.AsString<>'') and (AnalystFrm.qryListReportPERIOD_FN.AsString<>''));
  bbtnSeeDetail.Enabled:=btnSeeDetail.Enabled;
end;

procedure TReportFrm.LoadDataReport;
var i: integer;
  col: TdxDBTreeListColumn;
  SumItem: TdxDBGridSummaryItem;
  iTotalWidth: integer;

  TemplateFile:WideString;
  ColCount,temp,kc:Smallint;
begin
  with AnalystFrm do
  begin
    TemplateFile := qryListReport.fieldByName('FILETEMPLATE').AsString;
    if FID=75 then
      ColCount:=spnSoDoan.IntValue+4
    else if FID=76 then
      ColCount:=spnSoDoan.IntValue+5
    else
      ColCount := qryListReport.fieldByName('COLUMNCOUNT').AsInteger;

    while grdReport.GroupColumnCount>0 do
      grdReport.DeleteGroupColumn(0);
    while grdReport.SummaryGroups[0].SummaryItems.Count>1 do
      grdReport.SummaryGroups[0].SummaryItems.Delete(grdReport.SummaryGroups[0].SummaryItems.Count-1);

    grdReport.DestroyColumns;
    grdReport.Refresh;

    iTotalWidth := 0;

    if ColCount>qryListReport.FieldCount then
      ColCount:=qryListReport.FieldCount;
    for i := 0 to ColCount-1 do
    if qryReportCaption.Locate('COLUMN_ID',i,[]) then
    begin
      if ((qryReportCaptionCOLUMN_FORMAT.AsString='NT') or (qryReportCaptionCOLUMN_FORMAT.AsString='NG')) then
        col:=grdReport.CreateColumn(TdxDBGridDateColumn)
      else
        if ((qryReportCaptionCOLUMN_FORMAT.AsString='TT') or (qryReportCaptionCOLUMN_FORMAT.AsString='SL')
          or (qryReportCaptionCOLUMN_FORMAT.AsString='NgTe') or (qryReportCaptionCOLUMN_FORMAT.AsString='HS')) then
          col:=grdReport.CreateColumn(TdxDBGridCalcColumn)
        else
          col:=grdReport.CreateColumn(TdxDBGridColumn);
      if i=0 then
      BEGIN
        grdReport.SummaryGroups[0].SummaryItems[0].ColumnName:=col.Name;
        grdReport.SummaryGroups[0].SummaryItems[0].SummaryField:=MainDM.qryReport.Fields[i].FieldName;
        col.SummaryFooterFormat := '#,0;-#,0';
        col.SummaryFooterType := cstCount;
      END;

      if qryReportCaptionCOLUMN_FORMAT.AsString='TT' then
      BEGIN
        try
          (MainDM.qryReport.Fields[i] as TFloatField).DisplayFormat := TIENTE_FORMAT;
        except
          ShowMessageUnicode(212);
          //Exit;
        end;
        if ((FID<>23) and (FID<>28) and (FID<>3) and (FID<>4)) then
        begin
          col.SummaryFooterFormat := TIENTE_FORMAT;
          col.SummaryFooterType := cstSum;

          SumItem:=grdReport.SummaryGroups[0].SummaryItems.Add;
          SumItem.ColumnName:=col.Name;
          SumItem.SummaryFormat:=TIENTE_FORMAT;
          SumItem.SummaryField:=MainDM.qryReport.Fields[i].FieldName;
          SumItem.SummaryType:=cstSum;
        end;
      END;
      if qryReportCaptionCOLUMN_FORMAT.AsString='SL' then
      begin
        try
          (MainDM.qryReport.Fields[i] as TIBOFloatField).DisplayFormat := SOLUONG_FORMAT;
        except
          ShowMessageUnicode(212);
          //Exit;
        end;
        col.SummaryFooterFormat := SOLUONG_FORMAT;
        col.SummaryFooterType := cstSum;

          SumItem:=grdReport.SummaryGroups[0].SummaryItems.Add;
          SumItem.ColumnName:=col.Name;
          SumItem.SummaryFormat:=SOLUONG_FORMAT;
          SumItem.SummaryField:=MainDM.qryReport.Fields[i].FieldName;
          SumItem.SummaryType:=cstSum;
      end;
      if qryReportCaptionCOLUMN_FORMAT.AsString='NgTe' then
      begin
        try
          (MainDM.qryReport.Fields[i] as TIBOFloatField).DisplayFormat := NGOAITE_FORMAT;
        except
          ShowMessageUnicode(212);
          //Exit;
        end;
        col.SummaryFooterFormat := NGOAITE_FORMAT;
        col.SummaryFooterType := cstSum;

          SumItem:=grdReport.SummaryGroups[0].SummaryItems.Add;
          SumItem.ColumnName:=col.Name;
          SumItem.SummaryFormat:=NGOAITE_FORMAT;
          SumItem.SummaryField:=MainDM.qryReport.Fields[i].FieldName;
          SumItem.SummaryType:=cstSum;
      end;

      if qryReportCaptionCOLUMN_FORMAT.AsString='HS' then
      try
        (MainDM.qryReport.Fields[i] as TIBOFloatField).DisplayFormat := CACHESO_FORMAT;
      except
        ShowMessageUnicode(212);
        //Exit;
      end;
      if qryReportCaptionCOLUMN_FORMAT.AsString='NT' then
      try
        (MainDM.qryReport.Fields[i] as TDateField).DisplayFormat := NGAYTHANG_FORMAT;
      except
        ShowMessageUnicode(212);
        //Exit;
      end;
      if qryReportCaptionCOLUMN_FORMAT.AsString='NG' then
      try
        (MainDM.qryReport.Fields[i] as TDateTimeField).DisplayFormat := NGAYTHANG_FORMAT + ' hh:mm';
      except
        ShowMessageUnicode(212);
        //Exit;
      end;

      col.Width :=  qryReportCaptionCOLUMN_WIDTH.AsInteger;
      temp:=spnTuoinoNN.IntValue;
      kc:=spnKhoangCach.IntValue;
      if ((FID=75) and (i>3)) then
      begin
        if i=4 then //Cot dau tien
          col.Caption := '< '+ IntToStr(temp)+UTF8Decode(' ngày')
        else if i=3+spnSoDoan.IntValue then //Cot cuoi cung
          col.Caption := '>= '+ IntToStr(temp+kc*(i-5))+UTF8Decode(' ngày')
        else
          col.Caption :=IntToStr(temp+kc*(i-5))+'->'+IntToStr(temp+kc*(i-4)-1)+UTF8Decode(' ngày');
      end
      else if ((FID=76) and (i>4)) then
      begin
        if i=5 then //Cot dau tien
          col.Caption := '< '+ IntToStr(temp)+UTF8Decode(' ngày')
        else if i=4+spnSoDoan.IntValue then //Cot cuoi cung
          col.Caption := '>= '+ IntToStr(temp+kc*(i-6))+UTF8Decode(' ngày')
        else
          col.Caption :=IntToStr(temp+kc*(i-6))+'->'+IntToStr(temp+kc*(i-5)-1)+UTF8Decode(' ngày');
      end
      else
      begin
        if CurLanguage=2 then
          col.Caption := qryReportCaptionENGLISH_CAPTION.Value
        else
          col.Caption := qryReportCaptionCOLUMN_CAPTION.Value;
      end;
      col.FieldName := MainDM.qryReport.Fields[i].FieldName;
      col.HeaderAlignment:=taCenter;
      if qryReportCaptionCOLUMN_GROUP.AsInteger = 1 then
        grdReport.AddGroupColumn(col)
      else
        iTotalWidth := iTotalWidth + col.Width;
    end;

    grdReport.Filter.Active:=False;
    if qryListReportALLOW_SORT.AsInteger=1 then
      grdReport.OptionsBehavior := grdReport.OptionsBehavior + [edgoAutoSort]
    else
      grdReport.OptionsBehavior := grdReport.OptionsBehavior - [edgoAutoSort];

    if iTotalWidth < (grdReport.Width + 100) then
      grdReport.OptionsView := grdReport.OptionsView + [edgoAutoWidth]
    else
      grdReport.OptionsView := grdReport.OptionsView - [edgoAutoWidth];
    grdReport.KeyField := szKeyField;
    MainDM.qryHSCT.Open;
    rptReport.Template.FileName := TemplatePath + TemplateFile;

    if (FID=22)then
      for i:=1 to grdReport.ColumnCount-2 do
        grdReport.Columns[i].Visible:=(grdReport.Columns[i].SummaryFooterValue<>0);

    grdReport.FullExpand;
  end;
end;

procedure TReportFrm.ReLoadDataReport;
var
  ColCount,i:Smallint;
begin
  with AnalystFrm do
  begin
    ColCount := qryListReport.fieldByName('COLUMNCOUNT').AsInteger;

    for i := 0 to ColCount-1 do
    begin
      qryReportCaption.Locate('COLUMN_ID',i,[]);

      if qryReportCaptionCOLUMN_FORMAT.AsString='TT' then
        (MainDM.qryReport.Fields[i] as TFloatField).DisplayFormat := TIENTE_FORMAT;
      if qryReportCaptionCOLUMN_FORMAT.AsString='SL' then
        (MainDM.qryReport.Fields[i] as TIBOFloatField).DisplayFormat := SOLUONG_FORMAT;
      if qryReportCaptionCOLUMN_FORMAT.AsString='NgTe' then
        (MainDM.qryReport.Fields[i] as TIBOFloatField).DisplayFormat := NGOAITE_FORMAT;
      if qryReportCaptionCOLUMN_FORMAT.AsString='HS' then
        (MainDM.qryReport.Fields[i] as TIBOFloatField).DisplayFormat := CACHESO_FORMAT;

      if qryReportCaptionCOLUMN_FORMAT.AsString='NT' then
        (MainDM.qryReport.Fields[i] as TDateField).DisplayFormat := NGAYTHANG_FORMAT;
      if qryReportCaptionCOLUMN_FORMAT.AsString='NG' then
        (MainDM.qryReport.Fields[i] as TDateTimeField).DisplayFormat := NGAYTHANG_FORMAT + ' hh:mm';
    end;
  end;
end;

procedure TReportFrm.NODKDrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; var AText: WideString;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  AText := FormatFloat(TIENTE_FORMAT,AnalystFrm.NODK);
end;
procedure TReportFrm.CODKDrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; var AText: WideString;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  AText := FormatFloat(TIENTE_FORMAT,AnalystFrm.CODK);
end;
procedure TReportFrm.NOPSDrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; var AText: WideString;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  AText := FormatFloat(TIENTE_FORMAT,AnalystFrm.NOPS);
end;
procedure TReportFrm.COPSDrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; var AText: WideString;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  AText := FormatFloat(TIENTE_FORMAT,AnalystFrm.COPS);
end;
procedure TReportFrm.NOCKDrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; var AText: WideString;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  AText := FormatFloat(TIENTE_FORMAT,AnalystFrm.NOCK);
end;
procedure TReportFrm.COCKDrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; var AText: WideString;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  AText := FormatFloat(TIENTE_FORMAT,AnalystFrm.COCK);
end;

procedure TReportFrm.grdReportKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnSeeDetailClick(Sender)
  else
    ProcessKeyDownInGrid(grdReport, Key, Shift, False);
end;

procedure TReportFrm.dxBarButton9Click(Sender: TObject);
begin
  grdReport.FullExpand;
end;

procedure TReportFrm.dxBarButton10Click(Sender: TObject);
begin
  grdReport.FullCollapse;
end;

procedure TReportFrm.grdReportMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;

  if (AnalystFrm.qryListReportREPORT_ID.AsInteger=400) then
    bbtnCompare1.Visible:=ivAlways
  else
    bbtnCompare1.Visible:=ivNever;
  if (AnalystFrm.qryListReportREPORT_ID.AsInteger=401) then
    bbtnCompare2.Visible:=ivAlways
  else
    bbtnCompare2.Visible:=ivNever;

  pmExport.PopupFromCursorPos;
end;

procedure TReportFrm.ElPopupButton1Click(Sender: TObject);
begin
  ExportToExcel(grdReport);
end;

procedure TReportFrm.dxBarButton4Click(Sender: TObject);
begin
  ExportToExcel(grdReport);
end;

procedure TReportFrm.btnSeeDetailClick(Sender: TObject);
var
  i : Smallint;
  tenthamso:String;
  P:Pointer;
  branchcol :TdxDBTreeListColumn ;
begin
  DocIDFieldName:= AnalystFrm.qryListReportDOCID_FN.AsString;
  PeriodFieldName:= AnalystFrm.qryListReportPERIOD_FN.AsString;
  BranchIDFieldName := AnalystFrm.qryListReportBRANCH_FN.Value;

  if ((DocIDFieldName<>'') and (PeriodFieldName<>'') and (BranchIDFieldName<>'')) then
  with MainDM do
  begin
    qryBgDocList:=qryReport;
    try
      if Not qryReport.FieldByName(DocIDFieldName).IsNull and Not qryReport.FieldByName(PeriodFieldName).IsNull and not
              qryReport.FieldByName(BranchIDFieldName).IsNull then
      begin
        if qryReport.RecordCount=1 then
          Suachungtu(qryReport.FieldByName(DocIDFieldName).Value, qryReport.FieldByName(PeriodFieldName).Value,
                    qryReport.FieldByName(BranchIDFieldName).Value)
        else
          Suachungtu(qryReport.FieldByName(DocIDFieldName).Value, qryReport.FieldByName(PeriodFieldName).Value,
                    qryReport.FieldByName(BranchIDFieldName).Value,True);
      end;
    except
      ShowMessageUnicode(213);
      Exit;
    end;

      if IsPosted then
      begin
        P:=MainDM.qryReport.GetBookmark;
//[NXHop sua]
//      MainDM.qryReport.DisableControls;
        MainDM.qryReport.Close;
        MainDM.qryReport.Open;
        grdReport.FullExpand;
//[NXHop sua]
//      MainDM.qryReport.EnableControls;
        try
          MainDM.qryReport.GotoBookmark(P);
        except
          //
        end;
        ReLoadDataReport;
      end;

    Exit;
  end;

  if AnalystFrm.WhereSQLDetail='' then exit;
  with MainDM do
  begin
    qryDocListAnyWhere.Close;
    qryDocListAnyWhere.SQL.Clear;
    qryDocListAnyWhere.Params.Clear;
    qryDocListAnyWhere.SQL.Text := AnalystFrm.WhereSQLDetail;
    try
      qryDocListAnyWhere.Prepare;
    except
      ShowMessageUnicode(213);
      Exit;
    end;
    Screen.Cursor:=crHourGlass;
    if AnalystFrm.FID=22 then
    begin
      if grdReport.FocusedField.FieldName='SHTK' then
      begin
        Screen.Cursor:=crDefault;
        exit;
      end;
    //??? de lam gi day
      qryDocListAnyWhere.ParamByName('TUNGAY').AsDate := AnalystFrm.pmFromDate;
      qryDocListAnyWhere.ParamByName('DENNGAY').AsDate := AnalystFrm.pmToDate;
      qryDocListAnyWhere.ParamByName('TKNO').Value :=MainDM.qryReport.FieldByName('SHTK').Value;
      qryDocListAnyWhere.ParamByName('TKCO').Value := Copy(grdReport.FocusedField.FieldName,5,3);
      qryDocListAnyWhere.ParamByName('BRANCH_ID').Value := MainDM.qryReport.FieldByName('BRANCH_ID').Value;//vpBranch_id;
    end
    else
    for i:=0 to qryDocListAnyWhere.ParamCount-1 do
    begin
      tenthamso:=qryDocListAnyWhere.Params[i].Name;
      tenthamso:=LowerCase(tenthamso);
      if tenthamso='username' then
        qryDocListAnyWhere.ParamByName(tenthamso).Value:= CurrentUser
      else if tenthamso='ngaydn' then
        qryDocListAnyWhere.ParamByName(tenthamso).AsDate:= StartOfTheYear(AnalystFrm.pmFromDate)
      else if tenthamso='ngaycn' then
        qryDocListAnyWhere.ParamByName(tenthamso).AsDate:= EndOfTheYear(AnalystFrm.pmToDate)
      else if tenthamso='tungay' then
        qryDocListAnyWhere.ParamByName(tenthamso).AsDate:= AnalystFrm.pmFromDate
      else if tenthamso='denngay' then
        qryDocListAnyWhere.ParamByName(tenthamso).AsDate:= AnalystFrm.pmToDate
      else if tenthamso='tuky' then
        qryDocListAnyWhere.ParamByName(tenthamso).Value:= AnalystFrm.pmFromMonth
      else if tenthamso='denky' then
        qryDocListAnyWhere.ParamByName(tenthamso).Value:= AnalystFrm.pmToMonth
      else if (tenthamso='branch_id') or (tenthamso='branch') then
        begin
          branchcol := grdReport.FindColumnByFieldName(tenthamso);
          if branchcol = nil then
          //grdReport.DataSource.DataSet.FieldByName(tenthamso).IsNull then
            qryDocListAnyWhere.ParamByName(tenthamso).Value:= MainDM.qryBranchBRANCH_ID.Value
          else
            qryDocListAnyWhere.ParamByName(tenthamso).Value := grdReport.DataSource.DataSet.FieldByName(tenthamso).Value
        end
      else
        qryDocListAnyWhere.ParamByName(tenthamso).Value :=grdReport.DataSource.DataSet.FieldByName(tenthamso).Value ;//MainDM.qryReport.FieldByName(tenthamso).Value;
    end;

    qryDocListAnyWhere.Open;
    if qryDocListAnyWhere.RecordCount=0 then
    begin
      qryDocListAnyWhere.Close;
      Screen.Cursor:=crDefault;
      Exit;
    end;
    IsPosted:=False;
    if qryDocListAnyWhere.RecordCount=1 then
    begin
      Screen.Cursor:=crDefault;
      Suachungtu(qryDocListAnyWhere.FieldByName('DOC_ID').Value, qryDocListAnyWhere.FieldByName('PERIOD_ID').Value,
              {vpbranch_id);//}qryDocListAnyWhere.FieldByName('BRANCH_ID').Value);
      qryDocListAnyWhere.Close;
      if IsPosted then
      begin
        P:=MainDM.qryReport.GetBookmark;
        MainDM.qryReport.DisableControls;
        MainDM.qryReport.Close;
        MainDM.qryReport.Open;
        MainDM.qryReport.EnableControls;
        try
          MainDM.qryReport.GotoBookmark(P);
        except
          //
        end;
        ReLoadDataReport;
      end;

      Exit;
    end;
  end;

  IsPosted:=False;
  DocListFrm:=TDocListFrm.Create(Self);
  try
    Screen.Cursor:=crDefault;
    DocListFrm.ShowModal;
  finally
    DocListFrm.Free;
  end;
  if IsPosted then
  begin
    P:=MainDM.qryReport.GetBookmark;
    MainDM.qryReport.DisableControls;
    MainDM.qryReport.Close;
    MainDM.qryReport.Open;
    MainDM.qryReport.EnableControls;
    try
      MainDM.qryReport.GotoBookmark(P);
    except
      //
    end;
//[NXHop sua]      ReLoadDataReport;
  end;
end;

procedure TReportFrm.grdReportDblClick(Sender: TObject);
begin
  btnSeeDetailClick(Sender);
end;

procedure TReportFrm.bbtnPreviewClick(Sender: TObject);
begin
  AnalystFrm.acPreview.Execute;
end;

procedure TReportFrm.bbtnDirectPrintClick(Sender: TObject);
begin
  AnalystFrm.acPrintDirect.Execute;
end;

procedure TReportFrm.bbtnDesignClick(Sender: TObject);
begin
  AnalystFrm.acDesigner.Execute;
end;

procedure TReportFrm.bbtnSeeDetailClick(Sender: TObject);
begin
  btnSeeDetailClick(Sender);
end;

procedure TReportFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
    if HtmlHelp(Self.handle,'HDSDKT.chm::/BaocaoKT.htm',HH_DISPLAY_TOPIC,0)=0 then
      ShowMessageUnicode(182);
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TReportFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);

  bbtnPreview.Enabled:=AnalystFrm.acPreview.Enabled;
  bbtnDesign.Enabled:=bbtnPreview.Enabled;
  bbtnDirectPrint.Enabled:=bbtnPreview.Enabled;
end;

procedure TReportFrm.bbtnCompare1Click(Sender: TObject);
begin
  AnalystFrm.acCompare1.Execute;
end;

end.
