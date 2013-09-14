object MsgListFrm: TMsgListFrm
  Left = 178
  Top = 156
  Width = 700
  Height = 505
  HelpContext = 10
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
    Width = 692
    Height = 471
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      692
      471)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
          DisableDragging = True
          Sizing = False
          Width = 39
        end
        item
          Caption = 'N'#7897'i dung th'#244'ng b'#225'o (Message Content)'
          DisableDragging = True
          Width = 527
        end
        item
          Caption = 'Ti'#234'u '#273#7873' (Title)'
          DisableDragging = True
          Width = 104
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 2
      KeyField = 'MESSAGE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      BandColor = clInactiveBorder
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = MainDM.dsMsgList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1MESSAGE_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889' (ID)'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Sizing = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'MESSAGE_ID'
        Caption_UTF7 = 'M+AOM s+HtE (ID)'
      end
      object dxDBGrid1IMAGE_ID: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'H'#236'nh (icon)'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Sizing = False
        Width = 60
        BandIndex = 0
        RowIndex = 1
        DisableGrouping = True
        FieldName = 'IMAGE_ID'
        Descriptions.WideStrings = (
          'C'#7843'nh b'#225'o'
          'Th'#244'ng b'#225'o'
          'X'#225'c nh'#7853'n'
          'Nguy hi'#7875'm')
        Images = MainDM.ImgLstMsgBox
        ImageIndexes.WideStrings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        LargeImages = MainDM.ImgLstMsgBox
        Values.WideStrings = (
          '1'
          '2'
          '3'
          '4')
        Caption_UTF7 = 'H+AOw-nh (icon)'
        StoredRowIndex = 1
      end
      object dxDBGrid1MESSAGE_VN: TdxDBGridMaskColumn
        Caption = 'Vi'#7879't Nam'
        HeaderAlignment = taCenter
        Width = 527
        BandIndex = 1
        RowIndex = 0
        FieldName = 'MESSAGE_VN'
        Caption_UTF7 = 'Vi+Hsc-t Nam'
      end
      object dxDBGrid1MESSAGE_ENG: TdxDBGridMaskColumn
        Caption = 'English'
        HeaderAlignment = taCenter
        Width = 527
        BandIndex = 1
        RowIndex = 1
        FieldName = 'MESSAGE_ENG'
        StoredRowIndex = 1
      end
      object dxDBGrid1TITLE_VN: TdxDBGridMaskColumn
        Caption = 'Vi'#7879't Nam'
        HeaderAlignment = taCenter
        Width = 104
        BandIndex = 2
        RowIndex = 0
        FieldName = 'TITLE_VN'
        Caption_UTF7 = 'Vi+Hsc-t Nam'
      end
      object dxDBGrid1TITLE_ENG: TdxDBGridMaskColumn
        Caption = 'English'
        HeaderAlignment = taCenter
        Width = 104
        BandIndex = 2
        RowIndex = 1
        FieldName = 'TITLE_ENG'
        StoredRowIndex = 1
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
        Control = dxDBGrid1
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 44
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
        Caption = 'Danh s'#225'ch c'#225'c th'#244'ng b'#225'o trong ch'#432#417'ng tr'#236'nh (Messages)'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'Excel Files|*.xls'
    Left = 184
    Top = 72
  end
end
