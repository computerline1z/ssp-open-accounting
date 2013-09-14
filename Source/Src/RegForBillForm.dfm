object RegForBillFrm: TRegForBillFrm
  Left = 298
  Top = 173
  HelpContext = 13
  BorderStyle = bsDialog
  ClientHeight = 412
  ClientWidth = 585
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
  object ElPageControl1: TElPageControl
    Left = 0
    Top = 0
    Width = 585
    Height = 412
    BorderWidth = 0
    DrawFocus = False
    Flat = False
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsFlatTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = ElTabSheet1
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 0
    object ElTabSheet1: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = #272#259'ng k'#253' phi'#7871'u xu'#7845't'
      object locForm1: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 0
        Width = 581
        Height = 389
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLayoutStandardLookAndFeel1
        DesignSize = (
          581
          389)
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
          KeyField = 'LOAIPBH'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          TabOrder = 0
          OnKeyDown = dxDBGrid1KeyDown
          OnKeyPress = dxDBGrid1KeyPress
          DataSource = MainDM.dsRegForBills
          DefaultRowHeight = 21
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnSizing]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          Anchors = [akLeft, akTop, akRight, akBottom]
          object dxDBGrid1Column1: TdxDBGridPopupColumn
            Caption = 'Lo'#7841'i phi'#7871'u b'#225'n h'#224'ng'
            HeaderAlignment = taCenter
            Width = 215
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TENLOAIPBH'
            PopupControl = PopupFrm.Pnl_DocType
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid1Column1CloseUp
            Caption_UTF7 = 'Lo+HqE-i phi+Hr8-u b+AOE-n h+AOA-ng'
          end
          object dxDBGrid1Column5: TdxDBGridPopupColumn
            Caption = 'Lo'#7841'i phi'#7871'u xu'#7845't kho'
            HeaderAlignment = taCenter
            Width = 263
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TENLOAIPXK'
            PopupControl = PopupFrm.Pnl_DocType
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid1Column5CloseUp
            Caption_UTF7 = 'Lo+HqE-i phi+Hr8-u xu+HqU-t kho'
          end
          object dxDBGrid1IS_ACTIVE: TdxDBGridCheckColumn
            Caption = 'T'#7921' '#273#7897'ng'
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IS_ACTIVE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'T+HvE +AREe2Q-ng'
          end
        end
        object TntBitBtn1: TElPopupButton
          Left = 3
          Top = 361
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
          Top = 361
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
          Top = 361
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
          Top = 361
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
          Left = 427
          Top = 361
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
          Left = 503
          Top = 361
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
        object locForm1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locForm1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = dxDBGrid1
          end
          object locForm1Group1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object locForm1Item2: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locForm1Item3: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locForm1Item4: TdxLayoutItem
              Offsets.Left = 10
              ShowCaption = False
              Control = TntBitBtn3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locForm1Item5: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locForm1Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = TntBitBtn5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locForm1Item7: TdxLayoutItem
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
    end
    object ElTabSheet2: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = #272#259'ng k'#253' t'#224'i kho'#7843'n xu'#7845't'
      Visible = False
      object locForm: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 0
        Width = 581
        Height = 389
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLayoutStandardLookAndFeel1
        DesignSize = (
          581
          389)
        object dxDBGrid2: TdxDBGrid
          Left = 5
          Top = 5
          Width = 388
          Height = 236
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TK_DT'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          TabOrder = 0
          OnKeyDown = dxDBGrid1KeyDown
          OnMouseUp = dxDBGrid2MouseUp
          DataSource = MainDM.dsAutoOut
          DefaultRowHeight = 21
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnSizing]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          Anchors = [akLeft, akTop, akRight, akBottom]
          object dxDBGridPopupColumn1: TdxDBGridPopupColumn
            Caption = 'TK doanh thu'
            HeaderAlignment = taCenter
            Width = 169
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TK_DT'
            PopupControl = PopupFrm.PnlTK
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGridPopupColumn1CloseUp
          end
          object dxDBGrid1TK_TL: TdxDBGridPopupColumn
            Caption = 'TK h'#224'ng b'#7883' tr'#7843' l'#7841'i'
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TK_TL'
            PopupControl = PopupFrm.PnlTK
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid1TK_TLCloseUp
            Caption_UTF7 = 'TK h+AOA-ng b+Hss tr+HqM l+HqE-i'
          end
          object dxDBGrid1Column3: TdxDBGridPopupColumn
            Caption = 'TK h'#224'ng h'#243'a'
            HeaderAlignment = taCenter
            Width = 149
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TK_HH'
            PopupControl = PopupFrm.PnlTK
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid1Column3CloseUp
            Caption_UTF7 = 'TK h+AOA-ng h+APM-a'
          end
          object dxDBGrid1Column4: TdxDBGridPopupColumn
            Caption = 'TK gi'#225' v'#7889'n'
            HeaderAlignment = taCenter
            Width = 156
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TK_GV'
            PopupControl = PopupFrm.PnlTK
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid1Column4CloseUp
            Caption_UTF7 = 'TK gi+AOE v+HtE-n'
          end
          object dxDBGridCheckColumn1: TdxDBGridCheckColumn
            Caption = 'T'#7921' '#273#7897'ng'
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IS_ACTIVE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'T+HvE +AREe2Q-ng'
          end
        end
        object ElPopupButton1: TElPopupButton
          Left = 3
          Top = 361
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
          Action = Insert1
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 79
          Top = 361
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
          Action = Delete1
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 165
          Top = 361
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
          Action = Post1
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 241
          Top = 361
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
          Action = Cancel1
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton5: TElPopupButton
          Left = 427
          Top = 361
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
        object ElPopupButton6: TElPopupButton
          Left = 503
          Top = 361
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
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = dxDBGrid2
          end
          object dxLayoutGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object locFormItem2: TdxLayoutItem
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem3: TdxLayoutItem
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem4: TdxLayoutItem
              Offsets.Left = 10
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem5: TdxLayoutItem
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = ElPopupButton5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem7: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = ElPopupButton6
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 176
    Top = 112
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
        Caption = #272#259'ng k'#253' lo'#7841'i phi'#7871'u xu'#7845't kho t'#7921' '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 72
  end
  object ActionList2: TActionList
    Left = 184
    Top = 72
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = MainDM.dsRegForBills
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsRegForBills
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsRegForBills
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsRegForBills
    end
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object Insert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '1Insert1'
      DataSource = MainDM.dsAutoOut
    end
    object Delete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsAutoOut
    end
    object Post1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsAutoOut
    end
    object Cancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsAutoOut
    end
  end
end
