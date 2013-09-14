object AccDetailAriseNTFrm: TAccDetailAriseNTFrm
  Tag = 30
  Left = 148
  Top = 99
  Width = 638
  Height = 428
  HelpContext = 29
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
    Width = 630
    Height = 394
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      630
      394)
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 89
      Top = 3
      Width = 143
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'ACCOUNT_ID'
      DataSource = MainDM.dsPAcc
      HideEditCursor = True
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit1CloseUp
      OnInitPopup = dxDBPopupEdit1InitPopup
    end
    object dxDBEdit1: TdxDBEdit
      Left = 238
      Top = 3
      Width = 216
      Cursor = crIBeam
      Color = clInfoBk
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 3
      DataField = 'ACCOUNT_NAME'
      DataSource = MainDM.dsPAcc
      ReadOnly = True
      StoredValues = 64
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 32
      Width = 620
      Height = 129
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' '#273#7889'i t'#432#7907'ng'
          Fixed = bfLeft
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
      KeyField = 'MADT'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGridColumn5: TdxDBGridPopupColumn
        Tag = 32
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MADT'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupFormBorderStyle = pbsSimple
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Tag = 33
        Caption = 'T'#234'n '#273#7847'y '#273#7911
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDT'
        Caption_UTF7 = 'T+AOo-n +AREepw-y +AREe5w'
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
        SummaryFooterFormat = '#,0.##;-#,0.##'
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
        SummaryFooterFormat = '#,0.##;-#,0.##'
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
    object dxDBPopupEdit2: TdxDBPopupEdit
      Left = 506
      Top = 3
      Width = 121
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'CURRENCY_ID'
      DataSource = MainDM.dsPCurrency
      PopupControl = PopupFrm.grdNgoaite
      PopupFormBorderStyle = pbsSimple
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
        object locFormItem9: TdxLayoutItem
          Tag = 31
          Caption = 'S'#7889' hi'#7879'u t'#224'i kho'#7843'n'
          Control = dxDBPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'Ngo'#7841'i t'#7879' '
          Control = dxDBPopupEdit2
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
    object btnRutSodu: TdxBarButton
      Caption = 'R'#250't s'#7889' d'#432' cu'#7889'i k'#7923' tr'#432#7899'c'
      Category = 0
      Hint = 'R'#250't s? du cu?i k? tru?c'
      Visible = ivAlways
      OnClick = btnRutSoduClick
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
        Caption = 'S'#7889' chi ti'#7871't ph'#225't sinh c'#225'c t'#224'i kho'#7843'n c'#243' chi ti'#7871't theo ngo'#7841'i t'#7879
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
        Name = 'period_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'madt'
      'loaidt'
      'shtk'
      'mant')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnFilterRecord = qryBalAriseFilterRecord
    SQL.Strings = (
      
        'select cock,codk,cops,dckh,loaidt,madt,mant,nock,nodk,nops,shtk,' +
        'tendt '
      'from macro_doituongps_nt(:period_id,:period_id,:branch_id)'
      'order by madt')
    FieldOptions = []
    Left = 297
    Top = 240
    object qryBalAriseDCKH: TWideStringField
      FieldName = 'DCKH'
      Size = 126
    end
    object qryBalAriseLOAIDT: TSmallintField
      FieldName = 'LOAIDT'
    end
    object qryBalAriseMADT: TWideStringField
      FieldName = 'MADT'
      Size = 30
    end
    object qryBalAriseMANT: TWideStringField
      FieldName = 'MANT'
      Size = 6
    end
    object qryBalAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryBalAriseTENDT: TWideStringField
      FieldName = 'TENDT'
      Size = 126
    end
    object qryBalAriseCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
    object qryBalAriseCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryBalAriseCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryBalAriseNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryBalAriseNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryBalAriseNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
  end
  object dsBalArise: TDataSource
    DataSet = qryBalArise
    Left = 297
    Top = 281
  end
end
