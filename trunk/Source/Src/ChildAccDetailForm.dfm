object ChildAccDetailFrm: TChildAccDetailFrm
  Tag = 30
  Left = 196
  Top = 141
  Width = 638
  Height = 478
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
    Width = 630
    Height = 444
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      630
      444)
    object grdKH: TdxDBGrid
      Left = 5
      Top = 11
      Width = 620
      Height = 129
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' t'#224'i kho'#7843'n'
        end
        item
          Caption = 'S'#7889' d'#432' '#273#7847'u k'#7923
        end
        item
          Caption = 'S'#7889' ph'#225't sinh trong k'#7923
        end
        item
          Caption = 'S'#7889' d'#432' cu'#7889'i k'#7923
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SHTK'
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
      DataSource = dsObjArise
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGridColumn5: TdxDBGridPopupColumn
        Tag = 32
        Caption = 'S'#7889' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupFormBorderStyle = pbsSimple
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Tag = 33
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENTK'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
      end
      object grdKHColumn3: TdxDBGridCalcColumn
        Tag = 34
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NODK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'N+HuM'
      end
      object grdKHColumn4: TdxDBGridCalcColumn
        Tag = 35
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CODK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+APM'
      end
      object grdKHColumn5: TdxDBGridCalcColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NOPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'N+HuM'
      end
      object grdKHColumn6: TdxDBGridCalcColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 2
        RowIndex = 0
        FieldName = 'COPS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+APM'
      end
      object grdKHColumn7: TdxDBGridCalcColumn
        Caption = 'N'#7907
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 3
        RowIndex = 0
        FieldName = 'NOCK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'N+HuM'
      end
      object grdKHColumn8: TdxDBGridCalcColumn
        Caption = 'C'#243
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 3
        RowIndex = 0
        FieldName = 'COCK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+APM'
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
    Left = 256
    Top = 116
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
      Caption = 'Xem ph'#225't sinh chi ti'#7871't'
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
      Hint = 'R'#250't s? du cu?i k? tru?c'
      Visible = ivAlways
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
      end
      item
        BeginGroup = True
        Item = btnRutSodu
        Visible = True
      end>
    UseOwnFont = False
    Left = 284
    Top = 116
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
        Caption = 'S'#7889' chi ti'#7871't ph'#225't sinh c'#225'c t'#224'i kho'#7843'n c'#243' chi ti'#7871't'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryObjArise: TIBOQuery
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
      end
      item
        DataType = ftUnknown
        Name = 'SHTK'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'SHTK')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SHTK, TENTK, NODK, CODK, NOPS, COPS, NOCK, COCK'
      'FROM MACRO_TAIKHOANPS(:PERIOD_ID,:PERIOD_ID,:BRANCH_ID)'
      'where SHTK starting with :SHTK'
      'order by SHTK')
    FieldOptions = []
    Left = 253
    Top = 220
    object qryObjAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryObjAriseTENTK: TWideStringField
      FieldName = 'TENTK'
      Size = 126
    end
    object qryObjAriseNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryObjAriseCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryObjAriseNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryObjAriseCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryObjAriseNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryObjAriseCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
  end
  object dsObjArise: TDataSource
    DataSet = qryObjArise
    Left = 253
    Top = 265
  end
end
