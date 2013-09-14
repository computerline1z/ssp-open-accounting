unit BackupForm;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutControl, cxControls, StdCtrls, Buttons, dxCntner, Forms,
  dxEditor, dxEdLib, TntButtons, ElXPThemedControl,  ElCaption,
  ElBtnCtl, ElPopBtn, ElBiProgr, dxExEdtr, ComCtrls, DB, IBODataset;

const
  AliasNameDocs         ='<$SSP$DOCUMENTS$>';
  AliasNameEntrys       ='<$SSP$FULL_ENTRYS$>';
  AliasNameInvoice      ='<$SSP$INVOICE_INFO$>';
  AliasNameInvoiceDetail='<$SSP$INVOICE_DETAIL$>';

type
  TBackupFrm = class(TForm)
    ElFormCaption1: TElFormCaption;
    locForm: TdxLayoutControl;
    btnCancel: TElPopupButton;
    btnOK: TElPopupButton;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    locFormGroup2: TdxLayoutGroup;
    locFormItem7: TdxLayoutItem;
    locFormItem8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    locFormItem5: TdxLayoutItem;
    locFormItem4: TdxLayoutItem;
    dxButtonEdit1: TdxButtonEdit;
    locFormItem1: TdxLayoutItem;
    SaveDlg: TSaveDialog;
    ProgressBar1: TProgressBar;
    locProgress: TdxLayoutItem;
    qryTableList: TIBOQuery;
    qryTableListTABLE_ID: TSmallintField;
    qryTableListTABLE_NAME: TWideStringField;
    qryFieldList: TIBOQuery;
    qryFieldListTENFIELD: TWideStringField;
    dsTableList: TDataSource;
    qryTableListALIAS_NAME: TWideStringField;
    qryTableListSQL_WHERE: TWideStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btnOKClick(Sender: TObject);

    function BuildScriptDocs():String;
    function BuildScriptEntrys():String;
    function BuildScriptInvoices():String;
    function BuildScriptInvoiceDetail():String;
    function BuildScriptFile(tungay,denngay : TDateTime;AFN:String):String;
    procedure BackupData;

    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    bakfromdate,baktodate:TDateTime;
    RecordCnt,RecordCur:Integer;
  public
    { Public declarations }
  end;


var
  BackupFrm: TBackupFrm;
implementation

uses MainDataMdl, GlobalUnit, md5;

{$R *.dfm}

procedure TBackupFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TBackupFrm.FormCreate(Sender: TObject);
begin
  dxDateEdit1.Date:=EncodeDate(CurYear, CurMonth,1);
  dxDateEdit2.Date:=EndOfTheMonth(WorkingDate);
  SetCaption(Self);
end;

procedure TBackupFrm.FormShow(Sender: TObject);
begin
  SetVisible(Self);
end;

procedure TBackupFrm.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if SaveDlg.Execute then
    dxButtonEdit1.Text:=SaveDlg.FileName;
end;

procedure TBackupFrm.BackupData;
var
  MangFields:Array[0..255] of string;
  TenFile, StrSQL, strtmp:String;
  sqlContent: AnsiString;
  CountRecord,CountFields,i:Integer;
  IsFirst,IsError, IsData:Boolean;
