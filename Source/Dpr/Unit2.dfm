object Form2: TForm2
  Left = 310
  Top = 236
  Width = 696
  Height = 480
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      688
      446)
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
      KeyField = 'ACTICLE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      DataSource = dsItem
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKhoACTICLE_ID: TdxDBGridMaskColumn
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_ID'
      end
      object grdKhoPACTICLE_ID: TdxDBGridMaskColumn
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PACTICLE_ID'
      end
      object grdKhoACTICLE_NO: TdxDBGridMaskColumn
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NO'
      end
      object grdKhoACTICLE_NAME: TdxDBGridMaskColumn
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NAME'
      end
      object grdKhoPLAN_MAX: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_MAX'
      end
      object grdKhoPLAN_MIN: TdxDBGridMaskColumn
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_MIN'
      end
      object grdKhoBRANCH_ID: TdxDBGridMaskColumn
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
      end
      object grdKhoPLAN_BEGIN: TdxDBGridMaskColumn
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_BEGIN'
      end
      object grdKhoPLAN_ADJUST: TdxDBGridMaskColumn
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_ADJUST'
      end
      object grdKhoKYHT: TdxDBGridMaskColumn
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYHT'
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 418
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
      Top = 418
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
      Top = 418
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
      Top = 418
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
      Left = 534
      Top = 418
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 610
      Top = 418
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
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = grdKho
      end
      object dxLayoutGroup2: TdxLayoutGroup
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
  object qryItem: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'KYHT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\AOANH.GDB'
    EditSQL.Strings = (
      
        'execute procedure SP_ACTICLE_PLAN(:ACTICLE_ID,:KYHT,:PLAN_MAX,:P' +
        'LAN_MIN,:PLAN_BEGIN,:PLAN_ADJUST,:BRANCH_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID'
      'KYHT'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACTICLE_ID'
      '     , PACTICLE_ID'
      '     , ACTICLE_NO'
      '     , ACTICLE_NAME'
      '     , PLAN_BEGIN'
      '     , PLAN_ADJUST'
      '     , BRANCH_ID'
      '     , PLAN_MAX'
      '     , PLAN_MIN'
      '     , KYHT'
      'FROM SP_GET_ACTICLE_PLAN(:KYHT,:BRANCH_ID)'
      'order by ACTICLE_ID')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryItemACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryItemPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryItemACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryItemACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryItemPLAN_MAX: TIBOFloatField
      FieldName = 'PLAN_MAX'
    end
    object qryItemPLAN_MIN: TIBOFloatField
      FieldName = 'PLAN_MIN'
    end
    object qryItemBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
    object qryItemPLAN_BEGIN: TIBOFloatField
      FieldName = 'PLAN_BEGIN'
    end
    object qryItemPLAN_ADJUST: TIBOFloatField
      FieldName = 'PLAN_ADJUST'
    end
    object qryItemKYHT: TSmallintField
      FieldName = 'KYHT'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 158
    Top = 140
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
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
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
