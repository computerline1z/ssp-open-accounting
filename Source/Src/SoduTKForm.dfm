object SoduTKFrm: TSoduTKFrm
  Left = 164
  Top = 89
  Width = 796
  Height = 555
  HelpContext = 26
  BorderWidth = 3
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
  object dbtl_SODUTK: TdxDBTreeList
    Left = 0
    Top = 0
    Width = 782
    Height = 486
    HelpContext = 2
    Bands = <
      item
        Caption = 'Th'#244'ng tin v'#7873' t'#224'i kho'#7843'n'
        DisableCustomizing = True
        DisableDragging = True
        Width = 222
      end
      item
        Caption = 'Th'#244'ng tin '#273#7847'u k'#7923
        DisableCustomizing = True
        DisableDragging = True
        Width = 187
      end
      item
        Caption = 'Th'#244'ng tin trong k'#7923
        DisableCustomizing = True
        DisableDragging = True
        Width = 187
      end
      item
        Caption = 'Th'#244'ng tin cu'#7889'i k'#7923
        DisableCustomizing = True
        DisableDragging = True
        Width = 185
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'SHTK'
    ParentField = 'TKCHA'
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnDblClick = dbtl_SODUTKDblClick
    OnKeyDown = dbtl_SODUTKKeyDown
    OnMouseUp = dbtl_SODUTKMouseUp
    DataSource = dsAccountArise
    LookAndFeel = lfFlat
    OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoStoreToIniFile, etoTabThrough]
    OptionsDB = [etoAutoCalcKeyValue, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoInvertSelect, etoUseBitmap, etoUseImageIndexForSelected]
    ShowBands = True
    ShowFooter = True
    ShowGrid = True
    TreeLineColor = clGrayText
    object dbtl_SODUTKSHTK: TdxDBTreeListMaskColumn
      Caption = 'S'#7889' hi'#7879'u'
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Sorted = csUp
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHTK'
      SummaryFooterType = cstCount
      SummaryFooterField = 'COCK'
      SummaryFooterFormat = '#,0 d'#242'ng'
      Caption_UTF7 = 'S+HtE hi+Hsc-u'
      SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
    end
    object dbtl_SODUTKTENTK: TdxDBTreeListMaskColumn
      Caption = 'T'#234'n t'#224'i kho'#7843'n'
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 132
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TENTK'
      Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
    end
    object dbtl_SODUTKNODK: TdxDBTreeListMaskColumn
      Caption = 'N'#7907' '#273#7847'u k'#7923
      HeaderAlignment = taCenter
      Width = 94
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NODK'
      SummaryFooterType = cstSum
      SummaryFooterField = 'snodk'
      SummaryFooterFormat = '### ### ### ### ###'
      Caption_UTF7 = 'N+HuM +AREepw-u k+HvM'
    end
    object dbtl_SODUTKCODK: TdxDBTreeListColumn
      Caption = 'C'#243' '#273#7847'u k'#7923
      HeaderAlignment = taCenter
      Width = 93
      BandIndex = 1
      RowIndex = 0
      FieldName = 'CODK'
      SummaryFooterType = cstSum
      SummaryFooterField = 'scodk'
      SummaryFooterFormat = '### ### ### ### ###'
      Caption_UTF7 = 'C+APM +AREepw-u k+HvM'
    end
    object dbtl_SODUTKNOPS: TdxDBTreeListColumn
      Caption = 'N'#7907' ph'#225't sinh'
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 94
      BandIndex = 2
      RowIndex = 0
      FieldName = 'NOPS'
      SummaryFooterType = cstSum
      SummaryFooterField = 'snops'
      SummaryFooterFormat = '### ### ### ### ###'
      Caption_UTF7 = 'N+HuM ph+AOE-t sinh'
    end
    object dbtl_SODUTKCOPS: TdxDBTreeListColumn
      Caption = 'C'#243' ph'#225't sinh'
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 93
      BandIndex = 2
      RowIndex = 0
      FieldName = 'COPS'
      SummaryFooterType = cstSum
      SummaryFooterField = 'scops'
      SummaryFooterFormat = '### ### ### ### ###'
      Caption_UTF7 = 'C+APM ph+AOE-t sinh'
    end
    object dbtl_SODUTKNOCK: TdxDBTreeListColumn
      Caption = 'N'#7907' cu'#7889'i k'#7923
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 93
      BandIndex = 3
      RowIndex = 0
      FieldName = 'NOCK'
      SummaryFooterType = cstSum
      SummaryFooterField = 'snock'
      SummaryFooterFormat = '### ### ### ### ###'
      Caption_UTF7 = 'N+HuM cu+HtE-i k+HvM'
    end
    object dbtl_SODUTKCOCK: TdxDBTreeListColumn
      Caption = 'C'#243' cu'#7889'i k'#7923
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 93
      BandIndex = 3
      RowIndex = 0
      FieldName = 'COCK'
      SummaryFooterType = cstSum
      SummaryFooterField = 'scock'
      SummaryFooterFormat = '### ### ### ### ###'
      Caption_UTF7 = 'C+APM cu+HtE-i k+HvM'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 486
    Width = 782
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnPrint: TElPopupButton
      Left = 2
      Top = 4
      Width = 83
      Height = 25
      Cursor = crDefault
      Hint = 'Click chu'#7897't ph'#7843'i l'#234'n '#273#226'y '#273#7875' s'#7917'a l'#7841'i m'#7851'u in'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem tr'#432#7899'c in'
      TabOrder = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPrintClick
      OnMouseUp = btnPrintMouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkChiCoPS: TdxCheckEdit
      Left = 423
      Top = 6
      Width = 127
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      OnClick = chkChiCoPSClick
      Caption = 'Ch'#7881' c'#243' ph'#225't sinh'
    end
    object Panel2: TPanel
      Left = 620
      Top = 0
      Width = 162
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        162
        29)
      object BitBtn2: TElPopupButton
        Left = 12
        Top = 4
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Tr'#7907' gi'#250'p'
        TabOrder = 0
        OnClick = BitBtn2Click
        Anchors = [akRight, akBottom]
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object BitBtn1: TElPopupButton
        Left = 88
        Top = 4
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = #272#243'&ng'
        TabOrder = 1
        OnClick = BitBtn1Click
        Anchors = [akRight, akBottom]
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
    end
    object rbAll: TElRadioButton
      Left = 172
      Top = 9
      Width = 52
      Height = 17
      Cursor = crDefault
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'T'#7845't c'#7843
      TabOrder = 3
      OnClick = chkChiCoPSClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbCap1: TElRadioButton
      Left = 248
      Top = 9
      Width = 66
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ch'#7881' c'#7845'p 1'
      TabOrder = 4
      OnClick = chkChiCoPSClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbCap1va2: TElRadioButton
      Left = 332
      Top = 9
      Width = 74
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'C'#7845'p 1 v'#224' 2'
      TabOrder = 5
      OnClick = chkChiCoPSClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 85
      Top = 4
      Width = 83
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In ra m'#225'y in'
      TabOrder = 6
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object dbpReportBCD: TppDBPipeline
    DataSource = dsAccountArise
    UserName = 'dbpReportBCD'
    Left = 113
    Top = 68
    object dbpReportBCDppField1: TppField
      FieldAlias = 'SHTK'
      FieldName = 'SHTK'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbpReportBCDppField2: TppField
      FieldAlias = 'TENTK'
      FieldName = 'TENTK'
      FieldLength = 63
      DisplayWidth = 63
      Position = 1
    end
    object dbpReportBCDppField3: TppField
      FieldAlias = 'TKCHA'
      FieldName = 'TKCHA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object dbpReportBCDppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'NODK'
      FieldName = 'NODK'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object dbpReportBCDppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODK'
      FieldName = 'CODK'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object dbpReportBCDppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOPS'
      FieldName = 'NOPS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbpReportBCDppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'COPS'
      FieldName = 'COPS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object dbpReportBCDppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOCK'
      FieldName = 'NOCK'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dbpReportBCDppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'COCK'
      FieldName = 'COCK'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbpReportBCDppField10: TppField
      FieldAlias = 'SHTK_A'
      FieldName = 'SHTK_A'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object dbpReportBCDppField11: TppField
      FieldAlias = 'TENTK_A'
      FieldName = 'TENTK_A'
      FieldLength = 63
      DisplayWidth = 63
      Position = 10
    end
  end
  object DesignerBCD: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 136
    Top = 67
  end
  object qryAccountArise: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\demo.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'shtk')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT shtk,tentk,shtk_a,tentk_a,tkcha,nodk,codk,nops,cops,nock,' +
        'cock '
      '       ,snodk,scodk,snops,scops,snock,scock '
      'FROM SP_BANGCANDOIPS(:KYHT,:BRANCH_ID) '
      'ORDER BY shtk')
    FieldOptions = []
    Left = 33
    Top = 84
    object qryAccountAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 45
    end
    object qryAccountAriseTENTK: TWideStringField
      FieldName = 'TENTK'
      Size = 189
    end
    object qryAccountAriseSHTK_A: TWideStringField
      FieldName = 'SHTK_A'
      Size = 45
    end
    object qryAccountAriseTENTK_A: TWideStringField
      FieldName = 'TENTK_A'
      Size = 189
    end
    object qryAccountAriseTKCHA: TWideStringField
      FieldName = 'TKCHA'
      Size = 45
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
    object qryAccountAriseSNODK: TIBOFloatField
      FieldName = 'SNODK'
    end
    object qryAccountAriseSCODK: TIBOFloatField
      FieldName = 'SCODK'
    end
    object qryAccountAriseSNOPS: TIBOFloatField
      FieldName = 'SNOPS'
    end
    object qryAccountAriseSCOPS: TIBOFloatField
      FieldName = 'SCOPS'
    end
    object qryAccountAriseSNOCK: TIBOFloatField
      FieldName = 'SNOCK'
    end
    object qryAccountAriseSCOCK: TIBOFloatField
      FieldName = 'SCOCK'
    end
  end
  object dsAccountArise: TDataSource
    DataSet = qryAccountArise
    Left = 33
    Top = 114
  end
  object ReportBCD: TppReport
    AutoStop = False
    DataPipeline = dbpReportBCD
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\MayHai\Bin\Templates\a.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    Left = 72
    Top = 72
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbpReportBCD'
    object ppTitleBand12: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object lbl_title: TppLabel
        UserName = 'lbl_title'
        AutoSize = False
        Caption = 'B'#7842'NG C'#194'N '#272#7888'I PH'#193'T SINH TH'#193'NG 1/2002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7451
        mmLeft = 73025
        mmTop = 13229
        mmWidth = 135996
        BandType = 1
      end
      object ppDBText210: TppDBText
        UserName = 'DBText210'
        DataField = 'FULLNAME'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 4995
        mmLeft = 0
        mmTop = 5821
        mmWidth = 89165
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText2101'
        DataField = 'OWNER_NAME'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 4995
        mmLeft = 0
        mmTop = 0
        mmWidth = 89165
        BandType = 1
      end
    end
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = clSilver
        mmHeight = 12171
        mmLeft = 0
        mmTop = 6879
        mmWidth = 284428
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        AutoSize = False
        Caption = 'S'#7889' hi'#7879'u'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 9790
        mmTop = 10583
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        AutoSize = False
        Caption = 'N'#7907
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 102659
        mmTop = 13229
        mmWidth = 29464
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        AutoSize = False
        Caption = 'C'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 132557
        mmTop = 13229
        mmWidth = 29464
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        AutoSize = False
        Caption = 'N'#7907
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 162984
        mmTop = 13229
        mmWidth = 29464
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        AutoSize = False
        Caption = 'C'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 193146
        mmTop = 13229
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        AutoSize = False
        Caption = 'N'#7907
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 224103
        mmTop = 13229
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        AutoSize = False
        Caption = 'C'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 254001
        mmTop = 13229
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label1201'
        AutoSize = False
        Caption = 'Stt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 529
        mmTop = 10583
        mmWidth = 8202
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 8996
        mmTop = 7144
        mmWidth = 1588
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 101865
        mmTop = 6879
        mmWidth = 1058
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 162190
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 223044
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 102129
        mmTop = 12700
        mmWidth = 182298
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        AutoSize = False
        Caption = 'S'#7889' d'#432' '#273#7847'u k'#7923
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 103188
        mmTop = 7408
        mmWidth = 58420
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        AutoSize = False
        Caption = 'S'#7889' ph'#225't sinh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 163777
        mmTop = 7408
        mmWidth = 58420
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        AutoSize = False
        Caption = 'S'#7889' d'#432' cu'#7889'i k'#7923
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 224367
        mmTop = 7408
        mmWidth = 58420
        BandType = 0
      end
      object ppLine197: TppLine
        UserName = 'Line197'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 132292
        mmTop = 12700
        mmWidth = 794
        BandType = 0
      end
      object ppLine198: TppLine
        UserName = 'Line198'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 192617
        mmTop = 12700
        mmWidth = 794
        BandType = 0
      end
      object ppLine199: TppLine
        UserName = 'Line199'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 254001
        mmTop = 12700
        mmWidth = 794
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label1202'
        AutoSize = False
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 34660
        mmTop = 10583
        mmWidth = 65881
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 31750
        mmTop = 7144
        mmWidth = 8996
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppSHTK: TppDBText
        UserName = 'ppSHTK'
        DataField = 'SHTK_A'
        DataPipeline = dbpReportBCD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 10848
        mmTop = 1058
        mmWidth = 20373
        BandType = 4
      end
      object ppNoDK: TppDBText
        UserName = 'ppNoDK'
        BlankWhenZero = True
        DataField = 'NODK'
        DataPipeline = dbpReportBCD
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 102659
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppCoDK: TppDBText
        UserName = 'ppCoDK'
        BlankWhenZero = True
        DataField = 'CODK'
        DataPipeline = dbpReportBCD
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 132557
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppNoPS: TppDBText
        UserName = 'ppNoPS'
        BlankWhenZero = True
        DataField = 'NOPS'
        DataPipeline = dbpReportBCD
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 162984
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppCoPS: TppDBText
        UserName = 'ppCoPS'
        BlankWhenZero = True
        DataField = 'COPS'
        DataPipeline = dbpReportBCD
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 193146
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppNoCK: TppDBText
        UserName = 'ppNoCK'
        BlankWhenZero = True
        DataField = 'NOCK'
        DataPipeline = dbpReportBCD
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 224103
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppCoCK: TppDBText
        UserName = 'ppCoCK'
        BlankWhenZero = True
        DataField = 'COCK'
        DataPipeline = dbpReportBCD
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 254001
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppLine192: TppLine
        UserName = 'Line192'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine193: TppLine
        UserName = 'Line193'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 8996
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine195: TppLine
        UserName = 'Line195'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 101865
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine196: TppLine
        UserName = 'Line196'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 132292
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine200: TppLine
        UserName = 'Line200'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 162190
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine201: TppLine
        UserName = 'Line201'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 192617
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine202: TppLine
        UserName = 'Line202'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 223044
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine203: TppLine
        UserName = 'Line203'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 254001
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine205: TppLine
        UserName = 'Line205'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6615
        mmWidth = 284427
        BandType = 4
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'SHTK'
        DataPipeline = dbpReportBCD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 794
        mmTop = 1058
        mmWidth = 7144
        BandType = 4
      end
      object ppLine204: TppLine
        UserName = 'Line204'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 281782
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppTenTK: TppDBText
        UserName = 'ppTenTK'
        DataField = 'TENTK_A'
        DataPipeline = dbpReportBCD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReportBCD'
        mmHeight = 4572
        mmLeft = 33602
        mmTop = 1058
        mmWidth = 65881
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 31750
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppSystemVariable25: TppSystemVariable
        UserName = 'SystemVariable25'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4149
        mmLeft = 250032
        mmTop = 265
        mmWidth = 33867
        BandType = 8
      end
    end
    object ppSummaryBand12: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 58473
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'T'#7893'ng c'#7897'ng :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 71438
        mmTop = 1588
        mmWidth = 26723
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Ng'#224'y              th'#225'ng               n'#259'm '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 198702
        mmTop = 13758
        mmWidth = 58928
        BandType = 7
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        DisplayFormat = 'dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 211138
        mmTop = 13758
        mmWidth = 6879
        BandType = 7
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        AutoSize = False
        DisplayFormat = 'MM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 237332
        mmTop = 13758
        mmWidth = 7144
        BandType = 7
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        DisplayFormat = 'yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 259821
        mmTop = 13758
        mmWidth = 10848
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Ng'#432#7901'i l'#7853'p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4572
        mmLeft = 224632
        mmTop = 21431
        mmWidth = 26194
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'K'#7871' to'#225'n tr'#432#7903'ng'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4572
        mmLeft = 121973
        mmTop = 21431
        mmWidth = 47096
        BandType = 7
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ACCT_MANAGER'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 4995
        mmLeft = 106627
        mmTop = 46302
        mmWidth = 77523
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Th'#7911' tr'#432#7903'ng'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4572
        mmLeft = 31750
        mmTop = 21431
        mmWidth = 26194
        BandType = 7
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DIRECTOR'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 4995
        mmLeft = 6615
        mmTop = 46302
        mmWidth = 77523
        BandType = 7
      end
      object ppTongNODK: TppLabel
        UserName = 'ppTongNODK'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 100806
        mmTop = 1588
        mmWidth = 31221
        BandType = 7
      end
      object ppTongCODK: TppLabel
        UserName = 'ppTongCODK'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 132292
        mmTop = 1588
        mmWidth = 29633
        BandType = 7
      end
      object ppTongNOPS: TppLabel
        UserName = 'ppTongNOPS'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 162454
        mmTop = 1588
        mmWidth = 29898
        BandType = 7
      end
      object ppTongCOPS: TppLabel
        UserName = 'ppTongCOPS'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 193411
        mmTop = 1588
        mmWidth = 29104
        BandType = 7
      end
      object ppTongNOCK: TppLabel
        UserName = 'ppTongNOCK'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 224103
        mmTop = 1588
        mmWidth = 29369
        BandType = 7
      end
      object ppTongCOCK: TppLabel
        UserName = 'ppTongCOCK'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 255059
        mmTop = 1588
        mmWidth = 28310
        BandType = 7
      end
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
        Caption = 'B'#7843'ng c'#226'n '#273#7889'i ph'#225't sinh t'#224'i kho'#7843'n '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
  object ActionList1: TActionList
    Left = 336
    Top = 64
    object acInTT: TAction
      Caption = 'acInTT'
      ShortCut = 16464
      OnExecute = acInTTExecute
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 4
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
