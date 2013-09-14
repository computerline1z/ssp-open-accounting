object FactorDetailFrm: TFactorDetailFrm
  Tag = 30
  Left = 178
  Top = 139
  Width = 661
  Height = 449
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
    Width = 653
    Height = 415
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      653
      415)
    object grdKH: TdxDBGrid
      Left = 5
      Top = 11
      Width = 620
      Height = 129
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' '#273#7889'i t'#432#7907'ng, y'#7871'u t'#7889
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'MADT'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdKHDblClick
      OnEnter = grdKHEnter
      OnKeyDown = grdKHKeyDown
      OnMouseDown = grdKHMouseDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsBalArise
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHSHTK: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 '
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object grdKHMADT: TdxDBGridMaskColumn
        Caption = 'M'#227' '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 128
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MADT'
        Caption_UTF7 = 'M+AOM +AREe0Q-i t+AbAe4w-ng'
      end
      object grdKHMANT: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANT'
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object grdKHCOPS: TdxDBGridMaskColumn
        Caption = 'C'#243' VND'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'C+APM VND'
      end
      object grdKHNOPS: TdxDBGridMaskColumn
        Caption = 'N'#7907' VND'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'N+HuM VND'
      end
      object grdKHNTCOPS: TdxDBGridMaskColumn
        Caption = 'C'#243' ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NTCOPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'C+APM ngo+HqE-i t+Hsc'
      end
      object grdKHNTNOPS: TdxDBGridMaskColumn
        Caption = 'N'#7907' ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NTNOPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'N+HuM ngo+HqE-i t+Hsc'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 575
      Top = 387
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
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
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
        Control = grdKH
      end
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'ElPopupButton1'
        ShowCaption = False
        Control = ElPopupButton1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
      end>
    UseOwnFont = False
    Left = 300
    Top = 132
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
    Left = 272
    Top = 132
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
      Caption = 'Xem chi ti'#7871't ph'#225't sinh'
      Category = 0
      Hint = 'Xem chi ti?t'
      Visible = ivAlways
      OnClick = btnDetailClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'C'#7853'p nh'#7853't s'#7889' m'#7899'i nh'#7845't'
      Category = 0
      Hint = 'C?p nh?t s? li?u m?i nh?t'
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
        Caption = 'Chi ti'#7871't ph'#225't sinh c'#7911'a 1 Debit/Credit Notes'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryBalArise: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'mayt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loaiyt'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'shtk'
      'madt'
      'loaidt'
      'mant')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select shtk,madt,loaidt,mant,'
      
        'sum(cops) cops,sum(nops) nops,sum(ntcops) ntcops,sum(ntnops) ntn' +
        'ops'
      'from MACRO_YTPS_TH(:mayt,:loaiyt)'
      'group by shtk,madt,loaidt,mant'
      'order by madt')
    FieldOptions = []
    Left = 297
    Top = 236
    object qryBalAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryBalAriseMADT: TWideStringField
      FieldName = 'MADT'
      Size = 30
    end
    object qryBalAriseLOAIDT: TSmallintField
      FieldName = 'LOAIDT'
    end
    object qryBalAriseMANT: TWideStringField
      FieldName = 'MANT'
      Size = 6
    end
    object qryBalAriseCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryBalAriseNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryBalAriseNTCOPS: TIBOFloatField
      FieldName = 'NTCOPS'
      ReadOnly = True
    end
    object qryBalAriseNTNOPS: TIBOFloatField
      FieldName = 'NTNOPS'
      ReadOnly = True
    end
  end
  object dsBalArise: TDataSource
    DataSet = qryBalArise
    Left = 297
    Top = 281
  end
end
