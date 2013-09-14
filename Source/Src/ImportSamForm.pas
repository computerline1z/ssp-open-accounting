unit ImportSamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxLayoutLookAndFeels, dxLayoutControl,
  ElXPThemedControl, ElBtnCtl, ElPopBtn, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, cxControls, ElCheckCtl, DB, dxmdaset,XLSReadWriteII, ComCtrls,
  StdCtrls, ElCLabel, ElLabel, IBODataset, dxEditor, dxEdLib, dxDBELib,
  IB_Components, IB_Process, IB_Script, ExtCtrls, ElPanel, ElSplit,dxTreeGridMenus,
  DBActns, ActnList,dxGrClms, ElPgCtl, dxDBTLCl, dxGrClEx, ElACtrls;

  Const Minpos = 53;
  Const MaxPos = 57;
type
    TImportSamfrm = class(TForm)
    locForm: TdxLayoutControl;
    grdExcel: TdxDBGrid;
    ElPopupButton3: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    locFormItem4: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    OpenDialog1: TOpenDialog;
    ProgressBar: TProgressBar;
    locFormItem5: TdxLayoutItem;
    memdata: TdxMemData;
    DataSource1: TDataSource;
    grdImportList: TdxDBGrid;
    qryImportList: TIBOQuery;
    dsImportList: TDataSource;
    grdImportListNAME_VN: TdxDBGridMaskColumn;
    grdImportListNAME_ENG: TdxDBGridMaskColumn;
    dxDBMemo1: TdxDBMemo;
    locFormGroup5: TdxLayoutGroup;
    locFormGroup6: TdxLayoutGroup;
    IB_Script1: TIB_Script;
    tsMain: TIB_Transaction;
    grdImport: TdxDBGrid;
    qryImport: TIBOQuery;
    dsImport: TDataSource;
    ElPanel1: TElPanel;
    ElPanel2: TElPanel;
    dxDBMemo2: TdxDBMemo;
    ElPanel3: TElPanel;
    ElPanel4: TElPanel;
    ElPanel5: TElPanel;
    BitBtn2: TElPopupButton;
    ElPanel6: TElPanel;
    ElPanel7: TElPanel;
    ElPopupButton11: TElPopupButton;
    ActionList1: TActionList;
    ExlsInsert: TDataSetInsert;
    ExclDel: TDataSetDelete;
    ExclPost: TDataSetPost;
    ExclCan: TDataSetCancel;
    ImportIns: TDataSetInsert;
    ImportDel: TDataSetDelete;
    ImportPost: TDataSetPost;
    ImportCan: TDataSetCancel;
    btnExe: TElPopupButton;
    ElLabel1: TElLabel;
    locFormItem1: TdxLayoutItem;
    locFormItem2: TdxLayoutItem;
    ElLabel2: TElLabel;
    locFormItem3: TdxLayoutItem;
    ElLabel3: TElLabel;
    tabMain: TElPageControl;
    tabImport: TElTabSheet;
    tabConfig: TElTabSheet;
    qryAccConfig: TIBOQuery;
    dsAccConfig: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    TntBitBtn1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    TntBitBtn2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    TntBitBtn3: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    TntBitBtn4: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    TntBitBtn6: TElPopupButton;
    ConfigIns: TDataSetInsert;
    ConfigDel: TDataSetDelete;
    ConfigPost: TDataSetPost;
    ConfigCan: TDataSetCancel;
    ElSplitter1: TElSplitter;
    ElSplitter2: TElSplitter;
    locFormItem6: TdxLayoutItem;
    ElPopupButton13: TElPopupButton;
    acMemToDatabase: TAction;
    acDeleteCurrentData: TAction;
    acDeleteMem: TAction;
    dxLayoutControl1Group1: TdxLayoutGroup;
    locFormItem7: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    Panel1: TPanel;
    ElPopupButton2: TElPopupButton;
    qrycommon: TIBOQuery;
    dxMemo1: TdxMemo;
    ElLabel4: TElLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1DEST: TdxDBGridPopupColumn;
    dxDBGrid1DEST_OBJECT: TdxDBGridPopupColumn;
    dxDBGrid1DEST_WAREHOUSE: TdxDBGridPopupColumn;
    dxDBGrid1CONFIG_TYPE: TdxDBGridImageColumn;
    dxDBGrid1SOURCE: TdxDBGridColumn;
    grdObjectType: TdxDBGrid;
    dxDBGridColumn15: TdxDBGridColumn;
    qryAccConfigCONFIG_ID: TSmallintField;
    qryAccConfigSOURCE: TWideStringField;
    qryAccConfigDEST: TWideStringField;
    qryAccConfigDEST_OBJECT: TWideStringField;
    qryAccConfigDEST_OTYPE: TSmallintField;
    qryAccConfigDEST_WAREHOUSE: TWideStringField;
    qryAccConfigCONFIG_TYPE: TWideStringField;
    qrydem: TIBOQuery;
    dsdem: TDataSource;
    qrydemMAX: TSmallintField;
    dxDBGrid1CONFIG_ID: TdxDBGridCalcColumn;
    qry_error_code: TIBOQuery;
    qry_error_codeDOC_VOUCHER: TStringField;
    qryImportListID: TSmallintField;
    qryImportListNAME_VN: TStringField;
    qryImportListSQL_SELECT: TStringField;
    qryImportListIS_SYSTEM: TSmallintField;
    qryImportListDESCRIPTION: TStringField;
    qryImportListNAME_ENG: TStringField;
    qryImportListSQL_INSERT: TStringField;
    qryImportListTABLE_NAME: TStringField;
    qryImportListADDON_MODUL_ID: TSmallintField;
    qryImportListSQL_EXECUTE: TStringField;
    qryImportIMPORT_ID: TSmallintField;
    qryImportTRAN_TYPE: TWideStringField;
    qryImportTRAN_DATE: TDateField;
    qryImportYEAR_HT: TSmallintField;
    qryImportPERIOD: TSmallintField;
    qryImportJRNL_ENTRY: TIBOFloatField;
    qryImportSOURCE_ID: TWideStringField;
    qryImportSOURCE_NUMBER: TWideStringField;
    qryImportSOURCE_NAME: TWideStringField;
    qryImportREFERENCE: TWideStringField;
    qryImportDESCRIPTION: TWideStringField;
    qryImportWORKBENCH_DESC: TWideStringField;
    qryImportGL_ACC: TWideStringField;
    qryImportGL_ACC_DESC: TWideStringField;
    qryImportDEBIT: TIBOFloatField;
    qryImportCREDIT_GHD: TIBOFloatField;
    qryImportDESC_1: TWideStringField;
    qryImportDESC_2: TWideStringField;
    qryImportDESC_3: TSmallintField;
    qryImportDESC_4: TWideStringField;
    qryImportINVOICE_DATE: TDateField;
    qryImportNATURAL_ACCOUNT: TWideStringField;
    qryImportIS_UPDATE: TSmallintField;
    qryImportIS_NOTLOGICAL: TSmallintField;
    qryImportERROR_CODE: TSmallintField;
    qryImportERROR_CODE_NOTE: TWideStringField;
    qry_tachchuoi: TIBOQuery;
    ds_tachchuoi: TDataSource;
    qry_tachchuoiSTR_OUT1: TStringField;
    qry_tachchuoiSTR_OUT2: TStringField;
    qry_tachchuoiSTR_OUT3: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure grdImportListDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdImportListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure PHANTACHMASO(input:widestring);
    procedure RESETARRAY;
    procedure dxDBGrid1DESTInitPopup(Sender: TObject);
    procedure dxDBGrid1CREDIT_SSP_ACCInitPopup(Sender: TObject);
    procedure dxDBGrid1DEBIT_SSP_ACCCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1CREDIT_SSP_ACCCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryAccConfigPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ElPopupButton13Click(Sender: TObject);
    procedure ExcelToMem(Sender: TObject; filepath:widestring);
    procedure acMemToDatabaseExecute(Sender: TObject);
    procedure acDeleteCurrentDataExecute(Sender: TObject);
    procedure acDeleteMemExecute(Sender: TObject);
    procedure LoadImportData;
    procedure qryImportListAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryAccConfigNewRecord(DataSet: TDataSet);
    procedure qryAccConfigAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntBitBtn6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);

    procedure ElPopupButton3Click(Sender: TObject);
    procedure qrycommonError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure qryImportNewRecord(DataSet: TDataSet);
    procedure tabConfigShow(Sender: TObject);
    procedure dxDBGrid1DESTCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid1DEST_OBJECTCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1DEST_OBJECTInitPopup(Sender: TObject);
    procedure dxDBGrid1DEST_WAREHOUSECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxDBGrid1DEST_WAREHOUSEInitPopup(Sender: TObject);
    procedure qryAccConfigCONFIG_TYPEChange(Sender: TField);
    procedure grdObjectTypeDblClick(Sender: TObject);
    procedure dxDBGrid1DESTPopup(Sender: TObject;
      const EditText: WideString);
    procedure dxDBGrid1Editing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure qryAccConfigDEST_OBJECTChange(Sender: TField);
    procedure qryAccConfigDEST_WAREHOUSEChange(Sender: TField);
    function KiemtraKhohang(): Boolean;
    procedure qryAccConfigBeforePost(DataSet: TDataSet);
    procedure qryAccConfigDESTChange(Sender: TField);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdImportCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1CONFIG_TYPECloseUp(Sender: TObject;
      var Value: WideString; var Accept: Boolean);
  private
    { Private declarations }

  public { Public declarations }

    acc_object: array[MinPos..MaxPos] of widestring;
    SaveSource, SaveDest, SaveDest_Object, SaveDest_warehouse,
    SaveConfig_type, SaveSOCCOC, Sohoadon : widestring;
    SaveDest_Otype  : Smallint; // SaveDocType,
    count_number : integer;

  end;

