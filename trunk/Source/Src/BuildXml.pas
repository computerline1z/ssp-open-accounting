unit BuildXML;
interface
uses  Windows, Messages, Dialogs, DB, SysUtils, IB, IBODataset,StrUtils,Classes,XDOM_2_3;

function BuildXMLDocs(tungay,denngay : TDateTime):String;
function BuildXMLEntrys(tungay,denngay : TDateTime):String;
function BuildXMLInvoices(tungay,denngay : TDateTime):String;
function BuildXMLInvoiceDetail(tungay,denngay : TDateTime):String;
function BuildXMLFile(tungay,denngay : TDateTime):String;
procedure ReadXMLFile(AFN:String);

function MyDateToStr(ngay : TDateTime):String;
function MyStrToDate(Str : String):TDateTime;
function GetValueOfTag(TagName: string): WideString;
function WStrRplace(OldName: WideString): WideString;
implementation

uses Variants, GlobalUnit, MainDataMdl;
var
  Doc:TdomDocument;

function BuildXMLFile(tungay,denngay : TDateTime):String;
var
  ts:TStringList;
begin
  Result := '<?xml version="1.0" encoding="UTF-8" standalone="no"?>';
  Result := Result + '  <DATABACKUP Date="'+ FormatDateTime(NGAYTHANG_FORMAT,Now)+'">';
  Result := Result + BuildXMLDocs(tungay,denngay) + BuildXMLEntrys(tungay,denngay) + BuildXMLInvoices(tungay,denngay) + BuildXMLInvoiceDetail(tungay,denngay);
  Result := Result + '  </DATABACKUP>';

  ts:=TStringList.Create;
  ts.Text:=Result;
  ts.SaveToFile('D:\test.xml');
end;

function GetValueOfTag(TagName: string): WideString;
var
  XpEle: TdomElement;
begin
    XpEle := Doc.documentElement;
    Result := XpEle.getFirstChildElement(TagName).firstChild.nodeValue;
end;

function WStrRplace(OldName: WideString): WideString;
var
  Str: String;
