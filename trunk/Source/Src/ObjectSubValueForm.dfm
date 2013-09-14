object ObjectSubValueFrm: TObjectSubValueFrm
  Left = 314
  Top = 286
  Width = 497
  Height = 365
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
    Width = 489
    Height = 331
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object TntBitBtn3: TElPopupButton
      Left = 13
      Top = 303
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
      Left = 89
      Top = 303
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
      Left = 335
      Top = 303
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
      Left = 411
      Top = 303
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
    object Insp: TdxDBInspector
      Left = 5
      Top = 5
      Width = 150
      Height = 246
      BorderStyle = bsNone
      DataSource = dsSubValue
      DefaultFields = False
      TabOrder = 0
      DividerPos = 75
      object InspSTRING_VALUE1: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE1'
      end
      object InspDATE_VALUE1: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE1'
      end
      object InspSTRING_VALUE2: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE2'
      end
      object InspDATE_VALUE2: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE2'
      end
      object InspSTRING_VALUE3: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE3'
      end
      object InspDATE_VALUE3: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE3'
      end
      object InspSTRING_VALUE4: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE4'
      end
      object InspNUMBER_VALUE4: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE4'
      end
      object InspDATE_VALUE4: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE4'
      end
      object InspSTRING_VALUE5: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE5'
      end
      object InspNUMBER_VALUE5: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE5'
      end
      object InspDATE_VALUE5: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE5'
      end
      object InspSTRING_VALUE6: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE6'
      end
      object InspNUMBER_VALUE6: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE6'
      end
      object InspDATE_VALUE6: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE6'
      end
      object InspSTRING_VALUE7: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE7'
      end
      object InspNUMBER_VALUE7: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE7'
      end
      object InspDATE_VALUE7: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE7'
      end
      object InspSTRING_VALUE8: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE8'
      end
      object InspNUMBER_VALUE8: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE8'
      end
      object InspDATE_VALUE8: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE8'
      end
      object InspSTRING_VALUE9: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE9'
      end
      object InspNUMBER_VALUE9: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE9'
      end
      object InspDATE_VALUE9: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE9'
      end
      object InspSTRING_VALUE10: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE10'
      end
      object InspNUMBER_VALUE10: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE10'
      end
      object InspDATE_VALUE10: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE10'
      end
      object InspSTRING_VALUE11: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE11'
      end
      object InspNUMBER_VALUE11: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE11'
      end
      object InspDATE_VALUE11: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE11'
      end
      object InspSTRING_VALUE12: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE12'
      end
      object InspNUMBER_VALUE12: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE12'
      end
      object InspDATE_VALUE12: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE12'
      end
      object InspSTRING_VALUE13: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE13'
      end
      object InspNUMBER_VALUE13: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE13'
      end
      object InspDATE_VALUE13: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE13'
      end
      object InspSTRING_VALUE14: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE14'
      end
      object InspNUMBER_VALUE14: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE14'
      end
      object InspDATE_VALUE14: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE14'
      end
      object InspSTRING_VALUE15: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE15'
      end
      object InspNUMBER_VALUE15: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE15'
      end
      object InspDATE_VALUE15: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE15'
      end
      object InspSTRING_VALUE16: TdxInspectorDBRow
        Visible = False
        FieldName = 'STRING_VALUE16'
      end
      object InspNUMBER_VALUE16: TdxInspectorDBMaskRow
        Visible = False
        FieldName = 'NUMBER_VALUE16'
      end
      object InspDATE_VALUE16: TdxInspectorDBDateRow
        Visible = False
        FieldName = 'DATE_VALUE16'
      end
      object InspNUMBER_VALUE1: TdxInspectorDBCalcRow
        Visible = False
        FieldName = 'NUMBER_VALUE1'
      end
      object InspNUMBER_VALUE2: TdxInspectorDBCalcRow
        Visible = False
        FieldName = 'NUMBER_VALUE2'
      end
      object InspNUMBER_VALUE3: TdxInspectorDBCalcRow
        Visible = False
        FieldName = 'NUMBER_VALUE3'
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBInspector1'
        ShowCaption = False
        Control = Insp
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
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
        Name = 'OID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qrySubValueBeforeEdit
    OnPostError = qrySubValuePostError
    SQL.Strings = (
      'SELECT *'
      'FROM SP_GET_OBJSUB_INFO(:OID,:OTYPE)')
    FieldOptions = []
    Left = 173
    Top = 94
    object qrySubValueSTRING_VALUE1: TWideStringField
      FieldName = 'STRING_VALUE1'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE1: TIBOFloatField
      FieldName = 'NUMBER_VALUE1'
    end
    object qrySubValueDATE_VALUE1: TDateTimeField
      FieldName = 'DATE_VALUE1'
    end
    object qrySubValueSTRING_VALUE2: TWideStringField
      FieldName = 'STRING_VALUE2'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE2: TIBOFloatField
      FieldName = 'NUMBER_VALUE2'
    end
    object qrySubValueDATE_VALUE2: TDateTimeField
      FieldName = 'DATE_VALUE2'
    end
    object qrySubValueSTRING_VALUE3: TWideStringField
      FieldName = 'STRING_VALUE3'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE3: TIBOFloatField
      FieldName = 'NUMBER_VALUE3'
    end
    object qrySubValueDATE_VALUE3: TDateTimeField
      FieldName = 'DATE_VALUE3'
    end
    object qrySubValueSTRING_VALUE4: TWideStringField
      FieldName = 'STRING_VALUE4'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE4: TIBOFloatField
      FieldName = 'NUMBER_VALUE4'
    end
    object qrySubValueDATE_VALUE4: TDateTimeField
      FieldName = 'DATE_VALUE4'
    end
    object qrySubValueSTRING_VALUE5: TWideStringField
      FieldName = 'STRING_VALUE5'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE5: TIBOFloatField
      FieldName = 'NUMBER_VALUE5'
    end
    object qrySubValueDATE_VALUE5: TDateTimeField
      FieldName = 'DATE_VALUE5'
    end
    object qrySubValueSTRING_VALUE6: TWideStringField
      FieldName = 'STRING_VALUE6'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE6: TIBOFloatField
      FieldName = 'NUMBER_VALUE6'
    end
    object qrySubValueDATE_VALUE6: TDateTimeField
      FieldName = 'DATE_VALUE6'
    end
    object qrySubValueSTRING_VALUE7: TWideStringField
      FieldName = 'STRING_VALUE7'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE7: TIBOFloatField
      FieldName = 'NUMBER_VALUE7'
    end
    object qrySubValueDATE_VALUE7: TDateTimeField
      FieldName = 'DATE_VALUE7'
    end
    object qrySubValueSTRING_VALUE8: TWideStringField
      FieldName = 'STRING_VALUE8'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE8: TIBOFloatField
      FieldName = 'NUMBER_VALUE8'
    end
    object qrySubValueDATE_VALUE8: TDateTimeField
      FieldName = 'DATE_VALUE8'
    end
    object qrySubValueSTRING_VALUE9: TWideStringField
      FieldName = 'STRING_VALUE9'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE9: TIBOFloatField
      FieldName = 'NUMBER_VALUE9'
    end
    object qrySubValueDATE_VALUE9: TDateTimeField
      FieldName = 'DATE_VALUE9'
    end
    object qrySubValueSTRING_VALUE10: TWideStringField
      FieldName = 'STRING_VALUE10'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE10: TIBOFloatField
      FieldName = 'NUMBER_VALUE10'
    end
    object qrySubValueDATE_VALUE10: TDateTimeField
      FieldName = 'DATE_VALUE10'
    end
    object qrySubValueSTRING_VALUE11: TWideStringField
      FieldName = 'STRING_VALUE11'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE11: TIBOFloatField
      FieldName = 'NUMBER_VALUE11'
    end
    object qrySubValueDATE_VALUE11: TDateTimeField
      FieldName = 'DATE_VALUE11'
    end
    object qrySubValueSTRING_VALUE12: TWideStringField
      FieldName = 'STRING_VALUE12'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE12: TIBOFloatField
      FieldName = 'NUMBER_VALUE12'
    end
    object qrySubValueDATE_VALUE12: TDateTimeField
      FieldName = 'DATE_VALUE12'
    end
    object qrySubValueSTRING_VALUE13: TWideStringField
      FieldName = 'STRING_VALUE13'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE13: TIBOFloatField
      FieldName = 'NUMBER_VALUE13'
    end
    object qrySubValueDATE_VALUE13: TDateTimeField
      FieldName = 'DATE_VALUE13'
    end
    object qrySubValueSTRING_VALUE14: TWideStringField
      FieldName = 'STRING_VALUE14'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE14: TIBOFloatField
      FieldName = 'NUMBER_VALUE14'
    end
    object qrySubValueDATE_VALUE14: TDateTimeField
      FieldName = 'DATE_VALUE14'
    end
    object qrySubValueSTRING_VALUE15: TWideStringField
      FieldName = 'STRING_VALUE15'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE15: TIBOFloatField
      FieldName = 'NUMBER_VALUE15'
    end
    object qrySubValueDATE_VALUE15: TDateTimeField
      FieldName = 'DATE_VALUE15'
    end
    object qrySubValueSTRING_VALUE16: TWideStringField
      FieldName = 'STRING_VALUE16'
      Size = 255
    end
    object qrySubValueNUMBER_VALUE16: TIBOFloatField
      FieldName = 'NUMBER_VALUE16'
    end
    object qrySubValueDATE_VALUE16: TDateTimeField
      FieldName = 'DATE_VALUE16'
    end
  end
  object dsSubValue: TDataSource
    DataSet = qrySubValue
    Left = 173
    Top = 152
  end
end
