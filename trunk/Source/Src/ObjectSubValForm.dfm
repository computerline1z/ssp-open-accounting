object ObjectSubValFrm: TObjectSubValFrm
  Left = 234
  Top = 188
  Width = 619
  Height = 445
  HelpContext = 13
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
    Width = 611
    Height = 411
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object TntBitBtn3: TElPopupButton
      Left = 3
      Top = 383
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 1
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 79
      Top = 383
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 2
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 457
      Top = 383
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 3
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 533
      Top = 383
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 4
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdValue: TdxDBGrid
      Left = 5
      Top = 5
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SUBINFO_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = grdValueKeyDown
      DataSource = dsSubValue
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object grdValueSUBINFO_ID: TdxDBGridColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_ID'
      end
      object grdValueSUBINFO_NAME: TdxDBGridColumn
        Caption = 'T'#234'n th'#244'ng s'#7889
        HeaderAlignment = taCenter
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_NAME'
        Caption_UTF7 = 'T+AOo-n th+APQ-ng s+HtE'
      end
      object grdValueSTRING_VALUE: TdxDBGridColumn
        Caption = 'Gi'#225' tr'#7883' chu'#7895'i'
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STRING_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss chu+Htc-i'
      end
      object grdValueNUMBER_VALUE: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883' s'#7889
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMBER_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss s+HtE'
      end
      object grdValueDATE_VALUE: TdxDBGridDateColumn
        Caption = 'Gi'#225' tr'#7883' ng'#224'y'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATE_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss ng+AOA-y'
      end
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
        Control = grdValue
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem4: TdxLayoutItem
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
    Left = 340
    Top = 52
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
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'C'#225'c gi'#225' tr'#7883' b'#7893' sung c'#7911'a m'#7897't '#273#7889'i t'#432#7907'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 40
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsSubValue
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsSubValue
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsSubValue
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsSubValue
    end
  end
  object qrySubValue: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Ketoan\Acc50\DB\accounting.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'OTYPE_ID'
      'SUBINFO_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qrySubValueBeforeEdit
    OnPostError = qrySubValuePostError
    SQL.Strings = (
      'SELECT A.SUBINFO_ID'
      '     , A.OTYPE_ID '
      '     , SUBINFO_NAME'
      '     , SUBINFO_DATATYPE'
      '     , OBJECT_ID'
      '     , B.SUBINFO_ID INFO_ID'
      '     , B.OTYPE_ID OTYPE'
      '     , STRING_VALUE'
      '     , NUMBER_VALUE'
      '     , DATE_VALUE'
      'FROM OBJECT_SUBINFO A'
      
        'LEFT JOIN OBJECT_SUBVALUE B On (A.SUBINFO_ID=B.SUBINFO_ID and A.' +
        'OTYPE_ID=B.OTYPE_ID'
      '     and OBJECT_ID=:OBJECT_ID)'
      'where A.OTYPE_ID=:OTYPE_ID')
    FieldOptions = []
    Left = 173
    Top = 94
    object qrySubValueSUBINFO_NAME: TWideStringField
      FieldName = 'SUBINFO_NAME'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrySubValueSUBINFO_DATATYPE: TSmallintField
      FieldName = 'SUBINFO_DATATYPE'
      ReadOnly = True
    end
    object qrySubValueOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      ReadOnly = True
      Size = 30
    end
    object qrySubValueOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      ReadOnly = True
      Required = True
    end
    object qrySubValueSUBINFO_ID: TSmallintField
      FieldName = 'SUBINFO_ID'
      ReadOnly = True
      Required = True
    end
    object qrySubValueSTRING_VALUE: TWideStringField
      FieldName = 'STRING_VALUE'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE: TIBOFloatField
      FieldName = 'NUMBER_VALUE'
    end
    object qrySubValueDATE_VALUE: TDateTimeField
      FieldName = 'DATE_VALUE'
    end
    object qrySubValueINFO_ID: TSmallintField
      FieldName = 'INFO_ID'
      ReadOnly = True
    end
    object qrySubValueOTYPE: TSmallintField
      FieldName = 'OTYPE'
      ReadOnly = True
    end
  end
  object dsSubValue: TDataSource
    DataSet = qrySubValue
    Left = 173
    Top = 152
  end
end
