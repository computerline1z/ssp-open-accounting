object CHITIETCHIPHIFrm: TCHITIETCHIPHIFrm
  Left = 212
  Top = 166
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
      Left = 547
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
    object grdKH: TdxDBGrid
      Left = 5
      Top = 6
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'grdKHGTPHANBO'
              SummaryField = 'GTPHANBO'
              SummaryFormat = '#.0'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdKHSHTK'
              SummaryField = 'SHTK'
              SummaryType = cstCount
            end
            item
              ColumnName = 'grdKHGTDAUKY'
              SummaryField = 'GTDAUKY'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdKHGTCUOIKY'
              SummaryField = 'GTCUOIKY'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdKHTIEUHAO'
              SummaryField = 'TIEUHAO'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end>
          Name = 'grdKHSummaryGroup2'
        end>
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
      DataSource = dsHESO
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowRowFooter = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHSHTK: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        SummaryFooterType = cstCount
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHSHTKCloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object grdKHACCOUNT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n chi ph'#237
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 199
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n chi ph+AO0'
      end
      object grdKHOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n qui tr'#236'nh'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 310
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n qui tr+AOw-nh'
      end
      object grdKHMAPX: TdxDBGridPopupColumn
        Caption = 'M'#227' '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAPX'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHMAPXCloseUp
        Caption_UTF7 = 'M+AOM +AREe0Q-i t+AbAe4w-ng'
      end
      object grdKHQUITRINH: TdxDBGridMaskColumn
        Caption = #272#7889'i t'#432#7907'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUITRINH'
        GroupIndex = 0
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object grdKHGTDAUKY: TdxDBGridMaskColumn
        Caption = #272#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTDAUKY'
        SummaryFooterType = cstSum
        Caption_UTF7 = '+ARAepw-u k+HvM'
      end
      object grdKHGTPHANBO: TdxDBGridCalcColumn
        Caption = 'Trong k'#7923
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTPHANBO'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Trong k+HvM'
      end
      object grdKHGTCUOIKY: TdxDBGridMaskColumn
        Caption = 'Cu'#7889'i k'#7923
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTCUOIKY'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Cu+HtE-i k+HvM'
      end
      object grdKHTIEUHAO: TdxDBGridColumn
        Caption = 'Ti'#234'u hao'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEUHAO'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Ti+AOo-u hao'
      end
    end
    object btnCancel: TElPopupButton
      Left = 231
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
    object btnDel: TElPopupButton
      Left = 79
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
    object btnPost: TElPopupButton
      Left = 155
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
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem3: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btnIns
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btnDel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btnPost
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btnCancel
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
        Caption = 'Chi ti'#7871't chi ph'#237' gi'#225' th'#224'nh nh'#243'm theo chi ph'#237
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryHESO: TIBOQuery
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
      'DELETE FROM GIATRI_PHANBO'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   SHTK = :OLD_SHTK')
    EditSQL.Strings = (
      'UPDATE GIATRI_PHANBO SET'
      '   MALOAI = :MALOAI, /*PK*/'
      '   MAPX = :MAPX, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   SHTK = :SHTK, /*PK*/'
      '   GTPHANBO = :GTPHANBO,'
      '   GTDAUKY = :GTDAUKY,'
      '   GTCUOIKY = :GTCUOIKY'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   SHTK = :OLD_SHTK')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO GIATRI_PHANBO('
      '   MALOAI, /*PK*/'
      '   MAPX, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   SHTK, /*PK*/'
      '   GTPHANBO,'
      '   GTDAUKY,'
      '   GTCUOIKY)'
      'VALUES ('
      '   :MALOAI,'
      '   :MAPX,'
      '   :PERIOD_ID,'
      '   :SHTK,'
      '   :GTPHANBO,'
      '   :GTDAUKY,'
      '   :GTCUOIKY)')
    KeyLinks.Strings = (
      'PERIOD_ID'
      'MAPX'
      'SHTK')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryHESOBeforeEdit
    BeforeDelete = qryHESOBeforeDelete
    BeforeInsert = qryHESOBeforeInsert
    AfterInsert = qryHESOAfterInsert
    OnCalcFields = qryHESOCalcFields
    OnNewRecord = qryHESONewRecord
    OnPostError = qryHESOPostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , MAPX'
      '     , MALOAI'
      '     , SHTK'
      '     , MAPX||SHTK||PERIOD_ID KF'
      '     , GTPHANBO'
      '     , OBJECT_NAME'
      '     , ACCOUNT_NAME'
      '     , MAPX||'#39' ('#39'||OBJECT_NAME||'#39')'#39' QUITRINH'
      '     , GTDAUKY'
      '     , GTCUOIKY'
      'FROM GIATRI_PHANBO'
      
        'JOIN OBJECT_LIST on (MAPX=OBJECT_ID and MALOAI=OTYPE_ID and OTYP' +
        'E_ID=6)'
      'JOIN ACCOUNT_LIST on (SHTK=ACCOUNT_ID)'
      'where PERIOD_ID=:PERIOD_ID')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryHESOPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryHESOMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      OnChange = qryHESOMAPXChange
      Size = 30
    end
    object qryHESOMALOAI: TSmallintField
      FieldName = 'MALOAI'
      Required = True
    end
    object qryHESOSHTK: TWideStringField
      FieldName = 'SHTK'
      Required = True
      Size = 15
    end
    object qryHESOOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryHESOGTPHANBO: TIBOFloatField
      FieldName = 'GTPHANBO'
    end
    object qryHESOACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryHESOQUITRINH: TWideStringField
      FieldName = 'QUITRINH'
      ReadOnly = True
      Size = 158
    end
    object qryHESOGTDAUKY: TIBOFloatField
      FieldName = 'GTDAUKY'
    end
    object qryHESOGTCUOIKY: TIBOFloatField
      FieldName = 'GTCUOIKY'
    end
    object qryHESOTIEUHAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEUHAO'
      Calculated = True
    end
    object qryHESOKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 51
    end
  end
  object dsHESO: TDataSource
    DataSet = qryHESO
    Left = 326
    Top = 287
  end
  object ActionList1: TActionList
    Left = 420
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsHESO
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 16469
      DataSource = dsHESO
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsHESO
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsHESO
    end
  end
end
