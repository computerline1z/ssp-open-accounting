object RegTransferFrm: TRegTransferFrm
  Left = 330
  Top = 193
  HelpContext = 13
  BorderStyle = bsDialog
  ClientHeight = 343
  ClientWidth = 578
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
    Width = 578
    Height = 343
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      578
      343)
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
      KeyField = 'SOTTKC'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsRegTransfer
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOTTKC'
      end
      object dxDBGrid1Column1: TdxDBGridPopupColumn
        Caption = 'T'#7915' t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FROM_ACCOUNT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column1CloseUp
        OnInitPopup = dxDBGrid1Column1InitPopup
        Caption_UTF7 = 'T+Hus t+AOA-i kho+HqM-n'
      end
      object dxDBGrid1Column2: TdxDBGridPopupColumn
        Caption = #272#7871'n ti'#7875'u kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_ACCOUNT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column2CloseUp
        Caption_UTF7 = '+ARAevw-n ti+HsM-u kho+HqM-n'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Caption = '%'
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PTKETCHUYEN'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = '    Ghi ch'#250
        Width = 214
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRANSFER_NOTE'
        Caption_UTF7 = '    Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 315
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
      Top = 315
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
      Top = 315
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
      Top = 315
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
      Left = 424
      Top = 315
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
      Left = 500
      Top = 315
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
        Caption = 
          'L'#432'u '#253' : % l'#224' ph'#7847'n tr'#259'm s'#7889' d'#432' c'#7911'a "T'#7915' t'#224'i kho'#7843'n" '#273#432#7907'c x'#7917' l'#253' t'#7841'i t' +
          'h'#7901'i '#273'i'#7875'm th'#7921'c hi'#7879'n b'#250't to'#225'n'
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clBottom
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
    Top = 44
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
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
        Caption = 'C'#225'c b'#250't to'#225'n k'#7871't chuy'#7875'n t'#7921' '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 40
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = MainDM.dsRegTransfer
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsRegTransfer
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsRegTransfer
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsRegTransfer
    end
  end
end