var
  ImportSamfrm: TImportSamfrm;

implementation

uses SheetData,globalunit,MainDataMdl, StrUtils, popupform,functions, importwizardsamform,
DMInterface, MainForm, GlobalInterface, LookupFrm, DBFunctions, DateUtils,
  Cell;//, dxTreeGridMenus;
  // dxTreeGridMenus;
{$R *.dfm}

procedure TImportSamfrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  MemData.Free;
  Action := caFree;
  with MainFrm do
    MyMDIChildCount := MyMDIChildCount-1;

  with MainFrm do
  if MDIChildCount = 1 then
    PnlMain.Visible := True;

end;

procedure TImportSamfrm.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);
  ElPopupButton13.Enabled := FALSE;
  ElPanel3.Visible := (CurrentUser = 'SSPAdmin');

  qryImportList.Open;
  qryImport.Open;
  qryAccConfig.Open; 
  ProgressBar.Position := 0;
  MainFrm.MyMDIChildCount := MainFrm.MyMDIChildCount+1;

end;

procedure TImportSamfrm.grdImportListDblClick(Sender: TObject);
begin
  {==============}
  OpenDialog1:=TOpenDialog.Create(nil);
  OpenDialog1.Filter:='Excel Files|*.xls';
  OpenDialog1.DefaultExt:='xls';

  if not OpenDialog1.Execute then exit;

  ExcelToMem(self, OpenDialog1.FileName);


