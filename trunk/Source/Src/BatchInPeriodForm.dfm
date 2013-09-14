object BatchInPeriodFrm: TBatchInPeriodFrm
  Left = 128
  Top = 67
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
    object btnCancel: TElPopupButton
      Left = 78
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 2
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 3
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 1
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
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
      TabOrder = 5
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
      TabOrder = 4
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdBatchList: TdxDBGrid
      Left = 5
      Top = 5
      Width = 641
      Height = 355
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung'
          Width = 246
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'MASOLO'
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
      OnDblClick = grdBatchListDblClick
      OnKeyDown = grdBatchListKeyDown
      OnMouseUp = grdBatchListMouseUp
      BandColor = clHotLight
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWhite
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsBatchList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdBatchListBATCH_ID: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#244
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASOLO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 L'#244
        Caption_UTF7 = 'S+HtE l+APQ'
        SummaryFooterFormat_UTF7 = '#,0 L+APQ'
      end
      object grdBatchListMASO_HH: TdxDBGridPopupColumn
        Caption = 'M'#227' h'#224'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        Caption_UTF7 = 'M+AOM h+AOA-ng'
      end
      object grdBatchListOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n h'#224'ng h'#243'a'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 132
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng h+APM-a'
      end
      object grdBatchListSLBANDAU: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_AMOUNT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdBatchListGTBANDAU: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdBatchListDOC_IN: TdxDBGridMaskColumn
        Caption = 'Phi'#7871'u nh'#7853'p'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_ID'
        Caption_UTF7 = 'Phi+Hr8-u nh+Hq0-p'
      end
      object grdBatchListTGSD: TdxDBGridMaskColumn
        Caption = 'TGSD (th'#225'ng)'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TGSDCUALO'
        Caption_UTF7 = 'TGSD (th+AOE-ng)'
      end
      object grdBatchListBATCH_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 163
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Phi'#7871'u nh'#7853'p'
      TabOrder = 3
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
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
        Control = grdBatchList
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locSave: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object locCancel: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 10
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
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
    Left = 394
    Top = 368
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBatchList
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBatchList
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
        Caption = 'C'#225'c l'#244' c'#244'ng c'#7909' d'#7909'ng c'#7909' '#273#227' nh'#7853'p kho trong k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 96
  end
  object qryBatchList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    EditSQL.Strings = (
      'UPDATE FULL_ENTRYS SET'
      '   ENTRY_NOTE = :ENTRY_NOTE,'
      '   MASOLO = :MASOLO,'
      '   TGSDCUALO = :TGSDCUALO'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBatchListBeforeEdit
    BeforeDelete = qryBatchListBeforeDelete
    BeforeInsert = qryBatchListBeforeInsert
    OnPostError = qryBatchListPostError
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , ENTRY_ID'
      '     , PERIOD_ID'
      '     , DEBIT_OBJ'
      '     , ENTRY_AMOUNT'
      '     , ENTRY_VALUE'
      '     , ENTRY_NOTE'
      '     , MASOLO'
      '     , TGSDCUALO'
      '     , OBJECT_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      'FROM FULL_ENTRYS'
      
        'JOIN OBJECT_LIST on (FULL_ENTRYS.DEBIT_OBJ= OBJECT_LIST.OBJECT_I' +
        'D and FULL_ENTRYS.DEBIT_TYPE= OBJECT_LIST.OTYPE_ID)'
      'where MASOLO is not null and PERIOD_ID=:PERIOD_ID'
      
        'and (credit_acc not in (select debit_acc from out_type) and debi' +
        't_acc starting with '#39'153'#39')')
    FieldOptions = []
    Left = 168
    Top = 148
    object qryBatchListDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryBatchListENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
      Required = True
    end
    object qryBatchListPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBatchListDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Size = 30
    end
    object qryBatchListENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryBatchListENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryBatchListENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryBatchListMASOLO: TIntegerField
      FieldName = 'MASOLO'
    end
    object qryBatchListTGSDCUALO: TSmallintField
      FieldName = 'TGSDCUALO'
    end
    object qryBatchListOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryBatchListSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryBatchListSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
  end
  object dsBatchList: TDataSource
    DataSet = qryBatchList
    Left = 168
    Top = 177
  end
end
