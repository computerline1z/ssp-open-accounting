object OutDetailFrm: TOutDetailFrm
  Left = 152
  Top = 112
  Width = 640
  Height = 468
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
    Width = 632
    Height = 434
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      632
      434)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 406
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
      Left = 159
      Top = 406
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
    object BitBtn3: TElPopupButton
      Left = 554
      Top = 406
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
      TabOrder = 9
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 476
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 8
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 406
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
      Top = 406
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
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdOutDetail: TdxDBGrid
      Left = 5
      Top = 36
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' l'#244' h'#224'ng nh'#7853'p'
          Width = 408
        end
        item
          Caption = 'Th'#244'ng tin xu'#7845't'
          Width = 202
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnEnter = grdOutDetailEnter
      OnKeyDown = grdOutDetailKeyDown
      OnMouseUp = grdOutDetailMouseUp
      DataSource = dsOutDetail
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdOutDetailIDOC_ID: TdxDBGridPopupColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDOC_ID'
        SummaryFooterType = cstCount
        PopupControl = PnlPopup
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdOutDetailIDOC_IDCloseUp
        OnInitPopup = grdOutDetailIDOC_IDInitPopup
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object grdOutDetailIENTRY_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IENTRY_ID'
      end
      object grdOutDetailMASTER_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y nh'#7853'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASTER_DATE'
        Caption_UTF7 = 'Ng+AOA-y nh+Hq0-p'
      end
      object grdOutDetailENTRY_AMOUNT: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_AMOUNT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdOutDetailENTRY_PRICE: TdxDBGridMaskColumn
        Caption = #272#417'n gi'#225
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_PRICE'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object grdOutDetailENTRY_VALUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdOutDetailENTRY_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdOutDetailODETAIL_AMOUNT: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ODETAIL_AMOUNT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdOutDetailODETAIL_VALUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ODETAIL_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdOutDetailODETAIL_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ODETAIL_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object ElPopupButton2: TElPopupButton
      Left = 378
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 2
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbLIFO: TElRadioButton
      Left = 191
      Top = 7
      Width = 184
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ph'#225't sinh theo ph'#432#417'ng ph'#225'p LIFO'
      TabOrder = 1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbFIFO: TElRadioButton
      Left = 3
      Top = 7
      Width = 185
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ph'#225't sinh theo ph'#432#417'ng ph'#225'p FIFO'
      TabOrder = 0
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem9: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'ElRadioButton2'
          ShowCaption = False
          Control = rbFIFO
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'ElRadioButton1'
          ShowCaption = False
          Control = rbLIFO
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
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
        Control = grdOutDetail
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
  object PnlPopup: TPanel
    Left = 112
    Top = 80
    Width = 500
    Height = 300
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Panel1: TPanel
      Left = 1
      Top = 270
      Width = 498
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        498
        29)
      object btnXemphieu: TElPopupButton
        Left = 3
        Top = 2
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Xem phi'#7871'u'
        TabOrder = 0
        OnClick = btnXemphieuClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnSelect: TElPopupButton
        Left = 346
        Top = 2
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Ch'#7885'n'
        TabOrder = 1
        OnClick = btnSelectClick
        Anchors = [akRight, akBottom]
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnNoSel: TElPopupButton
        Left = 422
        Top = 2
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&B'#7887' qua'
        TabOrder = 2
        OnClick = btnNoSelClick
        Anchors = [akRight, akBottom]
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbSortAsc: TElRadioButton
        Left = 95
        Top = 8
        Width = 102
        Height = 17
        Cursor = crDefault
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'T'#259'ng d'#7847'n (FIFO)'
        TabOrder = 3
        OnClick = rbSortAscClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbSortDesc: TElRadioButton
        Left = 211
        Top = 8
        Width = 100
        Height = 17
        Cursor = crDefault
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Gi'#7843'm d'#7847'n (LIFO)'
        TabOrder = 4
        OnClick = rbSortDescClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
    end
    object grdPopup: TdxDBGrid
      Left = 1
      Top = 1
      Width = 498
      Height = 269
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' l'#244' h'#224'ng nh'#7853'p'
          Width = 408
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdPopupDblClick
      OnEnter = grdOutDetailEnter
      OnKeyDown = grdPopupKeyDown
      OnMouseUp = grdOutDetailMouseUp
      DataSource = dsBatch
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object grdPopupDOC_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y nh'#7853'p'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = grdPopupDOC_DATECustomDrawCell
        FieldName = 'DOC_DATE'
        SummaryFooterType = cstCount
        Caption_UTF7 = 'Ng+AOA-y nh+Hq0-p'
      end
      object grdPopupDOC_ID: TdxDBGridMaskColumn
        Caption = 'S'#7889' phi'#7871'u'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = grdPopupDOC_IDCustomDrawCell
        FieldName = 'DOC_ID'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object grdPopupENTRY_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_ID'
      end
      object grdPopupBATCH_AMOUNT: TdxDBGridMaskColumn
        Caption = 'L'#432#7907'ng t'#7891'n'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BATCH_AMOUNT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'L+AbAe4w-ng t+HtM-n'
      end
      object grdPopupBATCH_PRICE: TdxDBGridMaskColumn
        Caption = #272#417'n gi'#225
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BATCH_PRICE'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object grdPopupBATCH_VALUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883' t'#7891'n'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BATCH_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss t+HtM-n'
      end
      object grdPopupBATCH_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BATCH_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 420
    Top = 120
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsOutDetail
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsOutDetail
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsOutDetail
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
        Caption = 'Chi ti'#7871't d'#242'ng h'#224'ng xu'#7845't ra'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryOutDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'ODOC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OENTRY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OPERIOD_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM OUT_DETAIL'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   IDOC_ID = :OLD_IDOC_ID AND'
      '   IENTRY_ID = :OLD_IENTRY_ID AND'
      '   IPERIOD_ID = :OLD_IPERIOD_ID AND'
      '   ODOC_ID = :OLD_ODOC_ID AND'
      '   OENTRY_ID = :OLD_OENTRY_ID AND'
      '   OPERIOD_ID = :OLD_OPERIOD_ID')
    EditSQL.Strings = (
      'UPDATE OUT_DETAIL SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   IDOC_ID = :IDOC_ID, /*PK*/'
      '   IENTRY_ID = :IENTRY_ID, /*PK*/'
      '   IPERIOD_ID = :IPERIOD_ID, /*PK*/'
      '   ODOC_ID = :ODOC_ID, /*PK*/'
      '   OENTRY_ID = :OENTRY_ID, /*PK*/'
      '   OPERIOD_ID = :OPERIOD_ID, /*PK*/'
      '   ODETAIL_AMOUNT = :ODETAIL_AMOUNT,'
      '   ODETAIL_VALUE = :ODETAIL_VALUE,'
      '   ODETAIL_NOTE = :ODETAIL_NOTE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   IDOC_ID = :OLD_IDOC_ID AND'
      '   IENTRY_ID = :OLD_IENTRY_ID AND'
      '   IPERIOD_ID = :OLD_IPERIOD_ID AND'
      '   ODOC_ID = :OLD_ODOC_ID AND'
      '   OENTRY_ID = :OLD_OENTRY_ID AND'
      '   OPERIOD_ID = :OLD_OPERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO OUT_DETAIL('
      '   BRANCH_ID, /*PK*/'
      '   IDOC_ID, /*PK*/'
      '   IENTRY_ID, /*PK*/'
      '   IPERIOD_ID, /*PK*/'
      '   ODOC_ID, /*PK*/'
      '   OENTRY_ID, /*PK*/'
      '   OPERIOD_ID, /*PK*/'
      '   ODETAIL_AMOUNT,'
      '   ODETAIL_VALUE,'
      '   ODETAIL_NOTE)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :IDOC_ID,'
      '   :IENTRY_ID,'
      '   :IPERIOD_ID,'
      '   :ODOC_ID,'
      '   :OENTRY_ID,'
      '   :OPERIOD_ID,'
      '   :ODETAIL_AMOUNT,'
      '   :ODETAIL_VALUE,'
      '   :ODETAIL_NOTE)')
    KeyLinks.Strings = (
      'ODOC_ID'
      'OENTRY_ID'
      'OPERIOD_ID'
      'IDOC_ID'
      'IENTRY_ID'
      'IPERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryOutDetailBeforeEdit
    BeforeDelete = qryOutDetailBeforeDelete
    AfterDelete = qryOutDetailAfterDelete
    BeforeInsert = qryOutDetailBeforeInsert
    AfterInsert = qryOutDetailAfterInsert
    BeforePost = qryOutDetailBeforePost
    AfterPost = qryOutDetailAfterPost
    OnNewRecord = qryOutDetailNewRecord
    OnPostError = qryOutDetailPostError
    SQL.Strings = (
      'SELECT ODOC_ID'
      '     , OENTRY_ID'
      '     , OPERIOD_ID'
      '     , IDOC_ID'
      '     , IENTRY_ID'
      '     , IPERIOD_ID'
      '     , ODETAIL_AMOUNT'
      '     , ODETAIL_VALUE'
      '     , ODETAIL_NOTE'
      '     , MASTER_DATE'
      '     , ENTRY_NOTE'
      '     , ENTRY_AMOUNT'
      '     , ENTRY_PRICE'
      '     , ENTRY_VALUE'
      
        '     , ODOC_ID||OENTRY_ID||OPERIOD_ID||IDOC_ID||IENTRY_ID||IPERI' +
        'OD_ID KF'
      '     , OUT_DETAIL.BRANCH_ID'
      'FROM OUT_DETAIL'
      
        'JOIN FULL_ENTRYS on (IDOC_ID=DOC_ID and IENTRY_ID=ENTRY_ID and I' +
        'PERIOD_ID=PERIOD_ID and OUT_DETAIL.BRANCH_ID =:BRANCH_ID)'
      
        'where ODOC_ID=:ODOC_ID and OENTRY_ID=:OENTRY_ID and OPERIOD_ID=:' +
        'OPERIOD_ID')
    FieldOptions = []
    Left = 45
    Top = 68
    object qryOutDetailODOC_ID: TWideStringField
      FieldName = 'ODOC_ID'
      Required = True
      Size = 30
    end
    object qryOutDetailOENTRY_ID: TSmallintField
      FieldName = 'OENTRY_ID'
      Required = True
    end
    object qryOutDetailOPERIOD_ID: TSmallintField
      FieldName = 'OPERIOD_ID'
      Required = True
    end
    object qryOutDetailIDOC_ID: TWideStringField
      FieldName = 'IDOC_ID'
      Required = True
      Size = 30
    end
    object qryOutDetailIENTRY_ID: TSmallintField
      FieldName = 'IENTRY_ID'
      Required = True
    end
    object qryOutDetailIPERIOD_ID: TSmallintField
      FieldName = 'IPERIOD_ID'
      Required = True
    end
    object qryOutDetailODETAIL_AMOUNT: TIBOFloatField
      FieldName = 'ODETAIL_AMOUNT'
      OnChange = qryOutDetailODETAIL_AMOUNTChange
    end
    object qryOutDetailODETAIL_VALUE: TIBOFloatField
      FieldName = 'ODETAIL_VALUE'
    end
    object qryOutDetailODETAIL_NOTE: TWideStringField
      FieldName = 'ODETAIL_NOTE'
      Size = 255
    end
    object qryOutDetailMASTER_DATE: TDateField
      FieldName = 'MASTER_DATE'
    end
    object qryOutDetailENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryOutDetailENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryOutDetailENTRY_PRICE: TIBOFloatField
      FieldName = 'ENTRY_PRICE'
    end
    object qryOutDetailENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryOutDetailKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 84
    end
  end
  object dsOutDetail: TDataSource
    DataSet = qryOutDetail
    Left = 45
    Top = 103
  end
  object dsBatch: TDataSource
    DataSet = qryBatch
    Left = 261
    Top = 175
  end
  object qryBatch: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'ngayxem'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'wareid'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'Accid'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'objid'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID'
      'ENTRY_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryOutDetailBeforeEdit
    BeforeDelete = qryOutDetailBeforeDelete
    BeforeInsert = qryOutDetailBeforeInsert
    AfterInsert = qryOutDetailAfterInsert
    BeforePost = qryOutDetailBeforePost
    OnNewRecord = qryOutDetailNewRecord
    OnPostError = qryOutDetailPostError
    SQL.Strings = (
      
        'select DOC_ID,DOC_DATE,ENTRY_ID,BATCH_AMOUNT,BATCH_PRICE,BATCH_V' +
        'ALUE,'
      
        '  OUT_AMOUNT,OUT_VALUE,BATCH_NOTE,PERIOD_ID, DOC_ID||PERIOD_ID||' +
        'ENTRY_ID KF,BRANCH_ID'
      'from sp_get_batch(:ngayxem,:wareid,:Accid,:objid,:BRANCH_ID)'
      'where BATCH_AMOUNT<>0 or BATCH_VALUE<>0'
      'Order by DOC_DATE,DOC_ID,ENTRY_ID')
    FieldOptions = []
    Left = 261
    Top = 140
    object qryBatchDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Size = 30
    end
    object qryBatchDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
    end
    object qryBatchENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
    end
    object qryBatchBATCH_AMOUNT: TIBOFloatField
      FieldName = 'BATCH_AMOUNT'
    end
    object qryBatchBATCH_PRICE: TIBOFloatField
      FieldName = 'BATCH_PRICE'
    end
    object qryBatchBATCH_VALUE: TIBOFloatField
      FieldName = 'BATCH_VALUE'
    end
    object qryBatchOUT_AMOUNT: TIBOFloatField
      FieldName = 'OUT_AMOUNT'
    end
    object qryBatchOUT_VALUE: TIBOFloatField
      FieldName = 'OUT_VALUE'
    end
    object qryBatchBATCH_NOTE: TWideStringField
      FieldName = 'BATCH_NOTE'
      Size = 255
    end
    object qryBatchPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryBatchKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Size = 42
    end
    object qryBatchBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
  end
end