end;

procedure TImportSamfrm.BitBtn2Click(Sender: TObject);
var i : integer;
begin

end;

procedure TImportSamfrm.grdImportListChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  LoadImportData;
end;

procedure TImportSamfrm.PHANTACHMASO(input: widestring);
var count_substr :Smallint;
begin
  RESETARRAY;
  count_substr := MinPos;
  while (pos('-',input) <> 0) do
  begin

    acc_object[count_substr] := LeftStr(input,pos('-',input)-1);

    count_substr := count_substr + 1;
    input := LeftStr(input,Length(input)-pos('-',input));
    //RightStr(input,Length(input)-pos('-',input));
    if (pos('-',input) = 0) and (length(trim(input)) <>0) then
      acc_object[count_substr] := input;
  end; // while
   sohoadon := input;
end;

procedure TImportSamfrm.RESETARRAY;
var i:Smallint;
begin
  for i:=minpos to maxpos do
  begin
    acc_object[i]:='';

  end;

end;

procedure TImportSamfrm.dxDBGrid1DESTInitPopup(Sender: TObject);
begin
with MainDM do
begin
    if not qryAccConfigDEST.IsNull then
    begin
        If (qryAccConfigCONFIG_TYPE.Value = '1') then
            begin
                qryPAcc.Open;
                qryPAcc.Locate('ACCOUNT_ID', qryAccConfigDEST.Value, []);
            end
        else
            begin
                MainDM.qryPDocType.Open;
              //  qryPDocType.Locate('DOCTYPE_ID', qryAccConfigDEST.Value, []);
            end;
    end;
end;
end;

procedure TImportSamfrm.dxDBGrid1CREDIT_SSP_ACCInitPopup(Sender: TObject);
begin
{  MainDM.qryPAcc.OnFilterRecord := MainDM.qryPAccFilterBenNORecord;
  MainDM.qryPAcc.Filtered := True;

  with MainDM do
    if not qryAccConfigcredit_SSP_ACC.IsNull then
    begin
      qryPAcc.Open;
      qryPAcc.Locate('ACCOUNT_ID', qryAccConfigcredit_SSP_ACC.Value, []);
    end;  }//Hoaipt che 20090813
end;

procedure TImportSamfrm.dxDBGrid1DEBIT_SSP_ACCCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TImportSamfrm.dxDBGrid1CREDIT_SSP_ACCCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
    Text := MainDM.qryPAccACCOUNT_ID.Value;
end;

procedure TImportSamfrm.qryAccConfigPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
  var
  kq: integer;
begin
  Action := daAbort;
  ErrImportMsg := e.Message;

  kq := ProcessErr(E, '', 0);
  if kq = -803 then
  begin
    qryAccConfigCONFIG_ID.AsInteger := qryAccConfigCONFIG_ID.AsInteger + 1;
    qryAccConfig.Post;
    exit;
  end
end;

