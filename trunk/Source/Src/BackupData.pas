unit BackupData;

interface

uses  Windows, Messages, Dialogs, DB, SysUtils, IB, IBODataset,StrUtils,Classes,XDOM_2_3;

const
  AliasNameDocs         ='<$SSP$DOCUMENTS$>';
  AliasNameEntrys       ='<$SSP$FULL_ENTRYS$>';
  AliasNameInvoice      ='<$SSP$INVOICE_INFO$>';
  AliasNameInvoiceDetail='<$SSP$INVOICE_DETAIL$>';

function BuildScriptDocs():String;
function BuildScriptEntrys():String;
function BuildScriptInvoices():String;
function BuildScriptInvoiceDetail():String;
function BuildScriptFile(tungay,denngay : TDateTime):String;

function MyDateToStr(ngay : TDateTime):String;
function RepStr(WS : WideString):String;
implementation

uses Variants, GlobalUnit, MainDataMdl;
var
  bakfromdate,baktodate:TDateTime;

function RepStr(WS : WideString):String;
begin
  Result:=UTF8Encode(WS);
  Result:=StringReplace(Result,'''','''''',[rfReplaceAll]);
end;

function BuildScriptFile(tungay,denngay : TDateTime):String;
var
  ts:TStringList;
begin
  bakfromdate:=tungay;
  baktodate:=denngay;
  Result := BuildScriptDocs() + BuildScriptEntrys() + BuildScriptInvoices() + BuildScriptInvoiceDetail();

  ts:=TStringList.Create;
  ts.Text:=Result;
  ts.SaveToFile('D:\test.sql');
end; 

function BuildScriptDocs():String;

begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from documents where doc_date between :tungay and :denngay';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;
  with MainDM.qryCommon do
  while Not Eof do
  begin
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
function BuildScriptEntrys():String;
begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from full_entrys where master_date between :tungay and :denngay';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;
  with MainDM.qryCommon do
  while Not Eof do
  begin
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
function BuildScriptInvoices():String;
begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from invoice_info where doc_id||period_id in (select doc_id||period_id from documents where doc_date between :tungay and :denngay)';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;
  with MainDM.qryCommon do
  while Not Eof do
  begin
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

function BuildScriptInvoiceDetail():String;
begin
  Result:='';
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from invoice_detail where doc_id||period_id in (select doc_id||period_id from documents where doc_date between :tungay and :denngay)';
  MainDM.qryCommon.ParamByName('tungay').Value:=bakfromdate;
  MainDM.qryCommon.ParamByName('denngay').Value:=baktodate;
  MainDM.qryCommon.Open;
  with MainDM.qryCommon do
  while Not Eof do
  begin
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

function MyDateToStr(ngay : TDateTime):String;
begin
  Result:=FormatDateTime('yyyy-MM-dd',ngay);
end;

end.
