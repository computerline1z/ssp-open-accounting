object SQLTesterFrm: TSQLTesterFrm
  Tag = 70
  Left = 153
  Top = 158
  Width = 743
  Height = 515
  HelpContext = 27
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
    Left = 0
    Top = 317
    Width = 735
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object gridResult: TdxDBGrid
    Left = 0
    Top = 320
    Width = 735
    Height = 161
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alBottom
    TabOrder = 0
    OnKeyDown = gridResultKeyDown
    OnMouseUp = gridResultMouseUp
    DataSource = dsExecuteSQL
    DefaultRowHeight = 19
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
  end
  object ElPanel1: TElPanel
    Left = 0
    Top = 288
    Width = 735
    Height = 29
    Align = alBottom
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object ElPopupButton1: TElPopupButton
      Left = 100
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L'#7879'nh &m'#7899'i'
      TabOrder = 1
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 330
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 0
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 255
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u l'#7841'i'
      TabOrder = 4
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 175
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' l'#7879'nh n'#224'y'
      TabOrder = 3
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 0
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Thi h'#224'nh l'#7879'nh SQL (F9)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Thi h'#224'nh'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      Action = acRun
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object ElPageControl1: TElPageControl
    Left = 0
    Top = 0
    Width = 735
    Height = 288
    BorderWidth = 0
    DrawFocus = False
    Flat = False
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsTabs
    TabIndex = 0
    TabPosition = etpBottom
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlack
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = ElTabSheet1
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 2
    object ElTabSheet1: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = '&C'#226'u SQL'
      object memoSQLEdit: TdxDBMemo
        Left = 0
        Top = 0
        Width = 731
        Align = alClient
        TabOrder = 0
        DataField = 'SQL_TEXT'
        DataSource = dsSQLLOG
        Height = 265
      end
    end
    object ElTabSheet2: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = '&Danh s'#225'ch'
      Visible = False
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 265
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SQL_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnDblClick = dxDBGrid2DblClick
        OnKeyDown = dxDBGrid1KeyDown
        OnMouseUp = dxDBGrid1MouseUp
        DataSource = dsSQLLOG
        DefaultRowHeight = 19
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
        object dxDBGrid1SQL_ID: TdxDBGridMaskColumn
          Caption = 'STT'
          HeaderAlignment = taCenter
          Visible = False
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SQL_ID'
        end
        object dxDBGrid1SQL_NAME: TdxDBGridMaskColumn
          Caption = 'Ghi ch'#250' v'#7873' c'#226'u l'#7879'nh n'#224'y'
          HeaderAlignment = taCenter
          Width = 221
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SQL_NAME'
          Caption_UTF7 = 'Ghi ch+APo v+HsE c+AOI-u l+Hsc-nh n+AOA-y'
        end
        object dxDBGrid1SQL_TEXT: TdxDBGridMemoColumn
          Caption = 'N'#7897'i dung c'#226'u l'#7879'nh SQL'
          HeaderAlignment = taCenter
          Width = 508
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SQL_TEXT'
          Caption_UTF7 = 'N+Htk-i dung c+AOI-u l+Hsc-nh SQL'
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 696
    Top = 112
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object qrySQLLOG: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SQL_LOG'
      'WHERE'
      '   SQL_ID = :OLD_SQL_ID')
    EditSQL.Strings = (
      'UPDATE SQL_LOG SET'
      '   SQL_ID = :SQL_ID, /*PK*/'
      '   SQL_NAME = :SQL_NAME,'
      '   SQL_TEXT = :SQL_TEXT'
      'WHERE'
      '   SQL_ID = :OLD_SQL_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO SQL_LOG('
      '   SQL_ID, /*PK*/'
      '   SQL_NAME,'
      '   SQL_TEXT)'
      'VALUES ('
      '   :SQL_ID,'
      '   :SQL_NAME,'
      '   :SQL_TEXT)')
    KeyLinks.Strings = (
      'SQL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qrySQLLOGBeforeDelete
    AfterInsert = qrySQLLOGAfterInsert
    OnNewRecord = qrySQLLOGNewRecord
    SQL.Strings = (
      'SELECT '
      '     SQL_ID'
      '     , SQL_NAME'
      '     , SQL_TEXT'
      'FROM SQL_LOG'
      'order by SQL_ID')
    FieldOptions = []
    Left = 304
    Top = 112
    object qrySQLLOGSQL_ID: TSmallintField
      FieldName = 'SQL_ID'
      Required = True
    end
    object qrySQLLOGSQL_NAME: TWideStringField
      FieldName = 'SQL_NAME'
      Size = 126
    end
    object qrySQLLOGSQL_TEXT: TMemoField
      FieldName = 'SQL_TEXT'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsSQLLOG: TDataSource
    DataSet = qrySQLLOG
    Left = 304
    Top = 144
  end
  object qryExecuteSQL: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    OnError = qryExecuteSQLError
    FieldOptions = []
    Left = 168
    Top = 336
  end
  object dsExecuteSQL: TDataSource
    DataSet = qryExecuteSQL
    Left = 168
    Top = 368
  end
  object ActionList1: TActionList
    Left = 640
    Top = 49
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      ShortCut = 16462
      DataSource = dsSQLLOG
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      ShortCut = 16467
      DataSource = dsSQLLOG
    end
    object acRun: TAction
      Category = 'Dataset'
      ShortCut = 120
      OnExecute = acRunExecute
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsSQLLOG
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsSQLLOG
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
        Caption = 'Th'#7921'c thi c'#226'u l'#7879'nh SQL'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 504
    Top = 65528
  end
end
