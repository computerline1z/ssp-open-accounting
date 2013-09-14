object ObjectSubInfoFrm: TObjectSubInfoFrm
  Left = 114
  Top = 269
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
    DesignSize = (
      489
      331)
    object grdAllocate: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
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
      OnKeyDown = grdAllocateKeyDown
      OnMouseUp = grdAllocateMouseUp
      DataSource = dsHeso
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAllocateSUBINFO_ID: TdxDBGridColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_ID'
      end
      object grdAllocateSUBINFO_NAME: TdxDBGridColumn
        Caption = 'T'#234'n m'#244' t'#7843' th'#244'ng tin'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_NAME'
        Caption_UTF7 = 'T+AOo-n m+APQ t+HqM th+APQ-ng tin'
      end
      object grdAllocateSTRING_TYPE: TdxDBGridCheckColumn
        Caption = 'Ki'#7875'u chu'#7895'i'
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_DATATYPE'
        ValueChecked = '1'
        ValueUnchecked = '2'
        Caption_UTF7 = 'Ki+HsM-u chu+Htc-i'
      end
      object grdAllocateNUMBER_TYPE: TdxDBGridCheckColumn
        Caption = 'Ki'#7875'u s'#7889
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_DATATYPE'
        ValueChecked = '2'
        ValueUnchecked = '1'
        Caption_UTF7 = 'Ki+HsM-u s+HtE'
      end
      object grdAllocateDATE_TYPE: TdxDBGridCheckColumn
        Caption = 'Ng'#224'y gi'#7901
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_DATATYPE'
        ValueChecked = '3'
        ValueUnchecked = '1'
        Caption_UTF7 = 'Ng+AOA-y gi+Ht0'
      end
    end
    object TntBitBtn3: TElPopupButton
      Left = 165
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
      TabOrder = 3
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 241
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 303
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
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 303
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
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clBottom
        ShowCaption = False
        Control = grdAllocate
      end
      object locFormGroup1: TdxLayoutGroup
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
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
        Caption = 'C'#225'c c'#7897't th'#244'ng tin c'#7911'a m'#7897't lo'#7841'i '#273#7889'i t'#432#7907'ng'
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
      DataSource = dsHeso
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsHeso
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsHeso
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsHeso
    end
  end
  object qrySubInfo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Ketoan\Acc50\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_SUBINFO'
      'WHERE'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   SUBINFO_ID = :OLD_SUBINFO_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_SUBINFO SET'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   SUBINFO_ID = :SUBINFO_ID, /*PK*/'
      '   SUBINFO_NAME = :SUBINFO_NAME,'
      '   SUBINFO_DATATYPE = :SUBINFO_DATATYPE'
      'WHERE'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   SUBINFO_ID = :OLD_SUBINFO_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_SUBINFO('
      '   OTYPE_ID, /*PK*/'
      '   SUBINFO_ID, /*PK*/'
      '   SUBINFO_NAME,'
      '   SUBINFO_DATATYPE)'
      'VALUES ('
      '   :OTYPE_ID,'
      '   :SUBINFO_ID,'
      '   :SUBINFO_NAME,'
      '   :SUBINFO_DATATYPE)')
    KeyLinks.Strings = (
      'OTYPE_ID'
      'SUBINFO_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qrySubInfoBeforeEdit
    BeforeDelete = qrySubInfoBeforeDelete
    BeforeInsert = qrySubInfoBeforeInsert
    AfterInsert = qrySubInfoAfterInsert
    BeforePost = qrySubInfoBeforePost
    OnNewRecord = qrySubInfoNewRecord
    OnPostError = qrySubInfoPostError
    SQL.Strings = (
      'SELECT OTYPE_ID'
      '     , SUBINFO_ID'
      '     , SUBINFO_NAME'
      '     , SUBINFO_DATATYPE'
      'FROM OBJECT_SUBINFO'
      'where OTYPE_ID=:OTYPE_ID')
    FieldOptions = []
    Left = 173
    Top = 94
    object qrySubInfoOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qrySubInfoSUBINFO_ID: TSmallintField
      FieldName = 'SUBINFO_ID'
      Required = True
    end
    object qrySubInfoSUBINFO_NAME: TWideStringField
      FieldName = 'SUBINFO_NAME'
      Required = True
      Size = 30
    end
    object qrySubInfoSUBINFO_DATATYPE: TSmallintField
      FieldName = 'SUBINFO_DATATYPE'
    end
  end
  object dsHeso: TDataSource
    DataSet = qrySubInfo
    Left = 173
    Top = 152
  end
end
