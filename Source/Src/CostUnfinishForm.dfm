object CostUnfinishFrm: TCostUnfinishFrm
  Left = 139
  Top = 79
  Width = 761
  Height = 570
  HelpContext = 12
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
    Width = 753
    Height = 536
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      753
      536)
    object btnCancel: TElPopupButton
      Left = 246
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 7
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 165
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 6
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 675
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 10
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 594
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 9
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 84
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 5
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 4
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 38
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = 'Th'#224'nh ph'#7849'm'
          Width = 543
        end
        item
          Caption = 'S'#7889' cu'#7889'i k'#7923
          Width = 188
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'PRODUCTION_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnEnter = grdKHEnter
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsCostUnfinish
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      OnChangeColumn = grdKHChangeColumn
      Anchors = [akLeft, akTop, akRight, akBottom]
      object colMaTP: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUCTION_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = colMaTPCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Caption = 'T'#234'n th'#224'nh ph'#7849'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 189
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n th+AOA-nh ph+Hqk-m'
      end
      object grdKHColSLCK: TdxDBGridCalcColumn
        Caption = 'SL'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 1
        RowIndex = 0
        FieldName = 'UNFINISH_AMOUNT'
      end
      object grdKHColGTCK: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 1
        RowIndex = 0
        FieldName = 'UNFINISH_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.#'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdKH_PER_CK: TdxDBGridCalcColumn
        Alignment = taCenter
        Caption = '%'
        HeaderAlignment = taCenter
        Visible = False
        Width = 31
        BandIndex = 1
        RowIndex = 0
        FieldName = 'COMPLETE_PERCENT'
        PopupAlignment = taCenter
      end
      object grdKHMATERIAL_COST: TdxDBGridMaskColumn
        Caption = 'CP NVL'
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_COST'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.#'
      end
      object grdKHLABOUR_COST: TdxDBGridMaskColumn
        Caption = 'CP Nh'#226'n c'#244'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LABOUR_COST'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.#'
        Caption_UTF7 = 'CP Nh+AOI-n c+APQ-ng'
      end
      object grdKHOTHER_COST: TdxDBGridMaskColumn
        Caption = 'CP Chung'
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_COST'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.#'
      end
      object grdKHMATERIAL_PERCENT: TdxDBGridCalcColumn
        Caption = '% NVL'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_PERCENT'
      end
      object grdKHEXTRA_MAT_PERCENT: TdxDBGridCalcColumn
        Caption = '% NVL ph'#7909
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EXTRA_MAT_PERCENT'
        Caption_UTF7 = '% NVL ph+HuU'
      end
      object grdKHLABOR_PERCENT: TdxDBGridCalcColumn
        Caption = '% NC'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LABOR_PERCENT'
      end
      object grdKHOTHER_PERCENT: TdxDBGridCalcColumn
        Caption = '% SXC'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_PERCENT'
      end
      object grdKHCOMPLETE_PERCENT: TdxDBGridCalcColumn
        Caption = '% SP'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPLETE_PERCENT'
      end
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 265
      Top = 9
      Width = 148
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnEnter = dxPopupEdit1Enter
      OnExit = dxPopupEdit1Exit
      OnChange = dxPopupEdit1Change
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxEdit1: TdxEdit
      Left = 490
      Top = 9
      Width = 450
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
    end
    object btnPreCal: TElPopupButton
      Left = 327
      Top = 508
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X&em tr'#432#7899'c'
      TabOrder = 8
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object spnFromMonth: TdxSpinEdit
      Left = 37
      Top = 9
      Width = 37
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Alignment = taCenter
      OnChange = spnFromMonthChange
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnFromYear: TdxSpinEdit
      Left = 104
      Top = 9
      Width = 52
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      OnChange = spnFromYearChange
      MaxValue = 2700.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
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
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem10: TdxLayoutItem
          Caption = 'Th'#225'ng'
          Control = spnFromMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          Caption = 'n'#259'm'
          Control = spnFromYear
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh '
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
          Control = dxEdit1
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
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          Caption = 'BitBtn6'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          ShowCaption = False
          Visible = False
          Control = btnPreCal
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
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 280
    Top = 120
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 180
    Top = 200
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsCostUnfinish
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsCostUnfinish
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsCostUnfinish
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsCostUnfinish
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
      'Export')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 212
    Top = 116
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton8: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton1Click
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = True
    Left = 248
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
        Caption = 'Th'#244'ng tin v'#7873' chi ph'#237' d'#7903' dang cu'#7889'i k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 72
  end
  object qryCostlUnfinish: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAPX'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTION_UNFINISH'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   PRODUCTION_ID = :OLD_PRODUCTION_ID AND'
      '   PRODUCTION_TYPE = :OLD_PRODUCTION_TYPE')
    EditSQL.Strings = (
      'UPDATE PRODUCTION_UNFINISH SET'
      '   MALOAI = :MALOAI, /*PK*/'
      '   MAPX = :MAPX, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   PRODUCTION_ID = :PRODUCTION_ID, /*PK*/'
      '   PRODUCTION_TYPE = :PRODUCTION_TYPE, /*PK*/'
      '   UNFINISH_AMOUNT = :UNFINISH_AMOUNT,'
      '   UNFINISH_VALUE = :UNFINISH_VALUE,'
      '   LABOUR_COST = :LABOUR_COST,'
      '   MATERIAL_COST = :MATERIAL_COST,'
      '   OTHER_COST = :OTHER_COST,'
      '   COMPLETE_PERCENT = :COMPLETE_PERCENT,'
      '   EXTRA_MAT_PERCENT = :EXTRA_MAT_PERCENT,'
      '   OTHER_PERCENT = :OTHER_PERCENT,'
      '   LABOR_PERCENT = :LABOR_PERCENT,'
      '   MATERIAL_PERCENT = :MATERIAL_PERCENT'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   PRODUCTION_ID = :OLD_PRODUCTION_ID AND'
      '   PRODUCTION_TYPE = :OLD_PRODUCTION_TYPE')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTION_UNFINISH('
      '   MALOAI, /*PK*/'
      '   MAPX, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   PRODUCTION_ID, /*PK*/'
      '   PRODUCTION_TYPE, /*PK*/'
      '   UNFINISH_AMOUNT,'
      '   UNFINISH_VALUE,'
      '   LABOUR_COST,'
      '   MATERIAL_COST,'
      '   OTHER_COST,'
      '   COMPLETE_PERCENT,'
      '   EXTRA_MAT_PERCENT,'
      '   OTHER_PERCENT,'
      '   LABOR_PERCENT,'
      '   MATERIAL_PERCENT)'
      'VALUES ('
      '   :MALOAI,'
      '   :MAPX,'
      '   :PERIOD_ID,'
      '   :PRODUCTION_ID,'
      '   :PRODUCTION_TYPE,'
      '   :UNFINISH_AMOUNT,'
      '   :UNFINISH_VALUE,'
      '   :LABOUR_COST,'
      '   :MATERIAL_COST,'
      '   :OTHER_COST,'
      '   :COMPLETE_PERCENT,'
      '   :EXTRA_MAT_PERCENT,'
      '   :OTHER_PERCENT,'
      '   :LABOR_PERCENT,'
      '   :MATERIAL_PERCENT)')
    KeyLinks.Strings = (
      'PERIOD_ID'
      'PRODUCTION_UNFINISH.PRODUCTION_ID'
      'PRODUCTION_UNFINISH.PRODUCTION_TYPE'
      'MAPX'
      'MALOAI')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryCostlUnfinishBeforeEdit
    BeforeDelete = qryCostlUnfinishBeforeDelete
    BeforeInsert = qryCostlUnfinishBeforeInsert
    AfterInsert = qryCostlUnfinishAfterInsert
    BeforePost = qryCostlUnfinishBeforePost
    AfterPost = qryCostlUnfinishAfterPost
    OnNewRecord = qryCostlUnfinishNewRecord
    OnPostError = qryCostlUnfinishPostError
    SQL.Strings = (
      'select'
      ' PERIOD_ID'
      ',MAPX'
      ',MALOAI'
      ',PRODUCTION_ID'
      ',PRODUCTION_TYPE'
      ',UNFINISH_AMOUNT'
      ',UNFINISH_VALUE'
      ',LABOUR_COST'
      ',MATERIAL_COST'
      ',OTHER_COST'
      ',COMPLETE_PERCENT'
      ', OBJECT_LIST.OBJECT_NAME'
      '     , EXTRA_MAT_PERCENT'
      '     , OTHER_PERCENT'
      '     , LABOR_PERCENT'
      '     , MATERIAL_PERCENT'
      'From production_unfinish'
      
        'JOIN OBJECT_LIST on(PRODUCTION_UNFINISH.PRODUCTION_ID=OBJECT_LIS' +
        'T.OBJECT_ID '
      'and PRODUCTION_UNFINISH.PRODUCTION_TYPE=OBJECT_LIST.OTYPE_ID)'
      'where PERIOD_ID=:PERIOD_ID and MAPX=:MAPX and MALOAI=6 '
      'and OBJECT_LIST.OTYPE_ID=2'
      'Order by  PRODUCTION_UNFINISH.PRODUCTION_ID')
    FieldOptions = []
    Left = 82
    Top = 196
    object qryCostlUnfinishPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryCostlUnfinishMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryCostlUnfinishMALOAI: TSmallintField
      FieldName = 'MALOAI'
      Required = True
    end
    object qryCostlUnfinishPRODUCTION_ID: TWideStringField
      FieldName = 'PRODUCTION_ID'
      Required = True
      Size = 30
    end
    object qryCostlUnfinishPRODUCTION_TYPE: TSmallintField
      FieldName = 'PRODUCTION_TYPE'
      Required = True
    end
    object qryCostlUnfinishUNFINISH_AMOUNT: TIBOFloatField
      FieldName = 'UNFINISH_AMOUNT'
    end
    object qryCostlUnfinishUNFINISH_VALUE: TIBOFloatField
      FieldName = 'UNFINISH_VALUE'
    end
    object qryCostlUnfinishLABOUR_COST: TIBOFloatField
      FieldName = 'LABOUR_COST'
    end
    object qryCostlUnfinishMATERIAL_COST: TIBOFloatField
      FieldName = 'MATERIAL_COST'
    end
    object qryCostlUnfinishOTHER_COST: TIBOFloatField
      FieldName = 'OTHER_COST'
    end
    object qryCostlUnfinishOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryCostlUnfinishCOMPLETE_PERCENT: TIBOFloatField
      FieldName = 'COMPLETE_PERCENT'
      OnChange = qryCostlUnfinishCOMPLETE_PERCENTChange
    end
    object qryCostlUnfinishEXTRA_MAT_PERCENT: TIBOFloatField
      FieldName = 'EXTRA_MAT_PERCENT'
    end
    object qryCostlUnfinishOTHER_PERCENT: TIBOFloatField
      FieldName = 'OTHER_PERCENT'
    end
    object qryCostlUnfinishLABOR_PERCENT: TIBOFloatField
      FieldName = 'LABOR_PERCENT'
    end
    object qryCostlUnfinishMATERIAL_PERCENT: TIBOFloatField
      FieldName = 'MATERIAL_PERCENT'
    end
  end
  object dsCostUnfinish: TDataSource
    DataSet = qryCostlUnfinish
    Left = 82
    Top = 239
  end
end
