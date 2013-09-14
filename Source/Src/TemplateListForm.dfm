object TemplateListFrm: TTemplateListFrm
  Left = 199
  Top = 203
  Width = 640
  Height = 436
  HelpContext = 22
  BorderIcons = [biSystemMenu]
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
    Width = 632
    Height = 402
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      632
      402)
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
      KeyField = 'TEMPLATE_NAME'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      DataSource = MainDM.dsTemplateList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1Column6: TdxDBGridColumn
        Caption = 'Ph'#237'm t'#7855't'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHOTCUT_NAME'
        Caption_UTF7 = 'Ph+AO0-m t+Hq8-t'
      end
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'T'#234'n m'#244' t'#7843' phi'#7871'u m'#7851'u'
        HeaderAlignment = taCenter
        Width = 321
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NAME'
        Caption_UTF7 = 'T+AOo-n m+APQ t+HqM phi+Hr8-u m+Hqs-u'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'TK GTGT'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKVAT'
      end
    end
    object BitBtn1: TElPopupButton
      Left = 554
      Top = 375
      Width = 75
      Height = 24
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
    object btnEdit: TElPopupButton
      Left = 155
      Top = 375
      Width = 75
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&S'#7917'a'
      TabOrder = 3
      OnClick = btnEditClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 478
      Top = 375
      Width = 75
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 375
      Width = 75
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 79
      Top = 375
      Width = 75
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      OnClick = btnDelClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnNewDoc: TElPopupButton
      Left = 236
      Top = 375
      Width = 75
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#7853'p phi'#7871'u'
      TabOrder = 4
      OnClick = btnNewDocClick
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
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 3
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnEdit
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          Caption = 'BitBtn2'
          Offsets.Left = 5
          ShowCaption = False
          Control = btnNewDoc
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
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
  object ActionList1: TActionList
    Left = 384
    Top = 80
    object acNewTemplate: TAction
      Caption = 'Th'#170'm m'#201'u phi'#213'u m'#237'i'
      OnExecute = acNewTemplateExecute
    end
    object acDelTemplate: TAction
      Caption = 'Xo'#184' m'#201'u phi'#213'u n'#181'y'
      OnExecute = acDelTemplateExecute
    end
    object acEditTemplate: TAction
      Caption = 'S'#246'a m'#201'u phi'#213'u n'#181'y'
      OnExecute = acEditTemplateExecute
    end
    object acNewDoc: TAction
      Caption = 'acNewDoc'
      OnExecute = acNewDocExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <
      item
        Control = dxDBGrid1
        PopupMenu = dxBarPopupMenu1
      end>
    Style = bmsFlat
    UseSystemFont = False
    Left = 160
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
    object bbtnIns: TdxBarButton
      Caption = 'Th'#234'm phi'#7871'u m'#7851'u m'#7899'i'
      Category = 0
      Hint = 'Th'#234'm phi'#7871'u m'#7851'u m'#7899'i'
      Visible = ivAlways
      OnClick = btnInsClick
    end
    object bbtnDel: TdxBarButton
      Caption = 'X'#243'a phi'#7871'u m'#7851'u n'#224'y'
      Category = 0
      Hint = 'X'#243'a phi'#7871'u m'#7851'u n'#224'y'
      Visible = ivAlways
      OnClick = btnDelClick
    end
    object bbtnEdit: TdxBarButton
      Caption = 'S'#7917'a phi'#7871'u m'#7851'u n'#224'y'
      Category = 0
      Hint = 'S'#7917'a phi'#7871'u m'#7851'u n'#224'y'
      Visible = ivAlways
      OnClick = btnEditClick
    end
    object bbtnLapphieu: TdxBarButton
      Caption = 'L'#7853'p phi'#7871'u theo m'#7851'u n'#224'y'
      Category = 0
      Hint = 'L'#7853'p phi'#7871'u theo m'#7851'u n'#224'y'
      Visible = ivAlways
      OnClick = btnNewDocClick
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbtnIns
        Visible = True
      end
      item
        Item = bbtnDel
        Visible = True
      end
      item
        Item = bbtnEdit
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnLapphieu
        Visible = True
      end>
    UseOwnFont = False
    Left = 192
    Top = 72
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
        Caption = 'Danh s'#225'ch phi'#7871'u m'#7851'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
end