procedure TImportSamfrm.ElPopupButton13Click(Sender: TObject);
begin
  with TImportWizardFrm.Create(self) do
  try
    ShowModal;
  finally
    free;
  end;

end;

procedure TImportSamfrm.ExcelToMem(Sender: TObject; filepath:widestring);
var
  XLSRead:TXLSReadWriteII;
  Field: TField;
  i,j : integer;
begin


  XLSRead:=TXLSReadWriteII.Create(nil);

  XLSRead.Filename:= filepath;
  try
    XLSRead.Read;
  except
    XLSRead.Free;
    OpenDialog1.Free;
    ShowMessageUnicode(55);

    Exit;
  end;

  Screen.Cursor := crHourGlass;
  self.Refresh;
  ProgressBar.Position := 0;
  ProgressBar.Max := XLSRead.Sheets.Items[0].LastRow;

  if memdata <> nil then
  begin
    DataSource1.DataSet := nil;
    MemData.DisableControls;
    MemData.Free;
  end;
  MemData := TdxMemData.Create(self);
  MemData.EnableControls;

  {Add Field to memdata}
  for i := (XLSRead.Sheets.Items[0].FirstCol) to XLSRead.Sheets.Items[0].LastCol  do
  begin
      Field := TWideStringField.Create(MemData);
      Field.FieldKind := fkData;
      Field.Size := 100;
      Field.SetFieldType(ftWideString);

      Field.FieldName := IntToStr(i+1);
      Field.DataSet := MemData;
  end;

  MemData.open;

  if grdExcel.ColumnCount <> 0 then
    grdExcel.DestroyColumns;

  grdExcel.CreateDefaultColumns(MemData,self);

  grdExcel.Columns[1].SummaryFooterType := cstCount;

  {Insert record to Memdata}
  for i := (XLSRead.Sheets.Items[0].FirstRow) to (XLSRead.Sheets.Items[0].LastRow) do
  begin
    ProgressBar.StepIt;
    MemData.Append;
    for j := (XLSRead.Sheets.Items[0].FirstCol) to XLSRead.Sheets.Items[0].LastCol  do
    begin
      MemData.Fields[j+1].value := XLSRead.Sheets.Items[0].AsWideString[j,i];
    end;

    MemData.Post;
  end;

  DataSource1.DataSet := memdata;
  grdExcel.DataSource := DataSource1;

  grdExcel.Columns[0].Visible := TRUE;
  grdExcel.Columns[0].Caption := 'ID';

  grdExcel.OptionsView := grdExcel.OptionsView + [edgoAutoWidth];
  Screen.Cursor := crDefault;

end;

procedure TImportSamfrm.acMemToDatabaseExecute(Sender: TObject);
var i,j : integer;
    acc_obj_field,Is_NotLogical  : Smallint;
begin
//  qryImport.Open;
  if memdata <> nil then memdata.DisableControls;
  qryImport.DisableControls;
  memdata.First;
  memdata.next;
  ProgressBar.Position := 0;
  ProgressBar.Max := memdata.RecordCount-1;
  while not memdata.Eof do
  begin
    qryImport.Insert;
    count_number := 1;
    for j:=1 to grdExcel.VisibleColumnCount -1   do
    begin
      if  memdata.Fields.Fields[j].value <> '' then
         //Hoaipt che ngay 20090106
          if memdata.Fields.Fields[j].IsNull then
            qryimport.FieldByName(Grdimport.VisibleColumns[j].FieldName).Value := ''
          else
            qryimport.FieldByName(Grdimport.VisibleColumns[j].FieldName).Value := memdata.Fields.Fields[j].Value;
        if Grdimport.visibleColumns[j].FieldName = 'SOURCE_NUMBER' then
        begin
       //if memdata.Fields.Fields[j].Value = '00000000000000000006' then
       //begin
            maindm.qryCommon.sql.Clear;
            maindm.qryCommon.Params.Clear;
            maindm.qryCommon.SQL.Text := 'Select str_out1 from SUBSTR_CUT(:kyhieu, ''-'');';
            maindm.qryCommon.ParamByName('kyhieu').Value := memdata.Fields.Fields[j].Value;
            maindm.qryCommon.Open;
            while not maindm.qryCommon.Eof do
            begin
                sohoadon := maindm.qryCommon.FieldByName('str_out1').Value;
                //PHANTACHMASO(memdata.Fields.Fields[j].Value);
                qryimport.FieldByName(Grdimport.VisibleColumns[j].FieldName).Value := sohoadon;
                Is_NotLogical  := StrToIntDef(sohoadon, -1); // Ne^'u sohoadon kh�ng ho+.p le^. th� Is_NotLogical = -1
                if (Is_NotLogical <> -1) then
                    qryimport.FieldByName('IS_NOTLOGICAL').Value := 1;
                RESETARRAY;
                maindm.qryCommon.Next;
            end
        end
       //end
    end;
    {Lam them cho SAMUDERA Phan tach Data In}

    qryImport.Post;
    ProgressBar.StepIt;
    count_number := count_number+1;
    memdata.Next;
  end;
  ProgressBar.Position := ProgressBar.max;
  memdata.EnableControls;
  qryImport.EnableControls;
  qryImport.Refresh;

