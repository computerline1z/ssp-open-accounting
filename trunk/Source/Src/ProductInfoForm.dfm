object ProductInfoFrm: TProductInfoFrm
  Left = 122
  Top = 134
  Width = 807
  Height = 567
  HelpContext = 12
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
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 799
    Height = 533
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      799
      533)
    object btnClose: TElPopupButton
      Left = 721
      Top = 505
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 3
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 640
      Top = 505
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 2
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 38
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' s'#7843'n ph'#7849'm s'#7843'n xu'#7845't '#273#432#7907'c'
          Width = 229
        end
        item
          Caption = 'Chi ph'#237' tr'#234'n 1 s'#7843'n ph'#7849'm'
          Width = 274
        end
        item
          Caption = 'Chi ph'#237' tr'#234'n l'#432#7907'ng s'#7843'n ph'#7849'm s'#7843'n xu'#7845't'
          Width = 274
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'PRODUCTION_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = MainDM.dsProductInfo
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHPRODUCTION_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUCTION_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 s'#7843'n ph'#7849'm'
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 s+HqM-n ph+Hqk-m'
      end
      object grdKHOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n s'#7843'n ph'#7849'm'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n s+HqM-n ph+Hqk-m'
      end
      object grdKHPRODUCTION_AMOUNT: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUCTION_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdKHINPLANVALUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' k'#7871' ho'#7841'ch'
        HeaderAlignment = taCenter
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INPLANVALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE k+Hr8 ho+HqE-ch'
      end
      object grdKHCPNC: TdxDBGridColumn
        Caption = 'Nh'#226'n c'#244'ng'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CPNC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Nh+AOI-n c+APQ-ng'
      end
      object grdKHCPNVL: TdxDBGridColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CPNVL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object grdKHCPSXC: TdxDBGridColumn
        Caption = 'S'#7843'n xu'#7845't'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CPSXC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HqM-n xu+HqU-t'
      end
      object grdKHGIATHANHDV: TdxDBGridColumn
        Caption = 'Gi'#225' th'#224'nh'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 1
        RowIndex = 0
        FieldName = 'GIATHANHDV'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE th+AOA-nh'
      end
      object grdKHLABOUR_COST: TdxDBGridMaskColumn
        Caption = 'Nh'#226'n c'#244'ng'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 2
        RowIndex = 0
        FieldName = 'LABOUR_COST'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Nh+AOI-n c+APQ-ng'
      end
      object grdKHMATERIAL_COST: TdxDBGridMaskColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 2
        RowIndex = 0
        FieldName = 'MATERIAL_COST'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object grdKHOTHER_COST: TdxDBGridMaskColumn
        Caption = 'S'#7843'n xu'#7845't'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 2
        RowIndex = 0
        FieldName = 'OTHER_COST'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HqM-n xu+HqU-t'
      end
      object grdKHTongcong: TdxDBGridColumn
        Caption = 'T'#7893'ng c'#7897'ng'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 2
        RowIndex = 0
        FieldName = 'Tongcong'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
      end
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 103
      Top = 9
      Width = 139
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'OBJECT_ID'
      DataSource = MainDM.dsPComObj
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
    end
    object dxDBEdit1: TdxDBEdit
      Left = 319
      Top = 9
      Width = 481
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'OBJECT_NAME'
      DataSource = MainDM.dsPComObj
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
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem3: TdxLayoutItem
          Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh'
          Control = dxDBPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object lociKH: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid4'
        ShowCaption = False
        Control = grdKH
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 388
    Top = 136
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
      'Export')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 228
    Top = 124
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton8: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton1Click
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton8
        Visible = True
      end
      item
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
    Left = 264
    Top = 124
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
        Caption = 'Danh s'#225'ch s'#7843'n ph'#7849'm v'#224' th'#244'ng tin v'#7873' gi'#225' th'#224'nh trong th'#225'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 352
    Top = 128
  end
end
