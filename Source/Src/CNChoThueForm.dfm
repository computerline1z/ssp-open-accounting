object CNChoThueFrm: TCNChoThueFrm
  Left = 79
  Top = 83
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
      Left = 228
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
      TabOrder = 4
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 153
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
      TabOrder = 3
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
    object btnIns: TElPopupButton
      Left = 3
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdBatch: TdxDBGrid
      Left = 5
      Top = 5
      Width = 641
      Height = 355
      Bands = <
        item
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
      DataSource = dsRentDebt
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
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdBatchMASO_KH: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        Caption = 'Kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO_KH'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBatchMASO_KHCloseUp
        OnInitPopup = grdBatchMASO_KHInitPopup
        Caption_UTF7 = 'Kh+AOE-ch h+AOA-ng'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object grdBatchMASO_CT: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        Caption = 'C'#244'ng tr'#236'nh'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_NAME'
        PopupControl = PopupFrm.PnlWork
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBatchMASO_CTCloseUp
        Caption_UTF7 = 'C+APQ-ng tr+AOw-nh'
      end
      object grdBatchMASO_HH: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        Caption = 'M'#7863't h'#224'ng'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO_HH'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBatchMASO_HHCloseUp
        OnInitPopup = grdBatchMASO_HHInitPopup
        Caption_UTF7 = 'M+Hrc-t h+AOA-ng'
      end
      object grdBatchSHTK: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBatchSHTKCloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object grdBatchSLTHUEDK: TdxDBGridCalcColumn
        Alignment = taRightJustify
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SLTHUEDK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdBatchGTTHUEDK: TdxDBGridCalcColumn
        Alignment = taRightJustify
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTTHUEDK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
    end
    object ElPopupButton2: TElPopupButton
      Left = 78
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
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = acDelete
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
        Control = grdBatch
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
        object locFormItem11: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
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
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
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
        Caption = 'T'#236'nh h'#236'nh cho thu'#234' h'#224'ng '#273#7847'u k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 96
  end
  object qryRentDebt: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Projects\AccFull\db\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM CONNOCHOTHUE'
      'WHERE'
      '   MASO_CT = :OLD_MASO_CT AND'
      '   MASO_HH = :OLD_MASO_HH AND'
      '   MASO_KH = :OLD_MASO_KH AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   SHTK = :OLD_SHTK')
    EditSQL.Strings = (
      'UPDATE CONNOCHOTHUE SET'
      '   MASO_CT = :MASO_CT, /*PK*/'
      '   MASO_HH = :MASO_HH, /*PK*/'
      '   MASO_KH = :MASO_KH, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   SHTK = :SHTK, /*PK*/'
      '   LOAI_KH = :LOAI_KH,'
      '   LOAI_HH = :LOAI_HH,'
      '   SLTHUEDK = :SLTHUEDK,'
      '   GTTHUEDK = :GTTHUEDK'
      'WHERE'
      '   MASO_CT = :OLD_MASO_CT AND'
      '   MASO_HH = :OLD_MASO_HH AND'
      '   MASO_KH = :OLD_MASO_KH AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   SHTK = :OLD_SHTK')
    Filtered = True
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO CONNOCHOTHUE('
      '   MASO_CT, /*PK*/'
      '   MASO_HH, /*PK*/'
      '   MASO_KH, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   SHTK, /*PK*/'
      '   LOAI_KH,'
      '   LOAI_HH,'
      '   SLTHUEDK,'
      '   GTTHUEDK)'
      'VALUES ('
      '   :MASO_CT,'
      '   :MASO_HH,'
      '   :MASO_KH,'
      '   :PERIOD_ID,'
      '   :SHTK,'
      '   :LOAI_KH,'
      '   :LOAI_HH,'
      '   :SLTHUEDK,'
      '   :GTTHUEDK)')
    KeyLinks.Strings = (
      'PERIOD_ID'
      'MASO_CT'
      'MASO_KH'
      'MASO_HH'
      'SHTK')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryRentDebtBeforeEdit
    BeforeDelete = qryRentDebtBeforeDelete
    BeforeInsert = qryRentDebtBeforeInsert
    AfterInsert = qryRentDebtAfterInsert
    BeforePost = qryRentDebtBeforePost
    OnNewRecord = qryRentDebtNewRecord
    OnPostError = qryRentDebtPostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , MASO_CT'
      '     , MASO_KH'
      '     , MASO_HH'
      '     , SHTK'
      '     , LOAI_KH'
      '     , LOAI_HH'
      '     , SLTHUEDK'
      '     , GTTHUEDK'
      '     , MASO_CT||MASO_KH||MASO_HH||SHTK KF'
      '     , WORK_NAME'
      'FROM CONNOCHOTHUE'
      'JOIN WORK_LIST on (WORK_LIST.WORK_ID=CONNOCHOTHUE.MASO_CT)'
      'where PERIOD_ID=:PERIOD_ID'
      'order by MASO_KH,MASO_CT,MASO_HH,SHTK')
    FieldOptions = []
    Left = 160
    Top = 132
    object qryRentDebtPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryRentDebtMASO_KH: TWideStringField
      FieldName = 'MASO_KH'
      Required = True
      Size = 30
    end
    object qryRentDebtMASO_HH: TWideStringField
      FieldName = 'MASO_HH'
      Required = True
      Size = 30
    end
    object qryRentDebtSHTK: TWideStringField
      FieldName = 'SHTK'
      Required = True
      Size = 15
    end
    object qryRentDebtLOAI_KH: TSmallintField
      FieldName = 'LOAI_KH'
      Required = True
    end
    object qryRentDebtLOAI_HH: TSmallintField
      FieldName = 'LOAI_HH'
      Required = True
    end
    object qryRentDebtSLTHUEDK: TIBOFloatField
      FieldName = 'SLTHUEDK'
    end
    object qryRentDebtGTTHUEDK: TIBOFloatField
      FieldName = 'GTTHUEDK'
    end
    object qryRentDebtKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 105
    end
    object qryRentDebtWORK_NAME: TWideStringField
      FieldName = 'WORK_NAME'
      OnChange = qryRentDebtWORK_NAMEChange
      Size = 126
    end
    object qryRentDebtMASO_CT: TWideStringField
      FieldName = 'MASO_CT'
      Required = True
      Size = 15
    end
  end
  object dsRentDebt: TDataSource
    DataSet = qryRentDebt
    Left = 160
    Top = 161
  end
end
