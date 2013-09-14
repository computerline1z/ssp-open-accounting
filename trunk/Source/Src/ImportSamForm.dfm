object ImportSamfrm: TImportSamfrm
  Left = 283
  Top = 194
  BorderStyle = bsNone
  ClientHeight = 491
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tabMain: TElPageControl
    Left = 0
    Top = 0
    Width = 902
    Height = 491
    BorderWidth = 0
    DrawFocus = False
    Flat = False
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsFlatTabs
    TabIndex = 1
    TabPosition = etpTop
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabConfig
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
    object tabImport: TElTabSheet
      PageControl = tabMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Import d'#7919' li'#7879'u'
      Visible = False
      object ElPanel1: TElPanel
        Left = 155
        Top = 0
        Width = 743
        Height = 383
        Align = alClient
        BevelOuter = bvNone
        MouseCapture = False
        TabOrder = 0
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object ElPanel4: TElPanel
          Left = 0
          Top = 208
          Width = 743
          Height = 114
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          MouseCapture = False
          TabOrder = 0
          DockOrientation = doNoOrient
          DoubleBuffered = False
          object grdImport: TdxDBGrid
            Left = 2
            Top = 2
            Width = 739
            Height = 85
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryType = cstCount
                  end>
                Name = 'grdReportSummaryGroup2'
              end>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = []
            DataSource = dsImport
            DefaultRowHeight = 20
            Filter.Criteria = {00000000}
            HeaderFont.Charset = ANSI_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = []
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowRowFooter = True
            OnCustomDrawCell = grdImportCustomDrawCell
          end
          object ElPanel5: TElPanel
            Left = 2
            Top = 87
            Width = 739
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            MouseCapture = False
            TabOrder = 1
            DockOrientation = doNoOrient
            DoubleBuffered = False
            object BitBtn2: TElPopupButton
              Left = 664
              Top = 0
              Width = 75
              Height = 25
              Cursor = crDefault
              Hint = 'X'#243'a phi'#7871'u n'#224'y'
              DrawDefaultFrame = False
              LinkColor = clBlue
              LinkStyle = [fsUnderline]
              NumGlyphs = 1
              UseXPThemes = True
              Caption = 'X'#243'a t'#7845't c'#7843
              TabOrder = 0
              Align = alRight
              ParentShowHint = False
              ShowHint = True
              Action = acDeleteCurrentData
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
          end
        end
        object ElPanel6: TElPanel
          Left = 0
          Top = 0
          Width = 743
          Height = 208
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          MouseCapture = False
          TabOrder = 1
          DockOrientation = doNoOrient
          DoubleBuffered = False
          object grdExcel: TdxDBGrid
            Left = 2
            Top = 2
            Width = 739
            Height = 179
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'RecId'
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryType = cstCount
                  end>
                Name = 'grdReportSummaryGroup2'
              end>
            SummarySeparator = ', '
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DefaultRowHeight = 20
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = []
          end
          object ElPanel7: TElPanel
            Left = 2
            Top = 181
            Width = 739
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            MouseCapture = False
            TabOrder = 1
            DockOrientation = doNoOrient
            DoubleBuffered = False
            object ElPopupButton11: TElPopupButton
              Left = 664
              Top = 0
              Width = 75
              Height = 25
              Cursor = crDefault
              Hint = 'X'#243'a phi'#7871'u n'#224'y'
              ImageIndex = 5
              DrawDefaultFrame = False
              LinkColor = clBlue
              LinkStyle = [fsUnderline]
              NumGlyphs = 1
              UseXPThemes = True
              Caption = '&X'#243'a t'#7845't c'#7843
              TabOrder = 0
              Align = alRight
              ParentShowHint = False
              ShowHint = True
              Visible = False
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
            object btnExe: TElPopupButton
              Left = 0
              Top = 0
              Width = 103
              Height = 25
              Cursor = crDefault
              DrawDefaultFrame = False
              Cancel = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00E6E6E634E2E2E2FFE4CFCFAD6E00008C8C2012F38C2012F36D00
                008EE3CECEAEDFDFDFFFE6E6E634FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00E6E6E634E2E2E2FFE2D4D2A574050292A9401CFFFBA04BFFFBA04BFFA73D
                1BFF6B000096E5D8D8BCE2E2E2FFE6E6E634FFFFFF00FFFFFF00FFFFFF00E6E6
                E634E4E4E4FFE1D3D2A77D11089CB74C1AFFFD9C39FFFF9E3AFFFF9E3AFFFD9D
                39FFB14417FF6D00009CDED1D1A7E4E4E4FFE6E6E634FFFFFF00E6E6E634E5E5
                E5FFDDCCC883881D0CAEC55514FFFF9324FFFF9223FFFF8F22FFFF8F22FFFF92
                23FFFF9424FFBC4A11FF720101AED9C7C783E4E4E4FFE6E6E634E2E2E2FFDDCC
                C7858A210FBECF5A0CFFFF8910FFFF840FFFFF840EFFFF840EFFFF840EFFFF84
                0EFFFF840FFFFF8A10FFC34C06FF6B0000BED7C5C585E2E2E2FFD5ADA06C942E
                13CDCF5907FFFF8201FFFF7F00FFFF7E00FFFF7E00FFFF7E00FFFF7E00FFFF7E
                00FFFF7E00FFFF8000FFFF8401FFBF4400FF6E0200CDC498986CA13B14CEDA65
                08FFFF8600FFFF8300FFFF8200FFFF8200FFFF8200FFFF8200FFFF8200FFFF82
                00FFFF8200FFFF8200FFFF8400FFFF8800FFCB5100FF760400CEB24A13FBFF8B
                00FFFF8800FFFF8700FFFF8700FFFF8700FFFF8500FFFF8500FFFF8500FFFF85
                00FFFF8800FFFF8800FFFF8900FFFF8A00FFFF9000FF891500FBA84518BECB5D
                0EFFD76609FFD36209FFD05E09FFE77104FFFF8800FFFF8500FFFF8500FFFF89
                00FFE26A02FFC24F02FFC34E02FFC44F01FFAD3900FF760500BEEBD7CEB1C68C
                78869A36176B943116A9993212FFDE6905FFFF8800FFFF8400FFFF8400FFFF8B
                00FFD86202FF7D1107FF700305A96E00026BA8696986E0C9C9B1FFFFFF00DFDF
                DFFFD8B0A16DA84112CAE6730CFFFF8C0CFFFF890CFFFF890BFFFF8504FFFF83
                00FFFF8800FFDF6902FF8A1B06CACFA8A785DFDFDFFFFFFFFF00FFFFFF00D7AA
                9680B44D11E5EE8219FFFFA138FFFF9F3AFFFF9E3AFFFF9E3BFFFF9D36FFFF8E
                13FFFF8200FFFF8800FFE76F00FF902003E5BF8D8B80FFFFFF00D8AA918ABD56
                13EAF48E29FFFFB563FFFFB66BFFFFB66AFFFFB66AFFFFB66AFFFFB76CFFFFB3
                64FFFFA13CFFFF8D11FFFF8A02FFEE7C0FFF952506EABC86838ABE5C1CEAF69D
                41FFFFD39EFFFFD3A4FFFFD1A1FFFFD1A1FFFFD1A1FFFFD1A1FFFFD1A1FFFFD2
                A4FFFFD2A3FFFFCD97FFFFCB93FFFFD69CFFEF9F53FF8A1A06EAC3631FFBFCB0
                5DFFFFD9A4FFFFD299FFFFD299FFFFD399FFFFD399FFFFD399FFFFD499FFFFD4
                99FFFFD59AFFFFD69CFFFFD69DFFFFDDA5FFFAB56AFF91240BFBBD61237EC568
                24F5CC7230F4C86C2CF3C4692BF3C1652AF3BF6128F3BC5D27F3BA5A26F3B656
                24F3B45323F3B14F21F3AF4C20F3AD4B20F49C3413F58518097E}
              LinkColor = clBlue
              LinkStyle = [fsUnderline]
              NumGlyphs = 1
              UseXPThemes = True
              Caption = 'Nh'#7853'p &d'#7919' li'#7879'u'
              TabOrder = 1
              Align = alLeft
              ParentShowHint = False
              ShowHint = True
              Action = acMemToDatabase
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
          end
        end
        object ElPanel3: TElPanel
          Left = 0
          Top = 322
          Width = 743
          Height = 61
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 2
          MouseCapture = False
          TabOrder = 2
          DockOrientation = doNoOrient
          DoubleBuffered = False
          object dxDBMemo2: TdxDBMemo
            Left = 330
            Top = 2
            Width = 411
            Align = alClient
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            DataField = 'SQL_INSERT'
            DataSource = dsImportList
            ScrollBars = ssBoth
            Height = 57
          end
          object dxDBMemo1: TdxDBMemo
            Left = 2
            Top = 2
            Width = 328
            Align = alLeft
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 1
            Alignment = taLeftJustify
            DataField = 'SQL_SELECT'
            DataSource = dsImportList
            ScrollBars = ssBoth
            Height = 57
            StoredValues = 1
          end
        end
        object ElSplitter1: TElSplitter
          Left = 0
          Top = 208
          Width = 743
          Height = 0
          Cursor = crVSplit
          SnapTopLeft = True
          SnapBottomRight = True
          AutoHide = False
          Align = alTop
          BevelOuter = bvNone
          UseXPThemes = False
        end
      end
      object locForm: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 383
        Width = 898
        Height = 85
        Align = alBottom
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLayoutStandardLookAndFeel1
        object ElLabel1: TElLabel
          Left = 86
          Top = 21
          Width = 18
          Height = 13
          Caption = '      '
          Color = clBtnFace
          ParentColor = False
        end
        object ElLabel2: TElLabel
          Left = 55
          Top = 21
          Width = 30
          Height = 13
          Caption = '          '
          Color = clBtnFace
          ParentColor = False
        end
        object ElLabel3: TElLabel
          Left = 15
          Top = 21
          Width = 39
          Height = 13
          Caption = '             '
          Color = clBtnFace
          ParentColor = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 806
          Top = 57
          Width = 89
          Height = 25
          Cursor = crDefault
          Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
          DrawDefaultFrame = False
          Cancel = True
          ModalResult = 1
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB
            6868693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
            669A66669A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC7
            6A6D693334FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF
            9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
            5BF9C5C69A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D0
            727569333442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF
            9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
            5EF9C5C69A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8
            888A693334B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF
            9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
            D4F9C5C69A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC
            7F80693334FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF
            9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
            DFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E3
            8889693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF
            9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
            DFF9C5C69A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB
            8F90693334FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FF
            FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
            669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
            6666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 2
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ElPopupButton3Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ProgressBar: TProgressBar
          Left = 52
          Top = 59
          Width = 576
          Height = 21
          Max = 11
          Position = 6
          Step = 1
          TabOrder = 3
        end
        object ElPopupButton13: TElPopupButton
          Left = 626
          Top = 57
          Width = 89
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Nh'#7853'p &t'#7921' '#273#7897'ng'
          TabOrder = 0
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ElPopupButton13Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton1: TElPopupButton
          Left = 716
          Top = 57
          Width = 89
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Import d'#7919' li'#7879'u'
          TabOrder = 1
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ElPopupButton1Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locFormGroup5: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Th'#244'ng tin'
            LayoutDirection = ldHorizontal
            object locFormItem3: TdxLayoutItem
              ShowCaption = False
              Control = ElLabel3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem2: TdxLayoutItem
              ShowCaption = False
              Control = ElLabel2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem1: TdxLayoutItem
              Caption = 'ElLabel1'
              ShowCaption = False
              Control = ElLabel1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object locFormGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object locFormItem5: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avCenter
              Caption = 'Progress'
              Offsets.Left = 5
              Control = ProgressBar
              ControlOptions.ShowBorder = False
            end
            object locFormItem6: TdxLayoutItem
              ShowCaption = False
              Visible = False
              Control = ElPopupButton13
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem7: TdxLayoutItem
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem4: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object ElPanel2: TElPanel
        Left = 0
        Top = 0
        Width = 153
        Height = 383
        GradientEndColor = clWhite
        GradientStartColor = clWhite
        Align = alLeft
        BevelOuter = bvSpace
        BevelWidth = 2
        MouseCapture = False
        TabOrder = 2
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object grdImportList: TdxDBGrid
          Left = 2
          Top = 2
          Width = 149
          Height = 379
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryType = cstCount
                end>
              Name = 'grdReportSummaryGroup2'
            end>
          SummarySeparator = ', '
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = grdImportListDblClick
          DataSource = dsImportList
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoRowAutoHeight]
          ScrollBars = ssNone
          OnChangeNode = grdImportListChangeNode
          object grdImportListNAME_VN: TdxDBGridMaskColumn
            Caption = 'Danh m'#7909'c'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAME_VN'
            Caption_UTF7 = 'Danh m+HuU-c'
          end
          object grdImportListNAME_ENG: TdxDBGridMaskColumn
            Caption = 'List'
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAME_ENG'
          end
        end
      end
      object ElSplitter2: TElSplitter
        Left = 153
        Top = 0
        Width = 2
        Height = 383
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = False
        AutoHide = False
        Align = alLeft
        BevelOuter = bvNone
        UseXPThemes = False
      end
    end
    object tabConfig: TElTabSheet
      OnShow = tabConfigShow
      PageControl = tabMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'C'#7845'u h'#236'nh'
      object dxLayoutControl1: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 0
        Width = 898
        Height = 468
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLayoutStandardLookAndFeel1
        object TntBitBtn1: TElPopupButton
          Left = 3
          Top = 440
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
          Action = ConfigIns
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object TntBitBtn2: TElPopupButton
          Left = 79
          Top = 440
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
          Action = ConfigDel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object TntBitBtn3: TElPopupButton
          Left = 155
          Top = 440
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
          Action = ConfigPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object TntBitBtn4: TElPopupButton
          Left = 231
          Top = 440
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
          Action = ConfigCan
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object TntBitBtn6: TElPopupButton
          Left = 820
          Top = 440
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
          TabOrder = 5
          OnClick = TntBitBtn6Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBGrid1: TdxDBGrid
          Left = 5
          Top = 5
          Width = 888
          Height = 588
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONFIG_ID'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryType = cstCount
                end>
              Name = 'grdReportSummaryGroup2'
            end>
          SummarySeparator = ', '
          Align = alLeft
          BorderStyle = bsNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnDblClick = dxDBGrid1DblClick
          OnKeyDown = dxDBGrid1KeyDown
          OnMouseUp = dxDBGrid1MouseUp
          DataSource = dsAccConfig
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          OnEditing = dxDBGrid1Editing
          object dxDBGrid1CONFIG_ID: TdxDBGridCalcColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONFIG_ID'
          end
          object dxDBGrid1CONFIG_TYPE: TdxDBGridImageColumn
            Alignment = taLeftJustify
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONFIG_TYPE'
            Descriptions.WideStrings = (
              'T'#224'i kho'#7843'n'
              'Ch'#7913'ng t'#7915)
            ShowDescription = True
            Values.WideStrings = (
              '1'
              '2')
            OnCloseUp = dxDBGrid1CONFIG_TYPECloseUp
          end
          object dxDBGrid1SOURCE: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SOURCE'
          end
          object dxDBGrid1DEST: TdxDBGridPopupColumn
            Caption = 'DESTINATION'
            HeaderAlignment = taCenter
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEST'
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid1DESTCloseUp
            OnInitPopup = dxDBGrid1DESTInitPopup
            OnPopup = dxDBGrid1DESTPopup
          end
          object dxDBGrid1DEST_OBJECT: TdxDBGridPopupColumn
            Caption = 'OBJECT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEST_OBJECT'
            PopupControl = PopupFrm.PnlCommonObj
            OnCloseUp = dxDBGrid1DEST_OBJECTCloseUp
            OnInitPopup = dxDBGrid1DEST_OBJECTInitPopup
          end
          object dxDBGrid1DEST_WAREHOUSE: TdxDBGridPopupColumn
            Caption = 'WAREHOUSE'
            HeaderAlignment = taCenter
            Width = 164
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEST_WAREHOUSE'
            PopupControl = PopupFrm.grdWare
            OnCloseUp = dxDBGrid1DEST_WAREHOUSECloseUp
            OnInitPopup = dxDBGrid1DEST_WAREHOUSEInitPopup
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Control = dxDBGrid1
          end
          object dxLayoutControl1Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Caption = 'New Group'
            ShowCaption = False
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item2: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              ShowCaption = False
              Control = TntBitBtn4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item6: TdxLayoutItem
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
  end
  object Panel1: TPanel
    Left = 324
    Top = 198
    Width = 367
    Height = 205
    BevelOuter = bvNone
    BevelWidth = 2
    BorderWidth = 2
    Caption = 'Panel1'
    TabOrder = 1
    Visible = False
    object ElLabel4: TElLabel
      Left = 6
      Top = 6
      Width = 68
      Height = 13
      Caption = 'Th'#244'ng b'#225'o l'#7895'i:'
    end
    object ElPopupButton2: TElPopupButton
      Left = 282
      Top = 177
      Width = 77
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 1
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB
        6868693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC7
        6A6D693334FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
        5BF9C5C69A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D0
        727569333442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
        5EF9C5C69A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8
        888A693334B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
        D4F9C5C69A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC
        7F80693334FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E3
        8889693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF
        9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB
        8F90693334FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FF
        FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
        6666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 0
      Color = clBtnFace
      ParentColor = False
      Align = alCustom
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxMemo1: TdxMemo
      Left = 6
      Top = 24
      Width = 355
      TabOrder = 1
      ReadOnly = True
      Height = 151
      StoredValues = 64
    end
  end
  object grdObjectType: TdxDBGrid
    Left = 457
    Top = 100
    Width = 219
    Height = 203
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'OTYPE_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnDblClick = grdObjectTypeDblClick
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'SaigonSoft   '
    BandFont.Style = []
    DataSource = MainDM.dsObjectType
    DefaultRowHeight = 22
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'SaigonSoft   '
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'SaigonSoft   '
    PreviewFont.Style = []
    ShowHeader = False
    object dxDBGridColumn15: TdxDBGridColumn
      Caption = 'T'#170'n lo'#185'i'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 192
      BandIndex = 0
      RowIndex = 0
      DisableGrouping = True
      FieldName = 'OTYPE_NAME'
      DisableFilter = True
      Caption_UTF7 = 'T+AKo-n lo+ALk-i'
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 128
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 96
    Top = 48
  end
  object memdata: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 355
    Top = 83
  end
  object DataSource1: TDataSource
    DataSet = memdata
    Left = 384
    Top = 83
  end
  object qryImportList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM IMPORT_LIST'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE IMPORT_LIST SET'
      '   ID = :ID, /*PK*/'
      '   NAME_VN = :NAME_VN,'
      '   SQL_SELECT = :SQL_SELECT,'
      '   IS_SYSTEM = :IS_SYSTEM,'
      '   DESCRIPTION = :DESCRIPTION,'
      '   NAME_ENG = :NAME_ENG,'
      '   SQL_INSERT = :SQL_INSERT,'
      '   TABLE_NAME = :TABLE_NAME,'
      '   ADDON_MODUL_ID = :ADDON_MODUL_ID,'
      '   SQL_EXECUTE = :SQL_EXECUTE'
      'WHERE'
      '   ID = :OLD_ID')
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO IMPORT_LIST('
      '   ID, /*PK*/'
      '   NAME_VN,'
      '   SQL_SELECT,'
      '   IS_SYSTEM,'
      '   DESCRIPTION,'
      '   NAME_ENG,'
      '   SQL_INSERT,'
      '   TABLE_NAME,'
      '   ADDON_MODUL_ID,'
      '   SQL_EXECUTE)'
      'VALUES ('
      '   :ID,'
      '   :NAME_VN,'
      '   :SQL_SELECT,'
      '   :IS_SYSTEM,'
      '   :DESCRIPTION,'
      '   :NAME_ENG,'
      '   :SQL_INSERT,'
      '   :TABLE_NAME,'
      '   :ADDON_MODUL_ID,'
      '   :SQL_EXECUTE)')
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    RecordCountAccurate = True
    AfterOpen = qryImportListAfterOpen
    SQL.Strings = (
      'SELECT ID'
      '     , NAME_VN'
      '     , SQL_SELECT'
      '     , IS_SYSTEM'
      '     , DESCRIPTION'
      '     , NAME_ENG'
      '     , SQL_INSERT'
      '     , TABLE_NAME'
      '     , ADDON_MODUL_ID'
      ',SQL_EXECUTE'
      'FROM IMPORT_LIST'
      'order by ID')
    FieldOptions = []
    Left = 208
    Top = 56
    object qryImportListID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryImportListNAME_VN: TStringField
      FieldName = 'NAME_VN'
      Size = 63
    end
    object qryImportListSQL_SELECT: TStringField
      FieldName = 'SQL_SELECT'
      Size = 1533
    end
    object qryImportListIS_SYSTEM: TSmallintField
      FieldName = 'IS_SYSTEM'
    end
    object qryImportListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 126
    end
    object qryImportListNAME_ENG: TStringField
      FieldName = 'NAME_ENG'
      Size = 63
    end
    object qryImportListSQL_INSERT: TStringField
      FieldName = 'SQL_INSERT'
      Size = 1533
    end
    object qryImportListTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 30
    end
    object qryImportListADDON_MODUL_ID: TSmallintField
      FieldName = 'ADDON_MODUL_ID'
    end
    object qryImportListSQL_EXECUTE: TStringField
      FieldName = 'SQL_EXECUTE'
      Size = 1533
    end
  end
  object dsImportList: TDataSource
    DataSet = qryImportList
    Left = 240
    Top = 64
  end
  object IB_Script1: TIB_Script
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsMain
    Left = 328
    Top = 89
  end
  object tsMain: TIB_Transaction
    AutoCommit = True
    Isolation = tiCommitted
    Left = 276
    Top = 57
  end
  object qryImport: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM IMPORT_GHD'
      'WHERE'
      '   IMPORT_ID = :OLD_IMPORT_ID')
    EditSQL.Strings = (
      'UPDATE IMPORT_GHD SET'
      '   IMPORT_ID = :IMPORT_ID, /*PK*/'
      '   TRAN_TYPE = :TRAN_TYPE,'
      '   TRAN_DATE = :TRAN_DATE,'
      '   YEAR_HT = :YEAR_HT,'
      '   PERIOD = :PERIOD,'
      '   JRNL_ENTRY = :JRNL_ENTRY,'
      '   SOURCE_ID = :SOURCE_ID,'
      '   SOURCE_NUMBER = :SOURCE_NUMBER,'
      '   SOURCE_NAME = :SOURCE_NAME,'
      '   REFERENCE = :REFERENCE,'
      '   DESCRIPTION = :DESCRIPTION,'
      '   WORKBENCH_DESC = :WORKBENCH_DESC,'
      '   GL_ACC = :GL_ACC,'
      '   GL_ACC_DESC = :GL_ACC_DESC,'
      '   DEBIT = :DEBIT,'
      '   CREDIT_GHD = :CREDIT_GHD,'
      '   DESC_1 = :DESC_1,'
      '   DESC_2 = :DESC_2,'
      '   DESC_3 = :DESC_3,'
      '   DESC_4 = :DESC_4,'
      '   INVOICE_DATE = :INVOICE_DATE,'
      '   NATURAL_ACCOUNT = :NATURAL_ACCOUNT,'
      '   IS_UPDATE = :IS_UPDATE,'
      '   IS_NOTLOGICAL = :IS_NOTLOGICAL,'
      '   ERROR_CODE = :ERROR_CODE,'
      '   ERROR_CODE_NOTE = :ERROR_CODE_NOTE'
      'WHERE'
      '   IMPORT_ID = :OLD_IMPORT_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO IMPORT_GHD('
      '   IMPORT_ID, /*PK*/'
      '   TRAN_TYPE,'
      '   TRAN_DATE,'
      '   YEAR_HT,'
      '   PERIOD,'
      '   JRNL_ENTRY,'
      '   SOURCE_ID,'
      '   SOURCE_NUMBER,'
      '   SOURCE_NAME,'
      '   REFERENCE,'
      '   DESCRIPTION,'
      '   WORKBENCH_DESC,'
      '   GL_ACC,'
      '   GL_ACC_DESC,'
      '   DEBIT,'
      '   CREDIT_GHD,'
      '   DESC_1,'
      '   DESC_2,'
      '   DESC_3,'
      '   DESC_4,'
      '   INVOICE_DATE,'
      '   NATURAL_ACCOUNT,'
      '   IS_UPDATE,'
      '   IS_NOTLOGICAL,'
      '   ERROR_CODE,'
      '   ERROR_CODE_NOTE)'
      'VALUES ('
      '   :IMPORT_ID,'
      '   :TRAN_TYPE,'
      '   :TRAN_DATE,'
      '   :YEAR_HT,'
      '   :PERIOD,'
      '   :JRNL_ENTRY,'
      '   :SOURCE_ID,'
      '   :SOURCE_NUMBER,'
      '   :SOURCE_NAME,'
      '   :REFERENCE,'
      '   :DESCRIPTION,'
      '   :WORKBENCH_DESC,'
      '   :GL_ACC,'
      '   :GL_ACC_DESC,'
      '   :DEBIT,'
      '   :CREDIT_GHD,'
      '   :DESC_1,'
      '   :DESC_2,'
      '   :DESC_3,'
      '   :DESC_4,'
      '   :INVOICE_DATE,'
      '   :NATURAL_ACCOUNT,'
      '   :IS_UPDATE,'
      '   :IS_NOTLOGICAL,'
      '   :ERROR_CODE,'
      '   :ERROR_CODE_NOTE)')
    KeyLinks.Strings = (
      'IMPORT_GHD.IMPORT_ID')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryImportNewRecord
    SQL.Strings = (
      'select * FROM IMPORT_GHD')
    FieldOptions = []
    Left = 208
    Top = 136
    object qryImportIMPORT_ID: TSmallintField
      FieldName = 'IMPORT_ID'
      Required = True
    end
    object qryImportTRAN_TYPE: TWideStringField
      FieldName = 'TRAN_TYPE'
      Size = 30
    end
    object qryImportTRAN_DATE: TDateField
      FieldName = 'TRAN_DATE'
    end
    object qryImportYEAR_HT: TSmallintField
      FieldName = 'YEAR_HT'
    end
    object qryImportPERIOD: TSmallintField
      FieldName = 'PERIOD'
    end
    object qryImportJRNL_ENTRY: TIBOFloatField
      FieldName = 'JRNL_ENTRY'
    end
    object qryImportSOURCE_ID: TWideStringField
      FieldName = 'SOURCE_ID'
      Size = 30
    end
    object qryImportSOURCE_NUMBER: TWideStringField
      FieldName = 'SOURCE_NUMBER'
      Size = 30
    end
    object qryImportSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Size = 126
    end
    object qryImportREFERENCE: TWideStringField
      FieldName = 'REFERENCE'
      Size = 381
    end
    object qryImportDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 381
    end
    object qryImportWORKBENCH_DESC: TWideStringField
      FieldName = 'WORKBENCH_DESC'
      Size = 381
    end
    object qryImportGL_ACC: TWideStringField
      FieldName = 'GL_ACC'
      Size = 30
    end
    object qryImportGL_ACC_DESC: TWideStringField
      FieldName = 'GL_ACC_DESC'
      Size = 126
    end
    object qryImportDEBIT: TIBOFloatField
      FieldName = 'DEBIT'
    end
    object qryImportCREDIT_GHD: TIBOFloatField
      FieldName = 'CREDIT_GHD'
    end
    object qryImportDESC_1: TWideStringField
      FieldName = 'DESC_1'
      Size = 30
    end
    object qryImportDESC_2: TWideStringField
      FieldName = 'DESC_2'
      Size = 30
    end
    object qryImportDESC_3: TSmallintField
      FieldName = 'DESC_3'
    end
    object qryImportDESC_4: TWideStringField
      FieldName = 'DESC_4'
      Size = 381
    end
    object qryImportINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
    end
    object qryImportNATURAL_ACCOUNT: TWideStringField
      FieldName = 'NATURAL_ACCOUNT'
      Size = 30
    end
    object qryImportIS_UPDATE: TSmallintField
      FieldName = 'IS_UPDATE'
    end
    object qryImportIS_NOTLOGICAL: TSmallintField
      FieldName = 'IS_NOTLOGICAL'
    end
    object qryImportERROR_CODE: TSmallintField
      FieldName = 'ERROR_CODE'
    end
    object qryImportERROR_CODE_NOTE: TWideStringField
      FieldName = 'ERROR_CODE_NOTE'
      Size = 765
    end
  end
  object dsImport: TDataSource
    DataSet = qryImport
    Left = 232
    Top = 136
  end
  object ActionList1: TActionList
    Left = 304
    Top = 168
    object ExlsInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'ExlsInsert'
      DataSource = DataSource1
    end
    object ExclDel: TDataSetDelete
      Category = 'Dataset'
      Caption = 'ExclDel'
      DataSource = DataSource1
    end
    object ExclPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'Post1'
      DataSource = DataSource1
    end
    object ExclCan: TDataSetCancel
      Category = 'Dataset'
      Caption = 'ExclCan'
      DataSource = DataSource1
    end
    object ImportIns: TDataSetInsert
      Category = 'Dataset'
      Caption = 'ImportIns'
      DataSource = dsImport
    end
    object ImportDel: TDataSetDelete
      Category = 'Dataset'
      Caption = 'ImportDel'
      DataSource = dsImport
    end
    object ImportPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'ImportPost'
      DataSource = dsImport
    end
    object ImportCan: TDataSetCancel
      Category = 'Dataset'
      Caption = 'ImportCan'
      DataSource = dsImport
    end
    object ConfigIns: TDataSetInsert
      Category = 'Dataset'
      Caption = 'ConfigIns'
      DataSource = dsAccConfig
    end
    object ConfigDel: TDataSetDelete
      Category = 'Dataset'
      Caption = 'ConfigDel'
      DataSource = dsAccConfig
    end
    object ConfigPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'ConfigPost'
      DataSource = dsAccConfig
    end
    object ConfigCan: TDataSetCancel
      Category = 'Dataset'
      Caption = 'ConfigCan'
      DataSource = dsAccConfig
    end
    object acMemToDatabase: TAction
      Caption = 'acMemToDatabase'
      OnExecute = acMemToDatabaseExecute
    end
    object acDeleteCurrentData: TAction
      Caption = 'acDeleteCurrentData'
      OnExecute = acDeleteCurrentDataExecute
    end
    object acDeleteMem: TAction
      Caption = 'acDeleteMem'
      OnExecute = acDeleteMemExecute
    end
  end
  object qryAccConfig: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM IMPORT_CONFIG'
      'WHERE'
      '   CONFIG_ID = :OLD_CONFIG_ID')
    EditSQL.Strings = (
      'UPDATE IMPORT_CONFIG SET'
      '   CONFIG_ID = :CONFIG_ID, /*PK*/'
      '   SOURCE = :SOURCE,'
      '   DEST = :DEST,'
      '   DEST_OBJECT = :DEST_OBJECT,'
      '   DEST_OTYPE = :DEST_OTYPE,'
      '   DEST_WAREHOUSE = :DEST_WAREHOUSE,'
      '   CONFIG_TYPE = :CONFIG_TYPE'
      'WHERE'
      '   CONFIG_ID = :OLD_CONFIG_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO IMPORT_CONFIG('
      '   CONFIG_ID, /*PK*/'
      '   SOURCE,'
      '   DEST,'
      '   DEST_OBJECT,'
      '   DEST_OTYPE,'
      '   DEST_WAREHOUSE,'
      '   CONFIG_TYPE)'
      'VALUES ('
      '   :CONFIG_ID,'
      '   :SOURCE,'
      '   :DEST,'
      '   :DEST_OBJECT,'
      '   :DEST_OTYPE,'
      '   :DEST_WAREHOUSE,'
      '   :CONFIG_TYPE)')
    KeyLinks.Strings = (
      'IMPORT_CONFIG.CONFIG_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryAccConfigBeforePost
    AfterPost = qryAccConfigAfterPost
    OnNewRecord = qryAccConfigNewRecord
    OnPostError = qryAccConfigPostError
    SQL.Strings = (
      'SELECT '
      '     CONFIG_ID'
      '     ,SOURCE '
      '     ,DEST '
      '     ,DEST_OBJECT '
      '     ,DEST_OTYPE '
      '     ,DEST_WAREHOUSE '
      '     ,CONFIG_TYPE '
      'FROM IMPORT_CONFIG'
      'order by CONFIG_ID')
    FieldOptions = []
    Left = 208
    Top = 104
    object qryAccConfigCONFIG_ID: TSmallintField
      FieldName = 'CONFIG_ID'
      Required = True
    end
    object qryAccConfigSOURCE: TWideStringField
      FieldName = 'SOURCE'
      Size = 30
    end
    object qryAccConfigDEST: TWideStringField
      FieldName = 'DEST'
      OnChange = qryAccConfigDESTChange
      Size = 30
    end
    object qryAccConfigDEST_OBJECT: TWideStringField
      FieldName = 'DEST_OBJECT'
      OnChange = qryAccConfigDEST_OBJECTChange
      Size = 30
    end
    object qryAccConfigDEST_OTYPE: TSmallintField
      FieldName = 'DEST_OTYPE'
    end
    object qryAccConfigDEST_WAREHOUSE: TWideStringField
      FieldName = 'DEST_WAREHOUSE'
      OnChange = qryAccConfigDEST_WAREHOUSEChange
      Size = 30
    end
    object qryAccConfigCONFIG_TYPE: TWideStringField
      FieldName = 'CONFIG_TYPE'
      OnChange = qryAccConfigCONFIG_TYPEChange
      Size = 63
    end
  end
  object dsAccConfig: TDataSource
    DataSet = qryAccConfig
    Left = 232
    Top = 104
  end
  object qrycommon: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    OnError = qrycommonError
    FieldOptions = []
    Left = 275
    Top = 108
  end
  object qrydem: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      'Select max(CONFIG_ID)from IMPORT_CONFIG')
    FieldOptions = []
    Left = 88
    Top = 88
    object qrydemMAX: TSmallintField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object dsdem: TDataSource
    DataSet = qrydem
    Left = 120
    Top = 88
  end
  object qry_error_code: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'import_id'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'kyht'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      'select doc_voucher from SP_CHECK_ERROR_GHD(:import_id, :kyht);')
    FieldOptions = []
    Left = 187
    Top = 152
    object qry_error_codeDOC_VOUCHER: TStringField
      FieldName = 'DOC_VOUCHER'
      Size = 126
    end
  end
  object qry_tachchuoi: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'kyhieu'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      
        'Select str_out1, str_out2, str_out3  from SUBSTR_CUT(:kyhieu, '#39'-' +
        #39')')
    FieldOptions = []
    Left = 259
    Top = 160
    object qry_tachchuoiSTR_OUT1: TStringField
      FieldName = 'STR_OUT1'
      Size = 150
    end
    object qry_tachchuoiSTR_OUT2: TStringField
      FieldName = 'STR_OUT2'
      Size = 150
    end
    object qry_tachchuoiSTR_OUT3: TStringField
      FieldName = 'STR_OUT3'
      Size = 150
    end
  end
  object ds_tachchuoi: TDataSource
    DataSet = qry_tachchuoi
    Left = 291
    Top = 136
  end
end
