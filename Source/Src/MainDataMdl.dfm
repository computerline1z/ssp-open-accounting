object MainDM: TMainDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 218
  Top = 38
  Height = 704
  Width = 966
  object cnMain: TIB_Connection
    DefaultTransaction = tsDefault
    PasswordStorage = psKeyFromUserReg
    SQLDialect = 3
    Params.Strings = (
      'USER NAME=SYSDBA'
      'SQL DIALECT=3'
      'CHARACTER SET=UNICODE_FSS'
      
        'PATH=F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\account' +
        'ing_2009_2010.GDB'
      'SERVER=127.0.0.1'
      'PROTOCOL=TCP/IP')
    OnError = cnMainError
    Left = 12
    Top = 52
    SavedPassword = '.JuMbLe.01.4C45BE36588760F73E'
  end
  object tsList: TIB_Transaction
    IB_Connection = cnMain
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 80
    Top = 453
  end
  object qryWarehouse: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM WAREHOUSE'
      'WHERE'
      '   WAREHOUSE_ID = :OLD_WAREHOUSE_ID')
    EditSQL.Strings = (
      'UPDATE WAREHOUSE SET'
      '   WAREHOUSE_ID = :WAREHOUSE_ID, /*PK*/'
      '   WAREHOUSE_NAME = :WAREHOUSE_NAME,'
      '   WAREHOUSE_ADDR = :WAREHOUSE_ADDR,'
      '   WAREHOUSE_TYPE = :WAREHOUSE_TYPE,'
      '   MS_PPXK = :MS_PPXK'
      'WHERE'
      '   WAREHOUSE_ID = :OLD_WAREHOUSE_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO WAREHOUSE('
      '   WAREHOUSE_ID, /*PK*/'
      '   WAREHOUSE_NAME,'
      '   WAREHOUSE_ADDR,'
      '   WAREHOUSE_TYPE,'
      '   MS_PPXK)'
      'VALUES ('
      '   :WAREHOUSE_ID,'
      '   :WAREHOUSE_NAME,'
      '   :WAREHOUSE_ADDR,'
      '   :WAREHOUSE_TYPE,'
      '   :MS_PPXK)')
    KeyLinks.Strings = (
      'WAREHOUSE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryWarehouseBeforeEdit
    BeforeDelete = qryWarehouseBeforeDelete
    AfterDelete = qryWarehouseAfterDelete
    BeforeInsert = qryWarehouseBeforeInsert
    AfterInsert = qryWarehouseAfterInsert
    BeforePost = qryWarehouseBeforePost
    AfterPost = qryWarehouseAfterPost
    OnNewRecord = qryWarehouseNewRecord
    OnPostError = qryWarehousePostError
    OnDeleteError = qryWarehouseDeleteError
    SQL.Strings = (
      'SELECT WAREHOUSE_ID'
      '     , WAREHOUSE_NAME'
      '     , WAREHOUSE_ADDR'
      '     , WAREHOUSE_TYPE'
      '     , MS_PPXK'
      'FROM WAREHOUSE'
      'order by WAREHOUSE_ID')
    FieldOptions = []
    Left = 194
    Top = 100
    object qryWarehouseWAREHOUSE_ID: TWideStringField
      FieldName = 'WAREHOUSE_ID'
      Required = True
      Size = 15
    end
    object qryWarehouseWAREHOUSE_NAME: TWideStringField
      FieldName = 'WAREHOUSE_NAME'
      Size = 126
    end
    object qryWarehouseWAREHOUSE_ADDR: TWideStringField
      FieldName = 'WAREHOUSE_ADDR'
      Size = 126
    end
    object qryWarehouseWAREHOUSE_TYPE: TSmallintField
      FieldName = 'WAREHOUSE_TYPE'
    end
    object qryWarehouseMS_PPXK: TIntegerField
      FieldName = 'MS_PPXK'
    end
  end
  object dsWarehouse: TDataSource
    DataSet = qryWarehouse
    Left = 194
    Top = 116
  end
  object qryHSCT: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM COMPANY_FILE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   COMPANY_ID = :OLD_COMPANY_ID')
    EditSQL.Strings = (
      'UPDATE COMPANY_FILE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   COMPANY_ID = :COMPANY_ID, /*PK*/'
      '   FULLNAME = :FULLNAME,'
      '   SHORTNAME = :SHORTNAME,'
      '   TAXCODE = :TAXCODE,'
      '   TRADETYPE = :TRADETYPE,'
      '   TRADEFIELD = :TRADEFIELD,'
      '   ADDRESS = :ADDRESS,'
      '   EMAL = :EMAL,'
      '   WEBSITE = :WEBSITE,'
      '   DIRECTOR = :DIRECTOR,'
      '   ACCT_MANAGER = :ACCT_MANAGER,'
      '   CASHIER = :CASHIER,'
      '   STOREKEEPER = :STOREKEEPER,'
      '   LOGO = :LOGO,'
      '   OWNER_NAME = :OWNER_NAME,'
      '   FAXNUMBER = :FAXNUMBER,'
      '   TELPHONE = :TELPHONE,'
      '   PAYMENT_ACC = :PAYMENT_ACC,'
      '   GENERAL_ACC = :GENERAL_ACC,'
      '   LOGO_IMGCLASS = :LOGO_IMGCLASS,'
      '   LPRODUCT_KEY = :LPRODUCT_KEY,'
      '   LSERI_NUMBER = :LSERI_NUMBER,'
      '   LLICIENSE_KEY = :LLICIENSE_KEY,'
      '   LCUSTMER_ID = :LCUSTMER_ID,'
      '   LCUSTUMER_NAME = :LCUSTUMER_NAME,'
      '   LCOMPANY_NAME = :LCOMPANY_NAME'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   COMPANY_ID = :OLD_COMPANY_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO COMPANY_FILE('
      '   BRANCH_ID, /*PK*/'
      '   COMPANY_ID, /*PK*/'
      '   FULLNAME,'
      '   SHORTNAME,'
      '   TAXCODE,'
      '   TRADETYPE,'
      '   TRADEFIELD,'
      '   ADDRESS,'
      '   EMAL,'
      '   WEBSITE,'
      '   DIRECTOR,'
      '   ACCT_MANAGER,'
      '   CASHIER,'
      '   STOREKEEPER,'
      '   LOGO,'
      '   OWNER_NAME,'
      '   FAXNUMBER,'
      '   TELPHONE,'
      '   PAYMENT_ACC,'
      '   GENERAL_ACC,'
      '   LOGO_IMGCLASS,'
      '   LPRODUCT_KEY,'
      '   LSERI_NUMBER,'
      '   LLICIENSE_KEY,'
      '   LCUSTMER_ID,'
      '   LCUSTUMER_NAME,'
      '   LCOMPANY_NAME)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :COMPANY_ID,'
      '   :FULLNAME,'
      '   :SHORTNAME,'
      '   :TAXCODE,'
      '   :TRADETYPE,'
      '   :TRADEFIELD,'
      '   :ADDRESS,'
      '   :EMAL,'
      '   :WEBSITE,'
      '   :DIRECTOR,'
      '   :ACCT_MANAGER,'
      '   :CASHIER,'
      '   :STOREKEEPER,'
      '   :LOGO,'
      '   :OWNER_NAME,'
      '   :FAXNUMBER,'
      '   :TELPHONE,'
      '   :PAYMENT_ACC,'
      '   :GENERAL_ACC,'
      '   :LOGO_IMGCLASS,'
      '   :LPRODUCT_KEY,'
      '   :LSERI_NUMBER,'
      '   :LLICIENSE_KEY,'
      '   :LCUSTMER_ID,'
      '   :LCUSTUMER_NAME,'
      '   :LCOMPANY_NAME)')
    KeyLinks.Strings = (
      'COMPANY_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryHSCTBeforeEdit
    BeforeOpen = qryHSCTBeforeOpen
    BeforePost = qryHSCTBeforePost
    OnPostError = qryHSCTPostError
    SQL.Strings = (
      'SELECT FULLNAME'
      '     , SHORTNAME'
      '     , TAXCODE'
      '     , TRADETYPE'
      '     , TRADEFIELD'
      '     , ADDRESS'
      '     , EMAL'
      '     , WEBSITE'
      '     , DIRECTOR'
      '     , ACCT_MANAGER'
      '     , CASHIER'
      '     , STOREKEEPER'
      '     , LOGO'
      '     , OWNER_NAME'
      '     , FAXNUMBER'
      '     , TELPHONE'
      '     , PAYMENT_ACC'
      '     , GENERAL_ACC'
      '     , LOGO_IMGCLASS'
      '     , LPRODUCT_KEY'
      '     , LSERI_NUMBER'
      '     , LLICIENSE_KEY'
      '     , LCUSTMER_ID'
      '     , LCUSTUMER_NAME'
      '     , LCOMPANY_NAME'
      '     , COMPANY_ID'
      '     , BRANCH_ID'
      'FROM COMPANY_FILE'
      'WHERE BRANCH_ID = :BRANCH_ID')
    FieldOptions = []
    Left = 138
    Top = 16
    object qryHSCTLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 8
    end
    object qryHSCTFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryHSCTSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 63
    end
    object qryHSCTTAXCODE: TWideStringField
      FieldName = 'TAXCODE'
      Size = 15
    end
    object qryHSCTTRADETYPE: TWideStringField
      FieldName = 'TRADETYPE'
      Size = 126
    end
    object qryHSCTTRADEFIELD: TWideStringField
      FieldName = 'TRADEFIELD'
      Size = 126
    end
    object qryHSCTADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Size = 126
    end
    object qryHSCTEMAL: TWideStringField
      FieldName = 'EMAL'
      Size = 63
    end
    object qryHSCTWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 126
    end
    object qryHSCTDIRECTOR: TWideStringField
      FieldName = 'DIRECTOR'
      Size = 126
    end
    object qryHSCTACCT_MANAGER: TWideStringField
      FieldName = 'ACCT_MANAGER'
      Size = 126
    end
    object qryHSCTCASHIER: TWideStringField
      FieldName = 'CASHIER'
      Size = 126
    end
    object qryHSCTSTOREKEEPER: TWideStringField
      FieldName = 'STOREKEEPER'
      Size = 126
    end
    object qryHSCTOWNER_NAME: TWideStringField
      FieldName = 'OWNER_NAME'
      Size = 126
    end
    object qryHSCTFAXNUMBER: TWideStringField
      FieldName = 'FAXNUMBER'
      Size = 15
    end
    object qryHSCTTELPHONE: TWideStringField
      FieldName = 'TELPHONE'
      Size = 15
    end
    object qryHSCTPAYMENT_ACC: TWideStringField
      FieldName = 'PAYMENT_ACC'
      Size = 63
    end
    object qryHSCTGENERAL_ACC: TWideStringField
      FieldName = 'GENERAL_ACC'
      Size = 63
    end
    object qryHSCTLOGO_IMGCLASS: TWideStringField
      FieldName = 'LOGO_IMGCLASS'
      Size = 30
    end
    object qryHSCTLPRODUCT_KEY: TWideStringField
      FieldName = 'LPRODUCT_KEY'
      Size = 30
    end
    object qryHSCTLLICIENSE_KEY: TWideStringField
      FieldName = 'LLICIENSE_KEY'
      Size = 30
    end
    object qryHSCTLCUSTMER_ID: TWideStringField
      FieldName = 'LCUSTMER_ID'
      Size = 30
    end
    object qryHSCTLCUSTUMER_NAME: TWideStringField
      FieldName = 'LCUSTUMER_NAME'
      Size = 126
    end
    object qryHSCTLCOMPANY_NAME: TWideStringField
      FieldName = 'LCOMPANY_NAME'
      Size = 126
    end
    object qryHSCTLSERI_NUMBER: TIntegerField
      FieldName = 'LSERI_NUMBER'
    end
    object qryHSCTCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
      Required = True
    end
    object qryHSCTBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsHSCT: TDataSource
    DataSet = qryHSCT
    Left = 138
    Top = 33
  end
  object qryPAcc: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'ACCOUNT_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    OnFilterRecord = qryPAccFilterRecord
    SQL.Strings = (
      'SELECT ACCOUNT_ID'
      '     , PACCOUNT_ID'
      '     , ACCOUNT_NAME'
      '     , OTYPE_ID'
      '     , ACCOUNT_TAG'
      '     , BALANCE_TYPE'
      '     , ISMIN'
      '     , ISSELECT'
      '     , DTYPE_ID'
      '     , ENGLISH_NAME'
      '     , FOLLOW_BAL'
      '     , FOLLOW_DOCBAL'
      '     , HAS_BALANCE'
      '     , DTYPE_ID_1'
      '     , FOLLOW_BAL_1'
      '     , ACC_MAP_ID'
      'FROM ACCOUNT_LIST'
      'order by account_id')
    FieldOptions = []
    Left = 602
    Top = 325
    object qryPAccACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryPAccPACCOUNT_ID: TWideStringField
      FieldName = 'PACCOUNT_ID'
      Size = 15
    end
    object qryPAccACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryPAccOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryPAccACCOUNT_TAG: TSmallintField
      FieldName = 'ACCOUNT_TAG'
    end
    object qryPAccBALANCE_TYPE: TSmallintField
      FieldName = 'BALANCE_TYPE'
    end
    object qryPAccISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryPAccISSELECT: TSmallintField
      FieldName = 'ISSELECT'
    end
    object qryPAccDTYPE_ID: TSmallintField
      FieldName = 'DTYPE_ID'
    end
    object qryPAccENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryPAccFOLLOW_BAL: TSmallintField
      FieldName = 'FOLLOW_BAL'
    end
    object qryPAccFOLLOW_DOCBAL: TSmallintField
      FieldName = 'FOLLOW_DOCBAL'
    end
    object qryPAccHAS_BALANCE: TSmallintField
      FieldName = 'HAS_BALANCE'
    end
    object qryPAccDTYPE_ID_1: TSmallintField
      FieldName = 'DTYPE_ID_1'
    end
    object qryPAccFOLLOW_BAL_1: TSmallintField
      FieldName = 'FOLLOW_BAL_1'
    end
    object qryPAccACC_MAP_ID: TWideStringField
      FieldName = 'ACC_MAP_ID'
      Size = 15
    end
  end
  object dsPAcc: TDataSource
    DataSet = qryPAcc
    Left = 602
    Top = 339
  end
  object qryDocList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'kyht'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tungay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denngay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'doctype_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DOCUMENTS'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    EditSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'doc_id'
      'period_id'
      'branch_id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDocListBeforeEdit
    BeforeDelete = qryDocListBeforeDelete
    AfterDelete = qryDocListAfterDelete
    BeforeOpen = qryDocListBeforeOpen
    OnDeleteError = qryDocListDeleteError
    DataSource = dsDocType
    SQL.Strings = (
      
        'select doc_id, doc_date, doc_total, doc_person, doc_notes, docty' +
        'pe_id,document_tag,'
      
        '      period_id,template_id, OBJECT_NAME, OBJECT_ID, HASTEMPLATE' +
        ', doc_voucher,branch_id,branch_name,doc_personaddr'
      'from SP_GETDOCLIST(:kyht,:tungay,:denngay,:branch_id)'
      'where doctype_id=:doctype_id order by BRANCH_ID,doc_id')
    FieldOptions = []
    Left = 510
    Top = 16
    object qryDocListDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
    end
    object qryDocListDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
    end
    object qryDocListTEMPLATE_ID: TIntegerField
      FieldName = 'TEMPLATE_ID'
    end
    object qryDocListPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryDocListDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Size = 45
    end
    object qryDocListDOC_PERSON: TWideStringField
      FieldName = 'DOC_PERSON'
      Size = 189
    end
    object qryDocListDOC_NOTES: TWideStringField
      FieldName = 'DOC_NOTES'
      Size = 765
    end
    object qryDocListOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 381
    end
    object qryDocListOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 45
    end
    object qryDocListHASTEMPLATE: TWideStringField
      FieldName = 'HASTEMPLATE'
      Size = 3
    end
    object qryDocListDOC_TOTAL: TIBOFloatField
      FieldName = 'DOC_TOTAL'
    end
    object qryDocListDOC_VOUCHER: TWideStringField
      FieldName = 'DOC_VOUCHER'
      Size = 126
    end
    object qryDocListDOCUMENT_TAG: TSmallintField
      FieldName = 'DOCUMENT_TAG'
    end
    object qryDocListBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
    object qryDocListBRANCH_NAME: TWideStringField
      FieldName = 'BRANCH_NAME'
      Size = 126
    end
    object qryDocListDOC_PERSONADDR: TWideStringField
      FieldName = 'DOC_PERSONADDR'
      Size = 126
    end
  end
  object DsDocList: TDataSource
    DataSet = qryDocList
    Left = 510
    Top = 33
  end
  object tsPopup: TIB_Transaction
    IB_Connection = cnMain
    AutoCommit = True
    Isolation = tiCommitted
    Left = 284
    Top = 331
  end
  object tsMain: TIB_Transaction
    IB_Connection = cnMain
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 12
    Top = 74
  end
  object qryAssetList: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_LIST'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE ASSET_LIST SET'
      '   AMOR_VALUE = :AMOR_VALUE'
      'WHERE'
      '   ASSET_ID = :OLD_OBJECT_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryAssetListBeforeDelete
    AfterDelete = qryAssetListAfterDelete
    BeforeOpen = qryAssetListBeforeOpen
    OnCalcFields = qryAssetListCalcFields
    OnDeleteError = qryAssetListDeleteError
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , GROUP_ID'
      '     , ACCOUNT_ID '
      '     , NGUYENGIA'
      '     , HAOMON'
      '     , AMOR_VALUE'
      '     , ALLOCATE_ACC'
      '     , AMORTISE_ACC'
      '     , AMOR_PERCENT'
      '     , USING_LIFE'
      '     , GTCL'
      '     , USEOBJECT_ID'
      '     , USEOBJECT_DETAIL'
      '     , USEOBJECT_DETAIL_1'
      '     , OBRANCH_ID'
      'FROM SP_DANHSACHTSCD(:PERIOD_ID,:BRANCH_ID)'
      'Order by  OBJECT_ID')
    FieldOptions = []
    Left = 12
    Top = 248
    object qryAssetListOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryAssetListOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryAssetListOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryAssetListOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryAssetListOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryAssetListOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryAssetListGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 30
    end
    object qryAssetListACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 15
    end
    object qryAssetListALLOCATE_ACC: TWideStringField
      FieldName = 'ALLOCATE_ACC'
      Size = 15
    end
    object qryAssetListAMORTISE_ACC: TWideStringField
      FieldName = 'AMORTISE_ACC'
      Size = 15
    end
    object qryAssetListUSEOBJECT_ID: TWideStringField
      FieldName = 'USEOBJECT_ID'
      Size = 30
    end
    object qryAssetListNGUYENGIA: TIBOFloatField
      FieldName = 'NGUYENGIA'
    end
    object qryAssetListHAOMON: TIBOFloatField
      FieldName = 'HAOMON'
    end
    object qryAssetListAMOR_VALUE: TIBOFloatField
      FieldName = 'AMOR_VALUE'
    end
    object qryAssetListGTCL: TIBOFloatField
      FieldName = 'GTCL'
    end
    object qryAssetListAMOR_PERCENT: TIBOFloatField
      FieldName = 'AMOR_PERCENT'
    end
    object qryAssetListUSING_LIFE: TIBOFloatField
      FieldName = 'USING_LIFE'
    end
    object qryAssetListUSEOBJECT_DETAIL: TWideStringField
      FieldName = 'USEOBJECT_DETAIL'
      Size = 90
    end
    object qryAssetListOBRANCH_ID: TWideStringField
      FieldName = 'OBRANCH_ID'
      Size = 21
    end
    object qryAssetListUSEOBJECT_DETAIL_1: TWideStringField
      FieldName = 'USEOBJECT_DETAIL_1'
      Size = 90
    end
  end
  object dsAssetList: TDataSource
    DataSet = qryAssetList
    Left = 12
    Top = 265
  end
  object qryRegTransfer: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM REGTRANSFER'
      'WHERE'
      '   SOTTKC = :OLD_SOTTKC')
    EditSQL.Strings = (
      'UPDATE REGTRANSFER SET'
      '   SOTTKC = :SOTTKC, /*PK*/'
      '   FROM_ACCOUNT = :FROM_ACCOUNT,'
      '   TO_ACCOUNT = :TO_ACCOUNT,'
      '   TRANSFER_NOTE = :TRANSFER_NOTE,'
      '   PTKETCHUYEN = :PTKETCHUYEN'
      'WHERE'
      '   SOTTKC = :OLD_SOTTKC')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO REGTRANSFER('
      '   SOTTKC, /*PK*/'
      '   FROM_ACCOUNT,'
      '   TO_ACCOUNT,'
      '   TRANSFER_NOTE,'
      '   PTKETCHUYEN)'
      'VALUES ('
      '   :SOTTKC,'
      '   :FROM_ACCOUNT,'
      '   :TO_ACCOUNT,'
      '   :TRANSFER_NOTE,'
      '   :PTKETCHUYEN)')
    KeyLinks.Strings = (
      'SOTTKC')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegTransferBeforeEdit
    BeforeDelete = qryRegTransferBeforeDelete
    BeforeInsert = qryRegTransferBeforeInsert
    AfterInsert = qryRegTransferAfterInsert
    BeforePost = qryRegTransferBeforePost
    OnNewRecord = qryRegTransferNewRecord
    OnPostError = qryRegTransferPostError
    SQL.Strings = (
      'SELECT FROM_ACCOUNT'
      '     , TO_ACCOUNT'
      '     , TRANSFER_NOTE'
      '     , PTKETCHUYEN'
      '     , SOTTKC'
      'FROM REGTRANSFER'
      'order by SOTTKC')
    FieldOptions = []
    Left = 464
    Top = 100
    object qryRegTransferFROM_ACCOUNT: TWideStringField
      FieldName = 'FROM_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryRegTransferTO_ACCOUNT: TWideStringField
      FieldName = 'TO_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryRegTransferTRANSFER_NOTE: TWideStringField
      FieldName = 'TRANSFER_NOTE'
      Size = 126
    end
    object qryRegTransferPTKETCHUYEN: TIBOFloatField
      FieldName = 'PTKETCHUYEN'
    end
    object qryRegTransferSOTTKC: TSmallintField
      FieldName = 'SOTTKC'
      Required = True
    end
  end
  object dsRegTransfer: TDataSource
    DataSet = qryRegTransfer
    Left = 464
    Top = 116
  end
  object qryRegAllocate: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM REGALLOCATE'
      'WHERE'
      '   FROM_ACCOUNT = :OLD_FROM_ACCOUNT')
    EditSQL.Strings = (
      'UPDATE REGALLOCATE SET'
      '   FROM_ACCOUNT =:FROM_ACCOUNT, /*PK*/'
      '   TO_ACCOUNT = :TO_ACCOUNT,'
      '   ALLOCATE_NOTE = :ALLOCATE_NOTE   '
      'WHERE'
      '   FROM_ACCOUNT = :OLD_FROM_ACCOUNT')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO REGALLOCATE('
      '   FROM_ACCOUNT, /*PK*/'
      '   TO_ACCOUNT,'
      '   ALLOCATE_NOTE)'
      'VALUES ('
      '   :FROM_ACCOUNT,'
      '   :TO_ACCOUNT,'
      '   :ALLOCATE_NOTE)')
    KeyLinks.Strings = (
      'FROM_ACCOUNT')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegAllocateBeforeEdit
    BeforeDelete = qryRegAllocateBeforeDelete
    BeforeInsert = qryRegAllocateBeforeInsert
    AfterInsert = qryRegAllocateAfterInsert
    BeforePost = qryRegAllocateBeforePost
    OnPostError = qryRegAllocatePostError
    SQL.Strings = (
      'SELECT FROM_ACCOUNT'
      '     , TO_ACCOUNT'
      '     , ALLOCATE_NOTE'
      'FROM REGALLOCATE')
    FieldOptions = []
    Left = 543
    Top = 100
    object qryRegAllocateFROM_ACCOUNT: TWideStringField
      FieldName = 'FROM_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryRegAllocateTO_ACCOUNT: TWideStringField
      FieldName = 'TO_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryRegAllocateALLOCATE_NOTE: TWideStringField
      FieldName = 'ALLOCATE_NOTE'
      Size = 126
    end
  end
  object dsRegAllocate: TDataSource
    DataSet = qryRegAllocate
    Left = 543
    Top = 116
  end
  object qryPWare: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'WAREHOUSE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WAREHOUSE_ID'
      '     , WAREHOUSE_NAME'
      '     , WAREHOUSE_ADDR'
      'FROM WAREHOUSE'
      'order by WAREHOUSE_ID')
    FieldOptions = []
    Left = 533
    Top = 325
    object qryPWareWAREHOUSE_ID: TWideStringField
      FieldName = 'WAREHOUSE_ID'
      Required = True
      Size = 15
    end
    object qryPWareWAREHOUSE_NAME: TWideStringField
      FieldName = 'WAREHOUSE_NAME'
      Size = 126
    end
    object qryPWareWAREHOUSE_ADDR: TWideStringField
      FieldName = 'WAREHOUSE_ADDR'
      Size = 126
    end
  end
  object dsPWare: TDataSource
    DataSet = qryPWare
    Left = 533
    Top = 339
  end
  object SaveDlg: TSaveDialog
    Filter = 'Excel Files|*.xls|Web Page Files|*.html|XML Files|*.xml'
    FilterIndex = 0
    Left = 221
    Top = 454
  end
  object qryAccountArise: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TUKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsMDIChild
    KeyLinks.Strings = (
      'shtk')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT shtk,tentk,tenta,nodk,codk,nops,cops,nock,cock FROM sp_bc' +
        '_bangcandoips(:TUKY, :DENKY,'#39#39',:branch_id) Order by shtk')
    FieldOptions = []
    Left = 823
    Top = 100
    object qryAccountAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 45
    end
    object qryAccountAriseTENTK: TWideStringField
      FieldName = 'TENTK'
      Size = 381
    end
    object qryAccountAriseNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryAccountAriseCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryAccountAriseNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryAccountAriseCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryAccountAriseNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryAccountAriseCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
    object qryAccountAriseTENTA: TWideStringField
      FieldName = 'TENTA'
      Size = 126
    end
  end
  object dsAccountArise: TDataSource
    DataSet = qryAccountArise
    Left = 823
    Top = 117
  end
  object tsMain_2: TIB_Transaction
    IB_Connection = cnMain
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 12
    Top = 118
  end
  object ActionList1: TActionList
    Left = 221
    Top = 393
    object acFormatData: TAction
      Caption = 'Format Data'
      OnExecute = acFormatDataExecute
    end
    object acUnlockData: TAction
      Caption = 'acUnlockData'
      OnExecute = acUnlockDataExecute
    end
    object acLoadUserRight: TAction
      Caption = 'acLoadUserRight'
      OnExecute = acLoadUserRightExecute
    end
    object acCalThanhtien: TAction
      Caption = 'acCalThanhtien'
    end
    object acFilterNormalAcc: TAction
      Caption = 'acFilterNormalAcc'
      OnExecute = acFilterNormalAccExecute
    end
    object acBackupData: TAction
      Caption = 'acBackupData'
      OnExecute = acBackupDataExecute
    end
    object acLoadFilterCond: TAction
      Caption = 'acLoadFilterCond'
      OnExecute = acLoadFilterCondExecute
    end
  end
  object qryGenDocNo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'loaiphieu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TUKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENKY'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    InsertSQL.Strings = (
      '')
    KeyLinks.Strings = (
      'doc_id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select doc_id from documents  '
      'where DOCTYPE_ID=:loaiphieu'
      'and period_id between :TUKY AND :DENKY '
      'order by doc_id desc')
    FieldOptions = []
    Left = 6
    Top = 393
    object qryGenDocNoDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 93
    end
  end
  object dsInstock: TDataSource
    DataSet = qryInstock
    Left = 682
    Top = 199
  end
  object qryInstock: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM INSTOCKS'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   WAREHOUSE_ID = :OLD_WAREHOUSE_ID')
    EditSQL.Strings = (
      'UPDATE INSTOCKS SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   WAREHOUSE_ID = :WAREHOUSE_ID, /*PK*/'
      '   BEGIN_AMOUNT = :BEGIN_AMOUNT,'
      '   BEGIN_VALUE = :BEGIN_VALUE,'
      '   BEGIN_PRICE = :BEGIN_PRICE'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   WAREHOUSE_ID = :OLD_WAREHOUSE_ID')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsMDIChild
    InsertSQL.Strings = (
      'INSERT INTO INSTOCKS('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   WAREHOUSE_ID, /*PK*/'
      '   BEGIN_AMOUNT,'
      '   BEGIN_VALUE,'
      '   BEGIN_PRICE)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :WAREHOUSE_ID,'
      '   :BEGIN_AMOUNT,'
      '   :BEGIN_VALUE,'
      '   :BEGIN_PRICE)')
    KeyLinks.Strings = (
      'INSTOCKS.OBJECT_ID'
      'INSTOCKS.OTYPE_ID'
      'ACCOUNT_ID'
      'WAREHOUSE_ID'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryInstockBeforeEdit
    BeforeDelete = qryInstockBeforeDelete
    BeforeInsert = qryInstockBeforeInsert
    AfterInsert = qryInstockAfterInsert
    BeforePost = qryInstockBeforePost
    OnFilterRecord = qryInstockFilterRecord
    OnNewRecord = qryInstockNewRecord
    OnPostError = qryInstockPostError
    DataSource = dsPAcc
    SQL.Strings = (
      'SELECT INSTOCKS.OBJECT_ID'
      '     , ACCOUNT_ID'
      '     , WAREHOUSE_ID'
      '     , PERIOD_ID'
      '     , BEGIN_AMOUNT'
      '     , BEGIN_VALUE'
      '     , OBJECT_NAME'
      '     , INSTOCKS.OTYPE_ID'
      '     , BEGIN_PRICE'
      '     , BRANCH_ID'
      'FROM INSTOCKS'
      'JOIN OBJECT_LIST on (INSTOCKS.OBJECT_ID=OBJECT_LIST.OBJECT_ID '
      '    and INSTOCKS.OTYPE_ID =OBJECT_LIST.OTYPE_ID)'
      'where PERIOD_ID=:PERIOD_ID and OBJECT_LIST.OTYPE_ID=2'
      'and ACCOUNT_ID=:ACCOUNT_ID and BRANCH_ID =:BRANCH_ID'
      'order by INSTOCKS.OBJECT_ID')
    FieldOptions = []
    Left = 682
    Top = 178
    object qryInstockPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryInstockACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryInstockWAREHOUSE_ID: TWideStringField
      FieldName = 'WAREHOUSE_ID'
      Required = True
      Size = 15
    end
    object qryInstockOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryInstockBEGIN_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'BEGIN_AMOUNT'
      OnChange = qryInstockBEGIN_AMOUNTChange
    end
    object qryInstockBEGIN_PRICE: TIBOFloatField
      FieldName = 'BEGIN_PRICE'
      OnChange = qryInstockBEGIN_PRICEChange
    end
    object qryInstockBEGIN_VALUE: TIBOFloatField
      FieldName = 'BEGIN_VALUE'
    end
    object qryInstockOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryInstockOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryInstockBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsParams: TDataSource
    DataSet = qryParams
    Left = 76
    Top = 116
  end
  object qryRegKCLL: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM KETCHUYENLAILO'
      'WHERE'
      '   FROM_ACCOUNT = :OLD_FROM_ACCOUNT')
    EditSQL.Strings = (
      'UPDATE KETCHUYENLAILO SET'
      '   FROM_ACCOUNT =:FROM_ACCOUNT, /*PK*/'
      '   TO_ACCOUNT = :TO_ACCOUNT,'
      '   DOANHTHU = :DOANHTHU,'
      '   CHIPHI = :CHIPHI,'
      '   LAILO_NOTE = :LAILO_NOTE'
      'WHERE'
      '   FROM_ACCOUNT = :OLD_FROM_ACCOUNT')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO KETCHUYENLAILO('
      '   FROM_ACCOUNT, /*PK*/'
      '   TO_ACCOUNT,'
      '   DOANHTHU,'
      '   CHIPHI,'
      '   LAILO_NOTE)'
      'VALUES ('
      '   :FROM_ACCOUNT,'
      '   :TO_ACCOUNT,'
      '   :DOANHTHU,'
      '   :CHIPHI,'
      '   :LAILO_NOTE)')
    KeyLinks.Strings = (
      'FROM_ACCOUNT')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegKCLLBeforeEdit
    BeforeDelete = qryRegTransferBeforeDelete
    BeforeInsert = qryRegKCLLBeforeInsert
    AfterInsert = qryRegKCLLAfterInsert
    BeforePost = qryRegKCLLBeforePost
    OnPostError = qryRegKCLLPostError
    SQL.Strings = (
      'SELECT FROM_ACCOUNT'
      '     , TO_ACCOUNT'
      '     , LAILO_NOTE'
      '     , DOANHTHU'
      '     , CHIPHI'
      'FROM KETCHUYENLAILO')
    FieldOptions = []
    Left = 395
    Top = 100
    object qryRegKCLLFROM_ACCOUNT: TWideStringField
      FieldName = 'FROM_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryRegKCLLTO_ACCOUNT: TWideStringField
      FieldName = 'TO_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryRegKCLLLAILO_NOTE: TWideStringField
      FieldName = 'LAILO_NOTE'
      Size = 126
    end
    object qryRegKCLLDOANHTHU: TIBOFloatField
      FieldName = 'DOANHTHU'
    end
    object qryRegKCLLCHIPHI: TIBOFloatField
      FieldName = 'CHIPHI'
    end
  end
  object dsRegKCLL: TDataSource
    DataSet = qryRegKCLL
    Left = 395
    Top = 116
  end
  object dplHSCT: TppDBPipeline
    DataSource = dsHSCT
    UserName = 'dplHSCT'
    Left = 221
    Top = 331
  end
  object qryDocListAnyWhere: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DOCUMENTS'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE DOCUMENTS SET'
      '   DOC_DATE = :DOC_DATE'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryDocListAnyWhereBeforeOpen
    SQL.Strings = (
      'SELECT distinct DOCUMENTS.DOC_ID'
      '     , DOCUMENTS.PERIOD_ID'
      '     , DOCTYPE_ID'
      '     , DOC_DATE'
      '     , DOC_PERSON'
      '     , DOC_VOUCHER'
      '     , DOC_TOTAL'
      '     , DOC_NOTES'
      '     , OBJECT_ID'
      '     , OBJECT_NAME'
      '     , BRANCH_ID'
      'FROM DOCUMENTS'
      
        'left join object_list on (DOCUMENTS.madoituong= object_list.obje' +
        'ct_id and '
      '         DOCUMENTS.loaidoituong= object_list.otype_id )'
      'LEFT JOIN DOC_ENTRYS on (DOCUMENTS.DOC_ID= DOC_ENTRYS.DOC_ID'
      ' and DOCUMENTS.PERIOD_ID= DOC_ENTRYS.PERIOD_ID)')
    FieldOptions = []
    Left = 859
    Top = 18
  end
  object dsDocListAnyWhere: TDataSource
    DataSet = qryDocListAnyWhere
    Left = 859
    Top = 33
  end
  object qryRegForBills: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM REGFORBILL'
      'WHERE'
      '   LOAIPBH = :OLD_LOAIPBH')
    EditSQL.Strings = (
      'UPDATE REGFORBILL SET'
      '   LOAIPBH = :LOAIPBH, /*PK*/'
      '   LOAIPXK = :LOAIPXK,'
      '   IS_ACTIVE = :IS_ACTIVE'
      'WHERE'
      '   LOAIPBH = :OLD_LOAIPBH')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO REGFORBILL('
      '   LOAIPBH, /*PK*/'
      '   LOAIPXK,'
      '   IS_ACTIVE)'
      'VALUES ('
      '   :LOAIPBH,'
      '   :LOAIPXK,'
      '   :IS_ACTIVE)')
    KeyLinks.Strings = (
      'LOAIPBH')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegForBillsBeforeEdit
    BeforeDelete = qryRegForBillsBeforeDelete
    BeforeInsert = qryRegForBillsBeforeInsert
    AfterInsert = qryRegForBillsAfterInsert
    BeforePost = qryRegForBillsBeforePost
    OnPostError = qryRegForBillsPostError
    SQL.Strings = (
      'SELECT LOAIPBH'
      '     , LOAIPXK'
      '     , PBH.DOCTYPE_NAME TENLOAIPBH'
      '     , PXK.DOCTYPE_NAME TENLOAIPXK'
      '     , IS_ACTIVE'
      'FROM REGFORBILL'
      'JOIN DOC_TYPE PBH on (REGFORBILL.LOAIPBH = PBH.DOCTYPE_ID)'
      'JOIN DOC_TYPE PXK on (REGFORBILL.LOAIPXK = PXK.DOCTYPE_ID)')
    FieldOptions = []
    Left = 618
    Top = 100
    object qryRegForBillsLOAIPBH: TIntegerField
      FieldName = 'LOAIPBH'
      Required = True
    end
    object qryRegForBillsLOAIPXK: TIntegerField
      FieldName = 'LOAIPXK'
      Required = True
    end
    object qryRegForBillsTENLOAIPBH: TWideStringField
      FieldName = 'TENLOAIPBH'
      Size = 126
    end
    object qryRegForBillsTENLOAIPXK: TWideStringField
      FieldName = 'TENLOAIPXK'
      Size = 126
    end
    object qryRegForBillsIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
    end
  end
  object dsRegForBills: TDataSource
    DataSet = qryRegForBills
    Left = 618
    Top = 116
  end
  object qryPDocType: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'DOCTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DOCTYPE_ID'
      '     , DOCTYPE_NAME'
      '     , PDOC_TYPE'
      '     , ENGLISH_NAME'
      'FROM DOC_TYPE '
      'where HIENTHI=1 '
      'order by  THUTUSAPXEP')
    FieldOptions = []
    Left = 744
    Top = 325
    object qryPDocTypeDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Required = True
    end
    object qryPDocTypeDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
    object qryPDocTypePDOC_TYPE: TSmallintField
      FieldName = 'PDOC_TYPE'
    end
    object qryPDocTypeENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
  end
  object dsPDocType: TDataSource
    DataSet = qryPDocType
    Left = 744
    Top = 343
  end
  object qryProductInfo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'PERIOD_ID'
      'PRODUCTION_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    OnCalcFields = qryProductInfoCalcFields
    DataSource = dsPComObj
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , PRODUCTION_ID'
      '     , PRODUCTION_AMOUNT'
      '     , LABOUR_COST'
      '     , MATERIAL_COST'
      '     , OTHER_COST'
      '     , OBJECT_NAME'
      '     , MAPX'
      '     , MALOAI'
      '     , INPLANVALUE'
      'FROM PRODUCTION_INFO'
      
        'JOIN OBJECT_LIST on (PRODUCTION_INFO.PRODUCTION_ID=OBJECT_LIST.O' +
        'BJECT_ID and OTYPE_ID=2)'
      
        'where PERIOD_ID=:PERIOD_ID and MAPX=:OBJECT_ID and MALOAI=6 orde' +
        'r by PRODUCTION_ID')
    FieldOptions = []
    Left = 787
    Top = 250
    object qryProductInfoTongcong: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Tongcong'
      Calculated = True
    end
    object qryProductInfoCPNC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPNC'
      Calculated = True
    end
    object qryProductInfoCPNVL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPNVL'
      Calculated = True
    end
    object qryProductInfoCPSXC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPSXC'
      Calculated = True
    end
    object qryProductInfoMALOAI: TSmallintField
      FieldName = 'MALOAI'
      Required = True
    end
    object qryProductInfoPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryProductInfoPRODUCTION_ID: TWideStringField
      FieldName = 'PRODUCTION_ID'
      Required = True
      Size = 30
    end
    object qryProductInfoOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryProductInfoMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryProductInfoPRODUCTION_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'PRODUCTION_AMOUNT'
    end
    object qryProductInfoLABOUR_COST: TIBOFloatField
      FieldName = 'LABOUR_COST'
    end
    object qryProductInfoMATERIAL_COST: TIBOFloatField
      FieldName = 'MATERIAL_COST'
    end
    object qryProductInfoOTHER_COST: TIBOFloatField
      FieldName = 'OTHER_COST'
    end
    object qryProductInfoINPLANVALUE: TIBOFloatField
      FieldName = 'INPLANVALUE'
    end
    object qryProductInfoGIATHANHDV: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GIATHANHDV'
      Calculated = True
    end
  end
  object dsProductInfo: TDataSource
    DataSet = qryProductInfo
    Left = 787
    Top = 265
  end
  object qryUser: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_LIST'
      'WHERE'
      '   USER_NAME = :OLD_USER_NAME')
    EditSQL.Strings = (
      'UPDATE USER_LIST SET'
      '   USER_NAME = :USER_NAME, /*PK*/'
      '   FULL_NAME = :FULL_NAME,'
      '   USER_PWD = :USER_PWD,'
      '   LAST_ACCESS = :LAST_ACCESS,'
      '   ACCESSCOUNT = :ACCESSCOUNT,'
      '   HASLICIENSE = :HASLICIENSE'
      'WHERE'
      '   USER_NAME = :OLD_USER_NAME')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO USER_LIST('
      '   USER_NAME, /*PK*/'
      '   FULL_NAME,'
      '   USER_PWD,'
      '   LAST_ACCESS,'
      '   ACCESSCOUNT,'
      '   HASLICIENSE)'
      'VALUES ('
      '   :USER_NAME,'
      '   :FULL_NAME,'
      '   :USER_PWD,'
      '   :LAST_ACCESS,'
      '   :ACCESSCOUNT,'
      '   :HASLICIENSE)')
    KeyLinks.Strings = (
      'USER_NAME')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , FULL_NAME'
      '     , USER_PWD'
      '     , LAST_ACCESS'
      '     , ACCESSCOUNT'
      '     , HASLICIENSE'
      'FROM USER_LIST')
    FieldOptions = []
    Left = 82
    Top = 325
    object qryUserLAST_ACCESS: TDateTimeField
      FieldName = 'LAST_ACCESS'
    end
    object qryUserACCESSCOUNT: TIntegerField
      FieldName = 'ACCESSCOUNT'
    end
    object qryUserUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryUserFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryUserUSER_PWD: TWideStringField
      FieldName = 'USER_PWD'
      Size = 63
    end
    object qryUserHASLICIENSE: TSmallintField
      FieldName = 'HASLICIENSE'
    end
  end
  object dsUser: TDataSource
    DataSet = qryUser
    Left = 82
    Top = 339
  end
  object qryUserRight: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'MODUL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsUser
    SQL.Strings = (
      'SELECT MODUL_ID'
      '     , ALLOWREAD'
      '     , ALLOWINSERT'
      '     , ALLOWEDIT'
      '     , ALLOWDELETE'
      'FROM SP_GETRIGHT_MODULE(:USERNAME,:GROUP_ID,:BRANCH_ID)')
    FieldOptions = []
    Left = 150
    Top = 325
    object qryUserRightMODUL_ID: TSmallintField
      FieldName = 'MODUL_ID'
      Required = True
    end
    object qryUserRightALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryUserRightALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
    end
    object qryUserRightALLOWEDIT: TSmallintField
      FieldName = 'ALLOWEDIT'
    end
    object qryUserRightALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
    end
  end
  object qryEntrys: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'tuky'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'denky'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'branch_id'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'sophieu')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select madtco,madtno,ngaylap,noidung,sophieu,sotien,tendtco,tend' +
        'tno,tkco,tkno, branch_id '
      'from sp_getallentry (:tuky,:denky,:branch_id) order by TKNO')
    FieldOptions = []
    Left = 757
    Top = 100
    object qryEntrysNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
    end
    object qryEntrysMADTCO: TWideStringField
      FieldName = 'MADTCO'
      Size = 93
    end
    object qryEntrysMADTNO: TWideStringField
      FieldName = 'MADTNO'
      Size = 93
    end
    object qryEntrysNOIDUNG: TWideStringField
      FieldName = 'NOIDUNG'
      Size = 765
    end
    object qryEntrysSOPHIEU: TWideStringField
      FieldName = 'SOPHIEU'
      Size = 93
    end
    object qryEntrysTENDTCO: TWideStringField
      FieldName = 'TENDTCO'
      Size = 381
    end
    object qryEntrysTENDTNO: TWideStringField
      FieldName = 'TENDTNO'
      Size = 381
    end
    object qryEntrysTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 45
    end
    object qryEntrysTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 45
    end
    object qryEntrysSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
    end
    object qryEntrysBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
  end
  object dsEntrys: TDataSource
    DataSet = qryEntrys
    Left = 757
    Top = 116
  end
  object qryObjectType: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_TYPE'
      'WHERE'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_TYPE SET'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   OTYPE_NAME = :OTYPE_NAME,'
      '   ID_CAPTION = :ID_CAPTION,'
      '   NAME_CAPTION = :NAME_CAPTION,'
      '   OTHER_CAPTION = :OTHER_CAPTION,'
      '   SUB1_CAPTION = :SUB1_CAPTION,'
      '   SUB2_CAPTION = :SUB2_CAPTION,'
      '   NOTE_CAPTION = :NOTE_CAPTION,'
      '   OTYPE_NOTE = :OTYPE_NOTE,'
      '   SHORT_NAME = :SHORT_NAME,'
      '   GROUP_NAME = :GROUP_NAME,'
      '   LOAIDTTC = :LOAIDTTC,'
      '   DATE_CAPTION = :DATE_CAPTION,'
      '   VALUE_CAPTION = :VALUE_CAPTION,'
      '   INT_CAPTION = :INT_CAPTION,'
      '   SUB3_CAPTION = :SUB3_CAPTION,'
      '   SUB4_CAPTION = :SUB4_CAPTION,'
      '   SUB5_CAPTION = :SUB5_CAPTION,'
      '   SUB6_CAPTION = :SUB6_CAPTION,'
      '   ID_FORMAT = :ID_FORMAT,'
      '   LOAIDTTC2 = :LOAIDTTC2'
      'WHERE'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_TYPE('
      '   OTYPE_ID, /*PK*/'
      '   OTYPE_NAME,'
      '   ID_CAPTION,'
      '   NAME_CAPTION,'
      '   OTHER_CAPTION,'
      '   SUB1_CAPTION,'
      '   SUB2_CAPTION,'
      '   NOTE_CAPTION,'
      '   OTYPE_NOTE,'
      '   SHORT_NAME,'
      '   GROUP_NAME,'
      '   LOAIDTTC,'
      '   DATE_CAPTION,'
      '   VALUE_CAPTION,'
      '   INT_CAPTION,'
      '   SUB3_CAPTION,'
      '   SUB4_CAPTION,'
      '   SUB5_CAPTION,'
      '   SUB6_CAPTION,'
      '   ID_FORMAT,'
      '   LOAIDTTC2)'
      'VALUES ('
      '   :OTYPE_ID,'
      '   :OTYPE_NAME,'
      '   :ID_CAPTION,'
      '   :NAME_CAPTION,'
      '   :OTHER_CAPTION,'
      '   :SUB1_CAPTION,'
      '   :SUB2_CAPTION,'
      '   :NOTE_CAPTION,'
      '   :OTYPE_NOTE,'
      '   :SHORT_NAME,'
      '   :GROUP_NAME,'
      '   :LOAIDTTC,'
      '   :DATE_CAPTION,'
      '   :VALUE_CAPTION,'
      '   :INT_CAPTION,'
      '   :SUB3_CAPTION,'
      '   :SUB4_CAPTION,'
      '   :SUB5_CAPTION,'
      '   :SUB6_CAPTION,'
      '   :ID_FORMAT,'
      '   :LOAIDTTC2)')
    KeyLinks.Strings = (
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryObjectTypeBeforeEdit
    BeforeDelete = qryObjectTypeBeforeDelete
    AfterDelete = qryObjectTypeAfterDelete
    BeforeInsert = qryObjectTypeBeforeInsert
    AfterInsert = qryObjectTypeAfterInsert
    AfterOpen = qryObjectTypeAfterOpen
    BeforePost = qryObjectTypeBeforePost
    AfterPost = qryObjectTypeAfterPost
    OnNewRecord = qryObjectTypeNewRecord
    OnPostError = qryObjectTypePostError
    OnDeleteError = qryObjectTypeDeleteError
    SQL.Strings = (
      'SELECT LOAIDT.OTYPE_ID'
      '     , LOAIDT.OTYPE_NAME'
      '     , LOAIDT.ID_CAPTION'
      '     , LOAIDT.NAME_CAPTION'
      '     , LOAIDT.OTHER_CAPTION'
      '     , LOAIDT.SUB1_CAPTION'
      '     , LOAIDT.SUB2_CAPTION'
      '     , LOAIDT.NOTE_CAPTION'
      '     , LOAIDT.OTYPE_NOTE'
      '     , LOAIDT.SHORT_NAME'
      '     , LOAIDT.GROUP_NAME'
      '     , LOAIDT.LOAIDTTC'
      '     , THAMCHIEU.SHORT_NAME TENDTTC'
      '     , LOAIDT.DATE_CAPTION'
      '     , LOAIDT.VALUE_CAPTION'
      '     , LOAIDT.INT_CAPTION'
      '     , LOAIDT.SUB3_CAPTION'
      '     , LOAIDT.SUB4_CAPTION'
      '     , LOAIDT.SUB5_CAPTION'
      '     , LOAIDT.SUB6_CAPTION'
      '     , LOAIDT.ID_FORMAT'
      '     , LOAIDT.LOAIDTTC2'
      '     , THAMCHIEU2.SHORT_NAME TENDTTC2'
      'FROM OBJECT_TYPE LOAIDT'
      
        'LEFT JOIN OBJECT_TYPE THAMCHIEU on (LOAIDT.LOAIDTTC=THAMCHIEU.OT' +
        'YPE_ID)'
      
        'LEFT JOIN OBJECT_TYPE THAMCHIEU2 on (LOAIDT.LOAIDTTC2=THAMCHIEU2' +
        '.OTYPE_ID)'
      'order by LOAIDT.OTYPE_ID')
    FieldOptions = []
    Left = 327
    Top = 18
    object qryObjectTypeOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryObjectTypeOTYPE_NAME: TWideStringField
      FieldName = 'OTYPE_NAME'
      Size = 126
    end
    object qryObjectTypeID_CAPTION: TWideStringField
      FieldName = 'ID_CAPTION'
      Size = 63
    end
    object qryObjectTypeNAME_CAPTION: TWideStringField
      FieldName = 'NAME_CAPTION'
      Size = 63
    end
    object qryObjectTypeOTHER_CAPTION: TWideStringField
      FieldName = 'OTHER_CAPTION'
      Size = 63
    end
    object qryObjectTypeSUB1_CAPTION: TWideStringField
      FieldName = 'SUB1_CAPTION'
      Size = 63
    end
    object qryObjectTypeSUB2_CAPTION: TWideStringField
      FieldName = 'SUB2_CAPTION'
      Size = 63
    end
    object qryObjectTypeNOTE_CAPTION: TWideStringField
      FieldName = 'NOTE_CAPTION'
      Size = 63
    end
    object qryObjectTypeOTYPE_NOTE: TWideStringField
      FieldName = 'OTYPE_NOTE'
      Size = 63
    end
    object qryObjectTypeGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 30
    end
    object qryObjectTypeLOAIDTTC: TSmallintField
      FieldName = 'LOAIDTTC'
    end
    object qryObjectTypeTENDTTC: TWideStringField
      FieldName = 'TENDTTC'
      Size = 30
    end
    object qryObjectTypeDATE_CAPTION: TWideStringField
      FieldName = 'DATE_CAPTION'
      Size = 63
    end
    object qryObjectTypeVALUE_CAPTION: TWideStringField
      FieldName = 'VALUE_CAPTION'
      Size = 63
    end
    object qryObjectTypeINT_CAPTION: TWideStringField
      FieldName = 'INT_CAPTION'
      Size = 63
    end
    object qryObjectTypeSUB3_CAPTION: TWideStringField
      FieldName = 'SUB3_CAPTION'
      Size = 63
    end
    object qryObjectTypeSUB4_CAPTION: TWideStringField
      FieldName = 'SUB4_CAPTION'
      Size = 63
    end
    object qryObjectTypeSUB5_CAPTION: TWideStringField
      FieldName = 'SUB5_CAPTION'
      Size = 63
    end
    object qryObjectTypeSUB6_CAPTION: TWideStringField
      FieldName = 'SUB6_CAPTION'
      Size = 63
    end
    object qryObjectTypeSHORT_NAME: TWideStringField
      FieldName = 'SHORT_NAME'
      Required = True
      Size = 30
    end
    object qryObjectTypeID_FORMAT: TWideStringField
      FieldName = 'ID_FORMAT'
      Size = 30
    end
    object qryObjectTypeLOAIDTTC2: TSmallintField
      FieldName = 'LOAIDTTC2'
    end
    object qryObjectTypeTENDTTC2: TWideStringField
      FieldName = 'TENDTTC2'
      Size = 30
    end
  end
  object dsObjectType: TDataSource
    DataSet = qryObjectType
    Left = 327
    Top = 33
  end
  object qryObject: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_LIST'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_LIST SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   OBJECT_NAME = :OBJECT_NAME,'
      '   OTHER_NAME = :OTHER_NAME,'
      '   SUBINFO_1 = :SUBINFO_1,'
      '   SUBINFO_2 = :SUBINFO_2,'
      '   OBJECT_NOTES = :OBJECT_NOTES,'
      '   OBJECT_STATUS = :OBJECT_STATUS,'
      '   OBJGRP_ID = :OBJGRP_ID,'
      '   OACCOUNT_ID = :OACCOUNT_ID,'
      '   DEBT_LEN = :DEBT_LEN,'
      '   MAKH = :MAKH,'
      '   LOAIKH = :LOAIKH,'
      '   CREATE_DATE = :CREATE_DATE,'
      '   OBJECT_VALUE = :OBJECT_VALUE,'
      '   SUBINFO_3 = :SUBINFO_3,'
      '   SUBINFO_4 = :SUBINFO_4,'
      '   SUBINFO_5 = :SUBINFO_5,'
      '   SUBINFO_6 = :SUBINFO_6,'
      '   LASTUSER_MODIFY = :LASTUSER_MODIFY,'
      '   DISCOUNT_DEF = :DISCOUNT_DEF,'
      '   OTHER_DATE = :OTHER_DATE,'
      '   OBJECT_HIDE = :OBJECT_HIDE,'
      '   MS_PPXK = :MS_PPXK,'
      '   TONKHOTT = :TONKHOTT,'
      '   DEFAULT_UNIT = :DEFAULT_UNIT,'
      '   OBJREF_ID = :OBJREF_ID,'
      '   OREFTYPE_ID = :OREFTYPE_ID'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_LIST('
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   OBJECT_NAME,'
      '   OTHER_NAME,'
      '   SUBINFO_1,'
      '   SUBINFO_2,'
      '   OBJECT_NOTES,'
      '   OBJECT_STATUS,'
      '   OBJGRP_ID,'
      '   OACCOUNT_ID,'
      '   DEBT_LEN,'
      '   MAKH,'
      '   LOAIKH,'
      '   CREATE_DATE,'
      '   OBJECT_VALUE,'
      '   SUBINFO_3,'
      '   SUBINFO_4,'
      '   SUBINFO_5,'
      '   SUBINFO_6,'
      '   LASTUSER_MODIFY,'
      '   DISCOUNT_DEF,'
      '   OTHER_DATE,'
      '   OBJECT_HIDE,'
      '   MS_PPXK,'
      '   TONKHOTT,'
      '   DEFAULT_UNIT,'
      '   OBJREF_ID,'
      '   OREFTYPE_ID)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :OBJECT_NAME,'
      '   :OTHER_NAME,'
      '   :SUBINFO_1,'
      '   :SUBINFO_2,'
      '   :OBJECT_NOTES,'
      '   :OBJECT_STATUS,'
      '   :OBJGRP_ID,'
      '   :OACCOUNT_ID,'
      '   :DEBT_LEN,'
      '   :MAKH,'
      '   :LOAIKH,'
      '   :CREATE_DATE,'
      '   :OBJECT_VALUE,'
      '   :SUBINFO_3,'
      '   :SUBINFO_4,'
      '   :SUBINFO_5,'
      '   :SUBINFO_6,'
      '   :LASTUSER_MODIFY,'
      '   :DISCOUNT_DEF,'
      '   :OTHER_DATE,'
      '   :OBJECT_HIDE,'
      '   :MS_PPXK,'
      '   :TONKHOTT,'
      '   :DEFAULT_UNIT,'
      '   :OBJREF_ID,'
      '   :OREFTYPE_ID)')
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryObjectBeforeEdit
    BeforeDelete = qryObjectBeforeDelete
    AfterDelete = qryObjectAfterDelete
    BeforeInsert = qryObjectBeforeInsert
    AfterInsert = qryObjectAfterInsert
    BeforePost = qryObjectBeforePost
    AfterPost = qryObjectAfterPost
    OnNewRecord = qryObjectNewRecord
    OnPostError = qryObjectPostError
    OnDeleteError = qryObjectDeleteError
    DataSource = dsObjectType
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_ID'
      '     , OACCOUNT_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , OBJECT_VALUE'
      '     , SUBINFO_3'
      '     , SUBINFO_4'
      '     , SUBINFO_5'
      '     , SUBINFO_6'
      '     , LASTUSER_MODIFY'
      '     , DISCOUNT_DEF'
      '     , OTHER_DATE'
      '     , OBJECT_HIDE'
      '     , MS_PPXK'
      '     , TONKHOTT'
      '     , DEFAULT_UNIT'
      '     , OBJREF_ID'
      '     , OREFTYPE_ID '
      'FROM OBJECT_LIST where OTYPE_ID=:OTYPE_ID'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 392
    Top = 16
    object qryObjectOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryObjectOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryObjectOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryObjectOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryObjectOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryObjectSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryObjectSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryObjectOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryObjectOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      OnChange = qryObjectOBJGRP_IDChange
      Size = 15
    end
    object qryObjectOACCOUNT_ID: TWideStringField
      FieldName = 'OACCOUNT_ID'
      Size = 15
    end
    object qryObjectDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryObjectMAKH: TWideStringField
      FieldName = 'MAKH'
      OnChange = qryObjectMAKHChange
      Size = 30
    end
    object qryObjectLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryObjectCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
      OnChange = qryObjectCREATE_DATEChange
    end
    object qryObjectOBJECT_VALUE: TIBOFloatField
      FieldName = 'OBJECT_VALUE'
    end
    object qryObjectSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryObjectSUBINFO_4: TWideStringField
      FieldName = 'SUBINFO_4'
      Size = 126
    end
    object qryObjectSUBINFO_5: TWideStringField
      FieldName = 'SUBINFO_5'
      Size = 126
    end
    object qryObjectSUBINFO_6: TWideStringField
      FieldName = 'SUBINFO_6'
      Size = 126
    end
    object qryObjectLASTUSER_MODIFY: TWideStringField
      FieldName = 'LASTUSER_MODIFY'
      Size = 15
    end
    object qryObjectDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryObjectOTHER_DATE: TDateField
      FieldName = 'OTHER_DATE'
    end
    object qryObjectOBJECT_HIDE: TSmallintField
      FieldName = 'OBJECT_HIDE'
    end
    object qryObjectMS_PPXK: TSmallintField
      FieldName = 'MS_PPXK'
    end
    object qryObjectTONKHOTT: TIntegerField
      FieldName = 'TONKHOTT'
    end
    object qryObjectDEFAULT_UNIT: TWideStringField
      FieldName = 'DEFAULT_UNIT'
      Size = 63
    end
    object qryObjectOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      OnChange = qryObjectOBJREF_IDChange
      Size = 30
    end
    object qryObjectOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object dsObject: TDataSource
    DataSet = qryObject
    Left = 392
    Top = 33
  end
  object qryCurrency: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM CURRENCY_LIST'
      'WHERE'
      '   CURRENCY_ID = :OLD_CURRENCY_ID')
    EditSQL.Strings = (
      'UPDATE CURRENCY_LIST SET'
      '   CURRENCY_ID =:CURRENCY_ID, /*PK*/'
      '   CURRENCY_NAME = :CURRENCY_NAME'
      'WHERE'
      '   CURRENCY_ID = :OLD_CURRENCY_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO CURRENCY_LIST('
      '   CURRENCY_ID, /*PK*/'
      '   CURRENCY_NAME)'
      'VALUES ('
      '   :CURRENCY_ID,'
      '   :CURRENCY_NAME)')
    KeyLinks.Strings = (
      'CURRENCY_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryCurrencyBeforeEdit
    BeforeDelete = qryCurrencyBeforeDelete
    AfterDelete = qryCurrencyAfterDelete
    BeforeInsert = qryCurrencyBeforeInsert
    AfterInsert = qryCurrencyAfterInsert
    BeforePost = qryCurrencyBeforePost
    AfterPost = qryCurrencyAfterPost
    OnPostError = qryCurrencyPostError
    OnDeleteError = qryCurrencyDeleteError
    SQL.Strings = (
      'SELECT CURRENCY_ID'
      '     , CURRENCY_NAME'
      'FROM CURRENCY_LIST')
    FieldOptions = []
    Left = 271
    Top = 100
    object qryCurrencyCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Required = True
      Size = 6
    end
    object qryCurrencyCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
  end
  object dsCurrency: TDataSource
    DataSet = qryCurrency
    Left = 270
    Top = 116
  end
  object qryBeginObj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_BAL'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_BAL SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT = :BEGIN_DEBIT,'
      '   BEGIN_CREDIT = :BEGIN_CREDIT'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsMDIChild
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_BAL('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT,'
      '   BEGIN_CREDIT)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :BEGIN_DEBIT,'
      '   :BEGIN_CREDIT)')
    KeyLinks.Strings = (
      'OBJECT_BAL.OBJECT_ID'
      'OBJECT_BAL.OTYPE_ID'
      'OBJECT_BAL.ACCOUNT_ID'
      'PERIOD_ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBeginObjBeforeEdit
    BeforeDelete = qryBeginObjBeforeDelete
    BeforeInsert = qryBeginObjBeforeInsert
    AfterInsert = qryBeginObjAfterInsert
    BeforePost = qryBeginObjBeforePost
    AfterPost = qryBeginObjAfterPost
    OnNewRecord = qryBeginObjNewRecord
    OnPostError = qryBeginCusPostError
    DataSource = dsPAcc
    SQL.Strings = (
      'SELECT OBJECT_BAL.OBJECT_ID'
      '     , OBJECT_BAL.OTYPE_ID'
      '     , OBJECT_BAL.ACCOUNT_ID'
      '     , PERIOD_ID'
      '     , BEGIN_DEBIT'
      '     , BEGIN_CREDIT'
      '     , OBJECT_NAME'
      '     , BRANCH_ID'
      'FROM OBJECT_BAL'
      
        'JOIN OBJECT_LIST on (OBJECT_BAL.OBJECT_ID = OBJECT_LIST.OBJECT_I' +
        'D '
      '     and OBJECT_BAL.OTYPE_ID=OBJECT_LIST.OTYPE_ID )'
      'where PERIOD_ID=:PERIOD_ID and OBJECT_BAL.OTYPE_ID=:OTYPE_ID '
      'and OBJECT_BAL.ACCOUNT_ID=:ACCOUNT_ID and BRANCH_ID = :BRANCH_ID'
      'order by OBJECT_BAL.OBJECT_ID')
    FieldOptions = []
    Left = 815
    Top = 178
    object qryBeginObjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryBeginObjPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBeginObjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryBeginObjACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryBeginObjOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryBeginObjBEGIN_DEBIT: TIBOFloatField
      FieldName = 'BEGIN_DEBIT'
    end
    object qryBeginObjBEGIN_CREDIT: TIBOFloatField
      FieldName = 'BEGIN_CREDIT'
    end
    object qryBeginObjBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsBeginObj: TDataSource
    DataSet = qryBeginObj
    Left = 815
    Top = 199
  end
  object qryRate: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM CURRENCY_RATE'
      'WHERE'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   TIME_POINT = :OLD_TIME_POINT')
    EditSQL.Strings = (
      'UPDATE CURRENCY_RATE SET'
      '   CURRENCY_ID = :CURRENCY_ID, /*PK*/'
      '   TIME_POINT = :TIME_POINT, /*PK*/'
      '   EXCHANGERATE = :EXCHANGERATE'
      'WHERE'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   TIME_POINT = :OLD_TIME_POINT')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO CURRENCY_RATE('
      '   CURRENCY_ID, /*PK*/'
      '   TIME_POINT, /*PK*/'
      '   EXCHANGERATE)'
      'VALUES ('
      '   :CURRENCY_ID,'
      '   :TIME_POINT,'
      '   :EXCHANGERATE)')
    KeyLinks.Strings = (
      'CURRENCY_ID'
      'TIME_POINT')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRateBeforeEdit
    BeforeDelete = qryRateBeforeDelete
    BeforeInsert = qryRateBeforeInsert
    AfterInsert = qryRateAfterInsert
    BeforePost = qryRateBeforePost
    OnNewRecord = qryRateNewRecord
    OnPostError = qryRatePostError
    SQL.Strings = (
      'SELECT CURRENCY_ID'
      '     , TIME_POINT'
      '     , CURRENCY_ID||TIME_POINT KF'
      '     , EXCHANGERATE'
      'FROM CURRENCY_RATE'
      'order by TIME_POINT desc,CURRENCY_ID asc')
    FieldOptions = []
    Left = 332
    Top = 100
    object qryRateTIME_POINT: TDateTimeField
      FieldName = 'TIME_POINT'
      Required = True
    end
    object qryRateEXCHANGERATE: TIBOFloatField
      Tag = 1
      FieldName = 'EXCHANGERATE'
    end
    object qryRateCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Required = True
      Size = 6
    end
    object qryRateKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 31
    end
  end
  object dsRate: TDataSource
    DataSet = qryRate
    Left = 332
    Top = 116
  end
  object dsBanana: TDataSource
    Left = 12
    Top = 448
  end
  object tsTemplate: TIB_Transaction
    IB_Connection = cnMain
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 148
    Top = 460
  end
  object tsMDIChild: TIB_Transaction
    IB_Connection = cnMain
    AutoCommit = True
    Isolation = tiCommitted
    Left = 12
    Top = 172
  end
  object qryPCurrency: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'currency_id')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select currency_id,currency_name,tygiaht from sp_dsngoaite')
    FieldOptions = []
    Left = 198
    Top = 16
    object qryPCurrencyCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 21
    end
    object qryPCurrencyCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 189
    end
    object qryPCurrencyTYGIAHT: TIBOFloatField
      FieldName = 'TYGIAHT'
    end
  end
  object dsPCurrency: TDataSource
    DataSet = qryPCurrency
    Left = 198
    Top = 33
  end
  object dsTemplateList: TDataSource
    DataSet = qryTemplateList
    Left = 84
    Top = 394
  end
  object qryTemplateList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOCTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM TEMPLATE_LIST'
      'WHERE'
      '   TEMPLATE_ID = :OLD_TEMPLATE_ID')
    EditSQL.Strings = (
      'UPDATE TEMPLATE_LIST SET'
      '   TEMPLATE_ID = :TEMPLATE_ID, /*PK*/'
      '   TEMPLATE_NAME = :TEMPLATE_NAME,'
      '   TEMPLATE_TYPE = :TEMPLATE_TYPE,'
      '   WAREHOUSE_ID = :WAREHOUSE_ID,'
      '   TEMPLATE_PERSON = :TEMPLATE_PERSON,'
      '   TEMPLATE_ADDR = :TEMPLATE_ADDR,'
      '   TEMPLATE_VOUCHER = :TEMPLATE_VOUCHER,'
      '   TEMPLATE_NOTES = :TEMPLATE_NOTES,'
      '   TKNO = :TKNO,'
      '   TKCO = :TKCO,'
      '   TKVAT = :TKVAT,'
      '   NHAPGIACOTHUE = :NHAPGIACOTHUE,'
      '   HACHTOANNT = :HACHTOANNT,'
      '   SHOTCUT_ID = :SHOTCUT_ID,'
      '   CTMOTNO = :CTMOTNO,'
      '   DTNO = :DTNO,'
      '   LOAINO = :LOAINO,'
      '   DTCO = :DTCO,'
      '   LOAICO = :LOAICO,'
      '   CHODUYET = :CHODUYET'
      'WHERE'
      '   TEMPLATE_ID = :OLD_TEMPLATE_ID')
    GeneratorLinks.Strings = (
      'TEMPLATE_ID=GEN_TEMPLATEID')
    IB_Connection = cnMain
    IB_Transaction = tsTemplate
    InsertSQL.Strings = (
      'INSERT INTO TEMPLATE_LIST('
      '   TEMPLATE_ID, /*PK*/'
      '   TEMPLATE_NAME,'
      '   TEMPLATE_TYPE,'
      '   WAREHOUSE_ID,'
      '   TEMPLATE_PERSON,'
      '   TEMPLATE_ADDR,'
      '   TEMPLATE_VOUCHER,'
      '   TEMPLATE_NOTES,'
      '   TKNO,'
      '   TKCO,'
      '   TKVAT,'
      '   NHAPGIACOTHUE,'
      '   HACHTOANNT,'
      '   SHOTCUT_ID,'
      '   CTMOTNO,'
      '   DTNO,'
      '   LOAINO,'
      '   DTCO,'
      '   LOAICO,'
      '   CHODUYET)'
      'VALUES ('
      '   :TEMPLATE_ID,'
      '   :TEMPLATE_NAME,'
      '   :TEMPLATE_TYPE,'
      '   :WAREHOUSE_ID,'
      '   :TEMPLATE_PERSON,'
      '   :TEMPLATE_ADDR,'
      '   :TEMPLATE_VOUCHER,'
      '   :TEMPLATE_NOTES,'
      '   :TKNO,'
      '   :TKCO,'
      '   :TKVAT,'
      '   :NHAPGIACOTHUE,'
      '   :HACHTOANNT,'
      '   :SHOTCUT_ID,'
      '   :CTMOTNO,'
      '   :DTNO,'
      '   :LOAINO,'
      '   :DTCO,'
      '   :LOAICO,'
      '   :CHODUYET)')
    KeyLinks.Strings = (
      'TEMPLATE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryTemplateListBeforeDelete
    AfterInsert = qryTemplateListAfterInsert
    BeforePost = qryTemplateListBeforePost
    OnNewRecord = qryTemplateListNewRecord
    OnPostError = qryTemplateListPostError
    OnDeleteError = qryTemplateListDeleteError
    DataSource = dsDocType
    SQL.Strings = (
      'SELECT TEMPLATE_NAME'
      '     , TEMPLATE_TYPE'
      '     , WAREHOUSE_ID'
      '     , TEMPLATE_PERSON'
      '     , TEMPLATE_ADDR'
      '     , TEMPLATE_VOUCHER'
      '     , TEMPLATE_NOTES'
      '     , TKNO'
      '     , TKCO'
      '     , TKVAT'
      '     , NHAPGIACOTHUE'
      '     , HACHTOANNT'
      '     , TEMPLATE_ID'
      '     , TEMPLATE_LIST.SHOTCUT_ID'
      '     , SHOTCUT_NAME'
      '     , KEY_VALUE'
      '     , ISSHIFT'
      '     , ISCTRL'
      '     , ISALT'
      '     , CTMOTNO'
      '     , DTNO'
      '     , LOAINO'
      '     , DTCO'
      '     , LOAICO'
      '     , CHODUYET'
      'FROM TEMPLATE_LIST'
      
        'LEFT JOIN SHOTCUT_LIST on (TEMPLATE_LIST.SHOTCUT_ID=SHOTCUT_LIST' +
        '.SHOTCUT_ID)'
      'where TEMPLATE_TYPE=:DOCTYPE_ID')
    FieldOptions = []
    Left = 84
    Top = 393
    object qryTemplateListTEMPLATE_TYPE: TIntegerField
      FieldName = 'TEMPLATE_TYPE'
      Required = True
    end
    object qryTemplateListNHAPGIACOTHUE: TSmallintField
      FieldName = 'NHAPGIACOTHUE'
    end
    object qryTemplateListHACHTOANNT: TSmallintField
      FieldName = 'HACHTOANNT'
    end
    object qryTemplateListTEMPLATE_ID: TIntegerField
      FieldName = 'TEMPLATE_ID'
      Required = True
    end
    object qryTemplateListSHOTCUT_ID: TSmallintField
      FieldName = 'SHOTCUT_ID'
    end
    object qryTemplateListKEY_VALUE: TSmallintField
      FieldName = 'KEY_VALUE'
    end
    object qryTemplateListISSHIFT: TSmallintField
      FieldName = 'ISSHIFT'
    end
    object qryTemplateListISCTRL: TSmallintField
      FieldName = 'ISCTRL'
    end
    object qryTemplateListISALT: TSmallintField
      FieldName = 'ISALT'
    end
    object qryTemplateListTEMPLATE_NAME: TWideStringField
      FieldName = 'TEMPLATE_NAME'
      Required = True
      Size = 126
    end
    object qryTemplateListWAREHOUSE_ID: TWideStringField
      FieldName = 'WAREHOUSE_ID'
      Size = 15
    end
    object qryTemplateListTEMPLATE_PERSON: TWideStringField
      FieldName = 'TEMPLATE_PERSON'
      Size = 126
    end
    object qryTemplateListTEMPLATE_ADDR: TWideStringField
      FieldName = 'TEMPLATE_ADDR'
      Size = 126
    end
    object qryTemplateListTEMPLATE_VOUCHER: TWideStringField
      FieldName = 'TEMPLATE_VOUCHER'
      Size = 126
    end
    object qryTemplateListTEMPLATE_NOTES: TWideStringField
      FieldName = 'TEMPLATE_NOTES'
      Size = 126
    end
    object qryTemplateListTKNO: TWideStringField
      FieldName = 'TKNO'
      Required = True
      OnChange = qryTemplateListTKNOChange
      Size = 15
    end
    object qryTemplateListTKCO: TWideStringField
      FieldName = 'TKCO'
      Required = True
      OnChange = qryTemplateListTKCOChange
      Size = 15
    end
    object qryTemplateListTKVAT: TWideStringField
      FieldName = 'TKVAT'
      Size = 15
    end
    object qryTemplateListSHOTCUT_NAME: TWideStringField
      FieldName = 'SHOTCUT_NAME'
      Size = 15
    end
    object qryTemplateListCTMOTNO: TSmallintField
      FieldName = 'CTMOTNO'
    end
    object qryTemplateListDTNO: TWideStringField
      FieldName = 'DTNO'
      Size = 30
    end
    object qryTemplateListLOAINO: TSmallintField
      FieldName = 'LOAINO'
    end
    object qryTemplateListDTCO: TWideStringField
      FieldName = 'DTCO'
      Size = 30
    end
    object qryTemplateListLOAICO: TSmallintField
      FieldName = 'LOAICO'
    end
    object qryTemplateListCHODUYET: TSmallintField
      FieldName = 'CHODUYET'
    end
  end
  object qryUpdLoaiPhieu: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOCTYPE_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update DOCUMENTS'
      '   set DOCTYPE_ID=:DOCTYPE_ID,'
      '   TEMPLATE_ID=null'
      'where DOC_ID=:DOC_ID'
      '   and PERIOD_ID=:PERIOD_ID')
    FieldOptions = []
    Left = 290
    Top = 400
  end
  object qryDinhkhoan: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DOC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID'
      'BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    DataSource = DsDocList
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , ENTRY_ID'
      '     , PERIOD_ID'
      '     , DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , DEBIT_OBJ'
      '     , DEBIT_TYPE'
      '     , CREDIT_OBJ'
      '     , CREDIT_TYPE'
      '     , ENTRY_AMOUNT'
      '     , ENTRY_PRICE'
      '     , ENTRY_VALUE'
      '     , CURRENCY_ID'
      '     , TYGIANT'
      '     , ENTRY_NOTE'
      '     , NGUOINHAP'
      '     , BRANCH_ID'
      '     , CREDIT_DETAIL  '
      '     , DEBIT_DETAIL'
      '     , ENTRY_QUANTITY '
      '     , PTTHUENK'
      '     , DTNO.OBJECT_NAME TENDTNO'
      '     , DTCO.OBJECT_NAME TENDTCO'
      'FROM FULL_ENTRYS'
      
        'LEFT JOIN OBJECT_LIST DTNO on (DTNO.OBJECT_ID = FULL_ENTRYS.DEBI' +
        'T_OBJ and DTNO.OTYPE_ID  = FULL_ENTRYS.DEBIT_TYPE)'
      
        'LEFT JOIN OBJECT_LIST DTCO on (DTCO.OBJECT_ID = FULL_ENTRYS.CRED' +
        'IT_OBJ and DTCO.OTYPE_ID = FULL_ENTRYS.CREDIT_TYPE)'
      
        'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID and BRANCH_ID = :B' +
        'RANCH_ID'
      'Order by ENTRY_ID')
    FieldOptions = []
    Left = 774
    Top = 16
    object qryDinhkhoanDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Size = 30
    end
    object qryDinhkhoanENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
    end
    object qryDinhkhoanPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryDinhkhoanDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Size = 15
    end
    object qryDinhkhoanCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Size = 15
    end
    object qryDinhkhoanDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Size = 30
    end
    object qryDinhkhoanDEBIT_TYPE: TSmallintField
      FieldName = 'DEBIT_TYPE'
    end
    object qryDinhkhoanCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      Size = 30
    end
    object qryDinhkhoanCREDIT_TYPE: TSmallintField
      FieldName = 'CREDIT_TYPE'
    end
    object qryDinhkhoanENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryDinhkhoanENTRY_PRICE: TIBOFloatField
      FieldName = 'ENTRY_PRICE'
    end
    object qryDinhkhoanENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryDinhkhoanCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 6
    end
    object qryDinhkhoanTYGIANT: TIBOFloatField
      FieldName = 'TYGIANT'
    end
    object qryDinhkhoanENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryDinhkhoanNGUOINHAP: TWideStringField
      FieldName = 'NGUOINHAP'
      Size = 15
    end
    object qryDinhkhoanBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryDinhkhoanCREDIT_DETAIL: TWideStringField
      FieldName = 'CREDIT_DETAIL'
      Size = 30
    end
    object qryDinhkhoanDEBIT_DETAIL: TWideStringField
      FieldName = 'DEBIT_DETAIL'
      Size = 30
    end
    object qryDinhkhoanPTTHUENK: TIBOFloatField
      FieldName = 'PTTHUENK'
    end
    object qryDinhkhoanENTRY_QUANTITY: TIBOFloatField
      FieldName = 'ENTRY_QUANTITY'
    end
    object qryDinhkhoanTENDTNO: TWideStringField
      FieldName = 'TENDTNO'
      Size = 126
    end
    object qryDinhkhoanTENDTCO: TWideStringField
      FieldName = 'TENDTCO'
      Size = 126
    end
  end
  object dsDinhkhoan: TDataSource
    DataSet = qryDinhkhoan
    Left = 774
    Top = 33
  end
  object qryDefRptLCTT: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_LUUCHUYENTIENTE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_LUUCHUYENTIENTE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   KYNAY = :KYNAY,'
      '   KYTRUOC = :KYTRUOC,'
      '   STATUSFLAG = :STATUSFLAG,'
      '   LOAILUUCHUYEN = :LOAILUUCHUYEN,'
      '   MASONHOM = :MASONHOM,'
      '   THUYETMINH = :THUYETMINH'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   ID = :OLD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_LUUCHUYENTIENTE('
      '   BRANCH_ID, /*PK*/'
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   KYNAY,'
      '   KYTRUOC,'
      '   STATUSFLAG,'
      '   LOAILUUCHUYEN,'
      '   MASONHOM,'
      '   THUYETMINH)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :KYNAY,'
      '   :KYTRUOC,'
      '   :STATUSFLAG,'
      '   :LOAILUUCHUYEN,'
      '   :MASONHOM,'
      '   :THUYETMINH)')
    KeyLinks.Strings = (
      'ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDefRptLCTTBeforeEdit
    BeforeDelete = qryDefRptLCTTBeforeDelete
    BeforeInsert = qryDefRptLCTTBeforeInsert
    AfterInsert = qryDefRptLCTTAfterInsert
    BeforePost = qryDefRptLCTTBeforePost
    OnPostError = qryDefRptLCTTPostError
    SQL.Strings = (
      'SELECT ID'
      '     , CHITIEU'
      '     , MASO'
      '     , KYNAY'
      '     , KYTRUOC'
      '     , STATUSFLAG'
      '     , LOAILUUCHUYEN'
      '     , MASONHOM'
      '     , THUYETMINH'
      '     , BRANCH_ID'
      'FROM RPT_LUUCHUYENTIENTE WHERE BRANCH_ID = :BRANCH_ID'
      'order by id')
    FieldOptions = []
    Left = 363
    Top = 330
    object qryDefRptLCTTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryDefRptLCTTSTATUSFLAG: TSmallintField
      FieldName = 'STATUSFLAG'
    end
    object qryDefRptLCTTLOAILUUCHUYEN: TSmallintField
      FieldName = 'LOAILUUCHUYEN'
    end
    object qryDefRptLCTTCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 126
    end
    object qryDefRptLCTTMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryDefRptLCTTKYNAY: TIBOFloatField
      FieldName = 'KYNAY'
    end
    object qryDefRptLCTTKYTRUOC: TIBOFloatField
      FieldName = 'KYTRUOC'
    end
    object qryDefRptLCTTMASONHOM: TSmallintField
      FieldName = 'MASONHOM'
    end
    object qryDefRptLCTTTHUYETMINH: TWideStringField
      FieldName = 'THUYETMINH'
      Size = 15
    end
    object qryDefRptLCTTBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsDefRptLCTT: TDataSource
    DataSet = qryDefRptLCTT
    Left = 365
    Top = 348
  end
  object dsDefRptBCDKT: TDataSource
    DataSet = qryDefRptBCDKT
    Left = 395
    Top = 404
  end
  object qryDefRptBCDKT: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGCANDOI'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGCANDOI SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   ID = :ID, /*PK*/'
      '   TEN = :TEN,'
      '   MASO = :MASO,'
      '   DAUNAM = :DAUNAM,'
      '   CUOIKY = :CUOIKY,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   MANHOM = :MANHOM,'
      '   ISMIN = :ISMIN,'
      '   THUYETMINH = :THUYETMINH'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   ID = :OLD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGCANDOI('
      '   BRANCH_ID, /*PK*/'
      '   ID, /*PK*/'
      '   TEN,'
      '   MASO,'
      '   DAUNAM,'
      '   CUOIKY,'
      '   HESO_GROUP,'
      '   MANHOM,'
      '   ISMIN,'
      '   THUYETMINH)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :ID,'
      '   :TEN,'
      '   :MASO,'
      '   :DAUNAM,'
      '   :CUOIKY,'
      '   :HESO_GROUP,'
      '   :MANHOM,'
      '   :ISMIN,'
      '   :THUYETMINH)')
    KeyLinks.Strings = (
      'ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDefRptBCDKTBeforeEdit
    BeforeDelete = qryDefRptBCDKTBeforeDelete
    BeforeInsert = qryDefRptBCDKTBeforeInsert
    AfterInsert = qryDefRptBCDKTAfterInsert
    BeforePost = qryDefRptBCDKTBeforePost
    OnNewRecord = qryDefRptBCDKTNewRecord
    OnPostError = qryDefRptBCDKTPostError
    SQL.Strings = (
      'SELECT ID'
      '     , TEN'
      '     , MASO'
      '     , DAUNAM'
      '     , CUOIKY'
      '     , HESO_GROUP'
      '     , MANHOM'
      '     , ISMIN'
      '     , THUYETMINH'
      '     , BRANCH_ID'
      'FROM RPT_BANGCANDOI'
      'WHERE BRANCH_ID = :BRANCH_ID'
      'order by id')
    FieldOptions = []
    Left = 393
    Top = 404
    object qryDefRptBCDKTID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryDefRptBCDKTTEN: TWideStringField
      FieldName = 'TEN'
      Size = 126
    end
    object qryDefRptBCDKTMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryDefRptBCDKTDAUNAM: TIBOFloatField
      FieldName = 'DAUNAM'
    end
    object qryDefRptBCDKTCUOIKY: TIBOFloatField
      FieldName = 'CUOIKY'
    end
    object qryDefRptBCDKTHESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qryDefRptBCDKTMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 6
    end
    object qryDefRptBCDKTISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryDefRptBCDKTTHUYETMINH: TWideStringField
      FieldName = 'THUYETMINH'
      Size = 6
    end
    object qryDefRptBCDKTBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object qryDefRptKQHDKDB: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_KETQUAHDKD_B'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_KETQUAHDKD_B SET'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   SODK = :SODK,'
      '   SOPN = :SOPN,'
      '   SODN = :SODN,'
      '   LKPN = :LKPN,'
      '   LKDN = :LKDN,'
      '   SOCK = :SOCK,'
      '   STATUSFLAG = :STATUSFLAG,'
      '   TAIKHOAN = :TAIKHOAN'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_KETQUAHDKD_B('
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   SODK,'
      '   SOPN,'
      '   SODN,'
      '   LKPN,'
      '   LKDN,'
      '   SOCK,'
      '   STATUSFLAG,'
      '   TAIKHOAN)'
      'VALUES ('
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :SODK,'
      '   :SOPN,'
      '   :SODN,'
      '   :LKPN,'
      '   :LKDN,'
      '   :SOCK,'
      '   :STATUSFLAG,'
      '   :TAIKHOAN)')
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDefRptLCTTBeforeEdit
    AfterInsert = qryDefRptKQHDKDBAfterInsert
    BeforePost = qryDefRptKQHDKDBBeforePost
    OnPostError = qryDefRptKQHDKDBPostError
    SQL.Strings = (
      'SELECT ID'
      '     , CHITIEU'
      '     , MASO'
      '     , SODK'
      '     , SOPN'
      '     , SODN'
      '     , LKPN'
      '     , LKDN'
      '     , SOCK'
      '     , STATUSFLAG'
      '     , TAIKHOAN'
      'FROM RPT_KETQUAHDKD_B order by id')
    FieldOptions = []
    Left = 828
    Top = 474
    object qryDefRptKQHDKDBID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryDefRptKQHDKDBSTATUSFLAG: TSmallintField
      FieldName = 'STATUSFLAG'
    end
    object qryDefRptKQHDKDBCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 63
    end
    object qryDefRptKQHDKDBMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryDefRptKQHDKDBTAIKHOAN: TWideStringField
      FieldName = 'TAIKHOAN'
      Size = 15
    end
    object qryDefRptKQHDKDBSODK: TIBOFloatField
      FieldName = 'SODK'
    end
    object qryDefRptKQHDKDBSOPN: TIBOFloatField
      FieldName = 'SOPN'
    end
    object qryDefRptKQHDKDBSODN: TIBOFloatField
      FieldName = 'SODN'
    end
    object qryDefRptKQHDKDBLKPN: TIBOFloatField
      FieldName = 'LKPN'
    end
    object qryDefRptKQHDKDBLKDN: TIBOFloatField
      FieldName = 'LKDN'
    end
    object qryDefRptKQHDKDBSOCK: TIBOFloatField
      FieldName = 'SOCK'
    end
  end
  object dsDefRptKQHDKDB: TDataSource
    DataSet = qryDefRptKQHDKDB
    Left = 827
    Top = 486
  end
  object qryAriseNT: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'KYHT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsMDIChild
    KeyLinks.Strings = (
      'shtk'
      'currency_id')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT shtk,tentk,tentk_ta,currency_id,nodk,codk,nops,cops,nock,' +
        'cock '
      'FROM sp_bangcandoips_nt(:KYHT,:BRANCH_ID) Order by shtk')
    FieldOptions = []
    Left = 264
    Top = 24
    object qryAriseNTSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 45
    end
    object qryAriseNTTENTK: TWideStringField
      FieldName = 'TENTK'
      Size = 189
    end
    object qryAriseNTCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 21
    end
    object qryAriseNTNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryAriseNTCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryAriseNTNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryAriseNTCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryAriseNTNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryAriseNTCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
    object qryAriseNTTENTK_TA: TWideStringField
      FieldName = 'TENTK_TA'
      Size = 126
    end
  end
  object dsAriseNT: TDataSource
    DataSet = qryAriseNT
    Left = 264
    Top = 33
  end
  object qryBeginFBal: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ACCOUNT_FBAL'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE ACCOUNT_FBAL SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   CURRENCY_ID = :CURRENCY_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT = :BEGIN_DEBIT,'
      '   BEGIN_CREDIT = :BEGIN_CREDIT,'
      '   TYGIA = :TYGIA,'
      '   DEBIT_VND = :DEBIT_VND,'
      '   CREDIT_VND = :CREDIT_VND'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsMDIChild
    InsertSQL.Strings = (
      'INSERT INTO ACCOUNT_FBAL('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   CURRENCY_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT,'
      '   BEGIN_CREDIT,'
      '   TYGIA,'
      '   DEBIT_VND,'
      '   CREDIT_VND)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :CURRENCY_ID,'
      '   :PERIOD_ID,'
      '   :BEGIN_DEBIT,'
      '   :BEGIN_CREDIT,'
      '   :TYGIA,'
      '   :DEBIT_VND,'
      '   :CREDIT_VND)')
    KeyLinks.Strings = (
      'ACCOUNT_FBAL.ACCOUNT_ID'
      'PERIOD_ID'
      'CURRENCY_ID')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBeginFBalBeforeEdit
    BeforeDelete = qryBeginFBalBeforeDelete
    BeforeInsert = qryBeginFBalBeforeInsert
    AfterInsert = qryBeginFBalAfterInsert
    BeforePost = qryBeginFBalBeforePost
    OnNewRecord = qryBeginFBalNewRecord
    OnPostError = qryBeginFBalPostError
    SQL.Strings = (
      'SELECT ACCOUNT_FBAL.ACCOUNT_ID'
      '     , PERIOD_ID'
      '     , CURRENCY_ID'
      '     , ACCOUNT_FBAL.ACCOUNT_ID||CURRENCY_ID KEYFIELD'
      '     , BEGIN_DEBIT'
      '     , BEGIN_CREDIT'
      '     , ACCOUNT_NAME'
      '     , TYGIA'
      '     , DEBIT_VND'
      '     , CREDIT_VND'
      '     , BRANCH_ID'
      'FROM ACCOUNT_FBAL'
      
        'JOIN ACCOUNT_LIST on (ACCOUNT_FBAL.ACCOUNT_ID = ACCOUNT_LIST.ACC' +
        'OUNT_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and BRANCH_ID = :BRANCH_ID order by A' +
        'CCOUNT_FBAL.ACCOUNT_ID, CURRENCY_ID')
    FieldOptions = []
    Left = 331
    Top = 180
    object qryBeginFBalPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBeginFBalACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryBeginFBalCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Required = True
      Size = 6
    end
    object qryBeginFBalACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryBeginFBalKEYFIELD: TWideStringField
      FieldName = 'KEYFIELD'
      ReadOnly = True
      Required = True
      Size = 21
    end
    object qryBeginFBalBEGIN_DEBIT: TIBOFloatField
      FieldName = 'BEGIN_DEBIT'
      OnChange = qryBeginFBalBEGIN_DEBITChange
    end
    object qryBeginFBalBEGIN_CREDIT: TIBOFloatField
      FieldName = 'BEGIN_CREDIT'
      OnChange = qryBeginFBalBEGIN_CREDITChange
    end
    object qryBeginFBalTYGIA: TIBOFloatField
      FieldName = 'TYGIA'
      OnChange = qryBeginFBalTYGIAChange
    end
    object qryBeginFBalDEBIT_VND: TIBOFloatField
      FieldName = 'DEBIT_VND'
    end
    object qryBeginFBalCREDIT_VND: TIBOFloatField
      FieldName = 'CREDIT_VND'
    end
    object qryBeginFBalBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsBeginFBal: TDataSource
    DataSet = qryBeginFBal
    Left = 331
    Top = 194
  end
  object qryGiaBan: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryGiaBanBeforeOpen
    SQL.Strings = (
      'SELECT SALEPRICE'
      '     , PERIOD_ID'
      '     , SALE_MIN'
      '     , SALE_MAX'
      '     , OBJECT_ID'
      '     , OTYPE_ID'
      'FROM SALE_PRICE'
      'where PERIOD_ID=:PERIOD_ID')
    FieldOptions = []
    Left = 612
    Top = 412
    object qryGiaBanPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryGiaBanSALEPRICE: TIBOFloatField
      FieldName = 'SALEPRICE'
    end
    object qryGiaBanSALE_MIN: TIBOFloatField
      FieldName = 'SALE_MIN'
    end
    object qryGiaBanSALE_MAX: TIBOFloatField
      FieldName = 'SALE_MAX'
    end
    object qryGiaBanOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryGiaBanOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
  end
  object qryGiaMua: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryGiaMuaBeforeOpen
    SQL.Strings = (
      'SELECT BUYPRICE'
      '     , PERIOD_ID'
      '     , BUY_MIN'
      '     , BUY_MAX'
      '     , OBJECT_ID'
      '     , OTYPE_ID'
      'FROM BUY_PRICE'
      'where PERIOD_ID=:PERIOD_ID')
    FieldOptions = []
    Left = 674
    Top = 408
    object qryGiaMuaPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryGiaMuaBUYPRICE: TIBOFloatField
      FieldName = 'BUYPRICE'
    end
    object qryGiaMuaBUY_MIN: TIBOFloatField
      FieldName = 'BUY_MIN'
    end
    object qryGiaMuaBUY_MAX: TIBOFloatField
      FieldName = 'BUY_MAX'
    end
    object qryGiaMuaOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryGiaMuaOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
  end
  object qryMsg: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USERNAME'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    GeneratorLinks.Strings = (
      'MESSAGE_ID = GEN_MESSAGEID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'MESSAGE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryMsgBeforeEdit
    SQL.Strings = (
      'SELECT MESSAGE_ID'
      'FROM MESSAGE_LOG '
      'where RECEIVER_NAME=:USERNAME and RECEIVER_STATUS=0')
    FieldOptions = []
    Left = 479
    Top = 406
    object qryMsgMESSAGE_ID: TIntegerField
      FieldName = 'MESSAGE_ID'
      Required = True
    end
  end
  object qryTableList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'table_name')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryCommonError
    SQL.Strings = (
      'select table_name from sp_getall_tables')
    FieldOptions = []
    Left = 214
    Top = 252
    object qryTableListTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Size = 93
    end
  end
  object qryFieldList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TABLE_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'TENFIELD')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryCommonError
    DataSource = dsTableList
    SQL.Strings = (
      
        'select rdb$field_name TENFIELD from rdb$relation_fields where rd' +
        'b$system_flag=0'
      'and rdb$relation_name=:TABLE_NAME'
      'order by rdb$field_name')
    FieldOptions = []
    Left = 278
    Top = 258
    object qryFieldListTENFIELD: TWideStringField
      FieldName = 'TENFIELD'
      Size = 31
    end
  end
  object dsTableList: TDataSource
    DataSet = qryTableList
    Left = 214
    Top = 273
  end
  object SaveBackupInfo: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Files|*.sql'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 80
    Top = 56
  end
  object qryGiaKH: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryGiaKHBeforeOpen
    SQL.Strings = (
      'SELECT PLANPRICE'
      '     , PERIOD_ID'
      '     , OBJECT_ID'
      '     , OTYPE_ID'
      'FROM PLAN_PRICE'
      'where PERIOD_ID=:PERIOD_ID')
    FieldOptions = []
    Left = 540
    Top = 404
    object qryGiaKHPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryGiaKHPLANPRICE: TIBOFloatField
      FieldName = 'PLANPRICE'
    end
    object qryGiaKHOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryGiaKHOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
  end
  object qryGetDoc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DOCTYPE_ID'
      '     , DOC_ID'
      '     , PERIOD_ID'
      '     , BRANCH_ID'
      'FROM DOCUMENTS '
      'where DOC_ID=:DOC_ID'
      '     and PERIOD_ID=:PERIOD_ID'
      '     and BRANCH_ID = :BRANCH_ID ')
    FieldOptions = []
    Left = 74
    Top = 16
    object qryGetDocDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
    end
    object qryGetDocDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryGetDocPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryGetDocBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object qryDocLog: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DOC_LOG'
      'WHERE'
      '   LOG_ID = :OLD_LOG_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'LOG_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT LOG_ID, USER_ID, TIME_POINT, DOC_ID, PERIOD_ID, LOG_CONTE' +
        'NT, BRANCH_ID   '
      'FROM DOC_LOG where User_ID=:USER_ID order by LOG_ID')
    FieldOptions = []
    Left = 709
    Top = 250
    object qryDocLogLOG_ID: TIntegerField
      FieldName = 'LOG_ID'
      Required = True
    end
    object qryDocLogUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Required = True
      Size = 15
    end
    object qryDocLogTIME_POINT: TDateTimeField
      Tag = -1
      FieldName = 'TIME_POINT'
      Required = True
      DisplayFormat = 'dd/MM/yyyy hh:mm'
    end
    object qryDocLogDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Size = 30
    end
    object qryDocLogPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryDocLogLOG_CONTENT: TWideStringField
      FieldName = 'LOG_CONTENT'
      Size = 6144
    end
    object qryDocLogBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsDocLog: TDataSource
    DataSet = qryDocLog
    Left = 709
    Top = 265
  end
  object qryTonkho: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAKHO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAHH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SHTK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TUKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'SLTON')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SLTON, GTTON, SLTOITHIEU'
      'FROM MACRO_SODUHH(:MAKHO,:MAHH,:SHTK,:TUKY,:DENKY,:BRANCH_ID)')
    FieldOptions = []
    Left = 753
    Top = 180
    object qryTonkhoSLTON: TIBOFloatField
      FieldName = 'SLTON'
    end
    object qryTonkhoGTTON: TIBOFloatField
      FieldName = 'GTTON'
    end
    object qryTonkhoSLTOITHIEU: TIBOFloatField
      FieldName = 'SLTOITHIEU'
    end
  end
  object qryPTyGia: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CURRENCY_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'TIME_POINT')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsPCurrency
    SQL.Strings = (
      'SELECT TIME_POINT'
      '     , EXCHANGERATE'
      'FROM CURRENCY_RATE'
      'where CURRENCY_ID=:CURRENCY_ID'
      'order by TIME_POINT desc')
    FieldOptions = []
    Left = 80
    Top = 246
    object qryPTyGiaTIME_POINT: TDateTimeField
      FieldName = 'TIME_POINT'
      Required = True
    end
    object qryPTyGiaEXCHANGERATE: TIBOFloatField
      FieldName = 'EXCHANGERATE'
    end
  end
  object dsPTyGia: TDataSource
    DataSet = qryPTyGia
    Left = 80
    Top = 266
  end
  object tsDefault: TIB_Transaction
    IB_Connection = cnMain
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 12
    Top = 10
  end
  object qryInvoiceList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM INVOICE_INFO'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE INVOICE_INFO SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   DOC_ID = :DOC_ID, /*PK*/'
      '   ENTRY_ID = :ENTRY_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   SERIAL_NO = :SERIAL_NO,'
      '   INVOICE_NO = :INVOICE_NO,'
      '   INVOICE_DATE = :INVOICE_DATE,'
      '   INVOICE_VAT = :INVOICE_VAT,'
      '   CUSNAME = :CUSNAME,'
      '   CUSTAXCODE = :CUSTAXCODE,'
      '   CUSADDR = :CUSADDR,'
      '   NOTTAX_VALUE = :NOTTAX_VALUE,'
      '   ITEM_NAME = :ITEM_NAME,'
      '   TAX_VALUE = :TAX_VALUE,'
      '   MAUSO = :MAUSO,'
      '   ITEM_AMOUNT = :ITEM_AMOUNT,'
      '   LOAIHD = :LOAIHD,'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   INVTYPE_ID = :INVTYPE_ID,'
      '   INVOICE_NOTE = :INVOICE_NOTE,'
      '   FEE_VALUE = :FEE_VALUE,'
      '   VAT_ID = :VAT_ID,'
      '   BANKACC = :BANKACC,'
      '   CONTRACTNO = :CONTRACTNO,'
      '   PXKVCNB = :PXKVCNB,'
      '   DUEDATE = :DUEDATE,'
      '   PAYMENTMETHOD = :PAYMENTMETHOD,'
      '   PERSONNAME = :PERSONNAME,'
      '   CURRENCY_ID = :CURRENCY_ID,'
      '   TYGIA = :TYGIA'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    InsertSQL.Strings = (
      'INSERT INTO INVOICE_INFO('
      '   BRANCH_ID, /*PK*/'
      '   DOC_ID, /*PK*/'
      '   ENTRY_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   SERIAL_NO,'
      '   INVOICE_NO,'
      '   INVOICE_DATE,'
      '   INVOICE_VAT,'
      '   CUSNAME,'
      '   CUSTAXCODE,'
      '   CUSADDR,'
      '   NOTTAX_VALUE,'
      '   ITEM_NAME,'
      '   TAX_VALUE,'
      '   MAUSO,'
      '   ITEM_AMOUNT,'
      '   LOAIHD,'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   INVTYPE_ID,'
      '   INVOICE_NOTE,'
      '   FEE_VALUE,'
      '   VAT_ID,'
      '   BANKACC,'
      '   CONTRACTNO,'
      '   PXKVCNB,'
      '   DUEDATE,'
      '   PAYMENTMETHOD,'
      '   PERSONNAME,'
      '   CURRENCY_ID,'
      '   TYGIA)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :DOC_ID,'
      '   :ENTRY_ID,'
      '   :PERIOD_ID,'
      '   :SERIAL_NO,'
      '   :INVOICE_NO,'
      '   :INVOICE_DATE,'
      '   :INVOICE_VAT,'
      '   :CUSNAME,'
      '   :CUSTAXCODE,'
      '   :CUSADDR,'
      '   :NOTTAX_VALUE,'
      '   :ITEM_NAME,'
      '   :TAX_VALUE,'
      '   :MAUSO,'
      '   :ITEM_AMOUNT,'
      '   :LOAIHD,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :INVTYPE_ID,'
      '   :INVOICE_NOTE,'
      '   :FEE_VALUE,'
      '   :VAT_ID,'
      '   :BANKACC,'
      '   :CONTRACTNO,'
      '   :PXKVCNB,'
      '   :DUEDATE,'
      '   :PAYMENTMETHOD,'
      '   :PERSONNAME,'
      '   :CURRENCY_ID,'
      '   :TYGIA)')
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryInvoiceListBeforeDelete
    AfterDelete = qryInvoiceListAfterDelete
    BeforePost = qryInvoiceListBeforePost
    AfterPost = qryInvoiceListAfterPost
    OnNewRecord = qryInvoiceListNewRecord
    OnPostError = qryInvoiceListPostError
    OnDeleteError = qryInvoiceListDeleteError
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , ENTRY_ID'
      '     , PERIOD_ID'
      '     , SERIAL_NO'
      '     , INVOICE_NO'
      '     , INVOICE_DATE'
      '     , INVOICE_VAT'
      '     , CUSNAME'
      '     , CUSTAXCODE'
      '     , CUSADDR'
      '     , NOTTAX_VALUE'
      '     , ITEM_NAME'
      '     , TAX_VALUE'
      '     , MAUSO'
      '     , ITEM_AMOUNT'
      '     , LOAIHD'
      '     , OBJECT_ID'
      '     , OTYPE_ID,TAX_VALUE+NOTTAX_VALUE TONGCONG'
      '     , INVTYPE_ID'
      '     , INVOICE_NOTE'
      '     , FEE_VALUE'
      '     , TAX_VALUE+NOTTAX_VALUE+FEE_VALUE CONGTATCA'
      '     , INVOICE_INFO.VAT_ID'
      '     , VAT_NAME'
      '     , BANKACC'
      '     , CONTRACTNO'
      '     , PXKVCNB'
      '     , DUEDATE'
      '     , PAYMENTMETHOD'
      '     , PERSONNAME'
      '     , BRANCH_ID'
      '     ,CURRENCY_ID'
      '     , TYGIA'
      '     , OTHER_ID'
      'FROM INVOICE_INFO'
      'left JOIN VAT_LIST On (INVOICE_INFO.VAT_ID= VAT_LIST.VAT_ID)'
      'where DOC_ID=:DOC_ID'
      '     and PERIOD_ID=:PERIOD_ID and BRANCH_ID = :BRANCH_ID'
      'Order by ENTRY_ID')
    FieldOptions = []
    Left = 434
    Top = 258
    object qryInvoiceListDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryInvoiceListENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
      Required = True
    end
    object qryInvoiceListPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryInvoiceListSERIAL_NO: TWideStringField
      FieldName = 'SERIAL_NO'
      Required = True
      Size = 15
    end
    object qryInvoiceListINVOICE_NO: TWideStringField
      FieldName = 'INVOICE_NO'
      Required = True
      Size = 15
    end
    object qryInvoiceListINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
      Required = True
    end
    object qryInvoiceListCUSNAME: TWideStringField
      FieldName = 'CUSNAME'
      Size = 126
    end
    object qryInvoiceListCUSADDR: TWideStringField
      FieldName = 'CUSADDR'
      Size = 126
    end
    object qryInvoiceListNOTTAX_VALUE: TIBOFloatField
      FieldName = 'NOTTAX_VALUE'
      OnChange = qryInvoiceListNOTTAX_VALUEChange
    end
    object qryInvoiceListTAX_VALUE: TIBOFloatField
      FieldName = 'TAX_VALUE'
      OnChange = qryInvoiceListTAX_VALUEChange
    end
    object qryInvoiceListMAUSO: TWideStringField
      FieldName = 'MAUSO'
      Size = 15
    end
    object qryInvoiceListITEM_AMOUNT: TIBOFloatField
      FieldName = 'ITEM_AMOUNT'
      OnChange = qryInvoiceListITEM_AMOUNTChange
    end
    object qryInvoiceListLOAIHD: TSmallintField
      FieldName = 'LOAIHD'
    end
    object qryInvoiceListOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryInvoiceListOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryInvoiceListTONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
      ReadOnly = True
    end
    object qryInvoiceListCUSTAXCODE: TWideStringField
      FieldName = 'CUSTAXCODE'
      Size = 30
    end
    object qryInvoiceListINVTYPE_ID: TWideStringField
      FieldName = 'INVTYPE_ID'
      Size = 15
    end
    object qryInvoiceListINVOICE_NOTE: TWideStringField
      FieldName = 'INVOICE_NOTE'
      Size = 255
    end
    object qryInvoiceListITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 255
    end
    object qryInvoiceListFEE_VALUE: TIBOFloatField
      FieldName = 'FEE_VALUE'
      OnChange = qryInvoiceListFEE_VALUEChange
    end
    object qryInvoiceListCONGTATCA: TIBOFloatField
      FieldName = 'CONGTATCA'
      ReadOnly = True
    end
    object qryInvoiceListINVOICE_VAT: TIBOFloatField
      FieldName = 'INVOICE_VAT'
      OnChange = qryInvoiceListINVOICE_VATChange
    end
    object qryInvoiceListVAT_ID: TSmallintField
      FieldName = 'VAT_ID'
    end
    object qryInvoiceListVAT_NAME: TWideStringField
      FieldName = 'VAT_NAME'
      Size = 126
    end
    object qryInvoiceListBANKACC: TWideStringField
      FieldName = 'BANKACC'
      Size = 30
    end
    object qryInvoiceListCONTRACTNO: TWideStringField
      FieldName = 'CONTRACTNO'
      Size = 30
    end
    object qryInvoiceListPXKVCNB: TWideStringField
      FieldName = 'PXKVCNB'
      Size = 30
    end
    object qryInvoiceListDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object qryInvoiceListPAYMENTMETHOD: TWideStringField
      FieldName = 'PAYMENTMETHOD'
      Size = 30
    end
    object qryInvoiceListPERSONNAME: TWideStringField
      FieldName = 'PERSONNAME'
      Size = 126
    end
    object qryInvoiceListBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryInvoiceListCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 6
    end
    object qryInvoiceListTYGIA: TIBOFloatField
      FieldName = 'TYGIA'
    end
    object qryInvoiceListOTHER_ID: TWideStringField
      FieldName = 'OTHER_ID'
      Size = 15
    end
  end
  object dsInvoiceList: TDataSource
    DataSet = qryInvoiceList
    Left = 432
    Top = 274
  end
  object qryMsgList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM MESSAGE_LIST'
      'WHERE'
      '   MESSAGE_ID = :OLD_MESSAGE_ID')
    EditSQL.Strings = (
      'UPDATE MESSAGE_LIST SET'
      '   MESSAGE_ID = :MESSAGE_ID, /*PK*/'
      '   MESSAGE_ENG = :MESSAGE_ENG,'
      '   MESSAGE_VN = :MESSAGE_VN,'
      '   TITLE_VN = :TITLE_VN,'
      '   TITLE_ENG = :TITLE_ENG,'
      '   IMAGE_ID = :IMAGE_ID'
      'WHERE'
      '   MESSAGE_ID = :OLD_MESSAGE_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO MESSAGE_LIST('
      '   MESSAGE_ID, /*PK*/'
      '   MESSAGE_ENG,'
      '   MESSAGE_VN,'
      '   TITLE_VN,'
      '   TITLE_ENG,'
      '   IMAGE_ID)'
      'VALUES ('
      '   :MESSAGE_ID,'
      '   :MESSAGE_ENG,'
      '   :MESSAGE_VN,'
      '   :TITLE_VN,'
      '   :TITLE_ENG,'
      '   :IMAGE_ID)')
    KeyLinks.Strings = (
      'MESSAGE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MESSAGE_ID'
      '     , MESSAGE_ENG'
      '     , MESSAGE_VN'
      '     , TITLE_VN'
      '     , TITLE_ENG'
      '     , IMAGE_ID'
      'FROM MESSAGE_LIST'
      'order by MESSAGE_ID')
    FieldOptions = []
    Left = 638
    Top = 18
    object qryMsgListMESSAGE_ID: TSmallintField
      FieldName = 'MESSAGE_ID'
      Required = True
    end
    object qryMsgListMESSAGE_ENG: TWideStringField
      FieldName = 'MESSAGE_ENG'
      Size = 255
    end
    object qryMsgListMESSAGE_VN: TWideStringField
      FieldName = 'MESSAGE_VN'
      Size = 255
    end
    object qryMsgListTITLE_VN: TWideStringField
      FieldName = 'TITLE_VN'
      Size = 63
    end
    object qryMsgListTITLE_ENG: TWideStringField
      FieldName = 'TITLE_ENG'
      Size = 63
    end
    object qryMsgListIMAGE_ID: TSmallintField
      FieldName = 'IMAGE_ID'
    end
  end
  object dsMsgList: TDataSource
    DataSet = qryMsgList
    Left = 638
    Top = 34
  end
  object qryPComObj: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryPComObjBeforeOpen
    OnFilterRecord = qryPComObjFilterRecord
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3'
      '     , OBJREF_ID'
      '     , OREFTYPE_ID'
      '     , SUBINFO_4'
      '     , SUBINFO_5'
      '     , SUBINFO_6'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID)'
      
        'where OBJECT_LIST.OTYPE_ID>6 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      ''
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 742
    Top = 405
    object qryPComObjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPComObjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPComObjOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPComObjOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPComObjSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPComObjSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPComObjOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPComObjOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPComObjOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPComObjOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPComObjDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPComObjMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPComObjLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPComObjCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPComObjDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPComObjSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPComObjOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPComObjOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
    object qryPComObjSUBINFO_4: TWideStringField
      FieldName = 'SUBINFO_4'
      Size = 126
    end
    object qryPComObjSUBINFO_5: TWideStringField
      FieldName = 'SUBINFO_5'
      Size = 126
    end
    object qryPComObjSUBINFO_6: TWideStringField
      FieldName = 'SUBINFO_6'
      Size = 126
    end
  end
  object dsPComObj: TDataSource
    DataSet = qryPComObj
    Left = 744
    Top = 419
  end
  object qryObjType: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OTYPE_ID'
      '     , OTYPE_NAME'
      '     , ID_CAPTION'
      '     , NAME_CAPTION'
      '     , OTHER_CAPTION'
      '     , SUB1_CAPTION'
      '     , SUB2_CAPTION'
      '     , NOTE_CAPTION'
      '     , OTYPE_NOTE'
      '     , SHORT_NAME'
      '     , LOAIDTTC'
      '     , ID_FORMAT'
      'FROM OBJECT_TYPE '
      'order by OTYPE_ID')
    FieldOptions = []
    Left = 808
    Top = 404
    object qryObjTypeOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryObjTypeOTYPE_NAME: TWideStringField
      FieldName = 'OTYPE_NAME'
      Size = 126
    end
    object qryObjTypeID_CAPTION: TWideStringField
      FieldName = 'ID_CAPTION'
      Size = 63
    end
    object qryObjTypeNAME_CAPTION: TWideStringField
      FieldName = 'NAME_CAPTION'
      Size = 63
    end
    object qryObjTypeOTHER_CAPTION: TWideStringField
      FieldName = 'OTHER_CAPTION'
      Size = 63
    end
    object qryObjTypeSUB1_CAPTION: TWideStringField
      FieldName = 'SUB1_CAPTION'
      Size = 63
    end
    object qryObjTypeSUB2_CAPTION: TWideStringField
      FieldName = 'SUB2_CAPTION'
      Size = 63
    end
    object qryObjTypeNOTE_CAPTION: TWideStringField
      FieldName = 'NOTE_CAPTION'
      Size = 63
    end
    object qryObjTypeOTYPE_NOTE: TWideStringField
      FieldName = 'OTYPE_NOTE'
      Size = 15
    end
    object qryObjTypeSHORT_NAME: TWideStringField
      FieldName = 'SHORT_NAME'
      Size = 30
    end
    object qryObjTypeLOAIDTTC: TSmallintField
      FieldName = 'LOAIDTTC'
    end
    object qryObjTypeID_FORMAT: TWideStringField
      FieldName = 'ID_FORMAT'
      Size = 30
    end
  end
  object dsObjType: TDataSource
    DataSet = qryObjType
    Left = 809
    Top = 421
  end
  object qryPObjGrp: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OBJGRP_ID'
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    OnFilterRecord = qryPObjGrpFilterRecord
    SQL.Strings = (
      'SELECT OBJGRP_ID'
      '     , OTYPE_ID'
      '     , OBJGRP_NAME'
      '     , P_OBJGRP_ID '
      'FROM OBJECT_GROUP'
      'order by OBJGRP_ID')
    FieldOptions = []
    Left = 808
    Top = 326
    object qryPObjGrpOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Required = True
      Size = 15
    end
    object qryPObjGrpOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPObjGrpOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPObjGrpP_OBJGRP_ID: TWideStringField
      FieldName = 'P_OBJGRP_ID'
      Size = 15
    end
  end
  object dsPObjGrp: TDataSource
    DataSet = qryPObjGrp
    Left = 807
    Top = 345
  end
  object qryWorkList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM WORK_LIST'
      'WHERE'
      '   WORK_ID = :OLD_WORK_ID')
    EditSQL.Strings = (
      'UPDATE WORK_LIST SET'
      '   WORK_ID = :WORK_ID, /*PK*/'
      '   WORK_NAME = :WORK_NAME,'
      '   WORK_ADDR = :WORK_ADDR,'
      '   WORK_STATUS = :WORK_STATUS'
      'WHERE'
      '   WORK_ID = :OLD_WORK_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO WORK_LIST('
      '   WORK_ID, /*PK*/'
      '   WORK_NAME,'
      '   WORK_ADDR,'
      '   WORK_STATUS)'
      'VALUES ('
      '   :WORK_ID,'
      '   :WORK_NAME,'
      '   :WORK_ADDR,'
      '   :WORK_STATUS)')
    KeyLinks.Strings = (
      'WORK_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryWarehouseBeforeEdit
    BeforeDelete = qryWarehouseBeforeDelete
    AfterDelete = qryWorkListAfterDelete
    BeforeInsert = qryWarehouseBeforeInsert
    AfterInsert = qryWorkListAfterInsert
    BeforePost = qryWorkListBeforePost
    AfterPost = qryWorkListAfterPost
    OnNewRecord = qryWorkListNewRecord
    OnPostError = qryWorkListPostError
    OnDeleteError = qryWorkListDeleteError
    SQL.Strings = (
      'SELECT WORK_ID'
      '     , WORK_NAME'
      '     , WORK_ADDR'
      '     , WORK_STATUS'
      'FROM WORK_LIST'
      'order by  WORK_ID')
    FieldOptions = []
    Left = 128
    Top = 100
    object qryWorkListWORK_NAME: TWideStringField
      FieldName = 'WORK_NAME'
      Size = 126
    end
    object qryWorkListWORK_ADDR: TWideStringField
      FieldName = 'WORK_ADDR'
      Size = 126
    end
    object qryWorkListWORK_STATUS: TSmallintField
      FieldName = 'WORK_STATUS'
    end
    object qryWorkListWORK_ID: TWideStringField
      FieldName = 'WORK_ID'
      Required = True
      Size = 15
    end
  end
  object dsWorkList: TDataSource
    DataSet = qryWorkList
    Left = 128
    Top = 116
  end
  object qryPWork: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'WORK_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WORK_ID'
      '     , WORK_NAME'
      '     , WORK_ADDR'
      '     , WORK_STATUS'
      'FROM WORK_LIST'
      'where WORK_STATUS<>1'
      'order by WORK_ID')
    FieldOptions = []
    Left = 469
    Top = 325
    object qryPWorkWORK_NAME: TWideStringField
      FieldName = 'WORK_NAME'
      Size = 126
    end
    object qryPWorkWORK_ADDR: TWideStringField
      FieldName = 'WORK_ADDR'
      Size = 126
    end
    object qryPWorkWORK_STATUS: TSmallintField
      FieldName = 'WORK_STATUS'
    end
    object qryPWorkWORK_ID: TWideStringField
      FieldName = 'WORK_ID'
      Required = True
      Size = 15
    end
  end
  object dsPWork: TDataSource
    DataSet = qryPWork
    Left = 469
    Top = 339
  end
  object qryDefEntrys: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ENTRY_OPTION'
      'WHERE'
      '   ENTRYOPT_ID = :OLD_ENTRYOPT_ID')
    EditSQL.Strings = (
      'UPDATE ENTRY_OPTION SET'
      '   ENTRYOPT_ID = :ENTRYOPT_ID, /*PK*/'
      '   TKNO = :TKNO,'
      '   TKCO = :TKCO,'
      '   ENTRY_NOTE = :ENTRY_NOTE'
      'WHERE'
      '   ENTRYOPT_ID = :OLD_ENTRYOPT_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO ENTRY_OPTION('
      '   ENTRYOPT_ID, /*PK*/'
      '   TKNO,'
      '   TKCO,'
      '   ENTRY_NOTE)'
      'VALUES ('
      '   :ENTRYOPT_ID,'
      '   :TKNO,'
      '   :TKCO,'
      '   :ENTRY_NOTE)')
    KeyLinks.Strings = (
      'ENTRYOPT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegTransferBeforeEdit
    BeforeDelete = qryRegTransferBeforeDelete
    BeforeInsert = qryRegTransferBeforeInsert
    AfterInsert = qryDefEntrysAfterInsert
    BeforePost = qryDefEntrysBeforePost
    OnPostError = qryDefEntrysPostError
    SQL.Strings = (
      'SELECT ENTRYOPT_ID'
      '     , TKNO'
      '     , TKCO'
      '     , ENTRY_NOTE'
      'FROM ENTRY_OPTION')
    FieldOptions = []
    Left = 690
    Top = 100
    object qryDefEntrysENTRYOPT_ID: TSmallintField
      FieldName = 'ENTRYOPT_ID'
      Required = True
    end
    object qryDefEntrysTKNO: TWideStringField
      FieldName = 'TKNO'
      Required = True
      Size = 15
    end
    object qryDefEntrysTKCO: TWideStringField
      FieldName = 'TKCO'
      Required = True
      Size = 15
    end
    object qryDefEntrysENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Required = True
      Size = 126
    end
  end
  object dsDefEntrys: TDataSource
    DataSet = qryDefEntrys
    Left = 690
    Top = 116
  end
  object ImgLstMsgBox: TImageList
    Left = 696
    Top = 20
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD006331
      310063313100633131005A3131005A3131005A31310063313100633131006331
      31005A3131006B181800D6E7E700000000000000000000000000000000000000
      000000000000000000000000000000000000947B6B0063422900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6E7E700A5846300D6E7EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B84840000005A000000730000006B0000004200181818007B84
      8C00000000000000000000000000000000000000000063D6EF0000B5DE0000B5
      DE0000B5DE0000B5DE0000BDE70000CEFF0000B5E70000B5DE0000B5DE0000B5
      DE0000BDE70052425200A5949400000000000000000000000000000000000000
      000000000000000000000000000063392900F7CEA50063392100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6EFEF00B5946B00CEA57300D6E7EF000000
      000000000000000000000000000000000000000000000000000000000000D6E7
      EF0000007B0000008C0000008400000084000000840000008400000084000000
      310031313900000000000000000000000000000000005AD6F70000C6EF0000D6
      FF0000D6FF0000D6FF0018394A00630010004A9CBD0000D6FF0000D6FF0000D6
      FF0000D6FF004A4A5A0000000000000000000000000000000000000000000000
      000000000000CEDEDE006B524200D6B58C00FFD6A5005A312100C6CECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6E7E700ADBDBD00ADA59400DEB58C00D6A57B00C6CED600D6E7
      EF00000000000000000000000000000000000000000000000000000000000000
      9C0000008C000000940000009C0000009C0000009C0000009400000084000000
      7B0000005A00949C9C000000000000000000000000000000000000BDE70010EF
      FF0000D6FF0000DEFF0000ADCE000000000000D6FF0000DEFF0000D6FF0021FF
      FF0000D6FF00AD94940000000000000000000000000000000000000000008C6B
      5A00BDA58400C6AD8C00CEAD8C00E7C69C00F7CEA500CEAD9400B58C63004A21
      08008C7B6B00000000000000000000000000000000000000000000000000ADB5
      B500B5947300BDA58400CEAD8400DEB59400FFD6AD00E7BD9C00BD9C7B008C6B
      52005A636300D6EFEF00000000000000000000000000000000002121AD000000
      A5002929AD00FFFFFF000000AD000000AD000000AD000000A500FFFFFF000000
      8C0000008C0000000800ADB5BD0000000000000000000000000084E7F70008DE
      FF0000DEFF0000DEFF0000E7FF00109CBD0000E7FF0000DEFF0000E7FF0008E7
      FF0000DEFF000000000000000000000000000000000000000000B5A59400CEB5
      9C00E7C6AD00FFE7BD00FFDEB500F7CEA500FFE7BD00F7CEA500DEBD9C00CEB5
      940073422100BDC6BD0000000000000000000000000000000000D6E7E700BDA5
      8C00DEBDA500F7D6B500FFDEBD00A55A3100F7AD8400FFDEBD00EFCEA500D6B5
      9400BD9C7B008C949400000000000000000000000000000000000000A5000000
      B500CECEA500FFFFFF004A4ACE000000B5000000B500F7F7DE00FFFFFF008484
      AD0000009C0000008C00525A5A000000000000000000000000000000000000CE
      EF0010F7FF0000DEFF0000F7FF004A00000000EFFF0000DEFF0021FFFF0000DE
      FF006329290000000000000000000000000000000000CEDEDE00C6B59C00FFDE
      C600FFE7C600FFE7C6008C391800A53908008C421800FFE7C600FFDEBD00EFC6
      A500CEB5940063423100D6E7E700000000000000000000000000B59C8400E7CE
      B500FFE7C600FFE7C600FFE7C6006B18000073210000F7CEAD00FFDEBD00FFDE
      B500DEBD9C005A524A00BDC6CE0000000000000000007B84DE000000AD000000
      C6000000BD00C6C6A500FFFFFF003939CE00FFFFFF00FFFFFF006B6B8C000000
      BD000000AD0000009C00182121000000000000000000000000000000000000CE
      E70008E7FF0000E7FF0000FFFF007B00000000FFFF0000E7FF0008EFFF0000E7
      FF00AD94940000000000000000000000000000000000D6C6A500DECEB500FFEF
      CE00FFE7CE00FFE7CE009C6339009C310000CE947300FFE7C600FFE7C600FFE7
      C600E7CEAD006B392100B5B5B5000000000000000000D6D6D600CEBDA500FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00DEAD9400D6A58400FFE7C600FFE7C600FFDE
      BD00FFDEBD00CEAD8C00737B7B0000000000000000003131C6000000BD000000
      CE000000CE000000BD00FFFFFF00FFFFFF00FFFFFF00F7F7DE000000C6000000
      C6000000BD000000A50010101800000000000000000000000000000000000000
      000000D6EF0010FFFF0000A5B5006B21310000CEE70008F7FF0000F7FF008418
      18000000000000000000000000000000000000000000D6C6BD00FFF7DE00FFEF
      DE00FFEFD600FFEFD6009C6342009C310000CE9C7B00FFEFD600FFE7CE00FFE7
      CE00FFEFCE00E7C6AD009C948C000000000000000000CEB5AD00EFDECE00FFEF
      DE00FFEFD600FFEFD600FFEFD600F7D6B500CE846300FFEFD600FFE7CE00FFE7
      CE00FFE7CE00E7CEB500847B730000000000000000001818CE000808D6000808
      E7000000DE000000D600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000CE000000
      CE000000CE000000AD0018182900000000000000000000000000000000000000
      000008DEEF0000EFFF00000810003900100021526B0021FFFF00219CA500CEDE
      DE000000000000000000000000000000000000000000D6CEBD00FFF7E700FFEF
      DE00FFEFDE00FFEFDE00A56B4A009C310000CE9C7B00FFEFD600FFEFD600FFEF
      D600FFEFD600E7D6BD009C948C000000000000000000CEC6BD00EFE7D600FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFF7E7007B180000F7B58C00FFEFD600FFEF
      D600FFE7D600E7D6BD00ADA594000000000000000000525ADE001010E7001818
      F7000000EF00EFEFD600FFFFFF008484BD00DEDEC600FFFFFF004A4AE7000000
      DE000808D6000808BD0042424A00000000000000000000000000000000000000
      00000000000000DEEF000000000031000800294A5A0000F7FF007B1010000000
      00000000000000000000000000000000000000000000DED6CE00FFFFEF00FFF7
      E700FFF7E700FFFFEF007B0800008C210000C6947B00FFF7DE00FFEFDE00FFEF
      DE00FFFFE700E7D6BD00B5B5AD000000000000000000CEC6BD00F7E7DE00FFF7
      E700FFF7E700FFF7E700F7D6BD00FFEFDE00AD7B5A009C390000FFF7E700FFEF
      DE00FFEFD600EFD6C600ADA594000000000000000000BDCEEF002121EF002121
      FF00DEDEC600FFFFFF0073739C000000EF000000D600C6C6A500FFFFFF005252
      DE001010E7000808CE009CADAD00000000000000000000000000000000000000
      00000000000000E7EF0010FFFF0000BDC60021FFFF0000FFFF00CED6D6000000
      00000000000000000000000000000000000000000000DED6D600FFF7EF00FFFF
      EF00FFF7EF00FFFFF700FFFFFF00FFFFF700FFF7EF00FFF7E700FFF7E700FFF7
      DE00FFFFEF0094735A00D6E7E7000000000000000000DEDEDE00EFE7DE00FFFF
      F700FFF7EF00FFF7EF008C290000A55A3900D6B59C0094310000F7DECE00FFEF
      E700FFFFEF00D6C6AD00A5B5B5000000000000000000000000002121EF003939
      FF0073739C00DEDEBD000000F7000000E7000000EF000000DE00C6C69C001010
      FF001818E7000810940000000000000000000000000000000000000000000000
      0000000000000000000000EFF70031FFFF0000F7FF00524A4A00000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700FFFF
      FF00FFFFFF00FFFFF70063080000DE844A00D6AD9C00FFFFF700FFFFFF00FFF7
      EF00FFF7EF00D6E7EF0000000000000000000000000000000000E7DED600F7F7
      EF00FFFFFF00FFFFF700AD735A00A5522900731800006B290800FFFFF700FFFF
      FF00F7EFDE00ADB5B50000000000000000000000000000000000000000004242
      FF006B6BFF008484FF006363FF004A4AFF004A4AFF005252FF004A4AFF003939
      FF002121F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000EFEF0029FFFF0000FFFF00AD8C8C00000000000000
      0000000000000000000000000000000000000000000000000000D6EFEF00EFF7
      F700FFFFFF00FFFFFF007B52390039000000FFFFF700FFFFFF00FFF7F700FFFF
      FF00C6C6BD00000000000000000000000000000000000000000000000000E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
      EF00D6CEBD00000000000000000000000000000000000000000000000000737B
      F7004A4AFF007B7BFF00A5A5FF00A5A5FF008C8CFF007373FF004A4AFF002121
      FF00C6D6DE000000000000000000000000000000000000000000000000000000
      00000000000000000000BDEFEF0000FFFF00D6E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DED6D600F7F7F700FFFFFF00FFFFFF00FFFFFF00F7FFFF00BDB5AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFE7E700CED6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000003939FF007373FF008484FF007373FF005252FF005A63EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFC001FF3FFF1FF80F
      8001FE3FFE1FE0078003F81FF80FE003C003E007E003C001C007C003C003C001
      E0078001C0018001E007800180018001F00F800180018001F00F800180018001
      F81F800180018001F81F80018001C003FC3FC003C003E007FC3FC007E007E007
      FC7FF01FF00FF81FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryCommon: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsMain
    Unicode = True
    RecordCountAccurate = True
    OnError = qryCommonError
    FieldOptions = []
    Left = 16
    Top = 324
  end
  object qryAutoOut: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM REGAUTOOUT'
      'WHERE'
      '   TK_DT = :OLD_TK_DT')
    EditSQL.Strings = (
      'UPDATE REGAUTOOUT SET'
      '   TK_DT = :TK_DT, /*PK*/'
      '   TK_HH = :TK_HH,'
      '   TK_GV = :TK_GV,'
      '   IS_ACTIVE = :IS_ACTIVE,'
      '   TK_TL = :TK_TL'
      'WHERE'
      '   TK_DT = :OLD_TK_DT')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO REGAUTOOUT('
      '   TK_DT, /*PK*/'
      '   TK_HH,'
      '   TK_GV,'
      '   IS_ACTIVE,'
      '   TK_TL)'
      'VALUES ('
      '   :TK_DT,'
      '   :TK_HH,'
      '   :TK_GV,'
      '   :IS_ACTIVE,'
      '   :TK_TL)')
    KeyLinks.Strings = (
      'TK_DT')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegForBillsBeforeEdit
    BeforeDelete = qryRegForBillsBeforeDelete
    BeforeInsert = qryRegForBillsBeforeInsert
    AfterInsert = qryAutoOutAfterInsert
    BeforePost = qryAutoOutBeforePost
    OnPostError = qryAutoOutPostError
    SQL.Strings = (
      'SELECT TK_DT'
      '     , TK_HH'
      '     , TK_GV'
      '     , IS_ACTIVE'
      '     , TK_TL'
      'FROM REGAUTOOUT order by TK_DT')
    FieldOptions = []
    Left = 680
    Top = 328
    object qryAutoOutTK_DT: TWideStringField
      FieldName = 'TK_DT'
      Required = True
      Size = 15
    end
    object qryAutoOutTK_HH: TWideStringField
      FieldName = 'TK_HH'
      Required = True
      Size = 15
    end
    object qryAutoOutTK_GV: TWideStringField
      FieldName = 'TK_GV'
      Required = True
      Size = 15
    end
    object qryAutoOutIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
    end
    object qryAutoOutTK_TL: TWideStringField
      FieldName = 'TK_TL'
      Size = 15
    end
  end
  object dsAutoOut: TDataSource
    DataSet = qryAutoOut
    Left = 680
    Top = 342
  end
  object qryParams: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OPTION_TABLE'
      'WHERE'
      '   PPXUATKHO = :OLD_PPXUATKHO')
    EditSQL.Strings = (
      'UPDATE OPTION_TABLE SET'
      '   PPXUATKHO = :PPXUATKHO, /*PK*/'
      '   PPPBCPSXC = :PPPBCPSXC,'
      '   TYLECPNVL = :TYLECPNVL,'
      '   TYLECPNC = :TYLECPNC,'
      '   SDGIABAN = :SDGIABAN,'
      '   CHOSUAGIABAN = :CHOSUAGIABAN,'
      '   SDGIAMUA = :SDGIAMUA,'
      '   CHOSUAGIAMUA = :CHOSUAGIAMUA,'
      '   SDGIAKH = :SDGIAKH,'
      '   CHOSUAGIAKH = :CHOSUAGIAKH,'
      '   SDGIABQ = :SDGIABQ,'
      '   CHOSUAGIABQ = :CHOSUAGIABQ,'
      '   CHOSUATHANHTIEN = :CHOSUATHANHTIEN,'
      '   ALLOWCHANGETYPE = :ALLOWCHANGETYPE,'
      '   PTTHUEHDKD = :PTTHUEHDKD,'
      '   PTTHUEHDTC = :PTTHUEHDTC,'
      '   BEGIN_MONTH = :BEGIN_MONTH,'
      '   BEGIN_YEAR = :BEGIN_YEAR,'
      '   RANGBUOCNGAY = :RANGBUOCNGAY,'
      '   USEDOCUMENTLOG = :USEDOCUMENTLOG,'
      '   USEUPPERCASE = :USEUPPERCASE,'
      '   DECIMALSL_LEN = :DECIMALSL_LEN,'
      '   DECIMALDG_LEN = :DECIMALDG_LEN,'
      '   DECIMALTT_LEN = :DECIMALTT_LEN,'
      '   TGSDCCDC = :TGSDCCDC,'
      '   BBNHAPYT = :BBNHAPYT,'
      '   GTCLKHAUHAO = :GTCLKHAUHAO,'
      '   ALLOW_NEGINSTOCK = :ALLOW_NEGINSTOCK,'
      '   DIRECT_DISCOUNT = :DIRECT_DISCOUNT,'
      '   ALLOW_MIN_INSTOCK = :ALLOW_MIN_INSTOCK'
      'WHERE'
      '   PPXUATKHO = :OLD_PPXUATKHO')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO OPTION_TABLE('
      '   PPXUATKHO, /*PK*/'
      '   PPPBCPSXC,'
      '   TYLECPNVL,'
      '   TYLECPNC,'
      '   SDGIABAN,'
      '   CHOSUAGIABAN,'
      '   SDGIAMUA,'
      '   CHOSUAGIAMUA,'
      '   SDGIAKH,'
      '   CHOSUAGIAKH,'
      '   SDGIABQ,'
      '   CHOSUAGIABQ,'
      '   CHOSUATHANHTIEN,'
      '   ALLOWCHANGETYPE,'
      '   PTTHUEHDKD,'
      '   PTTHUEHDTC,'
      '   BEGIN_MONTH,'
      '   BEGIN_YEAR,'
      '   RANGBUOCNGAY,'
      '   USEDOCUMENTLOG,'
      '   USEUPPERCASE,'
      '   DECIMALSL_LEN,'
      '   DECIMALDG_LEN,'
      '   DECIMALTT_LEN,'
      '   TGSDCCDC,'
      '   BBNHAPYT,'
      '   GTCLKHAUHAO,'
      '   ALLOW_NEGINSTOCK,'
      '   DIRECT_DISCOUNT,'
      '   ALLOW_MIN_INSTOCK)'
      'VALUES ('
      '   :PPXUATKHO,'
      '   :PPPBCPSXC,'
      '   :TYLECPNVL,'
      '   :TYLECPNC,'
      '   :SDGIABAN,'
      '   :CHOSUAGIABAN,'
      '   :SDGIAMUA,'
      '   :CHOSUAGIAMUA,'
      '   :SDGIAKH,'
      '   :CHOSUAGIAKH,'
      '   :SDGIABQ,'
      '   :CHOSUAGIABQ,'
      '   :CHOSUATHANHTIEN,'
      '   :ALLOWCHANGETYPE,'
      '   :PTTHUEHDKD,'
      '   :PTTHUEHDTC,'
      '   :BEGIN_MONTH,'
      '   :BEGIN_YEAR,'
      '   :RANGBUOCNGAY,'
      '   :USEDOCUMENTLOG,'
      '   :USEUPPERCASE,'
      '   :DECIMALSL_LEN,'
      '   :DECIMALDG_LEN,'
      '   :DECIMALTT_LEN,'
      '   :TGSDCCDC,'
      '   :BBNHAPYT,'
      '   :GTCLKHAUHAO,'
      '   :ALLOW_NEGINSTOCK,'
      '   :DIRECT_DISCOUNT,'
      '   :ALLOW_MIN_INSTOCK)')
    KeyLinks.Strings = (
      'PPXUATKHO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryParamsBeforeEdit
    OnNewRecord = qryParamsNewRecord
    OnPostError = qryParamsPostError
    SQL.Strings = (
      'SELECT PPXUATKHO'
      '     , PPPBCPSXC'
      '     , TYLECPNVL'
      '     , TYLECPNC'
      '     , SDGIABAN'
      '     , CHOSUAGIABAN'
      '     , SDGIAMUA'
      '     , CHOSUAGIAMUA'
      '     , SDGIAKH'
      '     , CHOSUAGIAKH'
      '     , SDGIABQ'
      '     , CHOSUAGIABQ'
      '     , CHOSUATHANHTIEN'
      '     , ALLOWCHANGETYPE'
      '     , PTTHUEHDKD'
      '     , PTTHUEHDTC'
      '     , BEGIN_MONTH'
      '     , BEGIN_YEAR'
      '     , RANGBUOCNGAY'
      '     , USEDOCUMENTLOG'
      '     , USEUPPERCASE'
      '     , DECIMALSL_LEN'
      '     , DECIMALDG_LEN'
      '     , DECIMALTT_LEN'
      '     , TGSDCCDC,BBNHAPYT'
      '     , GTCLKHAUHAO'
      '     , ALLOW_NEGINSTOCK'
      '     , DIRECT_DISCOUNT'
      '     , ALLOW_MIN_INSTOCK'
      'FROM OPTION_TABLE')
    FieldOptions = []
    Left = 68
    Top = 140
    object qryParamsPPXUATKHO: TSmallintField
      FieldName = 'PPXUATKHO'
      Required = True
    end
    object qryParamsPPPBCPSXC: TSmallintField
      FieldName = 'PPPBCPSXC'
    end
    object qryParamsTYLECPNVL: TSmallintField
      FieldName = 'TYLECPNVL'
    end
    object qryParamsTYLECPNC: TSmallintField
      FieldName = 'TYLECPNC'
    end
    object qryParamsSDGIABAN: TSmallintField
      FieldName = 'SDGIABAN'
    end
    object qryParamsCHOSUAGIABAN: TSmallintField
      FieldName = 'CHOSUAGIABAN'
    end
    object qryParamsSDGIAMUA: TSmallintField
      FieldName = 'SDGIAMUA'
    end
    object qryParamsCHOSUAGIAMUA: TSmallintField
      FieldName = 'CHOSUAGIAMUA'
    end
    object qryParamsSDGIAKH: TSmallintField
      FieldName = 'SDGIAKH'
    end
    object qryParamsCHOSUAGIAKH: TSmallintField
      FieldName = 'CHOSUAGIAKH'
    end
    object qryParamsSDGIABQ: TSmallintField
      FieldName = 'SDGIABQ'
    end
    object qryParamsCHOSUAGIABQ: TSmallintField
      FieldName = 'CHOSUAGIABQ'
    end
    object qryParamsCHOSUATHANHTIEN: TSmallintField
      FieldName = 'CHOSUATHANHTIEN'
    end
    object qryParamsALLOWCHANGETYPE: TSmallintField
      FieldName = 'ALLOWCHANGETYPE'
    end
    object qryParamsPTTHUEHDKD: TSmallintField
      FieldName = 'PTTHUEHDKD'
    end
    object qryParamsPTTHUEHDTC: TSmallintField
      FieldName = 'PTTHUEHDTC'
    end
    object qryParamsBEGIN_MONTH: TSmallintField
      FieldName = 'BEGIN_MONTH'
    end
    object qryParamsBEGIN_YEAR: TSmallintField
      FieldName = 'BEGIN_YEAR'
    end
    object qryParamsRANGBUOCNGAY: TSmallintField
      FieldName = 'RANGBUOCNGAY'
    end
    object qryParamsUSEDOCUMENTLOG: TSmallintField
      FieldName = 'USEDOCUMENTLOG'
    end
    object qryParamsUSEUPPERCASE: TSmallintField
      FieldName = 'USEUPPERCASE'
    end
    object qryParamsDECIMALSL_LEN: TSmallintField
      FieldName = 'DECIMALSL_LEN'
    end
    object qryParamsDECIMALDG_LEN: TSmallintField
      FieldName = 'DECIMALDG_LEN'
    end
    object qryParamsDECIMALTT_LEN: TSmallintField
      FieldName = 'DECIMALTT_LEN'
    end
    object qryParamsTGSDCCDC: TSmallintField
      FieldName = 'TGSDCCDC'
    end
    object qryParamsBBNHAPYT: TSmallintField
      FieldName = 'BBNHAPYT'
    end
    object qryParamsGTCLKHAUHAO: TIBOFloatField
      FieldName = 'GTCLKHAUHAO'
    end
    object qryParamsALLOW_NEGINSTOCK: TSmallintField
      FieldName = 'ALLOW_NEGINSTOCK'
    end
    object qryParamsDIRECT_DISCOUNT: TSmallintField
      FieldName = 'DIRECT_DISCOUNT'
    end
    object qryParamsALLOW_MIN_INSTOCK: TSmallintField
      FieldName = 'ALLOW_MIN_INSTOCK'
    end
  end
  object qryEntryList: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'kyht'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'tungay'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'denngay'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'branch_id'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'doctype_id'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'doc_id'
      'period_id'
      'ENTRY_ID'
      'branch_id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryEntryListBeforeOpen
    DataSource = dsDocType
    SQL.Strings = (
      
        'select doc_id, doc_date,ENTRY_ID, doc_person, doctype_id,period_' +
        'id,template_id, OBJECT_ID, HASTEMPLATE,'
      
        'DEBIT_ACC,DEBIT_OBJ,CREDIT_ACC,CREDIT_OBJ,ENTRY_AMOUNT,ENTRY_PRI' +
        'CE,ENTRY_VALUE,ENTRY_NOTE,yeutono,yeutoco,'
      'branch_id,branch_name, yeutono2,yeutoco2'
      'from SP_GETENTRYLIST(:kyht,:tungay,:denngay,:branch_id)'
      'where doctype_id=:doctype_id order by doc_id')
    FieldOptions = []
    Left = 572
    Top = 16
    object qryEntryListDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Size = 30
    end
    object qryEntryListDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
    end
    object qryEntryListDOC_PERSON: TWideStringField
      FieldName = 'DOC_PERSON'
      Size = 126
    end
    object qryEntryListDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
    end
    object qryEntryListPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryEntryListTEMPLATE_ID: TIntegerField
      FieldName = 'TEMPLATE_ID'
    end
    object qryEntryListOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryEntryListHASTEMPLATE: TWideStringField
      FieldName = 'HASTEMPLATE'
      Size = 3
    end
    object qryEntryListDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Size = 15
    end
    object qryEntryListDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Size = 30
    end
    object qryEntryListCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Size = 15
    end
    object qryEntryListCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      Size = 30
    end
    object qryEntryListENTRY_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryEntryListENTRY_PRICE: TIBOFloatField
      Tag = 1
      FieldName = 'ENTRY_PRICE'
    end
    object qryEntryListENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryEntryListENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryEntryListENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
    end
    object qryEntryListYEUTONO: TWideStringField
      FieldName = 'YEUTONO'
      Size = 30
    end
    object qryEntryListYEUTOCO: TWideStringField
      FieldName = 'YEUTOCO'
      Size = 30
    end
    object qryEntryListBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
    object qryEntryListBRANCH_NAME: TWideStringField
      FieldName = 'BRANCH_NAME'
      Size = 126
    end
    object qryEntryListYEUTONO2: TWideStringField
      FieldName = 'YEUTONO2'
      Size = 90
    end
    object qryEntryListYEUTOCO2: TWideStringField
      FieldName = 'YEUTOCO2'
      Size = 90
    end
  end
  object dsEntryList: TDataSource
    DataSet = qryEntryList
    Left = 572
    Top = 33
  end
  object qryPKH: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3'
      '     , OBJREF_ID'
      '     , OREFTYPE_ID'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID)'
      
        'where OBJECT_LIST.OTYPE_ID=1 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 712
    Top = 482
    object qryPKHOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPKHOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPKHOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPKHOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPKHSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPKHSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPKHOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPKHOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPKHOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPKHOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPKHDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPKHMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPKHLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPKHCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPKHDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPKHSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPKHOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPKHOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object qryPHH: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3'
      '     , OBJREF_ID'
      '     , OREFTYPE_ID'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID)'
      
        'where OBJECT_LIST.OTYPE_ID=2 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 760
    Top = 482
    object qryPHHOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPHHOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPHHOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPHHOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPHHSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPHHSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPHHOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPHHOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPHHOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPHHOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPHHDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPHHMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPHHLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPHHCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPHHDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPHHSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPHHOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPHHOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object qryPTS: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3'
      '     , OBJREF_ID'
      '     , OREFTYPE_ID'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID)'
      
        'where OBJECT_LIST.OTYPE_ID=3 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 274
    Top = 520
    object qryPTSOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPTSOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPTSOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPTSOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPTSSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPTSSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPTSOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPTSOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPTSOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPTSOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPTSDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPTSMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPTSLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPTSCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPTSDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPTSSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPTSOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPTSOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object qryPNV: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3     '
      ', OBJREF_ID'
      '     , OREFTYPE_ID'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID)'
      
        'where OBJECT_LIST.OTYPE_ID=4 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 508
    Top = 544
    object qryPNVOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPNVOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPNVOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPNVOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPNVSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPNVSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPNVOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPNVOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPNVOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPNVOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPNVDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPNVMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPNVLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPNVCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPNVDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPNVSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPNVOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPNVOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object qryPQTSX: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3     '
      '     , OBJREF_ID'
      '     , OREFTYPE_ID'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID)'
      
        'where OBJECT_LIST.OTYPE_ID=6 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 666
    Top = 472
    object qryPQTSXOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPQTSXOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPQTSXOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPQTSXOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPQTSXSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPQTSXSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPQTSXOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPQTSXOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPQTSXOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPQTSXOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPQTSXDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPQTSXMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPQTSXLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPQTSXCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPQTSXDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPQTSXSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPQTSXOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPQTSXOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object qryPTMNH: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_LIST.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , OBJGRP_NAME'
      '     , OBJECT_LIST.OBJGRP_ID'
      '     , DEBT_LEN'
      '     , MAKH'
      '     , LOAIKH'
      '     , CREATE_DATE'
      '     , DISCOUNT_DEF'
      '     , SUBINFO_3'
      '     , OBJREF_ID'
      '     , OREFTYPE_ID'
      'FROM OBJECT_LIST'
      
        'LEFT JOIN OBJECT_GROUP on (OBJECT_LIST.OBJGRP_ID =OBJECT_GROUP.O' +
        'BJGRP_ID'
      ' and OBJECT_LIST.OTYPE_ID =OBJECT_GROUP.OTYPE_ID) '
      
        'where OBJECT_LIST.OTYPE_ID=5 and (OBJECT_HIDE is null or OBJECT_' +
        'HIDE <>-1)'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 438
    Top = 538
    object qryPTMNHOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryPTMNHOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPTMNHOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPTMNHOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPTMNHSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPTMNHSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPTMNHOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPTMNHOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPTMNHOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryPTMNHOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryPTMNHDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPTMNHMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryPTMNHLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPTMNHCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPTMNHDISCOUNT_DEF: TIBOFloatField
      FieldName = 'DISCOUNT_DEF'
    end
    object qryPTMNHSUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPTMNHOBJREF_ID: TWideStringField
      FieldName = 'OBJREF_ID'
      Size = 30
    end
    object qryPTMNHOREFTYPE_ID: TSmallintField
      FieldName = 'OREFTYPE_ID'
    end
  end
  object qryCaption: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FORM_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM CAPTION_LIST'
      'WHERE'
      '   CONTROL_NAME = :OLD_CONTROL_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME')
    EditSQL.Strings = (
      'UPDATE CAPTION_LIST SET'
      '   CONTROL_NAME = :CONTROL_NAME, /*PK*/'
      '   FORM_NAME = :FORM_NAME, /*PK*/'
      '   CAPTION_VN = :CAPTION_VN,'
      '   CAPTION_ENG = :CAPTION_ENG,'
      '   CAPTION_VISIBLE = :CAPTION_VISIBLE,'
      '   CAPTION_DEF = :CAPTION_DEF'
      'WHERE'
      '   CONTROL_NAME = :OLD_CONTROL_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO CAPTION_LIST('
      '   CONTROL_NAME, /*PK*/'
      '   FORM_NAME, /*PK*/'
      '   CAPTION_VN,'
      '   CAPTION_ENG,'
      '   CAPTION_VISIBLE,'
      '   CAPTION_DEF)'
      'VALUES ('
      '   :CONTROL_NAME,'
      '   :FORM_NAME,'
      '   :CAPTION_VN,'
      '   :CAPTION_ENG,'
      '   :CAPTION_VISIBLE,'
      '   :CAPTION_DEF)')
    KeyLinks.Strings = (
      'FORM_NAME'
      'CONTROL_NAME')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryCaptionBeforePost
    SQL.Strings = (
      'SELECT FORM_NAME'
      '     , CONTROL_NAME'
      '     , CAPTION_VN'
      '     , CAPTION_ENG'
      '     , CAPTION_VISIBLE'
      '     , CAPTION_DEF'
      'FROM CAPTION_LIST '
      'where FORM_NAME=:FORM_NAME order by CAPTION_VN')
    FieldOptions = []
    Left = 642
    Top = 250
    object qryCaptionFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 30
    end
    object qryCaptionCONTROL_NAME: TWideStringField
      FieldName = 'CONTROL_NAME'
      Required = True
      Size = 63
    end
    object qryCaptionCAPTION_VN: TWideStringField
      FieldName = 'CAPTION_VN'
      Size = 255
    end
    object qryCaptionCAPTION_ENG: TWideStringField
      FieldName = 'CAPTION_ENG'
      Size = 255
    end
    object qryCaptionCAPTION_VISIBLE: TSmallintField
      FieldName = 'CAPTION_VISIBLE'
    end
    object qryCaptionCAPTION_DEF: TWideStringField
      FieldName = 'CAPTION_DEF'
      Size = 255
    end
  end
  object dsCaption: TDataSource
    DataSet = qryCaption
    Left = 642
    Top = 266
  end
  object qryCNQuahan: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'ngayxem'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'thoihan'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'madt')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select SHTK,MADT,TENDT,SUB_1,LOAIDT,SOTUOI,NGAYSOMNHAT,'
      
        '  NODK,CODK,NOPS,COPS,SDNO,SDCO,DEBTTOTAL,DEBTVALUE,tentk,RNGAYX' +
        'EM'
      '  from macro_congno_toihan(:ngayxem,:thoihan,:branch_id)'
      '  order by shtk,madt')
    FieldOptions = []
    Left = 358
    Top = 257
    object qryCNQuahanSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryCNQuahanMADT: TWideStringField
      FieldName = 'MADT'
      Size = 30
    end
    object qryCNQuahanTENDT: TWideStringField
      FieldName = 'TENDT'
      Size = 126
    end
    object qryCNQuahanSUB_1: TWideStringField
      FieldName = 'SUB_1'
      Size = 126
    end
    object qryCNQuahanLOAIDT: TSmallintField
      FieldName = 'LOAIDT'
    end
    object qryCNQuahanSOTUOI: TSmallintField
      FieldName = 'SOTUOI'
    end
    object qryCNQuahanNGAYSOMNHAT: TDateField
      FieldName = 'NGAYSOMNHAT'
    end
    object qryCNQuahanNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryCNQuahanCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryCNQuahanNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryCNQuahanCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryCNQuahanSDNO: TIBOFloatField
      FieldName = 'SDNO'
    end
    object qryCNQuahanSDCO: TIBOFloatField
      FieldName = 'SDCO'
    end
    object qryCNQuahanDEBTTOTAL: TIBOFloatField
      FieldName = 'DEBTTOTAL'
    end
    object qryCNQuahanDEBTVALUE: TIBOFloatField
      FieldName = 'DEBTVALUE'
    end
    object qryCNQuahanTENTK: TWideStringField
      FieldName = 'TENTK'
      Size = 126
    end
    object qryCNQuahanRNGAYXEM: TDateField
      FieldName = 'RNGAYXEM'
    end
  end
  object dsCNQuahan: TDataSource
    DataSet = qryCNQuahan
    Left = 358
    Top = 277
  end
  object qryPBudget: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'BUDGET_NO')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT BUDGET_NO'
      '     , PBUDGET_NO'
      '     , BUDGET_NAME'
      '     , ACCOUNT_ID'
      '     , DIRECTION'
      'FROM BUDGET_TREE')
    FieldOptions = []
    Left = 881
    Top = 405
    object qryPBudgetBUDGET_NO: TIntegerField
      FieldName = 'BUDGET_NO'
      Required = True
    end
    object qryPBudgetPBUDGET_NO: TIntegerField
      FieldName = 'PBUDGET_NO'
    end
    object qryPBudgetBUDGET_NAME: TWideStringField
      FieldName = 'BUDGET_NAME'
      Required = True
      Size = 126
    end
    object qryPBudgetACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 15
    end
    object qryPBudgetDIRECTION: TSmallintField
      FieldName = 'DIRECTION'
    end
  end
  object dsPBudget: TDataSource
    DataSet = qryPBudget
    Left = 883
    Top = 421
  end
  object qryAccOpt: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OPTION_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OPTION_ID'
      '     , ACCOUNT_ID'
      '     , OPTION_NOTE'
      '     , GROUP_NAME'
      'FROM ACCOUNT_OPT')
    FieldOptions = []
    Left = 608
    Top = 477
    object qryAccOptOPTION_ID: TSmallintField
      FieldName = 'OPTION_ID'
      Required = True
    end
    object qryAccOptACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryAccOptOPTION_NOTE: TWideStringField
      FieldName = 'OPTION_NOTE'
      Size = 126
    end
    object qryAccOptGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 63
    end
  end
  object qryPActicle: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACTICLE_ID'
      '     , PACTICLE_ID'
      '     , ACTICLE_NO'
      '     , AGROUP_ID'
      '     , ACTICLE_NAME'
      '     , ACTICLE_LEVEL'
      '     , TKNO'
      '     , TKCO'
      'FROM ACTICLE_LIST order by ACTICLE_ID')
    FieldOptions = []
    Left = 465
    Top = 467
    object qryPActicleACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Required = True
      Size = 30
    end
    object qryPActiclePACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryPActicleACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Required = True
      Size = 15
    end
    object qryPActicleAGROUP_ID: TWideStringField
      FieldName = 'AGROUP_ID'
      Size = 15
    end
    object qryPActicleACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 126
    end
    object qryPActicleACTICLE_LEVEL: TSmallintField
      FieldName = 'ACTICLE_LEVEL'
    end
    object qryPActicleTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryPActicleTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
  end
  object dsPActicle: TDataSource
    DataSet = qryPActicle
    Left = 467
    Top = 485
  end
  object qryDefKQHDKD: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_KETQUAHDKD_A'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_KETQUAHDKD_A SET'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   KYNAY = :KYNAY,'
      '   KYTRUOC = :KYTRUOC,'
      '   LUYKE = :LUYKE,'
      '   LOAICHITIEU = :LOAICHITIEU,'
      '   THUYETMINH = :THUYETMINH'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_KETQUAHDKD_A('
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   KYNAY,'
      '   KYTRUOC,'
      '   LUYKE,'
      '   LOAICHITIEU,'
      '   THUYETMINH)'
      'VALUES ('
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :KYNAY,'
      '   :KYTRUOC,'
      '   :LUYKE,'
      '   :LOAICHITIEU,'
      '   :THUYETMINH)')
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDefRptLCTTBeforeEdit
    BeforeDelete = qryDefKQHDKDBeforeDelete
    BeforeInsert = qryDefKQHDKDBeforeInsert
    AfterInsert = qryDefKQHDKDAfterInsert
    BeforePost = qryDefKQHDKDBeforePost
    OnPostError = qryDefKQHDKDPostError
    SQL.Strings = (
      'SELECT ID'
      '     , CHITIEU'
      '     , MASO'
      '     , KYNAY'
      '     , KYTRUOC'
      '     , LUYKE'
      '     , LOAICHITIEU'
      '     , THUYETMINH'
      'FROM RPT_KETQUAHDKD_A order by ID')
    FieldOptions = []
    Left = 577
    Top = 180
    object qryDefKQHDKDID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryDefKQHDKDCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 126
    end
    object qryDefKQHDKDMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryDefKQHDKDKYNAY: TIBOFloatField
      FieldName = 'KYNAY'
    end
    object qryDefKQHDKDKYTRUOC: TIBOFloatField
      FieldName = 'KYTRUOC'
    end
    object qryDefKQHDKDLUYKE: TIBOFloatField
      FieldName = 'LUYKE'
    end
    object qryDefKQHDKDLOAICHITIEU: TSmallintField
      FieldName = 'LOAICHITIEU'
    end
    object qryDefKQHDKDTHUYETMINH: TWideStringField
      FieldName = 'THUYETMINH'
      Size = 15
    end
  end
  object dsDefKQHDKD: TDataSource
    DataSet = qryDefKQHDKD
    Left = 579
    Top = 198
  end
  object qryPDocBal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'shtk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kyhtht'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MADT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOAIDT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sp'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    EditSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'SOPHIEU'
      'KYHT')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select MADT,LOAIDT,SOPHIEU,NGAYLAP,NOIDUNG,KYHT,'
      
        '    NODK,CODK,NOPS,COPS,NOCK,COCK,tienhang,tienthue,soseri,sohd,' +
        'ngayhd,tenhang,branch_id,'
      '    NOCK-COCK SODUNO, COCK-NOCK SODUCO, '
      '    0 as CHECK_FIELD  '
      '    from macro_doituongps_doc(:shtk,:kyhtht,:kyhtht,:branch_id)'
      '    where MADT=:MADT and LOAIDT=:LOAIDT'
      '       and (NOCK<>0 or COCK<>0)'
      '       and (sophieu<>:sp or kyht<>:kyhtht)'
      '    order by NGAYLAP')
    FieldOptions = []
    Left = 873
    Top = 327
    object qryPDocBalMADT: TWideStringField
      FieldName = 'MADT'
      Size = 30
    end
    object qryPDocBalLOAIDT: TSmallintField
      FieldName = 'LOAIDT'
    end
    object qryPDocBalSOPHIEU: TWideStringField
      FieldName = 'SOPHIEU'
      Size = 30
    end
    object qryPDocBalNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
    end
    object qryPDocBalNOIDUNG: TWideStringField
      FieldName = 'NOIDUNG'
      Size = 255
    end
    object qryPDocBalKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryPDocBalNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryPDocBalCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryPDocBalNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryPDocBalCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryPDocBalNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryPDocBalCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
    object qryPDocBalTIENHANG: TIBOFloatField
      FieldName = 'TIENHANG'
    end
    object qryPDocBalTIENTHUE: TIBOFloatField
      FieldName = 'TIENTHUE'
    end
    object qryPDocBalSOSERI: TWideStringField
      FieldName = 'SOSERI'
      Size = 255
    end
    object qryPDocBalSOHD: TWideStringField
      FieldName = 'SOHD'
      Size = 255
    end
    object qryPDocBalNGAYHD: TDateField
      FieldName = 'NGAYHD'
    end
    object qryPDocBalTENHANG: TWideStringField
      FieldName = 'TENHANG'
      Size = 126
    end
    object qryPDocBalBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
    object qryPDocBalSODUNO: TIBOFloatField
      FieldName = 'SODUNO'
      ReadOnly = True
    end
    object qryPDocBalSODUCO: TIBOFloatField
      FieldName = 'SODUCO'
      ReadOnly = True
    end
    object qryPDocBalCHECK_FIELD: TIntegerField
      FieldName = 'CHECK_FIELD'
      MaxValue = 1
    end
  end
  object dsPDocBal: TDataSource
    DataSet = qryPDocBal
    Left = 873
    Top = 343
  end
  object qryReport: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'tuky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BEGINTEXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsReport
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select shtk,tentk,nodk,codk,nops,cops, nock,cock  '
      'from sp_bc_bangcandoips(:tuky, :denky,:BEGINTEXT,:branch_id)   '
      
        'where shtk not like '#39'0%'#39'  and (nodk<>0 or codk<>0 or nops<>0 or ' +
        'cops<>0) '
      'order by shtk')
    FieldOptions = []
    Left = 16
    Top = 513
  end
  object dsReport: TDataSource
    DataSet = qryReport
    Left = 14
    Top = 528
  end
  object dsSub_1: TDataSource
    DataSet = qrySub_1
    Left = 78
    Top = 527
  end
  object qrySub_1: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsReport
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 78
    Top = 512
  end
  object qrySub_2: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 154
    Top = 519
  end
  object dsSub_2: TDataSource
    DataSet = qrySub_2
    Left = 155
    Top = 529
  end
  object dsSub3: TDataSource
    DataSet = qrySub_3
    Left = 208
    Top = 530
  end
  object qrySub_3: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsReport
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 208
    Top = 515
  end
  object tsReport: TIB_Transaction
    IB_Connection = cnMain
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 150
    Top = 395
  end
  object qrySysLog: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsPCurrency
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , STATUS_LOG'
      'FROM SYSTEM_LOG')
    FieldOptions = []
    Left = 392
    Top = 470
    object qrySysLogPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qrySysLogSTATUS_LOG: TSmallintField
      FieldName = 'STATUS_LOG'
    end
  end
  object qryPInvType: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'INVTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT INVTYPE_ID'
      '     , INVTYPE_NAME'
      'FROM INVOICE_TYPE'
      'order by INVTYPE_ID')
    FieldOptions = []
    Left = 537
    Top = 473
    object qryPInvTypeINVTYPE_ID: TWideStringField
      FieldName = 'INVTYPE_ID'
      Required = True
      Size = 15
    end
    object qryPInvTypeINVTYPE_NAME: TWideStringField
      FieldName = 'INVTYPE_NAME'
      Size = 126
    end
  end
  object dsPInvType: TDataSource
    DataSet = qryPInvType
    Left = 537
    Top = 489
  end
  object qryGetBalObj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CurAcc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CurWare'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CurDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryGetBalObjBeforeOpen
    SQL.Strings = (
      'SELECT *'
      'FROM SP_GET_BALANCE(:CurAcc,:CurWare,:CurDate,:BRANCH_ID)'
      'where OBJECT_ID=:OBJECT_ID')
    FieldOptions = []
    Left = 588
    Top = 530
    object qryGetBalObjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryGetBalObjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryGetBalObjVALUE_1: TIBOFloatField
      FieldName = 'VALUE_1'
    end
    object qryGetBalObjVALUE_2: TIBOFloatField
      FieldName = 'VALUE_2'
    end
  end
  object dsGetBalObj: TDataSource
    DataSet = qryGetBalObj
    Left = 587
    Top = 541
  end
  object qrySysObj: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_OBJECT_LIST'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID')
    EditSQL.Strings = (
      'UPDATE SYS_OBJECT_LIST SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OBJECT_NAME = :OBJECT_NAME,'
      '   ACTIVE_OBJECT = :ACTIVE_OBJECT,'
      '   NOTES = :NOTES,'
      '   FUNCTION_ID = :FUNCTION_ID'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO SYS_OBJECT_LIST('
      '   OBJECT_ID, /*PK*/'
      '   OBJECT_NAME,'
      '   ACTIVE_OBJECT,'
      '   NOTES,'
      '   FUNCTION_ID)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   :OBJECT_NAME,'
      '   :ACTIVE_OBJECT,'
      '   :NOTES,'
      '   :FUNCTION_ID)')
    KeyLinks.Strings = (
      'OBJECT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qrySysObjBeforeEdit
    BeforeDelete = qrySysObjBeforeDelete
    BeforeInsert = qrySysObjBeforeInsert
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_NAME'
      '     , ACTIVE_OBJECT'
      '     , NOTES'
      '     , FUNCTION_ID'
      'FROM SYS_OBJECT_LIST'
      'order by OBJECT_ID')
    FieldOptions = []
    Left = 276
    Top = 456
    object qrySysObjOBJECT_ID: TSmallintField
      FieldName = 'OBJECT_ID'
      Required = True
    end
    object qrySysObjOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 63
    end
    object qrySysObjACTIVE_OBJECT: TSmallintField
      FieldName = 'ACTIVE_OBJECT'
    end
    object qrySysObjNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 126
    end
    object qrySysObjFUNCTION_ID: TSmallintField
      FieldName = 'FUNCTION_ID'
    end
  end
  object dsSysObj: TDataSource
    DataSet = qrySysObj
    Left = 276
    Top = 466
  end
  object qryCountInVisible: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FORM_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryCaptionBeforePost
    SQL.Strings = (
      'SELECT count(CONTROL_NAME) SL    '
      'FROM CAPTION_LIST '
      'where FORM_NAME=:FORM_NAME and CAPTION_VISIBLE=0')
    FieldOptions = []
    Left = 490
    Top = 180
    object qryCountInVisibleSL: TIntegerField
      FieldName = 'SL'
      ReadOnly = True
      Required = True
    end
  end
  object qryABC: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    EditSQL.Strings = (
      'UPDATE ABC SET'
      '   ABC_ID = :ABC_ID, /*PK*/'
      '   P_KEY = :P_KEY,'
      '   S_NO = :S_NO,'
      '   CUS_ID = :CUS_ID,'
      '   CUS_NAME = :CUS_NAME,'
      '   COM_NAME = :COM_NAME'
      'WHERE'
      '   ABC_ID = :OLD_ABC_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO ABC('
      '   ABC_ID, /*PK*/'
      '   P_KEY,'
      '   S_NO,'
      '   CUS_ID,'
      '   CUS_NAME,'
      '   COM_NAME)'
      'VALUES ('
      '   1,'
      '   :P_KEY,'
      '   :S_NO,'
      '   :CUS_ID,'
      '   :CUS_NAME,'
      '   :COM_NAME)')
    KeyLinks.Strings = (
      'ABC_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ABC_ID'
      '     , P_KEY'
      '     , S_NO'
      '     , CUS_ID'
      '     , CUS_NAME'
      '     , COM_NAME'
      'FROM ABC')
    FieldOptions = []
    Left = 18
    Top = 606
    object qryABCABC_ID: TSmallintField
      FieldName = 'ABC_ID'
      Required = True
    end
    object qryABCP_KEY: TWideStringField
      FieldName = 'P_KEY'
      Size = 30
    end
    object qryABCS_NO: TIntegerField
      FieldName = 'S_NO'
    end
    object qryABCCUS_ID: TWideStringField
      FieldName = 'CUS_ID'
      Size = 30
    end
    object qryABCCUS_NAME: TWideStringField
      FieldName = 'CUS_NAME'
      Size = 126
    end
    object qryABCCOM_NAME: TWideStringField
      FieldName = 'COM_NAME'
      Size = 126
    end
  end
  object qryCountDoc: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT count(Doc_ID) SLCT'
      'FROM DOCUMENTS')
    FieldOptions = []
    Left = 668
    Top = 534
    object qryCountDocSLCT: TIntegerField
      FieldName = 'SLCT'
      ReadOnly = True
      Required = True
    end
  end
  object qrySubInfo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OTYPE_ID'
      'SUBINFO_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsObjectType
    SQL.Strings = (
      'SELECT OTYPE_ID'
      '     , SUBINFO_ID'
      '     , SUBINFO_NAME'
      '     , SUBINFO_DATATYPE'
      'FROM OBJECT_SUBINFO'
      'where OTYPE_ID=:OTYPE_ID'
      'Order by SUBINFO_ID')
    FieldOptions = []
    Left = 265
    Top = 192
    object qrySubInfoOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qrySubInfoSUBINFO_ID: TSmallintField
      FieldName = 'SUBINFO_ID'
      Required = True
    end
    object qrySubInfoSUBINFO_NAME: TWideStringField
      FieldName = 'SUBINFO_NAME'
      Required = True
      Size = 30
    end
    object qrySubInfoSUBINFO_DATATYPE: TSmallintField
      FieldName = 'SUBINFO_DATATYPE'
    end
  end
  object spExe: TIBOStoredProc
    Params = <>
    StoredProcHasDML = True
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsMain
    Left = 880
    Top = 184
  end
  object qryDocTypeList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'HIDE'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DOC_TYPE'
      'WHERE'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID')
    EditSQL.Strings = (
      'UPDATE DOC_TYPE SET'
      '   DOCTYPE_ID = :DOCTYPE_ID, /*PK*/'
      '   DOCTYPE_NAME = :DOCTYPE_NAME,'
      '   PDOC_TYPE = :PDOC_TYPE,'
      '   KYHIEURIENG = :KYHIEURIENG,'
      '   KHRPH = :KHRPH,'
      '   TEMPLATE_FILE = :TEMPLATE_FILE,'
      '   CHIEUDAISTT = :CHIEUDAISTT,'
      '   ENGLISH_NAME = :ENGLISH_NAME,'
      '   TKNO = :TKNO,'
      '   TKCO = :TKCO,'
      '   THUTUSAPXEP = :THUTUSAPXEP,'
      '   LOAIDT = :LOAIDT,'
      '   COTMANO = :COTMANO,'
      '   COTTENNO = :COTTENNO,'
      '   COTMACO = :COTMACO,'
      '   COTTENCO = :COTTENCO,'
      '   WARE_FLAG = :WARE_FLAG,'
      '   TKNO_BDV = :TKNO_BDV,'
      '   TKCO_BDV = :TKCO_BDV,'
      '   TKNO_KBDV = :TKNO_KBDV,'
      '   TKCO_KBDV = :TKCO_KBDV,'
      '   CHEDOLAPLAI = :CHEDOLAPLAI,'
      '   PERSON_CAP = :PERSON_CAP,'
      '   OBJECT_CAP = :OBJECT_CAP,'
      '   TKNOKHIIN = :TKNOKHIIN,'
      '   TKCOKHIIN = :TKCOKHIIN,'
      '   KYHIEUSAU = :KYHIEUSAU,'
      '   HIENTHI = :HIENTHI'
      'WHERE'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO DOC_TYPE ('
      '    DOCTYPE_ID,'
      '    DOCTYPE_NAME,'
      '    ENGLISH_NAME,'
      '    PDOC_TYPE,'
      '    KYHIEURIENG,'
      '    KHRPH,'
      '    TEMPLATE_FILE,'
      '    CHIEUDAISTT,'
      '    CHEDOLAPLAI,'
      '    TKNO,'
      '    TKCO,'
      '    THUTUSAPXEP,'
      '    LOAIDT,'
      '    WARE_FLAG,'
      '    COTMANO,'
      '    COTTENNO,'
      '    COTMACO,'
      '    COTTENCO,'
      '    TKNO_BDV,'
      '    TKCO_BDV,'
      '    TKNO_KBDV,'
      '    TKCO_KBDV,'
      '    PERSON_CAP,'
      '    OBJECT_CAP,'
      '    TKNOKHIIN,'
      '    TKCOKHIIN,'
      '    KYHIEUSAU,'
      '    HIENTHI)'
      '  VALUES ('
      '    :DOCTYPE_ID,'
      '    :DOCTYPE_NAME,'
      '    :ENGLISH_NAME,'
      '    :PDOC_TYPE,'
      '    :KYHIEURIENG,'
      '    :KHRPH,'
      '    :TEMPLATE_FILE,'
      '    :CHIEUDAISTT,'
      '    :CHEDOLAPLAI,'
      '    :TKNO,'
      '    :TKCO,'
      '    :THUTUSAPXEP,'
      '    :LOAIDT,'
      '    :WARE_FLAG,'
      '    :COTMANO,'
      '    :COTTENNO,'
      '    :COTMACO,'
      '    :COTTENCO,'
      '    :TKNO_BDV,'
      '    :TKCO_BDV,'
      '    :TKNO_KBDV,'
      '    :TKCO_KBDV,'
      '    :PERSON_CAP,'
      '    :OBJECT_CAP,'
      '    :TKNOKHIIN,'
      '    :TKCOKHIIN,'
      '    :KYHIEUSAU,'
      '    :HIENTHI)')
    KeyLinks.Strings = (
      'DOCTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDocTypeListBeforeEdit
    BeforeDelete = qryDocTypeListBeforeDelete
    AfterDelete = qryDocTypeListAfterDelete
    BeforeInsert = qryDocTypeListBeforeInsert
    AfterInsert = qryDocTypeListAfterInsert
    BeforePost = qryDocTypeListBeforePost
    AfterPost = qryDocTypeListAfterPost
    OnNewRecord = qryDocTypeListNewRecord
    OnPostError = qryDocTypeListPostError
    OnDeleteError = qryDocTypeListDeleteError
    SQL.Strings = (
      'SELECT DOCTYPE_ID'
      '     , DOCTYPE_NAME'
      '     , PDOC_TYPE'
      '     , KYHIEURIENG    '
      '     , KHRPH'
      '     , TEMPLATE_FILE'
      '     , CHIEUDAISTT,ENGLISH_NAME'
      '     , TKNO'
      '     , TKCO'
      '     , THUTUSAPXEP'
      '     , LOAIDT'
      '     , OTYPE_NAME'
      '     , COTMANO'
      '     , COTTENNO'
      '     , COTMACO'
      '     , COTTENCO'
      '     , ware_flag'
      '     , TKNO_BDV'
      '     , TKCO_BDV'
      '     , TKNO_KBDV'
      '     , TKCO_KBDV'
      '     , CHEDOLAPLAI'
      '     , PERSON_CAP'
      '     , OBJECT_CAP'
      '     , TKNOKHIIN'
      '     , TKCOKHIIN'
      '     , KYHIEUSAU'
      '     , HIENTHI'
      'FROM DOC_TYPE'
      
        'LEFT JOIN OBJECT_TYPE on (OBJECT_TYPE.OTYPE_ID = DOC_TYPE.LOAIDT' +
        ')'
      'where DOCTYPE_ID<>-1 and ((HIENTHI=1) or (HIENTHI=:HIDE))')
    FieldOptions = []
    Left = 573
    Top = 250
    object qryDocTypeListDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Required = True
    end
    object qryDocTypeListPDOC_TYPE: TIntegerField
      FieldName = 'PDOC_TYPE'
    end
    object qryDocTypeListDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
    object qryDocTypeListKHRPH: TWideStringField
      FieldName = 'KHRPH'
      Size = 6
    end
    object qryDocTypeListTEMPLATE_FILE: TWideStringField
      FieldName = 'TEMPLATE_FILE'
      Size = 30
    end
    object qryDocTypeListCHIEUDAISTT: TSmallintField
      FieldName = 'CHIEUDAISTT'
      MaxValue = 10
      MinValue = 1
    end
    object qryDocTypeListTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryDocTypeListTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryDocTypeListTHUTUSAPXEP: TSmallintField
      FieldName = 'THUTUSAPXEP'
    end
    object qryDocTypeListLOAIDT: TSmallintField
      FieldName = 'LOAIDT'
    end
    object qryDocTypeListOTYPE_NAME: TWideStringField
      FieldName = 'OTYPE_NAME'
      Size = 126
    end
    object qryDocTypeListCOTMANO: TWideStringField
      FieldName = 'COTMANO'
      Size = 63
    end
    object qryDocTypeListCOTTENNO: TWideStringField
      FieldName = 'COTTENNO'
      Size = 63
    end
    object qryDocTypeListCOTMACO: TWideStringField
      FieldName = 'COTMACO'
      Size = 63
    end
    object qryDocTypeListCOTTENCO: TWideStringField
      FieldName = 'COTTENCO'
      Size = 63
    end
    object qryDocTypeListWARE_FLAG: TSmallintField
      FieldName = 'WARE_FLAG'
    end
    object qryDocTypeListTKNO_BDV: TWideStringField
      FieldName = 'TKNO_BDV'
      Size = 15
    end
    object qryDocTypeListTKCO_BDV: TWideStringField
      FieldName = 'TKCO_BDV'
      Size = 15
    end
    object qryDocTypeListTKNO_KBDV: TWideStringField
      FieldName = 'TKNO_KBDV'
      Size = 15
    end
    object qryDocTypeListTKCO_KBDV: TWideStringField
      FieldName = 'TKCO_KBDV'
      Size = 15
    end
    object qryDocTypeListCHEDOLAPLAI: TSmallintField
      FieldName = 'CHEDOLAPLAI'
    end
    object qryDocTypeListOBJECT_CAP: TWideStringField
      FieldName = 'OBJECT_CAP'
      Size = 30
    end
    object qryDocTypeListPERSON_CAP: TWideStringField
      FieldName = 'PERSON_CAP'
      Size = 30
    end
    object qryDocTypeListENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryDocTypeListTKNOKHIIN: TWideStringField
      FieldName = 'TKNOKHIIN'
      Size = 15
    end
    object qryDocTypeListTKCOKHIIN: TWideStringField
      FieldName = 'TKCOKHIIN'
      Size = 15
    end
    object qryDocTypeListKYHIEUSAU: TSmallintField
      FieldName = 'KYHIEUSAU'
    end
    object qryDocTypeListKYHIEURIENG: TWideStringField
      FieldName = 'KYHIEURIENG'
      Required = True
      Size = 15
    end
    object qryDocTypeListHIENTHI: TSmallintField
      FieldName = 'HIENTHI'
    end
  end
  object dsDocTypeList: TDataSource
    DataSet = qryDocTypeList
    Left = 573
    Top = 267
  end
  object dsDocType: TDataSource
    DataSet = qryDocType
    Left = 450
    Top = 33
  end
  object qryDocType: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsMain
    KeyLinks.Strings = (
      'DOCTYPE_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryDocTypeBeforeOpen
    SQL.Strings = (
      'SELECT DOCTYPE_ID'
      '     , DOCTYPE_NAME, ENGLISH_NAME'
      '     , ALLOWREAD'
      '     , ALLOWINSERT'
      '     , ALLOWEDIT'
      '     , ALLOWDELETE'
      '     , KYHIEURIENG'
      '     , HASCHILD'
      '     , template_file'
      '     , PDOC_TYPE'
      '     , chieudaistt,tknokhiin,tkcokhiin'
      '     , tkco,CHEDOLAPLAI'
      
        '     , tkno,cotmaco,cotmano,cottenco,cottenno,tkco_bdv,tkco_kbdv' +
        ',tkno_bdv,tkno_kbdv'
      '     , LoaiNo,ware_flag'
      '     , LoaiCo,loaidt'
      '     , PERSON_CAP'
      '     , OBJECT_CAP'
      '     , thutusapxep'
      '     , KYHIEUSAU'
      'FROM SP_GETRIGHT_DOCTYPE(:USERNAME,:GROUP_ID,:BRANCH_ID)'
      'where DOCTYPE_ID <>-1'
      'order by thutusapxep')
    FieldOptions = []
    Left = 450
    Top = 18
    object qryDocTypeDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
    end
    object qryDocTypeDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
    object qryDocTypeENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryDocTypeALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryDocTypeALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
    end
    object qryDocTypeALLOWEDIT: TSmallintField
      FieldName = 'ALLOWEDIT'
    end
    object qryDocTypeALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
    end
    object qryDocTypeKYHIEURIENG: TWideStringField
      FieldName = 'KYHIEURIENG'
      Size = 15
    end
    object qryDocTypeHASCHILD: TSmallintField
      FieldName = 'HASCHILD'
    end
    object qryDocTypeTEMPLATE_FILE: TWideStringField
      FieldName = 'TEMPLATE_FILE'
      Size = 30
    end
    object qryDocTypePDOC_TYPE: TIntegerField
      FieldName = 'PDOC_TYPE'
    end
    object qryDocTypeCHIEUDAISTT: TSmallintField
      FieldName = 'CHIEUDAISTT'
    end
    object qryDocTypeTKNOKHIIN: TWideStringField
      FieldName = 'TKNOKHIIN'
      Size = 15
    end
    object qryDocTypeTKCOKHIIN: TWideStringField
      FieldName = 'TKCOKHIIN'
      Size = 15
    end
    object qryDocTypeTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryDocTypeCHEDOLAPLAI: TSmallintField
      FieldName = 'CHEDOLAPLAI'
    end
    object qryDocTypeTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryDocTypeCOTMACO: TWideStringField
      FieldName = 'COTMACO'
      Size = 63
    end
    object qryDocTypeCOTMANO: TWideStringField
      FieldName = 'COTMANO'
      Size = 63
    end
    object qryDocTypeCOTTENCO: TWideStringField
      FieldName = 'COTTENCO'
      Size = 63
    end
    object qryDocTypeCOTTENNO: TWideStringField
      FieldName = 'COTTENNO'
      Size = 63
    end
    object qryDocTypeTKCO_BDV: TWideStringField
      FieldName = 'TKCO_BDV'
      Size = 15
    end
    object qryDocTypeTKCO_KBDV: TWideStringField
      FieldName = 'TKCO_KBDV'
      Size = 15
    end
    object qryDocTypeTKNO_BDV: TWideStringField
      FieldName = 'TKNO_BDV'
      Size = 15
    end
    object qryDocTypeTKNO_KBDV: TWideStringField
      FieldName = 'TKNO_KBDV'
      Size = 15
    end
    object qryDocTypeLOAINO: TSmallintField
      FieldName = 'LOAINO'
    end
    object qryDocTypeWARE_FLAG: TSmallintField
      FieldName = 'WARE_FLAG'
    end
    object qryDocTypeLOAICO: TSmallintField
      FieldName = 'LOAICO'
    end
    object qryDocTypeLOAIDT: TSmallintField
      FieldName = 'LOAIDT'
    end
    object qryDocTypePERSON_CAP: TWideStringField
      FieldName = 'PERSON_CAP'
      Size = 30
    end
    object qryDocTypeOBJECT_CAP: TWideStringField
      FieldName = 'OBJECT_CAP'
      Size = 30
    end
    object qryDocTypeTHUTUSAPXEP: TSmallintField
      FieldName = 'THUTUSAPXEP'
    end
    object qryDocTypeKYHIEUSAU: TSmallintField
      FieldName = 'KYHIEUSAU'
    end
  end
  object IB_Monitor1: TIB_Monitor
    ItemEnd = '----*/'
    MinTicks = 10
    MonitorGroups = [mgClientTrace]
    NewLineText = #13#10
    StatementGroups = [sgStatementInfo]
    OnMonitorOutputItem = IB_Monitor1MonitorOutputItem
    ProfilerConnection = cnMain
    Left = 414
    Top = 186
  end
  object qryGetMaxObjID: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OBJECT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT OBJECT_ID FROM OBJECT_LIST where OTYPE_ID=:OTYPE_ID')
    FieldOptions = []
    Left = 178
    Top = 184
    object qryGetMaxObjIDOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
  end
  object qryPPXK: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PHUONGPHAPXUATKHO'
      'WHERE'
      '   MS_PPXK = :OLD_MS_PPXK')
    EditSQL.Strings = (
      'UPDATE PHUONGPHAPXUATKHO SET'
      '   MS_PPXK = :MS_PPXK, /*PK*/'
      '   TEN_PPXK = :TEN_PPXK'
      'WHERE'
      '   MS_PPXK = :OLD_MS_PPXK')
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    InsertSQL.Strings = (
      'INSERT INTO PHUONGPHAPXUATKHO('
      '   MS_PPXK, /*PK*/'
      '   TEN_PPXK)'
      'VALUES ('
      '   :MS_PPXK,'
      '   :TEN_PPXK)')
    KeyLinks.Strings = (
      'MS_PPXK')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MS_PPXK, TEN_PPXK '
      'FROM PHUONGPHAPXUATKHO')
    FieldOptions = []
    Left = 732
    Top = 536
    object qryPPXKMS_PPXK: TSmallintField
      FieldName = 'MS_PPXK'
      Required = True
    end
    object qryPPXKTEN_PPXK: TWideStringField
      FieldName = 'TEN_PPXK'
      Size = 126
    end
  end
  object dsPPXK: TDataSource
    DataSet = qryPPXK
    Left = 731
    Top = 547
  end
  object qryDefaultParams: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DEFAULT_OPTION_TABLE'
      'WHERE'
      '   PPXUATKHO = :OLD_PPXUATKHO')
    EditSQL.Strings = (
      'UPDATE DEFAULT_OPTION_TABLE SET'
      '   PPXUATKHO = :PPXUATKHO, /*PK*/'
      '   PPPBCPSXC = :PPPBCPSXC,'
      '   TYLECPNVL = :TYLECPNVL,'
      '   TYLECPNC = :TYLECPNC,'
      '   SDGIABAN = :SDGIABAN,'
      '   CHOSUAGIABAN = :CHOSUAGIABAN,'
      '   SDGIAMUA = :SDGIAMUA,'
      '   CHOSUAGIAMUA = :CHOSUAGIAMUA,'
      '   SDGIAKH = :SDGIAKH,'
      '   CHOSUAGIAKH = :CHOSUAGIAKH,'
      '   SDGIABQ = :SDGIABQ,'
      '   CHOSUAGIABQ = :CHOSUAGIABQ,'
      '   CHOSUATHANHTIEN = :CHOSUATHANHTIEN,'
      '   ALLOWCHANGETYPE = :ALLOWCHANGETYPE,'
      '   PTTHUEHDKD = :PTTHUEHDKD,'
      '   PTTHUEHDTC = :PTTHUEHDTC,'
      '   BEGIN_MONTH = :BEGIN_MONTH,'
      '   BEGIN_YEAR = :BEGIN_YEAR,'
      '   RANGBUOCNGAY = :RANGBUOCNGAY,'
      '   USEDOCUMENTLOG = :USEDOCUMENTLOG,'
      '   USEUPPERCASE = :USEUPPERCASE,'
      '   DECIMALSL_LEN = :DECIMALSL_LEN,'
      '   DECIMALDG_LEN = :DECIMALDG_LEN,'
      '   DECIMALTT_LEN = :DECIMALTT_LEN,'
      '   TGSDCCDC = :TGSDCCDC,'
      '   BBNHAPYT = :BBNHAPYT,'
      '   GTCLKHAUHAO = :GTCLKHAUHAO,'
      '   ALLOW_NEGINSTOCK = :ALLOW_NEGINSTOCK,'
      '   DIRECT_DISCOUNT = :DIRECT_DISCOUNT'
      'WHERE'
      '   PPXUATKHO = :OLD_PPXUATKHO')
    IB_Connection = cnMain
    IB_Transaction = tsList
    InsertSQL.Strings = (
      'INSERT INTO DEFAULT_OPTION_TABLE('
      '   PPXUATKHO, /*PK*/'
      '   PPPBCPSXC,'
      '   TYLECPNVL,'
      '   TYLECPNC,'
      '   SDGIABAN,'
      '   CHOSUAGIABAN,'
      '   SDGIAMUA,'
      '   CHOSUAGIAMUA,'
      '   SDGIAKH,'
      '   CHOSUAGIAKH,'
      '   SDGIABQ,'
      '   CHOSUAGIABQ,'
      '   CHOSUATHANHTIEN,'
      '   ALLOWCHANGETYPE,'
      '   PTTHUEHDKD,'
      '   PTTHUEHDTC,'
      '   BEGIN_MONTH,'
      '   BEGIN_YEAR,'
      '   RANGBUOCNGAY,'
      '   USEDOCUMENTLOG,'
      '   USEUPPERCASE,'
      '   DECIMALSL_LEN,'
      '   DECIMALDG_LEN,'
      '   DECIMALTT_LEN,'
      '   TGSDCCDC,'
      '   BBNHAPYT,'
      '   GTCLKHAUHAO,'
      '   ALLOW_NEGINSTOCK,'
      '   DIRECT_DISCOUNT)'
      'VALUES ('
      '   :PPXUATKHO,'
      '   :PPPBCPSXC,'
      '   :TYLECPNVL,'
      '   :TYLECPNC,'
      '   :SDGIABAN,'
      '   :CHOSUAGIABAN,'
      '   :SDGIAMUA,'
      '   :CHOSUAGIAMUA,'
      '   :SDGIAKH,'
      '   :CHOSUAGIAKH,'
      '   :SDGIABQ,'
      '   :CHOSUAGIABQ,'
      '   :CHOSUATHANHTIEN,'
      '   :ALLOWCHANGETYPE,'
      '   :PTTHUEHDKD,'
      '   :PTTHUEHDTC,'
      '   :BEGIN_MONTH,'
      '   :BEGIN_YEAR,'
      '   :RANGBUOCNGAY,'
      '   :USEDOCUMENTLOG,'
      '   :USEUPPERCASE,'
      '   :DECIMALSL_LEN,'
      '   :DECIMALDG_LEN,'
      '   :DECIMALTT_LEN,'
      '   :TGSDCCDC,'
      '   :BBNHAPYT,'
      '   :GTCLKHAUHAO,'
      '   :ALLOW_NEGINSTOCK,'
      '   :DIRECT_DISCOUNT)')
    KeyLinks.Strings = (
      'PPXUATKHO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryParamsBeforeEdit
    OnNewRecord = qryParamsNewRecord
    OnPostError = qryParamsPostError
    SQL.Strings = (
      'SELECT PPXUATKHO'
      '     , PPPBCPSXC'
      '     , TYLECPNVL'
      '     , TYLECPNC'
      '     , SDGIABAN'
      '     , CHOSUAGIABAN'
      '     , SDGIAMUA'
      '     , CHOSUAGIAMUA'
      '     , SDGIAKH'
      '     , CHOSUAGIAKH'
      '     , SDGIABQ'
      '     , CHOSUAGIABQ'
      '     , CHOSUATHANHTIEN'
      '     , ALLOWCHANGETYPE'
      '     , PTTHUEHDKD'
      '     , PTTHUEHDTC'
      '     , BEGIN_MONTH'
      '     , BEGIN_YEAR'
      '     , RANGBUOCNGAY'
      '     , USEDOCUMENTLOG'
      '     , USEUPPERCASE'
      '     , DECIMALSL_LEN'
      '     , DECIMALDG_LEN'
      '     , DECIMALTT_LEN'
      '     , TGSDCCDC,BBNHAPYT'
      '     , GTCLKHAUHAO'
      '     , ALLOW_NEGINSTOCK'
      '     , DIRECT_DISCOUNT'
      '     , ALLOW_MIN_INSTOCK'
      'FROM DEFAULT_OPTION_TABLE')
    FieldOptions = []
    Left = 72
    Top = 598
    object qryDefaultParamsPPXUATKHO: TSmallintField
      FieldName = 'PPXUATKHO'
      Required = True
    end
    object qryDefaultParamsPPPBCPSXC: TSmallintField
      FieldName = 'PPPBCPSXC'
    end
    object qryDefaultParamsTYLECPNVL: TSmallintField
      FieldName = 'TYLECPNVL'
    end
    object qryDefaultParamsTYLECPNC: TSmallintField
      FieldName = 'TYLECPNC'
    end
    object qryDefaultParamsSDGIABAN: TSmallintField
      FieldName = 'SDGIABAN'
    end
    object qryDefaultParamsCHOSUAGIABAN: TSmallintField
      FieldName = 'CHOSUAGIABAN'
    end
    object qryDefaultParamsSDGIAMUA: TSmallintField
      FieldName = 'SDGIAMUA'
    end
    object qryDefaultParamsCHOSUAGIAMUA: TSmallintField
      FieldName = 'CHOSUAGIAMUA'
    end
    object qryDefaultParamsSDGIAKH: TSmallintField
      FieldName = 'SDGIAKH'
    end
    object qryDefaultParamsCHOSUAGIAKH: TSmallintField
      FieldName = 'CHOSUAGIAKH'
    end
    object qryDefaultParamsSDGIABQ: TSmallintField
      FieldName = 'SDGIABQ'
    end
    object qryDefaultParamsCHOSUAGIABQ: TSmallintField
      FieldName = 'CHOSUAGIABQ'
    end
    object qryDefaultParamsCHOSUATHANHTIEN: TSmallintField
      FieldName = 'CHOSUATHANHTIEN'
    end
    object qryDefaultParamsALLOWCHANGETYPE: TSmallintField
      FieldName = 'ALLOWCHANGETYPE'
    end
    object qryDefaultParamsPTTHUEHDKD: TSmallintField
      FieldName = 'PTTHUEHDKD'
    end
    object qryDefaultParamsPTTHUEHDTC: TSmallintField
      FieldName = 'PTTHUEHDTC'
    end
    object qryDefaultParamsBEGIN_MONTH: TSmallintField
      FieldName = 'BEGIN_MONTH'
    end
    object qryDefaultParamsBEGIN_YEAR: TSmallintField
      FieldName = 'BEGIN_YEAR'
    end
    object qryDefaultParamsRANGBUOCNGAY: TSmallintField
      FieldName = 'RANGBUOCNGAY'
    end
    object qryDefaultParamsUSEDOCUMENTLOG: TSmallintField
      FieldName = 'USEDOCUMENTLOG'
    end
    object qryDefaultParamsUSEUPPERCASE: TSmallintField
      FieldName = 'USEUPPERCASE'
    end
    object qryDefaultParamsDECIMALSL_LEN: TSmallintField
      FieldName = 'DECIMALSL_LEN'
    end
    object qryDefaultParamsDECIMALDG_LEN: TSmallintField
      FieldName = 'DECIMALDG_LEN'
    end
    object qryDefaultParamsDECIMALTT_LEN: TSmallintField
      FieldName = 'DECIMALTT_LEN'
    end
    object qryDefaultParamsTGSDCCDC: TSmallintField
      FieldName = 'TGSDCCDC'
    end
    object qryDefaultParamsBBNHAPYT: TSmallintField
      FieldName = 'BBNHAPYT'
    end
    object qryDefaultParamsGTCLKHAUHAO: TIBOFloatField
      FieldName = 'GTCLKHAUHAO'
    end
    object qryDefaultParamsALLOW_NEGINSTOCK: TSmallintField
      FieldName = 'ALLOW_NEGINSTOCK'
    end
    object qryDefaultParamsDIRECT_DISCOUNT: TSmallintField
      FieldName = 'DIRECT_DISCOUNT'
    end
    object qryDefaultParamsALLOW_MIN_INSTOCK: TSmallintField
      FieldName = 'ALLOW_MIN_INSTOCK'
    end
  end
  object dsDefaultParams: TDataSource
    DataSet = qryDefaultParams
    Left = 72
    Top = 610
  end
  object qryDonGiaXuat: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAKHO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAHH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SHTK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PHIEUXUAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SLXUAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select dongia,gtton,slton'
      'from SP_GET_DONGIA_HH_XUAT ('
      '    :MAKHO ,'
      '    :MAHH ,'
      '    :SHTK ,'
      '    :KYHT ,'
      '    :PHIEUXUAT ,'
      '    :STT ,'
      '    :SLXUAT,'
      '    :BRANCH_ID)')
    FieldOptions = []
    Left = 169
    Top = 252
    object qryDonGiaXuatDONGIA: TIBOFloatField
      FieldName = 'DONGIA'
    end
    object qryDonGiaXuatGTTON: TIBOFloatField
      FieldName = 'GTTON'
    end
    object qryDonGiaXuatSLTON: TIBOFloatField
      FieldName = 'SLTON'
    end
  end
  object dsUnit: TDataSource
    DataSet = qryUnit
    Left = 212
    Top = 608
  end
  object qryUnit: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM UNIT'
      'WHERE'
      '   UNIT_ID = :OLD_UNIT_ID')
    EditSQL.Strings = (
      'UPDATE UNIT SET'
      '   UNIT_ID = :UNIT_ID, /*PK*/'
      '   UNIT_NAME = :UNIT_NAME'
      'WHERE'
      '   UNIT_ID = :OLD_UNIT_ID')
    IB_Connection = cnMain
    InsertSQL.Strings = (
      'INSERT INTO UNIT('
      '   UNIT_ID, /*PK*/'
      '   UNIT_NAME)'
      'VALUES ('
      '   :UNIT_ID,'
      '   :UNIT_NAME)')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryUnitBeforeEdit
    BeforeDelete = qryUnitBeforeDelete
    BeforeInsert = qryUnitBeforeInsert
    AfterInsert = qryUnitAfterInsert
    BeforePost = qryUnitBeforePost
    OnPostError = qryUnitPostError
    OnDeleteError = qryUnitDeleteError
    SQL.Strings = (
      'SELECT UNIT_ID'
      '     , UNIT_NAME'
      'FROM UNIT')
    FieldOptions = []
    Left = 213
    Top = 596
    object qryUnitUNIT_ID: TWideStringField
      FieldName = 'UNIT_ID'
      Required = True
      Size = 15
    end
    object qryUnitUNIT_NAME: TWideStringField
      FieldName = 'UNIT_NAME'
      Size = 63
    end
  end
  object qryUnit_Scale: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM UNIT_SCALE'
      'WHERE'
      '   FROM_UNIT = :OLD_FROM_UNIT AND'
      '   TO_UNIT = :OLD_TO_UNIT')
    EditSQL.Strings = (
      'UPDATE UNIT_SCALE SET'
      '   FROM_UNIT = :FROM_UNIT, /*PK*/'
      '   TO_UNIT = :TO_UNIT, /*PK*/'
      '   SCALE = :SCALE'
      'WHERE'
      '   FROM_UNIT = :OLD_FROM_UNIT AND'
      '   TO_UNIT = :OLD_TO_UNIT')
    IB_Connection = cnMain
    InsertSQL.Strings = (
      'INSERT INTO UNIT_SCALE('
      '   FROM_UNIT, /*PK*/'
      '   TO_UNIT, /*PK*/'
      '   SCALE)'
      'VALUES ('
      '   :FROM_UNIT,'
      '   :TO_UNIT,'
      '   :SCALE)')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryUnitBeforeEdit
    BeforeDelete = qryUnitBeforeDelete
    BeforeInsert = qryUnitBeforeInsert
    AfterInsert = qryUnitAfterInsert
    BeforePost = qryUnitBeforePost
    OnPostError = qryUnitPostError
    OnDeleteError = qryUnitDeleteError
    SQL.Strings = (
      'SELECT'
      '       FROM_UNIT'
      '     , TO_UNIT'
      '     , SCALE'
      'FROM UNIT_SCALE'
      'WHERE VISIBLE=1'
      'ORDER BY FROM_UNIT')
    FieldOptions = []
    Left = 281
    Top = 602
    object qryUnit_ScaleFROM_UNIT: TWideStringField
      FieldName = 'FROM_UNIT'
      Required = True
      Size = 15
    end
    object qryUnit_ScaleTO_UNIT: TWideStringField
      FieldName = 'TO_UNIT'
      Required = True
      Size = 15
    end
    object qryUnit_ScaleSCALE: TIBOFloatField
      FieldName = 'SCALE'
    end
  end
  object dsUnit_Scale: TDataSource
    DataSet = qryUnit_Scale
    Left = 280
    Top = 614
  end
  object dsBranch: TDataSource
    DataSet = qryBranch
    Left = 588
    Top = 608
  end
  object qryBranch: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM COMPANY_FILE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    EditSQL.Strings = (
      'UPDATE COMPANY_FILE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   FULLNAME = :FULLNAME,'
      '   SHORTNAME = :SHORTNAME,'
      '   ISMIN = :ISMIN,'
      '   PBRANCH_ID = :PBRANCH_ID,'
      '   COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    IB_Connection = cnMain
    InsertSQL.Strings = (
      'INSERT INTO COMPANY_FILE('
      '   BRANCH_ID, /*PK*/'
      '   FULLNAME,'
      '   SHORTNAME,'
      '   ISMIN,'
      '   PBRANCH_ID)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :FULLNAME,'
      '   :SHORTNAME,'
      '   :ISMIN,'
      '   :PBRANCH_ID)')
    KeyLinks.Strings = (
      'BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryBranchBeforeOpen
    OnFilterRecord = qryBranchFilterRecord
    SQL.Strings = (
      'SELECT BRANCH_ID'
      '     , FULLNAME'
      '     , SHORTNAME'
      '     , ISMIN'
      '     , PBRANCH_ID'
      '     , COMPANY_ID'
      '     , HAS_RIGHT_REPORT '
      '     , HAS_RIGHT_DOCTYPE '
      '     , HAS_RIGHT_MODUL '
      'FROM SP_GET_BRANCH_FILTERED(:USERNAME)'
      'order by BRANCH_ID'
      ''
      '/*SELECT BRANCH_ID'
      '     , FULLNAME'
      '     , SHORTNAME'
      '     , ISMIN'
      '     , PBRANCH_ID'
      '     , COMPANY_ID'
      'FROM COMPANY_FILE '
      'WHERE BRANCH_ID STARTING WITH :BRANCH_ID'
      'order by BRANCH_ID*/')
    FieldOptions = []
    Left = 590
    Top = 594
    object qryBranchBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryBranchFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryBranchSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 63
    end
    object qryBranchISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryBranchPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 6
    end
    object qryBranchCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
      Required = True
    end
    object qryBranchHAS_RIGHT_REPORT: TSmallintField
      FieldName = 'HAS_RIGHT_REPORT'
    end
    object qryBranchHAS_RIGHT_DOCTYPE: TSmallintField
      FieldName = 'HAS_RIGHT_DOCTYPE'
    end
    object qryBranchHAS_RIGHT_MODUL: TSmallintField
      FieldName = 'HAS_RIGHT_MODUL'
    end
  end
  object dsTransferInfo: TDataSource
    DataSet = qryTransferInfo
    Left = 332
    Top = 542
  end
  object qryTransferInfo: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    EditSQL.Strings = (
      'UPDATE TRANSFER_INFO SET'
      '   PK = :PK, /*PK*/'
      '   AUTO_TRANSFER = :AUTO_TRANSFER,'
      '   AUTO_TOTIME = :AUTO_TOTIME,'
      '   AUTO_FROMTIME = :AUTO_FROMTIME,'
      '   AUTO_UPDATE_FROMTIME = :AUTO_UPDATE_FROMTIME,'
      '   AUTO_UPDATE_TOTIME = :AUTO_UPDATE_TOTIME,'
      '   AUTO_UPDATE = :AUTO_UPDATE,'
      '   UPLOAD_DIR = :UPLOAD_DIR,'
      '   DOWNLOAD_DIR = :DOWNLOAD_DIR,'
      '   RECURR_DAILY = :RECURR_DAILY,'
      '   RECURR_WEEKLY = :RECURR_WEEKLY,'
      '   RECURR_MONTHLY = :RECURR_MONTHLY,'
      '   MONDAY = :MONDAY,'
      '   TUESDAY = :TUESDAY,'
      '   WEDNESDAY = :WEDNESDAY,'
      '   THURSDAY = :THURSDAY,'
      '   FRIDAY = :FRIDAY,'
      '   SATURDAY = :SATURDAY,'
      '   SUNDAY = :SUNDAY,'
      '   REC_DAYINMONTH = :REC_DAYINMONTH,'
      '   RECURR_TYPE = :RECURR_TYPE,'
      '   UPDATE_RECURR_TYPE = :UPDATE_RECURR_TYPE,'
      '   UPDATE_RECURR_DAILY = :UPDATE_RECURR_DAILY,'
      '   UPDATE_RECURR_MONTHLY = :UPDATE_RECURR_MONTHLY,'
      '   UPDATE_RECURR_WEEKLY = :UPDATE_RECURR_WEEKLY,'
      '   UPDATE_REC_DAYINMONTH = :UPDATE_REC_DAYINMONTH,'
      '   UPDATE_MONDAY = :UPDATE_MONDAY,'
      '   UPDATE_TUESDAY = :UPDATE_TUESDAY,'
      '   UPDATE_WEDNESDAY = :UPDATE_WEDNESDAY,'
      '   UPDATE_THURSDAY = :UPDATE_THURSDAY,'
      '   UPDATE_FRIDAY = :UPDATE_FRIDAY,'
      '   UPDATE_SATURDAY = :UPDATE_SATURDAY,'
      '   UPDATE_SUNDAY = :UPDATE_SUNDAY,'
      '   LASTDAY_UPDATE = :LASTDAY_UPDATE,'
      '   LASTDAY_TRANSFER = :LASTDAY_TRANSFER,'
      '   ACTIVETRIGGER = :ACTIVETRIGGER'
      'WHERE'
      '   PK = :OLD_PK')
    IB_Connection = cnMain
    KeyLinks.Strings = (
      'PK')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AUTO_TRANSFER'
      '     , AUTO_TOTIME'
      '     , AUTO_FROMTIME'
      '     , AUTO_UPDATE_FROMTIME'
      '     , AUTO_UPDATE_TOTIME'
      '     , AUTO_UPDATE'
      '     , UPLOAD_DIR'
      '     , DOWNLOAD_DIR'
      '     , RECURR_DAILY'
      '     , RECURR_WEEKLY'
      '     , RECURR_MONTHLY'
      '     , MONDAY'
      '     , TUESDAY'
      '     , WEDNESDAY'
      '     , THURSDAY'
      '     , FRIDAY'
      '     , SATURDAY'
      '     , SUNDAY'
      '     , REC_DAYINMONTH'
      '     , PK'
      '     , RECURR_TYPE'
      '     , UPDATE_RECURR_TYPE'
      '     , UPDATE_RECURR_DAILY'
      '     , UPDATE_RECURR_MONTHLY'
      '     , UPDATE_RECURR_WEEKLY'
      '     , UPDATE_REC_DAYINMONTH'
      '     , UPDATE_MONDAY'
      '     , UPDATE_TUESDAY'
      '     , UPDATE_WEDNESDAY'
      '     , UPDATE_THURSDAY'
      '     , UPDATE_FRIDAY'
      '     , UPDATE_SATURDAY'
      '     , UPDATE_SUNDAY'
      '     , LASTDAY_UPDATE'
      '     , LASTDAY_TRANSFER'
      '     , ACTIVETRIGGER'
      'FROM TRANSFER_INFO')
    FieldOptions = []
    Left = 332
    Top = 528
    object qryTransferInfoAUTO_TRANSFER: TSmallintField
      FieldName = 'AUTO_TRANSFER'
    end
    object qryTransferInfoAUTO_TOTIME: TTimeField
      FieldName = 'AUTO_TOTIME'
    end
    object qryTransferInfoAUTO_FROMTIME: TTimeField
      FieldName = 'AUTO_FROMTIME'
    end
    object qryTransferInfoAUTO_UPDATE_FROMTIME: TTimeField
      FieldName = 'AUTO_UPDATE_FROMTIME'
    end
    object qryTransferInfoAUTO_UPDATE_TOTIME: TTimeField
      FieldName = 'AUTO_UPDATE_TOTIME'
    end
    object qryTransferInfoUPLOAD_DIR: TWideStringField
      FieldName = 'UPLOAD_DIR'
      Size = 255
    end
    object qryTransferInfoDOWNLOAD_DIR: TWideStringField
      FieldName = 'DOWNLOAD_DIR'
      Size = 255
    end
    object qryTransferInfoRECURR_DAILY: TSmallintField
      FieldName = 'RECURR_DAILY'
    end
    object qryTransferInfoRECURR_WEEKLY: TSmallintField
      FieldName = 'RECURR_WEEKLY'
    end
    object qryTransferInfoRECURR_MONTHLY: TSmallintField
      FieldName = 'RECURR_MONTHLY'
    end
    object qryTransferInfoMONDAY: TSmallintField
      FieldName = 'MONDAY'
    end
    object qryTransferInfoTUESDAY: TSmallintField
      FieldName = 'TUESDAY'
    end
    object qryTransferInfoWEDNESDAY: TSmallintField
      FieldName = 'WEDNESDAY'
    end
    object qryTransferInfoTHURSDAY: TSmallintField
      FieldName = 'THURSDAY'
    end
    object qryTransferInfoFRIDAY: TSmallintField
      FieldName = 'FRIDAY'
    end
    object qryTransferInfoSATURDAY: TSmallintField
      FieldName = 'SATURDAY'
    end
    object qryTransferInfoSUNDAY: TSmallintField
      FieldName = 'SUNDAY'
    end
    object qryTransferInfoREC_DAYINMONTH: TSmallintField
      FieldName = 'REC_DAYINMONTH'
    end
    object qryTransferInfoAUTO_UPDATE: TSmallintField
      FieldName = 'AUTO_UPDATE'
    end
    object qryTransferInfoPK: TSmallintField
      FieldName = 'PK'
      Required = True
    end
    object qryTransferInfoRECURR_TYPE: TSmallintField
      FieldName = 'RECURR_TYPE'
    end
    object qryTransferInfoUPDATE_RECURR_TYPE: TSmallintField
      FieldName = 'UPDATE_RECURR_TYPE'
    end
    object qryTransferInfoUPDATE_RECURR_DAILY: TSmallintField
      FieldName = 'UPDATE_RECURR_DAILY'
    end
    object qryTransferInfoUPDATE_RECURR_MONTHLY: TSmallintField
      FieldName = 'UPDATE_RECURR_MONTHLY'
    end
    object qryTransferInfoUPDATE_RECURR_WEEKLY: TSmallintField
      FieldName = 'UPDATE_RECURR_WEEKLY'
    end
    object qryTransferInfoUPDATE_REC_DAYINMONTH: TSmallintField
      FieldName = 'UPDATE_REC_DAYINMONTH'
    end
    object qryTransferInfoUPDATE_MONDAY: TSmallintField
      FieldName = 'UPDATE_MONDAY'
    end
    object qryTransferInfoUPDATE_TUESDAY: TSmallintField
      FieldName = 'UPDATE_TUESDAY'
    end
    object qryTransferInfoUPDATE_THURSDAY: TSmallintField
      FieldName = 'UPDATE_THURSDAY'
    end
    object qryTransferInfoUPDATE_FRIDAY: TSmallintField
      FieldName = 'UPDATE_FRIDAY'
    end
    object qryTransferInfoUPDATE_SATURDAY: TSmallintField
      FieldName = 'UPDATE_SATURDAY'
    end
    object qryTransferInfoUPDATE_SUNDAY: TSmallintField
      FieldName = 'UPDATE_SUNDAY'
    end
    object qryTransferInfoUPDATE_WEDNESDAY: TSmallintField
      FieldName = 'UPDATE_WEDNESDAY'
    end
    object qryTransferInfoLASTDAY_UPDATE: TDateField
      FieldName = 'LASTDAY_UPDATE'
    end
    object qryTransferInfoLASTDAY_TRANSFER: TDateField
      FieldName = 'LASTDAY_TRANSFER'
      ReadOnly = True
    end
    object qryTransferInfoACTIVETRIGGER: TSmallintField
      FieldName = 'ACTIVETRIGGER'
    end
  end
  object qryAutoDocOut: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'doc_id'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'period_id'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'branch_id'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsList
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRegForBillsBeforeEdit
    BeforeDelete = qryRegForBillsBeforeDelete
    BeforeInsert = qryRegForBillsBeforeInsert
    AfterInsert = qryAutoOutAfterInsert
    BeforePost = qryAutoOutBeforePost
    OnPostError = qryAutoOutPostError
    SQL.Strings = (
      'select is_active '
      'from  documents d join doc_type t on t.doctype_id = d.doctype_id'
      'join regforbill on loaipbh = t.doctype_id'
      
        'where d.doc_id = :doc_id and period_id = :period_id and branch_i' +
        'd = :branch_id ')
    FieldOptions = []
    Left = 446
    Top = 592
    object qryAutoDocOutIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
    end
  end
  object dsAutoDocOut: TDataSource
    DataSet = qryAutoDocOut
    Left = 446
    Top = 606
  end
  object qryBranchMain: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    KeyLinks.Strings = (
      'BRANCH_ID')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryBranchMainBeforeOpen
    SQL.Strings = (
      'SELECT BRANCH_ID'
      '     , FULLNAME'
      '     , SHORTNAME'
      '     , ISMIN'
      '     , PBRANCH_ID'
      '     , COMPANY_ID'
      'FROM COMPANY_FILE '
      'WHERE BRANCH_ID STARTING WITH :BRANCH_ID'
      'order by BRANCH_ID')
    FieldOptions = []
    Left = 660
    Top = 594
    object qryBranchMainBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryBranchMainFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryBranchMainSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 63
    end
    object qryBranchMainISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryBranchMainPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 6
    end
    object qryBranchMainCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
      Required = True
    end
  end
  object dsBranchMain: TDataSource
    DataSet = qryBranchMain
    Left = 660
    Top = 606
  end
  object qryMaxDocType: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    IB_Transaction = tsList
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MAX(DOCTYPE_ID) FROM DOC_TYPE')
    FieldOptions = []
    Left = 498
    Top = 256
    object qryMaxDocTypeMAX: TSmallintField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object qryExe: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 872
    Top = 248
  end
  object qryVATList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = cnMain
    KeyLinks.Strings = (
      'VAT_ID')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryBranchMainBeforeOpen
    SQL.Strings = (
      'SELECT '
      '      VAT_ID'
      '     , VAT_NAME'
      '     , VAT_PER'
      '     , OTHER_ID'
      '     , METHOD_ID'
      'FROM VAT_LIST'
      'order by VAT_ID')
    FieldOptions = []
    Left = 732
    Top = 594
    object qryVATListVAT_ID: TSmallintField
      FieldName = 'VAT_ID'
      Required = True
    end
    object qryVATListVAT_NAME: TWideStringField
      FieldName = 'VAT_NAME'
      Size = 126
    end
    object qryVATListVAT_PER: TIBOFloatField
      FieldName = 'VAT_PER'
    end
    object qryVATListOTHER_ID: TWideStringField
      FieldName = 'OTHER_ID'
      Size = 15
    end
    object qryVATListMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
  end
  object dsVATList: TDataSource
    DataSet = qryVATList
    Left = 732
    Top = 606
  end
  object qryThongbao: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ngayxem'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsPopup
    KeyLinks.Strings = (
      'OBJECT_LIST.OBJECT_ID'
      'OBJECT_LIST.OTYPE_ID')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '      OBJECT_ID'
      '     , OBJECT_NAME'
      '     , OBJGRP_ID'
      '     , OTYPE_ID'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , DEBT_LEN'
      '     , OBJECT_VALUE'
      '     , OTHER_DATE'
      'FROM OBJECT_LIST'
      'where OTHER_DATE = :ngayxem and otype_id = 11')
    FieldOptions = []
    Left = 790
    Top = 537
    object qryThongbaoOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryThongbaoOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryThongbaoOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryThongbaoOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryThongbaoSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryThongbaoSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryThongbaoDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryThongbaoOBJECT_VALUE: TIBOFloatField
      FieldName = 'OBJECT_VALUE'
    end
    object qryThongbaoOTHER_DATE: TDateField
      FieldName = 'OTHER_DATE'
    end
  end
  object dsThongbao: TDataSource
    DataSet = qryThongbao
    Left = 790
    Top = 557
  end
  object dsDMDinhmuc: TDataSource
    DataSet = qryDMDinhmuc
    Left = 370
    Top = 618
  end
  object qryDMDinhmuc: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    FetchWholeRows = False
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryCaptionBeforePost
    SQL.Strings = (
      'SELECT MATERIAL_NORM_ID'
      '     , MAPX'
      '     , OBJECT_ID'
      '     , MATERIAL_ID'
      'FROM MATERIAL_NORM')
    FieldOptions = []
    Left = 370
    Top = 610
    object qryDMDinhmucMATERIAL_NORM_ID: TIntegerField
      FieldName = 'MATERIAL_NORM_ID'
      Required = True
    end
    object qryDMDinhmucMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryDMDinhmucOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryDMDinhmucMATERIAL_ID: TWideStringField
      FieldName = 'MATERIAL_ID'
      Required = True
      Size = 30
    end
  end
  object qryDTPBList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'delete from chiphi_phanbo'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      '')
    IB_Connection = cnMain
    IB_Transaction = tsList
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryDTPBListBeforeDelete
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OTYPE_ID'
      '     , OBJECT_NAME'
      '     , BPSD OTHER_NAME'
      '     , GHICHU OBJECT_NOTES'
      '     , TRANGTHAI OBJECT_STATUS'
      '     , MANHOM GROUP_ID'
      '     , SHTK ACCOUNT_ID'
      '     , NGUYENGIA'
      '     , khauhaolk haomon'
      '     , muckh AMOR_VALUE'
      '     , SHTKPB ALLOCATE_ACC'
      '     , SHTKTRICH AMORTISE_ACC'
      '     , TGSD USING_LIFE'
      '     , GTCONLAI GTCL'
      '     , USEOBJECT_ID'
      '     , USEOBJECT_DETAIL'
      '     , TENNHOM GROUP_NAME'
      '     , tylekh AMOR_PERCENT'
      'FROM sp_dtpb_list(:PERIOD_ID,:BRANCH_ID)'
      'Order by  OBJECT_ID')
    FieldOptions = []
    Left = 864
    Top = 608
    object qryDTPBListOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryDTPBListOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryDTPBListOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryDTPBListOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryDTPBListOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 255
    end
    object qryDTPBListOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryDTPBListGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 30
    end
    object qryDTPBListACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 15
    end
    object qryDTPBListNGUYENGIA: TIBOFloatField
      FieldName = 'NGUYENGIA'
    end
    object qryDTPBListHAOMON: TIBOFloatField
      FieldName = 'HAOMON'
    end
    object qryDTPBListAMOR_VALUE: TIBOFloatField
      FieldName = 'AMOR_VALUE'
    end
    object qryDTPBListALLOCATE_ACC: TWideStringField
      FieldName = 'ALLOCATE_ACC'
      Size = 15
    end
    object qryDTPBListAMORTISE_ACC: TWideStringField
      FieldName = 'AMORTISE_ACC'
      Size = 15
    end
    object qryDTPBListUSING_LIFE: TIBOFloatField
      FieldName = 'USING_LIFE'
    end
    object qryDTPBListGTCL: TIBOFloatField
      FieldName = 'GTCL'
    end
    object qryDTPBListUSEOBJECT_ID: TWideStringField
      FieldName = 'USEOBJECT_ID'
      Size = 90
    end
    object qryDTPBListUSEOBJECT_DETAIL: TWideStringField
      FieldName = 'USEOBJECT_DETAIL'
      Size = 90
    end
    object qryDTPBListGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 126
    end
    object qryDTPBListAMOR_PERCENT: TIBOFloatField
      FieldName = 'AMOR_PERCENT'
    end
  end
  object dsDTPBList: TDataSource
    DataSet = qryDTPBList
    Left = 832
    Top = 601
  end
end