end;

procedure TImportSamfrm.acDeleteCurrentDataExecute(Sender: TObject);
begin
  MainDM.qryCommon.SQL.Clear;
  MainDM.qryCommon.Params.Clear;
  MainDM.qryCommon.SQL.Text := 'delete from ' + qryImportListTABLE_NAME.Value;
  MainDM.qryCommon.ExecSQL;
  qryImport.DisableControls;
  qryImport.Refresh;
  qryImport.EnableControls;
end;

procedure TImportSamfrm.acDeleteMemExecute(Sender: TObject);
begin
  if (memdata.RecordCount <> 0) and (memdata <> nil) then
  begin
    memdata.free;
    MemData := TdxMemData.Create(self);
  end;
end;

procedure TImportSamfrm.LoadImportData;
VAR  col: TdxDBTreeListColumn;
  i : integer;
begin
  {==============}
  screen.Cursor := crHourGlass;
    if grdImport.ColumnCount <> 0 then
      grdImport.DestroyColumns;

    if (qryImportListSQL_SELECT.Value = '') or (qryImportListSQL_SELECT.isnull) then
      exit;
    qryImport.DisableControls;
    qryImport.Close;
    qryImport.SQL.Text := qryImportListSQL_SELECT.Value;
    qryImport.InsertSQL.Text :=qryImportListSQL_INSERT.Value;
    qryImport.Prepare;
    qryImport.Open;

    grdImport.KeyField := qryImport.Fields.Fields[0].FieldName;

    {grdImport.CreateDefaultColumns(qryImport,self);}
    for i:=0 to qryImport.FieldCount -1 do
    begin
        if qryImport.Fields.Fields[i].DataType = ftDate then
          col := grdImport.CreateColumn(TdxDBGridDateColumn)
        else if qryImport.Fields.Fields[i].DataType = ftwidestring then
          col := grdImport.CreateColumn(TdxDBGridMaskColumn)
        else if (qryImport.Fields.Fields[i].DataType = ftfloat) or (qryImport.Fields.Fields[0].DataType = ftinteger) then
          col := grdImport.CreateColumn(TdxDBGridCalcColumn)
        else
          col := grdImport.CreateColumn(TdxDBGridMaskColumn);
        col.Caption := '('+IntToStr(i+1)+')' + qryImport.Fields.Fields[i].FieldName;
        col.FieldName := qryImport.Fields.Fields[i].FieldName;
        col.HeaderAlignment := taCenter;
    end;
    grdExcel.OptionsView := grdExcel.OptionsView + [edgoAutoWidth];
    {===============================================}
    qryImport.EnableControls;
    grdImport.Refresh;
    screen.Cursor := crDefault;

end;

procedure TImportSamfrm.qryImportListAfterOpen(DataSet: TDataSet);
begin
  LoadImportData;
end;

procedure TImportSamfrm.FormShow(Sender: TObject);
begin
  MainFrm.PnlMain.Visible := False;
  SetVisible(Self);
end;

procedure TImportSamfrm.qryAccConfigNewRecord(DataSet: TDataSet);
var
  v_import_id: smallint;
begin
  //qrydem.Refresh;
  v_import_id := 0;
  if qrydem.Active then qrydem.Close;
  qrydem.Open;
  v_import_id := qrydem.FieldByName('MAX').Value;
  if (qrydem.FieldByName('MAX').Isnull) then
      v_import_id := 1
  else
      v_import_id := qrydem.FieldByName('MAX').Value + 1;

  qryAccConfigCONFIG_ID.Value := v_import_id;
  qryAccConfigSource.value := SaveSource;
  qryAccConfigDest.value := SaveDest;
  qryAccConfigDest_Object.value := SaveDest_Object;
  qryAccConfigDest_warehouse.value := SaveDest_warehouse;
  qryAccConfigDest_Otype.Value :=  SaveDest_Otype;
  qryAccConfigConfig_type.Value := SaveConfig_type;

end;

procedure TImportSamfrm.qryAccConfigAfterPost(DataSet: TDataSet);
begin
{  SaveSource  := qryAccConfigSource.value;
  SaveDest := qryAccConfigDest.value;
  SaveDest_Object := qryAccConfigDest_Object.value;
  SaveDest_warehouse := qryAccConfigDest_warehouse.value;
  SaveDest_Otype :=  qryAccConfigDest_Otype.Value;
  SaveConfig_type := qryAccConfigConfig_type.Value; }
  qryAccConfig.Refresh;
