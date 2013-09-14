object RentAriseCTFrm: TRentAriseCTFrm
  Tag = 30
  Left = 134
  Top = 87
  Width = 773
  Height = 564
  HelpContext = 29
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
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 765
    Height = 530
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      765
      530)
    object grdHH: TdxDBGrid
      Left = 5
      Top = 11
      Width = 620
      Height = 129
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung'
          Width = 128
        end
        item
          Caption = #272#7847'u k'#7923
          Width = 102
        end
        item
          Caption = 'Thu'#234' trong k'#7923
          Width = 103
        end
        item
          Caption = 'Tr'#7843' trong k'#7923
          Width = 154
        end
        item
          Caption = 'Cu'#7889'i k'#7923
          Width = 89
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdHHDblClick
      OnEnter = grdHHEnter
      OnKeyDown = grdHHKeyDown
      OnMouseDown = grdHHMouseDown
      OnMouseUp = grdHHMouseUp
      DataSource = dsRentArise
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdHHMAKH: TdxDBGridMaskColumn
        Caption = 'Kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAKH'
        GroupIndex = 0
        Caption_UTF7 = 'Kh+AOE-ch h+AOA-ng'
      end
      object grdHHMAHH: TdxDBGridMaskColumn
        Caption = 'M'#227' h'#224'ng'
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAHH'
        Caption_UTF7 = 'M+AOM h+AOA-ng'
      end
      object grdHHTENHH: TdxDBGridMaskColumn
        Caption = 'T'#234'n h'#224'ng'
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENHH'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng'
      end
      object grdHHSHTK: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
      end
      object grdHHSLDAUKY: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SLDAUKY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdHHGTDAUKY: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 48
        BandIndex = 1
        RowIndex = 0
        FieldName = 'GTDAUKY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdHHSLTHUE: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 2
        RowIndex = 0
        FieldName = 'SLTHUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdHHGTTHUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 51
        BandIndex = 2
        RowIndex = 0
        FieldName = 'GTTHUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdHHSLTRA: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 51
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SLTRA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdHHGTTRA: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 51
        BandIndex = 3
        RowIndex = 0
        FieldName = 'GTTRA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdHHGTHAOMON: TdxDBGridMaskColumn
        Caption = 'Hao m'#242'n'
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 3
        RowIndex = 0
        FieldName = 'GTHAOMON'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Hao m+API-n'
      end
      object grdHHSLTON: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 47
        BandIndex = 4
        RowIndex = 0
        FieldName = 'SLTON'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdHHGTTON: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 4
        RowIndex = 0
        FieldName = 'GTTON'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup1: TdxLayoutGroup
        Caption = #167#232'i t'#173#238'ng chi ti'#213't'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
      end
      object lociKH: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid4'
        ShowCaption = False
        Control = grdHH
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 256
    Top = 116
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Caption = 'Xu'#7845't ra &Excel'
      Category = 0
      Hint = 'Xu?t ra Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Xu'#7845't ra &HTML'
      Category = 0
      Hint = 'Xu?t ra HTML'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Xu'#7845't ra &XML'
      Category = 0
      Hint = 'Xu?t ra XML'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object btnDetail: TdxBarButton
      Caption = 'Xem ph'#225't sinh chi ti'#7871't'
      Category = 0
      Hint = 'Xem chi ti?t'
      Visible = ivAlways
      OnClick = btnDetailClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'C'#7853'p nh'#7853't s'#7889' m'#7899'i nh'#7845't'
      Category = 0
      Hint = 'C?p nh?t s? m?i nh?t'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object bbtnFilter: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l?c d? li?u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnFilterClick
    end
    object dxBarButton5: TdxBarButton
      Caption = 'In danh s'#225'ch'
      Category = 0
      Hint = 'In danh s'#225'ch'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'S'#7917'a m'#7851'u in'
      Category = 0
      Hint = 'S'#7917'a m'#7851'u in'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = btnDetail
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnFilter
        Visible = True
      end
      item
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton5
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end>
    UseOwnFont = False
    Left = 284
    Top = 116
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
        Caption = 'T'#236'nh cho thu'#234' h'#224'ng trong th'#225'ng t'#7841'i c'#244'ng tr'#236'nh : '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryRentArise: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'MACT'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'MAKH'
      'MAHH'
      'SHTK'
      'MACT')
    Unicode = True
    RecordCountAccurate = True
    DataSource = MainDM.dsPAcc
    SQL.Strings = (
      'SELECT MAKH,MAHH,TENHH,DVT,SHTK'
      '     , MAKH||MAHH||SHTK KF'
      '     , SLDAUKY,GTDAUKY'
      '     , SLTHUE,GTTHUE'
      '     , SLTRA,GTTRA,GTHAOMON'
      '     , SLTON,GTTON'
      '     , MACT'
      'FROM MACRO_CHOTHUEPS(:PERIOD_ID,:PERIOD_ID,:BRANCH_ID)'
      'where MACT=:MACT'
      'order by MAKH,MAHH,SHTK')
    FieldOptions = []
    Left = 237
    Top = 220
    object qryRentAriseMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 30
    end
    object qryRentAriseMAHH: TWideStringField
      FieldName = 'MAHH'
      Size = 30
    end
    object qryRentAriseTENHH: TWideStringField
      FieldName = 'TENHH'
      Size = 126
    end
    object qryRentAriseDVT: TWideStringField
      FieldName = 'DVT'
      Size = 63
    end
    object qryRentAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryRentAriseSLDAUKY: TIBOFloatField
      FieldName = 'SLDAUKY'
    end
    object qryRentAriseGTDAUKY: TIBOFloatField
      FieldName = 'GTDAUKY'
    end
    object qryRentAriseSLTHUE: TIBOFloatField
      FieldName = 'SLTHUE'
    end
    object qryRentAriseGTTHUE: TIBOFloatField
      FieldName = 'GTTHUE'
    end
    object qryRentAriseSLTRA: TIBOFloatField
      FieldName = 'SLTRA'
    end
    object qryRentAriseGTTRA: TIBOFloatField
      FieldName = 'GTTRA'
    end
    object qryRentAriseGTHAOMON: TIBOFloatField
      FieldName = 'GTHAOMON'
    end
    object qryRentAriseSLTON: TIBOFloatField
      FieldName = 'SLTON'
    end
    object qryRentAriseGTTON: TIBOFloatField
      FieldName = 'GTTON'
    end
    object qryRentAriseKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Size = 90
    end
    object qryRentAriseMACT: TWideStringField
      FieldName = 'MACT'
      Size = 15
    end
  end
  object dsRentArise: TDataSource
    DataSet = qryRentArise
    Left = 253
    Top = 265
  end
  object ReportRent: TppReport
    AutoStop = False
    DataPipeline = dbpReportRent
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 56
    Top = 104
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbpReportRent'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'dbpReportRent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 8202
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 46567
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 197379
        mmTop = 0
        mmWidth = 0
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 194734
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 17187
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 178859
        mmTop = 1323
        mmWidth = 17187
        BandType = 8
      end
    end
  end
  object DesignerRent: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ReportRent
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 96
    Top = 115
  end
  object dbpReportRent: TppDBPipeline
    DataSource = dsRentArise
    UserName = 'dbpReportRent'
    Left = 113
    Top = 116
    object dbpReportRentppField1: TppField
      FieldAlias = 'MACT'
      FieldName = 'MACT'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbpReportRentppField2: TppField
      FieldAlias = 'MAKH'
      FieldName = 'MAKH'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object dbpReportRentppField3: TppField
      FieldAlias = 'MAHH'
      FieldName = 'MAHH'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object dbpReportRentppField4: TppField
      FieldAlias = 'TENHH'
      FieldName = 'TENHH'
      FieldLength = 126
      DisplayWidth = 126
      Position = 3
    end
    object dbpReportRentppField5: TppField
      FieldAlias = 'DVT'
      FieldName = 'DVT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 4
    end
    object dbpReportRentppField6: TppField
      FieldAlias = 'SHTK'
      FieldName = 'SHTK'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object dbpReportRentppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLDAUKY'
      FieldName = 'SLDAUKY'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object dbpReportRentppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'GTDAUKY'
      FieldName = 'GTDAUKY'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dbpReportRentppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLTHUE'
      FieldName = 'SLTHUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbpReportRentppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'GTTHUE'
      FieldName = 'GTTHUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dbpReportRentppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLTRA'
      FieldName = 'SLTRA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dbpReportRentppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'GTTRA'
      FieldName = 'GTTRA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object dbpReportRentppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'GTHAOMON'
      FieldName = 'GTHAOMON'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object dbpReportRentppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLTON'
      FieldName = 'SLTON'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object dbpReportRentppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'GTTON'
      FieldName = 'GTTON'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object dbpReportRentppField16: TppField
      FieldAlias = 'KF'
      FieldName = 'KF'
      FieldLength = 90
      DisplayWidth = 90
      Position = 15
    end
  end
end
