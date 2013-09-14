object CurrencyFrm: TCurrencyFrm
  Left = 91
  Top = 178
  HelpContext = 21
  BorderStyle = bsDialog
  ClientHeight = 367
  ClientWidth = 536
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
    Width = 536
    Height = 367
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      536
      367)
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
      KeyField = 'CURRENCY_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsCurrency
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'M'#227' ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_ID'
        Caption_UTF7 = 'M+AOM ngo+HqE-i t+Hsc'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'T'#234'n ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 277
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_NAME'
        Caption_UTF7 = 'T+AOo-n ngo+HqE-i t+Hsc'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 339
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
      Top = 339
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
      Top = 339
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
      Top = 339
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
      Left = 382
      Top = 339
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
      Left = 458
      Top = 339
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
        Caption = 'Danh m'#7909'c ngo'#7841'i t'#7879
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = MainDM.dsCurrency
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsCurrency
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsCurrency
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsCurrency
    end
  end
end
