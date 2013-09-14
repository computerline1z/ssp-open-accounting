object AssetAriseFrm: TAssetAriseFrm
  Tag = 70
  Left = 126
  Top = 107
  Width = 798
  Height = 570
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
    object grdAccountArise: TdxDBGrid
      Left = 5
      Top = 5
      Width = 782
      Height = 408
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' t'#224'i s'#7843'n'
          Fixed = bfLeft
          Width = 161
        end
        item
          Caption = #272#7847'u k'#7923
          Width = 232
        end
        item
          Caption = 'Trong k'#7923
          Width = 232
        end
        item
          Caption = 'Cu'#7889'i k'#7923
          Width = 201
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SHTS'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'grdAccountAriseUnit_ID'
              SummaryField = 'SHTS'
              SummaryFormat = '#,0 T'#224'i s'#7843'n'
              SummaryType = cstCount
            end
            item
              ColumnName = 'grdAccountAriseNGDK'
              SummaryField = 'NG_DK'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseHMDK'
              SummaryField = 'HM_DK'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseCLDK'
              SummaryField = 'CL_DK'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseTANG'
              SummaryField = 'TANG_KY'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseGIAM'
              SummaryField = 'GIAM_KY'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseHMKY'
              SummaryField = 'HM_KY'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseNGCK'
              SummaryField = 'NG_CK'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseHMCK'
              SummaryField = 'HM_CK'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAccountAriseCLCK'
              SummaryField = 'CL_CK'
              SummaryFormat = '### ### ### ###'
              SummaryType = cstSum
            end>
          Name = 'grdAccountAriseSummaryGroup2'
        end>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdAccountAriseDblClick
      OnKeyDown = grdAccountAriseKeyDown
      OnMouseUp = grdAccountAriseMouseUp
      DataSource = dsAssetArise
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
      ShowBands = True
      ShowRowFooter = True
      OnChangeNode = grdAccountAriseChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAccountAriseUnit_ID: TdxDBGridColumn
        Tag = 71
        Caption = 'S'#7889' hi'#7879'u'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTS'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 T'#224'i s'#7843'n'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
        SummaryFooterFormat_UTF7 = '#,0 T+AOA-i s+HqM-n'
      end
      object grdAccountAriseUnit_Name: TdxDBGridColumn
        Caption = 'T'#234'n t'#224'i s'#7843'n'
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENTS'
        Caption_UTF7 = 'T+AOo-n t+AOA-i s+HqM-n'
      end
      object grdAccountAriseNGDK: TdxDBGridCalcColumn
        Caption = 'Nguy'#234'n gi'#225
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NG_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Nguy+AOo-n gi+AOE'
      end
      object grdAccountAriseHMDK: TdxDBGridCalcColumn
        Caption = 'Hao m'#242'n'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 1
        RowIndex = 0
        FieldName = 'HM_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Hao m+API-n'
      end
      object grdAccountAriseTANG: TdxDBGridCalcColumn
        Caption = 'T'#259'ng'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 2
        RowIndex = 0
        FieldName = 'TANG_KY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'T+AQM-ng'
      end
      object grdAccountAriseCLDK: TdxDBGridCalcColumn
        Caption = 'C'#242'n l'#7841'i'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CL_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+API-n l+HqE-i'
      end
      object grdAccountAriseGIAM: TdxDBGridCalcColumn
        Caption = 'Gi'#7843'm'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 2
        RowIndex = 0
        FieldName = 'GIAM_KY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Gi+HqM-m'
      end
      object grdAccountAriseNGCK: TdxDBGridCalcColumn
        Caption = 'Nguy'#234'n gi'#225
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 3
        RowIndex = 0
        FieldName = 'NG_CK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Nguy+AOo-n gi+AOE'
      end
      object grdAccountAriseHMKY: TdxDBGridCalcColumn
        Caption = 'Hao m'#242'n'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 2
        RowIndex = 0
        FieldName = 'HM_KY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Hao m+API-n'
      end
      object grdAccountAriseHMCK: TdxDBGridCalcColumn
        Caption = 'Hao m'#242'n'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 3
        RowIndex = 0
        FieldName = 'HM_CK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Hao m+API-n'
      end
      object grdAccountAriseNHOM: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENNHOM'
        GroupIndex = 0
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
      object grdAccountAriseCLCK: TdxDBGridCalcColumn
        Caption = 'C'#242'n l'#7841'i'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CL_CK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+API-n l+HqE-i'
      end
      object grdAccountAriseGC: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdAccountAriseSHTK: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
      end
      object grdAccountAriseTKPB: TdxDBGridColumn
        Caption = 'TK PB'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTKPB'
      end
      object grdAccountAriseBPSD: TdxDBGridColumn
        Caption = 'B'#7897' ph'#7853'n s'#7917' d'#7909'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BPSD'
        Caption_UTF7 = 'B+Htk ph+Hq0-n s+Hu0 d+HuU-ng'
      end
      object grdAccountAriseOBRANCH_ID: TdxDBGridMaskColumn
        Caption = 'BP s'#7917' d'#7909'ng'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBRANCH_ID'
        Caption_UTF7 = 'BP s+Hu0 d+HuU-ng'
      end
    end
    object TntRadioButton1: TElRadioButton
      Left = 3
      Top = 516
      Width = 52
      Height = 17
      Cursor = crDefault
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = '&T'#7845't c'#7843
      TabOrder = 1
      OnClick = TntRadioButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntRadioButton2: TElRadioButton
      Left = 196
      Top = 516
      Width = 89
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'T'#259'ng tr&ong k'#7923
      TabOrder = 4
      OnClick = TntRadioButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntRadioButton3: TElRadioButton
      Left = 286
      Top = 516
      Width = 88
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = '&Gi'#7843'm trong k'#7923
      TabOrder = 5
      OnClick = TntRadioButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntRadioButton4: TElRadioButton
      Left = 464
      Top = 516
      Width = 86
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'H'#7871't &kh'#7845'u hao'
      TabOrder = 7
      OnClick = TntRadioButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntRadioButton5: TElRadioButton
      Left = 56
      Top = 516
      Width = 75
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ch'#432'a &x'#7917' l'#253
      TabOrder = 2
      OnClick = TntRadioButton5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntRadioButton6: TElRadioButton
      Left = 375
      Top = 516
      Width = 88
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'C'#242'&n kh'#7845'u hao'
      TabOrder = 6
      OnClick = TntRadioButton6Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntRadioButton7: TElRadioButton
      Left = 132
      Top = 516
      Width = 63
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = #272#227' x'#7917' &l'#253
      TabOrder = 3
      OnClick = TntRadioButton7Click
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
        Control = grdAccountArise
      end
      object locFormGroup1: TdxLayoutGroup
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          Caption = 'TntRadioButton1'
          ShowCaption = False
          Control = TntRadioButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          ShowCaption = False
          Control = TntRadioButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          Caption = 'TntRadioButton7'
          ShowCaption = False
          Control = TntRadioButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = 'TntRadioButton2'
          ShowCaption = False
          Control = TntRadioButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'TntRadioButton3'
          ShowCaption = False
          Control = TntRadioButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          Caption = 'TntRadioButton6'
          ShowCaption = False
          Control = TntRadioButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Caption = 'TntRadioButton4'
          ShowCaption = False
          Control = TntRadioButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
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
      Caption = '&Excel'
      Category = 0
      Hint = 'Xu?t ra Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = '&HTML (Web File)'
      Category = 0
      Hint = 'Xu?t ra HTML'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = '&XML'
      Category = 0
      Hint = 'Xu?t ra XML'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object btnDetail: TdxBarButton
      Caption = 'Xem chi ti'#7871't ph'#225't sinh'
      Category = 0
      Hint = 'Xem chi ti'#7871't ph'#225't sinh'
      Visible = ivAlways
      OnClick = btnDetailClick
    end
    object btnShowDetail: TdxBarButton
      Caption = 'C'#225'c th'#244'ng tin kh'#225'c t'#224'i s'#7843'n'
      Category = 0
      Hint = 'C'#225'c th'#244'ng tin kh'#225'c t'#224'i s'#7843'n'
      Visible = ivAlways
      OnClick = btnShowDetailClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'C'#7853'p nh'#7853't s'#7889' m'#7899'i nh'#7845't'
      Category = 0
      Hint = 'C'#7853'p nh'#7853't s'#7889' m'#7899'i nh'#7845't'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object bbtnFilter: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnFilterClick
    end
    object bbtnGroup: TdxBarButton
      Caption = 'Cho ph'#233'p gom nh'#243'm'
      Category = 0
      Hint = 'Cho ph'#233'p gom nh'#243'm'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnGroupClick
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Xem l'#7883'ch s'#7917' t'#224'i s'#7843'n n'#224'y'
      Category = 0
      Hint = 'Xem l'#7883'ch s'#7917' t'#224'i s'#7843'n n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Xu'#7845't ra t'#7853'p tin'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
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
        end>
    end
    object dxBarButton6: TdxBarButton
      Caption = 'In danh s'#225'ch t'#224'i s'#7843'n'
      Category = 0
      Hint = 'In danh s'#225'ch t'#224'i s'#7843'n'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in '
      Category = 0
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in '
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Action = acInTT
      Caption = 'In tr'#7921'c ti'#7871'p ra m'#225'y in'
      Category = 0
      Hint = 'In tr'#7921'c ti'#7871'p ra m'#225'y in'
      Visible = ivAlways
    end
  end
  object pmAssetArise: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = btnDetail
        Visible = True
      end
      item
        Item = btnShowDetail
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarSubItem1
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        Item = dxBarButton7
        Visible = True
      end
      item
        Item = dxBarButton8
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnFilter
        Visible = True
      end
      item
        Item = bbtnGroup
        Visible = True
      end>
    UseOwnFont = False
    Left = 300
    Top = 132
  end
  object qryAssetArise: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'tuky'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'denky'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'branch_id'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'SHTS')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select SHTS, TENTS, MANHOM, TENNHOM, NG_DK, HM_DK,SHTKPB,TRANGTH' +
        'AI,'
      
        '    CL_DK, TANG_KY, GIAM_KY, HM_KY, NG_CK, HM_CK,CL_CK,GHICHU,MU' +
        'CKH,SHTK,SHTKKH,BPSD,OBRANCH_ID'
      
        '        from sp_assetarise(:tuky, :denky,:branch_id) order by MA' +
        'NHOM,SHTS')
    FieldOptions = []
    Left = 337
    Top = 180
    object qryAssetAriseSHTS: TWideStringField
      FieldName = 'SHTS'
      Size = 93
    end
    object qryAssetAriseTENTS: TWideStringField
      FieldName = 'TENTS'
      Size = 381
    end
    object qryAssetAriseMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 93
    end
    object qryAssetAriseTENNHOM: TWideStringField
      FieldName = 'TENNHOM'
      Size = 381
    end
    object qryAssetAriseSHTKPB: TWideStringField
      FieldName = 'SHTKPB'
      Size = 45
    end
    object qryAssetAriseGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 765
    end
    object qryAssetAriseSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 45
    end
    object qryAssetAriseSHTKKH: TWideStringField
      FieldName = 'SHTKKH'
      Size = 45
    end
    object qryAssetAriseBPSD: TWideStringField
      FieldName = 'BPSD'
      Size = 381
    end
    object qryAssetAriseTRANGTHAI: TSmallintField
      FieldName = 'TRANGTHAI'
    end
    object qryAssetAriseNG_DK: TIBOFloatField
      FieldName = 'NG_DK'
    end
    object qryAssetAriseHM_DK: TIBOFloatField
      FieldName = 'HM_DK'
    end
    object qryAssetAriseCL_DK: TIBOFloatField
      FieldName = 'CL_DK'
    end
    object qryAssetAriseTANG_KY: TIBOFloatField
      FieldName = 'TANG_KY'
    end
    object qryAssetAriseGIAM_KY: TIBOFloatField
      FieldName = 'GIAM_KY'
    end
    object qryAssetAriseHM_KY: TIBOFloatField
      FieldName = 'HM_KY'
    end
    object qryAssetAriseNG_CK: TIBOFloatField
      FieldName = 'NG_CK'
    end
    object qryAssetAriseHM_CK: TIBOFloatField
      FieldName = 'HM_CK'
    end
    object qryAssetAriseCL_CK: TIBOFloatField
      FieldName = 'CL_CK'
    end
    object qryAssetAriseMUCKH: TIBOFloatField
      FieldName = 'MUCKH'
    end
    object qryAssetAriseOBRANCH_ID: TWideStringField
      FieldName = 'OBRANCH_ID'
      Size = 21
    end
  end
  object dsAssetArise: TDataSource
    DataSet = qryAssetArise
    Left = 361
    Top = 176
  end
  object DesignerTSCD: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ReportTSCD
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 88
    Top = 67
  end
  object dbpReportTSCD: TppDBPipeline
    DataSource = dsAssetArise
    UserName = 'dbpReportTSCD'
    Left = 113
    Top = 68
  end
  object ReportTSCD: TppReport
    AutoStop = False
    DataPipeline = dbpReportTSCD
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 56
    Top = 72
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbpReportTSCD'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
        Caption = 'T'#236'nh h'#236'nh t'#259'ng gi'#7843'm kh'#7845'u hao t'#224'i s'#7843'n trong k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ActionList1: TActionList
    Left = 336
    Top = 64
    object acInTT: TAction
      Caption = 'acInTT'
      ShortCut = 16464
      OnExecute = acInTTExecute
    end
  end
end
