object InterDocListFrm: TInterDocListFrm
  Left = 125
  Top = 146
  Width = 799
  Height = 557
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 200
    Top = 0
    Width = 4
    Height = 523
  end
  object Panel1: TPanel
    Left = 204
    Top = 0
    Width = 587
    Height = 523
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 0
      Top = 305
      Width = 587
      Height = 4
      Cursor = crVSplit
      Align = alBottom
    end
    object dbgPhieuBH: TdxDBGrid
      Left = 0
      Top = 0
      Width = 587
      Height = 305
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOC_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnDblClick = dbgPhieuBHDblClick
      OnKeyDown = dbgPhieuBHKeyDown
      OnMouseUp = dbgPhieuBHMouseUp
      DataSource = dsDocs
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      object dbgPhieuBHColumn1: TdxDBGridColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_ID'
        SummaryFooterType = cstCount
        SummaryFooterField = 'SOPHIEU'
        SummaryType = cstCount
        SummaryField = 'SOPHIEU'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object dbgPhieuBHColumn2: TdxDBGridColumn
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_DATE'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object dbgPhieuBHDOC_VOUCHER: TdxDBGridMaskColumn
        Caption = 'Ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_VOUCHER'
        Caption_UTF7 = 'Ch+Huk-ng t+Hus'
      end
      object dbgPhieuBHColumn8: TdxDBGridColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MADOITUONG'
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object dbgPhieuBHColumn3: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i giao/ nh'#7853'n'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_PERSON'
        Caption_UTF7 = 'Ng+AbAe3Q-i giao/ nh+Hq0-n'
      end
      object dbgPhieuBHColumn5: TdxDBGridColumn
        Caption = 'Kho h'#224'ng'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAREHOUSE_ID'
        Caption_UTF7 = 'Kho h+AOA-ng'
      end
      object dbgPhieuBHColumn7: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dbgPhieuBHTO_WAREHOUSE: TdxDBGridMaskColumn
        Caption = #272#7871'n kho'
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_WAREHOUSE'
        Caption_UTF7 = '+ARAevw-n kho'
      end
      object dbgPhieuBHWORK_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' c'#244'ng tr'#236'nh'
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_ID'
        Caption_UTF7 = 'M+AOM c+APQ-ng tr+AOw-nh'
      end
      object dbgPhieuBHDOC_PERSONADDR: TdxDBGridMaskColumn
        Caption = #272#7883'a ch'#7881
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_PERSONADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk'
      end
      object dbgPhieuBHVOUCHER_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VOUCHER_DATE'
        Caption_UTF7 = 'Ng+AOA-y ch+Huk-ng t+Hus'
      end
      object dbgPhieuBHNGAYGHISO: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ghi s'#7893
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYGHISO'
        Caption_UTF7 = 'Ng+AOA-y ghi s+HtU'
      end
    end
    object dbgCTPhieuBH: TdxDBGrid
      Left = 0
      Top = 309
      Width = 587
      Height = 214
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DETAIL_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 1
      OnMouseUp = dbgCTPhieuBHMouseUp
      DataSource = dsDetail
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      object dbgCTPhieuBHDETAIL_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_ID'
      end
      object dbgCTPhieuBHOBJECT_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dbgCTPhieuBHOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object dbgCTPhieuBHSUBINFO_1: TdxDBGridMaskColumn
        Caption = 'Qui c'#225'ch'
        HeaderAlignment = taCenter
        Visible = False
        Width = 602
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_1'
        Caption_UTF7 = 'Qui c+AOE-ch'
      end
      object dbgCTPhieuBHSUBINFO_2: TdxDBGridMaskColumn
        Caption = #272'VT'
        HeaderAlignment = taCenter
        Visible = False
        Width = 302
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_2'
        Caption_UTF7 = '+ARA-VT'
      end
      object dbgCTPhieuBHBUDGET_ID: TdxDBGridMaskColumn
        Caption = 'Ng'#226'n s'#225'ch'
        HeaderAlignment = taCenter
        Visible = False
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUDGET_ID'
        Caption_UTF7 = 'Ng+AOI-n s+AOE-ch'
      end
      object dbgCTPhieuBHDETAIL_AMOUNT: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_AMOUNT'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object dbgCTPhieuBHDETAIL_PRICE: TdxDBGridMaskColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_PRICE'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object dbgCTPhieuBHCURRENCY_ID: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_ID'
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object dbgCTPhieuBHDETAIL_RATE: TdxDBGridMaskColumn
        Caption = 'T'#7927' gi'#225
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_RATE'
        Caption_UTF7 = 'T+Hvc gi+AOE'
      end
      object dbgCTPhieuBHDETAIL_VALUE: TdxDBGridMaskColumn
        Caption = 'Th'#224'nh ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_VALUE'
        Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
      end
      object dbgCTPhieuBHDETAIL_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dbgCTPhieuBHDETAIL_VAT: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n thu'#7871
        HeaderAlignment = taCenter
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_VAT'
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8'
      end
    end
  end
  object PnlLeft: TElPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 523
    Align = alLeft
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    DesignSize = (
      200
      523)
    object dbgLoaiBH: TdxDBTreeList
      Left = 1
      Top = 1
      Width = 198
      Height = 521
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'INTERTYPE_ID'
      ParentField = 'PINTERTYPE_ID'
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = dbgLoaiBHKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = dsInterDocType
      DefaultRowHeight = 21
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      object dxDBTreeList1Column1: TdxDBTreeListColumn
        Caption = 'Lo'#7841'i ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 231
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTERTYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i ch+Huk-ng t+Hus'
      end
    end
    object dxDBExtLookupEdit1: TdxDBExtLookupEdit
      Left = 2
      Top = 1
      Width = 198
      TabOrder = 1
      Anchors = [akLeft, akTop, akRight]
      Alignment = taCenter
      DataField = 'SUBSYSTEM_NAME'
      DataSource = dsSubSystem
      ImmediateDropDown = True
      PopupFormBorderStyle = pbsSimple
      PopupWidth = 200
      OnInitPopup = dxDBExtLookupEdit1InitPopup
      DBGridLayout = dxDBGridLayoutList1Item1
      PickListField = 'SUBSYSTEM_NAME'
      StoredValues = 1
    end
  end
  object qryDocs: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'kyht'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'INTERTYPE_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Projects\AccFull\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsInterDocType
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , PERIOD_ID'
      '     , DOC_DATE'
      '     , PAY_DATE'
      '     , WAREHOUSE_ID'
      '     , TO_WAREHOUSE'
      '     , WORK_ID'
      '     , DOCTYPE_ID'
      '     , MADOITUONG'
      '     , LOAIDOITUONG'
      '     , DOC_PERSON'
      '     , DOC_PERSONADDR'
      '     , DOC_VOUCHER'
      '     , VOUCHER_DATE'
      '     , DOC_NOTES'
      '     , NGAYGHISO'
      '     , TEMPLATE_ID'
      '     , LASTMODIFY'
      '     , SUBSYSTEM_ID'
      '     , INTERTYPE_ID'
      'FROM DOCUMENTS'
      'where period_id=:kyht '
      'and SUBSYSTEM_ID=:SUBSYSTEM_ID and INTERTYPE_ID=:INTERTYPE_ID')
    FieldOptions = []
    Left = 232
    Top = 88
    object qryDocsDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryDocsPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryDocsDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object qryDocsPAY_DATE: TDateField
      FieldName = 'PAY_DATE'
    end
    object qryDocsWAREHOUSE_ID: TWideStringField
      FieldName = 'WAREHOUSE_ID'
      Size = 15
    end
    object qryDocsTO_WAREHOUSE: TWideStringField
      FieldName = 'TO_WAREHOUSE'
      Size = 15
    end
    object qryDocsDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
      Required = True
    end
    object qryDocsMADOITUONG: TWideStringField
      FieldName = 'MADOITUONG'
      Size = 30
    end
    object qryDocsLOAIDOITUONG: TSmallintField
      FieldName = 'LOAIDOITUONG'
    end
    object qryDocsDOC_PERSON: TWideStringField
      FieldName = 'DOC_PERSON'
      Size = 126
    end
    object qryDocsDOC_PERSONADDR: TWideStringField
      FieldName = 'DOC_PERSONADDR'
      Size = 126
    end
    object qryDocsDOC_VOUCHER: TWideStringField
      FieldName = 'DOC_VOUCHER'
      Size = 126
    end
    object qryDocsVOUCHER_DATE: TDateField
      FieldName = 'VOUCHER_DATE'
    end
    object qryDocsDOC_NOTES: TWideStringField
      FieldName = 'DOC_NOTES'
      Size = 255
    end
    object qryDocsNGAYGHISO: TDateTimeField
      FieldName = 'NGAYGHISO'
    end
    object qryDocsTEMPLATE_ID: TIntegerField
      FieldName = 'TEMPLATE_ID'
    end
    object qryDocsLASTMODIFY: TWideStringField
      FieldName = 'LASTMODIFY'
      Size = 15
    end
    object qryDocsSUBSYSTEM_ID: TSmallintField
      FieldName = 'SUBSYSTEM_ID'
    end
    object qryDocsINTERTYPE_ID: TSmallintField
      FieldName = 'INTERTYPE_ID'
    end
    object qryDocsWORK_ID: TWideStringField
      FieldName = 'WORK_ID'
      Size = 15
    end
  end
  object dsDocs: TDataSource
    DataSet = qryDocs
    Left = 232
    Top = 120
  end
  object qryDetail: TIBOQuery
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
      end>
    DatabaseName = 'D:\Projects\AccFull\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID'
      'DETAIL_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDocs
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , PERIOD_ID'
      '     , DETAIL_ID'
      '     , DOC_DETAIL.OBJECT_ID'
      '     , DOC_DETAIL.OTYPE_ID'
      '     , BUDGET_ID'
      '     , DETAIL_AMOUNT'
      '     , DETAIL_PRICE'
      '     , CURRENCY_ID'
      '     , DETAIL_RATE'
      '     , DETAIL_VALUE'
      '     , DETAIL_NOTE'
      '     , DETAIL_VAT'
      '     , OBJECT_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      'FROM DOC_DETAIL'
      
        'LEFT JOIN OBJECT_LIST on (DOC_DETAIL.OBJECT_ID= OBJECT_LIST.OBJE' +
        'CT_ID '
      
        '                      and DOC_DETAIL.OTYPE_ID = OBJECT_LIST.OTYP' +
        'E_ID)'
      'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID '
      'order by DETAIL_ID')
    FieldOptions = []
    Left = 208
    Top = 344
    object qryDetailDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryDetailPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryDetailDETAIL_ID: TIntegerField
      FieldName = 'DETAIL_ID'
      Required = True
    end
    object qryDetailOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryDetailOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryDetailBUDGET_ID: TIntegerField
      FieldName = 'BUDGET_ID'
    end
    object qryDetailDETAIL_AMOUNT: TIBOFloatField
      FieldName = 'DETAIL_AMOUNT'
    end
    object qryDetailDETAIL_PRICE: TIBOFloatField
      FieldName = 'DETAIL_PRICE'
    end
    object qryDetailCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 6
    end
    object qryDetailDETAIL_RATE: TIBOFloatField
      FieldName = 'DETAIL_RATE'
    end
    object qryDetailDETAIL_VALUE: TIBOFloatField
      FieldName = 'DETAIL_VALUE'
    end
    object qryDetailDETAIL_NOTE: TWideStringField
      FieldName = 'DETAIL_NOTE'
      Size = 255
    end
    object qryDetailDETAIL_VAT: TIBOFloatField
      FieldName = 'DETAIL_VAT'
    end
    object qryDetailOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryDetailSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryDetailSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 208
    Top = 376
  end
  object ActionList1: TActionList
    Left = 548
    Top = 166
    object acChangeDate: TAction
      Caption = 'acChangeDate'
    end
    object acKeToan: TAction
      Caption = 'acKeToan'
    end
    object acCTPhieu: TAction
      Caption = 'acCTPhieu'
      OnExecute = acCTPhieuExecute
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = 'Danh s'#225'ch ch'#7913'ng t'#7915' t'#7915' c'#225'c ph'#226'n h'#7879' kh'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 56
  end
  object dsSubSystem: TDataSource
    DataSet = qrySubSystem
    Left = 64
    Top = 40
  end
  object qrySubSystem: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\AccFull\db\Db.gdb'
    EditSQL.Strings = (
      'UPDATE SUBSYSTEM SET'
      '   SUBSYSTEM_ID = :SUBSYSTEM_ID, /*PK*/'
      '   SUBSYSTEM_NAME = :SUBSYSTEM_NAME'
      'WHERE'
      '   SUBSYSTEM_ID = :OLD_SUBSYSTEM_ID')
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'SUBSYSTEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SUBSYSTEM_ID'
      '     , SUBSYSTEM_NAME'
      'FROM SUBSYSTEM')
    FieldOptions = []
    Left = 64
    Top = 8
    object qrySubSystemSUBSYSTEM_ID: TIntegerField
      FieldName = 'SUBSYSTEM_ID'
      Required = True
    end
    object qrySubSystemSUBSYSTEM_NAME: TWideStringField
      FieldName = 'SUBSYSTEM_NAME'
      Required = True
      Size = 126
    end
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 40
    Top = 24
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        F4010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060C53554253595354454D5F4944
        0D53756D6D61727947726F7570730E001053756D6D617279536570617261746F
        7206022C200A44617461536F75726365071B496E746572446F634C6973744672
        6D2E647353756253797374656D1044656661756C74526F774865696768740213
        0F46696C7465722E43726974657269610A0400000000000000094F7074696F6E
        7344420B106564676F43616E63656C4F6E457869740D6564676F43616E44656C
        6574650D6564676F43616E496E73657274116564676F43616E4E617669676174
        696F6E116564676F436F6E6669726D44656C657465126564676F4C6F6164416C
        6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F7074696F
        6E73566965770B0D6564676F4175746F5769647468136564676F42616E644865
        6164657257696474680D6564676F5573654269746D6170000A53686F77486561
        64657208000F546478444247726964436F6C756D6E0E53554253595354454D5F
        4E414D450942616E64496E646578020008526F77496E6465780200094669656C
        644E616D65060E53554253595354454D5F4E414D45000000}
    end
  end
  object qryInterDocType: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEM_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\AccFull\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'SUBSYSTEM_ID'
      'INTERTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsSubSystem
    SQL.Strings = (
      'SELECT SUBSYSTEM_ID'
      '     , INTERTYPE_ID'
      '     , PINTERTYPE_ID'
      '     , INTERTYPE_NAME'
      '     , INTER_DOCTYPE.TKCO'
      '     , INTER_DOCTYPE.TKNO'
      '     , INTER_DOCTYPE.TKVAT'
      '     , INTER_DOCTYPE.DOCTYPE_ID'
      'FROM INTER_DOCTYPE'
      'where SUBSYSTEM_ID=:SUBSYSTEM_ID')
    FieldOptions = []
    Left = 48
    Top = 168
    object qryInterDocTypeSUBSYSTEM_ID: TSmallintField
      FieldName = 'SUBSYSTEM_ID'
      Required = True
    end
    object qryInterDocTypeINTERTYPE_ID: TSmallintField
      FieldName = 'INTERTYPE_ID'
      Required = True
    end
    object qryInterDocTypePINTERTYPE_ID: TSmallintField
      FieldName = 'PINTERTYPE_ID'
      Required = True
    end
    object qryInterDocTypeINTERTYPE_NAME: TWideStringField
      FieldName = 'INTERTYPE_NAME'
      Required = True
      Size = 126
    end
    object qryInterDocTypeTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryInterDocTypeTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryInterDocTypeTKVAT: TWideStringField
      FieldName = 'TKVAT'
      Size = 15
    end
    object qryInterDocTypeDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
    end
  end
  object dsInterDocType: TDataSource
    DataSet = qryInterDocType
    Left = 48
    Top = 200
  end
end