begin
  IsFirst:=True;
  Screen.Cursor:=crHourGlass;
  TenFile:= dxButtonEdit1.Text;
  qryTableList.Open;
  qryFieldList.Open;
  CountRecord:=0;
  sqlContent:='';
  while Not qryTableList.Eof do
  begin
    IsData :=False;
    StrSQL:='insert into '+ qryTableListTABLE_NAME.AsString;
    qryFieldList.First;
    CountFields:=qryFieldList.RecordCount;
    i:=0;
    while not qryFieldList.Eof do
    begin
      MangFields[i]:=Trim(qryFieldListTENFIELD.AsString);

      if i=0 then
        StrSQL:=StrSQL + ' (' + MangFields[i]
      else
        StrSQL:=StrSQL+', '+MangFields[i];

      i:=i+1;
      qryFieldList.Next;
    end;
    StrSQL:=StrSQL+') values(';
    MainDM.qryCommon.Close;
    IsError:=False;
    if qryTableListSQL_WHERE.IsNull then
      MainDM.qryCommon.SQL.Text:='select * from '+ qryTableListTABLE_NAME.AsString
    else
    begin
      MainDM.qryCommon.SQL.Text:='select * from '+ qryTableListTABLE_NAME.AsString + qryTableListSQL_WHERE.AsString;
      MainDM.qryCommon.Prepare;
      MainDM.qryCommon.ParamByName('tungay').AsDate:=dxDateEdit1.Date;
      MainDM.qryCommon.ParamByName('denngay').AsDate:=dxDateEdit2.Date;
    end;

    try
      MainDM.qryCommon.Prepare;
      MainDM.qryCommon.Open;
    except
      IsError:=True;
    end;

    if Not IsError then
    while Not MainDM.qryCommon.Eof do
    begin
      IsData :=True;
      sqlContent:=sqlContent + StrSQL;
      for i:=0 to CountFields-1 do
      begin
        if MainDM.qryCommon.FieldByName(MangFields[i]).IsNull then
            strtmp := 'null'
        else if MainDM.qryCommon.FieldByName(MangFields[i]).IsBlob then
            strtmp := 'null'
        else if MainDM.qryCommon.FieldByName(MangFields[i]).DataType =ftDate then
            strtmp := '''' + MyDateToStr(MainDM.qryCommon.FieldByName(MangFields[i]).AsDateTime) + ''''
        else if MainDM.qryCommon.FieldByName(MangFields[i]).DataType =ftDateTime then
            strtmp := '''' + MyDateTimeToStr(MainDM.qryCommon.FieldByName(MangFields[i]).AsDateTime) + ''''
        else if MainDM.qryCommon.FieldByName(MangFields[i]).DataType =ftWideString then
            strtmp := '''' + RepStr(MainDM.qryCommon.FieldByName(MangFields[i]).Value) + ''''
        else if MainDM.qryCommon.FieldByName(MangFields[i]).DataType in [ftSmallInt, ftInteger, ftWord, ftFloat,ftCurrency,ftBCD,ftLargeInt] then
            strtmp := MainDM.qryCommon.FieldByName(MangFields[i]).AsString
        else
            strtmp := '''' + MainDM.qryCommon.FieldByName(MangFields[i]).AsString + '''';

        if i=0 then
          sqlContent:=sqlContent+strtmp
        else
          sqlContent:=sqlContent+','+ strtmp;
      end;
      sqlContent:=sqlContent+'); '+ #13#10;

      CountRecord:=CountRecord+1;
      if CountRecord=500 then
      begin
        CountRecord:=0;
        sqlContent:=sqlContent + #13#10 + 'COMMIT WORK;' + #13#10;
        if IsFirst then
        begin
          IsFirst:=False;
          SaveToTextFile(TenFile,sqlContent);
        end
        else
          AppendToTextFile(TenFile,sqlContent);
        sqlContent:='';

      end;

      MainDM.qryCommon.Next;
    end;
    //thuyttb da sua,het moi table phai commit work
    if ((CountRecord<>500)and(sqlContent <>'')and(IsData=True)) then
      sqlContent:=sqlContent + #13#10 + 'COMMIT WORK;' + #13#10;
    qryTableList.Next;
  end; //end while mang table

  qryFieldList.Close;
  qryTableList.Close;
  if sqlContent<>'' then
  begin
//    sqlContent:=sqlContent + #13#10 + 'COMMIT WORK;';
    if IsFirst then
      SaveToTextFile(TenFile,sqlContent)
    else
      AppendToTextFile(TenFile,sqlContent);
  end;
  MainDM.qryCommon.Close;

//  SaveToTextFile(TenFile,SSPEncode(sqlContent));

  Screen.Cursor:=crDefault;
  ShowMessageUnicode(83);
end;

function TBackupFrm.BuildScriptFile(tungay,denngay : TDateTime;AFN:String):String;
var
  ts:TStringList;
