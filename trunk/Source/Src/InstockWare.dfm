object InstockWareFrm: TInstockWareFrm
  Left = 88
  Top = 153
  Width = 805
  Height = 540
  HelpContext = 30
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
    Width = 797
    Height = 506
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      797
      506)
    object grdKH: TdxDBGrid
      Left = 5
      Top = 11
      Width = 669
      Height = 122
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' h'#224'ng ho'#225' v'#7853't t'#432
          Width = 230
        end
        item
          Caption = 'Th'#244'ng tin '#273#7847'u k'#7923
          Width = 153
        end
        item
          Caption = 'Nh'#7853'p trong k'#7923
          Width = 132
        end
        item
          Caption = 'Xu'#7845't trong k'#7923
          Width = 131
        end
        item
          Caption = 'T'#7891'n cu'#7889'i k'#7923
          Width = 129
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'MAHH'
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
      DataSource = dsInOut
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHMAKHO: TdxDBGridMaskColumn
        Caption = 'Kho h'#224'ng'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAKHO'
        Caption_UTF7 = 'Kho h+AOA-ng'
      end
      object grdKHMAHHH: TdxDBGridPopupColumn
        Caption = 'M'#227' h'#224'ng'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAHH'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupFormBorderStyle = pbsSimple
        Caption_UTF7 = 'M+AOM h+AOA-ng'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object grdKHTENHH: TdxDBGridColumn
        Caption = 'T'#234'n h'#224'ng ho'#225' v'#7853't t'#432
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 158
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENHH'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng ho+AOE v+Hq0-t t+AbA'
      end
      object grdKHSHTK: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
      end
      object grdColSLDK: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SLDAUKY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdColGTDK: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 1
        RowIndex = 0
        FieldName = 'GTDAUKY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdColSLNhap: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 2
        RowIndex = 0
        FieldName = 'SLNHAP'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdColGTNhap: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 2
        RowIndex = 0
        FieldName = 'GTNHAP'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdColSLXuat: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SLXUAT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdColGTXuat: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        BandIndex = 3
        RowIndex = 0
        FieldName = 'GTXUAT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdColSLTon: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 4
        RowIndex = 0
        FieldName = 'SLTon'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdColGTTon: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        BandIndex = 4
        RowIndex = 0
        FieldName = 'GTTON'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
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
      Caption = 'Xem chi ti'#7871't nh'#7853'p xu'#7845't'
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
    object bbtnFilter: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l?c d? li?u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnFilterClick
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
        Item = bbtnFilter
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
        Caption = 'T'#236'nh h'#236'nh nh'#7853'p xu'#7845't t'#7891'n trong k'#7923' c'#7911'a'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryInOut: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'MAHH'
      'MAKHO'
      'SHTK')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT MAHH,TENHH,SLDAUKY,GTDAUKY,SLNHAP,GTNHAP,SLXUAT,GTXUAT,SL' +
        'TON,GTTON,MAKHO,SHTK'
      'FROM MACRO_HANGHOAPS(:PERIOD_ID,:PERIOD_ID,:BRANCH_ID) '
      '')
    FieldOptions = []
    Left = 40
    Top = 76
    object qryInOutMAHH: TWideStringField
      FieldName = 'MAHH'
      Size = 30
    end
    object qryInOutTENHH: TWideStringField
      FieldName = 'TENHH'
      Size = 126
    end
    object qryInOutMAKHO: TWideStringField
      FieldName = 'MAKHO'
      Size = 15
    end
    object qryInOutSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryInOutSLDAUKY: TIBOFloatField
      FieldName = 'SLDAUKY'
    end
    object qryInOutGTDAUKY: TIBOFloatField
      FieldName = 'GTDAUKY'
    end
    object qryInOutSLNHAP: TIBOFloatField
      FieldName = 'SLNHAP'
    end
    object qryInOutGTNHAP: TIBOFloatField
      FieldName = 'GTNHAP'
    end
    object qryInOutSLXUAT: TIBOFloatField
      FieldName = 'SLXUAT'
    end
    object qryInOutGTXUAT: TIBOFloatField
      FieldName = 'GTXUAT'
    end
    object qryInOutSLTON: TIBOFloatField
      FieldName = 'SLTON'
    end
    object qryInOutGTTON: TIBOFloatField
      FieldName = 'GTTON'
    end
  end
  object dsInOut: TDataSource
    DataSet = qryInOut
    Left = 40
    Top = 119
  end
end
