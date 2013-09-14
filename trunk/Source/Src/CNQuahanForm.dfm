object CNQuahanFrm: TCNQuahanFrm
  Left = 192
  Top = 168
  Width = 733
  Height = 513
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 725
    Height = 479
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnHelp: TElPopupButton
      Left = 573
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 3
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 649
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 4
      OnClick = btnCloseClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MADT'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsCNQuahan
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object dxDBGrid1SHTK: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        GroupIndex = 0
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object dxDBGrid1MADT: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MADT'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1TENDT: TdxDBGridMaskColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDT'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object dxDBGrid1SUB_1: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUB_1'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dxDBGrid1SDNO: TdxDBGridMaskColumn
        Caption = 'S'#7889' d'#432' n'#7907
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SDNO'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE d+AbA n+HuM'
      end
      object dxDBGrid1SDCO: TdxDBGridMaskColumn
        Caption = 'S'#7889' d'#432' c'#243
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SDCO'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE d+AbA c+APM'
      end
      object dxDBGrid1DEBTVALUE: TdxDBGridMaskColumn
        Caption = 'S'#7889' tr'#7875' h'#7841'n'
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBTVALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE tr+HsM h+HqE-n'
      end
    end
    object btnDetail: TElPopupButton
      Left = 1
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem chi ti'#7871't'
      TabOrder = 1
      OnClick = btnDetailClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 77
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In'
      TabOrder = 2
      OnClick = ElPopupButton1Click
      OnMouseUp = ElPopupButton1MouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnDetail
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn7'
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn8'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object DlgSave: TSaveDialog
    Filter = 
      'Excel Files (*.xls)|*.xls|HTML Files (*.htm, *.html)|*.html; *.h' +
      'tm |XML Files (*.xml)|*.xml'
    Left = 356
    Top = 72
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
        Caption = 'Danh s'#225'ch c'#244'ng n'#7907' '#273#227' v'#432#7907't th'#7901'i h'#7841'n thanh to'#225'n v'#7899'i s'#7889' ng'#224'y :'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ReportCN: TppReport
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
    Left = 72
    Top = 112
    Version = '7.0'
    mmColumnWidth = 0
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
  object DesignerCN: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ReportCN
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 96
    Top = 115
  end
  object dbpReportCN: TppDBPipeline
    DataSource = MainDM.dsCNQuahan
    UserName = 'dbpReportCN'
    Left = 113
    Top = 116
  end
end