end;

procedure TImportSamfrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, True);
end;

procedure TImportSamfrm.TntBitBtn6Click(Sender: TObject);
var
  Result: String;
  ngay :TDateTime;
begin
    ngay := WorkingDate;
    Result:=FormatDateTime('yyyy-MM-dd',ngay);
    self.Close;
end;

procedure TImportSamfrm.FormDestroy(Sender: TObject);
begin
  
    importsamfrm:=nil;
end;

procedure TImportSamfrm.ElPopupButton1Click(Sender: TObject);
var Error_str, Error_str_temp : String;
    Is_NotLogical :TDateTime;
    dem :integer;
begin
  dem := 0;
  dxDBMemo1.Text := '';
  Error_str := '';
  qryCommon.SQL.Clear;
  qryCommon.Params.Clear;
  qryCommon.SQL.Text := qryImportListSQL_EXECUTE.Value;
  qryCommon.Prepare;
  ProgressBar.Position := 0;
  ProgressBar.Max := memdata.RecordCount-1;
  qryImport.Refresh;
  qryImport.First;
  while not qryImport.Eof do //Kiem tra loi
  begin
  if qryImport.recordCount > 0 then

      qry_error_code.sql.Clear;
      qry_error_code.Params.Clear;
      qry_error_code.SQL.Text :=
      'select * from SP_CHECK_ERROR_GHD(:import_id, :kyht);';
      qry_error_code.Prepare;
      qry_error_code.ParamByName('kyht').Value :=  YearOf(qryImport.FieldByname('TRAN_DATE').Value)*12 + MonthOf(qryImport.FieldByname('TRAN_DATE').Value);
      qry_error_code.ParamByName('import_id').Value := qryImport.FieldByName('import_id').Value;
      qry_error_code.Open;
      while not qry_error_code.Eof do //Kiem tra loi
      begin
        Error_str_temp := qry_error_code.FieldByname('doc_voucher').Value;
        if (qry_error_code.FieldByname('doc_voucher').IsNull) then Error_str_temp := '';
        Error_str := Error_str + ' & ' + Error_str_temp;
        qry_error_code.Next;
      end;

  if (Trim(Error_str) <> '') then
  begin
      qryImport.edit;
      qryImport.FieldByname('error_code').value :=1;
      qryImport.FieldByname('ERROR_CODE_NOTE').value := Error_str;
      qryImport.post;
      dem := dem + 1;
  end;
  qryImport.Next;
  Error_str := '';
  ProgressBar.StepIt;
  end;
  if dem = 0 then
  begin
      qryCommon.ExecSQL;
      ProgressBar.Position := ProgressBar.Max;
      {qryImport.DisableControls;
      qryImport.Refresh;
      qryImport.EnableControls;  }
      dxMemo1.Refresh;
      if dxMemo1.Text <> '' then
          Panel1.Visible := true;

      ShowMessageUniText(utf8decode('Đã hoàn thành import dữ liệu!'));
   end
   else
      ShowMessageUniText(utf8decode('Dữ liệu còn lỗi, không thể Import được!'));

end;



procedure TImportSamfrm.ElPopupButton3Click(Sender: TObject);
begin
  close;
end;

procedure TImportSamfrm.qrycommonError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  RaiseException := false;
  dxMemo1.Text := 'Line '+ IntToStr(qryImport.Fieldbyname('IMPORT_ID').asinteger)  + dxMemo1.Text + ',';
end;

procedure TImportSamfrm.ElPopupButton2Click(Sender: TObject);
begin
  panel1.Visible := false;
end;

procedure TImportSamfrm.qryImportNewRecord(DataSet: TDataSet);
begin
  qryimport.FieldByName('IMPORT_ID').Value := count_number;
  //qryimport.FieldByName('Tran_Type').Value  := IntToStr(maindm.qryDocTypeDOCTYPE_ID.Value);
end;
procedure TImportSamfrm.tabConfigShow(Sender: TObject);
begin
    qryAccConfig.Open;
end;

procedure TImportSamfrm.dxDBGrid1DESTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
  begin
  with MainDM do
      begin
          if not qryAccConfigDEST.IsNull then
              begin
                  If (qryAccConfigCONFIG_TYPE.Value = '1') then
                      begin
                          //qryAccConfig.DisableControls;
                          qryAccConfig.Edit;
                          qryAccConfigDEST.Value:= MainDM.qryPAccACCOUNT_ID.Value;
                          Text:= MainDM.qryPAccACCOUNT_ID.Value;
                      end
                  else
                      begin
                          qryAccConfig.Edit;
                          qryAccConfigDEST.Value:= IntToStr(MainDM.qryPDocTypeDOCTYPE_ID.Value);
                          Text:= IntToStr(MainDM.qryPDocTypeDOCTYPE_ID.Value);
                      end;
              end;
      end;