begin
  bakfromdate:=tungay;
  baktodate:=denngay;
  Result := BuildScriptDocs() + BuildScriptEntrys() + BuildScriptInvoices() + BuildScriptInvoiceDetail();

  ts:=TStringList.Create;
  ts.Text:=Result;
  ts.SaveToFile(AFN);
end;

function TBackupFrm.BuildScriptDocs():String;

begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from documents where doc_date between :tungay and :denngay';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;
  RecordCnt:=MainDM.qryCommon.RecordCount;
  RecordCur:=0;
  with MainDM.qryCommon do
  while Not Eof do
  begin
    RecordCur:=RecordCur+1;
    ProgressBar1.Position:=RecordCur*250000 div RecordCount;

      Result:=Result+ AliasNameDocs + '('''+ RepStr(FieldByName('DOC_ID').Value);
      Result:=Result+ ''',' + FieldByName('PERIOD_ID').AsString;
      Result:=Result+ ','''  + MyDateToStr(FieldByName('DOC_DATE').AsDateTime)+'''';
      if FieldByName('PAY_DATE').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + MyDateToStr(FieldByName('PAY_DATE').AsDateTime)+'''';
      if FieldByName('WAREHOUSE_ID').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('WAREHOUSE_ID').Value) + '''';
      if FieldByName('TO_WAREHOUSE').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('TO_WAREHOUSE').Value) + '''';
      if FieldByName('WORK_ID').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('WORK_ID').Value) + '''';
      Result:=Result+ ',' + FieldByName('DOCTYPE_ID').AsString;
      if FieldByName('MADOITUONG').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('MADOITUONG').Value) + '''';
      if FieldByName('LOAIDOITUONG').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('LOAIDOITUONG').AsString;
      if FieldByName('DOC_PERSON').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('DOC_PERSON').Value) + '''';
      if FieldByName('DOC_PERSONADDR').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('DOC_PERSONADDR').Value) + '''';
      if FieldByName('DOC_VOUCHER').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('DOC_VOUCHER').Value) + '''';
      if FieldByName('VOUCHER_DATE').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + MyDateToStr(FieldByName('VOUCHER_DATE').AsDateTime)+'''';
      if FieldByName('DOC_NOTES').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('DOC_NOTES').Value) + '''';
      if FieldByName('NGAYGHISO').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + MyDateToStr(FieldByName('NGAYGHISO').AsDateTime)+'''';
      if FieldByName('TEMPLATE_ID').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('TEMPLATE_ID').AsString;
      if FieldByName('LASTMODIFY').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('LASTMODIFY').Value) + '''';
      if FieldByName('SUBSYSTEM_ID').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('SUBSYSTEM_ID').AsString;
      if FieldByName('INTERTYPE_ID').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('INTERTYPE_ID').AsString;
      if FieldByName('MASODT').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','''  + RepStr(FieldByName('MASODT').Value) + '''';
      if FieldByName('LOAI_DT').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('LOAI_DT').AsString;
      if FieldByName('DOC_AMOUNT').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('DOC_AMOUNT').AsString;
      if FieldByName('DOCUMENT_TAG').IsNull then
        Result:=Result+ ',null'
      else
        Result:=Result+ ','    + FieldByName('DOCUMENT_TAG').AsString;
    Result:=Result+');'+#13#10;
    Next;
  end;
end;
function TBackupFrm.BuildScriptEntrys():String;
begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from full_entrys where master_date between :tungay and :denngay';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;

  RecordCnt:=MainDM.qryCommon.RecordCount;
  RecordCur:=0;
  with MainDM.qryCommon do
  while Not Eof do
  begin
    RecordCur:=RecordCur+1;
    ProgressBar1.Position:=250000 + RecordCur*250000 div RecordCount;
    
      Result:=Result+ AliasNameEntrys +'('''+ RepStr(FieldByName('DOC_ID').Value);
      Result:=Result+ ''',' + FieldByName('ENTRY_ID').AsString;
      Result:=Result+ ',' + FieldByName('PERIOD_ID').AsString;

      if FieldByName('INVOICE_ID').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('INVOICE_ID').AsString;

      if FieldByName('ACTICLE_ID').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('ACTICLE_ID').Value) + '''';

      if FieldByName('DEBIT_ACC').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('DEBIT_ACC').Value) + '''';

      if FieldByName('CREDIT_ACC').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CREDIT_ACC').Value) + '''';

      if FieldByName('DEBIT_OBJ').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('DEBIT_OBJ').Value) + '''';

      if FieldByName('DEBIT_TYPE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DEBIT_TYPE').AsString;

      if FieldByName('DEBIT_DETAIL').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('DEBIT_DETAIL').Value) + '''';

      if FieldByName('DEBIT_DTYPE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DEBIT_DTYPE').AsString;

      if FieldByName('CREDIT_OBJ').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CREDIT_OBJ').Value) + '''';

      if FieldByName('CREDIT_TYPE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('CREDIT_TYPE').AsString;

      if FieldByName('CREDIT_DETAIL').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CREDIT_DETAIL').Value) + '''';

      if FieldByName('CREDIT_DTYPE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('CREDIT_DTYPE').AsString;

      if FieldByName('ENTRY_AMOUNT').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('ENTRY_AMOUNT').AsString;

      if FieldByName('ENTRY_PRICE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('ENTRY_PRICE').AsString;

      if FieldByName('ENTRY_VALUE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('ENTRY_VALUE').AsString;

      if FieldByName('CURRENCY_ID').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CURRENCY_ID').Value) + '''';

      if FieldByName('TYGIANT').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('TYGIANT').AsString;

      if FieldByName('ENTRY_NOTE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('ENTRY_NOTE').Value) + '''';

      if FieldByName('NGUOINHAP').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('NGUOINHAP').Value) + '''';

      if FieldByName('VAT_PERCENT').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('VAT_PERCENT').AsString;

      if FieldByName('MASOLO').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('MASOLO').AsString;

      if FieldByName('TGSDCUALO').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('TGSDCUALO').AsString;

      if FieldByName('SLDAPBCK').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('SLDAPBCK').AsString;

      if FieldByName('PAYFOR_DOC').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('PAYFOR_DOC').Value) + '''';

      if FieldByName('PAYFOR_PERIOD').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('PAYFOR_PERIOD').AsString;

      if FieldByName('BUDGET_ID').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('BUDGET_ID').AsString;

      if FieldByName('DISCOUNT_SCALE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DISCOUNT_SCALE').AsString;

      if FieldByName('ORIGIN_PRICE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('ORIGIN_PRICE').AsString;

      if FieldByName('DISCOUNT_VALUE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DISCOUNT_VALUE').AsString;

      if FieldByName('MASTER_TAG').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('MASTER_TAG').AsString;

      if FieldByName('MASTER_DATE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + MyDateToStr(FieldByName('MASTER_DATE').AsDateTime)+'''';

      if FieldByName('MASTER_WARE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('MASTER_WARE').Value) + '''';

      if FieldByName('MASTER_TOWARE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('MASTER_TOWARE').Value) + '''';

      if FieldByName('APP_UPDATE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('APP_UPDATE').AsString;

    Result:=Result+');'+#13#10;

    Next;
  end;
end;
function TBackupFrm.BuildScriptInvoices():String;
begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from invoice_info where doc_id||period_id in (select doc_id||period_id from documents where doc_date between :tungay and :denngay)';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;

  RecordCnt:=MainDM.qryCommon.RecordCount;
  RecordCur:=0;
  with MainDM.qryCommon do
  while Not Eof do
  begin
    RecordCur:=RecordCur+1;
    ProgressBar1.Position:=500000 + RecordCur*250000 div RecordCount;
    
      Result:=Result+ AliasNameInvoice +'('''+ RepStr(FieldByName('DOC_ID').Value);
      Result:=Result+ ''',' + FieldByName('ENTRY_ID').AsString;
      Result:=Result+ ',' + FieldByName('PERIOD_ID').AsString;

      if FieldByName('INVTYPE_ID').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('INVTYPE_ID').Value) + '''';

      if FieldByName('OBJECT_ID').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('OBJECT_ID').Value) + '''';

      if FieldByName('OTYPE_ID').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('OTYPE_ID').AsString;

      if FieldByName('SERIAL_NO').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('SERIAL_NO').Value) + '''';

      if FieldByName('INVOICE_NO').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('INVOICE_NO').Value) + '''';

      if FieldByName('INVOICE_DATE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + MyDateToStr(FieldByName('INVOICE_DATE').AsDateTime)+'''';

      if FieldByName('INVOICE_VAT').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('INVOICE_VAT').AsString;

      if FieldByName('CUSNAME').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CUSNAME').Value) + '''';

      if FieldByName('CUSTAXCODE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CUSTAXCODE').Value) + '''';

      if FieldByName('CUSADDR').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('CUSADDR').Value) + '''';

      if FieldByName('ITEM_NAME').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('ITEM_NAME').Value) + '''';

      if FieldByName('NOTTAX_VALUE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('NOTTAX_VALUE').AsString;

      if FieldByName('TAX_VALUE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('NOTTAX_VALUE').AsString;

      if FieldByName('MAUSO').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('MAUSO').Value) + '''';

      if FieldByName('ITEM_AMOUNT').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('ITEM_AMOUNT').AsString;

      if FieldByName('LOAIHD').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('LOAIHD').AsString;

      if FieldByName('INVOICE_NOTE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('INVOICE_NOTE').Value) + '''';

      if FieldByName('FEE_VALUE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('FEE_VALUE').AsString; 

    Result:=Result+');'+#13#10;

    Next;
  end;
end;

function TBackupFrm.BuildScriptInvoiceDetail():String;
begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from invoice_detail where doc_id||period_id in (select doc_id||period_id from documents where doc_date between :tungay and :denngay)';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;

  RecordCnt:=MainDM.qryCommon.RecordCount;
  RecordCur:=0;
  with MainDM.qryCommon do
  while Not Eof do
  begin
    RecordCur:=RecordCur+1;
    ProgressBar1.Position:=750000 + RecordCur*250000 div RecordCount;

      Result:=Result+ AliasNameInvoiceDetail +'('''+ RepStr(FieldByName('DOC_ID').Value);
      Result:=Result+ ''',' + FieldByName('ENTRY_ID').AsString;
      Result:=Result+ ',' + FieldByName('PERIOD_ID').AsString;
      Result:=Result+ ',' + FieldByName('DETAIL_ID').AsString;

      if FieldByName('DETAIL_NAME').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('DETAIL_NAME').Value) + '''';

      if FieldByName('DETAIL_DVT').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('DETAIL_DVT').Value) + '''';

      if FieldByName('DETAIL_AMOUNT').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DETAIL_AMOUNT').AsString;

      if FieldByName('DETAIL_PRICE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DETAIL_PRICE').AsString;

      if FieldByName('DETAIL_VALUE').IsNull then  Result:=Result+ ',null'
      else Result:=Result+ ',' + FieldByName('DETAIL_VALUE').AsString;

      if FieldByName('DETAIL_NOTE').IsNull then Result:=Result+ ',null'
      else Result:=Result+ ','''  + RepStr(FieldByName('DETAIL_NOTE').Value) + '''';

    Result:=Result+');'+#13#10;

    Next;
  end;
end;


procedure TBackupFrm.btnOKClick(Sender: TObject);
var ts:TStringList;
begin
  if dxButtonEdit1.Text='' then
  begin
    ShowMessageUnicode(20);
    dxButtonEdit1.SetFocus;
    Exit;
  end;

  BackupData;

  ts:=TStringList.Create;
  ts.LoadFromFile(dxButtonEdit1.Text);
  ts.Text := SSPEncode(Trim(ts.Text)); 
  ts.SaveToFile(dxButtonEdit1.Text);
  Exit;

  Screen.Cursor:=crHourGlass;
  ProgressBar1.Position:=0;
  BuildScriptFile(dxDateEdit1.Date,dxDateEdit2.Date,dxButtonEdit1.Text);
  ProgressBar1.Position:=0;
  Screen.Cursor:=crDefault;
end;

procedure TBackupFrm.btnCancelClick(Sender: TObject);
begin
  Screen.Cursor:=crDefault;
  Self.Close;
end;

end.
