object CCDCFrm: TCCDCFrm
  Left = 262
  Top = 258
  Width = 696
  Height = 480
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnIns: TElPopupButton
      Left = 1
      Top = 420
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
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnEdit: TElPopupButton
      Left = 153
      Top = 420
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xe&m'
      TabOrder = 3
      OnClick = btnEditClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 77
      Top = 420
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
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHelp: TElPopupButton
      Left = 536
      Top = 420
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000FF262525FF494949FF494848FF2626
        25FF000000FF0000000000000000000000000000000000000000000000000000
        000000000000000000FF767472FFEBEAE8FFEBEAE9FFE2E4E5FFE5E5E6FFEDEB
        EBFFEEEDEDFF777777FF000000FF000000000000000000000000000000000000
        0000000000FFD7D4D4FFE1E0DFFFCDC7C8FFDED3D6FFE4C4BCFFD5C3BFFFE7E1
        E3FFCEC8C9FFE4E4E4FFDBD9D8FF000000FF0000000000000000000000000000
        00FFD9D7D5FFD4D1D2FFE4D9DCFFF6EDF4FFFDDBD1FFFF9366FFF38B64FFF7FF
        FFFFFFFFFFFFEAE1E4FFD5D6D2FFDEDDDAFF000000FF00000000000000007473
        72FFE1DFDFFFE4D9DEFFF5E9EEFFF3E9EDFFF4E0DEFFF1926CFFF7D0C4FFF4EE
        F3FFF7EEF0FFFFFFFFFFEBE4E8FFE5E2DFFF767575FF00000000000000FFEDEB
        EBFFCEC8C9FFF8ECEFFFF3E9EAFFF2EBEFFFF4E5E5FFFBB496FFDDC8C6FFF7F1
        F5FFF6EFF1FFF8F0F3FFFFFFFFFFD2CFD0FFF0EEEAFF000000FF252424FFECEC
        EAFFE4DADCFFF4EBEEFFF4E9EDFFF3ECF1FFF9DFD7FFFF7B41FFE5A48CFFFBFD
        FFFFF8F0F4FFF7F2F4FFFDFAFBFFE9E6E7FFEDEBE7FF262626FF4A4848FFE0E0
        E0FFF5EEF1FFF5EBEFFFF4ECEDFFF6EDEFFFF5F0F4FFFF793DFFF56F33FFDCE5
        EDFFFDFCFFFFF8F3F5FFFAF6F7FFF9F7F9FFE3E0DDFF4B494AFF494A4AFFE2E1
        E1FFF5F0F2FFF8F1F3FFF5EBEFFFF7EFF0FFF6F9FFFFFAB89CFFFF5B0DFFF46A
        28FFDCDDE0FFFDFBFEFFFBF7F9FFF9F7F8FFE1E1DFFF494A48FF262625FFECED
        EDFFE6E0E2FFFFFEFDFFF5EDEFFFF6F1F3FFF8F2F6FFF8FFFFFFFAB696FFFF54
        02FFEE621BFFF3FFFFFFFFFBFCFFEAE9E9FFEBE8E8FF252525FF000000FFF0EF
        EFFFD1CDCEFFFFFFFFFFF9F7F8FFF7F4F9FFEAF3FAFFFCFDFFFFFAFFFFFFFD93
        5FFFFF610FFFE9E9ECFFFFFFFFFFD2D1D0FFEEECEBFF000000FF000000007676
        76FFE4E5E4FFEBE7E8FFFFFFFFFFFBD5C3FFF37F3FFFDAC0B2FFE8DEDBFFFF89
        4BFFFC8549FFF8FBFDFFF0F1F2FFE1DFDEFF747170FF00000000000000000000
        00FFDCDCDCFFD7D6D6FFECF0F3FFFFD9C1FFFA3200FFFC4100FFFD5E11FFFC88
        50FFFFD8C1FFF1F6FAFFD3D1D1FFD8D6D5FF000000FF00000000000000000000
        0000000000FFDADBDBFFE2E2E2FFD3DBDFFFE9E0DCFFF9DAC8FFF9DFD1FFE9D9
        D1FFD3DADFFFE0DDDCFFD8D5D5FF000000FF0000000000000000000000000000
        000000000000000000FF797977FFEDECECFFEBECEEFFE1E3E6FFE0E3E4FFEAEA
        EAFFEBE8E7FF757473FF000000FF000000000000000000000000000000000000
        0000000000000000000000000000000000FF242525FF4B4A48FF494849FF2524
        24FF000000FF0000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 612
      Top = 420
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
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
      KeyField = 'OBJECT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'dxDBGrid1ORIGIN_COST'
              SummaryField = 'NGUYENGIA'
              SummaryFormat = '### ### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'dxDBGrid1Column8'
              SummaryField = 'GTCL'
              SummaryFormat = '### ### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'dxDBGrid1Column9'
              SummaryField = 'AMOR_VALUE'
              SummaryFormat = '### ### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'dxDBGrid1ASSET_ID'
              SummaryField = 'ASSET_ID'
              SummaryFormat = '#,0 T'#224'i s'#224'n'
              SummaryType = cstCount
            end>
          Name = 'dxDBGrid1SummaryGroup2'
        end>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      DataSource = MainDM.dsCCDC
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowRowFooter = True
      object dxDBGrid1ASSET_ID: TdxDBGridColumn
        Caption = 'S'#7889' hi'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 T'#224'i s'#7843'n'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
        SummaryFooterFormat_UTF7 = '#,0 T+AOA-i s+HqM-n'
      end
      object dxDBGrid1GROUP_ID: TdxDBGridColumn
        Caption = 'Nh'#243'm t'#224'i s'#7843'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_ID'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+APM-m t+AOA-i s+HqM-n'
      end
      object dxDBGrid1ACCOUNT_ID: TdxDBGridColumn
        Caption = 'SHTK'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
      end
      object dxDBGrid1ASSET_NAME: TdxDBGridColumn
        Caption = 'T'#234'n t'#224'i s'#7843'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i s+HqM-n'
      end
      object dxDBGrid1ORIGIN_COST: TdxDBGridColumn
        Caption = 'Nguy'#234'n gi'#225
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGUYENGIA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Nguy+AOo-n gi+AOE'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = 'GT C'#242'n l'#7841'i'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTCL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ###'
        Caption_UTF7 = 'GT C+API-n l+HqE-i'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = 'M'#7913'c KH'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AMOR_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ###'
        Caption_UTF7 = 'M+Huk-c KH'
      end
      object dxDBGrid1USING_PART: TdxDBGridColumn
        Caption = 'B'#7897' ph'#7853'n SD'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_NAME'
        Caption_UTF7 = 'B+Htk ph+Hq0-n SD'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = 'TKKH'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AMORTISE_ACC'
      end
      object dxDBGrid1Column11: TdxDBGridColumn
        Caption = 'TKPB'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALLOCATE_ACC'
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Caption = 'PTKH'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AMOR_PERCENT'
      end
      object dxDBGrid1ASSET_NOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 205
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'OBJECT_NOTES'
        DisableFilter = True
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Caption = 'TGSD'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USING_LIFE'
      end
      object dxDBGrid1Column14: TdxDBGridColumn
        Caption = 'HM L'#361'y k'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAOMON'
        Caption_UTF7 = 'HM L+AWk-y k+Hr8'
      end
      object dxDBGrid1Column15: TdxDBGridColumn
        Caption = #272'TPB'
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'useobject_id'
        Caption_UTF7 = '+ARA-TPB'
      end
    end
    object chkAutoHeight: TdxCheckEdit
      Left = 259
      Top = 424
      Width = 146
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Caption = 'Chi'#7873'u c&ao t'#7921' '#273#7897'ng'
    end
    object btnRefresh: TElPopupButton
      Left = 229
      Top = 420
      Width = 29
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000000000000000
        0000000000000000000075170075170075170000000000000000000000000000
        00000000000000000000000000000000000000000000007517007E203ACD7000
        7517000000000000000000000000000000000000000000000000000000000000
        00751700751704953546E4815DF5970075170075170075170075170000000000
        00000000000000000000000000007517007D1E1BBA5548F28A52F3915DF59729
        B65B2EB75E189F45007E21007517007517000000000000000000000000007517
        0CAB443FF08448F28A52F3915DF59758E78D71F9A47CFBAB7CF3A847C271007E
        22007517000000000000000000000000007517069C3943EA8452F3915DF59700
        7517007517007E211CA04752CB7C79E59F007E22007517000000000000000000
        000000007517007E1F33CC6B5DF5970075170000000000000000000075170C90
        373BB363007517000000000000000000000000000000000000007517109E4000
        7517000000007517007517000000000000007517007517000000000000000000
        007517007517000000000000007517007517000000007517119E400075170000
        000000000000000000000000000000000075173CB3640D903700751700000000
        00000000000075175FF59935CD6D007E1F007517000000000000000000000000
        007517007E237BE6A153CB7D1DA048007E210075170075175FF59956F49345EA
        85079C3A007517000000000000000000000000007517007E2248C2727EF4AA7E
        FBAD73F9A75AE78F5FF59956F4934CF28C41F1860DAB45007517000000000000
        000000000000007517007517007E21199F462FB75E2BB65B5FF59956F4934CF2
        8C1CBA56007D1E00751700000000000000000000000000000000000000751700
        75170075170075175FF59948E484049535007517007517000000000000000000
        0000000000000000000000000000000000000000000075173BCE71007E200075
        1700000000000000000000000000000000000000000000000000000000000000
        0000000000007517007517007517000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabStop = False
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
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
        Offsets.Bottom = 2
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object lciIns: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object lciDel: TdxLayoutItem
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object lciEdit: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnEdit
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          ShowCaption = False
          Control = btnRefresh
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'dxCheckEdit4'
          ShowCaption = False
          Control = chkAutoHeight
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
    Left = 368
    Top = 132
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
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
      'Default'
      'Export')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
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
      Action = acExcel
      Caption = 'Xu'#7845't ra t'#7853'p tin Excel'
      Category = 1
      Hint = 'Xu?t ra t?p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
    end
    object dxBarButton9: TdxBarButton
      Action = acHTML
      Caption = 'Xu'#7845't ra t'#7853'p tin HTML'
      Category = 1
      Hint = 'Xu?t ra t?p tin HTML'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Action = acXML
      Caption = 'Xu'#7845't ra t'#7853'p tin XML'
      Category = 1
      Hint = 'Xu?t ra t?p tin XML'
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Action = acGenAmor
      Caption = 'Ph'#225't sinh m'#7913'c kh'#7845'u hao cho t'#7845't c'#7843' t'#224'i s'#7843'n'
      Category = 0
      Hint = 'Ph'#225't sinh m?c kh?u hao'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Xem l'#7883'ch s'#7917' t'#224'i s'#7843'n n'#224'y'
      Category = 0
      Hint = 'Xem l?ch s? t'#224'i s?n'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Ph'#225't sinh cho t'#224'i s'#7843'n ch'#432'a c'#243' m'#7913'c kh'#7845'u hao'
      Category = 0
      Hint = 'Ph'#225't sinh m?c kh?u hao cho t'#224'i s?n chua c'#243' m?c kh?u hao'
      Visible = ivAlways
    end
    object bbtnReadExcel: TdxBarButton
      Caption = #272#7885'c d'#7919' li'#7879'u c'#243' s'#7859'n t'#7915' Excel'
      Category = 0
      Hint = #272#7885'c d'#7919' li'#7879'u c'#243' s'#7859'n t'#7915' Excel'
      Visible = ivAlways
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
        Item = dxBarButton11
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnReadExcel
        Visible = True
      end>
    UseOwnFont = False
    Left = 264
    Top = 68
  end
  object ActionList1: TActionList
    Left = 312
    Top = 68
    object acExcel: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra t'#203'p tin Excel'
    end
    object acHTML: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra t'#203'p tin HTML'
    end
    object acXML: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra t'#203'p tin XML'
    end
    object acGenAmor: TAction
      Category = 'Export'
      Caption = 'Ph'#184't sinh m'#248'c kh'#202'u hao'
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = MainDM.dsCCDC
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
        Caption = 'Danh s'#225'ch c'#244'ng c'#7909' d'#7909'ng c'#7909
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
