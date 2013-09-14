object ProductFrm: TProductFrm
  Left = 224
  Top = 103
  Width = 688
  Height = 476
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
    Width = 680
    Height = 442
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      680
      442)
    object btnClose: TElPopupButton
      Left = 602
      Top = 414
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
      Left = 526
      Top = 414
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
    object grdKH: TdxDBGrid
      Left = 5
      Top = 6
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung v'#7873' th'#224'nh ph'#7849'm'
          Width = 237
        end
        item
          Caption = 'Th'#244'ng tin '#273#227' nh'#7853'p kho '#273#7847'u k'#7923
          Width = 194
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
      ShowHint = True
      TabOrder = 0
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsProduct
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnEditing = grdKHEditing
      Anchors = [akLeft, akTop, akRight, akBottom]
      object colMaHH: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUCTION_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = colMaHHCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Caption = 'T'#234'n th'#224'nh ph'#7849'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n th+AOA-nh ph+Hqk-m'
      end
      object grdKHMAPX: TdxDBGridPopupColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAPX'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHMAPXCloseUp
        GroupIndex = 0
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object grdKHBEGIN_AMOUNT: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BEGIN_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdKHBEGIN_VALUE: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883' (K'#7871' ho'#7841'ch)'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BEGIN_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss (K+Hr8 ho+HqE-ch)'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 414
      Width = 75
      Height = 25
      Cursor = crDefault
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
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 414
      Width = 75
      Height = 25
      Cursor = crDefault
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
    object ElPopupButton3: TElPopupButton
      Left = 165
      Top = 414
      Width = 75
      Height = 25
      Cursor = crDefault
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
    object ElPopupButton4: TElPopupButton
      Left = 241
      Top = 414
      Width = 75
      Height = 25
      Cursor = crDefault
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
        object locFormIns: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormDel: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormPost: TdxLayoutItem
          Caption = 'ElPopupButton3'
          Offsets.Left = 10
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormCancel: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
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
    Left = 388
    Top = 80
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
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
        Caption = 
          'C'#225'c s'#7843'n ph'#7849'm '#273#227' nh'#7853'p kho '#7903' c'#225'c k'#7923' tr'#432#7899'c , nh'#432'ng ch'#432'a t'#237'nh gi'#225' th' +
          #224'nh, chuy'#7875'n sang '#273#7847'u k'#7923' n'#224'y'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 352
    Top = 72
  end
  object qryProduct: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\SSP\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PRODUCTION_INFO'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   PRODUCTION_ID = :OLD_PRODUCTION_ID AND'
      '   PRODUCTION_TYPE = :OLD_PRODUCTION_TYPE')
    EditSQL.Strings = (
      'UPDATE PRODUCTION_INFO SET'
      '   MALOAI = :MALOAI, /*PK*/'
      '   MAPX = :MAPX, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   PRODUCTION_ID = :PRODUCTION_ID, /*PK*/'
      '   PRODUCTION_TYPE = :PRODUCTION_TYPE, /*PK*/'
      '   BEGIN_AMOUNT = :BEGIN_AMOUNT,'
      '   BEGIN_VALUE = :BEGIN_VALUE'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   PRODUCTION_ID = :OLD_PRODUCTION_ID AND'
      '   PRODUCTION_TYPE = :OLD_PRODUCTION_TYPE')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTION_INFO('
      '   MALOAI, /*PK*/'
      '   MAPX, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   PRODUCTION_ID, /*PK*/'
      '   PRODUCTION_TYPE, /*PK*/'
      '   BEGIN_AMOUNT,'
      '   BEGIN_VALUE,'
      '   PRODUCTION_AMOUNT,'
      '   INPLANVALUE)'
      'VALUES ('
      '   :MALOAI,'
      '   :MAPX,'
      '   :PERIOD_ID,'
      '   :PRODUCTION_ID,'
      '   :PRODUCTION_TYPE,'
      '   :BEGIN_AMOUNT,'
      '   :BEGIN_VALUE,'
      '   :PRODUCTION_AMOUNT,'
      '   :INPLANVALUE)')
    KeyLinks.Strings = (
      'PERIOD_ID'
      'PRODUCTION_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryProductBeforeEdit
    BeforeDelete = qryProductBeforeDelete
    BeforeInsert = qryProductBeforeInsert
    AfterInsert = qryProductAfterInsert
    BeforePost = qryProductBeforePost
    OnNewRecord = qryProductNewRecord
    OnPostError = qryProductPostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , MAPX'
      '     , MALOAI'
      '     , PRODUCTION_ID'
      '     , PRODUCTION_TYPE'
      '     , BEGIN_AMOUNT'
      '     , BEGIN_VALUE'
      '     , PRODUCTION_AMOUNT'
      '     , INPLANVALUE'
      '     , OBJECT_NAME'
      'FROM PRODUCTION_INFO'
      
        'JOIN OBJECT_LIST on (PRODUCTION_INFO.PRODUCTION_ID=OBJECT_LIST.O' +
        'BJECT_ID and OTYPE_ID=2)'
      'where PERIOD_ID=:PERIOD_ID and MALOAI=6 order by PRODUCTION_ID')
    FieldOptions = []
    Left = 133
    Top = 188
    object qryProductPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryProductPRODUCTION_ID: TWideStringField
      FieldName = 'PRODUCTION_ID'
      Required = True
      OnChange = qryProductPRODUCTION_IDChange
      Size = 30
    end
    object qryProductPRODUCTION_AMOUNT: TIBOFloatField
      FieldName = 'PRODUCTION_AMOUNT'
    end
    object qryProductOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryProductMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      OnChange = qryProductMAPXChange
      Size = 30
    end
    object qryProductMALOAI: TSmallintField
      FieldName = 'MALOAI'
      Required = True
    end
    object qryProductINPLANVALUE: TIBOFloatField
      FieldName = 'INPLANVALUE'
    end
    object qryProductBEGIN_AMOUNT: TIBOFloatField
      FieldName = 'BEGIN_AMOUNT'
    end
    object qryProductBEGIN_VALUE: TIBOFloatField
      FieldName = 'BEGIN_VALUE'
    end
    object qryProductPRODUCTION_TYPE: TSmallintField
      FieldName = 'PRODUCTION_TYPE'
      Required = True
    end
  end
  object dsProduct: TDataSource
    DataSet = qryProduct
    Left = 133
    Top = 233
  end
  object ActionList1: TActionList
    Left = 376
    Top = 128
    object Action1: TAction
      Caption = 'Action1'
    end
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acIns'
      DataSource = dsProduct
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDel'
      DataSource = dsProduct
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsProduct
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsProduct
    end
  end
end
