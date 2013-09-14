object ReportFrm: TReportFrm
  Tag = 70
  Left = 133
  Top = 36
  Width = 825
  Height = 596
  HelpContext = 27
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
    Width = 817
    Height = 562
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object grdReport: TdxDBGrid
      Left = 5
      Top = 5
      Width = 733
      Height = 654
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KEYFIELD'
      ShowSummaryFooter = True
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
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdReportDblClick
      OnKeyDown = grdReportKeyDown
      OnMouseUp = grdReportMouseUp
      DataSource = MainDM.dsReport
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoRowAutoHeight, edgoUseBitmap]
      ShowRowFooter = True
    end
    object ElPopupButton3: TElPopupButton
      Left = 719
      Top = 534
      Width = 95
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
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 527
      Top = 534
      Width = 95
      Height = 25
      Cursor = crDefault
      Hint = 'Xem tr'#432#7899'c khi in'
      ImageIndex = 16
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
      Caption = '&Xem tr'#432#7899'c'
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      Action = AnalystFrm.acPreview
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 623
      Top = 534
      Width = 95
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
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      Action = AnalystFrm.acPrintDirect
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 10000
      Top = 10000
      Width = 95
      Height = 25
      Cursor = crDefault
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in ( F4 )'
      ImageIndex = 6
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
      Visible = False
      Action = AnalystFrm.acDesigner
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 534
      Width = 95
      Height = 25
      Cursor = crDefault
      Hint = 'Xu'#7845't d'#7919' li'#7879'u ra t'#7853'p tin Excel'
      ImageIndex = 2
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000005A855A2934A0
        33DD44BA42F043BA42F042BA41F040BA3FF03FBA3FF03EB93DF03DB93CF03CB8
        3BF03BB83AEF3AB839EF39B738EF38B637EF37B636EF2E882DD55A91594D48CA
        46FE56D754FF53D451FF51D24FFF4ECF4CFF4CCD4AFF49CA47FF47C745FF44C5
        42FF41C240FF3FBF3EFF3DBD3CFF3BBA3AFF3BBE39FF2CAF2BFC598F594C2C9A
        2BFE309E2FFF2D9B2DFF2B982BFF289628FF269225FF238F23FF218D21FF1E8A
        1EFF1C851CFF1A7E19FF187C18FF167A16FF157F16FF178416FC598F584C2692
        26FE299529FF258D25FF238A23FF208720FF1E841EFF1B821CFF197F1AFF1779
        17FF5DA95DFF91D291FF8FD28FFF8DCF8EFF59A959FF148014FC598F584D238F
        23FE369A36FF8DCD8CFF90D290FF8FD28FFF8ED18EFF8DD08DFF86C686FFABC8
        ABFFD0EFD0FFBFE5BFFF9DC89EFF85BB85FF1A821AFF168316FC598F584D218C
        21FE238F23FF62AC62FF9CCC9CFF86C086FF84BF84FF7EB47EFFBBD1BBFFCBE7
        CCFFBDDBBDFFC3DFC3FFC5E8C5FF318832FF168216FF188617FC5A8E594D248B
        24FE218B21FF1D881EFF56A356FF9BCA9BFF7DB27CFFC3D7C3FFC8E5C8FFC2DF
        C2FFCBE3CBFFC5DFC5FF98C998FF9CD99CFF288A28FF1A8819FC568D554C3491
        34FE3B973BFF1F871FFF188219FF499349FFD2E1D2FFC5E3C5FFBEDCBEFFD2E9
        D1FFA2C8A2FF6BAD6BFF5EA75FFF50A050FF2A912AFF1C8C1BFC548A534C4599
        45FE62AA62FF55A355FF4C974CFF9AD499FFB6DAB6FFD8EAD8FFD9EBD9FFD0E8
        CFFFA5D4A5FF63A663FF57A557FF4B9F4BFF309530FF1E8F1EFC598F584D56A0
        56FE83BB83FF80B580FFBAE4BAFFB7DAB7FFB6D7B6FFCFE5CFFFDCEBDCFFC0DE
        C0FFC3E3C3FFB8DFB7FF7CB67CFF72B672FF6DB66DFF43A143FC598F584C60A4
        5FFEA0C7A0FFCCECCCFFC6E1C6FFC5DFC5FFD0E5D0FFB7D7B7FFA9D0A9FFD6E9
        D5FFCBE4CBFFCCE8CCFFC7E7C6FF94C494FF8FC88EFF6AB36AFC558C544C64A6
        65FED1E8D1FFE1EFE1FFE0EEE0FFDFEDDFFFBCDABCFFA7CFA7FFA9D1A9FFB5D7
        B5FFDFEEDFFFE3F0E2FFE1F1E1FFC6E4C6FFA4D3A4FF7BBB7AFC568C554C66A7
        66FEACD1ACFFACD1ACFFACD1ABFFACD2ACFFADD2ADFFAED4AEFFAFD5AFFFB1D6
        B1FFB2D7B2FFB2D8B2FFB1D8B1FFB0D8B0FFB0DAB0FF84C083FC588F574C6EB2
        6DFEB4DBB4FFB4DBB4FFB5DCB5FFB6DDB6FFB6DEB6FFB7DEB7FFB9DFB8FFBAE1
        B9FFBBE2BAFFBBE3BBFFBCE3BBFFBCE4BBFFBDE6BCFF8CCB8BFC497348365CB6
        5CF8B5E5B4FEB5E6B5FEB6E7B5FEB7E8B6FEB7E8B6FEB8E9B7FEB9EAB8FEBAEA
        B9FEBAEBB9FEBBECBAFEBCEDBAFEBCEDBCFEBDEFBCFE6AC069F46A286B016B41
        68405E425B5A5E435C5A5E435C5A5E445C5A5E445C5A5E445C5A5E445C5A5F44
        5D5A5F455D5A5F455D5A5F455D5A5F455D5A5F455D5A7A3A773D}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't ra &Excel'
      TabOrder = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSeeDetail: TElPopupButton
      Left = 99
      Top = 534
      Width = 95
      Height = 25
      Cursor = crDefault
      Hint = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      DrawDefaultFrame = False
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4D4D4D4DDEEDEFDEEDEFDE
        EDEFDEEDEFFFFFFF0000DEEDEF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4DFF4D4DA64D4D4D4D4D4D4D4D4D4D4D4DDEEDEFFFFFFF
        0000DEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFFF4D4DFF
        FFFFFF4D4DA64D4D4DFFFFFFFFFFFF4D4D4DDEEDEFFFFFFF0000DEEDEF4D4D4D
        FFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4D4D4DFFFFFFFF4D4DA64D4D4DFFFF
        FFFFFFFFFFFFFF4D4D4DDEEDEFFFFFFF0000DEEDEF4D4D4DFFFFFF4D4D4DA6A6
        A6D3D3D3A6A6A6A6A6A64D4D4D4D4DA64D4D4DD3D3D3D3D3D3FFFFFFFFFFFF4D
        4D4DDEEDEFFFFFFF0000DEEDEF4D4D4D4D4D4DA6A6A6D3D3D3FFFF4DA6A6A6FF
        FFFFA6A6A64D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEFFFFFFF
        0000DEEDEF4D4D4D4D4D4DD3D3D3FFFF4DD3D3D3A6A6A6D3D3D3FFFFFF4D4D4D
        D3D3D3D3D3D3D3D3D3D3D3D3FFFFFF4D4D4DDEEDEFFFFFFF0000DEEDEF4D4D4D
        4D4D4DFFFF4DFFFFFFFFFF4DA6A6A6FFFF4DD3D3D34D4D4DFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF4D4D4DDEEDEFFFFFFF0000DEEDEF4D4D4D4D4D4DA6A6A6FFFF
        FFFFFFFFA6A6A6D3D3D3A6A6A64D4D4DD3D3D3D3D3D3D3D3D3D3D3D3FFFFFF4D
        4D4DDEEDEFFFFFFF0000DEEDEF4D4D4DFFFFFF4D4D4DA6A6A6FFFF4DA6A6A6A6
        A6A64D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEFFFFFFF
        0000DEEDEF4D4D4DFFFFFFD3D3D34D4D4D4D4D4D4D4D4D4D4D4DD3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3FFFFFFFFFFFF4D4D4DDEEDEFFFFFFF0000DEEDEF4D4D4D
        FFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF4D4D4DDEEDEFFFFFFF0000DEEDEFA64D4DA64D4DA64D4DA64D
        4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA6
        4D4DDEEDEFFFFFFF0000DEEDEFA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA6
        4D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DDEEDEFFFFFFF
        0000DEEDEFA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4D
        A64D4DA64D4DA64D4DA64D4DA64D4DA64D4DDEEDEFFFFFFF0000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFFFFFFF0000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem &chi ti'#7871't'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSeeDetailClick
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
        Control = grdReport
      end
      object locFormGroup1: TdxLayoutGroup
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
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = btnSeeDetail
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
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
    object locFormItem7: TdxLayoutItem
      AutoAligns = [aaVertical]
      AlignHorz = ahRight
      ShowCaption = False
      Control = ElPopupButton6
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 200
    Top = 400
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
        Caption = 'B'#225'o c'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 144
    Top = 408
  end
  object pmExport: TdxBarPopupMenu
    BarManager = bmReport
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = bbtnSeeDetail
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnPreview
        Visible = True
      end
      item
        Item = bbtnDirectPrint
        Visible = True
      end
      item
        Item = bbtnDesign
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnCompare1
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnCompare2
        Visible = True
      end>
    UseOwnFont = True
    Left = 150
    Top = 272
  end
  object bmReport: TdxBarManager
    AutoDockColor = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default'
      'Control')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockColor = clBtnFace
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = False
    Left = 64
    Top = 272
    DockControlHeights = (
      0
      0
      0
      0)
    object bbtnPreview: TdxBarButton
      Tag = 126
      Caption = 'Xem tr'#432#7899'c khi in'
      Category = 0
      Hint = 'Xem tr'#432#7899'c khi in'
      Visible = ivAlways
      ImageIndex = 16
      ShortCut = 16472
      OnClick = bbtnPreviewClick
    end
    object dxBarButton4: TdxBarButton
      Tag = 129
      Caption = 'Xu'#7845't ra Excel'
      Category = 0
      Hint = 'Xu'#7845't ra Excel'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 16453
      OnClick = dxBarButton4Click
    end
    object bbtnDesign: TdxBarButton
      Tag = 130
      Caption = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      Category = 0
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 115
      OnClick = bbtnDesignClick
    end
    object bbtnSeeDetail: TdxBarButton
      Caption = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      Category = 0
      Hint = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      Visible = ivAlways
      OnClick = bbtnSeeDetailClick
    end
    object bbtnDirectPrint: TdxBarButton
      Caption = 'Xu'#7845't ra m'#225'y in'
      Category = 0
      Hint = 'Xu'#7845't ra m'#225'y in'
      Visible = ivAlways
      ShortCut = 16464
      OnClick = bbtnDirectPrintClick
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Bung ra h'#7871't (xem h'#7871't)'
      Category = 1
      Hint = 'Bung ra h'#7871't (xem h'#7871't)'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Thu g'#7885'n l'#7841'i h'#7871't '
      Category = 1
      Hint = 'Thu g'#7885'n l'#7841'i h'#7871't '
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object bbtnCompare1: TdxBarButton
      Caption = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 1'
      Category = 0
      Hint = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 1'
      Visible = ivAlways
      OnClick = bbtnCompare1Click
    end
    object bbtnCompare2: TdxBarButton
      Caption = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 2'
      Category = 0
      Hint = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 2'
      Visible = ivAlways
    end
  end
  object XLSReadWriteII1: TXLSReadWriteII
    Version = xvExcel97
    Formats = <>
    Sheets = <
      item
        Name = 'Sheet 1'
        DefaultColWidth = 8
        DefaultRowHeight = 255
        PrintSettings.Copies = 1
        PrintSettings.MarginBottom = -1.000000000000000000
        PrintSettings.MarginLeft = -1.000000000000000000
        PrintSettings.MarginRight = -1.000000000000000000
        PrintSettings.MarginTop = -1.000000000000000000
        PrintSettings.Options = [psoPortrait]
        PrintSettings.ScalingFactor = 100
        PrintSettings.StartingPage = 1
        PrintSettings.RowsOnEachPage = '-1:-1'
        PrintSettings.ColsOnEachPage = '-1:-1'
        PrintSettings.HorizPagebreaks = <>
        PrintSettings.VertPagebreaks = <>
        MergedCells = <>
        Options = [soGridlines, soRowColHeadings, soShowZeros]
        WorkspaceOptions = [woShowAutoBreaks, woRowSumsBelow, woColSumsRight, woOutlineSymbols]
        CalcCount = 100
        Delta = 0.001000000000000000
        Zoom = 100
        ZoomPreview = 100
        RecalcFormulas = True
        Notes = <>
        SheetPictures = <>
        ColumnFormats = <>
        Charts = <>
        FixedRows = 0
        FixedCols = 0
        Validations = <>
      end>
    Workbook.Left = 100
    Workbook.Top = 100
    Workbook.Width = 10000
    Workbook.Height = 7000
    Workbook.SelectedTab = 0
    Workbook.Options = [woHScroll, woVScroll, woTabs]
    OptionsDialog.SaveExtLinkVal = False
    OptionsDialog.CalcCount = 0
    OptionsDialog.CalcMode = cmAutomatic
    OptionsDialog.ShowObjects = soShowAll
    OptionsDialog.Iteration = False
    OptionsDialog.PrecisionAsDisplayed = False
    OptionsDialog.R1C1Mode = False
    OptionsDialog.RecalcBeforeSave = False
    OptionsDialog.Uncalced = False
    Font.Name = 'Arial'
    Font.Charset = ANSI_CHARSET
    Font.Color = xcBlack
    Font.Size = 10
    Font.Style = []
    Font.SubSuperScript = xssNone
    Font.Underline = xulNone
    Codepage = 1200
    BookProtected = False
    Backup = False
    RefreshAll = False
    WriteUnicodeStrings = False
    FuncArgSeparator = ','
    StrTRUE = 'TRUE'
    StrFALSE = 'FALSE'
    ShowFormulas = False
    PictureOptions = [poDeleteTempFiles]
    Pictures = <>
    IsMac = False
    AreaNames = <>
    Left = 240
    Top = 312
    Fonts = <
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end>
  end
end
