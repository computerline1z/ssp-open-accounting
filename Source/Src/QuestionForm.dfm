object QuestionFrm: TQuestionFrm
  Tag = 70
  Left = 140
  Top = 89
  Width = 743
  Height = 516
  HelpContext = 27
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 257
    Width = 735
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 295
    Width = 735
    Height = 187
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'QUESTION_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    OnKeyDown = dxDBGrid1KeyDown
    OnMouseUp = dxDBGrid1MouseUp
    DataSource = dsQuestion
    DefaultRowHeight = 19
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    object dxDBGrid1QUESTION_ID: TdxDBGridMaskColumn
      Caption = 'Stt'
      HeaderAlignment = taCenter
      Width = 29
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QUESTION_ID'
    end
    object dxDBGrid1QUESTION_NAME: TdxDBGridMaskColumn
      Caption = 'T'#234'n m'#244' t'#7843' c'#226'u h'#7887'i'
      HeaderAlignment = taCenter
      Width = 256
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QUESTION_NAME'
      Caption_UTF7 = 'T+AOo-n m+APQ t+HqM c+AOI-u h+Hs8-i'
    end
    object dxDBGrid1QUESTION_TEXT: TdxDBGridMemoColumn
      Caption = 'N'#7897'i dung l'#7879'nh'
      HeaderAlignment = taCenter
      Width = 450
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QUESTION_TEXT'
      Caption_UTF7 = 'N+Htk-i dung l+Hsc-nh'
    end
  end
  object ElPanel1: TElPanel
    Left = 0
    Top = 262
    Width = 735
    Height = 33
    Align = alTop
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object ElLabel1: TElLabel
      Left = 87
      Top = 10
      Width = 40
      Height = 13
      Caption = 'T'#7915' ng'#224'y'
    end
    object ElLabel2: TElLabel
      Left = 239
      Top = 10
      Width = 47
      Height = 13
      Caption = #272#7871'n ng'#224'y'
    end
    object ElLabel3: TElLabel
      Left = 474
      Top = 8
      Width = 37
      Height = 13
      Caption = 'K'#7871't qu'#7843
    end
    object ElPopupButton1: TElPopupButton
      Left = 2
      Top = 4
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&C'#226'u m'#7899'i'
      TabOrder = 0
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dedtTuNgay: TdxDateEdit
      Left = 132
      Top = 6
      Width = 100
      TabOrder = 1
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dedtDenNgay: TdxDateEdit
      Left = 290
      Top = 6
      Width = 100
      TabOrder = 2
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object ElPopupButton2: TElPopupButton
      Left = 394
      Top = 4
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#7921'c hi'#7879'n'
      TabOrder = 3
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxEdit1: TdxEdit
      Left = 520
      Top = 4
      Width = 209
      TabOrder = 4
      Alignment = taLeftJustify
      ReadOnly = True
      StoredValues = 65
    end
  end
  object ElPanel2: TElPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 257
    Align = alTop
    MouseCapture = False
    TabOrder = 2
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object Splitter2: TSplitter
      Left = 343
      Top = 1
      Height = 255
      Align = alRight
    end
    object mmSQLEdit: TdxDBMemo
      Left = 346
      Top = 1
      Width = 388
      Align = alRight
      TabOrder = 0
      DataField = 'QUESTION_TEXT'
      DataSource = dsQuestion
      Height = 255
    end
    object dxDBGrid2: TdxDBGrid
      Left = 1
      Top = 1
      Width = 342
      Height = 255
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FUNCTION_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 1
      OnDblClick = dxDBGrid2DblClick
      OnKeyDown = dxDBGrid2KeyDown
      OnMouseUp = dxDBGrid2MouseUp
      DataSource = dsHelp
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid2FUNCTION_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Visible = False
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_ID'
      end
      object dxDBGrid2FUNCTION_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n h'#224'm'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-m'
      end
      object dxDBGrid2FUNCTION_TEXT: TdxDBGridMaskColumn
        Caption = 'M'#244' t'#7843' ch'#7913'c n'#259'ng c'#7911'a h'#224'm'
        HeaderAlignment = taCenter
        Width = 310
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_TEXT'
        Caption_UTF7 = 'M+APQ t+HqM ch+Huk-c n+AQM-ng c+Huc-a h+AOA-m'
      end
    end
  end
  object qryQuestion: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM QUESTION_LIST'
      'WHERE'
      '   QUESTION_ID = :OLD_QUESTION_ID')
    EditSQL.Strings = (
      'UPDATE QUESTION_LIST SET'
      '   QUESTION_ID = :QUESTION_ID, /*PK*/'
      '   QUESTION_NAME = :QUESTION_NAME,'
      '   QUESTION_TEXT = :QUESTION_TEXT'
      'WHERE'
      '   QUESTION_ID = :OLD_QUESTION_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO QUESTION_LIST('
      '   QUESTION_ID, /*PK*/'
      '   QUESTION_NAME,'
      '   QUESTION_TEXT)'
      'VALUES ('
      '   :QUESTION_ID,'
      '   :QUESTION_NAME,'
      '   :QUESTION_TEXT)')
    KeyLinks.Strings = (
      'QUESTION_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeCancel = qryQuestionBeforeCancel
    BeforeEdit = qryQuestionBeforeEdit
    BeforeDelete = qryQuestionBeforeDelete
    BeforeInsert = qryQuestionBeforeInsert
    AfterInsert = qryQuestionAfterInsert
    BeforePost = qryQuestionBeforePost
    OnNewRecord = qryQuestionNewRecord
    OnPostError = qryQuestionPostError
    SQL.Strings = (
      'SELECT QUESTION_ID'
      '     , QUESTION_NAME'
      '     , QUESTION_TEXT'
      'FROM QUESTION_LIST'
      'order by QUESTION_ID')
    FieldOptions = []
    Left = 160
    Top = 192
    object qryQuestionQUESTION_ID: TSmallintField
      FieldName = 'QUESTION_ID'
      Required = True
    end
    object qryQuestionQUESTION_NAME: TWideStringField
      FieldName = 'QUESTION_NAME'
      Size = 126
    end
    object qryQuestionQUESTION_TEXT: TMemoField
      FieldName = 'QUESTION_TEXT'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsQuestion: TDataSource
    DataSet = qryQuestion
    Left = 160
    Top = 224
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
        Caption = 'C'#225'c c'#226'u h'#7887'i d'#224'nh cho nh'#224' qu'#7843' tr'#7883
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 464
    Top = 32
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 364
    Top = 4
    object dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryHelp: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM QUESTION_HELP'
      'WHERE'
      '   FUNCTION_ID = :OLD_FUNCTION_ID')
    EditSQL.Strings = (
      'UPDATE QUESTION_HELP SET'
      '   FUNCTION_ID = :FUNCTION_ID, /*PK*/'
      '   FUNCTION_NAME = :FUNCTION_NAME,'
      '   FUNCTION_TEXT = :FUNCTION_TEXT'
      'WHERE'
      '   FUNCTION_ID = :OLD_FUNCTION_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO QUESTION_HELP('
      '   FUNCTION_ID, /*PK*/'
      '   FUNCTION_NAME,'
      '   FUNCTION_TEXT)'
      'VALUES ('
      '   :FUNCTION_ID,'
      '   :FUNCTION_NAME,'
      '   :FUNCTION_TEXT)')
    KeyLinks.Strings = (
      'FUNCTION_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryHelpBeforePost
    OnPostError = qryHelpPostError
    SQL.Strings = (
      'SELECT FUNCTION_ID'
      '     , FUNCTION_NAME'
      '     , FUNCTION_TEXT'
      'FROM QUESTION_HELP'
      'order by FUNCTION_ID')
    FieldOptions = []
    Left = 368
    Top = 80
    object qryHelpFUNCTION_ID: TSmallintField
      FieldName = 'FUNCTION_ID'
      Required = True
    end
    object qryHelpFUNCTION_NAME: TWideStringField
      FieldName = 'FUNCTION_NAME'
      Size = 63
    end
    object qryHelpFUNCTION_TEXT: TWideStringField
      FieldName = 'FUNCTION_TEXT'
      Size = 126
    end
  end
  object dsHelp: TDataSource
    DataSet = qryHelp
    Left = 368
    Top = 120
  end
  object qryGetBalance: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SHTK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TUNGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENNGAY'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select NODK,CODK,PSNO,PSCO,BENNO,BENCO'
      'from macro_sodutk_ngay(:SHTK,:TUNGAY,:DENNGAY,0)')
    FieldOptions = []
    Left = 632
    Top = 320
    object qryGetBalanceNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryGetBalanceCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryGetBalancePSNO: TIBOFloatField
      FieldName = 'PSNO'
    end
    object qryGetBalancePSCO: TIBOFloatField
      FieldName = 'PSCO'
    end
    object qryGetBalanceBENNO: TIBOFloatField
      FieldName = 'BENNO'
    end
    object qryGetBalanceBENCO: TIBOFloatField
      FieldName = 'BENCO'
    end
  end
  object qryGetArising: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TUNGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENNGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tkno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tkco'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      '')
    KeyLinks.Strings = (
      'SOTIEN')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select sum(SOTIEN) SOTIEN'
      'from sp_bc_nhatkychung(:TUNGAY,:DENNGAY)'
      'where tkno starting with :tkno and tkco starting with :tkco')
    FieldOptions = []
    Left = 592
    Top = 320
    object qryGetArisingSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
      ReadOnly = True
    end
  end
  object qryGetArising_TMBCTC: TIBOQuery
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
        Name = 'tkno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tkco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtco'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select SOPS'
      'from SP_TMBCTC_PS4(:tuky,:denky,:tkno,:dtno,:tkco,:dtco)')
    FieldOptions = []
    Left = 592
    Top = 360
    object qryGetArising_TMBCTCSOPS: TIBOFloatField
      FieldName = 'SOPS'
    end
  end
  object qryGetBalance_TMBCTC: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'SHTK'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MADT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'TUKY'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DENKY'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select NODK,CODK,NOPS,COPS,NOCK,COCK'
      'from MACRO_TMBCTC_SODUTK_NGAY(:SHTK,:MADT,:TUKY,:DENKY)')
    FieldOptions = []
    Left = 632
    Top = 360
    object qryGetBalance_TMBCTCNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryGetBalance_TMBCTCCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryGetBalance_TMBCTCNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryGetBalance_TMBCTCCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryGetBalance_TMBCTCNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryGetBalance_TMBCTCCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
  end
end
