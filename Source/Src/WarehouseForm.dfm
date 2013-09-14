object WarehouseFrm: TWarehouseFrm
  Left = 171
  Top = 197
  HelpContext = 21
  BorderStyle = bsDialog
  ClientHeight = 410
  ClientWidth = 646
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
    Width = 646
    Height = 410
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      646
      410)
    object grdKho: TdxDBGrid
      Left = 5
      Top = 5
      Width = 597
      Height = 368
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WAREHOUSE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyDown = grdKhoKeyDown
      OnMouseUp = grdKhoMouseUp
      DataSource = MainDM.dsWarehouse
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGridCol_ID: TdxDBGridColumn
        Caption = 'M'#227' kho h'#224'ng'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAREHOUSE_ID'
        Caption_UTF7 = 'M+AOM kho h+AOA-ng'
      end
      object dxDBGridCol_Name: TdxDBGridColumn
        Caption = 'T'#234'n kho h'#224'ng'
        HeaderAlignment = taCenter
        Width = 220
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAREHOUSE_NAME'
        Caption_UTF7 = 'T+AOo-n kho h+AOA-ng'
      end
      object dxDBGridCol_Addr: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' kho h'#224'ng'
        HeaderAlignment = taCenter
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAREHOUSE_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk kho h+AOA-ng'
      end
      object grdKhoWAREHOUSE_TYPE: TdxDBGridImageColumn
        Alignment = taCenter
        Caption = 'Lo'#7841'i kho'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAREHOUSE_TYPE'
        Descriptions.WideStrings = (
          'Kho c'#244'ng ty'
          'Kho '#273#7841'i l'#253)
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Lo+HqE-i kho'
      end
      object grdKhoMS_PPXK: TdxDBGridExtLookupColumn
        Alignment = taCenter
        Caption = 'PPXK'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MS_PPXK'
        PopupAutoSize = True
        PopupFormBorderStyle = pbsSimple
        DBGridLayout = dxDBGridLayoutList1Item1
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 382
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 79
      Top = 382
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 165
      Top = 382
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 241
      Top = 382
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 492
      Top = 382
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 568
      Top = 382
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
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
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
        Control = grdKho
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = btnIns
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = btnDel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 164
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
      'Export')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 228
    Top = 68
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
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
      end>
    UseOwnFont = True
    Left = 264
    Top = 68
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'Danh m'#7909'c kho h'#224'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 72
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = MainDM.dsWarehouse
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsWarehouse
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsWarehouse
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsWarehouse
    end
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 558
    Top = 42
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        31050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406074D535F5050584B0D53756D6D
        61727947726F7570730E001053756D6D617279536570617261746F7206022C20
        0C466F6E742E43686172736574070C414E53495F434841525345540A466F6E74
        2E436F6C6F72070C636C57696E646F77546578740B466F6E742E486569676874
        02F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B
        000A506172656E74466F6E74081042616E64466F6E742E43686172736574070F
        44454641554C545F434841525345540E42616E64466F6E742E436F6C6F72070C
        636C57696E646F77546578740F42616E64466F6E742E48656967687402F50D42
        616E64466F6E742E4E616D65060D4D532053616E732053657269660E42616E64
        466F6E742E5374796C650B000A44617461536F75726365070D4D61696E444D2E
        64735050584B1044656661756C74526F7748656967687402140F46696C746572
        2E43726974657269610A040000000000000012486561646572466F6E742E4368
        6172736574070C414E53495F4348415253455410486561646572466F6E742E43
        6F6C6F72070C636C57696E646F775465787411486561646572466F6E742E4865
        6967687402F50F486561646572466F6E742E4E616D6506065461686F6D611048
        6561646572466F6E742E5374796C650B000F4F7074696F6E734265686176696F
        720B0E6564676F4175746F5365617263680E6564676F447261675363726F6C6C
        0B6564676F45646974696E67136564676F456E74657253686F77456469746F72
        136564676F496D6D656469617465456469746F720E6564676F5461625468726F
        7567680F6564676F566572745468726F75676800094F7074696F6E7344420B11
        6564676F43616E4E617669676174696F6E116564676F436F6E6669726D44656C
        657465126564676F4C6F6164416C6C5265636F726473106564676F557365426F
        6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F4175746F5769
        647468136564676F42616E6448656164657257696474680D6564676F55736542
        69746D6170001350726576696577466F6E742E43686172736574070F44454641
        554C545F434841525345541150726576696577466F6E742E436F6C6F72070663
        6C426C75651250726576696577466F6E742E48656967687402F5105072657669
        6577466F6E742E4E616D65060D4D532053616E73205365726966115072657669
        6577466F6E742E5374796C650B0000135464784442477269644D61736B436F6C
        756D6E074D535F5050584B0743617074696F6E14060000004C6FE1BAA1690F48
        6561646572416C69676E6D656E740708746143656E746572055769647468023F
        0942616E64496E646578020008526F77496E6465780200094669656C644E616D
        6506074D535F5050584B0C43617074696F6E5F5554463706084C6F2B4871452D
        690000135464784442477269644D61736B436F6C756D6E0854454E5F5050584B
        0743617074696F6E141E00000054C3AA6E207068C6B0C6A16E67207068C3A170
        207875E1BAA574206B686F0F486561646572416C69676E6D656E740708746143
        656E746572055769647468033F010942616E64496E646578020008526F77496E
        6465780200094669656C644E616D65060854454E5F5050584B0C43617074696F
        6E5F55544637062A542B414F6F2D6E2070682B416241426F512D6E672070682B
        414F452D702078752B4871552D74206B686F000000}
    end
  end
end
