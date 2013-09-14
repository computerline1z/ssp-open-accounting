object SysObjectFrm: TSysObjectFrm
  Left = 194
  Top = 288
  HelpContext = 21
  BorderStyle = bsDialog
  ClientHeight = 410
  ClientWidth = 607
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
    Width = 607
    Height = 410
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      607
      410)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 597
      Height = 368
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsSysObj
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1OBJECT_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
      end
      object dxDBGrid1OBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'Di'#7877'n gi'#7843'i'
        HeaderAlignment = taCenter
        Width = 296
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'Di+HsU-n gi+HqM-i'
      end
      object dxDBGrid1ACTIVE_OBJECT: TdxDBGridCheckColumn
        Caption = 'Ho'#7841't '#273#7897'ng'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTIVE_OBJECT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Ho+HqE-t +AREe2Q-ng'
      end
      object dxDBGrid1NOTES: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn5: TElPopupButton
      Left = 453
      Top = 382
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 529
      Top = 382
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
      TabOrder = 2
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
    Top = 164
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
        Caption = 'C'#225'c d'#7919' li'#7879'u '#273#7891'ng b'#7897
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 72
  end
end