end;

end;

procedure TImportSamfrm.dxDBGrid1DEST_OBJECTCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
 if Accept then
    Text := vpItemID
  else exit;
  {if Accept then
  begin

    //qryAccConfig.DisableControls;
    qryAccConfig.Edit;
    qryAccConfigDEST_OBJECT.Value:= MainDM.qryObjectTypeOTYPE_NAME.Value;
    qryAccConfigDEST_OTYPE.Value := MainDM.qryObjectTypeOTYPE_ID.AsInteger;
    Text:= MainDM.qryObjectTypeOTYPE_NAME.Value;
  end; }
end;

procedure TImportSamfrm.dxDBGrid1DEST_OBJECTInitPopup(Sender: TObject);
begin
 with MainDM do
  begin
   //  MainDM.qryObjectType.Open;
   //  MainDM.qryObjectType.Locate('OTYPE_ID', qryAccConfigDEST_OTYPE.Value, []);

  if qryAccConfigDEST_OBJECT.IsNull then
  begin
    MainDM.CurObjTypeID := MainDM.qryPAccOTYPE_ID.AsInteger;
    MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;
    exit;
  end;
  with MainDM do
  begin
    CurObjTypeID := MainDM.qryPAccOTYPE_ID.AsInteger;
    if ((PreObjTypeID <> CurObjTypeID) and (CurObjTypeID > 6)) then
    begin
      qryPComObj.OnFilterRecord := qryPComObjFilterRecord;
      qryPComObj.Filtered := True;

      PreObjTypeID := MainDM.CurObjTypeID;
    end;
    MainDM.qryPComObj.Close;
    MainDM.qryPComObj.Open;
    PopupFrm.grdCommonObj.DataSource.DataSet.Open;

     if (PopupFrm.grdCommonObj.DataSource.DataSet.FieldByName('OBJECT_ID').Value <> qryAccConfigDEST_OBJECT.Value ) then
        PopupFrm.grdCommonObj.DataSource.DataSet.Locate('OBJECT_ID', qryAccConfigDEST_OBJECT.Value, []);

   end;
   end;
end;

procedure TImportSamfrm.dxDBGrid1DEST_WAREHOUSECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
if vpBranch_IsMin = 0 then exit;
  if Accept then
    with MainDM do
    begin
      qryAccConfig.Edit;
      Text := qryPWareWAREHOUSE_ID.Value;
      qryAccConfigDEST_WAREHOUSE.Value := qryPWareWAREHOUSE_ID.Value;
    end;
end;

procedure TImportSamfrm.dxDBGrid1DEST_WAREHOUSEInitPopup(Sender: TObject);
begin
//if vpBranch_IsMin = 0 then exit;
//  if Accept then
with MainDM do
    begin
      qryAccConfig.Edit;
      Text := qryPWareWAREHOUSE_ID.Value;
      qryAccConfigDEST_WAREHOUSE.Value := qryPWareWAREHOUSE_ID.Value;
    end; 
end;

procedure TImportSamfrm.qryAccConfigCONFIG_TYPEChange(Sender: TField);
begin
If (qryAccConfigCONFIG_TYPE.Value = '1') then
     begin
        dxDBGrid1DEST.PopupControl := PopupFrm.PnlTK;
     end
     else
     begin
        dxDBGrid1DEST.PopupControl := PopupFrm.Pnl_DocType;
     end;
end;

