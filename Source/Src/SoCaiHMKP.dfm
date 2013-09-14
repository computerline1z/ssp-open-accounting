object SoCaiHMKPFrm: TSoCaiHMKPFrm
  Tag = 70
  Left = 125
  Top = 117
  Width = 888
  Height = 596
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
  WindowState = wsMaximized
  OnCreate = FormCreate
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
          Caption = 'Th'#244'ng tin v'#7873' ch'#7913'ng t'#7915
          Width = 241
        end
        item
          Caption = 'Ph'#225't sinh'
          Width = 225
        end
        item
          Caption = 'TK 1'
          Width = 203
        end
        item
          Caption = 'TK 2'
          Width = 208
        end
        item
          Caption = 'TK 3'
        end
        item
          Caption = 'TK 4'
        end
        item
          Caption = 'TK 5'
        end
        item
          Caption = 'TK 6'
        end
        item
          Caption = 'TK 7'
        end
        item
          Caption = 'TK 8'
        end
        item
          Caption = 'TK 9'
        end
        item
          Caption = 'TK 10'
        end
        item
          Caption = 'TK Kh'#225'c'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SOPHIEU'
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
      DataSource = dsAccountArise
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAccountAriseSOPHIEU: TdxDBGridMaskColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHIEU'
        SummaryFooterType = cstCount
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object grdAccountAriseNGAYLAP: TdxDBGridDateColumn
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYLAP'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object grdAccountAriseDIENGIAI: TdxDBGridMaskColumn
        Caption = 'N'#7897'i dung, di'#7877'n gi'#7843'i'
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIENGIAI'
        Caption_UTF7 = 'N+Htk-i dung, di+HsU-n gi+HqM-i'
      end
      object grdAccountAriseTKNO: TdxDBGridMaskColumn
        Caption = 'TK n'#7907
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TKNO'
        Caption_UTF7 = 'TK n+HuM'
      end
      object grdAccountAriseTKCO: TdxDBGridMaskColumn
        Caption = 'TK c'#243
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TKCO'
        Caption_UTF7 = 'TK c+APM'
      end
      object grdAccountAriseSOTIEN: TdxDBGridMaskColumn
        Caption = 'S'#7889' ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SOTIEN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'S+HtE ti+HsE-n'
      end
      object grdAccountAriseNO_1: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NO_1'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_1: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CO_1'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_2: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 3
        RowIndex = 0
        FieldName = 'NO_2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_2: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CO_2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_3: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 4
        RowIndex = 0
        FieldName = 'NO_3'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_3: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 4
        RowIndex = 0
        FieldName = 'CO_3'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_4: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 5
        RowIndex = 0
        FieldName = 'NO_4'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_4: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 5
        RowIndex = 0
        FieldName = 'CO_4'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_5: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 6
        RowIndex = 0
        FieldName = 'NO_5'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_5: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 6
        RowIndex = 0
        FieldName = 'CO_5'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_6: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 7
        RowIndex = 0
        FieldName = 'NO_6'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_6: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 7
        RowIndex = 0
        FieldName = 'CO_6'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_7: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 8
        RowIndex = 0
        FieldName = 'NO_7'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_7: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 8
        RowIndex = 0
        FieldName = 'CO_7'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_8: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 9
        RowIndex = 0
        FieldName = 'NO_8'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_8: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 9
        RowIndex = 0
        FieldName = 'CO_8'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_9: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 10
        RowIndex = 0
        FieldName = 'NO_9'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_9: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 10
        RowIndex = 0
        FieldName = 'CO_9'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_10: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 11
        RowIndex = 0
        FieldName = 'NO_10'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_10: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 11
        RowIndex = 0
        FieldName = 'CO_10'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
      end
      object grdAccountAriseNO_K: TdxDBGridMaskColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 12
        RowIndex = 0
        FieldName = 'NO_K'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'N+HuM'
      end
      object grdAccountAriseCO_K: TdxDBGridMaskColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 12
        RowIndex = 0
        FieldName = 'CO_K'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+APM'
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
        Caption = 'S'#7893' c'#225'i h'#7841'n m'#7913'c kinh ph'#237
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object dsAccountArise: TDataSource
    DataSet = qryAccountArise
    Left = 417
    Top = 179
  end
  object qryAccountArise: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'TUNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DENNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MANGUON'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'SOPHIEU'
      'KYHT')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select NGAYLAP,SOPHIEU,KYHT,DIENGIAI,TKNO,TKCO,SOTIEN,'
      '    TK_1,TK_2,TK_3,TK_4,TK_5,TK_6,TK_7,TK_8,TK_9,TK_10,'
      '    NO_1,CO_1,NO_2,CO_2,NO_3,CO_3,NO_4,CO_4,NO_5,CO_5,'
      
        '    NO_6,CO_6,NO_7,CO_7,NO_8,CO_8,NO_9,CO_9,NO_10,CO_10,NO_K,CO_' +
        'K,BRANCH_ID'
      'from SP_BC_SOCAI_HCSN(:TUNGAY,:DENNGAY,:MANGUON,:BRANCH_ID)'
      '')
    FieldOptions = []
    Left = 417
    Top = 148
    object qryAccountAriseNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qryAccountAriseSOPHIEU: TWideStringField
      FieldName = 'SOPHIEU'
      Size = 30
    end
    object qryAccountAriseKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryAccountAriseDIENGIAI: TWideStringField
      FieldName = 'DIENGIAI'
      Size = 255
    end
    object qryAccountAriseTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryAccountAriseTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryAccountAriseSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseTK_1: TWideStringField
      FieldName = 'TK_1'
      Size = 15
    end
    object qryAccountAriseTK_2: TWideStringField
      FieldName = 'TK_2'
      Size = 15
    end
    object qryAccountAriseTK_3: TWideStringField
      FieldName = 'TK_3'
      Size = 15
    end
    object qryAccountAriseTK_4: TWideStringField
      FieldName = 'TK_4'
      Size = 15
    end
    object qryAccountAriseTK_5: TWideStringField
      FieldName = 'TK_5'
      Size = 15
    end
    object qryAccountAriseTK_6: TWideStringField
      FieldName = 'TK_6'
      Size = 15
    end
    object qryAccountAriseTK_7: TWideStringField
      FieldName = 'TK_7'
      Size = 15
    end
    object qryAccountAriseTK_8: TWideStringField
      FieldName = 'TK_8'
      Size = 15
    end
    object qryAccountAriseTK_9: TWideStringField
      FieldName = 'TK_9'
      Size = 15
    end
    object qryAccountAriseTK_10: TWideStringField
      FieldName = 'TK_10'
      Size = 15
    end
    object qryAccountAriseNO_1: TIBOFloatField
      FieldName = 'NO_1'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_1: TIBOFloatField
      FieldName = 'CO_1'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_2: TIBOFloatField
      FieldName = 'NO_2'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_2: TIBOFloatField
      FieldName = 'CO_2'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_3: TIBOFloatField
      FieldName = 'NO_3'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_3: TIBOFloatField
      FieldName = 'CO_3'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_4: TIBOFloatField
      FieldName = 'NO_4'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_4: TIBOFloatField
      FieldName = 'CO_4'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_5: TIBOFloatField
      FieldName = 'NO_5'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_5: TIBOFloatField
      FieldName = 'CO_5'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_6: TIBOFloatField
      FieldName = 'NO_6'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_6: TIBOFloatField
      FieldName = 'CO_6'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_7: TIBOFloatField
      FieldName = 'NO_7'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_7: TIBOFloatField
      FieldName = 'CO_7'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_8: TIBOFloatField
      FieldName = 'NO_8'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_8: TIBOFloatField
      FieldName = 'CO_8'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_9: TIBOFloatField
      FieldName = 'NO_9'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_9: TIBOFloatField
      FieldName = 'CO_9'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_10: TIBOFloatField
      FieldName = 'NO_10'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_10: TIBOFloatField
      FieldName = 'CO_10'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseNO_K: TIBOFloatField
      FieldName = 'NO_K'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseCO_K: TIBOFloatField
      FieldName = 'CO_K'
      DisplayFormat = '#,0;-#,0'
    end
    object qryAccountAriseBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
  end
end
