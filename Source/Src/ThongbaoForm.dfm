object ThongBaoFrm: TThongBaoFrm
  Left = 192
  Top = 168
  Width = 733
  Height = 513
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
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 725
    Height = 479
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnHelp: TElPopupButton
      Left = 573
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
      TabOrder = 3
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 649
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 4
      OnClick = btnCloseClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsThongbao
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object dxDBGrid1OBJECT_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1OBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n g'#7885'i'
        HeaderAlignment = taCenter
        Width = 424
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n g+Hs0-i'
      end
      object dxDBGrid1OBJGRP_ID: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
      end
      object dxDBGrid1OTYPE_ID: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTYPE_ID'
      end
      object dxDBGrid1SUBINFO_1: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_1'
      end
      object dxDBGrid1SUBINFO_2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_2'
      end
      object dxDBGrid1DEBT_LEN: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBT_LEN'
      end
      object dxDBGrid1OBJECT_VALUE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_VALUE'
      end
      object dxDBGrid1OTHER_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y thu h'#7891'i'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_DATE'
        Caption_UTF7 = 'Ng+AOA-y thu h+HtM-i'
      end
    end
    object btnDetail: TElPopupButton
      Left = 1
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem chi ti'#7871't'
      TabOrder = 1
      OnClick = btnDetailClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 77
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In'
      TabOrder = 2
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Visible = False
          Control = btnDetail
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Visible = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn7'
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn8'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
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
        Caption = 'Th'#244'ng b'#225'o thu h'#7891'i h'#7907'p '#273#7891'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
