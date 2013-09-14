object TonghopCPGTFrm: TTonghopCPGTFrm
  Left = 187
  Top = 96
  Width = 709
  Height = 515
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
    Width = 701
    Height = 481
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      701
      481)
    object btnCancel: TElPopupButton
      Left = 246
      Top = 453
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
      Left = 165
      Top = 453
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
    object btnClose: TElPopupButton
      Left = 623
      Top = 453
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
      Left = 542
      Top = 453
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
      Left = 84
      Top = 453
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
      Top = 453
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
      Top = 11
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = #272#7889'i t'#432#7907'ng t'#7853'p h'#7907'p chi ph'#237
          Width = 160
        end
        item
          Caption = #272#7847'u k'#7923
          Width = 130
        end
        item
          Caption = 'Ph'#225't sinh'
          Width = 128
        end
        item
          Caption = 'D'#7903' dang'
          Width = 128
        end
        item
          Caption = 'Ti'#234'u hao'
          Width = 133
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'MAPX'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsTHCPGT
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHMAPX: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAPX'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHMAPXCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object grdKHOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object grdKHSUBINFO_1: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_1'
      end
      object grdKHSUBINFO_2: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_2'
      end
      object grdKHCPNC_DK: TdxDBGridCalcColumn
        Caption = 'Nh'#226'n c'#244'ng'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CPNC_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nh+AOI-n c+APQ-ng'
      end
      object grdKHCPNL_DK: TdxDBGridMaskColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CPNL_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object grdKHCPSXC_DK: TdxDBGridCalcColumn
        Caption = 'SX chung'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CPSXC_DK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
      end
      object grdKHCPNC_PS: TdxDBGridCalcColumn
        Caption = 'Nh'#226'n c'#244'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CPNC_PS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nh+AOI-n c+APQ-ng'
      end
      object grdKHCPNL_PS: TdxDBGridMaskColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CPNL_PS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object grdKHCPNC_CK: TdxDBGridCalcColumn
        Caption = 'Nh'#226'n c'#244'ng'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CPNC_CK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nh+AOI-n c+APQ-ng'
      end
      object grdKHCPSXC_PS: TdxDBGridCalcColumn
        Caption = 'SX chung'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CPSXC_PS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
      end
      object grdKHCPNL_CK: TdxDBGridMaskColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CPNL_CK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object grdKHCPNC_TH: TdxDBGridCalcColumn
        Caption = 'Nh'#226'n c'#244'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 4
        RowIndex = 0
        FieldName = 'CPNC_TH'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nh+AOI-n c+APQ-ng'
      end
      object grdKHCPSXC_CK: TdxDBGridCalcColumn
        Caption = 'SX chung'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CPSXC_CK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
      end
      object grdKHCPNL_TH: TdxDBGridMaskColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 4
        RowIndex = 0
        FieldName = 'CPNL_TH'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object grdKHCPSXC_TH: TdxDBGridCalcColumn
        Caption = 'SX chung'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 4
        RowIndex = 0
        FieldName = 'CPSXC_TH'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
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
      DataSource = dsTHCPGT
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 16469
      DataSource = dsTHCPGT
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsTHCPGT
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsTHCPGT
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
        Caption = 'B'#7843'ng k'#234' t'#7893'ng h'#7907'p c'#225'c chi ph'#237' v'#7873' gi'#225' th'#224'nh trong k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryTHCPGT: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING - Thin' +
      'h .GDB'
    DeleteSQL.Strings = (
      'DELETE FROM TONGHOPCPGT'
      'WHERE  PERIOD_ID=:OLD_PERIOD_ID'
      '   and MAPX=:OLD_MAPX'
      '   and MALOAI=:OLD_MALOAI')
    EditSQL.Strings = (
      'UPDATE TONGHOPCPGT SET'
      '   PERIOD_ID = :PERIOD_ID,'
      '   MAPX = :MAPX,'
      '   MALOAI = :MALOAI,'
      '   CPNC_DK = :CPNC_DK,'
      '   CPSXC_DK = :CPSXC_DK,'
      '   CPNC_PS = :CPNC_PS,'
      '   CPSXC_PS = :CPSXC_PS,'
      '   CPNC_CK = :CPNC_CK,'
      '   CPSXC_CK = :CPSXC_CK'
      'WHERE   PERIOD_ID=:OLD_PERIOD_ID'
      '   and MAPX=:OLD_MAPX'
      '   and MALOAI=:OLD_MALOAI')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO TONGHOPCPGT('
      '   PERIOD_ID,'
      '   MAPX,'
      '   MALOAI,'
      '   CPNC_DK,'
      '   CPSXC_DK,'
      '   CPNC_PS,'
      '   CPSXC_PS,'
      '   CPNC_CK,'
      '   CPSXC_CK)'
      'VALUES ('
      '   :PERIOD_ID,'
      '   :MAPX,'
      '   :MALOAI,'
      '   :CPNC_DK,'
      '   :CPSXC_DK,'
      '   :CPNC_PS,'
      '   :CPSXC_PS,'
      '   :CPNC_CK,'
      '   :CPSXC_CK)')
    KeyLinks.Strings = (
      'PERIOD_ID'
      'MAPX'
      'MALOAI')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryTHCPGTBeforeEdit
    BeforeDelete = qryTHCPGTBeforeDelete
    BeforeInsert = qryTHCPGTBeforeInsert
    AfterInsert = qryTHCPGTAfterInsert
    BeforePost = qryTHCPGTBeforePost
    OnNewRecord = qryTHCPGTNewRecord
    OnPostError = qryTHCPGTPostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , MAPX'
      '     , MALOAI'
      '     , CPNC_DK'
      '     , CPSXC_DK'
      '     , CPNC_PS'
      '     , CPSXC_PS'
      '     , CPNC_TH'
      '     , CPSXC_TH'
      '     , CPNC_CK'
      '     , CPSXC_CK'
      '     , CPNL_TH'
      '     , CPNL_CK'
      '     , CPNL_DK'
      '     , CPNL_PS'
      '     , OBJECT_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      'FROM SP_TONGHOPCPGT(:KYHT,:BRANCH_ID)'
      
        'JOIN OBJECT_LIST on (OBJECT_ID=MAPX and OTYPE_ID=MALOAI and OTYP' +
        'E_ID=6)')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryTHCPGTPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryTHCPGTMAPX: TWideStringField
      FieldName = 'MAPX'
      OnChange = qryTHCPGTMAPXChange
      Size = 30
    end
    object qryTHCPGTMALOAI: TSmallintField
      FieldName = 'MALOAI'
    end
    object qryTHCPGTCPNC_DK: TIBOFloatField
      FieldName = 'CPNC_DK'
    end
    object qryTHCPGTCPSXC_DK: TIBOFloatField
      FieldName = 'CPSXC_DK'
    end
    object qryTHCPGTCPNC_PS: TIBOFloatField
      FieldName = 'CPNC_PS'
    end
    object qryTHCPGTCPSXC_PS: TIBOFloatField
      FieldName = 'CPSXC_PS'
    end
    object qryTHCPGTCPNC_TH: TIBOFloatField
      FieldName = 'CPNC_TH'
    end
    object qryTHCPGTCPSXC_TH: TIBOFloatField
      FieldName = 'CPSXC_TH'
    end
    object qryTHCPGTCPNC_CK: TIBOFloatField
      FieldName = 'CPNC_CK'
    end
    object qryTHCPGTCPSXC_CK: TIBOFloatField
      FieldName = 'CPSXC_CK'
    end
    object qryTHCPGTCPNL_TH: TIBOFloatField
      FieldName = 'CPNL_TH'
    end
    object qryTHCPGTCPNL_CK: TIBOFloatField
      FieldName = 'CPNL_CK'
    end
    object qryTHCPGTCPNL_DK: TIBOFloatField
      FieldName = 'CPNL_DK'
    end
    object qryTHCPGTCPNL_PS: TIBOFloatField
      FieldName = 'CPNL_PS'
    end
    object qryTHCPGTOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryTHCPGTSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryTHCPGTSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
  end
  object dsTHCPGT: TDataSource
    DataSet = qryTHCPGT
    Left = 326
    Top = 287
  end
end
