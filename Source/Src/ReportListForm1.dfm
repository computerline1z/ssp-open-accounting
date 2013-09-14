object frmReportList: TfrmReportList
  Left = 2
  Top = 4
  Width = 1024
  Height = 690
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1016
    Height = 656
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object mainPanel: TElPanel
      Left = 10
      Top = 10
      Width = 996
      Height = 605
      Align = alNone
      MouseCapture = False
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter1: TSplitter
        Left = 265
        Top = 1
        Height = 603
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 268
        Top = 1
        Width = 727
        Height = 603
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object ElPageControl1: TElPageControl
          Left = 10
          Top = 41
          Width = 678
          Height = 527
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Multiline = False
          RaggedRight = False
          ScrollOpposite = False
          Style = etsAngledTabs
          TabIndex = 4
          TabPosition = etpBottom
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = ElTabSheet4
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
          TabOrder = 11
          object ElTabSheet1: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = 'Gi'#225' tr'#7883
            Visible = False
            object gridReportTable: TdxDBGrid
              Left = 0
              Top = 0
              Width = 678
              Height = 506
              Bands = <
                item
                  Fixed = bfLeft
                  Width = 916
                end
                item
                end>
              DefaultLayout = False
              KeyField = 'REPORT_ITEM_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnMouseUp = gridReportTableMouseUp
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'Tahoma'
              BandFont.Style = []
              DataSource = dsReportTable
              Filter.Criteria = {00000000}
              GridLineColor = clBlack
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoHeaderPanelSizing, edgoKeepColumnWidth, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              OnEdited = gridReportTableEdited
              OnEditing = gridReportTableEditing
            end
          end
          object ElTabSheet5: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a'
            Visible = False
            object gridReportTableDefine: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 504
              Bands = <
                item
                  Fixed = bfLeft
                  Width = 100
                end
                item
                  Width = 500
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'REPORT_ITEM_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnMouseUp = gridReportTableDefineMouseUp
              DataSource = dsReportTableDefine
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoHeaderPanelSizing, edgoKeepColumnWidth, edgoRowSizing]
              OptionsDB = [edgoCanNavigation, edgoLoadAllRecords]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              OnEdited = gridReportTableDefineEdited
            end
          end
          object ElTabSheet2: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7897' '#432'u ti'#234'n'
            Visible = False
            object gridReportTableIndex: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 504
              Bands = <
                item
                  Fixed = bfLeft
                end
                item
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'RecID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnMouseUp = gridReportTableIndexMouseUp
              DataSource = dsReportTableIndex
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              OnCustomDrawCell = gridReportTableIndexCustomDrawCell
              OnEdited = gridReportTableIndexEdited
            end
          end
          object ElTabSheet3: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a d'#242'ng'
            Visible = False
            object dxDBGrid4: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 479
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'REPORT_ITEM_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnKeyDown = gridReportTableDefineKeyDown
              OnMouseUp = dxDBGrid4MouseUp
              DataSource = dsItems
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              PreviewLines = 0
              object dxDBGridMaskColumn5: TdxDBGridMaskColumn
                Alignment = taLeftJustify
                Caption = 'STT'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taCenter
                Sorted = csUp
                Width = 35
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_ITEM_ID'
              end
              object dxDBGridMaskColumn6: TdxDBGridMaskColumn
                Caption = 'M'#227
                CharCase = ecUpperCase
                HeaderAlignment = taCenter
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_ITEM_NAME_ID'
                Caption_UTF7 = 'M+AOM'
              end
              object dxDBGridMaskColumn8: TdxDBGridMaskColumn
                Caption = 'Ghi ch'#250
                HeaderAlignment = taCenter
                Visible = False
                Width = 357
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_ITEM_NOTE'
                Caption_UTF7 = 'Ghi ch+APo'
              end
              object dxDBGrid4REPORT_BOLD: TdxDBGridCheckColumn
                Caption = 'In '#273#7853'm'
                HeaderAlignment = taCenter
                MinWidth = 20
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_BOLD'
                ValueChecked = '1'
                ValueUnchecked = '0'
                Caption_UTF7 = 'In +AREerQ-m'
              end
              object dxDBGrid4REPORT_OBJECT_TYPE: TdxDBGridMaskColumn
                Caption = #272#7889'i t'#432#7907'ng'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_OBJECT_TYPE'
                Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
              end
            end
            inline frameToolbar3: TframeToolbar
              Left = 0
              Top = 479
              Width = 674
              Height = 25
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              inherited dxLayoutControl1: TdxLayoutControl
                Width = 674
                inherited btnClose: TElPopupButton
                  Left = 826
                end
                inherited btnHelp: TElPopupButton
                  Left = 686
                end
                inherited btnChoose: TElPopupButton
                  Left = 756
                end
                inherited btnCopy: TElPopupButton
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    20000000000000040000C40E0000C40E00000000000000000000000000000000
                    000000000000000000000000000000000000939393FF939393FF939393FF9393
                    93FF939393FF939393FF939393FF939393FF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFEAEAEAFFE9E9
                    E9FFE9E9E9FFE8E8E8FFE7E7E7FFFFFFFFFF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFEEEEEEFFEDED
                    EDFFECECECFFEBEBEBFFEBEBEBFFFFFFFFFF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFF1F1F1FFF1F1
                    F1FFF0F0F0FFEFEFEFFFEEEEEEFFFFFFFFFF939393FF00000000000000009393
                    93FF939393FF939393FF939393FF939393FF939393FFFFFFFFFFF5F5F5FFF4F4
                    F4FFF3F3F3FFF3F3F3FFF2F2F2FFFFFFFFFF939393FF00000000000000009393
                    93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF939393FFFFFFFFFFF8F8F8FFF8F8
                    F8FFF7F7F7FFF6F6F6FFF6F6F6FFF8F8F8FF939393FF00000000000000009393
                    93FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFF939393FFFFFFFFFFFCFCFCFFFBFB
                    FBFFFBFBFBFF939393FF939393FF939393FF939393FF00000000000000009393
                    93FFFFFFFFFFEFEFEFFFEEEEEEFFEDEDEDFF939393FFFFFFFFFFFFFFFFFFFEFE
                    FEFFFEFEFEFF939393FFE7E7E7FF939393FFF1F1F1FF00000000000000009393
                    93FFFFFFFFFFF2F2F2FFF2F2F2FFF1F1F1FF939393FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF939393FF939393FFF1F1F1FF0000000000000000000000009393
                    93FFFFFFFFFFF6F6F6FFF5F5F5FFF5F5F5FF939393FF939393FF939393FF9393
                    93FF939393FF939393FFF1F1F1FF000000000000000000000000000000009393
                    93FFFFFFFFFFFAFAFAFFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFFFFFFFFF9393
                    93FF000000000000000000000000000000000000000000000000000000009393
                    93FFFFFFFFFFFDFDFDFFFDFDFDFFFCFCFCFF939393FF939393FF939393FF9393
                    93FF000000000000000000000000000000000000000000000000000000009393
                    93FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF939393FFE7E7E7FF939393FF0000
                    0000000000000000000000000000000000000000000000000000000000009393
                    93FFFFFFFFFFEAEAEAFFEAEAEAFFEAEAEAFF939393FF939393FF000000000000
                    0000000000000000000000000000000000000000000000000000000000009393
                    93FF939393FF939393FF939393FF939393FF939393FF00000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                end
                inherited btnDesign: TElPopupButton
                  Left = 656
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FFFFFF00BA69
                    336BB9642FBCBA6530EDB9652FF7B9652FF7B9652FF7B9642FF7B9642EF7B864
                    2DF7B8642DF7B8632DF7B8632DEFB6612BBDB6612D63FFFFFF00FFFFFF00BB68
                    32DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
                    EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B65F29D5FFFFFF00FFFFFF00BE70
                    37F5F5EBDFFEFDBE67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC
                    62FFFBBB60FFFCBD5FFFFCBB61FFFDFBF8FDB8632CF3FFFFFF00FFFFFF00C077
                    3BF7F7EDE3FFFDC16DFF174156FF2A6086FF4B88BBFF6F9EB2FFE3C999FFFFD6
                    94FFFFD593FFFFD492FFFBBD64FFFBF7F4FFBA6630F7FFFFFF00FFFFFF00C37B
                    3FF7F7F0E6FFF8B354FF2D6581FF93C7F9FF90C9F9FF4084C9FF2567A5FFD2A7
                    64FFF7B150FFF7B14EFFF7B14EFFFCF9F5FFBE6E35F7FFFFFF00FFFFFF00C47F
                    41F7F8F1E8FFFEE5D5FF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478B
                    C1FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC0753AF7FFFFFF00FFFFFF00C481
                    44F7F8F2EBFFFEE7D6FFA5B5BEFF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0
                    EDFF509AD9FFE1D6CDFFFBE1C9FFFBF7F2FFC47B3EF7FFFFFF00FFFFFF00C583
                    46F7F9F3ECFFFEE8D6FFFEE8D7FFB2C5CCFF75B8D6FFC1F6FDFF62DFF7FF5CE2
                    F8FF78D3F0FF4897DAFFE2D5C8FFFAF2EAFFC57F41F7FFFFFF00FFFFFF00C587
                    48F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFAFC5CCFF76CBE7FFC7F7FDFF5DDC
                    F5FF59E1F7FF7AD4F1FF4A98DBFFD2DFE9FFC58144F7FFFFFF00FFFFFF00C587
                    49F7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBCD6D5FF78D3EEFFC7F7
                    FDFF5EDCF5FF5AE2F7FF79D6F2FF50A0E0FFAC845FF9FFFFFF00FFFFFF00C588
                    4AF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7CD4
                    EEFFC3F6FDFF6BDDF6FF6CCAEDFF62A2D7FF6398C8FE5091CA26FFFFFF00C588
                    4AF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECD
                    C9FF80D5EEFFB1E3F9FF8ABFE7FFADD3F6FFC3E0FCFF659ED3F7FFFFFF00C588
                    4BF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6
                    B9FFAEE3F1FF76BDE7FFB3D2F0FFE5F3FFFFABD2EFFF478BC7E8FFFFFF00C487
                    4AEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6
                    B7FFFFFBF8FFB5CBC1FF57A4D8FF84B0DBFF459CD0FF2A94D15EFFFFFF00C384
                    48C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
                    ECFFF2E6D7FFE2B17CFFDB9364F5B2673A07FFFFFF00FFFFFF00FFFFFF00C07C
                    4360C88A4CBBC88B4EEEC88B4EF6C88B4EF7C88B4EF7C88C4EF7C98B4EF7C78A
                    4EF7C4884AD4C3753A91B2673B06FFFFFF00FFFFFF00FFFFFF00}
                end
                inherited btnPreview: TElPopupButton
                  Left = 631
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                    83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                    D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                    3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                    97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                    DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                    B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                    99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                    978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                    BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                    A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                    EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                    CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                    B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                    F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                    DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                    C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                    9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                    E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                    70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                    EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                    86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                    A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                end
                inherited btnPrint: TElPopupButton
                  Left = 606
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000717171FF5F5F5FFF717171FF717171FF0000
                    00000000000000000000717171FF000000000000000000000000000000000000
                    000000000000BFBFBFFF383838FF959595FFDADADAFFD5D5D5FF545454FF7171
                    71FF717171FF878787FF7C7C7CFF717171FF0000000000000000000000008E8E
                    8EFF282828FF7D7D7DFFDADADAFFE9E9E9FFDBDBDBFFDBDBDBFFA4A4A4FF4646
                    46FF8A8A8AFFF9F9F9FFF0F0F0FF666666FF717171FF000000008E8E8EFF6060
                    60FFCDCDCDFFFEFEFEFFEDEDEDFFDCDCDCFFE8E8E8FFD9D9D9FFAFAFAFFFE3E3
                    E3FFFFFFFFFFF7F7F7FFF0F0F0FFE8E8E8FF5A5A5AFF595959FF5B5B5BFFFDFD
                    FDFFFFFFFFFFF2F2F2FFE7E7E7FFECECECFFF6F6F6FFDADADAFF5C5C5CFFCECE
                    CEFFFFFFFFFFFDFDFDFFF3F3F3FFF3F3F3FFE5E5E5FF464646FF626262FFFFFF
                    FFFFFFFFFFFFF5F5F5FFF2F2F2FFFEFEFEFFFFFFFFFFA5A5A5FF2A2A2AFF3030
                    30FFD4D4D4FFFFFFFFFFFEFEFEFFFFFFFFFFBBBBBBFF353535FF2C2C2CFFA9A9
                    A9FFFFFFFFFFF9F9F9FFFEFEFEFFFFFFFFFFC4C4C4FF8B8B8BFF717171FF2B2B
                    2BFF303030FFDDDDDDFFFFFFFFFF9B9B9BFF292929FF00000000000000002A2A
                    2AFF9C9C9CFFDADADAFFDBDBDBFFAFAFAFFFA9A9A9FFA7A7A7FF9B9B9BFF7B7B
                    7BFF272727FF2F2F2FFF8E8E8EFF757575FF2E2E2EFF00000000000000000000
                    0000363636FF7E7E7EFF505050FF707070FFAAAAAAFFBABABAFFA5A5A5FFA7A7
                    A7FF858585FF1C1C1CFF343434FFCDCDCDFF656565FF00000000000000000000
                    00003F3F3FFFD3D3D3FFA3A3A3FF454545FF7C7C7CFFB1B1B1FFBDBDBDFFA3A3
                    A3FFB8B8B8FF767676FF999999FFE7E7E7FF595959FF00000000000000006E6E
                    6EFF626262FFEDEDEDFFFFFFFFFF909090FF494949FF838383FFBBBBBBFFBFBF
                    BFFFA0A0A0FFA8A8A8FFF2F2F2FFCACACAFF333333FF00000000000000003131
                    31FF787878FFEEEEEEFFEEEEEEFFFDFDFDFF7F7F7FFF4D4D4DFF858585FFB2B2
                    B2FFA3A3A3FFE9E9E9FFFFFFFFFF737373FF8E8E8EFF0000000000000000AAAA
                    AAFF373737FF9C9C9CFFEFEFEFFFFDFDFDFF8D8D8DFF333333FF6E6E6EFFABAB
                    ABFFF5F5F5FFFFFFFFFFA3A3A3FF545454FF0000000000000000000000000000
                    0000AAAAAAFF353535FFA9A9A9FFF6F6F6FF515151FF4D4D4DFFCCCCCCFFFCFC
                    FCFFF7F7F7FF939393FF545454FF000000000000000000000000000000000000
                    0000000000005F5F5FFF404040FF989898FF383838FFAAAAAAFF585858FF7D7D
                    7DFF4D4D4DFF9B9B9BFF00000000000000000000000000000000000000000000
                    000000000000000000005F5F5FFF313131FFBABABAFF00000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                end
                inherited btnSendMail: TElPopupButton
                  Left = 581
                end
                inherited dxLayoutControl1Group_Root: TdxLayoutGroup
                  inherited dxLayoutControl1Group1: TdxLayoutGroup
                    inherited dxlctrlInsertCopy: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Group3: TdxLayoutGroup
                      inherited dxLayoutControl1Item8: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item7: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item6: TdxLayoutItem
                        Visible = False
                      end
                    end
                    inherited dxlctrlHelp: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Item14: TdxLayoutItem
                      Visible = False
                    end
                  end
                end
              end
              inherited ActionList1: TActionList
                Left = 440
                Top = 65530
                inherited acDSInsert: TDataSetInsert
                  DataSource = dsItems
                end
                inherited acDSPost: TDataSetPost
                  DataSource = dsItems
                end
                inherited acDSCancel: TDataSetCancel
                  DataSource = dsItems
                end
                inherited acDSDelete: TDataSetDelete
                  DataSource = dsItems
                end
                inherited acDSRefresh: TDataSetRefresh
                  DataSource = dsItems
                end
                inherited acDSFirst: TDataSetFirst
                  DataSource = dsItems
                end
                inherited acDSPrior: TDataSetPrior
                  DataSource = dsItems
                end
                inherited acDSNext: TDataSetNext
                  DataSource = dsItems
                end
                inherited acDSLast: TDataSetLast
                  DataSource = dsItems
                end
                inherited acDSInsertCopy: TDataSetInsert
                  DataSource = dsItems
                end
                inherited acDSInsertChild: TDataSetInsert
                  DataSource = dsItems
                end
              end
            end
          end
          object ElTabSheet4: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a c'#7897't'
            inline frameToolbar2: TframeToolbar
              Left = 0
              Top = 479
              Width = 674
              Height = 25
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              inherited dxLayoutControl1: TdxLayoutControl
                Width = 674
                inherited btnClose: TElPopupButton
                  Left = 826
                end
                inherited btnHelp: TElPopupButton
                  Left = 686
                end
                inherited btnChoose: TElPopupButton
                  Left = 756
                end
                inherited btnCopy: TElPopupButton
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    20000000000000040000C40E0000C40E00000000000000000000000000000000
                    000000000000000000000000000000000000939393FF939393FF939393FF9393
                    93FF939393FF939393FF939393FF939393FF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFEAEAEAFFE9E9
                    E9FFE9E9E9FFE8E8E8FFE7E7E7FFFFFFFFFF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFEEEEEEFFEDED
                    EDFFECECECFFEBEBEBFFEBEBEBFFFFFFFFFF939393FF00000000000000000000
                    000000000000000000000000000000000000939393FFFFFFFFFFF1F1F1FFF1F1
                    F1FFF0F0F0FFEFEFEFFFEEEEEEFFFFFFFFFF939393FF00000000000000009393
                    93FF939393FF939393FF939393FF939393FF939393FFFFFFFFFFF5F5F5FFF4F4
                    F4FFF3F3F3FFF3F3F3FFF2F2F2FFFFFFFFFF939393FF00000000000000009393
                    93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF939393FFFFFFFFFFF8F8F8FFF8F8
                    F8FFF7F7F7FFF6F6F6FFF6F6F6FFF8F8F8FF939393FF00000000000000009393
                    93FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFF939393FFFFFFFFFFFCFCFCFFFBFB
                    FBFFFBFBFBFF939393FF939393FF939393FF939393FF00000000000000009393
                    93FFFFFFFFFFEFEFEFFFEEEEEEFFEDEDEDFF939393FFFFFFFFFFFFFFFFFFFEFE
                    FEFFFEFEFEFF939393FFE7E7E7FF939393FFF1F1F1FF00000000000000009393
                    93FFFFFFFFFFF2F2F2FFF2F2F2FFF1F1F1FF939393FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF939393FF939393FFF1F1F1FF0000000000000000000000009393
                    93FFFFFFFFFFF6F6F6FFF5F5F5FFF5F5F5FF939393FF939393FF939393FF9393
                    93FF939393FF939393FFF1F1F1FF000000000000000000000000000000009393
                    93FFFFFFFFFFFAFAFAFFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFFFFFFFFF9393
                    93FF000000000000000000000000000000000000000000000000000000009393
                    93FFFFFFFFFFFDFDFDFFFDFDFDFFFCFCFCFF939393FF939393FF939393FF9393
                    93FF000000000000000000000000000000000000000000000000000000009393
                    93FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF939393FFE7E7E7FF939393FF0000
                    0000000000000000000000000000000000000000000000000000000000009393
                    93FFFFFFFFFFEAEAEAFFEAEAEAFFEAEAEAFF939393FF939393FF000000000000
                    0000000000000000000000000000000000000000000000000000000000009393
                    93FF939393FF939393FF939393FF939393FF939393FF00000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                end
                inherited btnDesign: TElPopupButton
                  Left = 656
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FFFFFF00BA69
                    336BB9642FBCBA6530EDB9652FF7B9652FF7B9652FF7B9642FF7B9642EF7B864
                    2DF7B8642DF7B8632DF7B8632DEFB6612BBDB6612D63FFFFFF00FFFFFF00BB68
                    32DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
                    EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B65F29D5FFFFFF00FFFFFF00BE70
                    37F5F5EBDFFEFDBE67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC
                    62FFFBBB60FFFCBD5FFFFCBB61FFFDFBF8FDB8632CF3FFFFFF00FFFFFF00C077
                    3BF7F7EDE3FFFDC16DFF174156FF2A6086FF4B88BBFF6F9EB2FFE3C999FFFFD6
                    94FFFFD593FFFFD492FFFBBD64FFFBF7F4FFBA6630F7FFFFFF00FFFFFF00C37B
                    3FF7F7F0E6FFF8B354FF2D6581FF93C7F9FF90C9F9FF4084C9FF2567A5FFD2A7
                    64FFF7B150FFF7B14EFFF7B14EFFFCF9F5FFBE6E35F7FFFFFF00FFFFFF00C47F
                    41F7F8F1E8FFFEE5D5FF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478B
                    C1FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC0753AF7FFFFFF00FFFFFF00C481
                    44F7F8F2EBFFFEE7D6FFA5B5BEFF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0
                    EDFF509AD9FFE1D6CDFFFBE1C9FFFBF7F2FFC47B3EF7FFFFFF00FFFFFF00C583
                    46F7F9F3ECFFFEE8D6FFFEE8D7FFB2C5CCFF75B8D6FFC1F6FDFF62DFF7FF5CE2
                    F8FF78D3F0FF4897DAFFE2D5C8FFFAF2EAFFC57F41F7FFFFFF00FFFFFF00C587
                    48F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFAFC5CCFF76CBE7FFC7F7FDFF5DDC
                    F5FF59E1F7FF7AD4F1FF4A98DBFFD2DFE9FFC58144F7FFFFFF00FFFFFF00C587
                    49F7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBCD6D5FF78D3EEFFC7F7
                    FDFF5EDCF5FF5AE2F7FF79D6F2FF50A0E0FFAC845FF9FFFFFF00FFFFFF00C588
                    4AF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7CD4
                    EEFFC3F6FDFF6BDDF6FF6CCAEDFF62A2D7FF6398C8FE5091CA26FFFFFF00C588
                    4AF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECD
                    C9FF80D5EEFFB1E3F9FF8ABFE7FFADD3F6FFC3E0FCFF659ED3F7FFFFFF00C588
                    4BF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6
                    B9FFAEE3F1FF76BDE7FFB3D2F0FFE5F3FFFFABD2EFFF478BC7E8FFFFFF00C487
                    4AEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6
                    B7FFFFFBF8FFB5CBC1FF57A4D8FF84B0DBFF459CD0FF2A94D15EFFFFFF00C384
                    48C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
                    ECFFF2E6D7FFE2B17CFFDB9364F5B2673A07FFFFFF00FFFFFF00FFFFFF00C07C
                    4360C88A4CBBC88B4EEEC88B4EF6C88B4EF7C88B4EF7C88C4EF7C98B4EF7C78A
                    4EF7C4884AD4C3753A91B2673B06FFFFFF00FFFFFF00FFFFFF00}
                end
                inherited btnPreview: TElPopupButton
                  Left = 631
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                    83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
                    D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
                    3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                    97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
                    DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                    B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                    99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
                    978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                    BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
                    A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
                    EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                    CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
                    B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
                    F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                    DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
                    C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
                    9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
                    E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
                    70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                    EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
                    86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
                    A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
                end
                inherited btnPrint: TElPopupButton
                  Left = 606
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000717171FF5F5F5FFF717171FF717171FF0000
                    00000000000000000000717171FF000000000000000000000000000000000000
                    000000000000BFBFBFFF383838FF959595FFDADADAFFD5D5D5FF545454FF7171
                    71FF717171FF878787FF7C7C7CFF717171FF0000000000000000000000008E8E
                    8EFF282828FF7D7D7DFFDADADAFFE9E9E9FFDBDBDBFFDBDBDBFFA4A4A4FF4646
                    46FF8A8A8AFFF9F9F9FFF0F0F0FF666666FF717171FF000000008E8E8EFF6060
                    60FFCDCDCDFFFEFEFEFFEDEDEDFFDCDCDCFFE8E8E8FFD9D9D9FFAFAFAFFFE3E3
                    E3FFFFFFFFFFF7F7F7FFF0F0F0FFE8E8E8FF5A5A5AFF595959FF5B5B5BFFFDFD
                    FDFFFFFFFFFFF2F2F2FFE7E7E7FFECECECFFF6F6F6FFDADADAFF5C5C5CFFCECE
                    CEFFFFFFFFFFFDFDFDFFF3F3F3FFF3F3F3FFE5E5E5FF464646FF626262FFFFFF
                    FFFFFFFFFFFFF5F5F5FFF2F2F2FFFEFEFEFFFFFFFFFFA5A5A5FF2A2A2AFF3030
                    30FFD4D4D4FFFFFFFFFFFEFEFEFFFFFFFFFFBBBBBBFF353535FF2C2C2CFFA9A9
                    A9FFFFFFFFFFF9F9F9FFFEFEFEFFFFFFFFFFC4C4C4FF8B8B8BFF717171FF2B2B
                    2BFF303030FFDDDDDDFFFFFFFFFF9B9B9BFF292929FF00000000000000002A2A
                    2AFF9C9C9CFFDADADAFFDBDBDBFFAFAFAFFFA9A9A9FFA7A7A7FF9B9B9BFF7B7B
                    7BFF272727FF2F2F2FFF8E8E8EFF757575FF2E2E2EFF00000000000000000000
                    0000363636FF7E7E7EFF505050FF707070FFAAAAAAFFBABABAFFA5A5A5FFA7A7
                    A7FF858585FF1C1C1CFF343434FFCDCDCDFF656565FF00000000000000000000
                    00003F3F3FFFD3D3D3FFA3A3A3FF454545FF7C7C7CFFB1B1B1FFBDBDBDFFA3A3
                    A3FFB8B8B8FF767676FF999999FFE7E7E7FF595959FF00000000000000006E6E
                    6EFF626262FFEDEDEDFFFFFFFFFF909090FF494949FF838383FFBBBBBBFFBFBF
                    BFFFA0A0A0FFA8A8A8FFF2F2F2FFCACACAFF333333FF00000000000000003131
                    31FF787878FFEEEEEEFFEEEEEEFFFDFDFDFF7F7F7FFF4D4D4DFF858585FFB2B2
                    B2FFA3A3A3FFE9E9E9FFFFFFFFFF737373FF8E8E8EFF0000000000000000AAAA
                    AAFF373737FF9C9C9CFFEFEFEFFFFDFDFDFF8D8D8DFF333333FF6E6E6EFFABAB
                    ABFFF5F5F5FFFFFFFFFFA3A3A3FF545454FF0000000000000000000000000000
                    0000AAAAAAFF353535FFA9A9A9FFF6F6F6FF515151FF4D4D4DFFCCCCCCFFFCFC
                    FCFFF7F7F7FF939393FF545454FF000000000000000000000000000000000000
                    0000000000005F5F5FFF404040FF989898FF383838FFAAAAAAFF585858FF7D7D
                    7DFF4D4D4DFF9B9B9BFF00000000000000000000000000000000000000000000
                    000000000000000000005F5F5FFF313131FFBABABAFF00000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                end
                inherited btnSendMail: TElPopupButton
                  Left = 581
                end
                inherited dxLayoutControl1Group_Root: TdxLayoutGroup
                  inherited dxLayoutControl1Group1: TdxLayoutGroup
                    inherited dxlctrlInsertCopy: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Group3: TdxLayoutGroup
                      inherited dxLayoutControl1Item8: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item7: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item6: TdxLayoutItem
                        Visible = False
                      end
                    end
                    inherited dxlctrlHelp: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Item14: TdxLayoutItem
                      Visible = False
                    end
                  end
                end
              end
              inherited ActionList1: TActionList
                inherited acDSInsert: TDataSetInsert
                  DataSource = dsCols
                end
                inherited acDSPost: TDataSetPost
                  DataSource = dsCols
                end
                inherited acDSCancel: TDataSetCancel
                  DataSource = dsCols
                end
                inherited acDSDelete: TDataSetDelete
                  DataSource = dsCols
                end
                inherited acDSRefresh: TDataSetRefresh
                  DataSource = dsCols
                end
                inherited acDSFirst: TDataSetFirst
                  DataSource = dsCols
                end
                inherited acDSPrior: TDataSetPrior
                  DataSource = dsCols
                end
                inherited acDSNext: TDataSetNext
                  DataSource = dsCols
                end
                inherited acDSLast: TDataSetLast
                  DataSource = dsCols
                end
                inherited acDSInsertCopy: TDataSetInsert
                  DataSource = dsCols
                end
                inherited acDSInsertChild: TDataSetInsert
                  DataSource = dsCols
                end
              end
              inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
                Left = 184
              end
            end
            object dxDBGrid3: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 479
              Bands = <
                item
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'REPORT_COL_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 1
              OnKeyDown = gridReportTableDefineKeyDown
              DataSource = dsCols
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoExtMultiSelect, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoKeepColumnWidth, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoIndicator, edgoUseBitmap]
              PreviewLines = 0
              object dxDBGridMaskColumn1: TdxDBGridMaskColumn
                Alignment = taLeftJustify
                Caption = 'STT'
                HeaderAlignment = taCenter
                Sorted = csUp
                Width = 83
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_ID'
              end
              object dxDBGridMaskColumn2: TdxDBGridMaskColumn
                Caption = 'M'#227
                CharCase = ecUpperCase
                HeaderAlignment = taCenter
                Width = 112
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_NAME_ID'
                Caption_UTF7 = 'M+AOM'
              end
              object dxDBGridMaskColumn3: TdxDBGridMaskColumn
                Caption = 'T'#234'n'
                HeaderAlignment = taCenter
                Width = 388
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_NAME'
                Caption_UTF7 = 'T+AOo-n'
              end
              object dxDBGridMaskColumn4: TdxDBGridMaskColumn
                Caption = 'Ghi ch'#250
                HeaderAlignment = taCenter
                Visible = False
                Width = 991
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_NOTE'
                Caption_UTF7 = 'Ghi ch+APo'
              end
              object dxDBGridImageColumn1: TdxDBGridImageColumn
                Alignment = taRightJustify
                Caption = 'Ki'#7875'u'
                DisableCustomizing = True
                DisableDragging = True
                HeaderAlignment = taCenter
                MinWidth = 16
                Width = 220
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_TYPE'
                DefaultImages = False
                Descriptions.WideStrings = (
                  'Chu'#7889'i'
                  'S'#7889
                  'Ng'#224'y'
                  'Gi'#7901
                  'H'#236'nh '#7843'nh'
                  'Lu'#7853'n l'#253)
                ImageIndexes.WideStrings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                ShowDescription = True
                Values.WideStrings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                Caption_UTF7 = 'Ki+HsM-u'
              end
              object dxDBGrid3REPORT_WIDTH_VALUE: TdxDBGridSpinColumn
                Caption = #272#7897' r'#7897'ng gi'#225' tr'#7883
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_WIDTH_VALUE'
                Caption_UTF7 = '+ARAe2Q r+Htk-ng gi+AOE tr+Hss'
              end
              object dxDBGrid3REPORT_WIDTH_DEFINE: TdxDBGridSpinColumn
                Caption = #272#7897' r'#7897'ng '#273#7883'nh ngh'#297'a'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_WIDTH_DEFINE'
                Caption_UTF7 = '+ARAe2Q r+Htk-ng +AREeyw-nh ngh+ASk-a'
              end
              object dxDBGrid3Column10: TdxDBGridButtonColumn
                Caption = 'M'#224'u'
                BandIndex = 0
                RowIndex = 0
                OnCustomDrawCell = dxDBGrid3Column10CustomDrawCell
                ButtonOnly = True
                Buttons = <
                  item
                    Default = True
                  end>
                HideEditCursor = True
                OnButtonClick = dxDBGrid3Column10ButtonClick
                Caption_UTF7 = 'M+AOA-u'
              end
              object dxDBGrid3REPORT_COLOR: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COLOR'
              end
              object dxDBGrid3REPORT_BOLD: TdxDBGridCheckColumn
                Caption = 'Ch'#7919' '#273#7853'm'
                HeaderAlignment = taCenter
                MinWidth = 20
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_BOLD'
                ValueChecked = '1'
                ValueUnchecked = '0'
                Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
              end
              object dxDBGrid3REPORT_VALUABLE: TdxDBGridCheckColumn
                Caption = 'R'
                HeaderAlignment = taCenter
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_VALUABLE'
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dxDBGrid3REPORT_OBJECT_TYPE: TdxDBGridCalcColumn
                Caption = #272#7889'i t'#432#7907'ng'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_OBJECT_TYPE'
                Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
              end
            end
          end
        end
        object ElPopupButton10: TElPopupButton
          Left = 835
          Top = 10
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'T'#237'nh &gi'#225' tr'#7883
          TabOrder = 7
          Action = acCal
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object imageeditParamType: TdxDBImageEdit
          Left = 10
          Top = 10
          Width = 109
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          OnExit = imageeditParamTypeExit
          Alignment = taLeftJustify
          DataField = 'REPORT_PARAM_TYPE'
          DataSource = dsReportList
          OnChange = imageeditParamTypeChange
          DropDownRows = 33554439
          PopupBorder = pbFrame3D
          Descriptions.WideStrings = (
            'Th'#225'ng'
            'Qu'#253
            'N'#259'm'
            'T'#7915' th'#225'ng'
            'T'#7915' qu'#253
            '6 th'#225'ng '#273#7847'u n'#259'm'
            '6 th'#225'ng cu'#7889'i n'#259'm')
          ImageIndexes.WideStrings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          Values.WideStrings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          StoredValues = 1
        end
        object spinFromMonth: TdxDBSpinEdit
          Left = 125
          Top = 10
          Width = 50
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          OnExit = spinFromMonthExit
          DataField = 'REPORT_FROM_MONTH'
          DataSource = dsReportList
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinFromQuarter: TdxDBSpinEdit
          Left = 181
          Top = 10
          Width = 53
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          OnExit = spinFromQuarterExit
          DataField = 'REPORT_FROM_QUARTER'
          DataSource = dsReportList
          MaxValue = 4.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinFromYear: TdxDBSpinEdit
          Left = 240
          Top = 10
          Width = 62
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          OnExit = spinFromYearExit
          DataField = 'REPORT_FROM_YEAR'
          DataSource = dsReportList
          MaxValue = 3000.000000000000000000
          MinValue = 2005.000000000000000000
          StoredValues = 48
        end
        object spinToMonth: TdxDBSpinEdit
          Left = 364
          Top = 10
          Width = 52
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 4
          OnExit = spinToMonthExit
          DataField = 'REPORT_TO_MONTH'
          DataSource = dsReportList
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinToQuarter: TdxDBSpinEdit
          Left = 468
          Top = 10
          Width = 55
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 5
          OnExit = spinToQuarterExit
          DataField = 'REPORT_TO_QUARTER'
          DataSource = dsReportList
          MaxValue = 4.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinToYear: TdxDBSpinEdit
          Left = 529
          Top = 10
          Width = 65
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 6
          OnExit = spinToYearExit
          DataField = 'REPORT_TO_YEAR'
          DataSource = dsReportList
          MaxValue = 3000.000000000000000000
          MinValue = 2005.000000000000000000
          StoredValues = 48
        end
        object ProgressBar: TProgressBar
          Left = 679
          Top = 14
          Width = 150
          Height = 17
          Position = 6
          TabOrder = 12
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lcParam: TdxLayoutGroup
              Caption = 'New Group'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item5: TdxLayoutItem
                Control = imageeditParamType
                ControlOptions.ShowBorder = False
              end
              object lcFromMonth: TdxLayoutItem
                Control = spinFromMonth
                ControlOptions.ShowBorder = False
              end
              object lcFromQuarter: TdxLayoutItem
                Control = spinFromQuarter
                ControlOptions.ShowBorder = False
              end
              object lcFromYear: TdxLayoutItem
                Control = spinFromYear
                ControlOptions.ShowBorder = False
              end
              object lcToMonth: TdxLayoutItem
                Caption = #272#7871'n th'#225'ng'
                Control = spinToMonth
                ControlOptions.ShowBorder = False
              end
              object lcToQuarter: TdxLayoutItem
                Caption = #272#7871'n qu'#253
                Control = spinToQuarter
                ControlOptions.ShowBorder = False
              end
              object lcToYear: TdxLayoutItem
                Control = spinToYear
                ControlOptions.ShowBorder = False
              end
            end
            object lcProgress: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avCenter
              Caption = #272'ang th'#7921'c hi'#7879'n'
              Visible = False
              Control = ProgressBar
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton10'
              ShowCaption = False
              Control = ElPopupButton10
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPageControl1
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 264
        Height = 603
        Align = alLeft
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        object dbtreeReportList: TdxDBTreeList
          Left = 12
          Top = 39
          Width = 245
          Height = 544
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'REPORT_ID'
          ParentField = 'REPORT_PARENT'
          Align = alLeft
          BorderStyle = bsNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = dbtreeReportListKeyDown
          OnMouseUp = dbtreeReportListMouseUp
          DataSource = dsReportList
          DefaultRowHeight = 21
          HighlightColor = clSkyBlue
          ImageIndexFieldName = 'ICON'
          Images = ImageList
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
          OptionsCustomize = [etoBandMoving, etoBandSizing, etoColumnMoving, etoColumnSizing, etoFullSizing, etoHeaderPanelSizing, etoKeepColumnWidth, etoRowSizing]
          OptionsDB = [etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoHeaderPanelHeight, etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoRowAutoHeight, etoShowButtonAlways, etoUseBitmap, etoUseImageIndexForSelected]
          StateImages = ImageList
          TreeLineColor = clGrayText
          OnChangeNode = dbtreeReportListChangeNode
          OnCustomDrawCell = dbtreeReportListCustomDrawCell
          object dbtreeReportListREPORT_ID: TdxDBTreeListColumn
            Alignment = taLeftJustify
            Caption = 'STT'
            CharCase = ecUpperCase
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_ID'
          end
          object dbtreeReportListREPORT_NAME: TdxDBTreeListMaskColumn
            Caption = 'B'#225'o c'#225'o'
            HeaderAlignment = taCenter
            Width = 211
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NAME'
            Caption_UTF7 = 'B+AOE-o c+AOE-o'
          end
          object dbtreeReportListREPORT_NOTE: TdxDBTreeListMaskColumn
            Caption = 'Ghi ch'#250
            DisableCustomizing = True
            Visible = False
            Width = 497
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object dbtreeReportListREPORT_FILETEMPLATE: TdxDBTreeListMaskColumn
            Caption = 'M'#7851'u b'#225'o c'#225'o'
            DisableCustomizing = True
            Visible = False
            Width = 219
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_FILETEMPLATE'
            Caption_UTF7 = 'M+Hqs-u b+AOE-o c+AOE-o'
          end
          object dbtreeReportListHIEN_THI: TdxDBTreeListCheckColumn
            Caption = 'V'
            DisableCustomizing = True
            MinWidth = 20
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HIEN_THI'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbtreeReportListREPORT_VIEW_TYPE: TdxDBTreeListImageColumn
            Alignment = taRightJustify
            Caption = 'D'#7841'ng hi'#7875'n th'#7883
            DisableCustomizing = True
            MinWidth = 16
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_VIEW_TYPE'
            Descriptions.WideStrings = (
              'Chi ti'#7871't(t'#7915'ng '#244')'
              'Detail'
              'C'#7843' hai(Chi ti'#7871't+Detail)'
              'N'#7903' ngang'
              'N'#7903' d'#7885'c')
            ImageIndexes.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            Caption_UTF7 = 'D+HqE-ng hi+HsM-n th+Hss'
          end
        end
        object dxCheckEdit1: TdxCheckEdit
          Left = 10
          Top = 572
          Width = 967
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Caption = 'M'#7903' ra '#273#7875' s'#7917'a'
          OnChange = dxCheckEdit1Change
        end
        object popBranch: TdxPopupEdit
          Left = 10
          Top = 10
          Width = 195
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          PopupControl = PopupFrm.pnlBranch
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popBranchCloseUp
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            Control = popBranch
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = dbtreeReportList
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'dxCheckEdit1'
            ShowCaption = False
            Control = dxCheckEdit1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 235
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 3
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 160
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 2
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 85
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 1
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 10
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm '
      TabOrder = 0
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPreview: TElPopupButton
      Left = 739
      Top = 621
      Width = 89
      Height = 25
      Cursor = crDefault
      Hint = 'Xem tr'#432#7899'c khi in'
      DrawDefaultFrame = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
        D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
        3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
        97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
        DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
        B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
        99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
        978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
        BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
        A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
        EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
        CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
        B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
        F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
        DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
        C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
        9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
        E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
        70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
        EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
        86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
        A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem tr'#432#7899'c in'
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      Action = acPreview
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDesign: TElPopupButton
      Left = 919
      Top = 621
      Width = 87
      Height = 25
      Cursor = crDefault
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00BA69
        336BB9642FBCBA6530EDB9652FF7B9652FF7B9652FF7B9642FF7B9642EF7B864
        2DF7B8642DF7B8632DF7B8632DEFB6612BBDB6612D63FFFFFF00FFFFFF00BB68
        32DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
        EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B65F29D5FFFFFF00FFFFFF00BE70
        37F5F5EBDFFEFDBE67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC
        62FFFBBB60FFFCBD5FFFFCBB61FFFDFBF8FDB8632CF3FFFFFF00FFFFFF00C077
        3BF7F7EDE3FFFDC16DFF174156FF2A6086FF4B88BBFF6F9EB2FFE3C999FFFFD6
        94FFFFD593FFFFD492FFFBBD64FFFBF7F4FFBA6630F7FFFFFF00FFFFFF00C37B
        3FF7F7F0E6FFF8B354FF2D6581FF93C7F9FF90C9F9FF4084C9FF2567A5FFD2A7
        64FFF7B150FFF7B14EFFF7B14EFFFCF9F5FFBE6E35F7FFFFFF00FFFFFF00C47F
        41F7F8F1E8FFFEE5D5FF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478B
        C1FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC0753AF7FFFFFF00FFFFFF00C481
        44F7F8F2EBFFFEE7D6FFA5B5BEFF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0
        EDFF509AD9FFE1D6CDFFFBE1C9FFFBF7F2FFC47B3EF7FFFFFF00FFFFFF00C583
        46F7F9F3ECFFFEE8D6FFFEE8D7FFB2C5CCFF75B8D6FFC1F6FDFF62DFF7FF5CE2
        F8FF78D3F0FF4897DAFFE2D5C8FFFAF2EAFFC57F41F7FFFFFF00FFFFFF00C587
        48F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFAFC5CCFF76CBE7FFC7F7FDFF5DDC
        F5FF59E1F7FF7AD4F1FF4A98DBFFD2DFE9FFC58144F7FFFFFF00FFFFFF00C587
        49F7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBCD6D5FF78D3EEFFC7F7
        FDFF5EDCF5FF5AE2F7FF79D6F2FF50A0E0FFAC845FF9FFFFFF00FFFFFF00C588
        4AF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7CD4
        EEFFC3F6FDFF6BDDF6FF6CCAEDFF62A2D7FF6398C8FE5091CA26FFFFFF00C588
        4AF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECD
        C9FF80D5EEFFB1E3F9FF8ABFE7FFADD3F6FFC3E0FCFF659ED3F7FFFFFF00C588
        4BF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6
        B9FFAEE3F1FF76BDE7FFB3D2F0FFE5F3FFFFABD2EFFF478BC7E8FFFFFF00C487
        4AEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6
        B7FFFFFBF8FFB5CBC1FF57A4D8FF84B0DBFF459CD0FF2A94D15EFFFFFF00C384
        48C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
        ECFFF2E6D7FFE2B17CFFDB9364F5B2673A07FFFFFF00FFFFFF00FFFFFF00C07C
        4360C88A4CBBC88B4EEEC88B4EF6C88B4EF7C88B4EF7C88C4EF7C98B4EF7C78A
        4EF7C4884AD4C3753A91B2673B06FFFFFF00FFFFFF00FFFFFF00}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'S'#7917'a l'#7841'i &m'#7851'u'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      Action = acDesign
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDirectPrint: TElPopupButton
      Left = 828
      Top = 621
      Width = 91
      Height = 25
      Cursor = crDefault
      Hint = 'In ra m'#225'y in (Ctrl+P)'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000717171FF5F5F5FFF717171FF717171FF0000
        00000000000000000000717171FF000000000000000000000000000000000000
        000000000000BFBFBFFF383838FF959595FFDADADAFFD5D5D5FF545454FF7171
        71FF717171FF878787FF7C7C7CFF717171FF0000000000000000000000008E8E
        8EFF282828FF7D7D7DFFDADADAFFE9E9E9FFDBDBDBFFDBDBDBFFA4A4A4FF4646
        46FF8A8A8AFFF9F9F9FFF0F0F0FF666666FF717171FF000000008E8E8EFF6060
        60FFCDCDCDFFFEFEFEFFEDEDEDFFDCDCDCFFE8E8E8FFD9D9D9FFAFAFAFFFE3E3
        E3FFFFFFFFFFF7F7F7FFF0F0F0FFE8E8E8FF5A5A5AFF595959FF5B5B5BFFFDFD
        FDFFFFFFFFFFF2F2F2FFE7E7E7FFECECECFFF6F6F6FFDADADAFF5C5C5CFFCECE
        CEFFFFFFFFFFFDFDFDFFF3F3F3FFF3F3F3FFE5E5E5FF464646FF626262FFFFFF
        FFFFFFFFFFFFF5F5F5FFF2F2F2FFFEFEFEFFFFFFFFFFA5A5A5FF2A2A2AFF3030
        30FFD4D4D4FFFFFFFFFFFEFEFEFFFFFFFFFFBBBBBBFF353535FF2C2C2CFFA9A9
        A9FFFFFFFFFFF9F9F9FFFEFEFEFFFFFFFFFFC4C4C4FF8B8B8BFF717171FF2B2B
        2BFF303030FFDDDDDDFFFFFFFFFF9B9B9BFF292929FF00000000000000002A2A
        2AFF9C9C9CFFDADADAFFDBDBDBFFAFAFAFFFA9A9A9FFA7A7A7FF9B9B9BFF7B7B
        7BFF272727FF2F2F2FFF8E8E8EFF757575FF2E2E2EFF00000000000000000000
        0000363636FF7E7E7EFF505050FF707070FFAAAAAAFFBABABAFFA5A5A5FFA7A7
        A7FF858585FF1C1C1CFF343434FFCDCDCDFF656565FF00000000000000000000
        00003F3F3FFFD3D3D3FFA3A3A3FF454545FF7C7C7CFFB1B1B1FFBDBDBDFFA3A3
        A3FFB8B8B8FF767676FF999999FFE7E7E7FF595959FF00000000000000006E6E
        6EFF626262FFEDEDEDFFFFFFFFFF909090FF494949FF838383FFBBBBBBFFBFBF
        BFFFA0A0A0FFA8A8A8FFF2F2F2FFCACACAFF333333FF00000000000000003131
        31FF787878FFEEEEEEFFEEEEEEFFFDFDFDFF7F7F7FFF4D4D4DFF858585FFB2B2
        B2FFA3A3A3FFE9E9E9FFFFFFFFFF737373FF8E8E8EFF0000000000000000AAAA
        AAFF373737FF9C9C9CFFEFEFEFFFFDFDFDFF8D8D8DFF333333FF6E6E6EFFABAB
        ABFFF5F5F5FFFFFFFFFFA3A3A3FF545454FF0000000000000000000000000000
        0000AAAAAAFF353535FFA9A9A9FFF6F6F6FF515151FF4D4D4DFFCCCCCCFFFCFC
        FCFFF7F7F7FF939393FF545454FF000000000000000000000000000000000000
        0000000000005F5F5FFF404040FF989898FF383838FFAAAAAAFF585858FF7D7D
        7DFF4D4D4DFF9B9B9BFF00000000000000000000000000000000000000000000
        000000000000000000005F5F5FFF313131FFBABABAFF00000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In tr'#7921'c ti'#7871'p'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      Action = acPrint
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object locFormGroup3: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object locFormItem6: TdxLayoutItem
            Caption = 'ElPopupButton5'
            ShowCaption = False
            Control = ElPopupButton5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem4: TdxLayoutItem
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
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
          object locFormItem1: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object locFormGroup1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object locFormItem9: TdxLayoutItem
            ShowCaption = False
            Control = btnPreview
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem11: TdxLayoutItem
            Caption = 'btnDirectPrint'
            ShowCaption = False
            Control = btnDirectPrint
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem10: TdxLayoutItem
            Caption = 'btnDesign'
            ShowCaption = False
            Control = btnDesign
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object locFormItem2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = mainPanel
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object CopyMemo: TdxMemo
    Left = 560
    Top = 8
    Width = 155
    Style.BorderStyle = xbsFlat
    TabOrder = 1
    Visible = False
    Height = 17
  end
  object lcBieuThuc: TdxLayoutControl
    Left = 336
    Top = 112
    Width = 441
    Height = 353
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    AutoControlTabOrders = False
    object ElPopupButton8: TElPopupButton
      Left = 22
      Top = 295
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '/'
      TabOrder = 0
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton8Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton9: TElPopupButton
      Left = 22
      Top = 255
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '-'
      TabOrder = 1
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton9Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton11: TElPopupButton
      Left = 22
      Top = 275
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '*'
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton11Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton31: TElPopupButton
      Left = 86
      Top = 235
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '7'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton31Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton32: TElPopupButton
      Left = 153
      Top = 235
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '8'
      TabOrder = 4
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton32Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton33: TElPopupButton
      Left = 220
      Top = 235
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '9'
      TabOrder = 5
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton33Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton34: TElPopupButton
      Left = 220
      Top = 295
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = ')'
      TabOrder = 6
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton34Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton35: TElPopupButton
      Left = 153
      Top = 295
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '('
      TabOrder = 7
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton35Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton36: TElPopupButton
      Left = 22
      Top = 235
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '+'
      TabOrder = 8
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton36Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton37: TElPopupButton
      Left = 350
      Top = 377
      Width = 71
      Height = 30
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 9
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton39: TElPopupButton
      Left = 86
      Top = 295
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '0'
      TabOrder = 10
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton39Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton40: TElPopupButton
      Left = 86
      Top = 275
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '1'
      TabOrder = 11
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton40Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton41: TElPopupButton
      Left = 86
      Top = 255
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '4'
      TabOrder = 12
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton41Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton42: TElPopupButton
      Left = 153
      Top = 255
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '5'
      TabOrder = 13
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton42Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton43: TElPopupButton
      Left = 220
      Top = 255
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '6'
      TabOrder = 14
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton43Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton44: TElPopupButton
      Left = 220
      Top = 275
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '3'
      TabOrder = 15
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton44Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton45: TElPopupButton
      Left = 153
      Top = 275
      Width = 54
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '2'
      TabOrder = 16
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton45Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton47: TElPopupButton
      Left = 287
      Top = 235
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'muc(m'#227' d'#242'ng, m'#227' c'#7897't)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'M'#7909'c'
      TabOrder = 17
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton47Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton48: TElPopupButton
      Left = 354
      Top = 255
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'codk(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'C'#243' '#272'K'
      TabOrder = 19
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton48Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton49: TElPopupButton
      Left = 354
      Top = 275
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'cops(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      ShowBorder = False
      UseXPThemes = True
      Caption = 'C'#243' PS'
      TabOrder = 21
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton49Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton50: TElPopupButton
      Left = 354
      Top = 295
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'cock(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'C'#243' CK'
      TabOrder = 23
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton50Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton51: TElPopupButton
      Left = 287
      Top = 295
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'nock(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' CK'
      TabOrder = 18
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton51Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton52: TElPopupButton
      Left = 287
      Top = 275
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'nops(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' PS'
      TabOrder = 20
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton52Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton53: TElPopupButton
      Left = 287
      Top = 255
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'nodk(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' '#272'K'
      TabOrder = 22
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton53Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object editType: TdxDBImageEdit
      Left = 10
      Top = 10
      Width = 84
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 24
      Alignment = taLeftJustify
      DataField = 'REPORT_ISEXPRESSION'
      DataSource = dsTable
      OnChange = editTypeChange
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      Descriptions.WideStrings = (
        'H'#7857'ng s'#7889
        'Bi'#7875'u th'#7913'c'
        'SQL'
        'TK N'#7907'/C'#243
        'Kh'#244'ng c'#243)
      ImageIndexes.WideStrings = (
        '0'
        '1'
        '2'
        '3'
        '4')
      Values.WideStrings = (
        '0'
        '1'
        '2'
        '3'
        '-1')
      StoredValues = 1
    end
    object editValuesss: TdxDBCalcEdit
      Left = 237
      Top = 10
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 25
      DataField = 'REPORT_VALUE'
      DataSource = dsTable
      PopupBorder = pbFrame3D
    end
    object editExpressionss: TdxDBMemo
      Left = 10
      Top = 38
      Width = 127
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 26
      DataField = 'REPORT_EXPRESSION'
      DataSource = dsTable
      WantReturns = False
      WordWrap = False
      Height = 21
    end
    object ElPopupButton12: TElPopupButton
      Left = 364
      Top = 10
      Width = 69
      Height = 22
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&Ki'#7875'm tra'
      TabOrder = 27
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton12Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBSpinEdit1: TdxDBSpinEdit
      Left = 319
      Top = 10
      Width = 39
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 31
      DataField = 'REPORT_INDEX'
      DataSource = dsTable
      MaxValue = 5.000000000000000000
      StoredValues = 16
    end
    object ElPopupButton4: TElPopupButton
      Left = 354
      Top = 235
      Width = 54
      Height = 24
      Cursor = crDefault
      Hint = 'giatri(stt d'#242'ng, stt c'#7897't)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'Gi'#225' tr'#7883
      TabOrder = 32
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object editSQL: TdxDBMemo
      Left = 10
      Top = 333
      Width = 185
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 33
      DataField = 'REPORT_SQL'
      DataSource = dsTable
      Height = 89
    end
    object dxDBGrid1: TdxDBGrid
      Left = 12
      Top = 67
      Width = 344
      Height = 102
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KEYFIELD'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 34
      DataSource = dsDebitCreditAcc
      Filter.Criteria = {00000000}
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoExtMultiSelect, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoKeepColumnWidth, edgoRowSizing]
      OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoIndicator, edgoUseBitmap]
      PreviewLines = 0
      object dxDBGrid1REPORT_DEBIT_ACC: TdxDBGridColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_DEBIT_ACC'
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1REPORT_CREDIT_ACC: TdxDBGridColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_CREDIT_ACC'
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBGrid1REPORT_COEFFICIENT: TdxDBGridCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_COEFFICIENT'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1REPORT_CONDITIONS_TYPE: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = #272'i'#7873'u ki'#7879'n'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_CONDITIONS_TYPE'
        Descriptions.WideStrings = (
          'K'#7923' n'#224'y'
          'K'#7923' tr'#432#7899'c'
          'L'#361'y k'#7871)
        ImageIndexes.WideStrings = (
          '0'
          '1'
          '2')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1'
          '2')
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n'
      end
    end
    object dxDBCalcEdit1: TdxDBImageEdit
      Left = 149
      Top = 10
      Width = 82
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 35
      DataField = 'REPORT_OTHER_CONDITION'
      DataSource = dsTable
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      Descriptions.WideStrings = (
        'Kh'#244'ng c'#243
        '> 0'
        '>= 0'
        '< 0')
      ImageIndexes.WideStrings = (
        '0'
        '1'
        '2'
        '3')
      Values.WideStrings = (
        '0'
        '1'
        '2'
        '3')
    end
    object ElPopupButton6: TElPopupButton
      Left = 354
      Top = 215
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'nodk(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' '#272'K '#272'T'
      TabOrder = 36
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton6Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 287
      Top = 215
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'codk(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'C'#243' '#272'K '#272'T'
      TabOrder = 37
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton16: TElPopupButton
      Left = 220
      Top = 215
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'cock(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'C'#243' CK '#272'T'
      TabOrder = 38
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton16Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton15: TElPopupButton
      Left = 153
      Top = 215
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'nock(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' CK '#272'T'
      TabOrder = 39
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton15Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton14: TElPopupButton
      Left = 86
      Top = 215
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'nops(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' PS '#272'T'
      TabOrder = 40
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton14Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton13: TElPopupButton
      Left = 22
      Top = 215
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'cops(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      ShowBorder = False
      UseXPThemes = True
      Caption = 'C'#243' PS '#272'T'
      TabOrder = 41
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton13Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton17: TElPopupButton
      Left = 354
      Top = 195
      Width = 64
      Height = 20
      Cursor = crDefault
      Hint = 'cops(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      ShowBorder = False
      UseXPThemes = True
      Caption = 'C'#243' PS YT'
      TabOrder = 42
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton17Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton18: TElPopupButton
      Left = 287
      Top = 195
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'nops(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' PS YT'
      TabOrder = 43
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton18Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton19: TElPopupButton
      Left = 220
      Top = 195
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'nock(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' CK YT'
      TabOrder = 44
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton19Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton20: TElPopupButton
      Left = 153
      Top = 195
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'cock(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'C'#243' CK YT'
      TabOrder = 45
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton20Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton21: TElPopupButton
      Left = 86
      Top = 195
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'codk(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'C'#243' '#272'K YT'
      TabOrder = 46
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton21Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton22: TElPopupButton
      Left = 22
      Top = 195
      Width = 67
      Height = 20
      Cursor = crDefault
      Hint = 'nodk(shtk)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = 'N'#7907' '#272'K YT'
      TabOrder = 47
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton22Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object lcBieuThucGroup13: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            Control = editType
            ControlOptions.ShowBorder = False
          end
          object lcOtherCondition: TdxLayoutItem
            Caption = #272'i'#7873'u ki'#7879'n'
            Control = dxDBCalcEdit1
            ControlOptions.ShowBorder = False
          end
          object editValue: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = editValuesss
            ControlOptions.ShowBorder = False
          end
          object lcDoUuTien: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = #272#7897' '#432'u ti'#234'n'
            Control = dxDBSpinEdit1
            ControlOptions.ShowBorder = False
          end
          object lcCheckButtons: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            ShowCaption = False
            Control = ElPopupButton12
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object editExpression: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Control = editExpressionss
          ControlOptions.ShowBorder = False
        end
        object lcConditions: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = dxDBGrid1
        end
      end
      object lcButtons: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        LayoutDirection = ldHorizontal
        UseIndent = False
        object lcBieuThucGroup7: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
          object lcBieuThucItem29: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPopupButton22
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object lcBieuThucItem23: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'ElPopupButton13'
            ShowCaption = False
            Control = ElPopupButton13
            ControlOptions.ShowBorder = False
          end
          object lcBieuThucItem10: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPopupButton36
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object lcBieuThucItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPopupButton9
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object lcBieuThucItem3: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPopupButton11
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPopupButton8
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object lcBieuThucGroup6: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
          object lcBieuThucGroup10: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            UseIndent = False
            object lcBieuThucGroup9: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object lcBieuThucGroup19: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object lcBieuThucItem28: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Control = ElPopupButton21
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object lcBieuThucItem22: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'ElPopupButton14'
                  ShowCaption = False
                  Control = ElPopupButton14
                  ControlOptions.ShowBorder = False
                end
                object lcBieuThucItem5: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  ShowCaption = False
                  Control = ElPopupButton31
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object lcBieuThucGroup20: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object lcBieuThucItem27: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Control = ElPopupButton20
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object lcBieuThucItem20: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'ElPopupButton15'
                  ShowCaption = False
                  Control = ElPopupButton15
                  ControlOptions.ShowBorder = False
                end
                object lcBieuThucItem6: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  ShowCaption = False
                  Control = ElPopupButton32
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object lcBieuThucGroup21: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object lcBieuThucItem26: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Control = ElPopupButton19
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object lcBieuThucItem12: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'ElPopupButton16'
                  ShowCaption = False
                  Control = ElPopupButton16
                  ControlOptions.ShowBorder = False
                end
                object lcBieuThucItem7: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  ShowCaption = False
                  Control = ElPopupButton33
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcBieuThucGroup12: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object lcBieuThucItem15: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton41
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem16: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton42
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem17: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton43
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutGroup2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object lcBieuThucItem14: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton40
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem19: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton45
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem18: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton44
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcBieuThucGroup11: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            UseIndent = False
            object lcBieuThucItem13: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              ShowCaption = False
              Control = ElPopupButton39
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object lcBieuThucItem9: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              ShowCaption = False
              Control = ElPopupButton35
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object lcBieuThucItem8: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              ShowCaption = False
              Control = ElPopupButton34
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object lcBieuThucGroup3: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup2: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup4: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
          object lcBieuThucGroup17: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            UseIndent = False
            object lcBieuThucGroup22: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              UseIndent = False
              object lcBieuThucItem25: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton18
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'ElPopupButton7'
                ShowCaption = False
                Control = ElPopupButton7
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem21: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton47
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object lcBieuThucGroup18: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              UseIndent = False
              object lcBieuThucItem24: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton17
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lcBieuThucItem1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'ElPopupButton6'
                ShowCaption = False
                Control = ElPopupButton6
                ControlOptions.ShowBorder = False
              end
              object lcValue: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcBieuThucGroup14: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            UseIndent = False
            object lcBieuThucGroup15: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object lcnodk: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton53
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lccodk: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton48
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object lcBieuThucGroup16: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object lcnops: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton52
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lccops: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = ElPopupButton49
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcBieuThucGroup8: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            UseIndent = False
            object lcnock: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              ShowCaption = False
              Control = ElPopupButton51
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object lccock: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              ShowCaption = False
              Control = ElPopupButton50
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object lcBieuThucGroup5: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
      end
      object lcSQL: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'SQL'
        ShowCaption = False
        Control = editSQL
        ControlOptions.ShowBorder = False
      end
      object lcBieuThucGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        object lcBieuThucItem11: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          ShowCaption = False
          Control = ElPopupButton37
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
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
        Caption = 'B'#225'o c'#225'o t'#7893'ng h'#7907'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 48
  end
  object ActionList1: TActionList
    Left = 66
    Top = 48
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsReportList
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsReportList
    end
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsert'
      OnExecute = acInsertExecute
      DataSource = dsReportList
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsReportList
    end
    object acCal: TAction
      Caption = 'acCal'
      OnExecute = acCalExecute
    end
    object acPreview: TAction
      Caption = 'acPreview'
      OnExecute = acPreviewExecute
    end
    object acPrint: TAction
      Caption = 'acPrint'
      OnExecute = acPrintExecute
    end
    object acDesign: TAction
      Caption = 'acDesign'
      OnExecute = acDesignExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 32
    Top = 78
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acPreview
      Caption = '&Xem tr'#432#7899'c in'
      Category = 0
      Hint = 'Xem tr'#432#7899'c in'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = acPrint
      Caption = '&In tr'#7921'c ti'#7871'p'
      Category = 0
      Hint = 'In tr'#7921'c ti'#7871'p'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = acDesign
      Caption = 'S'#7917'a l'#7841'i &m'#7851'u'
      Category = 0
      Hint = 'S'#7917'a l'#7841'i m'#7851'u'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = acCal
      Caption = 'T'#237'nh &gi'#225' tr'#7883
      Category = 0
      Hint = 'T'#237'nh gi'#225' tr'#7883
      Visible = ivAlways
    end
  end
  object dsgReport: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptDocReport
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 76
    Top = 200
  end
  object rptDocReport: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'P:\Projects\ACC_OSC\Bin\Templates\Tonghop\ThuyetMinhBCTC.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.WindowState = wsMaximized
    Left = 40
    Top = 200
    Version = '7.0'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'K'#202'T QU'#7842' H'#7884'AT '#272#7896'NG KINH DOANH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 86784
        mmTop = 2117
        mmWidth = 110861
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'lblthoigian'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 10583
        mmWidth = 15610
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 284427
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '7.0'
          mmColumnWidth = 0
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 273051
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 19050
              mmWidth = 273051
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 276226
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = 'PH'#7846'N I: L'#195'I L'#7894
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 8996
              mmTop = 1852
              mmWidth = 25358
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 143934
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 189177
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 234421
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 122767
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'CH'#7880' TI'#202'U'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 55033
              mmTop = 12435
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 'M'#195' S'#7888
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 127794
              mmTop = 12435
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = 'K'#7922' TR'#431#7898'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 156369
              mmTop = 12435
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 'K'#7922' N'#192'Y'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 205846
              mmTop = 12435
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'L'#360'Y K'#7870' T'#7914' '#272#7846'U N'#258'M'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 9525
              mmLeft = 245005
              mmTop = 9790
              mmWidth = 25400
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine10: TppLine
              UserName = 'Line10'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 4496
              mmWidth = 273051
              BandType = 4
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 6350
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              ParentHeight = True
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 276226
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 122767
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 143934
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 189177
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 234421
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7144
        mmWidth = 284428
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '7.0'
          mmColumnWidth = 0
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLine16: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 273051
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line2'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 19050
              mmWidth = 273051
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line4'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 276226
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label3'
              Caption = 'PH'#7846'N II: T'#204'NH H'#204'NH TH'#7920'C HI'#7878'N NGH'#296'A V'#7908' V'#7898'I NH'#192' N'#431#7898'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 8996
              mmTop = 1852
              mmWidth = 99018
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line5'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5821
              mmLeft = 152400
              mmTop = 14552
              mmWidth = 3175
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line6'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 215900
              mmTop = 14288
              mmWidth = 3175
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 247650
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line8'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 120650
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label4'
              Caption = 'CH'#7880' TI'#202'U'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 33867
              mmTop = 12700
              mmWidth = 15081
              BandType = 1
            end
            object ppLine31: TppLine
              UserName = 'Line31'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 88900
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine32: TppLine
              UserName = 'Line32'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 184150
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Caption = 'S'#7889' c'#242'n ph'#7843'i n'#7897'p k'#7923' tr'#432#7899'c'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8731
              mmLeft = 93134
              mmTop = 10319
              mmWidth = 23813
              BandType = 1
            end
            object ppLine35: TppLine
              UserName = 'Line16'
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 120915
              mmTop = 14288
              mmWidth = 127000
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'S'#7889' ph'#225't sinh trong k'#7923
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 134409
              mmTop = 9525
              mmWidth = 35941
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'L'#361'y k'#7871' t'#7915' '#273#7847'u n'#259'm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 200290
              mmTop = 9525
              mmWidth = 31242
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'S'#7889' c'#242'n ph'#7843'i n'#7897'p cu'#7889'i k'#7923
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8467
              mmLeft = 251355
              mmTop = 10583
              mmWidth = 25135
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'S'#7889' ph'#7843'i n'#7897'p'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 126582
              mmTop = 15346
              mmWidth = 20151
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'S'#7889' '#273#227' n'#7897'p'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 160298
              mmTop = 15346
              mmWidth = 17018
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine24: TppLine
              UserName = 'Line10'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 4496
              mmWidth = 273051
              BandType = 4
            end
            object ppLine25: TppLine
              UserName = 'Line9'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 6350
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine26: TppLine
              UserName = 'Line11'
              ParentHeight = True
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 276226
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine27: TppLine
              UserName = 'Line12'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 120650
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine28: TppLine
              UserName = 'Line13'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 152400
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine29: TppLine
              UserName = 'Line14'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 184150
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine30: TppLine
              UserName = 'Line15'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 247650
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine33: TppLine
              UserName = 'Line33'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 88900
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine34: TppLine
              UserName = 'Line34'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 215900
              mmTop = 0
              mmWidth = 2117
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'L'#7853'p bi'#7875'u'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 3704
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Th'#7911' tr'#432#7903'ng '#273#417'n v'#7883
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 220134
        mmTop = 14288
        mmWidth = 31221
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = '(K'#253', h'#7885' t'#234'n)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 7938
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = '(K'#253', h'#7885' t'#234'n)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 67733
        mmTop = 10054
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = '(K'#253' t'#234'n, '#273#243'ng d'#7845'u)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 220134
        mmTop = 20638
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = 'Ng'#224'y l'#7853'p            th'#225'ng            n'#259'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 190500
        mmTop = 3704
        mmWidth = 64558
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = 'lblworkday'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 203730
        mmTop = 3704
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = 'lblworkyear'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 238390
        mmTop = 3704
        mmWidth = 14817
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Caption = 'lblworkmonth'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 221721
        mmTop = 3704
        mmWidth = 7673
        BandType = 7
      end
    end
  end
  object qryReportList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'HIDE'
        ParamType = ptUnknown
      end>
    AutoFetchAll = True
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_LIST'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_LIST SET'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_NAME = :REPORT_NAME,'
      '   REPORT_NOTE = :REPORT_NOTE,'
      '   REPORT_PARENT = :REPORT_PARENT,'
      '   REPORT_FILETEMPLATE = :REPORT_FILETEMPLATE,'
      '   REPORT_FROM_MONTH = :REPORT_FROM_MONTH,'
      '   REPORT_PARAM_TYPE = :REPORT_PARAM_TYPE,'
      '   REPORT_TO_MONTH = :REPORT_TO_MONTH,'
      '   REPORT_FROM_QUARTER = :REPORT_FROM_QUARTER,'
      '   REPORT_TO_QUARTER = :REPORT_TO_QUARTER,'
      '   REPORT_FROM_YEAR = :REPORT_FROM_YEAR,'
      '   REPORT_TO_YEAR = :REPORT_TO_YEAR,'
      '   HIEN_THI = :HIEN_THI,'
      '   REPORT_VIEW_TYPE = :REPORT_VIEW_TYPE'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_LIST('
      '   REPORT_ID, /*PK*/'
      '   REPORT_NAME,'
      '   REPORT_NOTE,'
      '   REPORT_PARENT,'
      '   REPORT_FILETEMPLATE,'
      '   REPORT_FROM_MONTH,'
      '   REPORT_PARAM_TYPE,'
      '   REPORT_TO_MONTH,'
      '   REPORT_FROM_QUARTER,'
      '   REPORT_TO_QUARTER,'
      '   REPORT_FROM_YEAR,'
      '   REPORT_TO_YEAR,'
      '   HIEN_THI,'
      '   REPORT_VIEW_TYPE)'
      'VALUES ('
      '   :REPORT_ID,'
      '   :REPORT_NAME,'
      '   :REPORT_NOTE,'
      '   :REPORT_PARENT,'
      '   :REPORT_FILETEMPLATE,'
      '   :REPORT_FROM_MONTH,'
      '   :REPORT_PARAM_TYPE,'
      '   :REPORT_TO_MONTH,'
      '   :REPORT_FROM_QUARTER,'
      '   :REPORT_TO_QUARTER,'
      '   :REPORT_FROM_YEAR,'
      '   :REPORT_TO_YEAR,'
      '   :HIEN_THI,'
      '   :REPORT_VIEW_TYPE)')
    KeyLinks.Strings = (
      'REPORT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryReportListError
    BeforeEdit = qryReportListBeforeEdit
    BeforeDelete = qryReportListBeforeDelete
    AfterDelete = qryReportListAfterDelete
    BeforeInsert = qryReportListBeforeInsert
    BeforePost = qryReportListBeforePost
    AfterPost = qryReportListAfterPost
    OnCalcFields = qryReportListCalcFields
    OnNewRecord = qryReportListNewRecord
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_NAME'
      '     , REPORT_NOTE'
      '     , REPORT_PARENT'
      '     , REPORT_FILETEMPLATE'
      '     , REPORT_FROM_MONTH'
      '     , REPORT_PARAM_TYPE'
      '     , REPORT_TO_MONTH'
      '     , REPORT_FROM_QUARTER'
      '     , REPORT_TO_QUARTER'
      '     , REPORT_FROM_YEAR'
      '     , REPORT_TO_YEAR'
      '     , HIEN_THI'
      '     , REPORT_VIEW_TYPE'
      'FROM F_REPORT_LIST'
      'WHERE (HIEN_THI=1) or (HIEN_THI=:HIDE)')
    FieldOptions = []
    Left = 34
    Top = 242
    object qryReportListREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Required = True
      Size = 1533
    end
    object qryReportListREPORT_NOTE: TWideStringField
      FieldName = 'REPORT_NOTE'
      Size = 6144
    end
    object qryReportListREPORT_FILETEMPLATE: TWideStringField
      FieldName = 'REPORT_FILETEMPLATE'
      Size = 30
    end
    object qryReportListREPORT_FROM_MONTH: TSmallintField
      FieldName = 'REPORT_FROM_MONTH'
    end
    object qryReportListREPORT_PARAM_TYPE: TSmallintField
      FieldName = 'REPORT_PARAM_TYPE'
    end
    object qryReportListREPORT_TO_MONTH: TSmallintField
      FieldName = 'REPORT_TO_MONTH'
    end
    object qryReportListREPORT_FROM_QUARTER: TSmallintField
      FieldName = 'REPORT_FROM_QUARTER'
    end
    object qryReportListREPORT_TO_QUARTER: TSmallintField
      FieldName = 'REPORT_TO_QUARTER'
    end
    object qryReportListREPORT_FROM_YEAR: TSmallintField
      FieldName = 'REPORT_FROM_YEAR'
    end
    object qryReportListREPORT_TO_YEAR: TSmallintField
      FieldName = 'REPORT_TO_YEAR'
    end
    object qryReportListHIEN_THI: TSmallintField
      FieldName = 'HIEN_THI'
    end
    object qryReportListREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryReportListREPORT_PARENT: TWideStringField
      FieldName = 'REPORT_PARENT'
      Size = 30
    end
    object qryReportListREPORT_VIEW_TYPE: TSmallintField
      FieldName = 'REPORT_VIEW_TYPE'
    end
    object qryReportListICON: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ICON'
      Calculated = True
    end
  end
  object dsReportList: TDataSource
    DataSet = qryReportList
    Left = 34
    Top = 277
  end
  object qryItems: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_ITEMS'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_ITEMS SET'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID = :REPORT_ITEM_ID, /*PK*/'
      '   REPORT_ITEM_NOTE = :REPORT_ITEM_NOTE,'
      '   REPORT_ITEM_NAME_ID = :REPORT_ITEM_NAME_ID,'
      '   REPORT_BOLD = :REPORT_BOLD'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_ITEMS('
      '   REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID, /*PK*/'
      '   REPORT_ITEM_NOTE,'
      '   REPORT_ITEM_NAME_ID,'
      '   REPORT_BOLD)'
      'VALUES ('
      '   :REPORT_ID,'
      '   :REPORT_ITEM_ID,'
      '   :REPORT_ITEM_NOTE,'
      '   :REPORT_ITEM_NAME_ID,'
      '   :REPORT_BOLD)')
    KeyLinks.Strings = (
      'REPORT_ID'
      'REPORT_ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryItemsError
    AfterDelete = qryItemsAfterDelete
    BeforePost = qryItemsBeforePost
    AfterPost = qryItemsAfterPost
    OnNewRecord = qryItemsNewRecord
    DataSource = dsReportList
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_ITEM_ID'
      '     , REPORT_ITEM_NOTE'
      '     , REPORT_ITEM_NAME_ID'
      '     , REPORT_BOLD'
      '     , REPORT_OBJECT_TYPE'
      'FROM F_REPORT_ITEMS'
      'WHERE REPORT_ID = :REPORT_ID'
      'ORDER BY REPORT_ITEM_ID asc')
    FieldOptions = []
    Left = 66
    Top = 242
    object qryItemsREPORT_ITEM_ID: TIntegerField
      FieldName = 'REPORT_ITEM_ID'
      Required = True
    end
    object qryItemsREPORT_ITEM_NOTE: TWideStringField
      FieldName = 'REPORT_ITEM_NOTE'
      Size = 6144
    end
    object qryItemsREPORT_ITEM_NAME_ID: TWideStringField
      FieldName = 'REPORT_ITEM_NAME_ID'
      Required = True
      Size = 126
    end
    object qryItemsREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryItemsREPORT_BOLD: TSmallintField
      FieldName = 'REPORT_BOLD'
    end
    object qryItemsREPORT_OBJECT_TYPE: TSmallintField
      FieldName = 'REPORT_OBJECT_TYPE'
    end
  end
  object dsItems: TDataSource
    DataSet = qryItems
    Left = 66
    Top = 277
  end
  object qryCols: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_COLUMNS'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_COLUMNS SET'
      '   REPORT_COL_ID = :REPORT_COL_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_COL_NAME = :REPORT_COL_NAME,'
      '   REPORT_COL_NOTE = :REPORT_COL_NOTE,'
      '   REPORT_COL_TYPE = :REPORT_COL_TYPE,'
      '   REPORT_COL_NAME_ID = :REPORT_COL_NAME_ID,'
      '   REPORT_COLOR = :REPORT_COLOR,'
      '   REPORT_WIDTH_VALUE = :REPORT_WIDTH_VALUE,'
      '   REPORT_WIDTH_DEFINE = :REPORT_WIDTH_DEFINE,'
      '   REPORT_BOLD = :REPORT_BOLD,'
      '   REPORT_VALUABLE = :REPORT_VALUABLE,'
      '   REPORT_OBJECT_TYPE = :REPORT_OBJECT_TYPE'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_COLUMNS('
      '   REPORT_COL_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   REPORT_COL_NAME,'
      '   REPORT_COL_NOTE,'
      '   REPORT_COL_TYPE,'
      '   REPORT_COL_NAME_ID,'
      '   REPORT_COLOR,'
      '   REPORT_WIDTH_VALUE,'
      '   REPORT_WIDTH_DEFINE,'
      '   REPORT_BOLD,'
      '   REPORT_VALUABLE,'
      '   REPORT_OBJECT_TYPE)'
      'VALUES ('
      '   :REPORT_COL_ID,'
      '   :REPORT_ID,'
      '   :REPORT_COL_NAME,'
      '   :REPORT_COL_NOTE,'
      '   :REPORT_COL_TYPE,'
      '   :REPORT_COL_NAME_ID,'
      '   :REPORT_COLOR,'
      '   :REPORT_WIDTH_VALUE,'
      '   :REPORT_WIDTH_DEFINE,'
      '   :REPORT_BOLD,'
      '   :REPORT_VALUABLE,'
      '   :REPORT_OBJECT_TYPE)')
    KeyLinks.Strings = (
      'REPORT_ID'
      'REPORT_COL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryColsError
    AfterDelete = qryColsAfterDelete
    BeforePost = qryColsBeforePost
    AfterPost = qryColsAfterPost
    OnNewRecord = qryColsNewRecord
    DataSource = dsReportList
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_COL_ID'
      '     , REPORT_COL_NAME'
      '     , REPORT_COL_NOTE'
      '     , REPORT_COL_TYPE'
      '     , REPORT_COL_NAME_ID'
      '     , REPORT_COLOR'
      '     , REPORT_WIDTH_VALUE'
      '     , REPORT_WIDTH_DEFINE'
      '     , REPORT_BOLD'
      '     , REPORT_VALUABLE'
      '     , REPORT_OBJECT_TYPE'
      'FROM F_REPORT_COLUMNS'
      'WHERE REPORT_ID = :REPORT_ID'
      'ORDER BY REPORT_COL_ID asc')
    FieldOptions = []
    Left = 98
    Top = 242
    object qryColsREPORT_COL_ID: TIntegerField
      FieldName = 'REPORT_COL_ID'
      Required = True
    end
    object qryColsREPORT_COL_NAME: TWideStringField
      FieldName = 'REPORT_COL_NAME'
      Required = True
      Size = 1533
    end
    object qryColsREPORT_COL_NOTE: TWideStringField
      FieldName = 'REPORT_COL_NOTE'
      Size = 6144
    end
    object qryColsREPORT_COL_TYPE: TIntegerField
      FieldName = 'REPORT_COL_TYPE'
    end
    object qryColsREPORT_COL_NAME_ID: TWideStringField
      FieldName = 'REPORT_COL_NAME_ID'
      Required = True
      Size = 126
    end
    object qryColsREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryColsREPORT_COLOR: TIBOFloatField
      FieldName = 'REPORT_COLOR'
    end
    object qryColsREPORT_WIDTH_VALUE: TIntegerField
      FieldName = 'REPORT_WIDTH_VALUE'
    end
    object qryColsREPORT_WIDTH_DEFINE: TIntegerField
      FieldName = 'REPORT_WIDTH_DEFINE'
    end
    object qryColsREPORT_BOLD: TSmallintField
      FieldName = 'REPORT_BOLD'
    end
    object qryColsREPORT_VALUABLE: TSmallintField
      FieldName = 'REPORT_VALUABLE'
    end
    object qryColsREPORT_OBJECT_TYPE: TSmallintField
      FieldName = 'REPORT_OBJECT_TYPE'
    end
  end
  object dsCols: TDataSource
    DataSet = qryCols
    Left = 98
    Top = 277
  end
  object qryTable: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_DEFINE_REPORT'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE F_DEFINE_REPORT SET'
      '   REPORT_COL_ID = :REPORT_COL_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID = :REPORT_ITEM_ID, /*PK*/'
      '   REPORT_VALUE = :REPORT_VALUE,'
      '   REPORT_EXPRESSION = :REPORT_EXPRESSION,'
      '   REPORT_SQL = :REPORT_SQL,'
      '   REPORT_STRING = :REPORT_STRING,'
      '   REPORT_INDEX = :REPORT_INDEX,'
      '   REPORT_BOOLEAN = :REPORT_BOOLEAN,'
      '   REPORT_DATE = :REPORT_DATE,'
      '   REPORT_TIME = :REPORT_TIME,'
      '   REPORT_IMAGE = :REPORT_IMAGE,'
      '   REPORT_DATETIME = :REPORT_DATETIME,'
      '   REPORT_IMAGETYPE = :REPORT_IMAGETYPE,'
      '   REPORT_ISEXPRESSION = :REPORT_ISEXPRESSION,'
      '   REPORT_OTHER_CONDITION = :REPORT_OTHER_CONDITION'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_DEFINE_REPORT('
      '   REPORT_COL_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID, /*PK*/'
      '   REPORT_VALUE,'
      '   REPORT_EXPRESSION,'
      '   REPORT_SQL,'
      '   REPORT_STRING,'
      '   REPORT_INDEX,'
      '   REPORT_BOOLEAN,'
      '   REPORT_DATE,'
      '   REPORT_TIME,'
      '   REPORT_IMAGE,'
      '   REPORT_DATETIME,'
      '   REPORT_IMAGETYPE,'
      '   REPORT_ISEXPRESSION,'
      '   REPORT_OTHER_CONDITION)'
      'VALUES ('
      '   :REPORT_COL_ID,'
      '   :REPORT_ID,'
      '   :REPORT_ITEM_ID,'
      '   :REPORT_VALUE,'
      '   :REPORT_EXPRESSION,'
      '   :REPORT_SQL,'
      '   :REPORT_STRING,'
      '   :REPORT_INDEX,'
      '   :REPORT_BOOLEAN,'
      '   :REPORT_DATE,'
      '   :REPORT_TIME,'
      '   :REPORT_IMAGE,'
      '   :REPORT_DATETIME,'
      '   :REPORT_IMAGETYPE,'
      '   :REPORT_ISEXPRESSION,'
      '   :REPORT_OTHER_CONDITION)')
    KeyLinks.Strings = (
      'F_DEFINE_REPORT.REPORT_ID'
      'F_DEFINE_REPORT.REPORT_COL_ID'
      'F_DEFINE_REPORT.REPORT_ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryTableBeforePost
    AfterPost = qryTableAfterPost
    OnNewRecord = qryTableNewRecord
    DataSource = dsReportList
    SQL.Strings = (
      'SELECT F_DEFINE_REPORT.REPORT_ID'
      '     , F_DEFINE_REPORT.REPORT_ITEM_ID'
      '     , F_DEFINE_REPORT.REPORT_COL_ID'
      '     , F_DEFINE_REPORT.REPORT_VALUE'
      '     , F_DEFINE_REPORT.REPORT_EXPRESSION'
      '     , F_DEFINE_REPORT.REPORT_SQL'
      '     , F_DEFINE_REPORT.REPORT_STRING'
      '     , F_DEFINE_REPORT.REPORT_INDEX'
      '     , F_REPORT_ITEMS.REPORT_ITEM_NAME_ID'
      '     , F_REPORT_ITEMS.REPORT_BOLD REPORT_ITEM_BOLD'
      '     , F_REPORT_COLUMNS.REPORT_COL_NAME'
      '     , F_REPORT_COLUMNS.REPORT_COL_NAME_ID'
      '     , F_REPORT_COLUMNS.REPORT_BOLD REPORT_COL_BOLD'
      '     , REPORT_BOOLEAN'
      '     , REPORT_DATE'
      '     , REPORT_TIME'
      '     , REPORT_IMAGE'
      '     , REPORT_DATETIME'
      '     , REPORT_IMAGETYPE'
      '     , REPORT_ISEXPRESSION'
      '     , REPORT_OTHER_CONDITION'
      
        '     , F_REPORT_COLUMNS.REPORT_OBJECT_TYPE REPORT_OBJECT_TYPE_CO' +
        'L'
      '     , REPORT_COL_TYPE REPORT_TYPE'
      'FROM F_DEFINE_REPORT'
      
        'JOIN F_REPORT_COLUMNS ON F_REPORT_COLUMNS.REPORT_COL_ID = F_DEFI' +
        'NE_REPORT.REPORT_COL_ID AND'
      
        '                         F_REPORT_COLUMNS.REPORT_ID = F_DEFINE_R' +
        'EPORT.REPORT_ID'
      
        'JOIN F_REPORT_ITEMS ON F_REPORT_ITEMS.REPORT_ITEM_ID = F_DEFINE_' +
        'REPORT.REPORT_ITEM_ID AND'
      
        '                       F_REPORT_ITEMS.REPORT_ID = F_DEFINE_REPOR' +
        'T.REPORT_ID'
      'WHERE F_DEFINE_REPORT.REPORT_ID = :REPORT_ID'
      
        'order by F_DEFINE_REPORT.REPORT_INDEX,F_DEFINE_REPORT.REPORT_ITE' +
        'M_ID,F_DEFINE_REPORT.REPORT_col_ID')
    FieldOptions = []
    Left = 130
    Top = 242
    object qryTableREPORT_ITEM_ID: TIntegerField
      FieldName = 'REPORT_ITEM_ID'
      Required = True
    end
    object qryTableREPORT_COL_ID: TIntegerField
      FieldName = 'REPORT_COL_ID'
      Required = True
    end
    object qryTableREPORT_VALUE: TIBOFloatField
      FieldName = 'REPORT_VALUE'
    end
    object qryTableREPORT_TYPE: TIntegerField
      FieldName = 'REPORT_TYPE'
    end
    object qryTableREPORT_STRING: TWideStringField
      FieldName = 'REPORT_STRING'
      Size = 6144
    end
    object qryTableREPORT_INDEX: TSmallintField
      FieldName = 'REPORT_INDEX'
      Required = True
    end
    object qryTableREPORT_ITEM_NAME_ID: TWideStringField
      FieldName = 'REPORT_ITEM_NAME_ID'
      Required = True
      Size = 126
    end
    object qryTableREPORT_COL_NAME: TWideStringField
      FieldName = 'REPORT_COL_NAME'
      Required = True
      Size = 1533
    end
    object qryTableREPORT_COL_NAME_ID: TWideStringField
      FieldName = 'REPORT_COL_NAME_ID'
      Required = True
      Size = 126
    end
    object qryTableREPORT_BOOLEAN: TSmallintField
      FieldName = 'REPORT_BOOLEAN'
    end
    object qryTableREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
    end
    object qryTableREPORT_TIME: TTimeField
      FieldName = 'REPORT_TIME'
    end
    object qryTableREPORT_IMAGE: TBlobField
      FieldName = 'REPORT_IMAGE'
      Size = 8
    end
    object qryTableREPORT_DATETIME: TDateTimeField
      FieldName = 'REPORT_DATETIME'
    end
    object qryTableREPORT_IMAGETYPE: TWideStringField
      FieldName = 'REPORT_IMAGETYPE'
      Size = 15
    end
    object qryTableREPORT_ISEXPRESSION: TSmallintField
      FieldName = 'REPORT_ISEXPRESSION'
    end
    object qryTableREPORT_EXPRESSION: TWideStringField
      FieldName = 'REPORT_EXPRESSION'
      Size = 255
    end
    object qryTableREPORT_SQL: TWideStringField
      FieldName = 'REPORT_SQL'
      Size = 6144
    end
    object qryTableREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryTableREPORT_OTHER_CONDITION: TSmallintField
      FieldName = 'REPORT_OTHER_CONDITION'
    end
    object qryTableREPORT_ITEM_BOLD: TSmallintField
      FieldName = 'REPORT_ITEM_BOLD'
    end
    object qryTableREPORT_COL_BOLD: TSmallintField
      FieldName = 'REPORT_COL_BOLD'
    end
    object qryTableREPORT_OBJECT_TYPE_COL: TSmallintField
      FieldName = 'REPORT_OBJECT_TYPE_COL'
    end
  end
  object dsTable: TDataSource
    DataSet = qryTable
    Left = 130
    Top = 277
  end
  object memReportTable: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 115
    Top = 171
  end
  object memReportTableIndex: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 147
    Top = 171
  end
  object dsReportTableIndex: TDataSource
    DataSet = memReportTableIndex
    Left = 147
    Top = 203
  end
  object dsReportTable: TDataSource
    DataSet = memReportTable
    Left = 115
    Top = 203
  end
  object popupReportList: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end>
    UseOwnFont = False
    Left = 31
    Top = 108
  end
  object memReportTableDefine: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 179
    Top = 171
  end
  object dsReportTableDefine: TDataSource
    DataSet = memReportTableDefine
    Left = 179
    Top = 203
  end
  object qryTemp: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 98
    Top = 346
  end
  object expReportCalculator: TStExpression
    Left = 64
    Top = 344
  end
  object qryDebitCreditAcc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORT_COL_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORT_ITEM_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_DEBIT_CREDIT_ACC'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_CREDIT_ACC = :OLD_REPORT_CREDIT_ACC AND'
      '   REPORT_DEBIT_ACC = :OLD_REPORT_DEBIT_ACC AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_DEBIT_CREDIT_ACC SET'
      '   REPORT_COL_ID = :REPORT_COL_ID, /*PK*/'
      '   REPORT_CREDIT_ACC = :REPORT_CREDIT_ACC, /*PK*/'
      '   REPORT_DEBIT_ACC = :REPORT_DEBIT_ACC, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID = :REPORT_ITEM_ID, /*PK*/'
      '   REPORT_COEFFICIENT = :REPORT_COEFFICIENT,'
      '   REPORT_CONDITIONS_TYPE = :REPORT_CONDITIONS_TYPE'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_CREDIT_ACC = :OLD_REPORT_CREDIT_ACC AND'
      '   REPORT_DEBIT_ACC = :OLD_REPORT_DEBIT_ACC AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_DEBIT_CREDIT_ACC('
      '   REPORT_COL_ID, /*PK*/'
      '   REPORT_CREDIT_ACC, /*PK*/'
      '   REPORT_DEBIT_ACC, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID, /*PK*/'
      '   REPORT_COEFFICIENT,'
      '   REPORT_CONDITIONS_TYPE)'
      'VALUES ('
      '   :REPORT_COL_ID,'
      '   :REPORT_CREDIT_ACC,'
      '   :REPORT_DEBIT_ACC,'
      '   :REPORT_ID,'
      '   :REPORT_ITEM_ID,'
      '   :REPORT_COEFFICIENT,'
      '   :REPORT_CONDITIONS_TYPE)')
    KeyLinks.Strings = (
      'REPORT_DEBIT_ACC'
      'REPORT_CREDIT_ACC'
      'REPORT_ID'
      'REPORT_COL_ID'
      'REPORT_ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDebitCreditAccNewRecord
    DataSource = dsTable
    SQL.Strings = (
      
        'SELECT REPORT_ID||REPORT_COL_ID||REPORT_ITEM_ID||REPORT_DEBIT_AC' +
        'C||REPORT_CREDIT_ACC KEYFIELD'
      '     , REPORT_DEBIT_ACC'
      '     , REPORT_CREDIT_ACC'
      '     , REPORT_COEFFICIENT'
      '     , REPORT_ID'
      '     , REPORT_COL_ID'
      '     , REPORT_ITEM_ID'
      '     , REPORT_CONDITIONS_TYPE'
      'FROM F_REPORT_DEBIT_CREDIT_ACC'
      'WHERE REPORT_ID = :REPORT_ID AND'
      '      REPORT_COL_ID = :REPORT_COL_ID AND'
      '      REPORT_ITEM_ID = :REPORT_ITEM_ID')
    FieldOptions = []
    Left = 162
    Top = 242
    object qryDebitCreditAccKEYFIELD: TWideStringField
      FieldName = 'KEYFIELD'
      ReadOnly = True
      Required = True
      Size = 82
    end
    object qryDebitCreditAccREPORT_DEBIT_ACC: TWideStringField
      FieldName = 'REPORT_DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryDebitCreditAccREPORT_CREDIT_ACC: TWideStringField
      FieldName = 'REPORT_CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryDebitCreditAccREPORT_COEFFICIENT: TIBOFloatField
      FieldName = 'REPORT_COEFFICIENT'
    end
    object qryDebitCreditAccREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryDebitCreditAccREPORT_COL_ID: TIntegerField
      FieldName = 'REPORT_COL_ID'
      Required = True
    end
    object qryDebitCreditAccREPORT_ITEM_ID: TIntegerField
      FieldName = 'REPORT_ITEM_ID'
      Required = True
    end
    object qryDebitCreditAccREPORT_CONDITIONS_TYPE: TSmallintField
      FieldName = 'REPORT_CONDITIONS_TYPE'
    end
  end
  object dsDebitCreditAcc: TDataSource
    DataSet = qryDebitCreditAcc
    Left = 162
    Top = 277
  end
  object ImageList: TImageList
    Left = 66
    Top = 77
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000CFA5
      9E00C28C8200C18B8000C18A7F00C1897E00C1887C00C1887C00C1877B00C186
      7900C1857800C1847700C2847500D4B3AD00000000000000000000000000C99E
      9700ECCFC400ECCCC100ECC6B900ECC6B900ECC6B900ECBFAC00ECBFAC00ECBC
      A700ECBCA700ECB7A000ECB7A000B17268000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFA3
      9C00FFF4E400FFF3E100FFF2DE00FFF1DC00FFF0D900FFEFD600FFEED400FFED
      D100FFECCF00FFEBCC00FFEBCA00C2857600000000000000000000000000B172
      6800FFF4E200FFF4E200FEF2E100FEF2E100FFF0D900FFF0D900FEEDD300FEED
      D300FFF0D900FFEACC00FFEACC00ECB7A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA2
      9B00FFF5E700FFF5E400FFF4E100FFF1E000FFF0DC00FFEFD900FFEED800FFED
      D400FFEDD200FFECD000FFEBCD00C1857800000000000000000000000000B172
      6800FEF6EA00FEF6EA00FFF4E200FEF2E100FEF2E100FFF0D900FEF2E100FFF0
      D900FEEDD300FFF0D900FFEACC00F0C7A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA2
      9B00FFF6EA00FFF6E900FFF5E500FFF4E400FFF0DD00FFE4C700FFDBB800FBD3
      AC004A454100FFEFD500FFEDD100C1867A00000000000000000000000000B172
      6800FEF8ED00FEF6EA00FEF6EA00FFF4E200FEFCF600FEFCF600FEFCF600FEFC
      F600FFEFE000FEEDD300FFEACC00ECBFAC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA2
      9B00FFF9EF00FFF8ED00FFF5E800FFE3C600FFDBBA00FFDAB500B3C2DE00729B
      DD00F0EBE400FFEED800FFEED500C1877C00000000000000000000000000B172
      6800FEFCF600FCF6F200FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFA
      F400FEF8ED00FFF0D900FFF0D900ECC0AE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFA4
      9C00FFF9F200FFECDA00FFE4CB00FFE3C700FEE0C2001589E100A0BCE600CBE2
      FD00FFF2DD00FFF1DC00FFF0D900C1897D00000000000000000000000000B678
      6C00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFAF400FEFA
      F400FEF6EA00FEF2E100FFF0D900ECC4B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5AA
      A100FFEDDE00FFEAD900FFE9D400FEE5CE00007DDD0000A9FF0065DEFF00F5EF
      E700FFF4E100FFF1DE00FFF1DD00C18A7F00000000000000000000000000BB7F
      7000FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEF6
      EA00FEF8ED00FEF8ED00FEF2E100ECC4B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9B0
      A400FFF1E500FFEFE100FEF6EF00007CDC0000A9FF002ADAFE00E4EDEB00FFF6
      E900FFF5E500FFF4E400FFF3E100C18B8100000000000000000000000000C389
      7600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFAF400FEF8
      ED00FEFAF400FEF8ED00FFF4E200ECCCC1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDB5
      A600FFFCFA00FEFCFC00007ADA0000A9FF002DDBFE00E4EFF100FFF9EE00FFF8
      ED00FFF7E900FFF6E600FFF4E500C18D8200000000000000000000000000CB94
      7C00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFC
      F600FEFAF400FEF6EA00FFF4E200ECD2C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2BA
      AA00FEFDFE000079DA0000A9FF0031DDFE00E4F2F700FFFAF600FFF9F200FFF8
      EF00FFF8EC00FDF6EA00FDF3E300C08D8200000000000000000000000000D09B
      7F00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFAF400FEFA
      F400FEF8ED00FEF8ED00FFF4E200E7CCC0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4BE
      AB000078D90000A8FF0035E0FE00E4F4FD00FFFEFB00FFFDF800FFFCF500FFFB
      F400FEF6ED00FCF3E300FAEFD900C18C8000000000000000000000000000C086
      7400FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFC
      F600FEF8ED00FFF4E200FFF0D900E9CFBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB000079
      D90000A7FF003CE1FE00E4F4FD00FFFFFD00FFFFFE00FFFDFD00FFFDFA00FDFA
      F200FBF5E600F9F0DB00F8EDD000C08C7F00000000000000000000000000C389
      7600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFC
      F600FEF6EA00F9F0DB00F7EACC00D8B9B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7000079D90000A8
      FF003CE0FE00E5F6FC00FFFFFF00FFFFFD00FFFFFE00FFFFFE00FEFDFA00E7CF
      B700FBF8F700F6ECE400F4E6DC00D1BDB800000000000000000000000000CB94
      7C00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFA
      F400FEFCF600FEFAF400FEE4BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F00024201D0000A8FF0040E3
      FE00E6F6FC00FFFFFF00FFFFFF00FFFFFD00FFFFFE00FDFEFD00FCF8F100E7CF
      B700FFFAF100F3D1A200D6C2BC0000000000000000000000000000000000D09B
      7F00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600F9F4
      E500FEFCF600FFD5AC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000747E000908F8F00E4DFDE00E3D0
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FDFCF800FAF5E800E9D3
      BB00F7DFC500D9C6BE000000000000000000000000000000000000000000D19C
      8200FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600F6EEEA00F9F2
      E100FEFCF6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B7AFD00BCD3FD00E9E9E900FBD5
      B100FCF6F000FCF5EF00FBF4EF00FBF4EF00FAF3EE00F9F2EC00F9F0E900F0DD
      D200DCCAC000000000000000000000000000000000000000000000000000F5E0
      CC00FFE6D100F5E0CC00F5E0CC00F1E3D600F5E0CC00EBD5CA00EBD5CA00E9CF
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E000E00000000000E000E00000000000
      E000E00000000000E000E00000000000E000E00000000000E000E00000000000
      E000E00000000000E000E00000000000E000E00000000000E000E00000000000
      E000E00000000000C000E000000000008000E001000000000001E00300000000
      0003E007000000000007E00F0000000000000000000000000000000000000000
      000000000000}
  end
  object qryTemp35: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 138
    Top = 346
  end
  object qryUpdate: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 170
    Top = 346
  end
end
