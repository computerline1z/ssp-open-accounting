object BeginAssetFrm: TBeginAssetFrm
  Tag = 70
  Left = 117
  Top = 59
  Width = 780
  Height = 547
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
    Width = 772
    Height = 513
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      772
      513)
    object grdAccountArise: TdxDBGrid
      Left = 5
      Top = 5
      Width = 782
      Height = 408
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' t'#224'i s'#7843'n'
          Width = 444
        end
        item
          Caption = #272#7847'u k'#7923
          Width = 274
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
      DataSource = dsBeginAsset
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowRowFooter = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAccountAriseUnit_ID: TdxDBGridColumn
        Tag = 71
        Caption = 'S'#7889' hi'#7879'u'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        TabStop = False
        Width = 85
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
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENTS'
        Caption_UTF7 = 'T+AOo-n t+AOA-i s+HqM-n'
      end
      object grdAccountAriseNHOM: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        TabStop = False
        Visible = False
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENNHOM'
        GroupIndex = 0
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
      object grdAccountAriseGC: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdAccountAriseSHTK: TdxDBGridColumn
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
      end
      object grdAccountAriseTKPB: TdxDBGridColumn
        Caption = 'TK PB'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTKPB'
      end
      object grdAccountAriseBPSD: TdxDBGridColumn
        Caption = 'B'#7897' ph'#7853'n s'#7917' d'#7909'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BPSD'
        Caption_UTF7 = 'B+Htk ph+Hq0-n s+Hu0 d+HuU-ng'
      end
      object grdAccountAriseNGDK: TdxDBGridCalcColumn
        Caption = 'Nguy'#234'n gi'#225
        HeaderAlignment = taCenter
        Width = 108
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
        Width = 88
        BandIndex = 1
        RowIndex = 0
        FieldName = 'HM_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Hao m+API-n'
      end
      object grdAccountAriseCLDK: TdxDBGridCalcColumn
        Caption = 'C'#242'n l'#7841'i'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 77
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CL_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'C+API-n l+HqE-i'
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
    PopupMenuLinks = <
      item
        Control = grdAccountArise
        PopupMenu = pmAssetArise
      end>
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
    object btnShowDetail: TdxBarButton
      Caption = 'C'#225'c th'#244'ng tin kh'#225'c t'#224'i s'#7843'n'
      Category = 0
      Hint = 'C'#225'c th'#244'ng tin kh'#225'c t'#224'i s'#7843'n'
      Visible = ivAlways
      OnClick = btnShowDetailClick
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
  end
  object pmAssetArise: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = btnShowDetail
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
        Item = bbtnGroup
        Visible = True
      end>
    UseOwnFont = False
    Left = 300
    Top = 132
  end
  object qryBeginAsset: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'kybd'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      '')
    EditSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_GHINGUYENGIAVAKHTSCD(:SHTS,:KYHT,:NG_DK,:HM' +
        '_DK,:BRANCH_ID)')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'SHTS')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBeginAssetBeforeEdit
    SQL.Strings = (
      
        'select SHTS, TENTS, MANHOM, TENNHOM, NG_DK, HM_DK,SHTKPB,TRANGTH' +
        'AI,'
      '    CL_DK, GHICHU,SHTK,SHTKKH,BPSD, kyht,BRANCH_ID'
      
        '        from sp_beginasset(:kybd, :BRANCH_ID) order by MANHOM,SH' +
        'TS')
    FieldOptions = []
    Left = 337
    Top = 180
    object qryBeginAssetSHTS: TWideStringField
      FieldName = 'SHTS'
      Size = 93
    end
    object qryBeginAssetTENTS: TWideStringField
      FieldName = 'TENTS'
      Size = 381
    end
    object qryBeginAssetMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 93
    end
    object qryBeginAssetTENNHOM: TWideStringField
      FieldName = 'TENNHOM'
      Size = 381
    end
    object qryBeginAssetSHTKPB: TWideStringField
      FieldName = 'SHTKPB'
      Size = 45
    end
    object qryBeginAssetGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 765
    end
    object qryBeginAssetSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 45
    end
    object qryBeginAssetSHTKKH: TWideStringField
      FieldName = 'SHTKKH'
      Size = 45
    end
    object qryBeginAssetBPSD: TWideStringField
      FieldName = 'BPSD'
      Size = 381
    end
    object qryBeginAssetTRANGTHAI: TSmallintField
      FieldName = 'TRANGTHAI'
    end
    object qryBeginAssetNG_DK: TIBOFloatField
      FieldName = 'NG_DK'
      OnChange = qryBeginAssetNG_DKChange
    end
    object qryBeginAssetKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryBeginAssetHM_DK: TIBOFloatField
      FieldName = 'HM_DK'
      OnChange = qryBeginAssetHM_DKChange
    end
    object qryBeginAssetCL_DK: TIBOFloatField
      FieldName = 'CL_DK'
    end
    object qryBeginAssetBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
  end
  object dsBeginAsset: TDataSource
    DataSet = qryBeginAsset
    Left = 361
    Top = 176
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
        Caption = 
          'Th'#244'ng tin v'#7873' gi'#225' tr'#7883' (nguy'#234'n gi'#225', kh'#7845'u hao l'#361'y k'#7871') ban '#273#7847'u c'#7911'a t' +
          #224'i s'#7843'n c'#7889' '#273#7883'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
