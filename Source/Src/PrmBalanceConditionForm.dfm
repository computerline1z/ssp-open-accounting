object PrmBalanceConditionFrm: TPrmBalanceConditionFrm
  Left = 388
  Top = 191
  HelpContext = 17
  BorderStyle = bsDialog
  ClientHeight = 346
  ClientWidth = 526
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
    Width = 526
    Height = 346
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      526
      346)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PARAM_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsParamCondition
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ABEGINWITH: TdxDBGridPopupColumn
        Caption = 'TK b'#7855't '#273#7847'u'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ABEGINWITH'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DBEGINWITHCloseUp
        Caption_UTF7 = 'TK b+Hq8-t +AREepw-u'
      end
      object dxDBGrid1COEFFICIENT: TdxDBGridCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COEFFICIENT'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1BALANCE_TYPE: TdxDBGridExtLookupColumn
        Caption = 'Ki'#7875'u d'#7919' li'#7879'u'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_NAME'
        HideEditCursor = True
        PopupHeight = 120
        PopupWidth = 150
        OnCloseUp = dxDBGrid1BALANCE_TYPECloseUp
        DBGridLayout = dxDBGridLayoutList1Item1
        Caption_UTF7 = 'Ki+HsM-u d+Hu8 li+Hsc-u'
      end
      object dxDBGrid1PARAM_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 318
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
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 79
      Top = 318
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
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 165
      Top = 318
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
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 241
      Top = 318
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
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 372
      Top = 318
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
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 448
      Top = 318
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
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 4
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
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
        Caption = #272'i'#7873'u ki'#7879'n d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryParamCondition: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PRMBALANCE_CONDITION'
      'WHERE'
      '   ABEGINWITH = :OLD_ABEGINWITH AND'
      '   PARAM_ID = :OLD_PARAM_ID')
    EditSQL.Strings = (
      'UPDATE PRMBALANCE_CONDITION SET'
      '   ABEGINWITH = :ABEGINWITH, /*PK*/'
      '   PARAM_ID = :PARAM_ID, /*PK*/'
      '   COEFFICIENT = :COEFFICIENT,'
      '   BALANCE_TYPE = :BALANCE_TYPE,'
      '   PARAM_NOTE = :PARAM_NOTE'
      'WHERE'
      '   ABEGINWITH = :OLD_ABEGINWITH AND'
      '   PARAM_ID = :OLD_PARAM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO PRMBALANCE_CONDITION('
      '   ABEGINWITH, /*PK*/'
      '   PARAM_ID, /*PK*/'
      '   COEFFICIENT,'
      '   BALANCE_TYPE,'
      '   PARAM_NOTE)'
      'VALUES ('
      '   :ABEGINWITH,'
      '   :PARAM_ID,'
      '   :COEFFICIENT,'
      '   :BALANCE_TYPE,'
      '   :PARAM_NOTE)')
    KeyLinks.Strings = (
      'PARAM_ID'
      'ABEGINWITH')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryParamConditionBeforeEdit
    BeforeDelete = qryParamConditionBeforeDelete
    BeforeInsert = qryParamConditionBeforeInsert
    AfterInsert = qryParamConditionAfterInsert
    BeforePost = qryParamConditionBeforePost
    OnNewRecord = qryParamConditionNewRecord
    OnPostError = qryParamConditionPostError
    OnDeleteError = qryParamConditionDeleteError
    SQL.Strings = (
      'SELECT PARAM_ID'
      '     , ABEGINWITH'
      '     , COEFFICIENT'
      '     , BALANCE_TYPE'
      '     , PARAM_NOTE'
      '     , METHOD_NAME'
      'FROM PRMBALANCE_CONDITION'
      'LEFT JOIN RPT_GETDATATYPE on (METHOD_ID=BALANCE_TYPE)'
      'where PARAM_ID=:PARAM_ID')
    FieldOptions = []
    Left = 163
    Top = 52
    object qryParamConditionPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
      Required = True
    end
    object qryParamConditionABEGINWITH: TWideStringField
      FieldName = 'ABEGINWITH'
      Required = True
      Size = 15
    end
    object qryParamConditionCOEFFICIENT: TIBOFloatField
      FieldName = 'COEFFICIENT'
      Required = True
    end
    object qryParamConditionBALANCE_TYPE: TSmallintField
      FieldName = 'BALANCE_TYPE'
      Required = True
    end
    object qryParamConditionPARAM_NOTE: TWideStringField
      FieldName = 'PARAM_NOTE'
      Size = 126
    end
    object qryParamConditionMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
  end
  object dsParamCondition: TDataSource
    DataSet = qryParamCondition
    Left = 163
    Top = 99
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsParamCondition
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsParamCondition
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsParamCondition
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsParamCondition
    end
  end
  object qryPMethod: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'METHOD_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT METHOD_ID'
      '     , METHOD_NAME'
      'FROM RPT_GETDATATYPE')
    FieldOptions = []
    Left = 213
    Top = 136
    object qryPMethodMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
      Required = True
    end
    object qryPMethodMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 320
    Top = 120
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        45020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094D4554484F445F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200A44617461536F75726365072050726D42616C616E6365436F6E64697469
        6F6E46726D2E6473504D6574686F641044656661756C74526F77486569676874
        02150F46696C7465722E43726974657269610A04000000000000000F4F707469
        6F6E734265686176696F720B0C6564676F4175746F536F72740E6564676F4472
        61675363726F6C6C136564676F456E74657253686F77456469746F7213656467
        6F496D6D656469617465456469746F720E6564676F5461625468726F7567680F
        6564676F566572745468726F75676800094F7074696F6E7344420B106564676F
        43616E63656C4F6E45786974116564676F43616E4E617669676174696F6E1165
        64676F436F6E6669726D44656C657465126564676F4C6F6164416C6C5265636F
        726473106564676F557365426F6F6B6D61726B73000B4F7074696F6E73566965
        770B0D6564676F4175746F5769647468136564676F42616E6448656164657257
        696474680D6564676F5573654269746D6170000A53686F774865616465720800
        0F546478444247726964436F6C756D6E07436F6C756D6E310942616E64496E64
        6578020008526F77496E6465780200094669656C644E616D65060B4D4554484F
        445F4E414D45000000}
    end
  end
  object dsPMethod: TDataSource
    DataSet = qryPMethod
    Left = 213
    Top = 176
  end
end
