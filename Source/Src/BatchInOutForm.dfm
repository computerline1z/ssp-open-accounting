object BatchInOutFrm: TBatchInOutFrm
  Left = 63
  Top = 91
  Width = 796
  Height = 583
  HelpContext = 5
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
    Width = 788
    Height = 549
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      788
      549)
    object BitBtn3: TElPopupButton
      Left = 710
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 635
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdBatch: TdxDBGrid
      Left = 5
      Top = 5
      Width = 796
      Height = 494
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' l'#244' h'#224'ng'
          Width = 209
        end
        item
          Caption = 'Th'#244'ng tin v'#7873' m'#7863't h'#224'ng'
          Width = 204
        end
        item
          Caption = 'Th'#244'ng tin ban '#273#7847'u'
          Width = 150
        end
        item
          Caption = 'Th'#244'ng tin trong k'#7923
          Width = 203
        end>
      DefaultLayout = False
      HeaderMinRowCount = 2
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = grdBatchKeyDown
      OnMouseUp = grdBatchMouseUp
      BandColor = clHotLight
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWhite
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsBatch
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      ShowBands = True
      OnChangeNode = grdBatchChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdBatchTHANGBDKH: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'Th'#225'ng b'#7855't '#273#7847'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THANGBDKH'
        Caption_UTF7 = 'Th+AOE-ng b+Hq8-t +AREepw-u'
      end
      object grdBatchMASOLO: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#244' h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASOLO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 l'#244
        Caption_UTF7 = 'S+HtE l+APQ h+AOA-ng'
        SummaryFooterFormat_UTF7 = '#,0 l+APQ'
      end
      object grdBatchMASOHH: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889' h'#224'ng h'#243'a'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 1
        RowIndex = 0
        FieldName = 'MASOHH'
        Caption_UTF7 = 'M+AOM s+HtE h+AOA-ng h+APM-a'
      end
      object grdBatchSLBANDAU: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng ban '#273#7847'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 2
        RowIndex = 0
        FieldName = 'SLBANDAU'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng ban +AREepw-u'
      end
      object grdBatchGTBANDAU: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883' ban '#273#7847'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 2
        RowIndex = 0
        FieldName = 'GTBANDAU'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss ban +AREepw-u'
      end
      object grdBatchSLDAUKY: TdxDBGridMaskColumn
        Caption = 'L'#432#7907'ng '#273#7847'u k'#7923
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SLDAUKY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'L+AbAe4w-ng +AREepw-u k+HvM'
      end
      object grdBatchSLXUAT: TdxDBGridMaskColumn
        Caption = 'L'#432#7907'ng xu'#7845't trong k'#7923
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SLXUAT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'L+AbAe4w-ng xu+HqU-t trong k+HvM'
      end
      object grdBatchSLCUOIKY: TdxDBGridMaskColumn
        Caption = 'L'#432#7907'ng t'#7891'n cu'#7889'i k'#7923
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SLCUOIKY'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'L+AbAe4w-ng t+HtM-n cu+HtE-i k+HvM'
      end
      object grdBatchOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n m'#7863't h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n m+Hrc-t h+AOA-ng'
      end
      object grdBatchSUBINFO_1: TdxDBGridMaskColumn
        Caption = 'Qui c'#225'ch'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 1562
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_1'
        Caption_UTF7 = 'Qui c+AOE-ch'
      end
      object grdBatchSUBINFO_2: TdxDBGridMaskColumn
        Caption = #272'VT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 785
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_2'
        Caption_UTF7 = '+ARA-VT'
      end
      object grdBatchTGSD: TdxDBGridMaskColumn
        Caption = 'TGSD (th'#225'ng)'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TGSD'
        Caption_UTF7 = 'TGSD (th+AOE-ng)'
      end
      object grdBatchTCMUCKH: TdxDBGridColumn
        Caption = 'M'#7913'c ph'#226'n b'#7893' c'#7911'a c'#7843' l'#244
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TCMUCKH'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'M+Huk-c ph+AOI-n b+HtU c+Huc-a c+HqM l+APQ'
      end
    end
    object dxDBEdit3: TdxDBEdit
      Left = 370
      Top = 521
      Width = 32
      TabOrder = 3
      DataField = 'CONLAI'
      DataSource = dsBatch
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit4: TdxDBEdit
      Left = 60
      Top = 521
      Width = 75
      TabOrder = 1
      DataField = 'SPNHAP'
      DataSource = dsBatch
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit1: TdxDBEdit
      Left = 529
      Top = 521
      Width = 200
      TabOrder = 4
      DataField = 'MUCKH'
      DataSource = dsBatch
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit2: TdxDBEdit
      Left = 263
      Top = 521
      Width = 32
      TabOrder = 2
      DataField = 'TGSD'
      DataSource = dsBatch
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
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
        Control = grdBatch
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 3
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem9: TdxLayoutItem
          Caption = 'Phi'#7871'u nh'#7853'p'
          Control = dxDBEdit4
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'Th'#7901'i gian ph'#226'n b'#7893' (th'#225'ng)'
          Control = dxDBEdit2
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Caption = 'C'#242'n l'#7841'i (th'#225'ng)'
          Control = dxDBEdit3
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'M'#7913'c ph'#226'n b'#7893'/ 1 m'#7863't h'#224'ng'
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 392
    Top = 336
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 396
    Top = 412
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBatch
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBatch
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
        Caption = 'C'#225'c l'#244' c'#244'ng c'#7909' d'#7909'ng c'#7909' '#273#227' nh'#7853'p kho'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 96
  end
  object qryBatch: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'kyht'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'MASOLO'
      'KYNHAP')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnCalcFields = qryBatchCalcFields
    SQL.Strings = (
      
        'select MASOLO,KYNHAP,MASOHH,TGSD,SPNHAP,THANGBDKH,MASOLO||KYNHAP' +
        ' KF,'
      
        '    SLBANDAU,GTBANDAU,SLDAUKY,SLXUAT,SLCUOIKY,object_name,subinf' +
        'o_1,subinfo_2'
      'from macro_batch_list(:kyht)'
      
        'join object_list on (masohh=object_list.object_id and object_lis' +
        't.otype_id=2)'
      'order by kynhap,masolo')
    FieldOptions = []
    Left = 148
    Top = 78
    object qryBatchMASOLO: TIntegerField
      FieldName = 'MASOLO'
    end
    object qryBatchKYNHAP: TSmallintField
      FieldName = 'KYNHAP'
    end
    object qryBatchMASOHH: TWideStringField
      FieldName = 'MASOHH'
      Size = 30
    end
    object qryBatchTGSD: TSmallintField
      FieldName = 'TGSD'
    end
    object qryBatchSPNHAP: TWideStringField
      FieldName = 'SPNHAP'
      Size = 30
    end
    object qryBatchSLBANDAU: TIBOFloatField
      FieldName = 'SLBANDAU'
    end
    object qryBatchGTBANDAU: TIBOFloatField
      FieldName = 'GTBANDAU'
    end
    object qryBatchSLDAUKY: TIBOFloatField
      FieldName = 'SLDAUKY'
    end
    object qryBatchSLXUAT: TIBOFloatField
      FieldName = 'SLXUAT'
    end
    object qryBatchSLCUOIKY: TIBOFloatField
      FieldName = 'SLCUOIKY'
    end
    object qryBatchOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryBatchSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryBatchSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryBatchTHANGBDKH: TWideStringField
      FieldName = 'THANGBDKH'
      Size = 15
    end
    object qryBatchCONLAI: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'CONLAI'
      Calculated = True
    end
    object qryBatchMUCKH: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MUCKH'
      Calculated = True
    end
    object qryBatchTCMUCKH: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TCMUCKH'
      Calculated = True
    end
    object qryBatchKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Size = 17
    end
  end
  object dsBatch: TDataSource
    DataSet = qryBatch
    Left = 148
    Top = 136
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
    Left = 236
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
    object bbtnPN: TdxBarButton
      Caption = 'Xem phi'#7871'u nh'#7853'p v'#224'o'
      Category = 0
      Hint = 'Xem phi'#7871'u nh'#7853'p v'#224'o'
      Visible = ivAlways
      OnClick = bbtnPNClick
    end
    object bbtnPX: TdxBarButton
      Caption = 'Phi'#7871'u xu'#7845't trong k'#7923
      Category = 0
      Hint = 'Phi'#7871'u xu'#7845't trong k'#7923
      Visible = ivAlways
      OnClick = bbtnPXClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin Excel'
      Category = 0
      Hint = 'Xu'#7845't ra t'#7853'p tin Excel'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
  object pmBatch: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbtnPN
        Visible = True
      end
      item
        Item = bbtnPX
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
    Left = 272
    Top = 240
  end
end
