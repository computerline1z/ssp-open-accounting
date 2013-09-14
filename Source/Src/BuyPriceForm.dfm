object BuyPriceFrm: TBuyPriceFrm
  Left = 286
  Top = 163
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
      TabOrder = 4
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
      TabOrder = 3
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
      TabOrder = 6
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
      TabOrder = 5
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
      TabOrder = 2
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
      TabOrder = 1
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 8
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = grdKHEnter
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsBuyPrice
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeColumn = grdKHChangeColumn
      Anchors = [akLeft, akTop, akRight, akBottom]
      object colMaHH: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = colMaHHCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object grdKHColumn2: TdxDBGridColumn
        Caption = 'T'#234'n h'#224'ng ho'#225' v'#7853't t'#432
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        TabStop = False
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng ho+AOE v+Hq0-t t+AbA'
      end
      object grdKHColumn3: TdxDBGridCalcColumn
        Caption = 'Gi'#225' mua'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUYPRICE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'Gi+AOE mua'
      end
      object grdKHColumn4: TdxDBGridCalcColumn
        Caption = 'Th'#7845'p nh'#7845't'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUY_MIN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'Th+HqU-p nh+HqU-t'
      end
      object grdKHColumn5: TdxDBGridCalcColumn
        Caption = 'Cao nh'#7845't'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUY_MAX'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'Cao nh+HqU-t'
      end
      object grdKHColumn6: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUYNOTES'
        Caption_UTF7 = 'Ghi ch+APo'
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
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsBuyPrice
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsBuyPrice
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBuyPrice
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBuyPrice
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
        Caption = 'Gi'#225' mua h'#224'ng h'#243'a, nguy'#234'n li'#7879'u '#273#432#7907'c duy'#7879't'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryBuyPrice: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM BUY_PRICE'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE BUY_PRICE SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BUYPRICE = :BUYPRICE,'
      '   BUYNOTES = :BUYNOTES,'
      '   BUY_MIN = :BUY_MIN,'
      '   BUY_MAX = :BUY_MAX'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO BUY_PRICE('
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BUYPRICE,'
      '   BUYNOTES,'
      '   BUY_MIN,'
      '   BUY_MAX)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :BUYPRICE,'
      '   :BUYNOTES,'
      '   :BUY_MIN,'
      '   :BUY_MAX)')
    KeyLinks.Strings = (
      'BUY_PRICE.OBJECT_ID'
      'BUY_PRICE.OTYPE_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBuyPriceBeforeEdit
    BeforeDelete = qryBuyPriceBeforeDelete
    BeforeInsert = qryBuyPriceBeforeInsert
    AfterInsert = qryBuyPriceAfterInsert
    BeforePost = qryBuyPriceBeforePost
    OnNewRecord = qryBuyPriceNewRecord
    OnPostError = qryBuyPricePostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , BUYPRICE'
      '     , BUYNOTES'
      '     , OBJECT_NAME'
      '     , BUY_MIN'
      '     , BUY_MAX'
      '     , BUY_PRICE.OBJECT_ID'
      '     , BUY_PRICE.OTYPE_ID'
      'FROM BUY_PRICE'
      'JOIN OBJECT_LIST on (BUY_PRICE.OBJECT_ID = OBJECT_LIST.OBJECT_ID'
      '  and BUY_PRICE.OTYPE_ID= OBJECT_LIST.OTYPE_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and BUY_PRICE.OTYPE_ID=2 order by BUY' +
        '_PRICE.OBJECT_ID')
    FieldOptions = []
    Left = 45
    Top = 68
    object qryBuyPricePERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBuyPriceBUYNOTES: TWideStringField
      FieldName = 'BUYNOTES'
      Size = 126
    end
    object qryBuyPriceOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryBuyPriceBUYPRICE: TIBOFloatField
      FieldName = 'BUYPRICE'
    end
    object qryBuyPriceBUY_MIN: TIBOFloatField
      FieldName = 'BUY_MIN'
    end
    object qryBuyPriceBUY_MAX: TIBOFloatField
      FieldName = 'BUY_MAX'
    end
    object qryBuyPriceOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryBuyPriceOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
  end
  object dsBuyPrice: TDataSource
    DataSet = qryBuyPrice
    Left = 45
    Top = 111
  end
end