procedure TImportSamfrm.grdObjectTypeDblClick(Sender: TObject);
begin
(GetParentForm(grdObjectType) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TImportSamfrm.dxDBGrid1DESTPopup(Sender: TObject;
  const EditText: WideString);
begin
{If (dxDBGrid1.FocusedField.FieldName = 'DEST') then
begin
If (qryAccConfigCONFIG_TYPE.Value = '1') then
     begin
        dxDBGrid1DEST.PopupControl := PopupFrm.PnlTK;
        MainDM.qryPAcc.Open;
     end
     else
     begin
        dxDBGrid1DEST.PopupControl := PopupFrm.Pnl_DocType;
        MainDM.qryPDocType.Open;
     end;
end;}
end;

procedure TImportSamfrm.dxDBGrid1Editing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
If (dxDBGrid1.FocusedField.FieldName = 'DEST') then
begin
If (qryAccConfigCONFIG_TYPE.Value = '1') then
     begin
        dxDBGrid1DEST.PopupControl := PopupFrm.PnlTK;
        MainDM.qryPAcc.Open;
        MainDM.qryPAcc.Filtered:=False;
     end
     else
     begin
        dxDBGrid1DEST.PopupControl := PopupFrm.Pnl_DocType;
        MainDM.qryPDocType.Open;
     end;
end;
if dxDBGrid1.FocusedField.FieldName = 'DEST_OBJECT' then
  begin
    if qryAccConfigDEST_OTYPE.IsNull then
      Allow := False
    else
      MainDM.CurObjTypeID := qryAccConfigDEST_OTYPE.AsInteger;
  end;
end;

procedure TImportSamfrm.qryAccConfigDEST_OBJECTChange(Sender: TField);
begin

{if ((IsNotHasData(qryAccConfigDEST_OBJECT)) and (qryAccConfigDEST_OTYPE.AsInteger = 0)) then exit;

  with MainDM do
  begin
    CurObjTypeID := qryAccConfigDEST_OTYPE.AsInteger;
    if not CheckObject(qryAccConfigDEST_OBJECT.Value, qryAccConfigDEST_OTYPE.Value) then
    begin
      if not ImportingFromXLS then
        ShowMessageUnicode(46);
      qryAccConfigDEST_OBJECT.FocusControl;
      Exit;
    end;
    if qryAccConfigDEST_OBJECT.Value <> CurObjID then
      qryAccConfigDEST_OBJECT.Value := CurObjID;
end;}
end;
procedure TImportSamfrm.qryAccConfigDEST_WAREHOUSEChange(Sender: TField);
begin
//    KiemtraKhohang();
 end;
function TImportSamfrm.KiemtraKhohang(): Boolean;
begin
  Result := True;
  //if locWare.Visible = False then exit;
  if not (qryAccConfig.State in [dsEdit, dsInsert]) then exit;
  Result := False;

  if IsNotHasData(qryAccConfigDEST_WAREHOUSE) then
  begin
    begin
      //ShowMessageUnicode(150);
      ShowHintBoxInComponent(self,qryAccConfig,'DEST_WAREHOUSE',150);
      //qryAccConfigDEST_WAREHOUSE.FocusControl;
      exit;
    end
  end;

  MainDM.qryPWare.Open;
  MainDM.qryPWare.Filtered := False;
  if qryAccConfigDEST_WAREHOUSE.Value <> MainDM.qryPWareWAREHOUSE_ID.Value then
    if not MainDM.qryPWARE.Locate('WAREHOUSE_ID', qryAccConfigDEST_WAREHOUSE.Value, []) then
    begin
      //ShowMessageUnicode(172);

      //ShowHintBoxInComponent(self,qryAccConfig,'DEST_WAREHOUSE',172);
      ShowMessageUnicode(46);
      qryAccConfigDEST_WAREHOUSE.FocusControl;
      Exit;
      exit;
    end;
  MainDM.qryPWare.Filtered := True;
  Result := True;
end;
procedure TImportSamfrm.qryAccConfigBeforePost(DataSet: TDataSet);
begin
If ((qryAccConfigCONFIG_TYPE.Value = '1') and (qryAccConfigDEST_WAREHOUSE.Value <> '') and (not qryAccConfigDEST_WAREHOUSE.IsNull )) then
  KiemtraKhohang();
end;

procedure TImportSamfrm.qryAccConfigDESTChange(Sender: TField);
begin
If (qryAccConfigCONFIG_TYPE.Value = '1') then
begin
with MainDM do
begin
if qryAccConfigDEST.Value <> qryPAccACCOUNT_ID.Value then
      if not qryPAcc.Locate('ACCOUNT_ID', qryAccConfigDEST.Value, []) then
      begin
        if not ImportingFromXLS then
          ShowMessageUnicode(42);

        qryAccConfigDEST.FocusControl;
        Abort;
      end;
end;
end;
end;

procedure TImportSamfrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbRight then
    TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender));
end;

procedure TImportSamfrm.grdImportCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  ACol: TdxTreeListColumn;
begin
  // tradtt edit: hien do nhung hop dong tam
  ACol := grdImport.FindColumnByFieldName('Error_code');

  if Assigned(ACol) then
    if ANode.Values[ACol.Index] = 1 then
      begin
        AFont.Color := clRed;
      end
    else
      begin
        AFont.Color := clBlack;
      end;
  // tradtt end edit

end;

procedure TImportSamfrm.dxDBGrid1DblClick(Sender: TObject);
var
  i, j: Integer;
  XLSRead: TXLSReadWriteII;
  XLSWriteLog: TXLSReadWriteII;
  OpenDialog1: TOpenDialog;
begin
 { if Not (fGrid is TdxDBGrid) then Exit;
  
  with TImportFrm.Create(Application) do
  try
    ImportGrid := fGrid;
    ShowModal;
  finally
    Free;
  end; }

end;

procedure TImportSamfrm.dxDBGrid1CONFIG_TYPECloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
 if Accept then
 begin
    qryAccConfig.Edit;
    qryAccConfigCONFIG_TYPE.Value := Value;
 end
 else exit;

end;

end.
