object PromotionScaleFrm: TPromotionScaleFrm
  Left = 73
  Top = 31
  Width = 742
  Height = 542
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 734
    Height = 508
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      734
      508)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 480
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
      TabOrder = 6
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 159
      Top = 480
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
      TabOrder = 5
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 656
      Top = 480
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
      TabOrder = 8
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 578
      Top = 480
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 7
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 480
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
      TabOrder = 4
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 480
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
      TabOrder = 3
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 28
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsMaterialNorm
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHPRODUCT_ID: TdxDBGridPopupColumn
        Caption = 'H'#224'ng mua/ b'#225'n'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUCT_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHPRODUCT_IDCloseUp
        Caption_UTF7 = 'H+AOA-ng mua/ b+AOE-n'
      end
      object grdKHPROMOTION_ID: TdxDBGridPopupColumn
        Caption = 'H'#224'ng khuy'#7871'n m'#227'i'
        HeaderAlignment = taCenter
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOTION_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHPRODUCT_IDCloseUp
        Caption_UTF7 = 'H+AOA-ng khuy+Hr8-n m+AOM-i'
      end
      object grdKHMIN_AMOUNT: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng t'#7889'i thi'#7875'u'
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MIN_AMOUNT'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng t+HtE-i thi+HsM-u'
      end
      object grdKHPRODUCT_AMOUNT: TdxDBGridCalcColumn
        Caption = 'V'#7899'i s'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUCT_AMOUNT'
        Caption_UTF7 = 'V+Hts-i s+HtE l+AbAe4w-ng'
      end
      object grdKHPROMOTION_AMOUNT: TdxDBGridCalcColumn
        Caption = #272#432#7907'c khuy'#7871'n m'#227'i'
        HeaderAlignment = taCenter
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOTION_AMOUNT'
        Caption_UTF7 = '+ARABsB7j-c khuy+Hr8-n m+AOM-i'
      end
      object grdKHPROMOTION_NOTES: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOTION_NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object rbOut: TElRadioButton
      Left = 108
      Top = 3
      Width = 81
      Height = 17
      Cursor = crDefault
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'H'#224'ng b'#225'n &ra'
      TabOrder = 1
      OnClick = rbOutClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbIn: TElRadioButton
      Left = 3
      Top = 3
      Width = 102
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'H'#224'ng mua &v'#224'o'
      TabOrder = 0
      OnClick = rbOutClick
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
        object locFormItem3: TdxLayoutItem
          Caption = 'ElRadioButton2'
          ShowCaption = False
          Control = rbIn
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'ElRadioButton1'
          ShowCaption = False
          Control = rbOut
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
    Left = 388
    Top = 80
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
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsMaterialNorm
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsMaterialNorm
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsMaterialNorm
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsMaterialNorm
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
        Caption = 'Thi'#7871't l'#7853'p t'#7927' l'#7879' h'#224'ng khuy'#7871'n m'#227'i'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 104
    Top = 56
  end
  object qryPromotion: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PROMOTION_SCALE'
      'WHERE'
      '   MIN_AMOUNT = :OLD_MIN_AMOUNT AND'
      '   PRODUCT_ID = :OLD_PRODUCT_ID AND'
      '   PROMOTION_ID = :OLD_PROMOTION_ID AND'
      '   SALE_BUY = :OLD_SALE_BUY')
    EditSQL.Strings = (
      'UPDATE PROMOTION_SCALE SET'
      '   MIN_AMOUNT = :MIN_AMOUNT, /*PK*/'
      '   PRODUCT_ID = :PRODUCT_ID, /*PK*/'
      '   PROMOTION_ID = :PROMOTION_ID, /*PK*/'
      '   SALE_BUY = :SALE_BUY, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID,'
      '   PRODUCT_AMOUNT = :PRODUCT_AMOUNT,'
      '   PROMOTION_AMOUNT = :PROMOTION_AMOUNT,'
      '   PROMOTION_NOTES = :PROMOTION_NOTES'
      'WHERE'
      '   MIN_AMOUNT = :OLD_MIN_AMOUNT AND'
      '   PRODUCT_ID = :OLD_PRODUCT_ID AND'
      '   PROMOTION_ID = :OLD_PROMOTION_ID AND'
      '   SALE_BUY = :OLD_SALE_BUY')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO PROMOTION_SCALE('
      '   MIN_AMOUNT, /*PK*/'
      '   PRODUCT_ID, /*PK*/'
      '   PROMOTION_ID, /*PK*/'
      '   SALE_BUY, /*PK*/'
      '   OTYPE_ID,'
      '   PRODUCT_AMOUNT,'
      '   PROMOTION_AMOUNT,'
      '   PROMOTION_NOTES)'
      'VALUES ('
      '   :MIN_AMOUNT,'
      '   :PRODUCT_ID,'
      '   :PROMOTION_ID,'
      '   :SALE_BUY,'
      '   :OTYPE_ID,'
      '   :PRODUCT_AMOUNT,'
      '   :PROMOTION_AMOUNT,'
      '   :PROMOTION_NOTES)')
    KeyLinks.Strings = (
      'SALE_BUY'
      'PRODUCT_ID'
      'PROMOTION_ID'
      'MIN_AMOUNT')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryPromotionBeforeEdit
    BeforeDelete = qryPromotionBeforeDelete
    BeforeInsert = qryPromotionBeforeInsert
    AfterInsert = qryPromotionAfterInsert
    BeforePost = qryPromotionBeforePost
    OnFilterRecord = qryPromotionFilterRecord
    OnNewRecord = qryPromotionNewRecord
    OnPostError = qryPromotionPostError
    SQL.Strings = (
      'SELECT SALE_BUY'
      '     , PRODUCT_ID'
      '     , PROMOTION_ID'
      '     , OTYPE_ID'
      '     , PRODUCT_AMOUNT'
      '     , PROMOTION_AMOUNT'
      '     , PROMOTION_NOTES'
      '     , SALE_BUY||PRODUCT_ID||PROMOTION_ID||MIN_AMOUNT KF'
      '     , MIN_AMOUNT'
      'FROM PROMOTION_SCALE'
      'Order by PRODUCT_ID, PROMOTION_ID')
    FieldOptions = []
    Left = 140
    Top = 212
    object qryPromotionSALE_BUY: TSmallintField
      FieldName = 'SALE_BUY'
      Required = True
    end
    object qryPromotionPRODUCT_ID: TWideStringField
      FieldName = 'PRODUCT_ID'
      Required = True
      Size = 30
    end
    object qryPromotionPROMOTION_ID: TWideStringField
      FieldName = 'PROMOTION_ID'
      Required = True
      Size = 30
    end
    object qryPromotionOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryPromotionPRODUCT_AMOUNT: TIBOFloatField
      FieldName = 'PRODUCT_AMOUNT'
      Required = True
    end
    object qryPromotionPROMOTION_AMOUNT: TIBOFloatField
      FieldName = 'PROMOTION_AMOUNT'
    end
    object qryPromotionPROMOTION_NOTES: TWideStringField
      FieldName = 'PROMOTION_NOTES'
      Size = 126
    end
    object qryPromotionKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 84
    end
    object qryPromotionMIN_AMOUNT: TIBOFloatField
      FieldName = 'MIN_AMOUNT'
      Required = True
    end
  end
  object dsMaterialNorm: TDataSource
    DataSet = qryPromotion
    Left = 140
    Top = 255
  end
end
