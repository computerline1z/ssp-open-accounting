object AccountAriseFrm: TAccountAriseFrm
  Tag = 70
  Left = 48
  Top = 72
  Width = 888
  Height = 596
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
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 880
    Height = 562
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      880
      562)
    object grdAccountArise: TdxDBGrid
      Left = 5
      Top = 5
      Width = 782
      Height = 408
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' t'#224'i kho'#7843'n'
          Fixed = bfLeft
          Width = 241
        end
        item
          Caption = 'S'#7889' d'#432' '#273#7847'u k'#7923
          Width = 206
        end
        item
          Caption = 'S'#7889' ph'#225't sinh trong k'#7923
          Width = 203
        end
        item
          Caption = 'S'#7889' d'#432' cu'#7889'i k'#7923
          Width = 208
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SHTK'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdAccountAriseDblClick
      OnKeyDown = grdAccountAriseKeyDown
      OnMouseUp = grdAccountAriseMouseUp
      DataSource = MainDM.dsAccountArise
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      OnChangeNode = grdAccountAriseChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAccountAriseUnit_ID: TdxDBGridColumn
        Tag = 71
        Caption = 'S'#7889' hi'#7879'u'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object grdAccountAriseColumn8: TdxDBGridColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENTK'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
      end
      object grdAccountAriseNODK: TdxDBGridCalcColumn
        Caption = 'N'#7907' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NODK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'N+HuM +AREepw-u k+HvM'
      end
      object grdAccountAriseNOPS: TdxDBGridCalcColumn
        Caption = 'N'#7907' ph'#225't sinh'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NOPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'N+HuM ph+AOE-t sinh'
      end
      object grdAccountAriseCODK: TdxDBGridCalcColumn
        Caption = 'C'#243' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CODK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+APM +AREepw-u k+HvM'
      end
      object grdAccountAriseNOCK: TdxDBGridCalcColumn
        Caption = 'N'#7907' cu'#7889'i k'#7923
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 3
        RowIndex = 0
        FieldName = 'NOCK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'N+HuM cu+HtE-i k+HvM'
      end
      object grdAccountAriseCOPS: TdxDBGridCalcColumn
        Caption = 'C'#243' ph'#225't sinh'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 2
        RowIndex = 0
        FieldName = 'COPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+APM ph+AOE-t sinh'
      end
      object grdAccountAriseCOCK: TdxDBGridCalcColumn
        Caption = 'C'#243' cu'#7889'i k'#7923
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 3
        RowIndex = 0
        FieldName = 'COCK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+APM cu+HtE-i k+HvM'
      end
      object grdAccountAriseTENTA: TdxDBGridColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n (TA)'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'tenta'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n (TA)'
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = grdAccountArise
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 64
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
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
      Hint = 'C?p nh?t s? m?i nh?t'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object btnRutSodu: TdxBarButton
      Caption = 'R'#250't s'#7889' d'#432' cu'#7889'i k'#7923' tr'#432#7899'c'
      Category = 0
      Hint = 
        'T'#237'nh l'#7841'i s'#7889' d'#432' '#273#7847'u k'#7923' c'#7911'a t'#7845't c'#7843' c'#225'c t'#224'i kho'#7843'n c'#243' chi ti'#7871't 131,3' +
        '31, 152,156...'
      Visible = ivAlways
      OnClick = btnRutSoduClick
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
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
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnRutSodu
        Visible = True
      end>
    UseOwnFont = False
    Left = 300
    Top = 132
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
        Caption = 'T'#236'nh h'#236'nh ph'#225't sinh c'#7911'a t'#7845't c'#7843' ti'#7875'u kho'#7843'n trong k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