begin
  Str:=UTF8Encode(OldName);
  Str:=StringReplace(Str,'<','&lt',[rfReplaceAll]);
  Str:=StringReplace(Str,'>','&gt',[rfReplaceAll]);
  //Str:=StringReplace(Str,'&','&amp',[rfReplaceAll]);
  Str:=StringReplace(Str,'''','&apos',[rfReplaceAll]);
  Str:=StringReplace(Str,'"','&aquot',[rfReplaceAll]);
  Result:=UTF8Decode(Str);
end;

procedure ReadXMLFile(AFN:String);
var
  XmlToDomParser: TXmlToDomParser;
  DNode:TdomNode;
  NodeList:TdomNodeList;
  I:Integer;
begin
  XmlToDomParser:= TXmlToDomParser.create(nil);
  Doc := TdomDocument.create(nil);
  Doc:=XmlToDomParser.fileToDom(AFN);
  NodeList:=Doc.documentElement.getElementsByTagName('DOCUMENTS');
  for i:=0 to NodeList.length-1 do
  begin
    DNode:=NodeList.item(I);
    ShowMessage(DNode.textContent);
  end;
end;


function BuildXMLDocs(tungay,denngay : TDateTime):String;
begin
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from documents where doc_date between :tungay and :denngay';
  MainDM.qryCommon.ParamByName('tungay').Value:=tungay;
  MainDM.qryCommon.ParamByName('denngay').Value:=denngay;
  MainDM.qryCommon.Open;
  Result:='<DOCUMENTS>';
  with MainDM.qryCommon do
  while Not Eof do
  begin
    Result:=Result+'<DOC DOC_ID="'+ WStrRplace(FieldByName('DOC_ID').Value) + '">';
      Result:=Result+ ' <DOC_ID><![CDATA['    + FieldByName('DOC_ID').Value + ']]></DOC_ID>';
      Result:=Result+ ' <PERIOD_ID>' + FieldByName('PERIOD_ID').AsString + '</PERIOD_ID>';
      Result:=Result+ ' <DOC_DATE>'  + MyDateToStr(FieldByName('DOC_DATE').AsDateTime)+'</DOC_DATE>';
      if Not FieldByName('PAY_DATE').IsNull then
        Result:=Result+ ' <PAY_DATE>'  + MyDateToStr(FieldByName('PAY_DATE').AsDateTime)+'</PAY_DATE>';
      if Not FieldByName('WAREHOUSE_ID').IsNull then
        Result:=Result+ ' <WAREHOUSE_ID><![CDATA['    + FieldByName('WAREHOUSE_ID').Value + ']]></WAREHOUSE_ID>';
      if Not FieldByName('TO_WAREHOUSE').IsNull then
        Result:=Result+ ' <TO_WAREHOUSE> <![CDATA['    + FieldByName('TO_WAREHOUSE').Value + ']]></TO_WAREHOUSE>';
      if Not FieldByName('WORK_ID').IsNull then
        Result:=Result+ ' <WORK_ID> <![CDATA['    + FieldByName('WORK_ID').Value + ']]></WORK_ID>';
      Result:=Result+ ' <DOCTYPE_ID>' + FieldByName('DOCTYPE_ID').AsString + '</DOCTYPE_ID>';
      if Not FieldByName('MADOITUONG').IsNull then
        Result:=Result+ ' <MADOITUONG> <![CDATA['    + FieldByName('MADOITUONG').Value + ']]></MADOITUONG>';
      if Not FieldByName('LOAIDOITUONG').IsNull then
        Result:=Result+ ' <LOAIDOITUONG>'    + FieldByName('LOAIDOITUONG').AsString + '</LOAIDOITUONG>';
      if Not FieldByName('DOC_PERSON').IsNull then
        Result:=Result+ ' <DOC_PERSON> <![CDATA['    + FieldByName('DOC_PERSON').Value + ']]></DOC_PERSON>';
      if Not FieldByName('DOC_PERSONADDR').IsNull then
        Result:=Result+ ' <DOC_PERSONADDR> <![CDATA['    + FieldByName('DOC_PERSONADDR').Value + ']]></DOC_PERSONADDR>';
      if Not FieldByName('DOC_VOUCHER').IsNull then
        Result:=Result+ ' <DOC_VOUCHER> <![CDATA['    + FieldByName('DOC_VOUCHER').Value + ']]></DOC_VOUCHER>';
      if Not FieldByName('VOUCHER_DATE').IsNull then
        Result:=Result+ ' <VOUCHER_DATE>'  + MyDateToStr(FieldByName('VOUCHER_DATE').AsDateTime)+'</VOUCHER_DATE>';
      if Not FieldByName('DOC_NOTES').IsNull then
        Result:=Result+ ' <DOC_NOTES><![CDATA['    + FieldByName('DOC_NOTES').Value + ']]></DOC_NOTES>';
      if Not FieldByName('NGAYGHISO').IsNull then
        Result:=Result+ ' <NGAYGHISO>'  + MyDateToStr(FieldByName('NGAYGHISO').AsDateTime)+'</NGAYGHISO>';
      if Not FieldByName('TEMPLATE_ID').IsNull then
        Result:=Result+ ' <TEMPLATE_ID>'    + FieldByName('TEMPLATE_ID').AsString + '</TEMPLATE_ID>';
      if Not FieldByName('LASTMODIFY').IsNull then
        Result:=Result+ ' <LASTMODIFY> <![CDATA['    + FieldByName('LASTMODIFY').Value + ']]></LASTMODIFY>';
      if Not FieldByName('SUBSYSTEM_ID').IsNull then
        Result:=Result+ ' <SUBSYSTEM_ID>'    + FieldByName('SUBSYSTEM_ID').AsString + '</SUBSYSTEM_ID>';
      if Not FieldByName('INTERTYPE_ID').IsNull then
        Result:=Result+ ' <INTERTYPE_ID>'    + FieldByName('INTERTYPE_ID').AsString + '</INTERTYPE_ID>';
      if Not FieldByName('MASODT').IsNull then
        Result:=Result+ ' <MASODT> <![CDATA['    + FieldByName('MASODT').Value + ']]></MASODT>';
      if Not FieldByName('LOAI_DT').IsNull then
        Result:=Result+ ' <LOAI_DT>'    + FieldByName('LOAI_DT').AsString + '</LOAI_DT>';
      if Not FieldByName('DOC_AMOUNT').IsNull then
        Result:=Result+ ' <DOC_AMOUNT>'    + FieldByName('DOC_AMOUNT').AsString + '</DOC_AMOUNT>';
      if Not FieldByName('DOCUMENT_TAG').IsNull then
        Result:=Result+ ' <DOCUMENT_TAG>'    + FieldByName('DOCUMENT_TAG').AsString + '</DOCUMENT_TAG>';

    Result:=Result+'</DOC>';
    Next;
  end;
  Result:=Result+'</DOCUMENTS>';
end;
function BuildXMLEntrys(tungay,denngay : TDateTime):String;
begin
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from full_entrys where master_date between :tungay and :denngay';
  MainDM.qryCommon.ParamByName('tungay').Value:=tungay;
  MainDM.qryCommon.ParamByName('denngay').Value:=denngay;
  MainDM.qryCommon.Open;
  Result:='<ENTRYS>';
  with MainDM.qryCommon do
  while Not Eof do
  begin
    Result:=Result+'<ENTRY>';
      Result:=Result+ ' <DOC_ID Value="'    + UTF8Encode(FieldByName('DOC_ID').Value) + '"/>';
      Result:=Result+ ' <ENTRY_ID Value="' + FieldByName('ENTRY_ID').AsString + '"/>';
      Result:=Result+ ' <PERIOD_ID Value="' + FieldByName('PERIOD_ID').AsString + '"/>';
      if Not FieldByName('INVOICE_ID').IsNull then
        Result:=Result+ ' <INVOICE_ID Value="' + FieldByName('INVOICE_ID').AsString + '"/>';
      if Not FieldByName('ACTICLE_ID').IsNull then
        Result:=Result+ ' <ACTICLE_ID Value="'    + UTF8Encode(FieldByName('ACTICLE_ID').Value) + '"/>';
      if Not FieldByName('DEBIT_ACC').IsNull then
        Result:=Result+ ' <DEBIT_ACC Value="'    + UTF8Encode(FieldByName('DEBIT_ACC').Value) + '"/>';
      if Not FieldByName('CREDIT_ACC').IsNull then
        Result:=Result+ ' <CREDIT_ACC Value="'    + UTF8Encode(FieldByName('CREDIT_ACC').Value) + '"/>';
      if Not FieldByName('DEBIT_OBJ').IsNull then
        Result:=Result+ ' <DEBIT_OBJ Value="'    + UTF8Encode(FieldByName('DEBIT_OBJ').Value) + '"/>';
      if Not FieldByName('DEBIT_TYPE').IsNull then
        Result:=Result+ ' <DEBIT_TYPE Value="' + FieldByName('DEBIT_TYPE').AsString + '"/>';
      if Not FieldByName('DEBIT_DETAIL').IsNull then
        Result:=Result+ ' <DEBIT_DETAIL Value="'    + UTF8Encode(FieldByName('DEBIT_DETAIL').Value) + '"/>';
      if Not FieldByName('CREDIT_DTYPE').IsNull then
        Result:=Result+ ' <CREDIT_DTYPE Value="' + FieldByName('CREDIT_DTYPE').AsString + '"/>';
      if Not FieldByName('CREDIT_OBJ').IsNull then
        Result:=Result+ ' <CREDIT_OBJ Value="'    + UTF8Encode(FieldByName('CREDIT_OBJ').Value) + '"/>';
      if Not FieldByName('CREDIT_TYPE').IsNull then
        Result:=Result+ ' <CREDIT_TYPE Value="' + FieldByName('CREDIT_TYPE').AsString + '"/>';
      if Not FieldByName('CREDIT_DETAIL').IsNull then
        Result:=Result+ ' <CREDIT_DETAIL Value="'    + UTF8Encode(FieldByName('CREDIT_DETAIL').Value) + '"/>';
      if Not FieldByName('CREDIT_DTYPE').IsNull then
        Result:=Result+ ' <CREDIT_DTYPE Value="' + FieldByName('CREDIT_DTYPE').AsString + '"/>';
      if Not FieldByName('ENTRY_AMOUNT').IsNull then
        Result:=Result+ ' <ENTRY_AMOUNT Value="'    + FieldByName('ENTRY_AMOUNT').AsString + '"/>';
      if Not FieldByName('ENTRY_PRICE').IsNull then
        Result:=Result+ ' <ENTRY_PRICE Value="'    + FieldByName('ENTRY_PRICE').AsString + '"/>';
      if Not FieldByName('ENTRY_VALUE').IsNull then
        Result:=Result+ ' <ENTRY_VALUE Value="'    + FieldByName('ENTRY_VALUE').AsString + '"/>';
      if Not FieldByName('CURRENCY_ID').IsNull then
        Result:=Result+ ' <CURRENCY_ID Value="'    + UTF8Encode(FieldByName('CURRENCY_ID').Value) + '"/>';
      if Not FieldByName('TYGIANT').IsNull then
        Result:=Result+ ' <TYGIANT Value="'    + FieldByName('TYGIANT').AsString + '"/>';
      if Not FieldByName('ENTRY_NOTE').IsNull then
        Result:=Result+ ' <ENTRY_NOTE Value="'    + UTF8Encode(FieldByName('ENTRY_NOTE').Value) + '"/>';
      if Not FieldByName('NGUOINHAP').IsNull then
        Result:=Result+ ' <NGUOINHAP Value="'    + UTF8Encode(FieldByName('NGUOINHAP').Value) + '"/>';
      if Not FieldByName('VAT_PERCENT').IsNull then
        Result:=Result+ ' <VAT_PERCENT Value="'    + FieldByName('VAT_PERCENT').AsString + '"/>';
      if Not FieldByName('MASOLO').IsNull then
        Result:=Result+ ' <MASOLO Value="'    + FieldByName('MASOLO').AsString + '"/>';
      if Not FieldByName('TGSDCUALO').IsNull then
        Result:=Result+ ' <TGSDCUALO Value="'    + FieldByName('TGSDCUALO').AsString + '"/>';
      if Not FieldByName('SLDAPBCK').IsNull then
        Result:=Result+ ' <SLDAPBCK Value="'    + FieldByName('SLDAPBCK').AsString + '"/>';
      if Not FieldByName('PAYFOR_DOC').IsNull then
        Result:=Result+ ' <PAYFOR_DOC Value="'    + UTF8Encode(FieldByName('PAYFOR_DOC').Value) + '"/>';
      if Not FieldByName('PAYFOR_PERIOD').IsNull then
        Result:=Result+ ' <PAYFOR_PERIOD Value="'    + FieldByName('PAYFOR_PERIOD').AsString + '"/>';
      if Not FieldByName('BUDGET_ID').IsNull then
        Result:=Result+ ' <BUDGET_ID Value="'    + FieldByName('BUDGET_ID').AsString + '"/>';
      if Not FieldByName('DISCOUNT_SCALE').IsNull then
        Result:=Result+ ' <DISCOUNT_SCALE Value="'    + FieldByName('DISCOUNT_SCALE').AsString + '"/>';
      if Not FieldByName('ORIGIN_PRICE').IsNull then
        Result:=Result+ ' <ORIGIN_PRICE Value="'    + FieldByName('ORIGIN_PRICE').AsString + '"/>';
      if Not FieldByName('DISCOUNT_VALUE').IsNull then
        Result:=Result+ ' <DISCOUNT_VALUE Value="'    + FieldByName('DISCOUNT_VALUE').AsString + '"/>';
      if Not FieldByName('MASTER_TAG').IsNull then
        Result:=Result+ ' <MASTER_TAG Value="'    + FieldByName('MASTER_TAG').AsString + '"/>';
      if Not FieldByName('MASTER_DATE').IsNull then
        Result:=Result+ ' <MASTER_DATE Value="'  + MyDateToStr(FieldByName('MASTER_DATE').AsDateTime)+'"/>';
      if Not FieldByName('MASTER_WARE').IsNull then
        Result:=Result+ ' <MASTER_WARE Value="'    + UTF8Encode(FieldByName('MASTER_WARE').Value) + '"/>';
      if Not FieldByName('MASTER_TOWARE').IsNull then
        Result:=Result+ ' <MASTER_TOWARE Value="'    + UTF8Encode(FieldByName('MASTER_TOWARE').Value) + '"/>';
      if Not FieldByName('APP_UPDATE').IsNull then
        Result:=Result+ ' <APP_UPDATE Value="'    + FieldByName('APP_UPDATE').AsString + '"/>';

    Result:=Result+'</ENTRY>';
    Next;
  end;
  Result:=Result+'</ENTRYS>';
end;
function BuildXMLInvoices(tungay,denngay : TDateTime):String;
begin
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from invoice_info where doc_id||period_id in (select doc_id||period_id from documents where doc_date between :tungay and :denngay)';
  MainDM.qryCommon.ParamByName('tungay').Value:=tungay;
  MainDM.qryCommon.ParamByName('denngay').Value:=denngay;
  MainDM.qryCommon.Open;
  Result:='<INVOICES>';
  with MainDM.qryCommon do
  while Not Eof do
  begin
    Result:=Result+'<INVOICE>';
      Result:=Result+ ' <DOC_ID Value="'    + UTF8Encode(FieldByName('DOC_ID').Value) + '"/>';
      Result:=Result+ ' <ENTRY_ID Value="' + FieldByName('ENTRY_ID').AsString + '"/>';
      Result:=Result+ ' <PERIOD_ID Value="' + FieldByName('PERIOD_ID').AsString + '"/>';
      if Not FieldByName('INVTYPE_ID').IsNull then
        Result:=Result+ ' <INVTYPE_ID Value="' + FieldByName('INVTYPE_ID').AsString + '"/>';
      if Not FieldByName('OBJECT_ID').IsNull then
        Result:=Result+ ' <OBJECT_ID Value="'    + UTF8Encode(FieldByName('OBJECT_ID').Value) + '"/>';
      if Not FieldByName('OTYPE_ID').IsNull then
        Result:=Result+ ' <OTYPE_ID Value="' + FieldByName('OTYPE_ID').AsString + '"/>';
      if Not FieldByName('SERIAL_NO').IsNull then
        Result:=Result+ ' <SERIAL_NO Value="'    + UTF8Encode(FieldByName('SERIAL_NO').Value) + '"/>';
      if Not FieldByName('INVOICE_NO').IsNull then
        Result:=Result+ ' <INVOICE_NO Value="'    + UTF8Encode(FieldByName('INVOICE_NO').Value) + '"/>';
      if Not FieldByName('INVOICE_DATE').IsNull then
        Result:=Result+ ' <INVOICE_DATE Value="'  + MyDateToStr(FieldByName('INVOICE_DATE').AsDateTime)+'"/>';
      if Not FieldByName('INVOICE_VAT').IsNull then
        Result:=Result+ ' <INVOICE_VAT Value="' + FieldByName('INVOICE_VAT').AsString + '"/>';
      if Not FieldByName('CUSNAME').IsNull then
        Result:=Result+ ' <CUSNAME Value="'    + UTF8Encode(FieldByName('CUSNAME').Value) + '"/>';
      if Not FieldByName('CUSTAXCODE').IsNull then
        Result:=Result+ ' <CUSTAXCODE Value="'    + UTF8Encode(FieldByName('CUSTAXCODE').Value) + '"/>';
      if Not FieldByName('CUSADDR').IsNull then
        Result:=Result+ ' <CUSADDR Value="'    + UTF8Encode(FieldByName('CUSADDR').Value) + '"/>';
      if Not FieldByName('ITEM_NAME').IsNull then
        Result:=Result+ ' <ITEM_NAME Value="'    + UTF8Encode(FieldByName('ITEM_NAME').Value) + '"/>';
      if Not FieldByName('NOTTAX_VALUE').IsNull then
        Result:=Result+ ' <NOTTAX_VALUE Value="' + FieldByName('NOTTAX_VALUE').AsString + '"/>';
      if Not FieldByName('TAX_VALUE').IsNull then
        Result:=Result+ ' <TAX_VALUE Value="'    + FieldByName('TAX_VALUE').AsString + '"/>';
      if Not FieldByName('MAUSO').IsNull then
        Result:=Result+ ' <MAUSO Value="'    + UTF8Encode(FieldByName('MAUSO').Value) + '"/>';
      if Not FieldByName('ITEM_AMOUNT').IsNull then
        Result:=Result+ ' <ITEM_AMOUNT Value="'    + FieldByName('ITEM_AMOUNT').AsString + '"/>';
      if Not FieldByName('LOAIHD').IsNull then
        Result:=Result+ ' <LOAIHD Value="'    + FieldByName('LOAIHD').AsString + '"/>';
      if Not FieldByName('INVOICE_NOTE').IsNull then
        Result:=Result+ ' <INVOICE_NOTE Value="'    + UTF8Encode(FieldByName('INVOICE_NOTE').Value) + '"/>';
      if Not FieldByName('FEE_VALUE').IsNull then
        Result:=Result+ ' <FEE_VALUE Value="'    + FieldByName('FEE_VALUE').AsString + '"/>';

    Result:=Result+'</INVOICE>';
    Next;
  end;
  Result:=Result+'</INVOICES>';
end;

function BuildXMLInvoiceDetail(tungay,denngay : TDateTime):String;
begin
  MainDM.qryCommon.Close;
  MainDM.qryCommon.SQL.Text:='select * from invoice_detail where doc_id||period_id in (select doc_id||period_id from documents where doc_date between :tungay and :denngay)';
  MainDM.qryCommon.ParamByName('tungay').Value:=tungay;
  MainDM.qryCommon.ParamByName('denngay').Value:=denngay;
  MainDM.qryCommon.Open;
  Result:='<INVOICE_DETAILS>';
  with MainDM.qryCommon do
  while Not Eof do
  begin
    Result:=Result+'<INV_DETAIL>';
      Result:=Result+ ' <DOC_ID Value="'    + UTF8Encode(FieldByName('DOC_ID').Value) + '"/>';
      Result:=Result+ ' <ENTRY_ID Value="' + FieldByName('ENTRY_ID').AsString + '"/>';
      Result:=Result+ ' <PERIOD_ID Value="' + FieldByName('PERIOD_ID').AsString + '"/>';
      Result:=Result+ ' <DETAIL_ID Value="' + FieldByName('DETAIL_ID').AsString + '"/>';
      if Not FieldByName('DETAIL_NAME').IsNull then
        Result:=Result+ ' <DETAIL_NAME Value="'    + UTF8Encode(FieldByName('DETAIL_NAME').Value) + '"/>';
      if Not FieldByName('DETAIL_DVT').IsNull then
        Result:=Result+ ' <DETAIL_DVT Value="'    + UTF8Encode(FieldByName('DETAIL_DVT').Value) + '"/>';
      if Not FieldByName('DETAIL_AMOUNT').IsNull then
        Result:=Result+ ' <DETAIL_AMOUNT Value="' + FieldByName('DETAIL_AMOUNT').AsString + '"/>';
      if Not FieldByName('DETAIL_PRICE').IsNull then
        Result:=Result+ ' <DETAIL_PRICE Value="' + FieldByName('DETAIL_PRICE').AsString + '"/>';
      if Not FieldByName('DETAIL_VALUE').IsNull then
        Result:=Result+ ' <DETAIL_VALUE Value="' + FieldByName('DETAIL_VALUE').AsString + '"/>';
      if Not FieldByName('DETAIL_NOTE').IsNull then
        Result:=Result+ ' <DETAIL_NOTE Value="'    + UTF8Encode(FieldByName('DETAIL_NOTE').Value) + '"/>';
    Result:=Result+'</INV_DETAIL>';
    Next;
  end;
  Result:=Result+'</INVOICE_DETAILS>';
end;

function MyDateToStr(ngay : TDateTime):String;
begin
  Result:=FloatToStr(ngay);
end;

function MyStrToDate(Str : String):TDateTime;
begin
  Result:=FloatToDateTime(StrToFloat(Str));
end;

end.
