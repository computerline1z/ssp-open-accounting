object EntrysFrm: TEntrysFrm
  Tag = 70
  Left = 58
  Top = 45
  Width = 798
  Height = 570
  HelpContext = 28
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
    Width = 790
    Height = 536
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      790
      536)
    object grdEntrys: TdxDBGrid
      Left = 5
      Top = 5
      Width = 782
      Height = 408
      Bands = <
        item
          Caption = 'S'#232' d'#173' cu'#232'i k'#250
          Width = 184
        end
        item
        end
        item
        end
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 2
      KeyField = 'SOPHIEU'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdEntrysDblClick
      OnKeyDown = grdEntrysKeyDown
      OnMouseUp = grdEntrysMouseUp
      DataSource = MainDM.dsEntrys
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      RowSeparatorLineWidth = 3
      OnCustomDrawCell = grdEntrysCustomDrawCell
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdEntrys_TkNO: TdxDBGridColumn
        Tag = 71
        Caption = '  TK N'#7907
        DisableEditor = True
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        Caption_UTF7 = '  TK N+HuM'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object grdEntrys_Sotien: TdxDBGridCalcColumn
        Caption = 'S'#7889' ti'#7873'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 2
        RowIndex = 1
        HeaderMaxLineCount = 2
        FieldName = 'SOTIEN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE ti+HsE-n'
        StoredRowIndex = 1
      end
      object grdEntrys_SP: TdxDBGridColumn
        Tag = 75
        Caption = 'S'#7889' phi'#7871'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 2
        RowIndex = 0
        FieldName = 'SOPHIEU'
        SummaryFooterFormat = '### ### ### ###'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object grdEntrys_Diengiai: TdxDBGridColumn
        Caption = 'N'#7897'i dung, Ghi ch'#250
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 273
        BandIndex = 3
        RowIndex = 0
        HeaderMaxLineCount = 2
        FieldName = 'NOIDUNG'
        Caption_UTF7 = 'N+Htk-i dung, Ghi ch+APo'
      end
      object grdEntrys_TKCO: TdxDBGridColumn
        Tag = 72
        Alignment = taRightJustify
        Caption = 'TK C'#243
        DisableEditor = True
        HeaderAlignment = taRightJustify
        Width = 111
        BandIndex = 0
        RowIndex = 1
        FieldName = 'TKCO'
        Caption_UTF7 = 'TK C+APM'
        StoredRowIndex = 1
      end
      object grdEntrys_Ngay: TdxDBGridDateColumn
        Caption = 'Ng'#224'y l'#7853'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NGAYLAP'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object grdEntrys_DTNo: TdxDBGridColumn
        Caption = '  '#272#7889'i t'#432#7907'ng n'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TENDTNO'
        Caption_UTF7 = '  +ARAe0Q-i t+AbAe4w-ng n+HuM'
      end
      object grdEntrys_DTCo: TdxDBGridColumn
        Caption = '  '#272#7889'i t'#432#7907'ng c'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 189
        BandIndex = 1
        RowIndex = 1
        FieldName = 'TENDTCO'
        Caption_UTF7 = '  +ARAe0Q-i t+AbAe4w-ng c+APM'
        StoredRowIndex = 1
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
        Control = grdEntrys
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
      Caption = 'Xu'#7845't ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu?t ra t?p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu?t ra t?p tin HTML'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu?t ra t?p tin XML'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object btnDetail: TdxBarButton
      Caption = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      Category = 0
      Hint = 'Xem chi ti?t tr'#234'n phi?u'
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
    object bbtnFileter: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l?c d? li?u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnFileterClick
    end
    object bbtnGrp: TdxBarButton
      Caption = 'Cho ph'#233'p gom nh'#243'm d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p gom nh'#243'm d? li?u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnGrpClick
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
        Item = bbtnFileter
        Visible = True
      end
      item
        Item = bbtnGrp
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
        Caption = 'C'#225'c b'#250't to'#225'n trong k'#7923' (Nh'#7853't k'#253' chung)'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
