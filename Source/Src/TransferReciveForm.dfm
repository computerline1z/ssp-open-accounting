object TransferReceivefrm: TTransferReceivefrm
  Left = 216
  Top = 165
  Width = 652
  Height = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TElPageControl
    Left = 0
    Top = 57
    Width = 644
    Height = 364
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsFlatTabs
    TabIndex = 0
    TabPosition = etpTop
    TabWidth = 100
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tsConfig
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'Tahoma'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 0
    object tsConfig: TElTabSheet
      PageControl = pgcMain
      ImageIndex = -1
      TabVisible = True
      Caption = '&C'#7845'u h'#236'nh'
      OnEnter = tsConfigEnter
      object dxLayoutControl1: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 0
        Width = 644
        Height = 343
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = InterfaceDM.StyleWeb
        object grdHSCT: TdxDBTreeList
          Left = 5
          Top = 5
          Width = 440
          Height = 206
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'BRANCH_ID'
          ParentField = 'PBRANCH_ID'
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = grdHSCTKeyDown
          OnMouseDown = grdHSCTMouseDown
          DataSource = dsHSCT
          DefaultRowHeight = 20
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          ShowFooter = True
          TreeLineColor = clGrayText
          TreeLineStyle = tlSolid
          object grdHSCTBRANCH_ID: TdxDBTreeListMaskColumn
            Caption = 'Chi Nh'#225'nh'
            HeaderAlignment = taCenter
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BRANCH_ID'
            SummaryFooterType = cstCount
            Caption_UTF7 = 'Chi Nh+AOE-nh'
          end
          object grdHSCTFULLNAME: TdxDBTreeListMaskColumn
            Caption = 'T'#234'n c'#244'ng ty'
            HeaderAlignment = taCenter
            Width = 172
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULLNAME'
            Caption_UTF7 = 'T+AOo-n c+APQ-ng ty'
          end
          object grdHSCTFTP_DOMAIN: TdxDBTreeListMaskColumn
            Caption = #272#7883'a ch'#7881' k'#7871't n'#7889'i'
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FTP_DOMAIN'
            Caption_UTF7 = '+ARAeyw-a ch+Hsk k+Hr8-t n+HtE-i'
          end
          object grdHSCTFTP_USERNAME: TdxDBTreeListMaskColumn
            Caption = 'T'#224'i kho'#7843'n'
            HeaderAlignment = taCenter
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FTP_USERNAME'
            Caption_UTF7 = 'T+AOA-i kho+HqM-n'
          end
          object grdHSCTFTP_PASSWORD: TdxDBTreeListMaskColumn
            Caption = 'M'#7853't kh'#7849'u'
            HeaderAlignment = taCenter
            PasswordChar = '*'
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FTP_PASSWORD'
            Caption_UTF7 = 'M+Hq0-t kh+Hqk-u'
          end
        end
        object btnPost: TElPopupButton
          Tag = 116
          Left = 407
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          Hint = 'Post'
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000616161FF737373FF7E7E7EFF7E7E7EFF737373FF707070FF7070
            70FF707070FF707070FF707070FF737373FF737373FF00000000000000000000
            00000C0C0CFF7E7E7EFF707070FFFFFFFFFF949495FF949495FFE5E5E5FFE4E4
            E4FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000006161
            61FF7E7E7EFFF2F2F2FF707070FFFFFFFFFF949495FF949495FFDCDCDCFFDBDB
            DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FFE9E9E9FF707070FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9
            E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF787878FF787878FF707070FF707070FF707070FF7070
            70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FFB4B4B4FFB5B5B6FFB5B5B5FFB4B4B5FFB4B4B4FFB4B4
            B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF5793A5FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5593A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFF99EDFFFF95ECFFFF90ECFFFF8CEBFFFF88EA
            FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
            FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
            FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
            FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
            FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
            C0FF7E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5896A8FF737373FF737373FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u'
          TabOrder = 8
          Color = 16579317
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnCancel: TElPopupButton
          Tag = 117
          Left = 485
          Top = 315
          Width = 78
          Height = 25
          Cursor = crDefault
          Hint = 'Cancel'
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004048D8FF3C44D7FF3941D6FF353DD5FF313AD5FF2E37
            D4FF2B34D3FF2831D2FF00000000000000000000000000000000000000000000
            0000000000004A51D9FF5760E0FF8A96F6FF99A6FCFF93A0F9FF909EF7FF929F
            F7FF7F8BEEFF404ADAFF2931D3FF000000000000000000000000000000000000
            0000535ADCFF5F67E1FF919DF7FF657CFFFF3D58FFFF3B57FFFF3752FEFF2F4B
            F9FF5269F7FF808CF1FF3F48DAFF2A32D3FF0000000000000000000000005D64
            DDFF6970E3FF98A5F8FF6F87FFFF4260FFFF3E5CFFFF3956FFFF3552FFFF304D
            FFFF2B49FFFF556CFBFF828FF4FF404ADAFF2B33D3FF00000000000000006268
            DFFF9EACF9FF7891FFFF4E6DFFFF6D86FFFF8EA0FFFF405EFFFF3B5AFFFF8195
            FFFF647AFFFF2C4BFFFF566DFFFF828FF6FF2E37D4FF0000000000000000676D
            DFFFAFBFFEFF5D7EFFFF5675FFFF95A8FFFFFFFFFFFFAAB8FFFF9AABFFFFFFFF
            FFFF9AAAFFFF3352FFFF3351FFFF96A5FEFF333BD5FF00000000000000006C72
            E0FFB0BFFDFF6788FFFF5D7EFFFF5D7EFFFFAEBEFFFFFFFFFFFFFFFFFFFFB8C4
            FFFF4867FFFF3A5AFFFF3C5BFFFF96A4FCFF3740D6FF00000000000000007076
            E2FFB3C4FDFF6E91FFFF6387FFFF5F83FFFFA7B9FFFFFFFFFFFFFFFFFFFFAFBF
            FFFF4A6BFFFF4162FFFF4363FFFF99A8FCFF3C44D7FF0000000000000000757A
            E3FFBACCFEFF7196FFFF6A8FFFFF9EB5FFFFFFFFFFFFC1CFFFFFB4C4FFFFFFFF
            FFFF92A8FFFF486AFFFF4668FFFF9FB0FEFF4149D8FF0000000000000000787E
            E3FFAFC0F9FF93B2FFFF7098FFFF8FADFFFFB0C4FFFF678DFFFF5E84FFFF9BB1
            FFFF7694FFFF4F73FFFF718DFFFF92A2F7FF464ED9FF00000000000000007C81
            E4FF868FE8FFB0C1F9FF95B6FFFF739CFFFF6F98FFFF6A92FFFF658DFFFF6188
            FFFF5B82FFFF7B99FFFF99A9F8FF6069E1FF4C53DAFF00000000000000000000
            00007D82E4FF878FE8FFB1C2F9FF96B8FFFF78A2FFFF76A0FFFF729BFFFF6B94
            FFFF84A3FFFFA0B0F8FF6871E3FF555CDCFF0000000000000000000000000000
            0000000000007E83E4FF8891E9FFB1C3F9FFBDD3FEFFB9CEFDFFB7CBFDFFB7CB
            FEFFA6B7F8FF727BE5FF5E65DEFF000000000000000000000000000000000000
            000000000000000000007E83E4FF7B81E4FF797EE3FF767BE3FF7278E2FF6F75
            E1FF6C72E0FF686EE0FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Kh'#244'ng l'#432'u'
          TabOrder = 9
          Color = 16579317
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 74
          Top = 233
          Width = 109
          Cursor = crIBeam
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 1
          DataField = 'BRANCH_ID'
          DataSource = dsHSCT
          StyleController = InterfaceDM.edtStyleController
        end
        object dxDBEdit3: TdxDBEdit
          Left = 252
          Top = 257
          Width = 100
          Cursor = crIBeam
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 4
          DataField = 'FTP_USERNAME'
          DataSource = dsHSCT
          StyleController = InterfaceDM.edtStyleController
        end
        object dxDBEdit4: TdxDBEdit
          Left = 74
          Top = 257
          Width = 109
          Cursor = crIBeam
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 3
          DataField = 'ftp_domain'
          DataSource = dsHSCT
          StyleController = InterfaceDM.edtStyleController
        end
        object dxDBEdit5: TdxDBEdit
          Left = 252
          Top = 233
          Width = 387
          Cursor = crIBeam
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 2
          DataField = 'FULLNAME'
          DataSource = dsHSCT
          StyleController = InterfaceDM.edtStyleController
        end
        object btnTestConnection: TElPopupButton
          Tag = 116
          Left = 319
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          Hint = 'Post'
          ImageIndex = 0
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'K'#7871't n'#7889'i th'#7917
          TabOrder = 7
          Color = 16579317
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnTestConnectionClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnCloseFrm: TElPopupButton
          Left = 566
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
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
          TabOrder = 10
          Color = 16579317
          ParentColor = False
          OnClick = btnCloseFrmClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object edtPassword: TdxEdit
          Left = 403
          Top = 257
          Width = 100
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 5
          OnKeyUp = edtPasswordKeyUp
          PasswordChar = '*'
          StyleController = InterfaceDM.edtStyleController
        end
        object chkActiveTrigger: TdxDBCheckEdit
          Left = 3
          Top = 281
          Width = 142
          Hint = 'C'#225'c chi nh'#225'nh d'#249'ng chung database th'#236' t?t ch? d? n'#224'y'
          Color = 16579317
          ParentColor = False
          Style.ButtonStyle = btsFlat
          TabOrder = 6
          OnClick = chkActiveTriggerClick
          Caption = 'B'#7853't/ t'#7855't ch'#7871' '#273#7897' l'#432'u d'#7919' li'#7879'u truy'#7873'n '
          DataField = 'ACTIVETRIGGER'
          DataSource = MainDM.dsTransferInfo
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'C'#7845'u h'#236'nh m'#225'y ch'#7911
            ShowBorder = False
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.AlignHorz = taCenter
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Layout = clTop
              Control = grdHSCT
            end
            object dxLayoutControl1Group4: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group2: TdxLayoutGroup
                Offsets.Top = 2
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group7: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Group9: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item2: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'T'#234'n chi nh'#225'nh'
                      Control = dxDBEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item8: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'T'#234'n c'#244'ng ty'
                      Offsets.Left = 5
                      Control = dxDBEdit5
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Group5: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item7: TdxLayoutItem
                      Caption = #272#7883'a ch'#7881' m'#7841'ng'
                      Control = dxDBEdit4
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item6: TdxLayoutItem
                      Caption = 'T'#224'i kho'#7843'n'
                      Offsets.Left = 5
                      Control = dxDBEdit3
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item12: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'M'#7853't kh'#7849'u'
                      Control = edtPassword
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl1Item9: TdxLayoutItem
                  ShowCaption = False
                  Control = chkActiveTrigger
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group1: TdxLayoutGroup
                Offsets.Top = 5
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item11: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahRight
                  AlignVert = avBottom
                  CaptionOptions.AlignHorz = taCenter
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnTestConnection
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  CaptionOptions.AlignHorz = taCenter
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  Offsets.Left = 10
                  Offsets.Top = 5
                  ShowCaption = False
                  Control = btnPost
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  CaptionOptions.AlignHorz = taCenter
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  Offsets.Top = 5
                  ShowCaption = False
                  Control = btnCancel
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahRight
                  AlignVert = avBottom
                  CaptionOptions.AlignHorz = taCenter
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnCloseFrm
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object tsTransfer: TElTabSheet
      PageControl = pgcMain
      ImageIndex = -1
      TabVisible = True
      Caption = '&Truy'#7873'n d'#7919' li'#7879'u'
      Visible = False
      OnEnter = tsTransferEnter
      object locTrans: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 0
        Width = 644
        Height = 343
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = InterfaceDM.StyleWeb
        object Bevel5: TBevel
          Left = 3
          Top = 31
          Width = 706
          Height = 3
        end
        object Bevel9: TBevel
          Left = 3
          Top = 85
          Width = 706
          Height = 3
        end
        object spnTransToTime: TdxDBTimeEdit
          Left = 350
          Top = 7
          Width = 90
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 2
          DataField = 'AUTO_TOTIME'
          DataSource = MainDM.dsTransferInfo
          StyleController = InterfaceDM.edtStyleController
          StoredValues = 4
        end
        object spnTransFromTime: TdxDBTimeEdit
          Left = 235
          Top = 7
          Width = 90
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 1
          DataField = 'AUTO_FROMTIME'
          DataSource = MainDM.dsTransferInfo
          StyleController = InterfaceDM.edtStyleController
          StoredValues = 4
        end
        object rbDuration: TElRadioButton
          Left = 3
          Top = 61
          Width = 125
          Height = 17
          Cursor = crDefault
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = 'Ph'#225't sinh theo ng'#224'y |'
          TabOrder = 5
          Color = 16579317
          ParentColor = False
          OnClick = rbDurationClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object rbToday: TElRadioButton
          Left = 3
          Top = 37
          Width = 122
          Height = 17
          Cursor = crDefault
          Checked = True
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = 'Ph'#225't sinh trong ng'#224'y'
          TabOrder = 4
          Color = 16579317
          ParentColor = False
          OnClick = rbTodayClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnGen: TElPopupButton
          Left = 488
          Top = 57
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Ph'#225't sinh'
          TabOrder = 7
          Color = 16579317
          ParentColor = False
          Action = acGenFile
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dedtCurDate2: TdxDateEdit
          Left = 315
          Top = 59
          Width = 86
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 15
          TabStop = False
          Alignment = taCenter
          StyleController = InterfaceDM.edtStyleController
          PopupBorder = pbFlat
          Date = -700000.000000000000000000
          DateButtons = [btnToday]
          DateOnError = deToday
          UseEditMask = True
          StoredValues = 5
        end
        object btnRec: TElPopupButton
          Left = 443
          Top = 3
          Width = 67
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000C0C0C0FFB87700FFB87700FFB87700FFB87700FFB877
            00FFB87700FFB87700FFB87700FFC0C0C0FF0000000000000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFE2B4FFFFE2B4FFFFE2B4FFFFE2
            B4FFFFE2B4FFFFE2B4FFD89F41FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFB87700FFFFC76AFFFFC76AFFFFC76AFFFFC7
            6AFFFFC76BFFFFC76BFFFFE2B4FFB87700FF0000000000000000000000000000
            0000006699FF006699FF00CCFFFF17A1D0FFF1C67DFFFFC76AFFFFC76AFFFFC7
            6AFFFFC76AFFFFC76AFFFFE2B4FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFF1E0AFFF16345CFF4F80ACFF63615FFFFFC7
            6AFFFFC76AFFFFC76AFFFFE2B4FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFB87700FF5281ADFFDBFFFFFF32C0FFFF405C
            82FFFFC76AFFFFC76AFFFFE2B4FFB87700FF0000000000000000000000000000
            0000006699FF006699FF00CCFFFF0099CCFF5F5D5FFF74EEFFFF4ED0FFFF32C0
            FFFF1A579DFF537DA1FFFFE2B4FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFCA70FF405C83FF7DF1FFFF59D8
            FFFF38C3FFFF19579DFF4D7492FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFB87700FFFFD483FFFFD27FFF405E86FF80F4
            FFFF63DFFFFF3DC6FFFF1A599DFFB87700FF0000000000000000000000000000
            0000006699FF006699FF00CCFFFF0099CCFFFFDD95FFFFDC91FFFFDA8EFF405F
            89FF82F4FFFF6DE4FFFF45CCFFFF304C6EFF0000000000000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFE7A7FFFFE5A4FFFFE4A0FFFFE2
            9EFF40608CFF82F4FFFF74E9FFFF4ED2FFFF073880FF00000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFE7A7FFFFE7A7FFFFE7A7FFFFE7
            A7FFFFE7A7FF42638EFF80F4FFFF7CF2FFFF4ECDFFFF4F80ACFF000000000000
            0000000000000000000000000000B87700FFB87700FFB87700FFB87700FFB877
            00FFB87700FFB87700FF2C4566FF73E6FFFF053477FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000004F80ACFF0000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'L'#234'n l'#7883'ch'
          TabOrder = 3
          Color = 16579317
          ParentColor = False
          OnClick = btnRecClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ProgressBar3: TProgressBar
          Left = 80
          Top = 283
          Width = 20
          Height = 24
          Align = alLeft
          Smooth = True
          TabOrder = 19
        end
        object btnSave3: TElPopupButton
          Left = 410
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000616161FF737373FF7E7E7EFF7E7E7EFF737373FF707070FF7070
            70FF707070FF707070FF707070FF737373FF737373FF00000000000000000000
            00000C0C0CFF7E7E7EFF707070FFFFFFFFFF949495FF949495FFE5E5E5FFE4E4
            E4FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000006161
            61FF7E7E7EFFF2F2F2FF707070FFFFFFFFFF949495FF949495FFDCDCDCFFDBDB
            DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FFE9E9E9FF707070FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9
            E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF787878FF787878FF707070FF707070FF707070FF7070
            70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FFB4B4B4FFB5B5B6FFB5B5B5FFB4B4B5FFB4B4B4FFB4B4
            B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF5793A5FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5593A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFF99EDFFFF95ECFFFF90ECFFFF8CEBFFFF88EA
            FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
            FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
            FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
            FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
            FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
            C0FF7E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5896A8FF737373FF737373FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'L'#432'u'
          TabOrder = 12
          Color = 16579317
          ParentColor = False
          Action = acInfoPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnTransfer: TElPopupButton
          Left = 566
          Top = 57
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000007C20FF037A1DFF007814FF000000000000000000000000000000000000
            000000000000000000007D7D7DFF787878FF737373FF6F6F6FFF6A6A6AFF6666
            66FF05812CFF42A05EFF007A1EFF007818FF0000000000000000000000000000
            00008E8E8EFF898989FFA2A2A2FFC5C4C3FF219651FF1B9049FF158E43FF108A
            3BFF399E5DFF7FC095FF45A261FF007C1EFF007818FF00000000000000009A9A
            9AFFB2B2B2FFD4D4D4FFE1DFDFFFC4BEBCFF289A5AFF8FCAA8FF8CC8A4FF89C5
            A0FF87C49DFF69B584FF81C196FF47A465FF007C20FF00781AFF00000000A1A1
            A1FFF0F0F0FFE0E0E0FFD4D2D2FFBDB5B4FF309E62FF93CDACFF6EB98DFF6AB7
            88FF65B584FF60B27FFF66B481FF82C197FF3B9F5BFF007E24FF00000000A7A7
            A7FFEAEAEAFFDDDDDDFFD5D4D3FFBFB8B6FF36A26AFF95CEAFFF93CDACFF90CB
            A9FF8FCBA7FF73BB8FFF89C7A0FF45A467FF078634FF01822CFF00000000AEAE
            AEFFEBEBEBFFDDDDDDFFD7D5D5FFC0BAB8FF3CA46EFF37A26DFF32A066FF2E9C
            60FF54AE7BFF90CBA9FF4EAA73FF168E44FF118A3CFF0000000000000000B4B4
            B4FFECECECFFDEDEDEFFD9D8D8FFC2BCBAFFC1BAB9FFC0B9B8FF9FC8A3FF4FA8
            55FF37A066FF59B280FF279756FF1E944EFF000000000000000000000000BABA
            BAFFECECECFFDFDFDFFFDAD9D9FFC5BEBDFFC3BDBBFFC2BBBAFFC0BAB8FFBFB8
            B7FF3CA46EFF309E64FF2C9C5EFF00000000000000000000000000000000BFBF
            BFFFECECECFFE0E0E0FFDDDCDCFFC7C0BFFF919090FF8E8E8EFF8C8C8CFF8989
            89FFD9D5D4FF8A8A8AFF0000000000000000000000000000000000000000C5C5
            C5FFEFEFEFFFE1E1E1FFDDDDDDFFC8C2C1FFC8C1C0FFC5C0BEFFC4BEBDFFC2BC
            BAFFDAD6D5FF909090FF0000000000000000000000000000000000000000CBCB
            CBFFE9E9E9FFE9E9E9FFE2E1E1FFCBC5C3FF979696FF959494FF939292FF9190
            90FFDBD7D6FF979797FF0000000000000000000000000000000000000000CFCF
            CFFFCBCBCBFFDFDFDFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2C0FFC7C0
            C0FFDCD9D8FF9D9D9DFF00000000000000000000000000000000000000000000
            0000D0D0D0FFCCCCCCFFDCDCDCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDCDBFFDEDB
            DBFFEEECECFFA4A4A4FF00000000000000000000000000000000000000000000
            00000000000000000000CDCDCDFFC9C9C9FFC3C3C3FFBFBFBFFFBABABAFFB5B5
            B5FFAFAFAFFFAAAAAAFF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Truy'#7873'n'
          TabOrder = 8
          Color = 16579317
          ParentColor = False
          Action = acTransfer
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object grdUp: TdxDBGrid
          Left = 5
          Top = 93
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TIME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 9
          DataSource = dsLog
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grdUpRecId: TdxDBGridColumn
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RecId'
          end
          object grdUpCONTENT: TdxDBGridMaskColumn
            DisableCustomizing = True
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 50
            Width = 380
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTENT'
          end
          object grdUpDATE: TdxDBGridDateColumn
            Alignment = taRightJustify
            DisableCustomizing = True
            DisableEditor = True
            MinWidth = 40
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATE'
          end
          object grdUpTIME: TdxDBGridTimeColumn
            Alignment = taRightJustify
            DisableCustomizing = True
            DisableEditor = True
            MinWidth = 30
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIME'
          end
          object grdUpTRANSFERED: TdxDBGridCheckColumn
            Alignment = taCenter
            DisableCustomizing = True
            DisableEditor = True
            Width = 16
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TRANSFERED'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object UpDir: TElFolderNameEdit
          Left = 82
          Top = 265
          Width = 429
          Height = 13
          Cursor = crIBeam
          VertScrollBarStyles.ShowTrackHint = False
          VertScrollBarStyles.Width = 17
          VertScrollBarStyles.ButtonSize = 17
          VertScrollBarStyles.UseXPThemes = False
          HorzScrollBarStyles.ShowTrackHint = False
          HorzScrollBarStyles.Width = 17
          HorzScrollBarStyles.ButtonSize = 17
          HorzScrollBarStyles.UseXPThemes = False
          UseCustomScrollBars = True
          NotifyUserChangeOnly = True
          UseXPThemes = True
          Options = []
          RootFolder = sfoDesktopExpanded
          ButtonVisible = True
          TopMargin = 0
          RightMargin = 1
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Transparent = False
          LineBorderActiveColor = clBlack
          LineBorderInactiveColor = clBlack
          OnChange = UpDirChange
          Alignment = taLeftJustify
          Multiline = False
          ButtonColor = clBtnFace
          ButtonFlat = False
          ButtonShortcut = 0
          ButtonGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000002B85
            D8702C87D8A62C86D8EA2C87D8F72C87D8F72C87D8F72C87D8F72C87D8F72C87
            D8F72C87D8F72C87D8F72C86D8F72C87D8F12B85D8930000000000000000328D
            D9E6DCF0FAF0A6DDF4FD9DDBF4FF95DAF3FF8DD8F3FF85D7F3FF7ED4F2FF78D3
            F2FF71D2F1FF6BD0F1FF68CFF1FFC1EAF8FE328DD9F000000000000000003493
            DAF7EFFAFEFFA0E9F9FF90E5F8FF80E1F7FF71DEF6FF62DAF5FF53D7F4FF46D3
            F3FF38D0F2FF2DCDF1FF25CBF0FFCAF2FBFF3493DAF700000000000000003599
            DAF8F2FAFDFFB2EDFAFFA3E9F9FF94E6F8FF84E2F7FF75DEF6FF64DBF5FF56D7
            F4FF48D4F3FF3AD1F2FF2FCEF1FFCCF2FBFF3497DAF7000000000000000035A0
            DAF9F6FCFEFFC8F2FCFFB8EFFBFFABECFAFF9BE8F9FF8AE3F7FF7BE0F6FF6BDC
            F6FF5CD9F5FF4ED6F4FF43D3F3FFD0F3FCFF349EDAF7000000000000000036A5
            DAFAFEFFFFFFF8FDFFFFF6FDFFFFF5FCFFFFF3FCFEFFD8F6FCFF93E6F8FF84E3
            F7FF75DFF6FF67DBF5FF5BD8F4FFD7F4FCFF34A3DAF7000000000000000034AA
            DAFAE8F6FBFF93D4EFFF87CEEEFF72C0E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FC
            FEFFF0FCFEFFEFFBFEFFEEFBFEFFFEFFFFFF35AADAF7000000000000000035A9
            DAF2F1FAFDFF93DEF5FF92DCF4FF80D5F2FF69CAEDFF6BCBEAFF84D3EFFF7FD2
            EFFF79D0EFFF75CFEEFF71CFEEFFE9F7FBFF33ADDAF3000000000000000034AE
            DAF0F7FCFEFF8DE4F8FF90DEF5FF9EE0F5FFABE1F6FFEFFBFEFFF4FDFEFFF3FC
            FEFFF1FCFEFFEFFBFEFFEEFBFEFFFAFDFFF935AEDAD4000000000000000035B2
            DAF8FDFEFEFFFEFFFFFFFEFEFFFFFDFEFFFFFEFFFFFFEAF7FBFF6AC7E4F96AC7
            E3F86AC7E3F86AC7E3F878CDE6F773CAE5E131B0D956000000000000000033B3
            D9D05DC1E1FA5FC2E2FA5FC2E2FA5FC2E2FA5EC2E2FA3BB5DBDD2BB1D8162BB1
            D80F2BB1D80F2BB1D80F2BB1D80F2BB2D80F2BB2D80400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ButtonUseIcon = False
          ButtonNumGlyphs = 1
          ButtonWidth = 13
          AltButtonDown = False
          AltButtonEnabled = True
          AltButtonFlat = False
          AltButtonUseIcon = False
          AltButtonNumGlyphs = 1
          AltButtonPopupPlace = ppDown
          AltButtonShortcut = 0
          AltButtonVisible = False
          AltButtonWidth = 15
          BorderStyle = bsNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 10
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnRefresh1: TElPopupButton
          Left = 332
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000000000000000
            0000000000000000000075170075170075170000000000000000000000000000
            00000000000000000000000000000000000000000000007517007E203ACD7000
            7517000000000000000000000000000000000000000000000000000000000000
            00751700751704953546E4815DF5970075170075170075170075170000000000
            00000000000000000000000000007517007D1E1BBA5548F28A52F3915DF59729
            B65B2EB75E189F45007E21007517007517000000000000000000000000007517
            0CAB443FF08448F28A52F3915DF59758E78D71F9A47CFBAB7CF3A847C271007E
            22007517000000000000000000000000007517069C3943EA8452F3915DF59700
            7517007517007E211CA04752CB7C79E59F007E22007517000000000000000000
            000000007517007E1F33CC6B5DF5970075170000000000000000000075170C90
            373BB363007517000000000000000000000000000000000000007517109E4000
            7517000000007517007517000000000000007517007517000000000000000000
            007517007517000000000000007517007517000000007517119E400075170000
            000000000000000000000000000000000075173CB3640D903700751700000000
            00000000000075175FF59935CD6D007E1F007517000000000000000000000000
            007517007E237BE6A153CB7D1DA048007E210075170075175FF59956F49345EA
            85079C3A007517000000000000000000000000007517007E2248C2727EF4AA7E
            FBAD73F9A75AE78F5FF59956F4934CF28C41F1860DAB45007517000000000000
            000000000000007517007517007E21199F462FB75E2BB65B5FF59956F4934CF2
            8C1CBA56007D1E00751700000000000000000000000000000000000000751700
            75170075170075175FF59948E484049535007517007517000000000000000000
            0000000000000000000000000000000000000000000075173BCE71007E200075
            1700000000000000000000000000000000000000000000000000000000000000
            0000000000007517007517007517000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#7885'c l'#7841'i'
          TabOrder = 11
          Color = 16579317
          ParentColor = False
          OnClick = btnRefresh1Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object chkAutoTransfer: TdxDBCheckEdit
          Left = 3
          Top = 5
          Width = 142
          Color = 16579317
          ParentColor = False
          Style.ButtonStyle = btsFlat
          TabOrder = 0
          OnClick = chkAutoTransferClick
          Caption = 'Truy'#7873'n d'#7919' li'#7879'u t'#7921' '#273#7897'ng | '
          DataField = 'AUTO_TRANSFER'
          DataSource = MainDM.dsTransferInfo
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object btnClose2: TElPopupButton
          Left = 566
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
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
          TabOrder = 13
          Color = 16579317
          ParentColor = False
          OnClick = btnCloseFrmClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dedtCurDate1: TdxDBDateEdit
          Left = 175
          Top = 59
          Width = 88
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 6
          DataField = 'LASTDAY_TRANSFER'
          DataSource = MainDM.dsTransferInfo
          StyleController = InterfaceDM.edtStyleController
          PopupBorder = pbFlat
        end
        object btnCancel3: TElPopupButton
          Left = 488
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          Hint = 'B'#7887' qua kh'#244'ng l'#432'u'
          ImageIndex = 0
          DrawDefaultFrame = False
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004048D8FF3C44D7FF3941D6FF353DD5FF313AD5FF2E37
            D4FF2B34D3FF2831D2FF00000000000000000000000000000000000000000000
            0000000000004A51D9FF5760E0FF8A96F6FF99A6FCFF93A0F9FF909EF7FF929F
            F7FF7F8BEEFF404ADAFF2931D3FF000000000000000000000000000000000000
            0000535ADCFF5F67E1FF919DF7FF657CFFFF3D58FFFF3B57FFFF3752FEFF2F4B
            F9FF5269F7FF808CF1FF3F48DAFF2A32D3FF0000000000000000000000005D64
            DDFF6970E3FF98A5F8FF6F87FFFF4260FFFF3E5CFFFF3956FFFF3552FFFF304D
            FFFF2B49FFFF556CFBFF828FF4FF404ADAFF2B33D3FF00000000000000006268
            DFFF9EACF9FF7891FFFF4E6DFFFF6D86FFFF8EA0FFFF405EFFFF3B5AFFFF8195
            FFFF647AFFFF2C4BFFFF566DFFFF828FF6FF2E37D4FF0000000000000000676D
            DFFFAFBFFEFF5D7EFFFF5675FFFF95A8FFFFFFFFFFFFAAB8FFFF9AABFFFFFFFF
            FFFF9AAAFFFF3352FFFF3351FFFF96A5FEFF333BD5FF00000000000000006C72
            E0FFB0BFFDFF6788FFFF5D7EFFFF5D7EFFFFAEBEFFFFFFFFFFFFFFFFFFFFB8C4
            FFFF4867FFFF3A5AFFFF3C5BFFFF96A4FCFF3740D6FF00000000000000007076
            E2FFB3C4FDFF6E91FFFF6387FFFF5F83FFFFA7B9FFFFFFFFFFFFFFFFFFFFAFBF
            FFFF4A6BFFFF4162FFFF4363FFFF99A8FCFF3C44D7FF0000000000000000757A
            E3FFBACCFEFF7196FFFF6A8FFFFF9EB5FFFFFFFFFFFFC1CFFFFFB4C4FFFFFFFF
            FFFF92A8FFFF486AFFFF4668FFFF9FB0FEFF4149D8FF0000000000000000787E
            E3FFAFC0F9FF93B2FFFF7098FFFF8FADFFFFB0C4FFFF678DFFFF5E84FFFF9BB1
            FFFF7694FFFF4F73FFFF718DFFFF92A2F7FF464ED9FF00000000000000007C81
            E4FF868FE8FFB0C1F9FF95B6FFFF739CFFFF6F98FFFF6A92FFFF658DFFFF6188
            FFFF5B82FFFF7B99FFFF99A9F8FF6069E1FF4C53DAFF00000000000000000000
            00007D82E4FF878FE8FFB1C2F9FF96B8FFFF78A2FFFF76A0FFFF729BFFFF6B94
            FFFF84A3FFFFA0B0F8FF6871E3FF555CDCFF0000000000000000000000000000
            0000000000007E83E4FF8891E9FFB1C3F9FFBDD3FEFFB9CEFDFFB7CBFDFFB7CB
            FEFFA6B7F8FF727BE5FF5E65DEFF000000000000000000000000000000000000
            000000000000000000007E83E4FF7B81E4FF797EE3FF767BE3FF7278E2FF6F75
            E1FF6C72E0FF686EE0FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Kh'#244'ng l'#432'u'
          TabStop = False
          TabOrder = 14
          Color = 16579317
          ParentColor = False
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          Action = acInfoCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutGroup12: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locTop: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            ShowBorder = False
            object locAutoUpload: TdxLayoutGroup
              AutoAligns = [aaVertical]
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locTransItem14: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'dxDBCheckEdit8'
                ShowCaption = False
                Control = chkAutoTransfer
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object locAutoTime: TdxLayoutGroup
                Caption = 'locAuto'
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locTransTimeBegin: TdxLayoutItem
                  AutoAligns = []
                  AlignVert = avBottom
                  Caption = 'Th'#7901'i gian b'#7855't '#273#7847'u'
                  Control = spnTransFromTime
                  ControlOptions.ShowBorder = False
                end
                object locTransTimeEnd: TdxLayoutItem
                  AutoAligns = []
                  AlignVert = avBottom
                  Caption = #273#7871'n'
                  Control = spnTransToTime
                  ControlOptions.ShowBorder = False
                end
                object locTransItem8: TdxLayoutItem
                  AutoAligns = []
                  AlignVert = avBottom
                  Caption = 'ElPopupButton1'
                  ShowCaption = False
                  Control = btnRec
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object locTransGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object locTransItem4: TdxLayoutItem
                Control = Bevel5
                ControlOptions.ShowBorder = False
              end
              object locManual: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                ShowBorder = False
                object locTransItem6: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'Phat sinh trong ngay'
                  ShowCaption = False
                  Control = rbToday
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object locTransGroup8: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object locTransItem5: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = 'ElRadioButton1'
                    ShowCaption = False
                    Control = rbDuration
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locTransItem15: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = 'T'#7915' ng'#224'y'
                    Control = dedtCurDate1
                    ControlOptions.ShowBorder = False
                  end
                  object locTransToDate: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = #273#7871'n ng'#224'y'
                    Control = dedtCurDate2
                    ControlOptions.ShowBorder = False
                  end
                  object locTransItem7: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = btnGen
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locTransItem2: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = btnTransfer
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object locTransItem10: TdxLayoutItem
                Control = Bevel9
                ControlOptions.ShowBorder = False
              end
            end
          end
          object locTransItem3: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Control = grdUp
          end
          object locBottom: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            ShowBorder = False
            object locResult: TdxLayoutGroup
              ShowCaption = False
              ShowBorder = False
              object locTransItem13: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'Th'#432' m'#7909'c t'#7843'i l'#234'n'
                Control = UpDir
              end
              object locTransGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object locTransItem11: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  Caption = 'Ti'#7871'n tr'#236'nh'
                  Visible = False
                  Control = ProgressBar3
                  ControlOptions.ShowBorder = False
                end
                object locTransGroup4: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avBottom
                  Offsets.Top = 5
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object locTransItem12: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = btnRefresh1
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locTransItem9: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = btnSave3
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locTransItem16: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    ShowCaption = False
                    Control = btnCancel3
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locTransItem1: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = btnClose2
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
      end
      object pnlRecurrence: TPanel
        Tag = -2
        Left = 270
        Top = 103
        Width = 271
        Height = 126
        BevelWidth = 2
        BorderStyle = bsSingle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object locRec: TdxLayoutControl
          Tag = -2
          Left = 2
          Top = 2
          Width = 263
          Height = 91
          Align = alTop
          TabOrder = 0
          AutoContentSizes = [acsWidth]
          LookAndFeel = InterfaceDM.StyleWeb
          object ElLabel1: TElLabel
            Left = 0
            Top = 0
            Width = 79
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'ng'#224'y'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object lblWeek: TElLabel
            Left = 0
            Top = 0
            Width = 34
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'tu'#7847'n'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel6: TElLabel
            Left = 0
            Top = 0
            Width = 42
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = ' th'#225'ng'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel2: TElLabel
            Left = 545
            Top = 3
            Width = 42
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = ' th'#225'ng'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel3: TElLabel
            Left = 317
            Top = 3
            Width = 34
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'tu'#7847'n'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel4: TElLabel
            Left = 185
            Top = 3
            Width = 35
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'ng'#224'y'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object Bevel2: TBevel
            Left = 89
            Top = 27
            Width = 20
            Height = 3
            Align = alClient
          end
          object Bevel1: TBevel
            Left = 83
            Top = 3
            Width = 3
            Height = 75
          end
          object rbDaily: TElRadioButton
            Left = 3
            Top = 3
            Width = 73
            Height = 17
            Cursor = crDefault
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo ng'#224'y'
            TabOrder = 0
            Color = 16579317
            ParentColor = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = rbDailyClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbWeekly: TElRadioButton
            Left = 3
            Top = 32
            Width = 71
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo tu'#7847'n'
            TabStop = False
            TabOrder = 12
            Color = 16579317
            ParentColor = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = rbWeeklyClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbMonthly: TElRadioButton
            Left = 3
            Top = 61
            Width = 77
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo th'#225'ng'
            TabStop = False
            TabOrder = 13
            Color = 16579317
            ParentColor = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = rbMonthlyClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBSpinEdit4: TdxDBSpinEdit
            Left = 499
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 4
            DataField = 'RECURR_MONTHLY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 12.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit3: TdxDBSpinEdit
            Left = 413
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 3
            DataField = 'REC_DAYINMONTH'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 31.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit2: TdxDBSpinEdit
            Left = 271
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 2
            DataField = 'RECURR_WEEKLY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 48.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 139
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 1
            DataField = 'RECURR_DAILY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 31.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBCheckEdit2: TdxDBCheckEdit
            Left = 89
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 5
            Caption = 'Th'#7913' hai'
            DataField = 'MONDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 162
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 6
            Caption = 'Th'#7913' ba'
            DataField = 'TUESDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit7: TdxDBCheckEdit
            Left = 235
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 7
            Caption = 'Th'#7913' t'#432
            DataField = 'WEDNESDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit5: TdxDBCheckEdit
            Left = 308
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 8
            Caption = 'Th'#7913' n'#259'm'
            DataField = 'THURSDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit4: TdxDBCheckEdit
            Left = 235
            Top = 57
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 11
            Caption = 'Ch'#7911' nh'#7853't'
            DataField = 'SUNDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit3: TdxDBCheckEdit
            Left = 162
            Top = 57
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 10
            Caption = 'Th'#7913' b'#7843'y'
            DataField = 'SATURDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit6: TdxDBCheckEdit
            Left = 89
            Top = 57
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 9
            Caption = 'Th'#7913' s'#225'u'
            DataField = 'FRIDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object locRecGroup_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locRecGroup7: TdxLayoutGroup
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locRecGroup2: TdxLayoutGroup
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locRecGroup6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object locRecItem1: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    ShowCaption = False
                    Control = rbDaily
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locRecItem2: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    ShowCaption = False
                    Control = rbWeekly
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object locRecItem3: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = rbMonthly
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object locRecItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Control = Bevel1
                  ControlOptions.ShowBorder = False
                end
              end
              object locRecGroup1: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                ShowBorder = False
                object locRecGroup10: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object locRecDay: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'locRecDay'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locRecItem11: TdxLayoutItem
                      AutoAligns = []
                      AlignVert = avCenter
                      Caption = 'Chu k'#7923'  '
                      Offsets.Left = 7
                      Control = dxDBSpinEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem10: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      ShowCaption = False
                      Control = ElLabel4
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locRecWeek: TdxLayoutGroup
                    Caption = 'locRecWeek'
                    Offsets.Left = 5
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locRecItem9: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avBottom
                      Caption = 'Chu k'#7923' '
                      Offsets.Left = 3
                      Control = dxDBSpinEdit2
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem8: TdxLayoutItem
                      ShowCaption = False
                      Control = ElLabel3
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locRecMonth: TdxLayoutGroup
                    Caption = 'locRecMonth'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locRecItem7: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'V'#224'o ng'#224'y '
                      Offsets.Left = 7
                      Control = dxDBSpinEdit3
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem6: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'chu k'#7923
                      Offsets.Left = 5
                      Control = dxDBSpinEdit4
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem5: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avBottom
                      ShowCaption = False
                      Control = ElLabel2
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object locLine: TdxLayoutItem
                  Control = Bevel2
                  ControlOptions.ShowBorder = False
                end
                object locWeekDay: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object locRecGroup4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locRecItem13: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit2
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem14: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit1
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem15: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit7
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem16: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit5
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locRecGroup9: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locRecItem19: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit6
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem18: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit3
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object locRecItem17: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit4
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
        end
        object btnSave: TElPopupButton
          Left = 40
          Top = 93
          Width = 75
          Height = 27
          Cursor = crDefault
          Hint = 'L'#432'u'
          ImageIndex = 0
          DrawDefaultFrame = False
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000616161FF737373FF7E7E7EFF7E7E7EFF737373FF707070FF7070
            70FF707070FF707070FF707070FF737373FF737373FF00000000000000000000
            00000C0C0CFF7E7E7EFF707070FFFFFFFFFF949495FF949495FFE5E5E5FFE4E4
            E4FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000006161
            61FF7E7E7EFFF2F2F2FF707070FFFFFFFFFF949495FF949495FFDCDCDCFFDBDB
            DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FFE9E9E9FF707070FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9
            E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF787878FF787878FF707070FF707070FF707070FF7070
            70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FFB4B4B4FFB5B5B6FFB5B5B5FFB4B4B5FFB4B4B4FFB4B4
            B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF5793A5FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5593A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFF99EDFFFF95ECFFFF90ECFFFF8CEBFFFF88EA
            FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
            FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
            FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
            FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
            FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
            C0FF7E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5896A8FF737373FF737373FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u'
          TabStop = False
          TabOrder = 1
          Color = 16579317
          ParentColor = False
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          Action = acInfoPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnCancel2: TElPopupButton
          Left = 115
          Top = 93
          Width = 75
          Height = 27
          Cursor = crDefault
          Hint = 'B'#7887' qua kh'#244'ng l'#432'u'
          ImageIndex = 0
          DrawDefaultFrame = False
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004048D8FF3C44D7FF3941D6FF353DD5FF313AD5FF2E37
            D4FF2B34D3FF2831D2FF00000000000000000000000000000000000000000000
            0000000000004A51D9FF5760E0FF8A96F6FF99A6FCFF93A0F9FF909EF7FF929F
            F7FF7F8BEEFF404ADAFF2931D3FF000000000000000000000000000000000000
            0000535ADCFF5F67E1FF919DF7FF657CFFFF3D58FFFF3B57FFFF3752FEFF2F4B
            F9FF5269F7FF808CF1FF3F48DAFF2A32D3FF0000000000000000000000005D64
            DDFF6970E3FF98A5F8FF6F87FFFF4260FFFF3E5CFFFF3956FFFF3552FFFF304D
            FFFF2B49FFFF556CFBFF828FF4FF404ADAFF2B33D3FF00000000000000006268
            DFFF9EACF9FF7891FFFF4E6DFFFF6D86FFFF8EA0FFFF405EFFFF3B5AFFFF8195
            FFFF647AFFFF2C4BFFFF566DFFFF828FF6FF2E37D4FF0000000000000000676D
            DFFFAFBFFEFF5D7EFFFF5675FFFF95A8FFFFFFFFFFFFAAB8FFFF9AABFFFFFFFF
            FFFF9AAAFFFF3352FFFF3351FFFF96A5FEFF333BD5FF00000000000000006C72
            E0FFB0BFFDFF6788FFFF5D7EFFFF5D7EFFFFAEBEFFFFFFFFFFFFFFFFFFFFB8C4
            FFFF4867FFFF3A5AFFFF3C5BFFFF96A4FCFF3740D6FF00000000000000007076
            E2FFB3C4FDFF6E91FFFF6387FFFF5F83FFFFA7B9FFFFFFFFFFFFFFFFFFFFAFBF
            FFFF4A6BFFFF4162FFFF4363FFFF99A8FCFF3C44D7FF0000000000000000757A
            E3FFBACCFEFF7196FFFF6A8FFFFF9EB5FFFFFFFFFFFFC1CFFFFFB4C4FFFFFFFF
            FFFF92A8FFFF486AFFFF4668FFFF9FB0FEFF4149D8FF0000000000000000787E
            E3FFAFC0F9FF93B2FFFF7098FFFF8FADFFFFB0C4FFFF678DFFFF5E84FFFF9BB1
            FFFF7694FFFF4F73FFFF718DFFFF92A2F7FF464ED9FF00000000000000007C81
            E4FF868FE8FFB0C1F9FF95B6FFFF739CFFFF6F98FFFF6A92FFFF658DFFFF6188
            FFFF5B82FFFF7B99FFFF99A9F8FF6069E1FF4C53DAFF00000000000000000000
            00007D82E4FF878FE8FFB1C2F9FF96B8FFFF78A2FFFF76A0FFFF729BFFFF6B94
            FFFF84A3FFFFA0B0F8FF6871E3FF555CDCFF0000000000000000000000000000
            0000000000007E83E4FF8891E9FFB1C3F9FFBDD3FEFFB9CEFDFFB7CBFDFFB7CB
            FEFFA6B7F8FF727BE5FF5E65DEFF000000000000000000000000000000000000
            000000000000000000007E83E4FF7B81E4FF797EE3FF767BE3FF7278E2FF6F75
            E1FF6C72E0FF686EE0FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Kh'#244'ng l'#432'u'
          TabStop = False
          TabOrder = 2
          Color = 16579317
          ParentColor = False
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          Action = acInfoCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnClose: TElPopupButton
          Left = 190
          Top = 93
          Width = 75
          Height = 27
          Cursor = crDefault
          DrawDefaultFrame = False
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
          TabOrder = 3
          Color = 16579317
          ParentColor = False
          Align = alRight
          OnClick = btnCloseClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
      end
    end
    object tsUpdate: TElTabSheet
      PageControl = pgcMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'C'#7853'&p nh'#7853't d'#7919' li'#7879'u'
      Visible = False
      OnEnter = tsUpdateEnter
      object locUpdate: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 644
        Height = 343
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = InterfaceDM.StyleWeb
        object Bevel10: TBevel
          Left = 3
          Top = 55
          Width = 663
          Height = 3
        end
        object btnSave4: TElPopupButton
          Left = 410
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000616161FF737373FF7E7E7EFF7E7E7EFF737373FF707070FF7070
            70FF707070FF707070FF707070FF737373FF737373FF00000000000000000000
            00000C0C0CFF7E7E7EFF707070FFFFFFFFFF949495FF949495FFE5E5E5FFE4E4
            E4FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000006161
            61FF7E7E7EFFF2F2F2FF707070FFFFFFFFFF949495FF949495FFDCDCDCFFDBDB
            DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FFE9E9E9FF707070FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9
            E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF787878FF787878FF707070FF707070FF707070FF7070
            70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FFB4B4B4FFB5B5B6FFB5B5B5FFB4B4B5FFB4B4B4FFB4B4
            B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF5793A5FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5593A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFF99EDFFFF95ECFFFF90ECFFFF8CEBFFFF88EA
            FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
            FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
            FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
            FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
            FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
            C0FF7E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5896A8FF737373FF737373FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'L'#432'u'
          TabOrder = 6
          Color = 16579317
          ParentColor = False
          Action = acInfoPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnUpdate: TElPopupButton
          Left = 251
          Top = 315
          Width = 78
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&C'#7853'p nh'#7853't'
          TabOrder = 4
          Color = 16579317
          ParentColor = False
          Align = alRight
          Action = acUpdate
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object spnUpdateToTime: TdxDBTimeEdit
          Left = 225
          Top = 29
          Width = 89
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 2
          DataField = 'AUTO_UPDATE_TOTIME'
          DataSource = MainDM.dsTransferInfo
          StyleController = InterfaceDM.edtStyleController
          StoredValues = 4
        end
        object spnUpdateFromTime: TdxDBTimeEdit
          Left = 110
          Top = 29
          Width = 90
          Style.BorderColor = clSkyBlue
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsFlat
          TabOrder = 1
          DataField = 'AUTO_UPDATE_FROMTIME'
          DataSource = MainDM.dsTransferInfo
          StyleController = InterfaceDM.edtStyleController
          StoredValues = 4
        end
        object ProgressBar1: TProgressBar
          Left = 93
          Top = 283
          Width = 556
          Height = 24
          Align = alLeft
          Smooth = True
          TabOrder = 14
        end
        object dxDBGrid1: TdxDBGrid
          Left = 5
          Top = 63
          Width = 737
          Height = 149
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TIME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 8
          DataSource = dsLog
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object dxDBGridColumn1: TdxDBGridColumn
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RecId'
          end
          object dxDBGridMaskColumn1: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 50
            Width = 380
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTENT'
          end
          object dxDBGridDateColumn1: TdxDBGridDateColumn
            Alignment = taRightJustify
            DisableEditor = True
            MinWidth = 40
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATE'
          end
          object dxDBGridTimeColumn1: TdxDBGridTimeColumn
            Alignment = taRightJustify
            DisableEditor = True
            MinWidth = 30
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIME'
          end
          object dxDBGrid1UPDATED: TdxDBGridCheckColumn
            DisableEditor = True
            Width = 16
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UPDATED'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object DownDir: TElFolderNameEdit
          Left = 95
          Top = 265
          Width = 660
          Height = 13
          Cursor = crIBeam
          VertScrollBarStyles.ShowTrackHint = False
          VertScrollBarStyles.Width = 17
          VertScrollBarStyles.ButtonSize = 17
          VertScrollBarStyles.UseXPThemes = False
          HorzScrollBarStyles.ShowTrackHint = False
          HorzScrollBarStyles.Width = 17
          HorzScrollBarStyles.ButtonSize = 17
          HorzScrollBarStyles.UseXPThemes = False
          UseCustomScrollBars = True
          NotifyUserChangeOnly = True
          UseXPThemes = True
          Options = []
          RootFolder = sfoDesktopExpanded
          ButtonVisible = True
          TopMargin = 0
          RightMargin = 1
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Transparent = False
          LineBorderActiveColor = clBlack
          LineBorderInactiveColor = clBlack
          OnChange = DownDirChange
          Alignment = taLeftJustify
          Multiline = False
          ButtonColor = clBtnFace
          ButtonFlat = False
          ButtonShortcut = 0
          ButtonGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000002B85
            D8702C87D8A62C86D8EA2C87D8F72C87D8F72C87D8F72C87D8F72C87D8F72C87
            D8F72C87D8F72C87D8F72C86D8F72C87D8F12B85D8930000000000000000328D
            D9E6DCF0FAF0A6DDF4FD9DDBF4FF95DAF3FF8DD8F3FF85D7F3FF7ED4F2FF78D3
            F2FF71D2F1FF6BD0F1FF68CFF1FFC1EAF8FE328DD9F000000000000000003493
            DAF7EFFAFEFFA0E9F9FF90E5F8FF80E1F7FF71DEF6FF62DAF5FF53D7F4FF46D3
            F3FF38D0F2FF2DCDF1FF25CBF0FFCAF2FBFF3493DAF700000000000000003599
            DAF8F2FAFDFFB2EDFAFFA3E9F9FF94E6F8FF84E2F7FF75DEF6FF64DBF5FF56D7
            F4FF48D4F3FF3AD1F2FF2FCEF1FFCCF2FBFF3497DAF7000000000000000035A0
            DAF9F6FCFEFFC8F2FCFFB8EFFBFFABECFAFF9BE8F9FF8AE3F7FF7BE0F6FF6BDC
            F6FF5CD9F5FF4ED6F4FF43D3F3FFD0F3FCFF349EDAF7000000000000000036A5
            DAFAFEFFFFFFF8FDFFFFF6FDFFFFF5FCFFFFF3FCFEFFD8F6FCFF93E6F8FF84E3
            F7FF75DFF6FF67DBF5FF5BD8F4FFD7F4FCFF34A3DAF7000000000000000034AA
            DAFAE8F6FBFF93D4EFFF87CEEEFF72C0E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FC
            FEFFF0FCFEFFEFFBFEFFEEFBFEFFFEFFFFFF35AADAF7000000000000000035A9
            DAF2F1FAFDFF93DEF5FF92DCF4FF80D5F2FF69CAEDFF6BCBEAFF84D3EFFF7FD2
            EFFF79D0EFFF75CFEEFF71CFEEFFE9F7FBFF33ADDAF3000000000000000034AE
            DAF0F7FCFEFF8DE4F8FF90DEF5FF9EE0F5FFABE1F6FFEFFBFEFFF4FDFEFFF3FC
            FEFFF1FCFEFFEFFBFEFFEEFBFEFFFAFDFFF935AEDAD4000000000000000035B2
            DAF8FDFEFEFFFEFFFFFFFEFEFFFFFDFEFFFFFEFFFFFFEAF7FBFF6AC7E4F96AC7
            E3F86AC7E3F86AC7E3F878CDE6F773CAE5E131B0D956000000000000000033B3
            D9D05DC1E1FA5FC2E2FA5FC2E2FA5FC2E2FA5EC2E2FA3BB5DBDD2BB1D8162BB1
            D80F2BB1D80F2BB1D80F2BB1D80F2BB2D80F2BB2D80400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ButtonUseIcon = False
          ButtonNumGlyphs = 1
          ButtonWidth = 13
          AltButtonDown = False
          AltButtonEnabled = True
          AltButtonFlat = False
          AltButtonUseIcon = False
          AltButtonNumGlyphs = 1
          AltButtonPopupPlace = ppDown
          AltButtonShortcut = 0
          AltButtonVisible = False
          AltButtonWidth = 15
          BorderStyle = bsNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 9
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnRefresh2: TElPopupButton
          Left = 332
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000000000000000
            0000000000000000000075170075170075170000000000000000000000000000
            00000000000000000000000000000000000000000000007517007E203ACD7000
            7517000000000000000000000000000000000000000000000000000000000000
            00751700751704953546E4815DF5970075170075170075170075170000000000
            00000000000000000000000000007517007D1E1BBA5548F28A52F3915DF59729
            B65B2EB75E189F45007E21007517007517000000000000000000000000007517
            0CAB443FF08448F28A52F3915DF59758E78D71F9A47CFBAB7CF3A847C271007E
            22007517000000000000000000000000007517069C3943EA8452F3915DF59700
            7517007517007E211CA04752CB7C79E59F007E22007517000000000000000000
            000000007517007E1F33CC6B5DF5970075170000000000000000000075170C90
            373BB363007517000000000000000000000000000000000000007517109E4000
            7517000000007517007517000000000000007517007517000000000000000000
            007517007517000000000000007517007517000000007517119E400075170000
            000000000000000000000000000000000075173CB3640D903700751700000000
            00000000000075175FF59935CD6D007E1F007517000000000000000000000000
            007517007E237BE6A153CB7D1DA048007E210075170075175FF59956F49345EA
            85079C3A007517000000000000000000000000007517007E2248C2727EF4AA7E
            FBAD73F9A75AE78F5FF59956F4934CF28C41F1860DAB45007517000000000000
            000000000000007517007517007E21199F462FB75E2BB65B5FF59956F4934CF2
            8C1CBA56007D1E00751700000000000000000000000000000000000000751700
            75170075170075175FF59948E484049535007517007517000000000000000000
            0000000000000000000000000000000000000000000075173BCE71007E200075
            1700000000000000000000000000000000000000000000000000000000000000
            0000000000007517007517007517000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#7885'c l'#7841'i'
          TabOrder = 5
          Color = 16579317
          ParentColor = False
          OnClick = btnRefresh2Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object chkAutoUpdate: TdxDBCheckEdit
          Left = 3
          Top = 3
          Width = 172
          Color = 16579317
          ParentColor = False
          Style.ButtonStyle = btsFlat
          TabOrder = 0
          OnClick = chkAutoUpdateClick
          Caption = 'C'#7853'p nh'#7853't d'#7919' li'#7879'u t'#7921' '#273#7897'ng m'#7895'i ng'#224'y'
          DataField = 'AUTO_UPDATE'
          DataSource = MainDM.dsTransferInfo
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object btnRecUpdate: TElPopupButton
          Left = 317
          Top = 27
          Width = 67
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000C0C0C0FFB87700FFB87700FFB87700FFB87700FFB877
            00FFB87700FFB87700FFB87700FFC0C0C0FF0000000000000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFE2B4FFFFE2B4FFFFE2B4FFFFE2
            B4FFFFE2B4FFFFE2B4FFD89F41FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFB87700FFFFC76AFFFFC76AFFFFC76AFFFFC7
            6AFFFFC76BFFFFC76BFFFFE2B4FFB87700FF0000000000000000000000000000
            0000006699FF006699FF00CCFFFF17A1D0FFF1C67DFFFFC76AFFFFC76AFFFFC7
            6AFFFFC76AFFFFC76AFFFFE2B4FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFF1E0AFFF16345CFF4F80ACFF63615FFFFFC7
            6AFFFFC76AFFFFC76AFFFFE2B4FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFB87700FF5281ADFFDBFFFFFF32C0FFFF405C
            82FFFFC76AFFFFC76AFFFFE2B4FFB87700FF0000000000000000000000000000
            0000006699FF006699FF00CCFFFF0099CCFF5F5D5FFF74EEFFFF4ED0FFFF32C0
            FFFF1A579DFF537DA1FFFFE2B4FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFCA70FF405C83FF7DF1FFFF59D8
            FFFF38C3FFFF19579DFF4D7492FFB87700FF0000000000000000000000000000
            00000000000000000000B87700FFB87700FFFFD483FFFFD27FFF405E86FF80F4
            FFFF63DFFFFF3DC6FFFF1A599DFFB87700FF0000000000000000000000000000
            0000006699FF006699FF00CCFFFF0099CCFFFFDD95FFFFDC91FFFFDA8EFF405F
            89FF82F4FFFF6DE4FFFF45CCFFFF304C6EFF0000000000000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFE7A7FFFFE5A4FFFFE4A0FFFFE2
            9EFF40608CFF82F4FFFF74E9FFFF4ED2FFFF073880FF00000000000000000000
            00000000000000000000B87700FFFFE7A7FFFFE7A7FFFFE7A7FFFFE7A7FFFFE7
            A7FFFFE7A7FF42638EFF80F4FFFF7CF2FFFF4ECDFFFF4F80ACFF000000000000
            0000000000000000000000000000B87700FFB87700FFB87700FFB87700FFB877
            00FFB87700FFB87700FF2C4566FF73E6FFFF053477FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000004F80ACFF0000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'L'#234'n l'#7883'ch'
          TabOrder = 3
          Color = 16579317
          ParentColor = False
          OnClick = btnRecUpdateClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnClose3: TElPopupButton
          Left = 566
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
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
          TabOrder = 7
          Color = 16579317
          ParentColor = False
          OnClick = btnCloseFrmClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnCancel4: TElPopupButton
          Left = 488
          Top = 315
          Width = 75
          Height = 25
          Cursor = crDefault
          Hint = 'B'#7887' qua kh'#244'ng l'#432'u'
          ImageIndex = 0
          DrawDefaultFrame = False
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004048D8FF3C44D7FF3941D6FF353DD5FF313AD5FF2E37
            D4FF2B34D3FF2831D2FF00000000000000000000000000000000000000000000
            0000000000004A51D9FF5760E0FF8A96F6FF99A6FCFF93A0F9FF909EF7FF929F
            F7FF7F8BEEFF404ADAFF2931D3FF000000000000000000000000000000000000
            0000535ADCFF5F67E1FF919DF7FF657CFFFF3D58FFFF3B57FFFF3752FEFF2F4B
            F9FF5269F7FF808CF1FF3F48DAFF2A32D3FF0000000000000000000000005D64
            DDFF6970E3FF98A5F8FF6F87FFFF4260FFFF3E5CFFFF3956FFFF3552FFFF304D
            FFFF2B49FFFF556CFBFF828FF4FF404ADAFF2B33D3FF00000000000000006268
            DFFF9EACF9FF7891FFFF4E6DFFFF6D86FFFF8EA0FFFF405EFFFF3B5AFFFF8195
            FFFF647AFFFF2C4BFFFF566DFFFF828FF6FF2E37D4FF0000000000000000676D
            DFFFAFBFFEFF5D7EFFFF5675FFFF95A8FFFFFFFFFFFFAAB8FFFF9AABFFFFFFFF
            FFFF9AAAFFFF3352FFFF3351FFFF96A5FEFF333BD5FF00000000000000006C72
            E0FFB0BFFDFF6788FFFF5D7EFFFF5D7EFFFFAEBEFFFFFFFFFFFFFFFFFFFFB8C4
            FFFF4867FFFF3A5AFFFF3C5BFFFF96A4FCFF3740D6FF00000000000000007076
            E2FFB3C4FDFF6E91FFFF6387FFFF5F83FFFFA7B9FFFFFFFFFFFFFFFFFFFFAFBF
            FFFF4A6BFFFF4162FFFF4363FFFF99A8FCFF3C44D7FF0000000000000000757A
            E3FFBACCFEFF7196FFFF6A8FFFFF9EB5FFFFFFFFFFFFC1CFFFFFB4C4FFFFFFFF
            FFFF92A8FFFF486AFFFF4668FFFF9FB0FEFF4149D8FF0000000000000000787E
            E3FFAFC0F9FF93B2FFFF7098FFFF8FADFFFFB0C4FFFF678DFFFF5E84FFFF9BB1
            FFFF7694FFFF4F73FFFF718DFFFF92A2F7FF464ED9FF00000000000000007C81
            E4FF868FE8FFB0C1F9FF95B6FFFF739CFFFF6F98FFFF6A92FFFF658DFFFF6188
            FFFF5B82FFFF7B99FFFF99A9F8FF6069E1FF4C53DAFF00000000000000000000
            00007D82E4FF878FE8FFB1C2F9FF96B8FFFF78A2FFFF76A0FFFF729BFFFF6B94
            FFFF84A3FFFFA0B0F8FF6871E3FF555CDCFF0000000000000000000000000000
            0000000000007E83E4FF8891E9FFB1C3F9FFBDD3FEFFB9CEFDFFB7CBFDFFB7CB
            FEFFA6B7F8FF727BE5FF5E65DEFF000000000000000000000000000000000000
            000000000000000000007E83E4FF7B81E4FF797EE3FF767BE3FF7278E2FF6F75
            E1FF6C72E0FF686EE0FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Kh'#244'ng l'#432'u'
          TabStop = False
          TabOrder = 10
          Color = 16579317
          ParentColor = False
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          Action = acInfoCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutGroup7: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup8: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locUpdateItem8: TdxLayoutItem
              Caption = 'dxDBCheckEdit8'
              ShowCaption = False
              Control = chkAutoUpdate
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locUpdateTime: TdxLayoutGroup
              AutoAligns = [aaVertical]
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locUpdateTimeBegin: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'Th'#7901'i gian b'#7855't '#273#7847'u'
                Offsets.Left = 20
                Control = spnUpdateFromTime
                ControlOptions.ShowBorder = False
              end
              object locUpdateTimeEnd: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = #273#7871'n'
                Control = spnUpdateToTime
                ControlOptions.ShowBorder = False
              end
              object locUpdateItem9: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                ShowCaption = False
                Control = btnRecUpdate
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutGroup13: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locUpdateGroup2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Caption = 'New Group'
              ShowCaption = False
              ShowBorder = False
              object locUpdateItem7: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'Ti'#7871'n tr'#236'nh'
                Visible = False
                Control = ProgressBar1
                ControlOptions.ShowBorder = False
              end
              object locUpdateGroup4: TdxLayoutGroup
                Offsets.Top = 5
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locManualUpdate: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  ShowCaption = False
                  Control = btnUpdate
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object locUpdateItem6: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahRight
                  AlignVert = avBottom
                  ShowCaption = False
                  Control = btnRefresh2
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem7: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahRight
                  AlignVert = avBottom
                  Caption = 'ElPopupButton2'
                  ShowCaption = False
                  Control = btnSave4
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object locUpdateItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  ShowCaption = False
                  Control = btnCancel4
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object locUpdateItem1: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahRight
                  AlignVert = avBottom
                  ShowCaption = False
                  Control = btnClose3
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object locUpdateGroup1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object locUpdateItem4: TdxLayoutItem
                Control = Bevel10
                ControlOptions.ShowBorder = False
              end
              object locUpdateItem2: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Control = dxDBGrid1
              end
              object locUpdateItem5: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avBottom
                Caption = 'Th'#432' m'#7909'c c'#7853'p nh'#7853't'
                Control = DownDir
              end
              object locBottom2: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                LayoutDirection = ldHorizontal
                ShowBorder = False
              end
            end
          end
        end
      end
      object pnlUpdateRecurr: TPanel
        Tag = -2
        Left = 138
        Top = 79
        Width = 241
        Height = 126
        BevelWidth = 2
        BorderStyle = bsSingle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object dxLayoutControl3: TdxLayoutControl
          Tag = -2
          Left = 2
          Top = 2
          Width = 233
          Height = 91
          Align = alTop
          TabOrder = 0
          AutoContentSizes = [acsWidth]
          LookAndFeel = InterfaceDM.StyleWeb
          object ElLabel5: TElLabel
            Left = 0
            Top = 0
            Width = 79
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'ng'#224'y'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel8: TElLabel
            Left = 0
            Top = 0
            Width = 34
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'tu'#7847'n'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel9: TElLabel
            Left = 0
            Top = 0
            Width = 42
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = ' th'#225'ng'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel10: TElLabel
            Left = 538
            Top = 3
            Width = 42
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = ' th'#225'ng'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel11: TElLabel
            Left = 310
            Top = 3
            Width = 34
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'tu'#7847'n'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object ElLabel12: TElLabel
            Left = 182
            Top = 3
            Width = 35
            Height = 21
            Align = alLeft
            AutoSize = False
            Caption = 'ng'#224'y'
            Color = 16579317
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object Bevel3: TBevel
            Left = 89
            Top = 27
            Width = 20
            Height = 3
            Align = alClient
          end
          object Bevel4: TBevel
            Left = 83
            Top = 3
            Width = 3
            Height = 75
          end
          object rbUpdateDay: TElRadioButton
            Left = 3
            Top = 3
            Width = 73
            Height = 17
            Cursor = crDefault
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo ng'#224'y'
            TabOrder = 0
            Color = 16579317
            ParentColor = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = rbUpdateDayClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbUpdateWeek: TElRadioButton
            Left = 3
            Top = 32
            Width = 71
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo tu'#7847'n'
            TabStop = False
            TabOrder = 12
            Color = 16579317
            ParentColor = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = rbUpdateWeekClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbUpdateMonth: TElRadioButton
            Left = 3
            Top = 61
            Width = 77
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo th'#225'ng'
            TabStop = False
            TabOrder = 13
            Color = 16579317
            ParentColor = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = rbUpdateMonthClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBSpinEdit5: TdxDBSpinEdit
            Left = 492
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 4
            DataField = 'UPDATE_RECURR_MONTHLY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 12.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit6: TdxDBSpinEdit
            Left = 406
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 3
            DataField = 'UPDATE_REC_DAYINMONTH'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 31.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit7: TdxDBSpinEdit
            Left = 264
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 2
            DataField = 'UPDATE_RECURR_WEEKLY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 48.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit8: TdxDBSpinEdit
            Left = 136
            Top = 3
            Width = 43
            Style.BorderColor = clSkyBlue
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 1
            DataField = 'UPDATE_RECURR_DAILY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.edtStyleController
            MaxValue = 31.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBCheckEdit8: TdxDBCheckEdit
            Left = 89
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 5
            Caption = 'Th'#7913' hai'
            DataField = 'UPDATE_MONDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit9: TdxDBCheckEdit
            Left = 162
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 6
            Caption = 'Th'#7913' ba'
            DataField = 'UPDATE_TUESDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit10: TdxDBCheckEdit
            Left = 235
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 7
            Caption = 'Th'#7913' t'#432
            DataField = 'UPDATE_WEDNESDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit11: TdxDBCheckEdit
            Left = 308
            Top = 33
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 8
            Caption = 'Th'#7913' n'#259'm'
            DataField = 'UPDATE_THURSDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit12: TdxDBCheckEdit
            Left = 235
            Top = 57
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 11
            Caption = 'Ch'#7911' nh'#7853't'
            DataField = 'UPDATE_SUNDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit13: TdxDBCheckEdit
            Left = 162
            Top = 57
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 10
            Caption = 'Th'#7913' b'#7843'y'
            DataField = 'UPDATE_SATURDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit14: TdxDBCheckEdit
            Left = 89
            Top = 57
            Width = 70
            Color = 16579317
            ParentColor = False
            Style.ButtonStyle = btsFlat
            TabOrder = 9
            Caption = 'Th'#7913' s'#225'u'
            DataField = 'UPDATE_FRIDAY'
            DataSource = MainDM.dsTransferInfo
            StyleController = InterfaceDM.chkStyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxLayoutGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutGroup3: TdxLayoutGroup
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutGroup4: TdxLayoutGroup
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutGroup6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutItem1: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    ShowCaption = False
                    Control = rbUpdateDay
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem2: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    ShowCaption = False
                    Control = rbUpdateWeek
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem3: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avBottom
                    ShowCaption = False
                    Control = rbUpdateMonth
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Control = Bevel4
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutGroup9: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                ShowBorder = False
                object dxLayoutGroup10: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object locUpdateDay: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'locRecDay'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem5: TdxLayoutItem
                      AutoAligns = []
                      AlignVert = avCenter
                      Caption = 'Chu k'#7923' '
                      Offsets.Left = 7
                      Control = dxDBSpinEdit8
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem6: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      ShowCaption = False
                      Control = ElLabel12
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locUpdateWeek: TdxLayoutGroup
                    Caption = 'locRecWeek'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem9: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avBottom
                      Caption = 'Chu k'#7923
                      Offsets.Left = 7
                      Control = dxDBSpinEdit7
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem10: TdxLayoutItem
                      ShowCaption = False
                      Control = ElLabel11
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locUpdateMonth: TdxLayoutGroup
                    Caption = 'locRecMonth'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem11: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'V'#224'o ng'#224'y '
                      Offsets.Left = 7
                      Control = dxDBSpinEdit6
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem12: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'chu k'#7923
                      Offsets.Left = 5
                      Control = dxDBSpinEdit5
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem13: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avBottom
                      ShowCaption = False
                      Control = ElLabel10
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutItem14: TdxLayoutItem
                  Control = Bevel3
                  ControlOptions.ShowBorder = False
                end
                object locUpdateWeekDay: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutGroup17: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem15: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit8
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem16: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit9
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem17: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit10
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem18: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit11
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup18: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem19: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit14
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem20: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit13
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem21: TdxLayoutItem
                      ShowCaption = False
                      Control = dxDBCheckEdit12
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
        end
        object btnSave5: TElPopupButton
          Left = 10
          Top = 93
          Width = 75
          Height = 27
          Cursor = crDefault
          Hint = 'L'#432'u'
          ImageIndex = 0
          DrawDefaultFrame = False
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000616161FF737373FF7E7E7EFF7E7E7EFF737373FF707070FF7070
            70FF707070FF707070FF707070FF737373FF737373FF00000000000000000000
            00000C0C0CFF7E7E7EFF707070FFFFFFFFFF949495FF949495FFE5E5E5FFE4E4
            E4FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000006161
            61FF7E7E7EFFF2F2F2FF707070FFFFFFFFFF949495FF949495FFDCDCDCFFDBDB
            DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FFE9E9E9FF707070FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9
            E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF787878FF787878FF707070FF707070FF707070FF7070
            70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FFB4B4B4FFB5B5B6FFB5B5B5FFB4B4B5FFB4B4B4FFB4B4
            B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FFB4B4B4FF5793A5FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5593A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFF99EDFFFF95ECFFFF90ECFFFF8CEBFFFF88EA
            FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
            FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
            FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
            70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
            FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
            73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
            FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
            C0FF7E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
            A8FF5094A8FF5094A8FF5896A8FF737373FF737373FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u'
          TabStop = False
          TabOrder = 1
          Color = 16579317
          ParentColor = False
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          Action = acInfoPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnCancel5: TElPopupButton
          Left = 85
          Top = 93
          Width = 75
          Height = 27
          Cursor = crDefault
          Hint = 'B'#7887' qua kh'#244'ng l'#432'u'
          ImageIndex = 0
          DrawDefaultFrame = False
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004048D8FF3C44D7FF3941D6FF353DD5FF313AD5FF2E37
            D4FF2B34D3FF2831D2FF00000000000000000000000000000000000000000000
            0000000000004A51D9FF5760E0FF8A96F6FF99A6FCFF93A0F9FF909EF7FF929F
            F7FF7F8BEEFF404ADAFF2931D3FF000000000000000000000000000000000000
            0000535ADCFF5F67E1FF919DF7FF657CFFFF3D58FFFF3B57FFFF3752FEFF2F4B
            F9FF5269F7FF808CF1FF3F48DAFF2A32D3FF0000000000000000000000005D64
            DDFF6970E3FF98A5F8FF6F87FFFF4260FFFF3E5CFFFF3956FFFF3552FFFF304D
            FFFF2B49FFFF556CFBFF828FF4FF404ADAFF2B33D3FF00000000000000006268
            DFFF9EACF9FF7891FFFF4E6DFFFF6D86FFFF8EA0FFFF405EFFFF3B5AFFFF8195
            FFFF647AFFFF2C4BFFFF566DFFFF828FF6FF2E37D4FF0000000000000000676D
            DFFFAFBFFEFF5D7EFFFF5675FFFF95A8FFFFFFFFFFFFAAB8FFFF9AABFFFFFFFF
            FFFF9AAAFFFF3352FFFF3351FFFF96A5FEFF333BD5FF00000000000000006C72
            E0FFB0BFFDFF6788FFFF5D7EFFFF5D7EFFFFAEBEFFFFFFFFFFFFFFFFFFFFB8C4
            FFFF4867FFFF3A5AFFFF3C5BFFFF96A4FCFF3740D6FF00000000000000007076
            E2FFB3C4FDFF6E91FFFF6387FFFF5F83FFFFA7B9FFFFFFFFFFFFFFFFFFFFAFBF
            FFFF4A6BFFFF4162FFFF4363FFFF99A8FCFF3C44D7FF0000000000000000757A
            E3FFBACCFEFF7196FFFF6A8FFFFF9EB5FFFFFFFFFFFFC1CFFFFFB4C4FFFFFFFF
            FFFF92A8FFFF486AFFFF4668FFFF9FB0FEFF4149D8FF0000000000000000787E
            E3FFAFC0F9FF93B2FFFF7098FFFF8FADFFFFB0C4FFFF678DFFFF5E84FFFF9BB1
            FFFF7694FFFF4F73FFFF718DFFFF92A2F7FF464ED9FF00000000000000007C81
            E4FF868FE8FFB0C1F9FF95B6FFFF739CFFFF6F98FFFF6A92FFFF658DFFFF6188
            FFFF5B82FFFF7B99FFFF99A9F8FF6069E1FF4C53DAFF00000000000000000000
            00007D82E4FF878FE8FFB1C2F9FF96B8FFFF78A2FFFF76A0FFFF729BFFFF6B94
            FFFF84A3FFFFA0B0F8FF6871E3FF555CDCFF0000000000000000000000000000
            0000000000007E83E4FF8891E9FFB1C3F9FFBDD3FEFFB9CEFDFFB7CBFDFFB7CB
            FEFFA6B7F8FF727BE5FF5E65DEFF000000000000000000000000000000000000
            000000000000000000007E83E4FF7B81E4FF797EE3FF767BE3FF7278E2FF6F75
            E1FF6C72E0FF686EE0FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Kh'#244'ng l'#432'u'
          TabStop = False
          TabOrder = 2
          Color = 16579317
          ParentColor = False
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          Action = acInfoCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnClose5: TElPopupButton
          Left = 160
          Top = 93
          Width = 75
          Height = 27
          Cursor = crDefault
          DrawDefaultFrame = False
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
          TabOrder = 3
          Color = 16579317
          ParentColor = False
          Align = alRight
          OnClick = btnClose5Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
      end
    end
    object tsHistory: TElTabSheet
      PageControl = pgcMain
      ImageIndex = -1
      TabVisible = True
      Caption = '&Nh'#7853't k'#253
      Visible = False
      OnEnter = tsHistoryEnter
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 304
        Width = 644
        Height = 39
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 0
        AutoContentSizes = [acsWidth]
        LookAndFeel = InterfaceDM.StyleWeb
        object btnRefresh3: TElPopupButton
          Left = 484
          Top = 3
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 0
          DrawDefaultFrame = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000000000000000
            0000000000000000000075170075170075170000000000000000000000000000
            00000000000000000000000000000000000000000000007517007E203ACD7000
            7517000000000000000000000000000000000000000000000000000000000000
            00751700751704953546E4815DF5970075170075170075170075170000000000
            00000000000000000000000000007517007D1E1BBA5548F28A52F3915DF59729
            B65B2EB75E189F45007E21007517007517000000000000000000000000007517
            0CAB443FF08448F28A52F3915DF59758E78D71F9A47CFBAB7CF3A847C271007E
            22007517000000000000000000000000007517069C3943EA8452F3915DF59700
            7517007517007E211CA04752CB7C79E59F007E22007517000000000000000000
            000000007517007E1F33CC6B5DF5970075170000000000000000000075170C90
            373BB363007517000000000000000000000000000000000000007517109E4000
            7517000000007517007517000000000000007517007517000000000000000000
            007517007517000000000000007517007517000000007517119E400075170000
            000000000000000000000000000000000075173CB3640D903700751700000000
            00000000000075175FF59935CD6D007E1F007517000000000000000000000000
            007517007E237BE6A153CB7D1DA048007E210075170075175FF59956F49345EA
            85079C3A007517000000000000000000000000007517007E2248C2727EF4AA7E
            FBAD73F9A75AE78F5FF59956F4934CF28C41F1860DAB45007517000000000000
            000000000000007517007517007E21199F462FB75E2BB65B5FF59956F4934CF2
            8C1CBA56007D1E00751700000000000000000000000000000000000000751700
            75170075170075175FF59948E484049535007517007517000000000000000000
            0000000000000000000000000000000000000000000075173BCE71007E200075
            1700000000000000000000000000000000000000000000000000000000000000
            0000000000007517007517007517000000000000000000000000}
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#7885'c l'#7841'i'
          TabOrder = 1
          Color = 16579317
          ParentColor = False
          OnClick = btnRefresh3Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 392
          Top = 3
          Width = 89
          Height = 25
          Cursor = crDefault
          ImageIndex = 0
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'X'#243'a nh'#7853't k'#253
          TabOrder = 0
          Color = 16579317
          ParentColor = False
          OnClick = ElPopupButton4Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnClose4: TElPopupButton
          Left = 562
          Top = 3
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 2
          Color = 16579317
          ParentColor = False
          OnClick = btnCloseFrmClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl4Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = ElPopupButton4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl4Item1: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avCenter
            ShowCaption = False
            Control = btnRefresh3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl4Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = btnClose4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object grdHistory: TdxDBGrid
        Left = 0
        Top = 0
        Width = 644
        Height = 304
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'LOG_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        IsImportFromXLS = True
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        DataSource = dsHistory
        DefaultRowHeight = 21
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object grdHistoryLOG_ID: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 207
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LOG_ID'
        end
        object grdHistoryCONTENT: TdxDBGridMaskColumn
          Caption = 'N'#7897'i dung'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 50
          Width = 395
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTENT'
          Caption_UTF7 = 'N+Htk-i dung'
        end
        object grdHistoryLOG_DATE: TdxDBGridDateColumn
          Alignment = taRightJustify
          Caption = 'Ng'#224'y'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 60
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LOG_DATE'
          Caption_UTF7 = 'Ng+AOA-y'
        end
        object grdHistoryLOG_TIME: TdxDBGridTimeColumn
          Alignment = taRightJustify
          Caption = 'Gi'#7901
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 60
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LOG_TIME'
          Caption_UTF7 = 'Gi+Ht0'
        end
        object grdHistoryTRANSFERED: TdxDBGridCheckColumn
          Alignment = taCenter
          Caption = 'Truy'#7873'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 40
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TRANSFERED'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Caption_UTF7 = 'Truy+HsE-n'
        end
        object grdHistoryUPDATED: TdxDBGridCheckColumn
          Alignment = taCenter
          Caption = 'C'#7853'p nh'#7853't'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 40
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UPDATED'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Caption_UTF7 = 'C+Hq0-p nh+Hq0-t'
        end
      end
    end
  end
  object ElPanel1: TElPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 57
    Background.Data = {
      F6210200424DF6210200000000003600000028000000150300003B0000000100
      180000000000C021020000000000000000000000000000000000AB8700996812
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      542100542100612A0E864C3E7A402E5421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      542100542100542100542100501E00501E00501E005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      0054210054210054210054210054210054210054210054210054210054210054
      2100542100542100542100542100542100542100542100542100542100542100
      5421005421005421005421005421005421005421005421005421005421005421
      00542100542100542100542100542100542100996812AB870000AB8700996812
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E0050
      1E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00
      501E00501E00501E00501E00501E00501E00501E00501E00501E00501E00501E
      00501E00501E00501E00501E00501E00501E00996812AB870000AB8700956308
      3F12004113004012004113004114004113004014004014004314004414004717
      004C1B005A250267300C6B350F68320E612D0A5E29085522015722015824015C
      27035F2902602A02622D01632F026731036833036B35036D37056E37076F3707
      7037077037076D37076D36066E37076E3808763F107F4718824A1B864F208952
      238E5829905B2C8F5A2B8F5A298E59288D57268E5827905A2B915B2C925D2E93
      5E2F955F30956031956031955F30945E2F925D2E925D2E945E2F945F30935D2E
      925C2D925D2E945E2F915B2C8F592A8F5A2B905A2B8E58298D56278C56278852
      23885122875122875122875122865021844D1F834C1D824B1C81491A80481980
      491A7F48197E46177E461880481A814A1B80491A854D21895225874F23844D21
      824A1E7C4418784013773F12743C0F733B0E71390B6D37076B35056730006932
      026B3404683202653000673002673002642E00642E00652F0167300267300367
      3002652F01652E00642F02653003632E01642E01642E01642F02642F02642E01
      632E01632D00652E00652E02642D00622B00642D026A320872390F773E12733B
      0E6A34046B35036630006A340470380B6E37097B4316824B1C824B1C8B54258D
      5627865021834D1E824B1A7F4817733C0C6D37056C3604713A0A7942128E5827
      9B6837925C32A36D4DAE7E5D915C346A350A5C28005825005421005723005A25
      005A26005F2A015F2A00622D006530006B3605683301632E006831016831016B
      350571390A713A0B753E0F7A42137F47187C45167B44157A43147942137B4415
      7E47187F481979421277400F7941127941127D45168048198851228C55268B55
      268B55268B55267E4718713A0B6E38086C350670390A71390A70390A743C0D73
      3B0C733C0D7740117941127A42137E46177E46177D46177C45167C45167D4617
      7E46177E46177F47188048197E46177941127840117D4516824C1D865021834D
      1E80491A7E46177F47188048197C4415743C0D6D37076F3808713A0B723B0C73
      3B0C743D0E753E0F7740117B44157C44157D461780491A834D1E8650218A5425
      8F5A2B955F30935D2E945F30925D2E905A2B8F5A2B8F592A8E57288E57288E58
      298E58298E58298E57288D56278F592A8E5728854F2071390A6B350588512289
      5223844D1F885122844D1F8852238751228751228851228852238A53248B5526
      8C56278D57288E58298F592A925C2D945F30956031976233956132915B2C925C
      2D956031955F309560319A6536986435956031976334956130935E2D925C2D94
      5E2F955F30925D2E8F5A2B8E582A8F5A2D9561349C693C9D693D9D693D9D693E
      9D693FA06C44A06C46A26E49A06C4499633A945F339864379F6C3C9D6B3BA26F
      40A57544A16E40A372439F6C3E9560339B6938A272419E6C3C9A67378E58298F
      592A955F309763349560319561328F592A8E5728935D2E955F30925C2D925C2D
      945F30966132955F309560318E58299561329560318C55268F5A2B8B5526814A
      1B8852238B54258953248B55268E57288F592A925D2E9B6737915C2D8E582991
      5B2C935D2E8E57288C55269561329E6B3B9863348E592A8E58298D56278E5829
      8E5829935D2E9F6D3D9763347A42138751229964359560318E592A824B1C905A
      2B9863349763348C56278D5627935E2F966233A06D3D9D6A3A97623399643597
      62339A6737A47443A37040996536945E2F966132955F30955F30935E2F966233
      9E6B3B9D6A3A9B68369C69379561328E5829713A0B7A4314935D2E976233915B
      2A915B2A925D2B915C2A8E57268E5827915B2B935D2C864F1E8048177F47167F
      4716814918814918814918854D1D864F1D87511F87511F864F1D864F1D87501E
      864F1D844D1B834D1A834D1A834D1A834D1A834D1A824C19824B18814A17824B
      17814A16814A16814A16814A168049157F48147E47137E46117F47127F48127E
      46117C450F7B440E7C440F7D45107C450F7C450F7D45107C450F7B440E7B430E
      7A430D7A430D7A420D79420C78410B78410A774009763F09753E08753E07753E
      07743D06743D05733D04723C03723B03713B02713A02703A01703A00703A0070
      3A00703A00703A00703A006F3900703A00703A00703A00703A00703A00703A00
      703A00703A00703A00713B00713B00713B00713B00713B00713B00713B00713B
      00723C00723C00723C00723C00723C00723C00723D00723C00723C00723D0072
      3D00733D00733D00733E00733E00743E00743E00743E00743E00753F00753F00
      753F00753F00753F00753F01753F00753F00753F00753F00753F007640007640
      0076410076410076410076410076410076410077420077420077420077420077
      4200774200774200774200774200794300794300794300794300794400794400
      7944007944007944007A44017A44017A44017A45007A45007A45007A45007A45
      007B46007B46007B46007B46007B46007B46007B47007B47007B47007B47007B
      47007C47017C47017C47017C47017D48007D48007D48007D48007E48017E4801
      7E48017E48017E49007E4A007E4A007E4A007E4A007E4A007E4A007F4A007F4A
      007F4A007F4A007F4A007F4B007F4B007F4B007F4B007F4B00804B01804B0180
      4B01804C00804C00804C00804D00814D00814D00814D00814D00814D00814D00
      814D01824D02824D00824D00824D00824D00824D01824D01824D01824D01824F
      00824F00824F00824F00824F00824F00824F0082500182500082500082500082
      5000825000825000825000835101835101835101835100835100835101835101
      8352008352008352008452008452008452008452008452008452008453018552
      0085530185530185530185530185530185530186530186530186530186530186
      5301865401865401865401865401865400865400865400865400875501875501
      8755018755018755018755018755018755018755018755018755018755018756
      0187560187560187560188560188560188560188560187560088570188570188
      5701885701885701885701885701885701885701885701885701885701885701
      8857018857018857018857018857018857018857018857018857018857018857
      0188570188570188570188570188570188570188570188570188570188570188
      5701885701885701885701885701885701885701885701885701885701885701
      8857018857018857018857018857018857018857018857018857018857018857
      01885701885701885701885701885701885701956308AB870000AB8700906000
      310A00330A00330A00370B00360D00360C00330C00350D003A0E023E10004C19
      035E260A69340C6A35066430005C2A005322004E1E005824025B24015C280162
      2C026630036A33026D3801723D027541037A45037F4B06844F0A86510B8A530D
      8B540E8B540E89540E8B561088530D8B56109F6E27AA7D34A77830AE8138BC95
      49C4A253C4A354C29F51C4A452C2A04FBE9A4ABF9C4BBC974AC09C4EC3A052C4
      A253C5A455C8A858C8A959C9AB5AC8A858C7A757C6A556C5A455C3A052C29F51
      C4A253C7A757C3A052C29F51C09C4EBF9A4DC09C4EBF9A4DBC974AB99246B78E
      43B68D42B48B40B48B40B38A3FB2873DAE8339AC7F36A97B32A6772FA4752DA6
      772FA5762EA3732BA3732CA5762FA2722B8E5A15986422AF813EB38642AE7F3C
      A97836A06D2CA47430A06E2B98642297632194601B8B561188530D844F09824D
      07834D08804A057F4904824B09824C0A7F48067E47057C440480470A844D0D86
      4D11854D10824C0E814B0D814A0E80490D814A0E824C10834D11834D11834D11
      834D11834D11804A0C82490D824A10864C15844D15854B148950168E5619905A
      1A8D58138F5B158B56108F5B169763219A6525A57432A97C34A97C33B3883EAD
      8037A4752DAC7F36AD8135A4762B95631A845007824D0599681EA5772CAE8336
      BA9445BB9450D8BB86EADCA0CAAD6A9667296D3801673000693203622C00622E
      00602B006630006B37007540007B480188560D8452097F4903844F09814B0588
      530D96631D9D6C25A87931B1863CAE8138B2873DB0853BA6772F9D6B24A3732B
      AD8037B1863CA97C30A374299F6E279C6A23A97B32B38A3FC29F51C8A959C8A9
      59C3A052B992479D6B258B56118E59148C5712905C178E59138D581294601A95
      621C97641E9D6C259D6B249B6922A5762EA4752DA3732BA17029A17029A3742C
      A4752DA3742CA97B32AA7D34A97C33A2722A99672098651FA3732BAD8037AD80
      37AE8339AF843AAA7D349C6A238B5610844F0987520C89540E8E5913905C1693
      5F1996631D97641E9967209E6D26A77830AA7D34AE8339B38A3FB89145BF9A4D
      C6A556CBAD5CD1B764CFB361CAAC5BC8A858C8A959C6A556C4A253C4A354C4A3
      54C4A253C5A455C4A354C3A052C8A858C9AB5AC29F51A879318B5610AC7F36C1
      9E50C29F51C6A556C4A253C6A556C5A455C5A455C6A556C8A858C9AB5ACBAE5D
      CDB15FCFB361D2BA66D2B865D2BA66D2BA66D2B865D4BC68D1B764CAAC5BC29F
      51C5A455C09D4FC09D4FC9AB5AC9AB5AC4A354C7A757BF9C4BC09E4DC4A253C6
      A556C4A253C09D4FC29F52C7A758D3BC6CCDB264CCB163D2B86BD6BF72D2B86F
      CFB36BD5BB75DFCC88E4D18DCBAB6AB58B4AC8A95FD5C06CCBAE5DCBAD5CD2BA
      67DAC771D3BA6AD3BA6ACFB365C5A456D1BA67DED177E0D178DBC871B99246B8
      9145D0B663D6BF6ACBAE5DD2BA66C29F51B3883EC09C4EC7A757C8A858C8A959
      C4A354CEB260CBAD5CC8A858C8A959CEB260C29F51B78E43BB9448B89145BB94
      48B3883EAC7F36B3883EBC9549BA9347BC974ACAAC5BDAC770BD984BB78F44C4
      A354C3A052B38A3FB48B40CCAF5EDBC871CEB260BF9A4DC09C4EB89145B3883E
      B78E43CBAE5DECE587DAC770B89145C9AB5ADAC770D1B764C09C4EB78E43C4A3
      54C8A959C3A052B68D42B78E43B99246C19E50DDCC74D6BF6AD2B865CCAF5ECF
      B361D8C36DE1D379E1D379D8C36DC8A858C8A858C7A757C7A757BF9A4DC4A253
      D6BF6AD6BF6AC8A956C09D4CC8A959B3883E7A4400A2722BC9AB5AC5A455C4A0
      4EC4A04EC5A44FC4A24DC09A49C09C4AC4A250C6A452B58B3CA16F24A57529A9
      792D9E6C21A57529AD7F32A97B2EAE8132B28737B58C3BB38838AE8132AC7F30
      AD8031AE8333AF8532AF8532AE8431AE8431AE8330AD812FAA7E2CA97D2BAA7E
      2BA97D2AA87B28A77927A67826A67826A57725A57725A77823A57621A3731EA1
      701CA06F1BA1701CA3731EA3741FA2721DA1701CA1701CA1701CA1701CA1701C
      A2721DA2721D9E6D199D6C189C6B159A691399681298671197651096640F9563
      0D95630D95630A936108926007915F06905E05905E058F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8805AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E00B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      310B00350B01350B013A0B03390D01360D01360E00370F003E1101441400511D
      045824025423004D1F004D1E004B1B004415004717004E1D00511E0051200057
      23005B27005D2A00612F006632006B37006F3A007541037C4606824B09864D0A
      88500C89510D834D098A551087520D85500B996721A77831A97C34B78F45C19E
      51CBAD5DC8A959C29F51C3A052BE994CB89243BC9747BB9448C09C4EC3A052C4
      A253C4A253C5A455C8A858C9AB5AC9AB5AC9AB5AC8A858C4A354C29F51C4A253
      C5A455C7A757C09D4FC3A052C29F51BF9A4DBF9A4DC09D4FBF9A4DBB9448BC95
      49B99246B78F44B68D42B58C41B38A3FB1863CAE8339AD8037A97C33A87931A9
      7B32A97B32A6772FA5762FA5762FA3732C824C077841008A53139B6726AD7D3D
      B38645A97738A57432A16F2C9A67249B682595611C89540F86510B844F09824D
      077C46007943007A44007A43017A4301784100753D00713B00733C0076400277
      4004774004733E03713C01703B00723C04733D05733C06733C06723B05723B05
      713B03703A02753F07733B03713906783D0C753D0B713705713802763E06915D
      1FB18741B68D43A6772FA1702A9B68259B6528A67435A577339D6D27A0722BA2
      742DAA7D34B78F44AF853898671D9D6D218754097E4A00956419A5782BA77B2D
      B79241C8A961E0C890ECDFA2D3BC76AD84428A551D844D1A864F1D7D45128450
      157B460A7742077A4406814D087D4A0187520C814B05753F00814B05834D088C
      571194601A935F19996720A1702997641E9E6D26A3732BA170299D6B249E6D26
      A3742CA6772F99681E9B6A2099672096631DA5762EAB7E35B1863CB48B40B388
      3EA879319967217D4702764000834D09834D09844F0A804A04814B058A550F8A
      550F8A550F8F5B15925E1894601A9F6E27A3732BA3742CA06F289C6A239D6C25
      A2722AA6772FA77830A87931A87931A5762E9C6A2395621C9C6A23A77830AD80
      37AA7D34A6772F9C6A238B56107F4903824C068A550F89540E8B56108C57118E
      5913925E1895611B996720A17029A4752DAA7D34B0853BB68D42BD984BC4A354
      C8A858C7A757CCAF5ECFB562CFB562CCAF5ECBAE5DCDB15FCCAF5ECBAD5CCAAC
      5BCAAC5BCCAF5ECDB15FCBAE5DCFB361D3BB67D2B865C8A959A06F28A3732BC7
      A757CFB361CEB260CDB15FCDB15FCCAF5ECBAE5DCAAC5BC9AB5AC8A858C7A757
      C6A556C6A556C5A455C4A253C4A253C3A052C29F51C4A253C19E50BB9448BE99
      4CBD984BB68D42B68D42BF9A4DC19E50BD984BBF9A4DC7A855C4A452C29F51C2
      9F51C3A052C6A556CDB160D5BE6AD3BB68CBAC5FC8A75BCFB266D6BC6ED6BC71
      D9C175E0CC7EDDC881C9A767B98F50B48746C39F55D0B664C8A858C4A354C8A9
      5ACFB563C4A056BF9950C09C4FC3A053D6C06CE4D87EDCC972DECD75C6A556C7
      A757D7C16CD7C16CCFB562D9C56FC09C4EA4752DAC7F36B3883EB78F44BB9448
      B1863CC09C4EC09C4EB78F44C09D4FBE994CBA9347C5A455C9AB5AC9AB5ACEB2
      60CBAE5DC8A959C8A959C8A959C19E50C29F51CFB361DFCF76CBAE5DC5A455C4
      A354BF9A4DBC9549C3A052D2B865DAC770C9AB5ABA9347C19E50C09D4FBF9A4D
      C3A052D6BF6AE9E184DDCB73D4BC68DFCF76ECE587EEEA8ADDCB73D9C46ED7C1
      6CB78F44B0853BB38A3FB38A3FC4A354D9C46EE0D077D1B764D1B764CAAC5BD7
      C16CE1D379D9C56FDDCB73E0D178D1B764C4A354C09D4FC4A354BC974ABC974A
      CEB260D4BC68CEB35EC09D4CCFB361A97C33743E00AD8038C5A455C09C4EC5A3
      50C39F4DC4A24DC4A24DC09C4AC29E4CC6A452C7A553B48A3BA37226A6762AA5
      75299C691EA47428AC7E31A8782CAF8434B18636B38838B28737AE8132AB7E2F
      AE8132B38838B18734B08633AF8532AE8431AE8330AD812FAB7F2DA97D2BA97D
      2AA97C29A77927A67826A67826A57725A57725A47624A47520A2721D9E6D199E
      6D19A06F1BA3731EA3731EA3731EA06F1BA06F1BA06F1BA06F1BA06F1B9F6E1A
      9E6D199D6C189C6A169B691599681298671197651096640F95630E95630E9461
      0B94610B936108926007915F06905E05905E058F5D048F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8805AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E00B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      320B00330C00350A02370B04360D01360E00360E003910003E13014517015D28
      0F612C0C5021003E14004115004315004012004514034616004617004719004C
      1B004D1E005221005525005C2900622E006832006D3801743F047B4507814909
      834D0B85500B85500B87520D86510C844F0A95621DA97C34AE8139B3883FC5A4
      56D1B765CFB562C8A858C4A354BD984BB79142BD9949BC974AC09D4FC3A052C3
      A052C3A052C4A354C7A757C8A858CAAC5BCAAC5BC8A858C4A354C4A354C7A757
      C6A556C3A052C09D4FC29F51C29F51C09C4EBD984BBE994CBD984BBB9448BC97
      4ABA9347B78F44B58C41B48B40B3883EB1863CAE8339AE8138AA7D34A97B32A9
      7C33A97B32A6772FA3742DA2722BA3732C844D0C663000622C00733A008F581C
      A47234AB7B3BA97937A87834A06E2B9D6B2897641F8F5B168E5A148C57118651
      0B7B45007943007C4601794200784100784100743C006F39006E38006C35006A
      3300673300673200673100683200663000663000663000652F00632E00622C00
      602C005F2B00612D005C28005A25005C25005B25005823005A25006029008750
      16C29F59CFB664BB9449BD974EB68B469E6A2CA16D309B692A986525A57733AA
      7E39A77B33AB7E35A879319F6F2595621988550A824D03926015A37629B58E3E
      CAAE58CFB56AE9D89CF1EAAAD1B873B38D47A7793CA97C41AC7F44AE8344AC81
      40A879379967288C571787550E834F06925E18915D1785500A8D581289540E8C
      57118E5A1489540E8A550F8E5A148E59138C5711915D17A06F28A97B32A5762E
      A3732BA77830956219A17227A4752D9F6E27A97B32A6772FA3742CA3742C9865
      1F8A550F7F49046D3800713B00814B067E48037F490485500A824C0687520C87
      520C85500A89540E86510B85500A98651F9E6D26A3742CA3732B9E6D269D6B24
      9D6C259E6D26A3742CA170299F6E279D6B2497641E915D17915D1795621CA677
      2FA1702996631D8B5610824D07814B05834D0887520C8E59138E59138E591390
      5C1695611B96631D9D6B24A6772FA77830B0853BB99246C19E50CBAD5CD4BC68
      D5BE69CFB562CFB562D9C46EDECD75D9C46ED4BC68D7C16CD7C16CD2B865D5BE
      69D4BC68D6BF6AD6C06BD5BE69D4BC68D5BE69D6C06BCBAE5DAA7D348F5B15AE
      8339BD984BBA9347B99246B99246BA9347BA9347BA9347BA9347BB9448BB9448
      BC9549BC974ABB9448BB9448BE994CC19E50C29F51C4A354C3A052BD984BB78E
      43B68D42B2873DB48B40BE994CC3A052C19E50C29F51C2A04FC2A04FC5A455CB
      AD5CCFB361D1B764D2BA67D5BE6AD2BA67D6BF6BD6BE6DD7C06FD9C472DDC877
      DCC875D3B76DB38749A8773BBE9553CCAD62CEB163D7C16DD6BF6ACFB361D2BA
      67DCC973D6BF6BCFB365D1B765D2B866D7C16DD9C46FD4BC68D6BF6ACFB562D6
      BF6AD3BB67D2BA66D2BA66D6C06BD2B865BD984BBC9549BD984BC19E50C3A052
      BA9347C09D4FBB9448B89145C09D4FBE994CC8A858DDCC74E1D379E2D47AD7C1
      6CDCC972DBC871D7C16CD4BC68CFB562D3BB67E0D077EDE889E1D379D3BB67C9
      AB5ACFB361D4BC68CFB361CDB15FDDCB73CEB260BD984BBF9A4DC09D4FC3A052
      C29F51CBAD5CDDCB73D6BF6AD3BB67D6C06BDFCF76EEEA8AE0D178D5BE69E1D3
      79BF9A4DB3883EAE8138A4752DBC974ADAC770D9C56FCBAE5DC9AB5ACDB15FDE
      CD75DDCB73CAAC5BCBAE5DD8C36DD9C56FC6A556BA9347BE994CBE994CB99246
      C19E50CFB361D2BB64CCB15CD0B6639C6A23784200B3883FC4A354C8A858C4A0
      4EC29E4CC3A04CC29F4BC09A49C29E4CC7A553C8A855B3883AAE8134A7772B9F
      6D22A37327AA7C2FAA7C2FAF8335B38838AD8031AA7D2EAC7F30AE8132AE8333
      B08535B38A39B38B37B38A36B28835B18734B08633AF8532AE8330AD812FAA7E
      2BAA7E2BAA7E2BA97D2AA97D2AA87B28A57725A37523A2721DA1701CA1701CA3
      731EA47520A57621A3741FA2721D9E6D19A1701CA3741FA3741FA2721D9E6D19
      9B69159A68149B69159A681498671196640F95630E95620D95620D94610C9360
      0A93600A926007926007915F06905E05905E05905E058F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8805AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E00B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      320B00330C00360B02370C03360E00370F00350F003B11013F14024618025B25
      0E6F381D673211491B003A11003A10003D0E004112073E12004013003F140044
      1500451800491A004D1E005221005827005E2A006631026D3803743E067B4408
      7F4909824C0A824C07824D0887510F824B0986500EA16F2CB78E47C29E54C9A9
      5DD2B768D1B765CBAD5DC9AB5AC4A253BC974ABE994CBD984BC09C4EC29F51C2
      9F51C3A052C5A455C7A757C7A757C8A959CBAD5CC9AB5AC5A455C4A253C5A455
      C6A556C5A455C29F51C19E50C09D4FC09D4FBE994CBC9549BC9549BD984BBD98
      4BBB9448B78F44B68D42B58C41B48B40B3883EB0853BAE8339AC7F36AA7D34AA
      7D34AA7D34A77830A3742CA2722BA06F29905B19763E00693200683000662F00
      783F03986226A67533A97B36A3732F9E6C299A682297641F98651F915D17834D
      087A44007943007D47027B44027B44027D46047A4202743D016E390069340066
      30006430006631006933006C3603642E00642E00642E00642E00622E00642E00
      622E00612D00612D00612C00602A006128025F28026028005E27005C2600713B
      03A57537C2A056B58D46C7A55ADFCB7CD3B36CCBA965B78E4DAF8545B7924EB8
      914DAF8440AE833DAC7F37A5762E9A651F8E59108652098A560D98671DBC9848
      D6C36ACDAF68DFC590EEE1A7DDCC7FCEB667C4A55EC09E5ABF9956BC9750BD9A
      4EC7A757BF9950B28640A97D319E6E24A77830A36F2A98651F98651F8D58128E
      591395621C94601A94601A95621C915D178D58128B561095611B9E6D269D6C25
      A2722AAE8138A6782DAE8336AE8138A5762EAD8037A97B32A4752DA3742C9865
      1F85500A7C4601743E007A4400834D097F4904834D09844F097E4802824D0787
      520C8E5913925E188C571185500A8D5812935F199B6922A06F28A3742CA4752D
      A2722A9E6D26A87931A5762EA170299B692295611B905C168D58128B56108752
      0C8D58128C5711834D087F4903834D0888530D88530D87520C8A550F8E5A1497
      641E9F6E27A3732BAA7D34B68D42BA9347C3A052CBAD5CD2B865DBC871E4D87D
      E6DB7FE0D178DBC871D9C56FD9C46ED6BF6ACFB562CFB361CEB260C9AB5ACAAC
      5BC8A959C7A757C6A556C5A455C29F51C09D4FC29F51BC974AAE8339834D0893
      5F19B1863CBA9347BA9347BB9448B68D42B78E43B78F44B89145BA9347BC9549
      BD984BBE994CC29F51C19E50C3A052C4A253C29F51C09D4FBD984BB78E43B48B
      40B48B40B48B40BA9347C4A253CAAC5BCBAD5CCBAD5CC9AC58CCB15CCFB361CE
      B260CBAD5CC8A959CBAD5CCEB260D3BB68D9C46FD8C36ED9C46FD8C36ED7C06F
      CFB362B78E479A6427B78B49C39E56BF9950CCAF5FD5BE6ACBAE5DD2B865D7C1
      6CE0D078DAC771D5BE6AD8C36ED9C46FD6BF6ED2BA67D8C36DD2B865C8A858D0
      B663D2B865D2BA66D2B865D2B865E5D97EE3D57BDCC972DBC871DDCB73DBC871
      D7C16CD0B663CBAE5DCFB562CBAE5DCBAD5CCCAF5EC7A757C4A354CAAC5BD3BB
      67CFB562CDB15FD4BC68DCC972D7C16CD4BC68DCC972E7DD81E2D47AD9C46ED2
      BA66D3BB67C5A455BA9347CAAC5BE1D379D7C16CC8A959C7A757C3A052C3A052
      C3A052CDB15FDDCB73D8C36DCFB361D0B663D6BF6AE9E083EBE486E3D57BD4BC
      68D6BF6AD2BA66D4BC68D9C56FD9C56FD5BE69D0B663C9AB5AC7A757D7C16CDB
      C871CBAD5CBD984BBC974AC5A455D8C36DD1B764C09C4EB78E43BD984BBB9448
      B99246C6A556D3BC65D6C169CEB26094601A703A00A97C34C8A959C5A455C39F
      4DC29E4CC4A24DC3A04CC09A49C39F4DC9A956CCAE5AB48A3BB08436A7772B9D
      6A1FA37327AB7D30AA7C2FB08436B28737AC7F30A97B2CAC7F30B18636B38838
      B38838B38A39B38A36B38A36B28835B18734B18734B08633AE8431AE8330AB7F
      2CAA7E2BA97D2AA97C29A87B28A67826A37523A37422A3731EA3741FA47520A5
      7621A57621A47520A3731EA1701C9F6E1AA3731EA67722A57621A1701C9D6B17
      9B69159B69159B691599671397651096640F95630E95620D94610C93600B9360
      0A925F09926007926007915F06915F06905E05905E058F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8805AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E00B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      320B00330C00390D013A0E013910003910003711003A12023B13034015024618
      015A250D642E12622C105421083D1000310A003E0F06390E00390F003A10003E
      12004014004114004417004B1B005120015524005D2A006530016C3702723C04
      7742067B45057F48067D4702844D0C824B097F4806935E1CAE803DC4A058D2B8
      69D3BA6AD1B765CFB563CFB562CCAF5EC4A253BC9549BD984BC09C4EC29F51C3
      A052C4A354C7A757C8A858C8A858C8A858CBAE5DCDB15FC8A858C19E50C09D4F
      C5A455CAAC5BC4A354C29F51C19E50C3A052C19E50BD984BBD984BC09D4FC09C
      4EBD984BBA9347B89145B89145B89145B78E43B58C41B0853BAF843AAF843AAF
      843AAE8339AC7F36A97B32A77831A2722BA06E2B8F59197F46097940046B3200
      6830007B4206935D1DA06E2BA3732FA3732FA3732C9F6E289967208A550F7F49
      037943007842007943007942007A43017C4503794303733E02713B036C360068
      3100643000642F00663000683102642D00642C01622D01612C00612C00602B00
      602B005D2A005A27005B28005B26015B24015B23025D25035C26005B2500743C
      09956226C8A85EBC974EB0833FD3B76DE3CF81E0CC80E1D085BF9A5BA5773A98
      672AA17031B48B46B48A43A4752EA5732D98631D8F5B15905D149B6A20C2A04F
      E0D477D6BF74E7D49BF7F0B2F6FAA1EEF090D6C473CFB367CFB568C7A95AC2A2
      4ED0B860CFB361D2B865DCCB70D6C068D8C06BC7A356B78F44B3883E9F6E2794
      601A925E18915D179A6821A3742C9D6C25A4752DA170299B69229D6C25A3742C
      AF843AC09D4FB79142B68E40B1863CAA7D34B38A3FB1863CAB7E35A6772F9F6E
      278A550F814B067A44007E4803824D08804A0588530E7F49037B4500824C0684
      4F0986510B8E5913925E1896631D925E1897641E9C6A239C6A239B69229D6B24
      A17029A4752DA17029A170299E6D2698651F935F19915D17915D17915D179561
      1B99672097641E8F5B158D5812935F1996631D95611B9C6A239A68219967209D
      6B24A06F28A17029AA7D34B89145C9AB5ACFB562D6BF6AD9C56FE0D077E7DD81
      E9E184E6DC80E3D57BCDB15FC4A354C9AB5AC7A757C19E50C19E50C19E50C5A4
      55C5A455C19E50C19E50C4A253C4A253C3A052C6A556C9AB5AC8A8589D6C258E
      5913AB7E35BE994CBA9347B89145C09D4FC09D4FC19E50C29F51C3A052C4A253
      C4A253C4A354C8A959C8A858CBAD5CCFB361CFB562D2BA66D3BB67D1B764C8A8
      58C5A455C5A455CAAC5BD1B764D6BF6AD7C16CD6BF6AD9C56CD5BF67CFB361C9
      AB5AC8A858C9AB5ACDB15FD0B663D2BA67D4BC69D1B765D3BB68CCAF5FC8A859
      CBAD5DBF9A4EB98F4AD6BC6ECBAC5FBE994DD3BB68D5BE6AC9AB5AD5BE69D5BE
      69D8C36DD2B866CCAF5FD2BA67D8C36ED9C472DBC774D8C36DD8C36DC6A556CD
      B15FD9C46ED7C16CCFB361D5BE69D8C36DDECD75D2B865CEB260D0B663D0B663
      D1B764C8A858BC9549BA9347B1863CC19E50C8A959B99246BE994CCAAC5BC7A7
      57C4A354C09D4FC9AB5ADDCB73E6DC80E5D97EE6DB7FE5D97EE5D97EE0D178DB
      C871D6BF6AC4A253C09D4FDDCB73E3D77CD7C16CC9AB5ACEB260CDB15FCCAF5E
      CDB15FD9C56FE7DD81DFCF76CEB260CFB562CCAF5ED3BB67DFCF76E3D57BEAE3
      85E9E083E0D178E3D57BE5D97ED7C16CC8A959C19E50C9AB5ACBAE5DDDCC74D2
      BA66BF9A4DC19E50C29F51BF9A4DCFB361D9C46ECDB15FB78F44BA9347C09D4F
      BC9549C29F51D2BA63D5BF67CEB2609D6C256B3600996721CCAF5EBF9A4DC19D
      4BC19D4BC4A24DC3A04CC09C4AC39F4DCAAB57CDAF5BB88F40AC7E31A9792DA2
      70259C691EA47428AA7C2FAA7C2FAF8434AF8434B28737B48B3AB68D3CB68D3C
      B58C3BB68D3CB38A36B28835B28835B28835B18734B08633AF8532AE8330AE84
      30AC802DA97C29A67826A47624A47624A47624A37523A57621A57621A57621A3
      741FA2721DA1701CA2721DA3731EA77823A87924A77823A3731E9D6B17996713
      9865129967139A681499671398671197651096640F95630E94610C93600B9360
      0A93600A926007926007915F06915F06915F06905E058F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8805AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E00B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      330C00350D003B10003B1000391100361100361001371003360F03370E013E12
      003E12004B19005F28105F28134A1805330B00310B00320B00320C00350D0037
      0E013A10033A10003D12004315014918004D1D005421005D2800642E006B3400
      6F3A00743E00824A0A7E4705814A0886500E875010814909875010A37230D4BA
      6CD1B568D2B869D2B869D1B765D0B664CBAD5CBF9A4DB99246BD984BC09D4FC1
      9E50C19E50C3A052C4A354C5A455C6A556C8A959C9AB5AC6A556C09C4EBC974A
      C09D4FC6A556C29F51C29F51C19E50C19E50C09D4FBE994CBC9549BB9448BA93
      47B89145B68D42B58C41B68D42B68D42B58C41B38A3FAF843AB0853BB1863CB1
      863CAF843AAD8037A97C33A77831A3732CA2702D976222874F1281480C7E440A
      753B016C33008048088E5917986422A06E2BA3732C9D6C2694601A834D087F49
      03804A047D47027A44007B44027B44027A4301794303764106743F08713C056C
      3702663000642E00622D00632E02642F03632D03622C02612B015E2A015D2A00
      5C29005B28005D2A045B28035825045B25055B24075F2607632B07672F046630
      008C581DC9AB60CAAD60AE803DBB914FCEAB66CFAD6BC09A5D96642D733D055F
      2B006831008A5418A16E2DA474309F6A289C67229A6822A2722AAC7F36C8A858
      DDD076D9C379E6D39CECDDA4DDCD80D0BB68BF9C52C09D53C8AC5CC8A858CCB2
      5AD5C065CCAE5ACDAF5BD7C067D1B660D6BC68C9A759BF9A4DC4A354BE994CBC
      9549B78E43A5762E99672094601A9F6E27A97B32A5762EA06F28A6772FAE8138
      B78F44C5A455C4A452BF9C4BBC9549B99246BF9A4DB89145B1863CA6772F9C6A
      238A550F834D097E4803814B0686510C824D088A551089540E85500A89540E83
      4D087C4600804A0488530D935F1997641E9B69229D6B249A682196631D95621C
      97641E98651FA3732B9E6D269C6A239C6A239B69229A68219A68219C6A23A06F
      289967208E5A1486510B844F0985500A844F09824D07824C06814B05834D088B
      5610915D1795621CA5762EB99246C7A757CFB361D6BF6AD9C46EDDCB73E1D379
      E3D57BE2D47AE3D77CCCAF5EC6A556CFB562CFB562CCAF5ECDB15FCBAE5DC8A9
      59CBAE5DC9AB5AC8A858CCAF5ECEB260CCAF5ECFB562D0B663D3BB67BC95499C
      6A23AE8138C8A858CBAE5DCDB15FCBAE5DCCAF5ECEB260CFB562D1B764D2BA66
      D3BB67D4BC68D3BB67D1B764D1B764D2B865CFB562CFB361CFB361CBAE5DC4A2
      53BC974AB89145BB9448C09D4FC7A757C9AB5AC6A556C9AC58C8A956C8A858CB
      AD5CD0B663D3BB67D2BA66D1B764D5BE69D4BC68D0B663D1B764C3A052BC9549
      CAAC5BC8A959BB9147C8A558BF9A4EC5A455D5BE69D1B764CCB15CC9AC58D6BF
      6AD9C46ED7C16CD4BC68D8C36ED8C36ED6BE6DD9C472D1B764D4BC68C8A858CF
      B562D7C16CD2BA66CBAE5DD3BB67D9C46ED8C36DCDB15FC8A959CCAF5ECBAD5C
      C7A757C3A052B99246B0853BAA7D34BB9448BF9A4DBA9347C7A757CCAF5ED3BB
      67D2B865C6A556C09C4ECDB15FD9C46ED9C46ED6BF6AD5BE69CCAF5EC8A959C8
      A858CBAE5DCCAF5EC9AB5ACFB361D6BF6ACCAF5EC19E50C6A556C6A556C6A556
      C4A354CDB15FD2B865CDB15FC4A354CBAD5CC9AB5ACBAE5DD1B764D8C36DD3BB
      67D5BE69D7C16CDBC871CFB562C29F51C4A354C29F51C3A052C8A858CCAF5EC4
      A354BC9549C09C4EC29F51BC974AC09D4FC8A959C8A959B78F44B48B40BD984B
      BB9448BC974AC09E4DC2A04FC3A052AC7F3679430088530EC09D4FC4A253BF99
      48BE9847C09C48C09C48BD9746BF9948C29E4DC39F4EBC9545B18537AE8033A3
      732798641A9C691EA27025A7772BAB7E2FAF8434B38A39B48B3AB48B3AB48B3A
      B48B3AB48B3AB48C38B48C38B48C38B48C38B38B37B28835B08633AE8431B086
      32AE832FAA7E2BA77927A57725A57725A67826A67826A67722A67722A47520A3
      731EA2721DA3731EA57621A77823A97C26A77823A3741F9E6D199B6915976411
      96631096631098651297641197651097651097651096640F95630E94610C9360
      0A93600A926007926007915F06905E05905E05905E058F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8805AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E00B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      350D00360E00391000371000351000361000351002330E03310B032F09002E0A
      00330B00370D003A0F00461704562114501B163A0F05310B002F0A002F0B0033
      0D02350E03370E023710033D12024014004516004C1C005421005D2800642D00
      6933006D3700713D007E4808824D0F804A0C743B005824006E3600B38443CCAB
      60CBA95ED2B764D3BC65CEB260CFB562CFB562C7A757BA9347C09C4EC4A354C4
      A354C29F51C3A052C5A455C7A757CAAC5BC8A959C8A858C9AB5AC7A757C29F51
      C09D4FC29F51C4A253C6A556C6A556C4A253C29F51C19E50BD984BB89145B78F
      44B68D42B48B40B48B40B58C41B58C41B48B40B38A3FB3883EB48B40B58C41B4
      8B40B2873DAE8339AB7E35A97C33A5762F9C69269B6726955E21844C0F7E4509
      7E440A773E027139007A43017F48068852108E59148B561187520D7D47027943
      007F49047B4500763F00784100794200774000774103723D02713C056F3A036B
      3601663000642E00632E02663006622C02622C02612A02612A025F2A045F2A04
      5F2A055F2A055826035422005421015825075A23065521005A24005F2A005C27
      0077400A9562279D6A2D8D561C8247107F440E7C400D723B0558250058250063
      2D00663000743D018952129662209C67229F6B269967219B6922A77830BD984B
      D2BE68D9C377E3D094E9DB9CCAAD66BA984CBD9A4EBC984CB48B40B18839B994
      42CFB75ED4BB64D7BF6AD8C06BCBAC5BD9C16EDCC571C29F52BC974BB0853BB6
      8D43C5A455C5A455BD984BB68D42A2722AA06F2898651F9D6B24AE8138B3883E
      B68D42C19E50C3A250BC9549BC9549B89145B78F44AD8037A5762E9B69228F5B
      15834D08824D087D4702814B0687520D814B06824D08834D097B45007C46017D
      47027E4802814B057F49037F49037D47017F490387520C97641EA77830A97C33
      9D6C258E5A149967218D5813844D0C8953118A5614855010814B0B824C0C8753
      11804B097B46047E48037E48037D47017F4903834D0889550C8C5711925E189B
      69229E6D269D6B24A77830B78F44BF9A4DC8A959D2BA66D9C46EDCC972DECD75
      DECD75DECD75DDCC74D2BA66D5BE69DCC972DAC770DCC972DCC972D4BC68D3BB
      67D9C56FD8C36DD4BC68D7C16CD5BE69D1B764D2BA66D3BB67D5BE69CBAD5C9D
      6B249B6922B2873DBB9448C19E50BF9A4DBF9A4DBF9A4DBE994CBD984BBC974A
      BC9549BC9549BE994CBC974ABF9A4DC29F51C19E50C29F51C29F51C09C4EBE99
      4CB38A3FAD8037AF843AB78F44C29F51C7A757C4A253C7A855CAAD59CDB15FCD
      B15FCCAF5ECDB15FCFB361D0B663CDB15FCEB260CCAF5ED1B764C7A757C09D4F
      CAAD59C19E50BC9347CAA85ABC974ABF9A4DC9AB5ACDB15FD4BE66C8AB57D2B8
      65D3BB67D2B865CFB562D2B866D2BA67D2BA67DDCB74D5BE69CCB15CC7A855D2
      BA63CFB660D0B761D2B865D0B663DBC871D4BC68CFB562CFB361D2BA66CBAD5C
      B99246B89145BC9549B89145BE994CBF9A4DAF843AB3883EC3A052BD984BB68D
      42B38A3FB3883EBF9A4DCFB361CCAF5EC09C4EBB9448B78E43B1863CBE994CC6
      A556C29F51C4A253C4A253C09D4FC09C4EC8A858C7A757C5A455C09C4EC4A253
      C4A354CAAC5BC4A253C5A455C5A455CAAC5BC9AB5AC8A959BC9549BA9347C19E
      50CAAC5BC09D4FBE994CC19E50BC9549BE994CC29F51C09C4EC19E50B78F44BC
      9549BF9A4DB78F44B89145B89145B99246B3883EBA9347B99246B48B40B99246
      B99246BA9347BC9848BB9546BD9949B891458E5A14764000A5762FC6A556C4A2
      50C29E4DC39F4DC39F4DC09A49C09A49C09A4ABD9747BC9444BC9444B18537A0
      6E239C691E956117945F15A7772BAE8132B18636B38838B38838B48B3AB78F3E
      B8913FB68D3CB68E3AB68E3AB58D39B58D39B48C38B38A36B08633AE8431AF85
      31AE832FAB7F2CA97C29A87B28A77927A77927A67826A57621A57621A47520A4
      7520A67722A87924AA7D27AC7F29A3741FA1701C9D6C189C6A169C6A169B6915
      99671396631096631096631096640F97651098671197651095630E95620D9360
      0A925F09926007915F06915F06905E058F5D048F5D048F5E038E5D028E5D028E
      5D028E5D028E5D028E5D028E5C018F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093620293620293630093
      6300946401946401946500946500966701966701966700966700976800976800
      976800976800976802986903986901986901986901986901986901996A02996B
      019A6C029A6D019A6D019A6D019A6D019A6D019B6E029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98302AA8403AA8403AA
      8403AA8502AA8502AA8600AB8701AC8701AD8802AD8802AD8802AD8802AD8802
      AD8704AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F01B08F02B0
      8F02B08F02B08F02B08F02B19103B19103B19103B19102B19102B29203B29203
      B29301B29301B29301B39402B39402B39402B39402B39402B39402B39503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      2809002F0A002E0B002E0B002B0A002A0A002B09002B09012D08042D08062A07
      022807002808002B0A002F0C00350E023F140A471811360E00310B002A09002B
      0A00310C00350E03330E03320D00350F00401502491A034C1C004E1E00562300
      5F2B026731046E3C037642076531004D1E00652F00A16D30C9A262D4B16CCFAB
      63C0974CC7A54CD3BE5CD0B85FCEB35ECFB664C9AD5DC19E50BC974AC29F51C8
      A858C3A052C4A253C8A858C4A253C8A959C5A455C7A757CAAC5BC8A858C19E50
      C19E50C6A556C8A858C8A858C5A455C3A052C19E50C09C4EBC9747B79142B38B
      3DB68E40B68E40B38A3CB1873AB38B3DB58D3FB58C41B3883EB78E44B68D42B2
      873DB1873AB1873AAE8437AD8135A6772F9E6D269A68229662208E5816844D0D
      7B4205713900723B00824C07844F0A784200733C007D4604824B097D46047E48
      037F48067B44027E46067C4404763E00794101764002713C006F3A00703A026B
      3400673000662F01632B01642B03612A02632C04622C02622B035C2801572400
      5B25035B25045522025A25085724045722025824025A25005D2700602A006530
      02652F00632E005C27005C27005F2A005A2500602800632C006730006932006B
      33006F37007B43038D58139A68229E6D2689540E8E59139D6C259D6B24B1863C
      CFB361CFB264D9C37BECE494D8C373C3A355BE9D4EC3A452C4A450C8AC55D8C5
      69E0D475DCC973E2D37DE8DC86E0CF7CEAE089E0D07BC9A55BC29A52BA8F46B9
      8D47BB9147BB9147B89146B68D43B0853BA97B32A06F289A68219A691FA4762B
      B78F41C7A855C3A052BB9449BE994DB3883FAF843BAE833AA2722B87520D804A
      05814B06814B067A44007D4702834D09814B06844D0C834D0B7C44047D460479
      4200753F007A44007E4802824D0788540B87530A814C03814C03814C03936017
      AA7D34A4752E915B1B80470A743D01763E04733D05713A0477420B7F4A13814C
      14824D138551158954168955138A550F8B570E8E591095601695601799651C9E
      6C22A16F25A8782DB1843AB58A3FBD9549C9A858D3B865D4BA66D2B663D2B764
      D2BA66D3BB67CEB260CAAC5BC3A052C8A959D3BB67CFB361C6A556CBAE5DC3A0
      52C8A858C5A455C4A253C8A858C6A556C29F51C4A354C6A556C09D4FC4A354AE
      813886510B94601AB68D42B58C41B78F44B68D42B89145BA9347B89145BA9347
      BC974ABB9448BC9549BC974ABD984BBF9A4DC09C4EC09D4FC09D4FC09D4FC29F
      51B89145AB7E35AC7F36BC9549C5A455C6A556C9AB5ACAAC5BCBAD5CCCAF5ECD
      B15FCDB15FCCAF5ECCAF5ECCAF5ECBAE5DCEB260CEB260D3BB67CAAC5BC4A354
      CCAF5EC09D4FB58C41CAAC5BB78F44BE994CC3A052CBAD5CCAAC5BC19E50C4A3
      54CFB361CCAF5ECBAD5CCAAC5BC09C4EBD984BC3A052CBAF5BC6A853BE9C49C7
      A954D0B860C9AD57C4A351C29F51C3A052CCAF5FCFB563C19E51C09D50B89145
      A97B32BE9A4AC09C4EC09D4FC19E50C09D4FC9AB5AA77830B2873DBB9448BE99
      4CBD984BB58C42AE833ABC974BBB9449BA9348B38A40BD984BC09D4FC3A052C0
      9C4EC19E50C3A052BF9A4DC19E50BF9A4DC29F51C3A052BD984BC4A253C8A858
      C29F51CBAE5DCBAD5CC4A253C6A556C8A959CBAE5DC4A253AC7F36A4752DB287
      3DBA9347AF843AA2722AA6772FA97B32AC7F36B99246BC9549BC9549BB9448B8
      9145B68D42B38A3FB3883EB2873DB2873DB48B40B48B40B38A3FB48B40B78E43
      B89145B78F44B89243BF9C4BBC9747B78F44AE83397C4601703A00B89146C5A4
      56C09D50C09C4EBE9A4ABE9A4ABC9848B99443BE9C49BD9746B3883AAD7F329E
      6C2199651B9D6B209D6C1FA47527A97C2DB08535B58C3BB38838B38838B68D3C
      B7913CB58D39B8923DB78F3BB68E3AB58D39B48C38B38B37B28835B08633A87B
      28A97C29A97C29A97D2AAA7E2BAA7E2BAA7E2BAA7E2BA97B28A77725A57523A9
      7927AD7F2CAD7F2CA77823A2721D9D6C189D6B179C6A169C6A169D6B179D6B17
      9C6A169B691599681297651095620D94610C95620D96640F96640E95630D9461
      0B925F09915E08905D07915E08915E088F5C068E5C038E5D028F5E038F5E038F
      5E038F5E038E5D028E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6D019B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      360E003A10013A10003A1000360E00350E00310B002B09002707002405002206
      002407002808002D0A002E0A002E0B002F0C00330E013D1006390E04310C002D
      0A002B0A002E0B012F0C02310D03320D00320E00360F003E13004718004E1D00
      532102572400552600461C005A27008F5926BC9355CAA763C9A360CBA45ED2B3
      63C9A554C19C46C6A74ED2BC63D6C06BCDB362C7A95AC8A858BA9347B68D42C0
      9D4FC5A455C3A052C4A253C9AB5AC8A858C8A858C8A858C8A858C6A556C3A052
      C29F51C4A354C7A757C6A556C4A253C19E50C09C4EBC974AB79142B2883BAE83
      36B1873AB38B3DB38B3DB38A3CB2883BB38A3CB3883EB2873DB58C42B38A3FB2
      873DB48B40B48B40AE8437AA7D34A87B2FA170299C6A2397641F925E198C5614
      834D0B7A4301824D08814B06804A05804A057B44027740007A4301814A087E47
      057E47057941017C44047A4202763E007B43037B4303744002743F03733D056B
      3400622C00602A00622A00672F05612B01612B015F2A00602A01602B055E2904
      5B25035521005220005621015421005521005B27005F2900612C00663003622E
      00622C00652F006630006C35046E37066C3305753A0A733A04773D037B42067E
      45087F4707844D0C905C179A6821915E158D5910834F068C580F9D6C25AC7F36
      C29F51D3BB68D8C373E0D17EC7A85CBC994DC1A252C0A04FBC9946C2A24DC4A5
      51D3BC65D6BF6BDDC978E4D581DDC978E4D780D6C06CCDAD5ECBA95BC49E52C0
      984DBB9147B58840B38A40B38A3FB1863CB58C41B3883EA5762E96641B9B6A20
      B38B3DCBAF5BBB9448B89146BB9449AE833AAB7E36A778319A6822844F0A7C46
      01804A05824C077943007640007A44007943008049078149097E4508824A0A80
      49077C45037E48037A4400794300794300814C038C580F94611888540B824D05
      8E59138A55107D44077038006B34006B34006933006932016934056934056935
      036935026D3801753F077B47097E4808804A057F4903854F06885209915C139A
      671D9F6D23A37328A97931AC7D34B88E43C29D4FC9A858C9A858C8A556C8A556
      C8A858C8A858C4A253C4A253BF9A4DC19E50CCAF5ECCAF5EC6A556C8A858C4A3
      54C6A556C29F51C09C4EC3A052C29F51C09D4FC5A455C5A455C29F51C5A455BC
      974A95621C87520CA5762EB78E43BA9347B78F44B78F44B99246B89145B99246
      BA9347B99246BC9549BC974ABD984BBF9A4DC09C4EC09D4FC09D4FC09D4FC19E
      50BB9448B58C41B78F44BF9A4DC19E50C4A354C9AB5AC7A757C7A757C8A959C9
      AB5ACAAC5BCBAD5CCBAD5CCAAC5BCFB361D0B663CDB15FD1B764C8A959C4A253
      CBAE5DC09D4FB78F44C6A556B2873DBD984BC4A354C6A556C4A253C4A253C8A8
      58C19E50BE994CC09D4FBA9347B78E43BD984BBD984BB38B3DAC8133B68F3FC4
      A551BC9947B68F3FBA9445B2873DBB9449B88F48BD974EB48A43A77733B1863D
      BA9347B2873DB68D42BC974AC29F51BC9549B9924695611BAA7D34C09D4FC4A3
      54BE994CC29F52BC974BAF843BA97B33BA9348C09D50BE994CC09D4FC3A052BF
      9A4DBF9A4DC09C4EBC9549BD984BBB9448BA9347BB9448BA9347C3A052C09D4F
      B2873DB48B40B78E43B89145C09C4EC19E50C19E50BE994CB78F44BD984BBA93
      47BA9347B78F44B3883EAE8339AE8339B48B40BA9347BD984BBA9347B78E43B4
      8B40B38A3FB38A3FB38A3FB38A3FB1863CB38A3FB38A3FB3883EB38A3FB68D42
      B78F44B78F44B99443B99443B89243BA9445B8914597641E733D007F4806B68C
      45C19E51C29F51B58C41B58D3FBC9848BC9947C09F4CBC9545B58B3CB38739AB
      7D30A7772BA575299E6D209F6E21A67729AC7F30B18636B38838B58C3BB78F3E
      B8923DB78F3BB78F3BB68E3AB58D39B48C38B38B37B18734AE8431AD812FAD81
      2EAE832FAE832FAC802DAB7F2CA97D2AA97D2AAA7E2BA97927AB7D2AAE812EAF
      832FAC7E2BA67624A06F1B9D6C189D6C189D6C189D6B179D6B179D6B179D6B17
      9C6A169B691599681298671197651095630E95620D95620D95620C95630D9664
      0E95620C93600A915E088F5C068E5B058E5B058F5C068E5D028E5D028F5E038F
      5E038E5D028E5D028E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      4415004717004B19034B1A014C1B024C1B014B1B004A1B00451900441800350F
      00310D002E0B002E0A002E09002F09002F0A00330B033A0D063A0D06350B0431
      0A012B09002B09002E0B02320D04371006350E02391000411402451501431300
      4012004314004A1B00703907996732B3874DBC9259C19958C5A358CBAD58C7A8
      4ED2BA5DC49F53BC914BCBAB60D1B568CDAF62D5BE6ACCAF5EC09C4EB38A3FB4
      8B40BE994CC09D4FC19E50C5A455C5A455C8A858C7A757C4A354C4A354C3A052
      C29F52C3A053C8A959C8A858C6A556C4A253C19E50BE994CB78F44B2873DAD80
      37AE8339B2883BB48C3EB48C3EB38A3CB2883BB3883EBA9347B2873EB48B41B7
      8E44AF843BB0853CB2873DA97C34A77830A2722B9D6C2698652094601B915C1A
      8B5513814A08814B067F49047F4904814B06804A057B45007842007943007D46
      047D46047841007A4301784100753E007A43017B4303734000754004733D056E
      3704662E00622A00632C00662E035D29005D28005D28005C26005D29025E2904
      5A25005421005622005723005724005E2701632D03622D01612D006730006D37
      046E3805743E0A763E0B753D0A7038056D36037C420F784008773D037A41057E
      45087E4606834D0B925E199D6C259A691F9D6C22915E1596641BA7792EAF8538
      BF9A4DD4BC69DECF7ADDCC7AAE843E95641F97682095641B8E5C139362199867
      1DA97C33B78E43C5A456C4A354AE8437B48D3DB28A3AB48D3DB99344B79142B8
      9243B58C41AE8138AD8037AE8138AC7F36B48B40B78F44AE8339A3732BA17029
      AB7E35B78E43AE833AB3883FB58C42A4752E9F6E2895621D86510C7943007741
      007C46017E4803764000743E007842007842007F4806773F00743C007A430179
      42007A4301824B09824D08824C077B4500753F0078420087520C8E59138E5A14
      8D59107F49046B3500642D005F2A005D29005D28005F2A005F2C005B29005E2B
      005E2A005D2A00642F006A3500723C04794409804A0C834D0B844F0A8C571295
      611B97641E9C6A23A87931B58C41C09D4CC5A553C8AB57C8AB57C7A757C7A757
      C8A556C7A455BE994CC19E50BD984BBE994CC9AB5ACDB15FC8A858C5A455C6A5
      56C6A556C4A253C4A253C6A556C3A052C19E50C5A455C5A455C3A052C4A354C8
      A959A97C33804A04905C16B58C41BC9549B89145B78F44B89145B99246B89145
      B89145B99246BC9549BC9549BD984BBE994CBF9A4DC09C4EC09D4FC09D4FBE99
      4CB58C41B3883EB89145BE994CC19E50C3A052C3A052C09D4FC09D4FC19E50C4
      A354C8A858CAAC5BCAAC5BC9AB5AC7A757C7A757C4A354C7A757C19E50C09C4E
      C7A757BE994CB89145C5A455B1863CBF9A4DC9AB5ACAAC5BC4A354C8A858C09D
      4FB78E43B78F44C09D4FBC974ABC974AC8A959CBAD5CCAAC5BB68E40AD8135B7
      8F41BB9546C09D4CC9AB5AC4A355D1B667CEAF64BF9851B78C47BC944EC5A358
      C09C4FA97B32996720A6772FB78F44BD984BBF9A4D9D6C25AE833AC29F52BF9A
      4EC09C4FC19E51C09D50C09A51B0843EB38741C4A254BA9347BA9347BC974AB9
      9246B78F44B99246B68D42B78E43B78E43B58C41B58C41B78F44BF9A4DB99246
      AA7D34AA7D34A77830A97C33AE8339AE8138AE8138AE8339B1863CBC95499D6C
      25905C169A6821A97C33A5762EA3732BAF843AB89145BC9549B78F44B38A3FB2
      873DB2873DB38A3FB38A3FB3883EB1863CB3883EB3883EB2873DB2873DB38A3F
      B58C41B58C41BA9544B58E3EB79142B89243BB9448B38A3F905C176934008651
      0CB68D43CAAC5BB48B40AE8437BF9C4BBC9947B38C3CB68C3DB3883AB68C3DB3
      8739AE8033A8782C9F6E219E6D209F6E21A57628AD8031B38838B48B3AB58C3B
      B78E3DB8913FB7913CB68E3AB58D39B38B37B28835B18734AE8431AE8330AE84
      30AF8531B18733B08632AE832FAB7F2CA97D2AA97C29AF832FAF832FAE812EAA
      7C29A3741F9F6E1A9E6D199F6E1A9E6D199D6C189D6C169D6C169D6C169D6C16
      9C6B159B6A1498671199681299681297651095620D94610C94610B95620C9664
      0E96640E95630D93600A905D078E5A048E5A048E5B058E5D028E5D028E5D028E
      5D028E5D028E5D028E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      521E00531E005621035520025521005622005A26005E2A00602F036230056130
      055827004C1D004114003A0F00360C00320A003209002F0900310A00330A0031
      0A002E09002B09002E0A032F0B022A09002B0A00330D003B0F003A10003B1000
      441400521E00793E188E5725A17037A97D3EAF8144B68D4ABC9949C09E4AC5A7
      52BF99509D6730935827B88B4FCEAE66CAAB5ECCAF5FCAAC5BC7A757BC9549AB
      7E35AB7E35BA9347C19E50BC974AC29F51C5A455C4A253C29F51C4A253C09D4F
      BF9A4EC3A053C8A858C8A959C8A959C6A556C3A052BF9A4DBA9347B58C41B388
      3EB0853BB1873AB58D3FB78F41B68E40B48C3EB58C41B3883EB78F45BC954ABB
      9449B3883FAC7E39AB7E36AC7E39A5762FA3732CA06F299A682295611C94601B
      8F5B1686510C7D47027D47027F4904834D09844F0A804A05774100703A007841
      007A4301774000784100774000733C00763F00743D00723F00713D006E38016E
      36056B3205642C00612A005E29005C28005D2900602A005B25005724005C2801
      5B28005C29005D2A005F29005E2900622D01653001652F006530006B3700723D
      06733D05774109743E06733D05703A026D38007840087B4107753C007940047F
      46097D4604834D0996631DA5762E9C6B2197651C9D6D23AB7F33AE8437B99344
      CFB361D6BE6DE3D784DECB7F9561255A27005826006F3900824D0C8F5C1A8A53
      138E57178E591795621D9D6B249B6B1FB48D3CC09E4AC09F4BC6A853C09F4BC4
      A450C7A954C19F4EC2A04FC2A04FBC9747C09C4EC09D4FBC974AB78E43B0853B
      A87931A06F28A2722BAA7D35AD80389A682295611C86510C774100713B007943
      007A44007A4400733D007640007C46017943007C4601794200763F0079420073
      3C00713A007A43017C45037C45038B551389540F86510C844F09844F0989540E
      87530A794300743C02693200612C005C27005625005624005524005121005725
      005725005725005825005A2600622C006E37067A420F854F138C55158E5A1895
      601E9E6D27A87931AF843AB48B40C5A553C7A855C8A956C8A956C6A556C5A455
      C5A253C39E50BF9A4DC09D4FBD984BC09C4ECAAC5BCFB361C9AB5AC4A354C5A4
      55C3A052C29F51C3A052C4A253C09D4FC09C4EC3A052C6A556C29F51C4A354C8
      A959B99246905C1686510BA97C33BA9347B99246B78E43B78E43B99246B89145
      B89145BB9448BB9448BC9549BC974ABD984BBE994CBF9A4DC09C4EC09D4FBD98
      4BB58C41B38A3FB68D42BA9347C09D4FC4A354C09C4EC09C4EBF9A4DBF9A4DC2
      9F51C6A556C8A959C8A959C7A757CAAC5BCBAD5CC8A959CBAD5CC9AB5AC8A959
      CDB15FC7A757BF9A4DCEB260BC9549C7A757D3BB67D9C46ED0B663D0B663D6C0
      6BD0B663CFB562D3BB67CBAD5CC29F51C9AB5ACDB15FCCAF5EC09C4EA17029A7
      7830C7A757C9AB5AC19E51C5A358C8A55CCAA861BC9350BA8F4DCBA962CDAE63
      BC944CAE833AB38A3FB58C41BC9549BC9549B891459C6A23AA7D35BC974BC4A3
      55C4A355BC974BBC954DC9A95DBB934BA87834B38842C5A456C09D4FC09D4FBD
      984BBC9549BE994CBC9549BB9448BC9549BD984BBC974ABC9549BF9A4DBE994C
      BA9347BC974ABE994CBC9549B89145B78E43BB9448BC9549B99246BC9549B48B
      40A97C33AE8339B68D42AD8037A97C33B2873DB58C41B78E43B58C41B38A3FB3
      8A3FB38A3FB38A3FB2873DB0853BB1863CB1863CB1863CB0853BB0853BB1863C
      B3883EB38A3FB68F3FB48D3DBA9445B99344B78F44BD984BB0853C905C176B36
      0089540FB0853BBE994CBA9445B48C3EB28A3AB58E3EB78E3FBA9242BE9847BD
      9746B48A3BA9792D9E6D209D6B1E9865199E6D20A97B2CB08535B18636AF8434
      B38838B78E3DB68E3AB58D39B38A36B18734B08633B08633B18734B18734AF85
      31AF8531AE8430AE832FAE832FAE832FAE832FAD812EB28632AC7E2BA474229F
      6D1C9E6D199F6E1AA06F1BA06F1B9E6D199D6C189D6C169D6C169C6B159C6B15
      9B6A149A691399681299681299681298671195630E95620D94610B95620C9461
      0B95630D96640E96640E94610B915E088E5B058E5A048E5D028E5D028E5D028E
      5D028E5D028E5D028E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      622A00612900642A06632905622A01622A006530006A36006F3C00723F027946
      09743F076B3704642F015E2701551F004C18004313003B11003B1000390E0035
      0D00310B002E09002D08002B07002D09032D08002D0900330B00360E00411400
      5621086B33147C4317844D188F5E1D9B6E26A67E31AF8B3BB3913EB28C429964
      3182441D581E0060220098602AC09A51C9A759CBAB5AC8AB57C6A754C19F4EB1
      873AA27328AC8034BC974ABE994CC09C4EC19E50BF9A4DC09C4EC29F51BB9448
      B89146C19E51C3A052C6A556C8A959C6A556C29F51BD984BB99246B68D42B78F
      44B3883EB1863CB58C41B99246B89145B58C41B38A3FAE8138BA9347AE833AA4
      752EB68C45B98F4AA97B36A47331A47430A3732FA3722E9E6D2797641F95621C
      935F198D58128A550F824C06804A0488530D88530E7E48037640007640007640
      007B45007B45007E48037D4702794300794300753F00744200733F016A33006A
      3103662D025F2700632D00632D00632E00612B00622C025E27015D2601612A04
      5E2A00622D00602B00622C005F2A00602B00632F00643000693500743F047641
      05744002713D006C3700703A00753F01703A00703900753C00703800783F027D
      45057740007C4601905C169D6C259D6C22956219A17227B08639AE8336BF9C4B
      DAC770D9C373EBDF95E8D7959C64345621004918005E28007037037238057338
      02824812884F1590591CAB7D38BF9A4DCBAE5ABC9846B48D3CB89341A97E2CA7
      7B2CA97D2EA17326A5782BA7792E9E6E24A37429A4752DA170299D6C269F6E28
      A3742DA5762F9E6D27A97B33AB7E3699672195621D87520D7A44007A4400804A
      05804A057F49047640007842007B45007640007842007741007740007D460478
      4100733B00763E00743C00733B00753D007F48068A54128B56118B56108F5B15
      8F5C138B56117A42086D3602653000622C005C28005625005425005222005221
      005322005625005725005524005723005E290065300277400A8E581C96652796
      6323986724A1732CAE853ABA9749C4A351C4A450C4A351C4A452C4A253C09D4F
      BF974CBD944AC09C4EBC9549BA9347C19E50CBAD5CCCAF5EC7A757C4A253C9AB
      5AC5A455C3A052C3A052C29F51C19E50C4A253C6A556C4A354C29F51C5A455C2
      9F51C4A253AE83398C571195621CB58C41B99246B89145B68D42B89145B89145
      B89145BC9549BB9448BB9448BC9549BC974ABE994CBF9A4DC09C4EC09C4EC09C
      4EC09C4EC19E50BC974AB89145BF9A4DC6A556C3A052C4A354C29F51C19E50C3
      A052C6A556C8A858C5A455C4A253C6A556C8A858C7A757C8A959C8A858C7A757
      C8A858C3A052B99246C09D4FAF843ABC974AC9AB5ACFB361C6A556C8A959B992
      46A2722A98651F9A682194601AA87931CEB260D9C56FCBAE5ED1B765B89146B9
      9247D6C06CCFB563C39F55D2B76AA978397F460A713800743B008E571ABC934D
      C5A358B78E44B89145B78F44BC974AB68D42AB7E3595611BA97B33C09C4FC19D
      53C19D53C6A459C8A85CC8A85CBD954FA97836A87834CBAD5DC19E50C09D4FBC
      974AB99246BC974ABB9448B99246B89145BC974ABA9347B78F44B99246BC974A
      BE994CBD984BBC9549BC974ABA9347BC9549C09C4EBF9A4DBA9347B78E43B48B
      40BA9347BB9448B48B40B2873DB78F44BA9347B78E43B38A3FB48B40B58C41B4
      8B40B38A3FB2873DB0853BAF843AAF843AAE8339AE8339AE8339AF843AB0853B
      B2873DB38A3FB38C3CB68F3FBB9546BC9848B78F44B78F44B89146B2873E905C
      17703A007A4400996720AD8135BB9546BC9846B28A3AB38739B78D3EBB9343BE
      9847BA9242B08436A6762A9E6C219A681B9B691CA06F22A97C2DAE8333AF8434
      B18636B38A39B08633B08633B08633B08633B08633B18734B28835B28835B288
      34AF8531AC802DAB7F2CAE832FAF8531B08632B08632A77725A373219F6D1C9E
      6C1BA06F1BA06F1B9E6D199C6A169D6D179D6C169C6B149C6B149C6B149B6A13
      9A691299681199681298671197651097651097651096640F95630D94610B9360
      0A93600A94610B95630D95630D94610B915E088F5C068E5D028E5D028E5D028E
      5D028E5C018E5C018E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      6E38016E34026D34076F33096F3706743A077641067D47077F4D088250097E4D
      067E4C077D4A097B460A7A430D763D0D70370A6930065D2A005524004D1D0045
      17003E1200390E00350B00310900370C033109002F0A00350E004014004D1D00
      5C29066B340B723A08824B0F8B591793651BA0762AA47C32916120733E074E1C
      00501900521B006125007C410B986323B68A41C9A858C9AC58C2A04FC4A452C2
      A04FAD8135A27328AE8339BD984BBC9549C09C4EBD984BBE994CC09C4EB58C41
      B2873EBD984CC3A052C7A757C9AB5AC8A858C4A253C09C4EBC974ABA9347B891
      45B48B40B3883EB68D42BA9347B99246B38A3FAE8339B38A3FAE8339A1702A8D
      57158B5414A37230B18440A97738A47331A26F2EA26F2EA06E2B9A682296631D
      956219915E15905C168A550F844F09824C06804A057D47027D47027E48037F49
      0486510C88530E8E59148E591489540F88530E824D087745007744036A330066
      2E005F27005E2600733B0B7E48146D3801622D00612B015F2802622A06652E06
      5C2800612B005E2A00642E006531006731006936006B37006B3700703C00723F
      007A45037C4705723D00713C007641007540007943037F4707783F027E460680
      4907784200814B0697641EA3742C9F6F259D6D239C6B21A17227A97D31C09E4D
      DBC871E1D07DE9DB95E8D598AB7748814616743A07763C09793E0D6D33016A30
      00713700763C0281480BA2702DBB9449C8A858BC9747B18839BC9845AE8434AE
      8434AE8536A37629A87C2EAB8032A27328A3752AA06F2897641E905C17935F1A
      9D6C26A67730A5762FAC7F37AD80389C6A249A68228E5914814B06824C07814B
      0685500B86510C7D47027A44007C46017A44007F4904764000743E007C45037B
      44027840007A41047940037A41047B4205763E007C4404834D0B8D5813915D17
      8E5A11915D188B541A7B440E6E38046831005F2B005A28005B28005827005A27
      025625005322005423005623005623005623005A2500663000763F098A551D9F
      6F32A87D39A47632AC8139C3A454C3A551C4A450C4A452C5A553C4A253C09C4E
      BE954BBE954BBE994CB78F44B99246C4A354CBAD5CC8A959C4A354C4A354C3A0
      52C09D4FC3A052C4A253C09D4FC09D4FC29F51BF9A4DC3A052C19E50C5A455C0
      9D4FC8A959C5A4559D6C2589540EAA7D34B78F44BA9347B68D42B78F44B89145
      B78F44BB9448BB9448BB9448BC9549BC974ABD984BBE994CBF9A4DC09C4EC09C
      4EC29F51C29F51BD984BBC9549C29F51C5A455C19E50C4A354C3A052C19E50C4
      A253C7A757C8A959C8A858C6A556C8A858CAAC5BCBAE5DCCAF5ECDB15FCEB260
      CDB15FCBAE5DCAAC5BC29F51B1863CC4A354CFB361D0B663C9AB5AD2B865BF9A
      4D95621C86510B844F097A4400A4752DD9C56FDAC771D2B866D6BF6ECCAF5FCD
      B160D6BF6BCDB160CDAF62DCC776A06C2E562200310C002F0C00622B00AF813E
      C29E54B0853CAE8339AE8339B68D42AE8339A06F2888530D8E5A159C6A24A372
      2E9965238049076A34006B34006D36006932008C5614A879329D6B249D6B249A
      682195621C9A68219D6B249C6A239E6D269F6E279B69229D6C25A17029A17029
      9F6E2795621CA87931B48B40B89145BC9549BC9549B89145B99246B89145B78E
      43BB9448B89145B68D42B89145B48B40B1863CB58C41B3883EB38A3FB38A3FB3
      883EB2873DB0853BB0853BB1863CAE8138AD8037AD8037AE8138AE8138AE8339
      B1863CB38A3FB89342B79241B58D3FBA9445B99246B38A3FB78F45BC954AB68D
      43915D187B4500713B007C4700A7792EBD9A48B58E3EB78D3EB88F40B58B3CB7
      8E3FB99141B58B3CAF8335A47428A170239A681B9764189F6E21A97C2DAF8434
      B08535AF8434AD812FAE8431B28835B38B37B38B37B38B37B28835B28835AF85
      31AF8531B08632B28834B38A35B08632AB7F2CA678269E6C1B9F6D1C9F6D1C9F
      6D1C9E6D199D6C189D6C189D6C189D6C169D6C169C6B149B6A139B6A139B6A13
      9A69129968119A691398671197651097651098671198671196640E95620C9562
      0C94610B925F09925F0994610B95620C94610B93600A905F048F5E038F5E038E
      5D028E5C018E5C018E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      7C46067B4206753D03793E077A420881480C834D0E8953118B58138E59138D5B
      128D5B128B591288560F87540F865210824D0C7D490B774308703C086634025F
      2B01562402521F024C1A044918023F12003D11003B11004115004C1E00582600
      5F2D00643000713C017F49098E5C1A9463228755186A3603501D004013004D1B
      005B26006E38057A440C7C440C82490D935B1AA26F28B38B3DBC9747C4A351C8
      A956BE9A4AA97C30A06F28AB7E35B68D42BE994CBC974ABB9448BC974AB38A3F
      AF843BBC954AC4A253C6A754C8A959C8A959C7A757C5A455C19E50BE994CBB94
      48B89145B68D42B68D42B89145B99246B48B41AF843BAF843AA87931AA7D3596
      62206A33006D3500996326AF8041A97839A36F31A16E2DA16F2C9D6B2598651F
      95631A9360178E5A148E5A1489540E804A047A44007C46007E48027E4802834D
      088C57118E5A1594601B94601B915D18905C178A551076450077440367300065
      2C01602700622A00814916905C247A460B683300672F04632A04642A06662D05
      5D2800663200663100703800723D02763E047945077B4507753F00713C00743F
      00804A0588530E844F0A824C07834D09824D088A5412804808763E0079420079
      4200723C00824C079C6A23A4762B97651C9A691F915E15915E15A37429C2A04F
      DECF73E8DC86FBFCACF4F0A8BF955C9F6C33935E22966226A26F349863299561
      258E591B8E5816935F19A07026A17227A97D31AB7F33AA8034BA9747AF873AB7
      9344C19F4EB78F41BA9445BB9546B48C3EB1873AAE8138AA7D34A97B32A77830
      A87932A97C34A3732CA3742DA3742D95611C95611C8B5611804A057E48037E48
      03824D0885500B7E48037C46017F49047E4803834D09834D097943007A430179
      4200773F00783F02773E017A4105794004743B00773E01794101804A0589540F
      8F5B159E6D279F6E2F955F2586511979440D6D38036632005F2D005625005C29
      005624005220005321005421005521005521005823005E28005C280069340098
      652DC9AC65D3BF6FC3A557BA9749C0A04DBF9F4CC1A04DC2A04FBF9A4DBA9347
      BA8F46BC9248BB9448B78F44BD984BC8A858CAAC5BC5A455C4A253C4A354C5A4
      55C5A455C8A858C8A858C4A253C6A556C8A858C29F51C09D4FC3A052C3A052C4
      A253C8A858C9AB5AB38A3F905C169B6922B3883EBB9448B78E43B78F44B99246
      B78F44BA9347BB9448BB9448BB9448BC9549BC974ABE994CBF9A4DC09C4EC09C
      4EBE994CB99246B78F44BC974AC09C4EC09C4EBF9A4DC19E50C09D4FC09D4FC3
      A052C7A757CAAC5BCAAC5BC9AB5AC8A858CBAD5CCDB15FCCAF5ECFB361D1B764
      D1B764D3BB67D8C36DC8A959BA9347CFB562D6BF6AD8C36DD2BA66D9C46ED7C1
      6CC8A858C3A052C3A052BC974ACDB15FDDCC74CEB261CFB563CFB264CFB362D7
      C16DD8C36ECFB563CFB365D1B568BB914EA5733590591D8E571BAE7E3EC7A45B
      C5A358C4A355C6A556C09E4DC3A052BD984BB68D42A97C33A97B33AA7D35B387
      41A97935864F0F763E00814909753D00612A00966121A3742D9B6922A06F289E
      6D2696631D9B6922A17029A3742CA6772FA170299C6A23A6772FAA7D34A3742C
      9F6E2795611B9F6E27AE8339B3883EB68D42B78E43B48B40B89145B78F44B78F
      44B58C41B48B40BA9347BC9549B58C41B3883EBB9448B2873DB2873DB1863CB1
      863CB1863CB1863CB1863CB1863CAE8339AD8037AD8037AD8037AD8037AD8037
      AE8339B2873DB79241B68F3FB2883BB79142B89145B58C41BB9448BA9347BC97
      4AAE8339A6772F8F5B15713C00743F00956419B38C3CBB9343C19D4BBD9746BA
      9242B88F40B68C3DB48A3BAA7C2FA373279C691E9460149460149C6A1DA47527
      A97C2DAB7E2FAE8431B18734B38B37B58D39B58D39B38B37B38A36B28835AE84
      30B18733B48C37B48C37B18733A97D2AA273219D6C1B9F6D1CA06E1DA06E1D9E
      6C1B9C6A169C6A169E6D19A1701C9D6C169C6B159C6B149B6A139C6C129B6B11
      9B6B119A691299681299681298671198671197651097651096640E95630D9664
      0E95630D93600A925F09925F09925F0993600A93600A916005916005905F048E
      5D028E5D028E5C018E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      88530D85500B85500A86510C87520D88530E8A55108D58138E59148E5A158F5B
      16915D17925E18915E15915F14915F148E5C108B580D804D097E4B0A78450873
      3E076D3807683207632F06612B076C351267300D602B055826005A26005F2B00
      6531006935007B450780470A7A430D6932014D1E003D1200401300501C006731
      0C6C39087444037F4D08865113844C10834A09864F098E5A14B38B3DC09D4CC0
      9D4CC6A754B78F419B6922935F19B0853BBD984BBD984BB89145BA9347B48B40
      B0853CBB9448C09E4DC19F4EC3A052C4A354C7A757C6A556C29F51BD984BBE99
      4CBD984BB99246B68D42B78E43B89145B78F45B38A40AE8339AC7F37A77831A6
      7533935D1D662F00673000996327B28444A77537A26F2EA3732FA06F299B6922
      97671B95621994601A8D58128B56108B5610824D07743E00733D007C46007F49
      0386510B89540F8D58138D58138A55108A5510844F09774400744100642E0064
      2C00622900642C008049138B571B855315723D056F3809672E06632A04642C01
      602C00723D027740047C45097B44087A4406824D0D88531384500E804B098F5B
      168D58138E5A148F5B15935F198F5B15824C07804A05814A087840007D460480
      49077A44008A550F9F6E27A27328A070269E6E2496641B956219A17227C3A250
      E0D376E3D37FF0EB9FF0EAA0C39E5EA879399B6B25A47730B79149AE843EA678
      34A3752EAA7E32B48D3DC09F4BBD9A48BD984BBA9348BB954DC5A55AB58D46BE
      9A51CEB261C7A758CAAC5BC8A959C5A455BF9A4DBA9347BA9347B78E43AE8138
      A3732B9C6A2495621D935F1A935F1A87520D8B5611844F0A7B45007842007D47
      027E48037F49047842007B4500804A057C46017F4904844F0A77410077400079
      41017941017A4104763D01773E02733A00753C007A4104763E007F48068E5914
      905C169967219662209562229562248E5A1E865217814C15733E0C622E005825
      005B27005E2900612A025E2A035E27015C28015F2900572200673001632E0078
      430CC09D5AF4F99DEBEA8BC7AD5BBD9C4BBC9C49BF9D4ABF9C4BBB9448B58C41
      B78B42BA8F46B89145B89145C19E50C9AB5AC7A757C3A052C3A052C4A253BF9A
      4DBC9549B99246B38A3FAF843AB78F44C09C4EBC9549C09D4FC4A253BF9A4DC7
      A757C5A455C4A253C4A2539E6D268E5A14AE8138BB9448B78E43B89145BB9448
      B99246BB9448BB9448BB9448BB9448BC9549BC974ABD984BBF9A4DC09C4EC09D
      4FC09C4EBA9347B89145B99246B78E43B89145C29F51C3A052C29F51C29F51C4
      A253C6A556C8A959C8A959C8A959C9AB5ACBAE5DCDB15FCAAC5BCBAE5DCFB361
      CFB361D3BB67D2B865C5A455BA9347CEB260D2B865D9C46ED2BA66D2B865D4BC
      68E4D87DDFCF76DBC871E3D57BE0D178D6BF6ACBAE5DCDB160CBAC5FC8A95AD1
      B765D6BF6BCEB261CCAF5FCDAF62D3B76DD3B76DC49E59C9A760DCC776D2B768
      C7A758D2B865CFB361C8AB57CDB15FCBAD5CC8A959C19E50BE994DBC954AC09A
      51B38741AF813EBE9750C29D55AB7C39915A1DB58A45B68D43AF843AB78E43B4
      8B40A97B32AB7E35B2873DB68D42B3883EA97C33A5762EB38A3FB58C41AB7E35
      A97C33A4752DA17029AA7D34A87931AD8037B48B40B68D42B78F44B2873DB38A
      3FB78F44B89145B3883EB1863CB78F44B99246B3883EB0853BAF843AAF843AB1
      863CB3883EB3883EB1863CAE8339B2873DAF843AAE8138AE8138AC7F36AA7D34
      AC7F36AE8339AE8536B38C3CB68E40BB9546B78F44B78F44BC974AB2873DB891
      45B78F44B58C41A87931946118804B0276420083500599651BAF8335B99141BC
      9545B88F40B78D3EBA9242B38739A270259D6B209561158D580C8D580C956115
      A17023A97C2DB28835B38A36B38B37B38A36B18734B18734B18734B28835B68E
      39B68E39B38A35AC802DA476249F6F1E9D6D1C9E6E1DA16F1EA06E1DA06E1DA0
      6E1D9F6E1A9F6E1A9E6D199E6D199D6C169C6B159C6B149C6B149C6C129C6C12
      9B6B119B6A139968129A69139A691398671196640F95630E96640E97650F9563
      0D96640E96640E95620C925F09905D07905D07915E08926106926106905F048F
      5E038E5D028E5C018E5C018E5C018F5D008F5D008E5C008E5C008E5C008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      8C580F8B580D8B5A0988580486540587540889550C8B5611905B199560209661
      2197622297622297632196631E95631A96651A97651C925E19905B198C561485
      4F0D804A0A7E48087A47067844067F4C0E814D1179440C713C056F39056A3401
      663000693200713A006C3100531B003E0D004010004C1A00552202612D096231
      036838007446007B4D017A4902824C0A89500F844B0A824C06A5762EB89145C2
      9F51C6A556B68D429D6B248E5913996720B68D42BD984BB89145BC9549B78F44
      B38A3FBB9448BF9C4BBA9445BF9A4DC4A354C19E50C09D4FC4A253C4A253C09C
      4EBB9448BF9A4EBC954AAE833AB48B41BD984CB58C42B3883EAE833AA77831A4
      7331A87735874F125F29006F37009A6428AE7E3FAB7C399E6C29A1702A9F6E27
      95641995631A905C168B56118B56118E5A1589540F7B4500743E00753F007F49
      03824D0787520C8B56108C57118A550F88530D87520C7F4C037944026F360266
      2B00622A005F2800673300804C0E8452117D480D662F006A3006672D046E3507
      713B036C38007842047F460981480B824B0B8149097E4705844F0A8A5510935F
      1A8D5813915B1595601A8A530D834C067941007D44007C4503824C0A834D097F
      49047B450085500A9A6821A2722AA1722798671D905D149B6A20A97D31B99344
      CDB15FD6BC6ED6BE7DDEC988B7914F9E722B8E60159E7526B38D3DB99546B58F
      41B18B3BB69340B5923DBB9A46BE9D4EC49F57C19A57BA9151B38648B18545B7
      8E4DBB9450BA934DBC974EBC984CB89146B78F44B58C41B0853BB2883BAB7F33
      96641B8E5A1486510C86510C844F0A7C46017D4702804A057842007640007B45
      007C46017C4601764000794300814B06804A0585500B86510B7A440077400075
      3D00763E007A4104763D01733A00763D01753C00713800703800784100844D0C
      8D58138E5A149A682197641E98651F905E19905D1B9B692A956226865119713C
      05693300622C00642E00673104662E03622D016830055C2600622C0077400E78
      420E8C5820CDB56BF0F294E3DC81C0A04FBE9D4CBC9A4AB89445B2873DAF843A
      B38A3FB78F44B0853BCDB15FCBAE5DC09D4FC3A052C29F51BF9A4DBD984BB68D
      42B1863CB78E43AC7F3698651FAB7E35C19E50B68D42C09D4FC09C4EC4A253C6
      A556C09D4FC5A455C7A757B1863C8B561097641EB78F44B89145B1863CB89145
      B78F44B99246BC9549B78E43BE994CBC9549B99246C09C4EBE994CBD984BBC97
      4ABF9A4DBE994CB78F44B2873DB3883EBB9448C29F51BF9A4DC09C4EC09D4FC0
      9D4FC19E50CBAD5CC4A354C9AB5AC6A556CBAE5DCAAC5BC8A959CDB15FCEB260
      CFB361D3BB67D0B663BE994CBB9448D0B663D6BF6AD9C56FD4BC68D6BF6AD6C0
      6BD7C16CD8C36DD6C06BD7C16CDAC770D4BC68C8A959C8A95ACFB563CFB562CF
      B361D2B865D0B663CCAF5ECEB261D0B566CCAD62C8A55CB98F4AB78D46C7A758
      CAAC5BC09C4EBA9347C8A959C09D4FC29F51BD984BBD984BAF843BB89146B185
      3FAB7D38B38741C5A358B387439D6928AB7C39B1853FAE833AB0853BB1863CB2
      873DAA7D34A77830AE8339AC7F36AA7D34A3742CA5762EAA7D34A97B32A77830
      A5762E9F6E27A879319F6E27AC7F36AE8138AE8138B2873DAE8138B68D42B48B
      40B89145B78F44B2873DB1863CB58C41B58C41B1863CAE8339B38A3FB0853BB3
      883EAF843AA97C33AF843AAE8138AD8037B38A3FB58C41AF843AA97C33AA7D34
      AD8037AD8037B28638B28638B58B3DB78E40B48A3CB3883BB68C3EB78E40B68C
      3EB99142BE9848B08437A6762BAB7D319B681D7A43007D4600804900915C13A3
      7227AC7E31B78E3FBD9746B78E3FAB7D30A27025935E148B550B895408895408
      925E129F6E21A87B29AB7F2DAE8431AE8431AF8532B28835B68E3AB8923DB58D
      38AF8531A87B28A27321A0701FA0701FA17220A0701FA16F1E9F6D1C9E6C1B9F
      6D1CA06F1B9E6D199C6A169B6915A0701A9D6C169867119968129E6E179D6C15
      9968119A69129968129A69139A691399681297651096640F96640E96640E9461
      0B95620C95620C95620C94610B93600A915E08915E0892610692610692610692
      6106916005905F048F5E038E5D028E5C008E5C008E5C008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      8E5B128E5C118D5D098959048857068B580C905E1396631E9C6926A06C2EA16D
      2FA26E30A37032A67533A87834A77831A4752DA2722AA6742EA5732DA26F289C
      691F966218915F138E5B0F8A5A0D9263168E5D148C591489541481490F773E08
      743A07743A077B430B7036054D1700491200511803582109652F115828006737
      07653800693B006D3E00703D007641007F4707824C0A7D4702905C17A97B33BD
      984CBC974AA5762F8D58127F49038F5B159D6B24B58C41C09C4EBC974ABC974A
      BC974ABB9448BE9A4ABB9546BD984BC09C4EBD984BC09D4FC3A052C09C4EC4A2
      53C3A052C3A053C09C4FBA9348BA9348BB9449B78E44B78E43AE8339B0853CA9
      7935A26F2E9F6B2D844C0F642D00743B00966023AD7E3BA878349F6E28A06F28
      9C6B21905D14935F19915D188E5A158A5510824D087C46017A44007C46007842
      007D4701844F098A550F8B561087520C824D07804A047D4A017A45037239036A
      3001652D005E29005E2B006C390082500E7B4709632D00662E006B3204753D0B
      7843087640007A4202864F0F854D0E7B4303753E00784100824C0788530E8550
      0B824C07844D07834C067840007C44007E4600874F0B844F0A86500E85500B7D
      4702733D007D470195611BA2722A9D6C228E5A1187530A946118A3752ABB9546
      C8A959BC9350D4B87BD7BC81AE83439F742B9D7523AE8C36BC9D48C1A34FCBB3
      5CC7AC56C2A54FBA9945BB9848BA944CC39A5CBD9158AC7B45AE7D47AA7941A9
      793FA9783CA57537A47533A2732FA3732CA67730A97C33A87931AA7E32A37429
      8E5A1186510B814B05824C07824C077B45007C46017E48037640007640007B45
      007E4803804A057A44007C4601814B067F4904824D08824D07824C07844D0C7A
      43016F3800713800733A00763D01743B00783F027A4104784000773F007C4503
      824C0A88530E966219A06E23A4742897651C905C169967219D6B28996726945F
      23855116733D05663000642E00693200693100632B006932035C270066300072
      3C08743F07885619B58F49DFD37DE0D57AC8AC5AB38C3EAE8538B38A3FB99246
      B78E43AC7F36B99246D3BB67D6BF6AC8A959C19E50BE994CBF9A4DBC974ABA93
      47B78E43B99246B48B40AA7D34B0853BBB9448BC9549BE994CC4A354C6A556C6
      A556C5A455C8A858CAAC5BC19E509A68218D5812AC7F36B99246B68D42BB9448
      B3883EB0853BB89145B58C41B99246B99246B99246BB9448BB9448BC9549C19E
      50BD984BB78E43B1863CB0853BB48B40BC9549C19E50C29F51C09C4EC09C4EBF
      9A4DBC9549C4A354C4A253CBAD5CCBAE5DCDB15FC9AB5AC9AB5ACFB562D2B865
      CFB562D0B663D0B663BC9549BC9549D3BB67D7C16CD7C16CD2BA66D6BF6AD2BA
      66D5BE69D4BC68D2B865D4BC68D5BE69CEB260C4A354CAAC5CCEB260CFB361CF
      B660CFB55FC7A855C4A452CBAD5CCCAF5FC09A51C19D53C09C52B58C42AE8339
      B38B3DC09D4CBC974ABE994CBA9347BC9549AB7E35B1863CB0853CB3883FB68D
      43A474309C69269E6C2995601E956020A97935AC7E39A97C34AB7E35A97C33A9
      7B32A3742CA3742CAE8138B0853BAA7D34A4752DA97C33B1863CAD8037A87931
      A97C33AB7E35AA7D34A5762EAD8037A87931A5762EAE8138AC7F36B1863CB891
      45B48B40AF843AAE8339B38A3FB78E43B2873DAA7D34B48B40B38A3FAF843AAF
      843AAF843AAE8339B3883EB3883EB2873DB1863CAF843AAE8339B1863CB48B40
      B3883EAE8339B48A3BB3883AB58B3DB3873AAD7F33AC7E32B08437B3873AB48A
      3CB18538B58B3DAF8336AB7D31B78E40BB9343B3883A956118844D057841007F
      48008D570D956117A37327B38739B48A3BB18537A47428945F158E590D8C570B
      8A5509895408915E0F986717A17221AA7E2CB28835B68E3AB68E3AB38B37AA7E
      2BA77927A37422A0701F9F6F1E9F6F1EA0701F9F6F1EA16F1EA06E1DA16F1EA3
      7220A06F1B9C6A169C6A169F6E1A9D6C169D6D179D6D179E6E18A0701A9D6C16
      9B6A139D6D179A69139A69139A691399681298671197651096640E95630D9461
      0B94610B94610B94610B94610B93600A925F09915E0892610692610691600591
      6005916005905F04905F04905F048E5C008E5C008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      925E1894611891621591621595651A9D6E24A57930AC8139B08640B28743B78E
      49B48B46B38743B48844B78D46B78E47B68D43B58840BC8E48BB8E45B78B40B2
      8337AE7F30A97D2BA77927A377249E7020946216925F16905C17874F128A5117
      9057218A4F1C874D1C874D1D783E11682F07561F01551F055F2A0D5A27045829
      005F2F006230016330006A3500703A02713B007139007C45037740008E5917A6
      7632986520763F006D380078420086510C8A55109F6E28B38A40C3A052C5A455
      BC974AC29F51BF9C4BBE9A4ABE9A4ABC9848BC9549C09C4EBF9A4DB78F44B186
      3DAB7E36AD8038BC974BC4A257B88F48B1853FBB9449B89145AC7F36B38A40B0
      843EA16E2DA574329E6B2A844C0F6D3600743C00915B1BA575319F6E289A6821
      9A691F936017925E18935F1A905C178B561188530E87520D824C077B45007D47
      02824D0889540F8E5A158F5B158C571187520C834D08804D0684500E824A127B
      400F7439096C33006B3600723D007743007C46066E37006B32006D3400783F09
      86511394611F925D1B9B6825925D1B824B0986500E95601E9A63229962219D69
      2497611D925B178E561288500C955F1B98621E9D68239F6E289D6C269967218A
      55107A4400824D089C6A23AB7E359F6E278D581285500A8F5B159F6E27C09D4F
      D4BC68C19A56E6D796EADD9BC5A561BE9E51C3A952D0BF63DACF72E4DF81E6DF
      83DDCD76CFB761D3BF67DFD179E1D182F1E89EECDC9BD8BF80E1CF8CDBC583D7
      BF7DDDC980DBC57BD4BC70CDB165CBAD60CAAC5CC4A253B78E43B08639A3752A
      925D148E571189540E89540F8B561188530E89540F87520D804A05824D08844F
      0A88530E8A5510834D09834D0987520D85500B89540F8D58138E5A15945F1D8B
      5513824B09824A0A7B4303743B007A4202763E00723A00713900753D007E4606
      885111905C178E59109E6B1EA473259D6B20966218925D13935E1594601A9D6B
      2594611F925E1E8D571B7A43076B34006B34006C3300652E005C27005F2A006C
      3501713B036834007B4709AC833EDDCC78D5C06CBC994BA97F35B48B40C09D4F
      BB9448AF843AC9AB5AD6BF6AD7C16CD2B865CAAC5BC7A757C29F51B38A3FB388
      3EB78E43B78E43B68D42B78F44B78E43B99246C19E50C19E50CCAF5ECCAF5ECC
      AF5ECFB361CDB15FCFB562D2B865B78E43915D17A77830C09D4FC29F51C19E50
      B58C41B2873DBE994CC19E50C09D4FC4A253C5A455C3A052C4A354C6A556C7A7
      57C4A354C09D4FBD984BBC974ABE994CC19E50C4A354C4A253C09D4FC4A354C8
      A858BD984BC09C4EBE994CC29F51C7A757CBAD5CCAAC5BC8A959CBAD5CCBAE5D
      CCAF5ECFB562CFB562BC9549C09C4ED4BC68D8C36DD9C56FD5BE69D6C06BD6C0
      6BD9C46ED5BE69D1B764D4BC68D2B865C8A959C3A052CAAC5BC3A052C09D4CC7
      A954CBB15AC4A351BD9949C19E50C5A456B78F45BC954ABE994DB58C41AA7E32
      A27427A27427A97D31B78E43B3883EB38A3FAD8037AE8138A5762EAE833AA170
      2A925E1997641F9F6E289F6E28A47430A67730A3732CAA7D34AD8037A97B32A6
      772FA3732BA3742CAF843AB48B40AE8339A3732BA6772FB0853BAE8339A97B32
      A97B32A97B32A6772FA6772FAD8037A4752DA2722AAD8037AE8138AE8339B48B
      40AF843AB3883EBB9448B78F44A97B32A17029A3742CB2873DB1863CB2873DAE
      8339AD8037AE8339AF843AB38A3FB3883EB2873DB2873DB3883EB38A3FB48B40
      B38A3FB3883EB68C3DB48A3BB3873AAF8336AB7D31AD7F33B08437AF8336B78E
      40B3873AB78D3FAE8135A47429AD7F33B3883AB38739BA9243B286399D6B218C
      560D804900703900753E008E580E9F6D22A47428A8782CA474289E6C21956016
      8751077D4700845001936011A67827B38B37B9933EB78F3BAF8532A87B29A375
      23A37422A17220A0701FA0701FA0701F9F6F1E9F6F1EA372209F6D1C9E6C1B9F
      6D1C9D6B1A9C69189E6D19A47520A57621A3741F9E6D199B69159B6915996713
      9867119B6A149A691399681298671198671197651096640F95630D94610B9461
      0B94610B94610B93600A93600A93600A93600A93600A91600591600591600591
      60059160059160059160059160058F5D008F5D008F5D008F5D008F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      9F6E27A2722BA97E36AE843BB58E44BC984FC2A254C4A459C5A758C5A55AC7A8
      5CC4A459C4A257C6A459CAAC5CCDB160CEB261CFAF60C7A054C8A255C6A052C4
      9D4DC09847BB9240B18636AA7D2EB68C3DA8782CA474299E6A25945C1BA16C2B
      AC783B9C652B9D6A3197642C915F246532004E1E005A2307501E005E280D5624
      025B28055B26015725005C29005D2900622C006F3800743B007A42028149097C
      44047E460687510F814A08743D006B3600743E0085500B94601BB38A3FC8A858
      C09C4EBE994CC09D4CC09D4CC09D4CBF9C4BC09C4EC19E50BD984BB68D42AD80
      3897641F834D098E5A15AE803BBD974EB78E47AE813CB3883FAF843AB2873EB2
      873EAA7C37A37230A2702DA47331976321743D00713A00905C17A1702AA2722A
      9F6E2798651F925E1996631E95611C8A5510804A057D4702814B06834D098B56
      118E5914915D1894601B94601A935F19925E18915D178C5A138E5A188B541A8E
      56209058258A531B7D47096E3900713E007F4B067A44067038006F3800774004
      8B5616A37531A2702DA474309A67248E59179D6B28AF833DB0803CAD7C38A472
      2CA7752FAA7933A97832A5732DB1833BAE7E37AA7933A3742DA3742DA3742D93
      5F1A834D09925E19A97C33B48B40AB7E359D6B2495621C9D6C25AA7D34C8A959
      E0D178D9C074F6F3AAFFFEBCE1D484D5C46DCFBC61CFBE62D5C46DE0D580E6DC
      86DCC978CBB15ED8C76DE3D97FE0CF80F7F5A7F8F5ABF2ECA5FFFEBDFFFEB5FB
      FEADFEFEACF7F7A0F1EF96EEEB91E2D47BDCC973CFB361BC9549B2883BA87B2F
      9D6B21A16E27925E19925E1994601B925E19925E198F5B1689540F8D5813935F
      1A95621D97641F905C178F5B16935F1A925E1997641F935F1A8F5A18935E1C91
      5C1A8E59178E5917834D0B794200763F00773F007A42027A4202763D00753C00
      7D440786500E955F199C671C9D691EA57327A474289662188E580E8E580E8E5A
      118E59139C6A24A47430956020854D107D4408743C026F38046E3704622C005A
      26006B3600733E036F3A007D490BA97B38CDB264C8AB5BAD8439B2873DBB9448
      B99246C09C4ED6C06BD8C36DDAC770D9C56FCFB562C9AB5AC8A858BA9347B48B
      40BC9549B99246B3883EB3883EB2873DB2873DB68D42BC9549C4A253C5A455CA
      AC5BCEB260CCAF5ED0B663D4BC68C8A959A170299E6D26BB9448C5A455C09C4E
      B78F44B58C41BC974AC9AB5AC7A757C9AB5ACBAE5DC8A858CBAD5CCBAE5DCBAD
      5CCDB15FCFB361CCAF5EC6A556C29F51C4A253C8A858C6A556C3A052C8A959D1
      B764C4A354C29F51C09C4EC09C4EC4A354C8A858C9AB5AC8A959C8A858C9AB5A
      CCAF5ECFB562CDB15FBA9347C29F51D1B764D5BE69DAC770D5BE69D2B865D6C0
      6BD8C36DD1B764CDB15FD1B764CBAD5CBD984BB99246C09C4EBC9549BB9546BC
      9947B79241AE8536B08639BA9347B58C42AC7F37B0853CB38A40B68E40B89243
      AA7F309A6A1E9D6C22AE8339A97C33A97B32AB7E35AA7D34A2722AAF843A9B69
      228D58139E6D26A97C34AA7D34A97C34A2722AA6772FAD8037B0853BAC7F36A9
      7B32A3732BA06F28A87931AC7F36AA7D34A17029A3742CAD8037AA7D34A5762E
      A4752DA3732BA4752DA87931B0853BAB7E35A97B32B1863CB1863CAF843AAC7F
      36AD8037AF843AB1863CAC7F36A6772FAC7F36B68D42A6772FAB7E35B78E43B3
      883EAE8138B0853BAE8339B68D42B2873DB2873DB38A3FB48B40B38A3FB1863C
      B2873DB38A3FB3873AB08436AE8135AE8034AF8336B58B3DB68C3EB18538AA7C
      30AD7F33B68C3EAE8135A6762BB08437B58B3CAF8335B18538BB9344BD9747B7
      8D3FAE81359D6A208852087D4600763F007A43008B550B9D6A1F9A671C8D570D
      8650068953099D6C1CAA7E2CB8923DBD9943B8923DAF8532A67827A17221A374
      22A37422A27321A27321A17220A0701F9F6F1E9E6E1D9D6B1A9F6D1CA06E1D9E
      6C1B9B68179A67169F6E1AA47520A77823A87924A57621A3731EA3731E9F6D1C
      9C6A169D6B1798671197651095630E95620D95620D95620D94610B93600A9562
      0C94610B94610B93600A93600A93600A93600A93600A92610692610691600591
      6005905F04905F04916005916005905E01905E018F5D008F5D008F5D008E5C00
      8E5C008E5C008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B1863DB38842B8914DBE9855C4A25DC7A75FC7A75DC7A85CCAAC5CCCAF5ECFB3
      61CFB361CFB562D0B663D1B764CFB562CFB15FCDAE5DCFB35ECDAF5BC9A858C6
      A354C6A354C6A255C49F53C19951BB8F49AE7D39B0813AAE7F38A37029AB7C33
      B78C41AC7F36A2772EA2782F9465226230005523005E250D4C18005C220F5820
      0A562006582303612D04622F00522200541F00692F06763D077B42057D44077F
      4609955F229F6C2B8C5515804808622D006C3600844F0A89540F95621CB99246
      C8A858C09C4EC19F4EC09E4DC09D4CC19F4EC4A354C4A253C09C4EBE994CB78E
      44AC7F378B5513663000743D00A67632BC944CAF833DAF843BB78E44B2873EAE
      833AB2873EAC7E39A3732C9F6D2A9D6C26905C17824D08804A058A551095621D
      9B69239B6923A2702D9662208A5412814A087B44027B440280490786500E834D
      09844F0A85500B86510C86510C87520D87520D88530E86530E87531180490D7E
      460C7E460E80480E844F0F7D48067C4902824F0A814C0A7A44047E48087E4808
      85510F95632194601B935C18925B179059159D6924AB7B34A97B33AC7F37AB7D
      38B68C45BE984FB78E47A3722E9E6C29945F1D905B199E6D27A1702AA97B3397
      641F88530E996721A97B33AA7D35A2722B96631E8F5B169D6B25B0853CC29F52
      CFB362CBAB63E4D58FF3F0A3D2BE6EC4A954BC9F47BC9E49BC9A51C4A35EC6A4
      5FCAAC63C09F50C8AD57C9AF59C2A254E3D486E9DC93E0CF8AF3F0A3EDE59AF1
      EE9DF9FEA6EBE591DBC879D0B669C7A95AC1A252B68D42A3742C9A6821915D17
      88510B8E57118A55108A55108C57128A55108A551089540F834D0988530E8853
      0E8C57128E5A1587520D87520D8A551088530E8E59148F5A188B5513905B198F
      5A188B56118A55108A55108E5914824C077B4402753E00743C00723900703800
      713800743B00945C1B9A642099641EA26F28A7772C9D6A20956117915C128852
      088650078B550C8F5913935F1A9E6C2999642481480B8149117F4610763D0765
      2F00652F00713901723A00743D01794305A67735BE9A51B99449B0883DAD8439
      BC9949D6C36AD2BA66D2B865D4BC68D6BF6AC8A959C09C4EC5A455C4A354BB94
      48BC9549BA9347B38A3FAD8037AD8037B1863CB38A3FBC9549BB9448BC9549C2
      9F51C29F51C19E50C6A556C3A052C9AB5AAF843A905C16A3732BBB9448B89145
      B68D42B2873DA87931BB9448BC974ABC974ABD984BBB9448BF9A4DBD984BBE99
      4CC09D4FC29F51BF9A4DB78E43B1863CB3883EB78F44C4A354BE994CBF9A4DC9
      AB5AC09C4EC09C4EC29F51C3A052C4A354C19E50BF9A4DC09C4EC4A253C8A959
      C8A959C4A354C4A253AB7E35BC9549CFB361D4BC68D6BF6ACFB562CDB15FCBAE
      5DCCAF5EC6A556C5A455C9AB5ABF9A4DAE8339A97C33AD8037AC7F36AE8437B2
      883BB18839AF8637B2883BB68D42B89146AB7E36AF843BB68D43B79142B89243
      B38C3BB08738B78F41B58C41B0853BAB7E35A06F28A4752DA97B32AB7E35AD80
      379F6E27AD8135AE8339A97D31A97B32A27328AC7F36A3742CA87931A77830A7
      7830A170299F6E27A97B32AB7E35A77830A97C33B2873DB58C41AC7F36A97C33
      AE8138AE8339AF843AB1863CB89145B78F44B48B40B68D42B48B40B3883EAC7F
      36B0853BAD8037A5762EA97C33B78E43BC9549B78E439C6A23A3742CB3883EB2
      873DAF843AB3883EB0853BB68D42B48B40B2873DB1863CB38A3FB58C41B48B40
      B2873DB0853BAE8135AE8135AE8134AD7F32AE8134B78D3EB99141B3883AB68C
      3DB3883AB99141B18537A8782CAF8335B28639AA7C30B08437B48A3CB88F41B5
      8B3DB28639B78D3FB78D3FAC7E32A16F248C560C7D46007841006E3800743D00
      925D13AE8134BC9741BE9A44BD9943B58D39AB7F2DA67827A47625A57726A375
      23A37422A27321A17220A0701FA0701F9F6F1E9E6E1DA2721DA2721D9D6A1994
      5F0F935E0E9D6A19A77725AD7F2CB18531A47422945F0F915C0C9C6918A06D1E
      986414915C0C95620F94610C93600B915E09915E09925F0A925F09925F099562
      0C94610B94610B93600A93600A93600A93600A93600A93620793620792610691
      6005905F04905F04905F04905F04915F02905E01905E018F5D008F5D008E5C00
      8E5C008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B78E44B78E47BC9551C09A57C3A05AC4A259C5A55AC9AD5DD1B764D5BE69D0B6
      63D0B663D1B764D0B663CFB562CFB563D2B564D3B766D3B865D2B862CFB361CC
      AC5DC9A759C7A258C49D55C09750BE944EB48642B88D44BC9448B18538AE8135
      BA9242BF9D4AB69444AF8D42855518602D00582500541F02541D06571F0B511B
      05521D025521005E2A016C37086D370A602904551F006B32007B42067F460A81
      480CA67435BD9451A16E2D864F0F824B0986500E8D58138E59148B561095611B
      B2873DCAAC5BC3A250C3A250C09E4DC09E4DC4A253C29F51C09D4FC3A052B78F
      45B2873EA3732F86500E693300753E009F6D2ABC954DB3883FB38A40B0853CAF
      843BAE8139AB7E36A879319C6A24925E189C6A24935F1A804A057E4803844D0C
      8852108D57158852107E47057841007C45037C4503743D00703900723B007640
      007741007943007A44007A44007A44007A44007A44007440007540006C37006F
      3800753E02824C109A68279A69267F4B0685530C91601992611A94621D895611
      84500E905B1989510D7940007F46028A520E955F1B9D682397641F9E6D27A878
      34A97B36A97B36A16F2C8E59178E59178953118C561497641F9A6822A97B339B
      69238A55109865209F6E289967219967218C5712814B0695611CB58C42C9AB5B
      CEB261C49F5AE1D08BE7DB93C1A258B79447B99948C3A557C7A863CAA96CCEAC
      70D9C07BD1B869D1BB64D1BC63D1BB64EDE891EAE091EFEB9BF6F6A6DFCD85D8
      C37BD9C77AC7A961BB944EB28842A2742D9D6E2695611B89540E88530D85500A
      824A0489510D7B45007B45007D47027A44007D47027F49047A44007E48037F49
      04844F0A8A551085500B86510C87520D824D08844D0C885210824B0B8953118A
      5412844F0A814B05804A0486510B8E5A14844F0A7841007139006F3700703800
      7138007238007E4509955D20996424A06B29A16D289D69229C691F905B128953
      0A844D05824C03804802814B06905C179C69269A6525875115854D148A53197D
      450D6932006932006E37007139007039007C4608A97C39C8AB5EB79146A87D33
      C5A855E9E483CBAD5CC5A455C29F51CAAC5BCEB260C8A858C3A052BB9448C09D
      4FB89145B89145B99246B1863CAE8339B68D42BC9549BC974AB99246BC9549C5
      A455C9AB5ACDB15FD4BC68D1B764CFB562C4A3549D6B249B6922B78E43C09D4F
      C19E50B89145AD8037BC9549C19E50C09D4FC09D4FC19E50C4A253C29F51C29F
      51C29F51C3A052C4A253C09D4FBB9448B78E43B78F44C4A354C09C4EBC974AC6
      A556C19E50C19E50C4A253C4A253C3A052C09C4EBF9A4DBF9A4DBF9A4DC3A052
      C5A455C3A052B68D4298651FB48B40D2B865D9C46ED3BB67CFB361D4BC68D7C1
      6CD7C16CD6BF6AD7C16CD8C36DCDB15FBF9A4DBC9549BC9549AC7F369E6E249B
      6A20A4762BB68E40C3A052C5A456C4A254B89146BD984CC29F52C09C4EBD9949
      BA9544B99443BE9A4AC19E50BF9A4DBE994CC09C4EC29F51C19E50C4A354B288
      3BAC8034B78F41B48C3EB1873AB2883BA97C30AD8135B38A3FB3883EB1863CAE
      8138A06F289D6B24A87931A6772FA6772FA97B32AF843AB0853BA97B32A87931
      AC7F36AA7D34B99246B78F44BC9549BE994CBB9448B99246BA9347B99246B38A
      3FB0853BAD8037AE8138B48B40B99246B68D42AF843AA77830AB7E35B1863CB2
      873DB38A3FB78E43B58C41B48B40B38A3FB58C41B68D42B58C41B3883EB1863C
      AF843AAE8339AF8336B48A3CB68C3DAF8335AB7D30B38739B99141B68C3DB58B
      3CAD7F32B28638B08436A97B2EAE8033B28639B08437B28639AF8336B48A3CB4
      8A3CAD7F33B08437B78E40B68C3EC29E4CB78E3FB08436A8782C9C691EA16F24
      B48A3BC09A49BE9A44B9933EB08633A87B29A47625A57726A57726A57726A476
      24A37422A17220A17220A37422A27321A0701F9D6D1C9D6C18986512925D0D95
      6010A16F1EAC7E2BAA7C29A37220915C0C8C5606824B007F4700885103905A0C
      935D0F956010905C09905D08905D088F5C078F5C078F5C07905D07915E089360
      0A93600A93600A93600A93600A93600A93600A93600A93620793620792610691
      6005916005905F04905F04905F04915F02905E01905E018F5D008E5C008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B3863CB3863CBA9445BB9546BC9747BD9949C2A04FC6A754C7A855C6A556C099
      4CBC9248B4873FAC7B37A67330A36F2EA4702FA67331AB7D38B58C42C09E51C8
      A95ACBAD5DCBAD5DC9AB5BC8A859C8A859C4A254C2A04FC19F4EBA9544B38B3B
      B38C3BB58F43B7924F9567335D2A004D1D00541E00531D005D23085820045721
      005721005020004C1E005C2900713B13703B11602D00622B00703700864D1385
      4C1281480C783F036C34007B43038E58169864228A55108A55108E5913824D07
      97651CB89243BD9949C3A250C2A04FBF9C4BC19E50C19E50C09C4EC19E50BC95
      4AAC7F37A47430A3732F905B19743D00814A08A87834B1863DAE833AAC7F36AF
      843AA97C33A3742CA7792EA3742C9F6F259967208D581287520D8B5611885210
      7E47057941017139007D45058C5515915B1B844D0D733B00713A007B44027E47
      05804907824C0A834D0B834D09824D08824C07814B06794402774200743F0089
      5414996726A17031A374328F5C1A77430085530CA67C2EAD8536A67B2F916019
      8F5B169D6B289E6A25854D088E5A14A06F28A77830A97C33A77831B0853CBC95
      4AAF843BA5762FA1702A9865209D6C269A68229D6C26A5762FA67730BB9449B4
      8B41A47430AD7F3AAE813CAA7C37A676329B6825925D1B9F6D2ABE984FE0D07B
      EEE88DDEC97CEBDF9CF1EBA5D8C37BDDCF7EE6DC8AF4F5A2FDFEB7FFFEC0FFFE
      BDFEFEB8F1EE9BEEEA90EFF08EECE88AF8FCA1ECE393D9C57DF2F39FEEEC97E9
      E38FDDD07CC1A257BC994DB99449B48E42AE853AA5762E9B69229A682296631E
      915A1696601C8A55108C57128D581389540F8E5914915D188D58138E59148C57
      12915D1897641F94601B95621D96631E905C17915C1A95601E8F591995601E97
      641F95611B915E1589550C86520989550C8F5B15935F1A8C55157E4508733A00
      6E35006E3400713700854B148E571D9D682B9F6B2D9D6B28A06F29925E188A55
      0F85500A844F09824D077A440076400087510F9B67268B5316834B0F89511582
      490F713800703700743902743A00733B016F3800935F1FBC974EBC994DAE863B
      BA9747CFB761DDCB73D2B865B58C41A77830AF843AB99246C3A052C8A959C4A3
      54BD984BBB9448BA9347B78E43B2873DB3883EB58C41B78F44BC974ABB9448C0
      9C4EC4A354C29F51C29F51C19E50C8A858C7A757AC7F36935F19A2722AB99246
      BB9448B3883EB1863CB48B40BD984BBF9A4DBE994CC09D4FC09C4EC09C4EC29F
      51C09D4FC29F51C7A757C8A858C3A052BF9A4DBC974AC7A757C8A858C3A052CC
      AF5ECAAC5BC8A858C8A858C6A556C6A556C7A757CAAC5BC8A858C09D4FC4A253
      CBAE5DCDB15FB38A3F98651FBB9448D3BB67D7C16CD2BA66D2B865D9C46ED8C3
      6DD6BF6AD4BC68D5BE69D1B764C8A959C4A253C5A455CAAC5CC9AB5BCBAE5DCA
      AC5BC4A253C5A455CBAD5CCAAC5CBF9A4EBB934BC39F55C7A758C5A455C6A754
      C09F4CBA9544BC9848C6A556BE994CB99246C4A253BC974AAE8336B2883BB086
      39AB7F33B28A3AB28A3AAF8637AE8536AB8032B2883BAE8138AA7D34AF843AB2
      873DA5762EA97B32BA9347B89145B3883EAD8037AF843AB3883EAF843AAF843A
      B1863CAD8037B78E43B68D42B78E43B99246B89145B89145BB9448B89145B48B
      40AC7F36A87931AB7E35AF843AAE8339AE8339B0853BB2873DB48B40B1863CB0
      853BB2873DB48B40B68D42B1863CAD8037B3883EB78E43B38A3FAE8138AC7F36
      AD8037AE8138B3873AB88F41BA9242B28638AE8134B68C3DBB9343B58B3CB78D
      3EB18537B88F40B58B3CAA7C2FAE8033B18538AF8336B68C3EAC7E32A8782DAD
      7F33B3873AB58B3DB78D3FB78E40B38739B48A3BBC9444BC9545B88F40BF9948
      C39F4DBA9242B08633AC802EA67827A37524A67827A87B29A67827A27322A476
      24A37422A27321A37422A37523A273219C6B1A9664148E5A07905C09996713A8
      7924AF832FA979279864148A5404885103996416A37021996416875002794100
      7941008149008752008A56018D59048E5A058D59048C58038D59038E5B058F5C
      068F5C06905D07915E08925F09925F09925F09925F0992610692610692610692
      6106916005916005905F04905F04915F02905E018F5D008F5D008E5C008F5D00
      8F5D00905E018F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      AE7F36AE8034A37628A27524A07224A17326A3752AA3702995611B8B540E7E46
      007C44007A4200783F007740007B430380470A814A0E8854198B571F8B562288
      511F885020945B2AA36F3BAF8146AF8343B68D48B38C42AE853AB0883DAE843B
      9F6F2C915E226C380A4C1E004A1B005C25095520034D18004C1A00511B005320
      00501E005725005C29005723005A25006C360379420C6931005F27006D330072
      3800773D037D44086E36006A32007E4606945F1D8B56118B5611925E18996720
      A4762B956219B08639BE994CC09E4DBD9949C19E50C4A253C19E50C19E50BC95
      4ABD984CAE803B9F6D2A9C69268C57127F490489540FA97B33B2873EAB7E35AB
      7E35AE8336A6782DA374299D6D239A691F96631D95611B8E5A15824B09773F00
      7840007D4505814909814909834D0B854D0E7F4806763F00733C00774000854F
      0D87510F8953118A54128A551089540F88530E88530E8854128E5B19905D1B9C
      6B289765238E59198E5A187B460475410085530CB0883BB99745AE863995651E
      96631EA6773098631D814903935F19A3742C9F6E279F6E27A4752EB58C42AB7E
      36A1702A9F6E28A5762FA1702AA4752E9F6E28A3742DB58B44B1853FC5A358C0
      9A51AA7C37AA7C37A87932A4752EA77831A2722B9F6E28A1702AB3883FE0CF7A
      F8FC9BE5D585F0E79EFDFEB2EEE899F7F7A0EEEC97EADD94E7D897E9D59CEFE3
      A6E6D394D9C37BDCC978E0D37AD7C371E0D180DAC579DCCB7DEEEE95E1D583D9
      C575CBB264B68F45AF873CA77C329D6E2698692195611B915D1795621D94601B
      8C54108F5814834D0986510C88530E834D0987520D8D581386510C85500B8853
      0E8C5712905C178D58138E5A15915D188B56118C5712905B198E5816935E1C92
      5E19905C16915E158B570E8652098E5B128B561087520D8A5412905A1A8F581B
      81480C6E35006C35006C35007139018E581E9D692C9D6928A3732F986520905C
      1689540E804B027D47017D47027841007840007D45057E4705723B007D450588
      5014824A0E7A40067038007038006E3700753E027C4608996825BB984AB69142
      9B6D21916116B38B3DCFB361CBAD5CB58C41A5762E9967209D6B24A97C33B891
      45BC974AB89145B38A3FB89145B99246B38A3FB0853BA77831B89146BA9347C1
      9E50CFB660CCB15CCAAD59CFB660CBAF5BD0B761C8A959A2722A9D6C25BC974B
      BE994DBA9348B48B40AC7F36B78E43BC9549BB9448BD984BBA9347BD984BBD98
      4BBB9448BA9347BD984BBF9A4DBE994CC09C4EC3A052C09C4EC4A354BD984BC6
      A556C5A455C4A253C4A354C4A354C8A959C6A556C8A959C7A757C29F51C6A556
      CEB260CDB15FBA9347A77830C8A858D1B764CFB361CFB562D2B865D3BB67D2BA
      66CCAF5ECAAC5BC8A858BF9A4DB99246BE994CC5A455CBAE5EC9AB5BCCAF5ECC
      AF5EC4A354C3A052C7A758C7A758BF9A4EBA924AC3A053C6A557BF9A4DBB9448
      B89243B99344C6A556C09C4EB89145B38A3FB78F44BA9347BB9546B79142B58D
      3FAE8336B38B3DB99344B38C3CA7792EA5782BB38A3CB0853BAA7D34B0853BB2
      873DA17029A3742CB68D42B0853BAC7F36A5762EA97C33AE8339A97C33A87931
      AD8037B0853BB2873DB2873DB1863CB3883EB2873DB38A3FB58C41B0853BAD80
      37B1863CAE8138A77830A87931AD8037A4752D94601AA3742CA97C33A3732BA3
      732BA2722AA2722AA97C33A6772FA6772FA97C33AB7E35AB7E35AE8138B1863C
      AF843AAA7D34B28639B68C3EB78D3EB38739B3883ABC9545BC9545B28638B388
      3AB68C3DBE9847B28638A6762AB08436B78D3FB28639AD7F33B48A3CB68C3EB9
      9142BD9747B78E40B08437B3883BB78D3EB58B3CBB9343BD9746BB9343BF9948
      BC9444AB7E2FA97C2DA97C2AA67827A57725A67826A87B28A67827A37524A476
      25A37423A27322A27322A273219D6E1A94620F8D5A079561119D6B1AA87826A9
      7927986414844D00834D008F5A0AA16F1E9E6C1B956111915B0D935D0F8F590B
      824B00794100814A008550008A55028C57048B56038954018A56018B57028D59
      038E5A048E5B05905D07915E08925F09925F09926007915F0692610692610692
      6106926106916005916005905F02915F02905E018F5D008E5C008E5C008F5D00
      905E01905E018F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B01996B019A6C029A6C029A6C029A6C029B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79C02B79C02B79C02B79C02B89D03B89D03B89D03B89D03B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      A87931A7792EA37726996A1A95611797621C925A19874B0C834A098C520E965F
      198D570D804A00804C007D4B007D4C058A591488581B824D206935104A1B0037
      0D00350A00410E00501600581F0172370F743C0A6E3900734000845215824D15
      6933005522004C1E003A1300411400471800511D05561E084717004614005823
      0A5A2306572300572300622A00783D0D844A1481460F773C0B5C25005A23006D
      3500794109875115885315733D006831007B43038D5715925E1985500A95621C
      AB7F338E5A1188530DAD8038BC974ABC9549BD9949BE9A4ABD9949BB9448C09D
      50B58C42B2873EA97B33A1702A96631D87530A88530D8D5813A3732FAE8139AD
      8038A5762EA4752DA87B2F9D6C229B692295621C935F1A8E59177D45056B3300
      723900844C0F7F48067D46047F49047C4503723C00743E007F4904824D08834D
      09844F0A844F0A834D0985500B88530E85500B814B0687520D905C1794601B8E
      5A157D4702713A007A44007D4702784200834D09A3732BB78F44B0853B97641F
      8F5B16A2722B8F5B15814B05935F19925E188F5B15915D1797641EA3742C935F
      198F5B159C6A239D6C2598651F9C6A239C6A2395621D986323A97839C29D55B7
      8E47A87834AB7E36A17029915D1796631D96631D905C1694601AA97B32D3BB68
      E0D078D4BA6CE0CB7FEEE495DECC7EDDC87ACFB568C4A058C4A05CC19A57C29E
      5AC8A45EC09C52C09D50C19E51C4A355DECB79D9C172CCB163C6A859B99449B2
      873EAB8038A2722A95611B8C571185500A87520C824C067E4802814B057E4802
      7943007D4701774100743E00794300753F007D47017A44007842007D47017C46
      007F4903834D08804A04824C0688530D86510B85500A844F0A85500B8D58138D
      581285500A8A550F8C5711804A0486510B8B56108C571185500B814B0687520D
      8E58168A53137D44076F37006A32007C4307935C209E6A2C9F6D2A9D6C259461
      18855108814D02814B05774100733A00753C00723900713E00703E00733F0073
      3D007D460A7E460C6C37006C37006C38006F3A007842028D5A15AE8437BE9C48
      AE8532916011905D14925E189F6E27BC9549C29F51B68D42A97C3394601A9967
      20AC7F36B89145BA9347B99246B89145B78F44B78F45B38741B78D46BE994DC4
      A354C6A853C4A550C4A550C8AC52C6A852C8AC56C4A452AE833996631EA97B36
      C19C54B38842B3883FAB7E35B78F44BE994CBF9A4DC4A253C3A052C6A556C4A2
      53C5A455C7A757C8A858C7A757C7A757C8A858C8A959C8A959C8A858C3A052CB
      AD5CCFB562C19E50C7A757C4A253C4A354C9AB5AC7A757C9AB5ACDB15FCDB15F
      CFB361CFB562C09D4FAA7D34CEB260D6BF6ADBC871D9C56FD7C16CD9C46EDCC9
      72DBC871DBC871DDCB73CDB15FC09C4EC5A455C4A354CAAC5BCAAC5BC8A959C6
      A556C5A455C5A455C3A052BF9A4DCAAC5BCFB563D4BC68D2B865CBAE5DC5A455
      C4A354C5A455C8A959C3A052BF9A4DBC974AB38A3FAA7D34AC7F36B38A3FA576
      2EA5762EB0853BB89145B08639A6772FA97D31B38A3FAA7D34A6772FA87931A3
      742C9F6E27A3732BA5762EA97B329F6E27A3742CA77830A97B32AB7E35AE8339
      AE8138AA7D34AE8139AE8139AE833AAE833AAE833AAD8038AB7E36A97C34A97C
      33A97C33A97B32A77830A6782DA5772CA3752AA37429A2722AA06F28A3742CA0
      6F28A4752D9F6E27A4752DA4752DA3732BA3742CA2722AA77830B1863CB0853B
      AC7F36B0853BB28639AD7F33B68C3EB3883BAE8034BB9344BC9546AE8034B48A
      3BB38739B28638B3883AB3883AB28638B3883AB78D3EBC9545BE9847BD9746B9
      9141B58B3CB58B3CB78D3EB88F40B78C3DC09948C7A44FC49F4BBC9341B38737
      AD7E2FA87729A9792BA67527A87826A97C26A87924A77823A47624A17221A474
      28A37328A47429A270259565148959048D5F059B6D15A16F1EA9782A9F6C1D88
      5103814900915C0C9E6C1B9E6D19A2721D9F6E1A996713935F0C8E59068B5505
      8C56068C56067F4A007943007E48008752068A56078955068955058A57048A56
      018E5A05915E08925F09905E05905E0592600795630A926007926007915F0690
      5F04905F04905F029160039161029261029160018F5E008E5D008F5E008F5E00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27801A27801A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77E02A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      A77830A7792EA87C2DA87C2EA4762B9F6B269B64249D63249B6221975F1B965F
      178A540A7A46007F4C038A58168F5E2189581F703C0F4C1E003B12002F0A0036
      0B00410F054912084A1202471400531C005B25006E3805753F0B673301632E00
      622A055723014B1B00451800441700411400511D055C250F501C034B19004618
      005220005C26045B2500642C00783D0D8246137A3C07652C00682F006D34007A
      420A8952188C5719844F11804A0A733B007038007941018E58188D5715844F0A
      8B5610844F098A54128B5513A1702AB99246BB9546B78F41BC9848C09C4EB68D
      43B58C42B48B41AC7F37A97C33A2722A8B570E7F4A0195611CA06E2BA2722BA7
      7831A97B329F6E279D6C229A691F9A68219D6B249A68228D57157D4505733A00
      733A00753C00794200743E007640007D4702834D0988530E86510C804A05834D
      0987520D8A55108C57128D58138E59148E59148D58138C57128E59148E591490
      5C178A5510834D0987520D844F0A7C46018B5611A4752EB89146B78E44986520
      844F0A9865208C57118C57119967208F5B1594601A9C6A2398651F96631D8F5B
      15915D17A06F28A3732B9B69229D6B249D6C259A68229D682AAC7C3DC49E59C0
      9952B68C45B3883FA06F288E5B12936017915E1588540B95611BAE8138C5A456
      CBAD5DD2B869E7D987F4F098DCC776CDAE63C29F52C4A254CDB15FC8A858C5A5
      53C19F4EBC9747C7A757D1B764CCAF5FD6BE6DC5A456B89145B68D42A97B329E
      6D26996720925E188E59138A550F87520C86510B804A047E4802844F09824C06
      7A44007A4400794300753F007A4400743E007B45007842007842007D47017B45
      007F490387520C85500A85500A89540E86510B88530D86510B824C0688530D8D
      58128A550F8E5913905C1688530D834D0889540E8F5B158E5913834D08804A04
      834D0885500B8D57158C5515834B0E763D00753C00864F0F996523A3742C9D6C
      228F5D127F4B007943007A4301763D017137006F3600743E00743F0078420275
      3F017641057944096E39006D38006F3A00703B007B4507915D1DA87931AB8032
      A97E2CAB812FA0702697641E8E5913834D088E5913AD8037BF9A4DBE994CA170
      29935F198E5913A2722ABA9347C09C4EBA9347B89146B78D46B78D46BA9348C1
      9E50CBB15AD1BA60D0B85FCDB35BCFB75FD0B761D2BA66C7A758A87932A1702A
      B78E47BF9A4EB99246B0853BB48B40B99246B78F44B78F44B78E43B78F44B992
      46BB9448BC974ABD984BBE994CBF9A4DC09C4EC09D4FBF9A4DC09C4EBC9549C4
      A253CCAF5EC09D4FC5A455C4A354C7A757CBAD5CCAAC5BCBAD5CCDB15FCEB260
      CFB361CFB562B68D42AE8339D1B764D5BE69D6BF6AD6BF6ADAC770DCC972DDCB
      73E0D077E0D178DFCF76CFB562C6A556CFB562D2BA66D5BE69D6BF6AD5BE69D3
      BB67D1B764D0B663CFB562CFB361D2BA66D2B865D1B764CFB562CDB15FCBAE5D
      CAAC5BC9AB5AC6A556C4A253C5A455C8A858C3A052B48B40A6772F9F6E27AF84
      3AA3732B9E6D26A3742CA2722A9A682198651F9A68219A682198651FA06F28A2
      722AA17029A2722A9D6C259C6A2398651F9D6B249F6E27A06F28A2722AA4752D
      A3742CA17029A67730A67730A77831A87932A97B33A97B33A87932A77830A373
      2BA3742CA3732BA3732BA37429A3752AA3752AA3752A9F6E279F6E27A4752DA2
      722AA6772FA3732BA5762EA4752DA77830A77830A3732BA3732BA97C33AA7D34
      A97C33AD8037B58B3DB48A3CB78E40B3883BB3883BBC9445BB9344B68C3EB185
      37B18537B28638B38739B3883AB48A3BB78D3EBA9242B99141BA9242BA9242B7
      8E3FB78E3FB88F40B88F40B78E3FC5A04EC49F4DC09946B88E3DB08333AC7D2E
      AA782BA97629B08333AD7E2DAA7C29A87924A77823A97927A87B28A37524A373
      25A06E2398641A8E5A0E8A590891620E9A6E16A0731CA070208D560A7F470088
      5103986315A06E1DA2721DA475209C6A1697641194610C93600B94600D935F0C
      905C098E58088C570B824C027D46007D46007F49008450018A56068B58058E5A
      058E5B06915E0894610B95640B9462099160058E5D02915F06915F06915F0690
      5E05905F02905F029161029161029261029160018F5E008E5D008F5E008F5E00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27801A27801A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      AD8037AC7F36A97E34AE853AAB8038A2702D9E6C29A3702BA16E2798641B9662
      188B570E85510F8D591E8851236F3613561F013A0E003A0F00310A00330C0044
      1400531E07582108572002551F00491800531F0069310A733916662E0A5E2604
      5D27065721044A1A004918004A19004E1B00572104572202501E005826034B1E
      005324005B2A005D2A00602B006931046830025D25005D2700773F05854F1382
      4D0F824C0C84500E8A56148F5B1B935D1D733A005E28006E36007B4206723900
      7B4205956020905A1A824C0A88530E9D6B25AE8138BB9448BE994CB58C41B48B
      41B68D43B38842AB7E36AA7D349F6E27834F06743E007B4402854D0E8D57159E
      6D27AC7F36A77830A3732BA5762EA3742CA3742C9C6A248C56148149097C4306
      773E017139007740007D4702824C0788530E8D581389540F804A057A4400834D
      0985500B88530E89540F85500B814B06804A05824C078C57128E59148F5B1697
      641F97641F905C17905C178F5B168E59149D6B25B1863DC09D50C09C4F9F6E28
      8C5712A6773095621CA3732BAC7F369D6C25A4752DA97C339F6E279B6922AF84
      3AAD8037B58C41B3883EAC7F36AF843AB1863CB1863DB38544C29C58D9C175D9
      C373CEB163C09C4FA879329F6E27A97B32A3742C98651FA1702ABB9449DCC875
      E3D57FDFCC7AF4F098FAFDA1E7DB85E5D782E5D97FE6DB80DFCF76CBAD5CC09E
      4DBB9546B99344C8A959CFB562C4A254C8A95ABB9449A97C33B0853BAA7D34A3
      742C9F6E279A682198651F95611B95611B95611B8E5A148D5812915D178E5A14
      89540E8A550F89540E86510B88530D824C0687520C85500A844F0989540E8853
      0D8B5610925E18915D178F5B15915D17905C1695611B96631D8E59138F5B1595
      621C95611B95621C97641E925E188F5B158F5B1597641E9C6A23935F1987520C
      844F0985500A89540F8A55108C56148B5414854D0E814A0885500B8D58129B6A
      209A6A1E8B570E7D47017B4402733A006B31007034026930006B300274390973
      3906703B00754004734000713E006E39006B37007139018D561EA87637A2722B
      8E5C108A570B9A691FA3742CB2873D9D6C25844F0987520C94601AA6772FC29F
      51C09C4EAE813895611B8D5812996720AE8138BC974ABB9448BC9747BC9747BB
      9546BD9A48C2A24EC6A556C7A758C5A358C19C54C5A259C8A75BB3883EA17227
      AC8133B79140B48C3EAD8037AB7E35B68D42BB9448BC9549C19E50C19E50C4A2
      53C3A052C3A052C3A052C4A253C4A253C3A052C29F51C8A858CAAC5BC3A052C6
      A556D0B663C4A354C4A354C5A455C6A556C8A959CAAC5BCBAD5CCBAE5DCDB15F
      CDB15FCCAF5EAB7E35B48B40D5BE69D9C46ED8C36DD6C06BDBC871D4BC68D6C0
      6BDDCB73E0D077DDCB73CFB562C8A858CFB361D0B663CDB15FCEB260CFB562D0
      B663D0B663D0B663D2B865D4BC68D2BA66D2B865D0B663CFB562CEB260CBAD5C
      C7A757C3A052BE994CBA9347B78F44B78E43B78E43B3883EAD8037A879319562
      1C925E1897641E9C6A2395621C8F5B1596631DA06F2898651F925E1895621C96
      631D97641E9A682196631D94601A96631D9B69229D6C259D6B249D6B249E6D26
      9F6E279D6C259D6B249D6B249C6A239C6A239D6B249D6B249D6B249D6C229B6A
      209C6B219C6B219D6C229D6C229C6B219C6B219C6B219C6A239D6B249F6E279D
      6C25A2722AA3742CA6772FA3732BA5762EA97B32A5762EA2722AA5762EAB7E35
      AE8138AF843AB18538B58B3DB58B3DAF8336B3873AB68C3EB28639B48A3CB084
      36B28638B3883AB3883AB3883AB68C3DB88F40BA9242B99142BA9243B99141B6
      8C3DB58B3CBA9242C09A49C39F4DC5A24DBD9543B38737AD7E2FA97929A97929
      AA7B2AAC7D2CA87826A97927A87B28A77928A47625A67729A77928A374239D6D
      1C936010875401865300966414A47625A373259764187E4900824D00905D0EA0
      701FA577259E6F1B9969159A6B1594630E92610C93620D95640F976812976812
      92600D8E5A0A8E5B0C8E590D8A5509824C007B4600824D008D5909915F0C9461
      0C925F0A905D07905D07915F06915F06905F048F5E03905E05905E05905E0590
      5E05905F02905F029060019060019261029160018F5E008E5D008F5E008F5E00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B38A3FB18A3EAE873EAE873EAC833DA97E36A57831A4752DA072259D6E229665
      1A8C5914824D11743C0C5621003A0D00320800370A00330A003E10004E1B025D
      280967320A6430055D29005422004E1D00511E004C1900511B005D2308551E01
      4616004717005A22095B24085F28095F27055622005321005A25006430066331
      075325004C20005222005A2700632D036E350B733A0A642E006A34007F490B89
      5414824D0C8955139D6D2AA87B369B6726854D107B4206844C108D55197E4508
      6C3400763E00854D0E8E58188A5412834D099A6821B38A3FB89145B99247AE83
      3AB1853FB1853FB28640B1863D9E6D268450077C4600753E00794101824B098E
      5816996721A06F28A4752DA5762EA2722A996720925E198F5B168C5614844D0D
      8048087F47078E581696631E9A682298652095611C88530E7D47027B45007A44
      007B4500804A05834D09824D08814B06824D0887520D8E5A1596631E9D6C26A9
      7B33A97B339F6E28A2722BA87932A2722BB0853CC7A758D0B664C3A053A06F29
      935F1AAC7F37A3742CB58C41BF9A4DB68D42BE994CB99246B48B40BF9A4DC09C
      4EBC9549C09D4FC29F51C5A455CFB562D2BA66D3BA6AD6BB70DFC97EF1EC96F4
      F299ECE38BD7C06FBC974BB78F45BB9448B1863DB2873EBA924AC5A358F1EF92
      FFFEA8E9DD87F7F69CF9FCA0EEE78EF2EF94EAE386E0D179DDCB73D7C16CDAC8
      6ED2BA63CBAF5BCEB260C9AB5ABB9449C29F52BB9449AA7D34B78F44B48B40B2
      873DAE8339A97C33AA7D34A5762EA17029A5762EA170299C6A239C6A2398651F
      96631D9D6B249A682197641E9A6821925E1897641E95621C95611B98651F9A68
      219967209D6C259C6A239B69229C6A239D6B24A3732BA6772F9E6D269D6C259F
      6E279D6C259F6E27A170299E6D269D6C2595621C97641EA06F28A06F2898651F
      8E5A1487520C8D591085500A87520D925E1996631E915D188C57118E5A119563
      1A9D6C2297651C89540F7D45057138006A30006D30006A2F04692D0472360A76
      3B0B703903713C01723E00703C00713C00733D05773E08915B23B78C4BBC934D
      A6782D9A6A1E814C0387520C9F6E27AB7E35A3732B935F1988530D8F5B159C6A
      23AF843ABE994CBC9549AA7D3496631D925E189A6821AB7F33B38B3BBC9947C4
      A452C7A954C8A956C9AB5BCBAD60CEAF64CCAD62CBAB60CEB163C7A757BC9747
      B99443B68F3FBC9747B48B40AA7D34B1863CB48B40AF843AB38A3FB0853BB38A
      3FB38A3FB48B40B78E43BA9347BD984BBE994CBE994CBC974AC09D4FBA9347BA
      9347C8A858BE994CBC9549BD984BC3A052C29F51C7A757C8A858C8A858CAAC5B
      C9AB5AC9AB5AB0853BBE994CD3BB67D8C36DDAC770D7C16CD8C36DCBAE5DD0B6
      63D5BE69D6C06BD2B865CAAC5BC8A858C9AB5AC9AB5AC8A858C8A858C9AB5ACB
      AE5DCDB15FCEB260D0B663D3BB67CEB260CFB361CEB260CAAC5BC4A354BE994C
      B99246B78E43B0853BB0853BAE8138A97B32A5762EA4752DA3742CA3732B925E
      1889540E88530D8E5A148F5B158E59138F5B15925E1897641E8E5A148E59138B
      56108B5610915D17925E18925E1895621C9967209B69229A682198651F9A6821
      9B69229B69229A68219A682199681E98651F98651F98651F99681E9A691F9664
      1B96641B98671D9A691F9A691F98671D96641B96641B9967209A68219A682198
      651F9D6B24A3732BA6772FA4752DA4752DAC7F36AC7F36A6772FA97B32B0853B
      B48B40B3883EB28639B78E40B99142B3883BB48A3CB78D3FB3873AB3883BB387
      39B68C3DB78D3EB58B3CB68C3DB99141BA9242B88F40BA9243BA9243B88F40B7
      8E3FBB9343C09C4AC4A04EC4A24FB88E3DB18434AC7D2EAC7D2EAD7E2DAD7E2D
      AC7D2CAD7E2DAB7D2AA57725A57726A77928A67827A57726A374229D6D1C8350
      0088550292600D9E6E1DA375249B681D89530A7A43008A5607996817A57823A3
      76219D6E1A9A6B1596671192610C956510956510956510966711976812986913
      9868149765158B57088A5509885405824D007B46007F4A008754018B58058F5C
      07905D08905D078E5B058C59008B58008E5C01905F048E5C038E5C038F5D0490
      5E05905F04905F029060018F5F009261029160018F5E008E5D008F5E008F5E00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B78E43B48E42B18B41AE853FAD853CAE853CAB8137A4782DA17627A176279668
      1C915E1C7D470F562100350B00390A00400D05400D0343130054210367330E76
      43128051148256147B4B0C6C3A01642F01582200441200411000521B06551E07
      501B00541E054B17005A2008652C0B622A005C2900723D0686531F7F4B1E6632
      0D552403501E015623075C2906653008723F0E7F491577400A632D006C350088
      52168E59198A5614956220A374308E58188750108851118C55158E58168B5513
      7D4702733D00743C00824A0A8D571587520D85500A86510B8E5A15A97B33B38A
      40B38741AB7D38A3732F9A68228B5611804A047E4803814A08713900713A0075
      3E0077410085500B915D178E5A14925E1886510B804A04844F0A8B56118D5715
      945F1D9D6A279F6E28A06F299A682296631E96631E8E5914814B067D47027741
      007640007A4400804A05834D0985500B8A5510905C1789540F8F5B16935F1AA0
      6F29A87932A3742DA87932AE833AA97B33AF843BC5A456C9AB5BB2873E96631E
      925E19A1702AAC7F36BA9347BF9A4DB58C41BA9347B1863CB0853BBF9A4DBC95
      49BB9448C29F51C5A455CCAF5ED6BF6AD7C16CD8C170DDC87AD9C077E6D786ED
      E48FECE48CDAC474BA924AB0843EA97C34A1702AB0853CC4A056C4A056DDC978
      EAE089DAC474EEE590E9DD8ADFCC7AE6D984E0D179DAC771DECD75E3D57BDECF
      73D1B862C4A354C09C4EBC9549B38A3FB89146AD8038A6772FB1863CA87931A3
      742CA2722A9F6E27A6772FA1702998651F9D6C259B692295621C95611B8F5B15
      8E5913935F19905C168F5B15935F198D5812935F19915D17905C16935F199562
      1C935F1996631D95621C95621C98651F97641E9D6B249E6D269D6B249B692298
      651F97641E9B69229E6D269D6C259F6E2796631D94601A9967209F6E279F6E27
      96631D8A560D8B580D8B580D89550C87530A8A550F915D1797651C9B6A209C6B
      219C6B219B6922905B1980470A783E04753A046D3100682F00612800642E006F
      38056E37036D36027139067039036933006C3700713900895317A87735AE803B
      AF833DBC974BAF843A9A682187520C95611BA2722A9D6B2499672095621C8651
      0B8D5812996720B0853BC8A858C9AB5AB48B40A06F289562199C6B21A97D31B9
      9246C19F4EC19E50C4A354C9AB5AC09D4FC7A757C7A757C8A959CAAC5BCAAC5C
      CCAF5FC8A859C4A354C09D4FB68D42BC974AC19E50C09C4EC3A052C09D4FC19E
      50C09D4FBF9A4DBE994CBD984BBC974ABC9549BA9347BC9549C09C4EB99246B7
      8F44C5A455BF9A4DBA9347B99246C09D4FB99246BF9A4DC09D4FC09D4FC3A052
      C19E50C3A052C4A354D1B764D9C56FDBC871DDCC74D9C56FDDCB73D6BF6ACFB5
      62D0B663CBAE5DC29F51BE994CC29F51C8A858CCAF5ECFB361CDB15FCCAF5ECD
      B15FCEB260CEB260CEB260CFB361CEB260CBAD5CC4A354BD984BB68D42B1863C
      AE8138AD8037A5762EA97B32A77830A06F289C6A239C6A239C6A239A6821A170
      29935F198B56108A550F89540E87520C88530D87520C89540E844F098A550F8B
      56108B5610905C168F5B158F5B158E5A14905C16925E18915D17905C16905C16
      925E18935F1993601793601794621794611894611895631A98671D9A691F9562
      1993601794611895631A96641B96641B98671D9B6A2097641E98651F98651F99
      67209D6C25A4752DA87931A77830AA7D34B1863CB2873DAA7D34A97C33B3883E
      B78E43B2873DB3883BB68C3EBC9546B68C3EB28639B88F41B88F41B58B3DB78D
      3EB88F40B88F40B78E3FBA9242BC9545BC9444B88F40B99142B99142BB9343C0
      9C4AC6A451C6A451BC9744B28737AE8333AB7E2FAC7D2CAE802FAF8130AD7E2D
      AA7B2AAA7B2CAA7C2FA57529A7782AAD812EA97D279C6D178E5D088553008B58
      05996817A475279F6D228D570D7F4800824B028B550BA77927A47722A1741D9D
      6E1898691395670F95670F976911996B139769119565109667119868149B6B17
      9C6C189C6C188E5A0A824D007C4700804B008450008956038A57048654008450
      008854008D59038E5B058E5B028C59008B58008B58008D5A018E5B028E5C038F
      5D048F5E03905F048F5E018F5E019261029160018F5E008E5D008F5E008F5E00
      8F5E008F5E008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07501A07501A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B78F44B58F43B08A40B08A40AF883FAB8439A97E34A5792EA175289D6F239C6D
      239664228A551D6D3508551F00531A054913053E0D004312004C1A0058250068
      35067C4C13885A1D825116723E0A642E044E1B004513004C1600521C035E260B
      612A0A542000541C03571E05612703662F01673000763F097F48166A34095725
      0255220656220A532106501F005625006030006635007C44117C420F6E37006D
      36007B4507794303733E007E49078D57158D57158F5A188E591487520D87520C
      845007764000773F006830007E46068E581685500B794300713B007B44028E58
      16935E1C8E5818864F0F824B0987520D905C168E5A157D46046932007039007C
      45037C4601814B067F49037640007842007C4600824D078B561094601B9B6923
      A1702AA4752E9D6C26986520905C178D58138E5A158B5611834D097F49047C46
      017A44007A44007C4601804A05834D0988530E8C57128F5B168E591485500B90
      5C17A1702AA3742DA3742DA67730A3742D9B6923A1702A9D6C268E5A15925E19
      A2722BAE8139B78F44BF9A4DBD984BB0853BB3883EAE8339B1863CB58C41BC97
      4ABD984BC19E50BD984BBC974AC19E50C4A253C9AB5BD4B86ECDAD66D8BF74DF
      CB7CDCC776CBAC61AE813CA57531A5762FA4752EAE803BC29E54C8A75BD1B568
      D2B76AD0B367E0CF7CDAC376D3B86BDDCB77DDCC75DECD76DAC770D3BB67CFB5
      5FC5A553BE994CBB9448BC9549B89145BB9449AE8139A77830B0853BA3742CA2
      722AA06F289B6922A3732B9D6B2495611B97641E94601A915D1795611B905C16
      88530D89540E86510B86510B8C571186510B8E59138D58128C57118E59138D58
      128C5711915D17915D17925E1895621C935F1995611B97641E9B69229A682195
      621C94601A95621C98651F9A68219F6E279B69229967209967209D6B24A17029
      9F6E2796641B8D5A0F8D5A0F8E5B108E5B108A560D88540B8E5A1195631AA070
      269E6D26A1702997632182490C7C430780450E7B400A703801693200632F006D
      38007039036C35026E36056C34036F38056530006F3900905D1BA5762F976321
      955E21AB7C39B99247AC7F369C6A23A97B32AD80379B692298651F9B6922A879
      31A5762E96631D8C57119D6C25BB9448CBAE5DCEB260BF9C4BA87B2F94601A9A
      6822B1863DC4A254CAAC5BCBAE5ACFB75FD0B85FCBB15ACAAD59C8A959C7A55A
      C8A55FC5A05BC9AB5BC8A959C09C4EBF9A4DC4A354C5A455C6A556C5A455C4A3
      54C4A354C6A556C8A858CBAD5CCDB15FCFB361CFB562CFB562D2B865CFB361CA
      AC5BD6BF6AD2B865CBAD5CC8A858BD984BAC7F36B0853BB3883EB2873DB48B40
      B38A3FB89145C4A354D7C16CE0D178DECD75DBC871D6BF6AD9C46EDBC871CBAE
      5DC9AB5AC19E50B3883EAF843AB58C41BA9347C4A354CEB260CEB260CEB260CD
      B15FCDB15FCDB15FCAAC5BC7A757C8A858C29F51BA9347B48B40B0853BAC7F36
      A6772FA2722AA17029A06F289C6A2396631D97641E9C6A239D6B249A68219A68
      219A68219D6B2496631D87520C7F490386510B8E5A14824D07824C068B56108E
      5A148E5A14915D178F5B158E5A148D58128E5A148F5B158E5A148E59138E5913
      8E5A148F5B158E5A118E5C118E5C118E5C118E5B128F5C13915E159360179360
      178F5B158D59108D58128E59138F5B15935F1997641E95611B97641E996720A0
      6F28A2722AA87931A87931A97C33B0853BB38A3FB2873DAA7D34A97B32B38A3F
      B89145B2873DB28639B28639B88F41B3883BAF8336B68C3EB88F41B68C3EBB93
      43BA9242B88F40B78D3EB78E3FB99141B78E3FB68C3DBB9344C09C4BC6A451C7
      A552C39F4DBC9444B38838AB7E2FAE8132AD8031AE7F2EAE7F2EAD7E2DAB7C2B
      AA7B2AA97C2DA97C30A6782DA87C2DA678269667118857008856018C5906A172
      219E6D20925D148149037B44008953099D6B1EA87B299F701C9C6D1798691395
      651094640D95650E986A129C6E16986A12986913996A149D6D199E6F1B9A6918
      915E0E895505824D007D4800824D008E5A0A94620F96651294630E8E5D088652
      008551008551008854008D5A018E5C038D5A018A57008D5A018D5A018E5B028E
      5C038E5D028F5E038F5E018F5E019261029160018F5E008E5D008F5E008F5E00
      8F5E008F5E008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07501A07501A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B99246B79245B39141B49242B28E3FAF873CAA8036A67B31A3732B9D6C25A073
      2A966422926022855018753D0F6E340D632A0962260F4A14004712004B16005C
      22076E331574391A682F0E582100582101501B00541F015E2807622D0769350A
      683703582800582200531E004E1A005F27006D33096B3107672E065C2500511F
      004C1B004A1A00451800451A00552500653500703B03753D0A884F1C763E065C
      2700683300784202733E006C3800814A088D58138C57128B561089550C8E5B10
      9A6A1D95631A814A086D35007C44048B551395621D9A6822844F0A723B007039
      007B4303834C0C895212844D0C86510C8C57117C46017C44047E45088A53138E
      5816905C178D58137E4802794300743E0087520C9B6922A3742CA3742C9E6D26
      97641E915D1898652095611C935F1A8F5B168A551087520D86510C834D097D47
      027D47027D47027E4803824D088A55108F5B16925E199D6C269E6D27935F1A96
      631EA3732CA3732CA2722BA4752E9B6923925E198C5712814B06834D099B6923
      AE833AB89146B78F44B99246BA9347B48B40B89145BC974AC6A556C4A354C8A9
      59C9AB5AC8A959C09D4FC09C4EC4A354C9AB5AD2B866D3B86BCDAD65DAC376DD
      C877D2B76AC7A55AB78E44B38A40BA9348B78F45B99247C4A257C9A95DD4BB6B
      D3BA6AD0B367E2D17EE3D37FE0D07BE1D17CD5BE6AD4BC69D3BB67D0B663C8A9
      56C09D4CBE994CBA9347B89145B48B40B78E44AD8038B0853BBB9448B1863CB3
      8A3FB2873DA77830AC7F36A4752D9D6C259F6E279B69229967209D6C259A6821
      925E18935F198E5A148F5B1594601A8E591395611B94601A925E1894601A925E
      1894601A9A682197641E97641E9C6A239967209A68219D6C25A17029A17029A0
      6F289E6D269B69229A68219D6C25A06F289F6E27A06F289E6D269D6B249F6E27
      A2722AA07026A0722596651A9563189D6C229B6A208F5C138C580F915E159768
      1E9D6E26A0732A9664228550107A44067A43077E470B8755148856147F4D087F
      4C0A7E4B0E733E076B3403602A00693200602D006D39008E5E13A1732694601B
      874F138D541A9C69269E6D26A3742CB68D42C09D4FB1863C9A68218E59139B69
      229F6E27A4752DA3742C996720935F19A5762EC29F51D1B862D2BA63CAAC5CB7
      8C47A47533A47533B38C42C1A250CAB259C8AF55C5AC50C8AF57C8A959C7A45B
      C8A363C49D5BC29E54C4A253C09D4FBA9347C09C4EC8A858C7A757C9AB5ACBAE
      5DCBAE5DCCAF5ECDB15FCFB361CFB562D1B764D2BA66CFB562CFB562D1B764CF
      B361DAC770DBC871D6BF6ACFB562A3732B86510B87520C8B56108A550F8E5A14
      8F5B15996720B38A3FCFB562DECD75D8C36DD0B663CCAF5ECBAE5DD4BC68D0B6
      63C4A354B58C41A5762EA77830AE8339AE8339B89145C6A556CBAE5DCEB260CD
      B15FCDB15FCCAF5EC8A959C29F51BB9448B68D42B1863CAD8037AA7D34A6772F
      A06F289B69229D6B249C6A239B69229A68219B69229B692295611B8E5A149764
      1E96631D98651F96631D8D5812844F09824D07824D0787520C844F098C57118E
      59138D5812905C168F5B15905C16915D17915D17915D17915D17915D17905C16
      905C16905C168F5C13915E15925F16915E15905D14905D14915D17925E18915D
      178D58138B56108C57128D58138C57128F5B16935F1A96631D9967209C6A23A7
      7830A77830AB7E35AA7D34AF843AB48B40B38A3FB2873DAA7D34A97C33B68D42
      BB9448B2873DB3883BB48A3CB78E40B78E40B88F41B78D3FB3883BBA9243BD97
      46BC9444B99141B78E3FB68C3DB68C3DB88F40BB9343C19D4CC6A452C7A552C0
      9A49B48A3BAE8033AE8333B18636AC7F30AD8031AC802EAA7E2CA97D2BAA7E2C
      AA7E2CAA7D2EAD8037A5762E9A6A1E8D5B0C825100885803976A15A174238F5A
      10864F097E4501824A06955E16A57426A67722A0701A9B6C169768128E5D0887
      55008D5B069869139D6E18996A149869139B6B179D6E1A9D6C1B9664148D590A
      814C0079440079440083500092600D9A6A16996A1497681295651093620D915E
      088C58028652008450008753008B57018E5B028E5B028C59008C59008D5A018D
      5A018E5C018E5D028F5E03905F04926003915F028F5D008E5C008F5E008F5E00
      8F5E008F5E008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7400A07501A07501A07501A07501A07501A07501A17602A176
      01A27702A27702A27702A27702A27702A27702A37803A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B99246B89243B38D3DAF8A38AE8637AF843AA97E36A3732F9F6E289F6E289D6C
      269868229B6A278D5B1A8552148854197F4A13783F136E30145B1E074714004A
      14004E18005019004B16004915004B16005F250A632B0D622C08673308653301
      6131006737016631096A3010501D00511B00642A06652A066026045F2504511E
      004718004D1D005E2A01683507713D0979450A7E490D87521A854D167941076D
      37007741018A561484500E6C380068330088530E8B56118D58138E5A148E5A11
      9562198E5A14864F0F8B53168F591987501094601B9D6B2586500E804907743C
      00713900763E00824A0A7B4402794200804A05713B00763E008C5417905A1A81
      4909854F0D8E591486510B8E5A149B6922A17029A6772FA1702995621C8E5913
      8E5A14935F1994601B8E5A158F5B168E5A1588530E86510C844F0A7E48037F49
      04814B06814B06804A05824D088B5611905C17925E19925E199E6D279A682296
      631E97641F915D18935F1A9C6A2496631E9C6A249A68228F5B1695621DA4752E
      A4752EA5762FA87931A3742CA97B32A97C33AA7D34AC7F36BC9549BB9448BA93
      47BA9347B89145B3883EB48B40B99246B99246C09C4FC8A75BBE9750C8A85CCA
      AB5EC39F55C09C4FB78F45B58C42BD984BB1863DB89145C4A355B78E44BE984F
      C7A758C39F55D2B768CFB264CEB163D2B869C8A95AC9AB5BC9AB5AC8A858C7A8
      55BA9445B78E43B48B40B78E43B58C41B99247B2873EAD8037B78F44AE8138B3
      883EB0853BA3732BA87931A1702998651F9C6A2398651F94601A95611B925E18
      8F5B1595611B905C16905C1694601A8C5711915D17905C168E5A148F5B15915D
      1795621C9A682194601A915D1796631D96631D98651F98651F9967209C6A239F
      6E279F6E2797641E95611B9A68219D6C259C6A239E6D269D6C259A68219A6821
      9D6C259D6C259F6F259E6E24A07026A4762BA5772C9D6D238F5C138551088E5D
      1495651E95631E905D1B8D59177E48086E38006E3800855214905F1E89581387
      55138755177E4A0F703A065E2A005E2A00673300713E00764400814D028B5611
      90591D90581E915C1A9967209B692298651FB68D42D0B663BC974AA3742C9663
      1D96631D9B6922A97B32B3883EAD8037A2722A9D6D23A87C2EC7A855E0D179E2
      D17ED3BB6FC7A560BD9853B68E47B99546BF9F4CC4A851C7AC56C3A052C09A53
      C39D59BB914FBC954DBF9A4DBE994CB3883EB99246C5A455C3A052C8A858C8A9
      59C9AB5ACBAD5CCBAD5CCBAD5CCCAF5ECEB260D0B663D0B663CFB361D1B764CD
      B15FD6BF6AD7C16CD1B764C8A959A06F287D47017B4500804A04804A0485500A
      89540E96631DB3883ED1B764E0D178D5BE69CCAF5ECDB15FCCAF5ED7C16CDECD
      75C7A757AD80379D6B24A77830B48B40B38A3FBC9549BE994CC8A858CDB15FCB
      AE5DC9AB5AC8A959C3A052BB9448B2873DAF843AAA7D34A4752D9E6D269C6A23
      9D6B249D6C259967209A682199672098651F98651F98651F96631D95611B9A68
      21935F19915D17935F19915D17905C168E591389540E85500A824D0789540E8B
      56108C5711905C168F5B158F5B15905C168F5B158F5B158F5B158F5B158E5A14
      8E59138E59138C580F8E5A118F5C13905C16905D14905C16915D17935F1A8F5B
      168E58168F5B16945F1D95611F955F1F95611F9864229D6B259E6D269F6E27AC
      7F36AB7E35AE8339AF843AB78E43B89145B68D42B38A3FAE8138AD8037B78F44
      BA9347AF843AB3873AB58B3DB68C3EB99142C09C4BB58B3DA9792EB88F41BC95
      45BB9343BA9242BA9242B88F40BA9242C09C4AC8A854C7A553C29E4DBA9242B3
      8739AE8134AE8033AE8132AE8132A97C2DAC7F30AD812FAA7E2CA97D2BAB7F2D
      AA7E2CA8792B97681E8C5A11824F04824F038F5E0F9D6F1F99691C87530A7F47
      018047038C5410A06D26AB7B2EA777259F6F189D6D169869139A6A1698681493
      610E8E5C09905E0B9564119969159C6C189D6D1C9C6B1A915E0F824D007A4400
      7C4600814B008E5A0A976713A1731EA0721D9A6B159A6B15996A1493620D9562
      0C93600A8E5B058A56008753008753008A57008D5A018C59008C59008C59008D
      5A018E5C018E5D028F5E03905F04926003915F028F5D008E5C008F5E008F5E00
      8F5E008F5E008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7400A07501A07501A07501A07501A07501A07501A17602A176
      01A27702A27702A27702A27702A27702A27702A37803A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AD8801AE8A02AE8A02AE8A02AE8A02AE8A02AE8A02AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B68D42B58D3FB38B3AAF8636AD8334AD7E35AA7C37A97634A36F2D9E6927A06C
      279C6A2496631D905F168F5F149060158D5E13885811824D117D46106F380760
      2800582100582000551D004E17004915004D18005A2104642B0A642C07602A00
      6530026C380B6F3B145E2B05501E004D1B00551E005E25025F2402561F00521E
      005B2700663102753F0B814D1288551793601E9F6F2CAB7E3B8853137742007B
      470286530E87550E895710814D087039006F3800743C00874F128C5515885111
      864F0F743C00864D11945D208E5717854D0E8F5B1694601B8B551387510F8952
      12773F006B33006F38007740007B44027D47027D47027840007A42027C440480
      480889531195601E9E6D27A3742DA97C339F6E2799681E95631A8F5C138B570E
      8B570E8B56108B56118C57128C57128A551087520D834D09824C07824C077E48
      03824D08814B06834D09844F0A844F0A8C57128E591485500A8D58128A550F88
      530D86510B834D088A550F8F5B158B5610925E1895621C96631D98651F96631D
      925E18905C16935F198E5A14905C168E5A148F5B1594601A97641EA06F289C6A
      239B6922996720935F1995621C9B69229967209D6C25A1702AA06E2BB0853CB2
      873EAE833AB2873DAC7F36A97C33AE8437A6772FA97C30AF843AAA7D34AE833A
      B78F44AD8038BD984CB89146B78E44BB9449B68D42B68D42BC974AB68D42B388
      3EB78F44B78E43B58C41B78F44B58C41BD984BB1863CA3732BAC7F36A3742C9E
      6D269D6B249A68219C6A2395611B8C57118F5B158E591386510B89540E88530D
      824D078E5913824D07844F098A550F824C0686510B844F09824D07844F098A55
      0F89540E915D178C57118A550F8D581287520C8C57118C57118E5A14905C1692
      5E1894601A95611B935F19905C16925E18915D1796631D99672095621C935F19
      97641E9A68219F6E289D6B259C6A249D6B249D6B249C6A2393621B86540D814D
      0787540F87540F824D0B824D0C84500E76430162300066310067310075400884
      51168654168452147D4A0C703D006F3B007643027B47027A46017B45007E4705
      884D11935B1BA3732CA4752D9D6C25915D178B5610A6772FC5A455BF9A4DBF9A
      4DB3883EA778309E6D269D6B24A97B32B58C41B58D3FB08737A47729AE8336CB
      AC5FE4D885F4F29CECE796D8C479C9AC65C09F59BA944CC3A355C8A859C29F51
      C19E50B89145B38A3FB68D42B0853BAE8138B48B40B78E43B78F44BD984BBD98
      4BC09D4FCAAC5BCDB15FC9AB5ACCAF5ED1B764CFB361D3BB67CFB361D1B764CF
      B361D4BC68DDCC74D4BC68C9AB5A9F6E279D6C25AB7E35AC7F36AB7E35AC7F36
      B78F44BA9347C29F51E4D87DDDCB73D8C36DCBAD5CCEB260D1B764D2BA66DDCB
      73D2BA66BA9347A77830AA7D34B78E43BE994CC29F51C3A052C29F51C4A253C8
      A858C8A858C09D4FB89145B38A3FAE8138A5762EA4752DA3742C9B692297641E
      9B69229B692297641E99672096631D9A682199672095621C9B69229A68219764
      1E95611B915D178E5A148E5A148F5B15905C16915D1789540E824C06834D0888
      530D86510B89540E8E5A148E5A148C57118E5A148F5B158D58128D58128F5B15
      905C168E59138C57118E5913905C16905C178F5B158E5A158E5A158E5917915C
      1A8B5414925D1B8A53138A53139963269C6827A3702FAA7D35A87931A97C33AE
      8339B3883EB48B40B78E43BA9347BB9448B99246B68D42B58C41B78E43B99246
      B78F44B58C41B58B3DB58B3DAF8336B3883BA37328A37328AC7E32AA7C30B48A
      3BB78E3FB78E3FB78D3EBC9545C5A350C8A854C6A451BB9343B3883AAE8134AF
      8335AF8335AD7F32AB7D30AC7E31AB7D30AC7E31AB7E2FAA7D2EAC7F30AA7D2E
      A06F229561158252037B4A0086550A96671FA06E2B8E5818763E007E46068B52
      119C6722A9792EA8792BA0701F9B6C169B6A139A69129868149A69189D6C1B9D
      6D1C9867169360109461119968179D6D1C905D0E8955067E48007B4500824B01
      8751079562169E6E1DA3761FA2751E9E701A9D6F199C6D179A6B159C6D179563
      0D93600A94610B95620C8E5B058551008652008E5A048E5B028D5A018D5A018E
      5B028F5D04905E058F5E038F5E03915E048F5C028E5C008E5C008E5D008F5E00
      8F5E008E5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07501A07501A07501A07501A07501A07500A17601A176
      01A17601A17601A17601A27702A27702A27702A27702A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      B99246B89243B89342B68F3FB48A3CB2853BAF7F3BAB7937A5722FA16C2A9E6A
      259D692298671D96651A976818986A189567128E610D8E5F0E8B5D1088571283
      50127C441171380A632A02582100531E00521E00562100612900632D03642C01
      602B00602B005829005324005523005823005C2500622900662D02642C006C35
      02763F09804C118B581A92611F976820A3752AB086399B6B257B47027B470288
      560F895710814D078957108A57128D57157E46066A3200733A0082490D834B0F
      7F460A7239007138007D4407885111895212834D09814B0686500E905B198B54
      14743C007038007E4508854F0D8C56148C57127F4904794200733B00773F008C
      5515A06E2BA97935A87932A677309E6D2697641E956219956219905D148D5910
      8D59108C57118B56108C57128D58138D58138B561187520D834D09814B06824D
      08844F0A814B06824C07824D08844F0A8E5914905C178B56108F5B1589540E85
      500A834D08814B0588530D8E5913844F098A550F8D58128E5913905C16905C16
      8E59138E591389540E89540E8D581289540E8C571194601A97641E9C6A23A374
      2CA170299D6B2494601A94601A95621C935F1996631D9C6A239B6922AB7E35AC
      7F36A97C33AE8138A87B2FA5772CA6782DA7792EA87B2FAD8135AC8034AE8138
      B58C41B3883EB68D42B58C42B68D43BB9449B89145B68D42B78E43AE8138B388
      3EB89145B99246B99246BC9549B89145C19E50B78F44A3732BA97B32A17029A0
      6F289D6B2494601A97641E95621C8E5A148F5B158E5A1488530D8A550F89540E
      824D0788530D824C06824D0787520C804A0485500A844F09824D07844F098550
      0A844F098D581287520C85500A8A550F86510B8C57118C57118E5A14905C1691
      5D17925E1895611B95611B935F1994601A925E1896631D9B69229A682198651F
      96631D935F1A9F6D2AA06E2B9B69238E5A1587520C8E5913905F188B58137C48
      037D48067C47057B45057F4A08814C0A7947026F3A00602A005722005A240067
      3002753E0C814C1589571A8D5C1B885614845210764000743E00864F0F8C5614
      8E5612955F199C6A239D6C259A68219A682194601A925E18A6772FB48B40BB94
      48BF9A4DC4A253BC9549AA7D34A5762EAD8037B1863CC3A250C8A956BF9A4DB7
      8F45BE9952C8A862DCC980F7FAA6F7F7A7E9DF95D3BB75C7A560BC944CB38B3D
      B7913FB38B3AAD8135B58C41B48B40B1863CB38A3FB38A3FAE8339AC7F36B48B
      40BB9448C8A858CFB562CFB562D2B865D5BE69D2BA66D1B764CEB260D2B865CF
      B361D1B764D9C56FD2BA66C8A959A77830B0853BC8A858CCAF5ECBAE5DCDB15F
      CFB562C4A354CAAC5BE6DC80DFCF76D9C46ECAAC5BCEB260D2BA66D6BF6AD3BB
      67C8A959BB9448B58C41B78E43B78F44BA9347C09D4FC4A354C4A354C29F51BD
      984BBC9549BC9549B78E43AF843AA4752DA2722AA170299E6D269B69229F6E27
      9F6E2796631D9D6B249C6A239A682199672096631D9967209D6B2498651F9A68
      21905C168E5913935F1994601A8E5913905C169967209B692289540E7B450079
      43007C4600824C068A550F8F5B158E59138F5B158F5B158E5A148E5A148F5B15
      8F5B158F5B158D58128E59138E5A158F5B168F5B168E5A158E59178E59179560
      20925C1C804808511F00562200915A1DA87637A77634AB7E36AC7F36AF843AB3
      8A3FB68D42B78E43B89145BA9347BC9549BD984BC09D4FC3A052C09C4EB89145
      B58C41B78E43B3873AA9792EAC7E32B0843798641B945F169A671DA37227A777
      2BB28638BE9847C7A552CCAE59CBAD58C29E4CB68C3DB3883AAF8335AE8033B0
      8436B28638B18537AF8335B08436B08436AC7E31AB7D30AD7F32AA7D2E9D6B20
      8C570B7D49007F4D009669199E70268C59147D4407673000683000935C20B180
      40AA79339F6D23956314956310986A12996B1198671096641499671A9D6B1E9F
      6E219F6E219E6D209A69199664158A5607794300733D0076400086500699651B
      9F6D23A6762AA27321A1741D9D6F199C6D179D6E189A6B159667119667119E6E
      1799681194610B93600A93600A905D078A56008450008956008D5A01915F0692
      6007905E058E5C038F5E03916005905D038F5C028E5C008E5C008E5D008F5E00
      8F5E008E5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07501A07501A07501A07501A07501A07500A17601A176
      01A17601A17601A17601A27702A27702A27702A27702A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C29F51C19E50C0994CBD9549BA9145B68A41B2843CAE7D39AB7832A9752F9F6B
      269E6A259D69229D69229E6C22A06E239E6C21996A1A976A14956A12956A1595
      67178E5D14824D0C764204713B036F3A036C37026B36016D36026E39026D3700
      6531005D2B00431A00491D005827006631026E3804774109814C108550107D47
      078B571592621D95651E9D6D21A170239C6B1A9562166D3800713B008C58168E
      5C1782500983510A9D6F27A57831996523824B0B753C00824A0D8E5619935C1F
      955E218A5215773E01703800784000864F0F8A551089540F87510F814A087840
      00753D00895114945D20854F0D834D0B8D581389540F844D0C8B5513986422A8
      7834AE833AA97C34A1702A9C6A249A682194601A9360179360178F5C138D5910
      8C580F8B56108D58128C57128C57128D58138D58138A551086510C824D08844F
      0A844F0A804A05824C07834D0986510C8E59148F5B1688530D8C5711844F0982
      4D07824D07824C0688530D8D581287520C8B56108C57118B56108D58128D5812
      8B56108C57118C57118E5A14935F19905C1694601A9F6E27A17029A17029A373
      2BA3742CA4752DA06F28A17029A3732B9D6C25A06F28A87931A5772CB38A3CB3
      8B3DB08639B38B3DAE8435AB8032AE8435B28A3AAE8435B08738B38C3CB38B3D
      B78F41B78F44BE994CC19E50C09C4EC29F51C29F51C19E50C09D4FBA9347BF9A
      4DC3A052C3A052C29F51C09C4EB78F44BF9A4DB78F44AE8339B1863CA97C33AC
      7F36A879319B69229E6D26A1702999672095621C95611B905C168E5A148E5913
      88530D88530D844F09834D0888530D824C0689540E89540E87520C89540E8A55
      0F89540E915D178B56108A550F8F5B158D5812925E18925E1895611B95621C96
      631D96631D9967209C6A239D6B249A682195621C95621C97641E9967209C6A23
      996720925E199763219B67269A67248D57157F4904804A0583500B84500E7A44
      04743E006F3B00733F017845047A47057A48037B460A68310056200044120045
      1200531D00612A056D36057743088251109565248D571B7A430782490C87520D
      8A5509956213925F169C6A2395621C96631DA2722AA170299E6D26A2722AA170
      29A2722AB58C41CFB361D6C06BCAAC5BB78E43A77831AE7E3EC39D58D7C06FDE
      CD76D5C16BC6AB5BC1A25BC8A967EAE198F7F5ABF8F9ABE6D78FC5A05BAC7F36
      A9802CA87F28B38B3BAE8339AB7E35AE8339B2873DAE8138AE8339B78E43AD80
      37B38A3FC29F51CEB260D0B663D0B663D0B663CEB260D2BA66D2B865D6C06BD2
      BA66D2B865D9C46ED5BE69CBAD5C9D6C25A97C33C4A354C4A354C3A052C9AB5A
      C7A757B2873DC8A959E0D077DBC871D6C06BC7A757CAAC5BD1B764D6C06BCEB2
      60B68D42B3883EC7A757CCAF5EBE994CB78E43BC974AC29F51C4A354C19E50BC
      974ABD984BC09C4EB78F44AA7D34A879319E6D269A68219B69229A68219A6821
      9D6B249D6B2495611B94601A9A682199672097641E9E6D269D6B2495611B9764
      1E925E188D58128D58128F5B15905C16905C16905C168B5610824D077B450080
      4A0488530D89540E8A550F8E5A14905C168F5B158F5B15905C16905C168F5B15
      8F5B15905C168E5A158E59148E59148E59148E58168E59178E59178E58169964
      249A6525864D11521F00572300976124B28443AE803DAE8139B2873DB78E43B8
      9145B99246BB9448BC974ABE994CC09D4FC09C4EBC974ABC9549BE994CBC974A
      B0853BA2722AA97B2FB99142BD9747BC9445BC9546A6762B8049008E5910AC7E
      31BB9343C8A753CAAB56C4A04EBC9444B3883AAD7F32B68C3DB28638AE8033AE
      8033B08436B18537AF8336AE8034A7792EAC8034AD81359F6F258A570C7C4700
      7F4B0088550A9D6D2097671A855108743E00784000733A00683000733900A06C
      2F9A6525925E198F5D129262119869139B6E129C6E169C6D1D9D6E229E6F239E
      6F239E6F2399691D8A570B7A4600754100794500784400713D00845106A37528
      A97C30A17326A375239F701C9A6A169A6A169D6D199D6D199B6C16996A149A69
      139D6C169B6A1395620C905D078F5C068B5701834F008754008B58008E5C038F
      5D048E5B028D5A018E5B028F5D04905D038F5C028E5B018E5B018E5C008F5D00
      8F5E008E5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07501A07500A07500A07500A07500A07500A17601A176
      01A17601A17601A17601A27702A27702A27702A27702A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C4A253C4A253C49E52C29C50BE954BB98E45B3853DAE7E37A97931A87630A36F
      2AA16D289E6A259E6A25A16D28A4722CA6752DA6762BA175229F741E9C6F1A96
      6A189162138C5C0F88590F885712875513895716875514835012804C0E804A0C
      794605723E036432006431026E39077A450E804B0F8955138F5E179360179262
      17996B1F9D7223A27728A87C2DA273228E5A0B7E4700723A00653000723C0083
      4D0E8E5A18885510905E199765238B55138F59199B6726925C1C8048088E5818
      996523804907834C0C7A4104713900713A007741007E48037E47057A43017E46
      06773F007E4508834C0C80490787510F94601A95611B9F6E28AD7F3AB48A43AE
      803BA2722B9B692396631E935F1A97641E925E18905D148F5C138C580F8A560D
      8C580F8B56108E59138C57128B56118A55108A551088530E86510C844F0A804A
      05814B067E4803824C0785500B85500B8A551088530E824C0686510B824C0682
      4C06834D08814B0585500A87520C834D0887520C86510B86510B88530D87520C
      86510B88530D88530D89540E8E59138C5711915D179A68219A68219B69229D6B
      249D6B249E6D269B69229C6A239D6B2497641E9A6821A3752AA07026AE8336AE
      8437AB7F33B08639AA7E32A87B2FB08738AE8336A87C2EAC8133B08738B18839
      B2883BAC8034BC9549C29F51C09C4EC09C4EC09D4FC09C4EC09D4FBD984BBA93
      47BD984BBE994CBF9A4DBC974AB48B40BD984BB89145AE8339AF843AA77830A9
      7C33A778309A68219C6A239D6C2599672094601A94601A8F5B158A550F8A550F
      85500A834D08814B057F4903824D077D470185500A844F09824D07844F09834D
      08834D088C571185500A834D088B561087520C8D5812905C16925E1894601A94
      601A94601A95611B98651F9A6821A06F289A682195621C925E18935F199A6821
      9D6B24986520925D1B905B1995601E95611C87520D7A44007540007741017943
      05723B006D3800703B00743F037541037845047C470B743D0B672E064D170040
      0E00491400531B025E2500673000703C017440027D480C945F239D6A298B5610
      834F0094611196651A98651F925E1895621C9C6A2394601A935F19A170299562
      1C96631D97641EA3742CBF9A4DDDCB73E6DB7FDFCD79C59E5FBE9357C09855D4
      BB6BEAEA89F4FD97E5DF87D0B870C4A066D2B67BEEE49FFFFEB3EBE38FBF9A4E
      A073229769179E6F23A77830AE8138B0853BB1863CB0853BAF843AAF843AB186
      3CB78F44C4A354D0B663D3BB67D2BA66D1B764CFB562D0B663CFB562D4BC68D1
      B764CEB260D5BE69D4BC68C8A959A4752DAB7E35C4A354C09D4FBD984BC6A556
      C3A052AE8339CBAD5CDCC972DDCB73D9C46EC9AB5ACBAD5CD2B865D5BE69C8A8
      58AF843AB0853BCAAC5BD8C36DD0B663C4A253BC974AC09D4FC09D4FBF9A4DBC
      9549BA9347BB9448BA9347B78E43A6772F9D6C2597641E9A68219D6B249C6A23
      9A682198651F9E6D2697641E9B692296631D935F199A68219A682196631D9663
      1D95611B915D17905C1695611B97641E905C1686510B743E00804A0488530D90
      5C1696631D935F198E5913905C16925E188F5B158F5B15925E18925E188F5B15
      8F5B15915D17905C178E5A158D58138C57128D58138E58168E58168E58168C56
      14945E1EA06D2C9B6528986323A47233A97836A97836B2873EB78F44BC9549BB
      9448BB9448BE994CC29F51C4A253C29F51C3A052C19E50BF9A4DBE994CBC9549
      B38A3FA97C33AB7D31BA9243BF9949AD7F33A27026A5752AA9792EB58B3DC7A5
      52CBAD58CCAE59C29E4CB68C3DB08436B18537B48A3BB08436B38739B3883AB2
      8638B18537AF8335AE8034AB7D31B1873AA87B2F956219804A04784200834D08
      95611BA06F288C580F713C006D3800814B058E5A14915C1A804808652E006730
      006D35007A420287520D915F14956514976B13996C169A6A1D9E6E249F6F2599
      681E8E5C11824F04784400703C0077430089560A8C590D7B47007B4700926015
      9F70249D6E219D6C1B9D6E1A9F701CA1731EA2741FA2741F9F721B9869139968
      129D6D179A69128E5B058753008854008D59038E5A048E5B028B580088550088
      55008A57008C59008D5A018D5A018E5B018E5B018E5B018E5B018E5C008F5D00
      8F5E008F5E008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07501A07500A07500A07500A07500A07500A17601A176
      01A17601A17601A17601A27702A27702A27702A27702A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C4A354C4A355C5A358C4A257C29F52BD984CB58C41AE8138A87B2FA4752DA576
      2FA3732CA16F2CA16E2DA47331A87735AB7937AD7C39AD7C38AF7F3BAD7D36A3
      742C9E6D269D6C22996A2096671F94631C966520966520915F1A8E5B198F5A18
      8C5816895414875518824F148551168C561A8F5919955E1A9B681E9D6A1FA477
      29A37625A37928A9802EA6792C956118864F09864D0D8B52187A410B6932006C
      36008D581A905C1C8652107E49076D3700753E008852108D5715824C0785500B
      935F1996631D9B67268E571A743C00683200733D007C4601824C078C5614824A
      0A7E4606763E00763E00844D0C95601EA5762EB2873DB1863DAF843BA677309A
      682294601B96631E97641F95621D8E5A148B56108C57118C571189550C89550C
      8C580F8C57118B56108C57128B561188530E85500B824D08814B06814B067B45
      007D47027C4601814B06834D09834D0985500B824D08804A04844F09804A0481
      4B05824C067E4802814B05824C06844F0988530D89540E8B56108E5A148E5A14
      8E5A14915D178F5B158D58128F5B15905C1694601A9967209967209D6B24A06F
      289F6E279E6D269A68219A68219C6A239967209F6E279F6F259D6C22AB7F33AC
      8034AA7E32B1873AAD8135AB7E35B58D3FAC7F36AC8034B38A3CB1873AB58D3F
      BC9747B08639B89145C29F51C29F51C3A052C29F51BE994CBD984BBB9448BB94
      48BD984BBD984BBD984BBC974AB58C41C09D4FBC9549AF843AB2873DA87931A8
      7931A778309E6D269E6D269A682198651F935F1994601A8E5A1489540E89540E
      86510B87520C844F09824C0686510B824D078A550F88530D85500A87520C8853
      0D8A550F925E188D58128C5711935F198E5A14935F1994601A95611B96631D96
      631D96631D96631D98651F9B69229D6C259B692298651F935F198F5B1595611B
      9A682198651F95611C8E59148E5914915D178B56107F4904743F00703A00713C
      016E38006C36006B35006C3800703C01723F0273400376440975400F632A0A4C
      16004611004D15045C21096A310E6E37066833007440028D581895611C905D14
      94611299681888540B8F5B159967209F6E27A2722A9F6E2796631D915D17AE81
      38B2873DAD80379E6D2698651FA77830C5A455DDC877F2E799FBF6A8E5D388C9
      A761C5A85DCEB667DDD17DF6FDA1EEEC9BD6BF7CC39E64C8A465D9C478E5D881
      D7C068C09C4AA6782DA06F28A17029A97B32AD8037AC7F36AE8138B0853BAE83
      39B68D42C09C4EC8A959CEB260CEB260CDB15FCFB361D0B663CFB562D2BA66D1
      B764CDB15FD6BF6AD7C16CC8A858A2722AA87931C4A354C4A253C29F51C7A757
      BF9A4DB0853BD2B865DBC871DECD75D9C46EC8A959C9AB5ACFB361CCAF5EB992
      46B58C41B99246C4A354D0B663D9C56FD8C36DCBAE5DBC9549B89145B89145BB
      9448B89145B2873DB2873DB78E43B3883EB3883EA4752D905C168C571195611B
      94601A8B56108F5B158C5711915D1796631D95621C95611B935F19915D17925E
      188E59138E5A1495621C95621C8E591388530D89540E814B058E5913915D178E
      59138F5B15905C168F5B15925E18925E188F5B158E5A14915D17925E18905C16
      8F5B15915D17905C168E5A148D58128D58128E5A14905C17915D18915D188C57
      1288521095601E9E6B2A9A6724955F1F9C6926AA7C37B78E44BC9549BF9A4DBE
      994CBD984BC09D4FC3A052C4A253C3A052BD984BBA9347BC974AC09C4EBE994C
      BC974ABB9448A8782DB08437AB7D319E6C229D6B21B3873ACBAD59CBAC58CDAF
      5AC8A753BF9948B78E3FB48A3BB48A3BB48A3BB48A3BAF8335B28638B28638AF
      8335AE8034AE8135AE8437B08639A3732B8B56107640007D470294601B9D6B25
      8D5A157944026C3600713B008D5910A375289D6E219563178C590E794300662F
      00622B00632B00713800824C0A915F14986A189B6D1B9A691F9A682195611B86
      510B743F006C3800764200845105996A1A9B6C1C9667178D5A0E7D4A00764200
      824D029160119B6A199F6F1EA374229E6E1D9A6918A0701FA477229E6F1B9F6F
      199765108C58038551008753008E5A0494610B95630D9361088E5C038A570088
      55008956008C59008D5A018D5A018E5A018E5A018E5B018E5B018F5D008F5D00
      8F5E008F5E008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07500A07500A07500A07500A07500A07500A17601A176
      01A17601A17601A17601A27702A27702A27703A27702A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C5A455C5A456C19D53C29E54C3A053C09D4FBB9546B48C3EAC8336A97D31A87D
      33A97B33A97B36AC7D3AAE803DAF813EAF833DB1813EB38443B78847B68746AE
      7E3BA97935A97B33A57930A07328A073289F73269B6C2299681E9967209A6822
      976321935E1C905C1C8F5B1B94611F9A68229B6720A06B24A8752BAD7C31AE80
      34B3883EAE863BA2742D93601E885210844D0C8951148B541C935D257F470D61
      2C00753F018954148F5C1A8A561486500E753D006E37007F4707935E1C8B5611
      804A04925E199A65258A5215733C007740008E59148E591485500B8E59148B55
      138851118149098D5616AB7D38B68D43AE8339AA7D34A6772F9C6A2495621D99
      67219B692396631E8F5B168D58138C57118A550F8D58128E59138A560D8A560D
      8B570E89540E87520C88530E88530E85500B814B067D47027B45007A44007B45
      007D47027A44007F4904824C07814B06844F0A824C07804A04834D087E48027E
      4802804A047E4802824D0785500A824C06844F0986510B88530D8C57118B5610
      8A550F8E59138E59138A550F8E59138F5B15925E1895611B95611B9B69229967
      209967209C6A239967209A682198651F935F1998651F99681E97651CA6782DA7
      792EA3752AA97C33A6772FA5762EAB7E35A3742CA87931AE8339A6772FAA7D34
      B58D3FAB7E35B38A3FB89145B78F44B99246B58C41B0853BB3883EB1863CB287
      3DB48B40B2873DB1863CB0853BAB7E35B58C41AE8138A77830AA7D349F6E279D
      6C259D6C2597641E96631D8E5A148B561088530D88530D824D07804A04804A04
      7C4600804A047E48027C4600814B057D4701834D08814B057F4903824C068550
      0A88530D915D178C57118C5711935F198E5A14915D178F5B158F5B15905C1691
      5D17905C168E5A148F5B15915D1797641E98651F9C6A239A682195611B935F19
      94601A905C1694601A8E5A148A560D89550C89550C88530D7D48066D38006833
      006A3300683100652E006530006A35006D38006D39006E3C01794511753D155E
      25054513003F0F004C17005D25046B32087B4310824F117440006E39008A560D
      A16F2499651C96631D96631D95621C8A550F8E5A14A97B32AE8138A06F289460
      1AA17029B1863CBB9448BA9347AE8138A6772FAA7C37D1AF6AEEE094FFFEADFC
      FEAAEFEC9AD9C57DC3A262B89255DFD086F4F6A2F6F9A3C8A9649C6A2BA47430
      C5A253DCC770DAC770BA93479D6B2495621CA06F28AC7F36B0853BAC7F36B58C
      41BE994CC5A455CAAC5BCFB361D0B663CFB562D2B865D2BA66D2B865D3BB67D3
      BB67CFB361D7C16CDDCB73CAAC5BA3732BA97B32C6A556C7A757C8A858C7A757
      BB9448B68D42D6BF6AD8C36DDBC871D4BC68C4A354C8A858CBAE5DC4A253AD80
      37B38A3FBF9A4DC7A757C8A959CEB260D9C56FE3D57BCDB15FBC974AB1863CB2
      873DB58C41B0853BAB7E35AA7D34AD8037B68D42AE813895611B824D07814B05
      86510B8C5711834D0885500A85500A915D1796631D905C168F5B158E5A14935F
      19925E18905C168A550F834D08824C0688530D905C168D5812915D17905C168B
      56108C57118F5B158F5B158E5A14905C168E5A148E5A148F5B15915D17915D17
      905C16905C168E5A148E5A148F5B15915D1794601A97641E9A68219B69239A68
      219A6822A3732CAC7F37AB7E36AA7C37AE833AB3883FBC9549BF9A4DC29F51C3
      A052C29F51C19E50C09D4FBF9A4DC09C4EBC974AB2873DA77830AD8037BB9448
      C09C4EB99246B78D3FB58B3DA37328A5752ABC9546C8A855D2B761CAAB57BE98
      47B99141B48A3BB38739B3883AB3883AB3883AB38739B68C3DB18537AE8033B0
      8436B3883BAF8336A2732896631D7A44007D47028A5510976321925D1B7C4503
      6935006631008952129E6C29A5772CA274269B6D1B90600F8A5809865308824D
      08753C00652E00612A006D3500824A0A9160199A6B2396631E87520D7640006E
      3800703B007B47008E5B0F9C6C1FAA802EA377269B6C1C996B198E5D0C7B4900
      7543007644008C5808956212A0701FA172209B6A19A0701FA375209A6A168F5C
      078955008551008B570293600A97650F9968119A6912915F06915F06905E058D
      5A018A57008956008A57008C59008D59008E5A018E5B018F5C028F5D008F5D00
      8F5E00905F008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07500A07500A07500A07500A07500A07500A17601A176
      01A17601A17601A17601A27702A27702A27703A27703A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C29F51C19E50BD9A4EBC9A4CBC9949BA9747B79443B48F3FB08C3CAF873AAC85
      3AAE843BB1883FB58E44B79247B79245B48E40B68E40B88E43BB8E45B88C46B5
      8743B18440B18440B0853CAE8339AE8536AB8031A6792BA37629A37429A4722C
      A36E2DA06A2CA06D2CA06B29A37328A9792BA97727AB792CB28136B68542B787
      4CB27F4B9E6837854D1D7C44117E490E82500F8753119F6E2D9460228D581886
      52108A5712895611976721A67834925C1C844C0F773E026F370081480C8E571B
      824A0D7A41047C4306783F02763F007E470585500B814B05814B068B5611935E
      1CA16F2CAC7D3AB28541B48A43AE833AA4752DA1702999672095621C98651F9D
      6C2597641F88530E804A05824C078F5B158E59138F5B158E5A148A550F88530D
      88540B86510B844F09834D09814B067E48037C46017A44007A44007A44007C46
      017F49047D4702814B06824D08824C0785500B834D09804A04844F09804A0480
      4A04824C06824C0688530D8D581289540E8C57118C57118E5A14915D178F5B15
      8E5913915D178F5B158F5B1595611B95611B97641E9D6C259E6D26A2722AA373
      2BA3742CA6772FA3742CA2722A9D6B2495611B98651FA3732BA2722AB0853BB0
      853BAB7E35AF843BAD8038AD8038AE833AAD8038AE8139B2873EAD8038AE8139
      B58C41B0853BC09D4FBC9848BB9546BE9A4AB89145B58C41BB9448B89145B78E
      43B99246B78E43B68D42B99246B78F44C09D4FB78E43AA7D34AE8138A3732BA1
      7029A170299A68219A6821935F19935F19925E188F5B1588530D8A550F88530D
      814B0585500A85500A824D0787520C824C0688530D85500A85500A8A550F8954
      0E8C571195611B8E5A148D581294601A8E5A14915D1795621C94601A935F1993
      5F19935F19915D17925E1894601A95611B95621C9C6A23A06F289C6A2397641E
      935F198E5A148F5C138B570E88550A86530888550A8B5610814C0A6F38006A34
      006A3300672F00622A00612B00652F006A35006C37026633006E3B0477440D70
      3C085C29004D1D00511E005A2400632B006A33007441007A47007C4700844F09
      8E55158C521595611C905C1697641E925E188B56108F5B1597641EA3742CA879
      31AB7E35A1702998651FA97B32BF9A4DC5A455C3A052B88E43C0974FD9BF76F2
      EBA0FDFEB5FFFEBCF4EFACDCC48BC09C62C6A765D7C476D4C06FBE9C4FA87932
      9C6722A06C27BC9549CFB361D4BC68B992469A6821996720A5762EA6772FB388
      3EC09D4FC7A757C8A858CBAE5DCDB15FCBAE5DCCAF5ECFB361CFB361D0B663D0
      B663CAAC5BD2BA66DAC770C6A556A3732BAA7D34C5A455C4A253C6A556C3A052
      B78E43BA9347D9C46ED7C16CDDCB73D4BC68C6A556CBAD5CCCAF5EBC974AA879
      31B3883EC3A052CFB361CEB260C8A959D2BA66E6DC80E8DF82D6BF6ABD984BAD
      8037AA7D34AD8037AD8037A97C33A4752DB1863CB99246B89145AE83399D6C25
      96631D9E6D269A68219B6922834D0887520C915D178D581295611B95611B935F
      1997641E935F1986510B824C0689540E925E1895621C8B56108A550F8E591391
      5D17915D17905C168E5A148B56108E5A148E59138E59138E59138F5B15915D17
      905C168E5A148E5B12905D1494611897651C9B6A209F6F25A37429A5762EAE83
      36AE8138AF843AB38A3FB68D42BB9449C19E50C09D4FC19E50C09D4FC29F51C4
      A354C5A455C29F51BF9A4DBC974ABC9549C5A455C29F51B0853BA6772FAE8138
      B78F44BA9347AF8336AC7E32BF9949CAAB57C8A754C5A351CBAD59BD9747B78E
      3FB78D3EB78D3EB78D3EB48A3BB28638B38739B58B3CB08535AF8434B18537B5
      8B3CB084379E6C2285500A743E00824C068F5B1697641F8B55136D3800622E00
      7842029460209F6E28AB7C339F6D23956115905F108E5C0D9161109564158C59
      0E87530A794402693400632D006B34007A410B824B137D4505713B006A350074
      3E008A560D9E6F23A97D2EAB812F9F73209D6F1D956514996C179C6F1A946511
      8A5A06794800774200814C00966415A47625A0701F9B6A19936010855101824C
      00875200905D089968129C6B149A69129968119A691293610893610892600790
      5E058D59038B57018B57018B57018C58008D59008E5B018F5C028F5D008F5D00
      8F5E00905F008F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07500A07500A07500A07500A07500A07500A17601A176
      01A17601A17602A17602A27703A27703A27703A27703A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77D03A77F00A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C4A253C3A052C0A051BC9A4CB79344B38C3EB18B3BB0883BAF8B3BB28B3DB28D
      41B38D41B79146BC994BBD9C4DBC9A4ABA9846BC9846C09A4ABE974ABF974CC0
      974FBC944EB99149B68D43B58C41B38C3CB18838AE8535AC8133AD7F33AC7C35
      AE7D3AAF7F3CAC7B37A7762EA9792DB08134B38636B78A3DBD8F4BBF9156B37E
      50884B245A2100511C005C27006330006F3C008150097B4702723D0087540F95
      641F905F1883510A93611C9F6F2C9A65257F4609854D117F460A642C006C3300
      80470B844C0F834C0C824B09814A08794300723C007D4702915D189C6926B286
      40B48844B78D48B28640A5762FA06F289E6E249A691F9D6C259D6B2498651F8E
      59137E4803753F007A4400834D09905C178E59148E59138B561186510C86510C
      88530D87520C834D097F49047943007640007741007A44007D47027F49047D47
      02814B06814B0685500B86510C844F0A86510C844F0A824D0788530D844F0984
      4F09844F09834D0889540E8D581289540E8B56108C57118F5B15935F19915D17
      905C1695611B925E1897641E9E6D269D6B24A06F28A97B32AA7D34AB7E35AD80
      37AB7E35AC7F36A97B32A97C33AA7D34A97B32B1863CAC7F36AC7F36BC974ABD
      984BB89146BE994DBC974BBD984CBD984CBE994DB99247BC974BC09D50C09D50
      C3A053C09D4FCFB361C8A956C9AC58D2BA63CDB15FC8A959CBAE5DC5A455CBAE
      5DCDB15FC9AB5AC5A455C8A858C5A455CBAD5CBD984BB58C41B89145AE8339AE
      8339AD8037A4752DA5762EA170299F6E279F6E27996720925E1895621C935F19
      87520C8C57118B561087520C8C571186510B8C57118A550F8B5610925E18915D
      17935F199B6922935F19905C1696631D915D17935F1997641E94601A925E1893
      5F19935F19925E18925E1894601A98651F95621C9A6821A17029A06F289C6A23
      97641E935F19905E13875409835004855207865308855108804B09794305713B
      036D3603683001632B00602A00622B006932036F38076C38046834006E3E0079
      47066D3D006330005F2C00622B00642E006B3400713E007A47007E4B047A4301
      763C027B4009824B0B8A541296622094601B935F1A95611C8F5B1594601A9C6A
      23A6772FB1863CB78F44AF843AA2722AB0853BD2B865E3D476D7C16CCCAC64CE
      AD6FDFC58AECDFA1F9F6B2FFFEBDFAFEACD8C479B8944CA77C32AE853ABE994C
      B3883FA6742E98651F9A6821B78E43D4BC68CFB361B2873D9D6C2596631DB186
      3CC29F51CAAC5BCAAC5BCFB361D1B764CEB260CEB260CFB361CFB562D1B764D1
      B764CAAC5BD2B865DBC871C7A7579E6D26A97C33C6A556C4A253C8A858C4A354
      B78E43BF9A4DD8C36DD4BC68DBC871D2BA66C4A354C8A858C4A354AE8339A677
      2FBB9448CBAD5CD2B865D6BF6AD5BE69D4BC68D7C16CE3D57BE8DF82DECD75C4
      A253AE8138A97B32A87931A5762EAC7F36AD8037A97B32AA7D34B2873DAA7D34
      95621C8A550F8E591397641E7E480286510B97641E935F1998651F915D178550
      0A834D0885500A8D5812905C16905C168E5A148E5A14915D178B56108F5B1595
      611B8F5B158B56108D58128E59138D58128E59138D58128C57118E5913915D17
      915D178E5913905D1494611898671D9C6B21A07026A3752AA87B2FAA7E32AE83
      36AE8336B38A3CBC9848BD984BBB9448BF9A4DC09C4EC5A455C19E50C09D4FC3
      A052C5A455C3A052C09C4EBE994CC3A052C19E50C6A556CBAD5CC09C4EAC7F36
      AA7D34B58C41AE8135BC9445CFB25DCAAB57CAAB57BD9747B28639B78D3FB78D
      3EB48A3BB3883AB68C3DB68C3DB38739AF8335AE8033B08437B3873AB18538A3
      72268A540A7841007B45008A55109B67268F581B763D00622C006D37008D5813
      9F7227A4762BA3732898641B8D570D925E12905D0E8E5D0C9567158F5F0E9667
      1799691C936219834F0D733C006B3400682F00652E006B330077410086510B94
      601AA07225A97D2EA97E2CA57928A37724996B198E5E0A9669149D701B966914
      9567128F5D0A8652037C4700824D008C5809875304865202885404834F008F5B
      0895610E9B6A149D6C169B6A139968119867109867109A6A1096650C92600790
      5E05915F06915E088E5C038C59008B57008D59008E5B018F5C028F5C028F5D00
      8F5D00905E018F5E00905F00905F00905F00905F00905F00905F009160019160
      0092610192610192610192610192610192610193620293630093630093630093
      6300946401946401946401946401956500966701966701966701966701966701
      966701976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7400A07501A07500A07500A07500A07500A07500A17601A176
      01A17601A17602A17602A27703A27703A27702A27702A37902A37902A37902A3
      7902A37B03A37B03A37B03A37B03A67C02A67C02A67C02A67C02A77D03A77D03
      A77D03A77E02A77E02A88001A88001A88001A88001A88001A88001A98102A981
      01A98101A98101A98101A98302A98302A98302A98302A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AB8701AC8802AC8802AC8802AC8802AC8802
      AC8802AD8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39203B49304B49304B49304B49304B49304B49304B59405B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C5A455C5A455C6A556C4A354C09C4EBB9448B78F41B38A3FB18A3CB38A3FB691
      44BF9A4DC09D4FC09C4EC29F51C09C4EBC9848C19F4EBE994CC09D4FC3A052C4
      A355C3A053C09D50BE994CBC974ABC9848B78F41B58D3FB58D3FB48B40B89145
      B89146B1863CB08A3AAA8133AE853AB08640B08444BB9155B788579F653E6F31
      0B541E00511C005F28005F2A006430006F3C00703F00824F0A7842006D380081
      4B068D581388530E89540F844F0A8B5513A877359E6B2A773F006A3300784000
      864F0F925D1B8A550F94601A87520C7943007D4702976321B78D48BE9750B68B
      46AF813EA87735A2702D9D6C269E6D26A070269D6C229B69228A55107C46017A
      44007E480385500B8E5914905C178E5A158C56148D58138B5513854F0D824C0A
      8049077C4503774000763F00763F007741007842007943007C4600804A047F49
      03834D08834D0886510B85500B824D0886510C85500B824D0788540B84500785
      510887530A8551088A560D8C580F87530A8E5A118E5A118C580F946118936017
      8C580F98671D95621C94601AA2722AA2722AA5762EA5762EAC7F36B0853BAD80
      37AE8138B2873DB0853BAE8339AE8339AC7F36AE8339B2873DB38A3FC4A253C3
      A052BD984BC3A052C09C4EBF9A4DC4A253C19E50C3A052C8A959C5A455C4A253
      C9AB5AC5A455D0B663C6A556C7A757D5BE69CCAF5ECBAE5DCBAD5CBF9A4DCAAC
      5BCDB15FCBAE5DCAAC5BC8A959C3A052CCAF5EC5A455B99246B99246B38A3FB0
      853BAE8138A77830A2722AA170299C6A2399672099672095611B94601A905C16
      88530D8A550F8A550F8C57118E591386510B935F19915D178D5812935F19905C
      16925E18A2722A96631D905C1696631D8E591396631D95621C8F5B15915D1792
      5E18935F19935F19925E1899672096631D97641E9A68219B69229B69229F6E27
      A06F289D6B24925D138D570D875107854F05855207844F09814D087F49097944
      096B35006630006630005E2A005E2900632D03642F016A3600713C0073400274
      4100764403733F01683600643000653100713C00744100734000774305763F03
      723A02773E08793F05783E047A4105854D10915B1B945F1D905C178F5B16935F
      199B69229D6B24B2873DCAAC5CD2B866CBAD5DB99247BD984BD6BF6BEEE88FED
      E48FCCAB66BD9555C7A463DECB7FF2F099FDFEA7EDEA8EC4A254A3732C9C6A24
      A97B33B99247B48B40A5762E915D1794601AB68D42D2B865CBAD5CB1863CA778
      30B38A3FC4A253CDB15FCFB562CFB361CFB361CFB562D6BF6ACFB361CFB361CF
      B562CFB361D2B865DCC972C5A455A2722AAC7F36C3A052C09C4ECCAF5EC4A253
      B2873DCBAE5DDAC770D5BE69DDCC74CCAF5ECAAC5BD4BC68BC974AAE8138B48B
      40CAAC5BD6C06BD9C56FE0D077E0D077D9C56FD9C46ED2BA66DDCB73E3D77CE3
      D77CD4BC68B38A3FA17029A97B32A97C33AB7E35AA7D34A97B32AE8339B48B40
      AE8138A2722A87520D8E59147C46017E48038E5A15915D188E5A157C4601743E
      007E48038C5712905C178F5B1694601B95621D8E59148D58128E5913925E1891
      5D178B56108D5812905C168A550F8D58128F5B15915D178F5B158E5A148F5B15
      925E1894601A9967209D6C259F6E27A2722AA77830AA7D34AE8339B48B40B891
      45B89145B99246BB9448BE994CC19E50C4A253C5A455C29F51C7A757C9AB5AC3
      A052BD984BC3A052C9AB5AC8A858C8A858C3A052C29F51C6A556C5A455BC974A
      B38A3FB1863CC7A855CBB15AC8AC56BE9C49B78F41B68E40B78E40B48A3CB78D
      3FB99142B78E40B68C3EB58B3DAE8135AD7F33B4883EAF833DA6763295611B7C
      4800713F0085530499641E97602082460F6B2E006E31008A4F149E6927A67729
      A37C1F9D70168E590F945C1691591195601499651592600D93610E9A69189664
      159E6D209F6F2594601A824B09733A006C34006830006C37007F4B06AB7E35AF
      843AA5782BA87C2D9F7221A37825A47722A97D27A57725A17220966414986716
      A476249E6E1E935F138D580C8853077C46007A44007C4700814C009867179A67
      16A1701C9E6E189A69139B6A139A691297670D99690F96670B97680C97680C95
      650A936207915F06905F04905F048E5A008E5A008E5B028E5B028F5C038F5C02
      8E5B018E5A008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07501A07501A07501A07501A07501A17602A176
      01A17601A17601A27702A27702A37803A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C4A253C4A354C5A455C6A556C6A556C4A354C29F51BF9A4DBC974ABC9549BC95
      49C09D4FC29F51C5A455C8A858C4A253C09C4EC4A253C4A253C7A757C9AB5ACA
      AC5BC8A959C6A556C4A354C4A253BF9A4DBC974ABC9549BD984BBF9A4DC19E50
      BF9A4DB89243B3913EB3913EB08B3FB08745B0844AA472407F441B541E00511B
      005E2500632B006A330076400876410575420083500B7E4A05824C077842006E
      3800733D0089540F986520935F1A8C5614804907794200743D00763F0087510F
      8E5917824C0A905C1797641E9A6822A67730B68D43BE984FBB934BAB7D38A777
      33A16F2C9F6E28A3732CA4752DA1702997641E8C57127943007741007D470288
      530E8F5B1694601B925E198D58138B551388521088521086500E8048087B4303
      773F00713900763F007740007942007B45007C46007B45007C46007F49037D48
      00824D04814B05844F09844F0A824D0887520D86510C834D0889550C85510886
      520988540B8652098C580F8E5B128A560D8E5A118F5C138E5B1296641B97651C
      9360179D6C22925E18915D179E6D26A06F28A4752DA4752DA77830A97B32A97B
      32AC7F36B3883EAF843AAA7D34AA7D34AB7E35B2873DB2873DB1863CBF9A4DBC
      9549B78E43BE994CBD984BBE994CBC9549BC974AC09C4EC4A253BF9A4DBD984B
      C6A556C4A354CDB15FC7A757C5A455CFB361C6A556C6A556C8A858BF9A4DC09C
      4EC3A052C4A253C5A455C6A556C09C4EC6A556BC974AB48B40B78E43AF843AAC
      7F36A97C33A2722A9F6E279D6B2497641E95621C94601A8E59138E59138E5913
      88530D8C57118E5A14905C168F5B1585500A905C16905C168E591394601A8E5A
      148E5A149C6A23915D178D581294601A8B5610925E18915D178D58128F5B1590
      5C16905C16915D178F5B1594601A95621C95621C98651F99672098651F9C6A23
      9E6D269C6A239F6D2398641A8E590F895309855108824D0786530E915E1C8E5C
      1E8854197D48116F38065F2B005D2900622C026430006A35007945077C480A75
      42017643017946047441006B3800703D00734000744100723E00703B00743F04
      743E06703801773C06733801703700703800743B007C4404885210925E199561
      1B8E591394601AAF843ABA9348B99247D1B765EAE386E8DF83D3BB68C4A355D5
      BC6CEDE78CFBFE9FE1D07DC19C54B98F4AC5A259DDCB77F0EC90EEE88DD7C06F
      B89146A3732CAE8339B78F44B89145A77830905C16915D17B3883ED4BC68D9C4
      6EBC974AA97B32B1863CC09D4FC5A455C8A858CCAF5EC8A959CBAE5DD1B764D0
      B663CAAC5BCDB15FDCC972CAAC5BA3732BA3742CAC7F36A5762EB1863CB0853B
      B78E43DECD75E1D379E0D178DDCC74D1B764DBC871DECD75C09D4FB78E43CAAC
      5BD6C06BDDCC74DFCF76E1D379E1D379E0D178E4D87DD9C46ED0B663D2B865DE
      CD75E1D379D5BE69BF9A4DAE8138A77830A97B32AC7F36AF843AB0853BB1863C
      B48B40B78F44A97B3394601B703A007842008E5A158F5B1687520D7640007640
      0087520D925E198D581388530E8E5A15935F1A8E59148F5B158C57118E5A1490
      5C168F5B15925E18915D178A550F8C57118C57118D58128D58128C57118E5913
      915D1795621C9E6D26A3742CA6772FA97B32AE8138B1863CB48B40BA9347BC95
      49BC9549BC9549BD984BC09D4FC3A052C4A253C4A253C8A959C4A354BF9A4DBC
      9549C09C4ECAAC5BCBAD5CC19E50C09C4EC6A556C8A959C29F51BA9347BB9448
      C3A052C9AB5ACFB75FC4A450B79241B38C3CB58D3FB78F41BB9344BD9747B68C
      3EB68C3EBB9344B68C3EAE8034B68C3EBA9243AA7D359D6B2A7D47077039007E
      4802905D149D6C258E5615662D00672C007D3F0A975E24A97536A979319E6E1D
      95670D95670D945E12965F17935C12935D119662129B69159D6E1AA0701FA677
      299E6C22905C177D46046B35006B3500763F007D4604774200733F008E5913A8
      7B2FAC8133A5782A9E7020A27623A47624A37422A37422A97C29A374239B6A1A
      A26F209F6C1F8F5B0F824D017E48007E4800834D02824C00804B00915E0FA06E
      1D9F6D1C9B69159867119A69129B6A1398680E97670D97680C97680C96670B95
      650A9463089261069160059160058F5C028E5B018E5B028E5B028F5C038F5C03
      8E5B028E5B018F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A03B79A
      03B79A03B79A03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C29F51C29F51C3A052C5A455C8A858C8A959C7A757C4A354C29F51C19E50C3A0
      52C5A455C6A556C9AB5ACCAF5EC9AB5AC5A455C8A858CBAE5DCEB260D0B663D1
      B764D1B764D0B663D1B764D2B865CFB361CEB260CBAD5CC9AB5ACAAC5BC8A959
      C29F51BE994CC0A450C8B15BB795489565247C470B632E005321005622006830
      00753C0C753D0A77400A824D12814C10875514A1722E9D6D2A905B198852107E
      4705723B00763F007D4604824B097C45037841007C4503834D0B7F4806733C00
      753E008149098E571AA26E30B38743BE984FBA9348AE8339A97D31A5772CA87C
      2EA77B2DA97C30A4762B96631D86510C7C4503763E007F480687510F935E1C94
      5F1D8C56148852108B55138B55138D5715834D0B7B4303733B006E3700703800
      743C00743C007841007A43017E4803804A057F49037B45007B45007C46007C47
      007F4A017F4903824D07844F09844F0988530E86510C844F0989540E844F0984
      4F0986510B844F098A550F8D58128D58128D58128F5B158E5A14935F1995611B
      925E189A682195621C935F199B69229A6821A17029A3732BA77830AB7E35AC7F
      36AD8037B1863CAC7F36A77830A77830A77830AE8138AD8037AE8138BD984BBC
      974AB78F44BD984BBA9347B99246B78F44B78E43B99246BF9A4DBC9549BC9549
      C4A354C3A052CAAC5BCAAC5BC5A455C8A959C09C4EC09D4FC29F51BF9A4DC09D
      4FC19E50C09D4FC3A052C6A556C29F51C9AB5AC09D4FB2873DBA9347AE8339AC
      7F36A778309D6C25A06F2899672097641E97641E95621C8D58128C57118F5B15
      8E5913925E188E5913915D1794601A8B561094601A935F198E59138E5A148E59
      138B561095611B8D58128A550F915D1789540E8E5A148E5A148D5812905C168E
      5A148E5A14915D178E59138F5B1594601A94601A96631D97641E95621C98651F
      9B69229967209D69229D6A209560178E59108C580F88540B85530C8D5A159C6D
      2AA37636A070338E5A227C46126B35025B26004E1F006E3900804A0C814B0B78
      42027E49078A56148855107E4907794402774101804A0A804A0C713A006C3500
      6F38006A33006D33006F3500743A00763D017038006F3800753E00794300804A
      04834D0888530D905C169C6A24B58C42D3BB68DDCB74DAC770E6DC81ECE588E7
      DD82D4BB6BCFB264D1B667D9C472CFB365B38842A97B36BE984FD9C570EDE88A
      EBE486D9C46EC4A253B78F44BB9448CBAE5DCCAF5EB68D42A3732BA06F28C19E
      50DCC972DDCB73B89145A2722AB1863CC29F51C29F51C6A556C8A858CBAD5CCA
      AC5BC8A858CAAC5BD2BA66BB9448A77830AA7D34B3883EB38A3FBA9347AE8138
      B68D42D8C36DD4BC68DDCC74D6BF6ACFB361D9C56FCCAF5EB3883EBA9347CFB5
      62D3BB67D8C36DDAC770DAC770DCC972E0D178E7DD81E6DB7FD8C36DCEB260CC
      AF5ED2BA66E0D077DCC972C6A556B58C41AA7D34A6772FAD8037B2873DAF843A
      AF843AB38A3FBB9449AE833A905C1788530E8E5A158F5B16905C1787520D7943
      00814B0689540F905C17935F1A8E59148A55108C57128F5B158B56108D581290
      5C16905C16915D17905C168D5812905C168E5A148E5A14905C16925E1895611B
      9A6821A06F28A3742CA97C33AD8037B0853BB58C41B78F44BA9347BF9A4DBE99
      4CBE994CBF9A4DC19E50C4A354C5A455C4A354C3A052C09C4EBE994CC4A253CB
      AD5CC9AB5AC7A757C6A556C7A757C8A858C4A253BD984BBA9347BF9A4DC8A858
      CBAD5CCAAC5BBE9C49B89342B48D3DB79140B88F40B48A3BB3883BB58B3DB993
      44B08639B0853BB3883EB2873DB58C41A8793189540F6F3A00743E008955139A
      672A905623713503652C007038008E5713A37029A97830A16F259A69198F5C0D
      8C560D9560179561159867169A69199765169765159E6E1DA172209C6A1D915D
      178048087138006A31006A32007C4404905C1797641E935F19824D07743E0081
      4C03915F149D6D21A6792BA07322A374239B6A1A996818A77928AA7E2CA37524
      9E6D20956115824D017E4900814C008854058F5C0D8C5809824D00875304945F
      0F9561119B69159D6D179A691297650F98680E98680E97680C97680C96670B95
      650A956409946308936207926106925F05905D038F5C028E5B018E5B018F5C02
      8F5C038E5B018F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C29F51C19E50C3A052C5A455C8A858C8A959C8A959C9AB5ACAAC5BCBAE5DCAAC
      5BCBAD5CCBAD5CCAAC5BCCAF5ECDB15FCAAC5BC6A556BB9448BB9448BA9347B9
      9246B89145B99246B99246B99246B99246BC9549B99246BB9448C4A253C5A455
      C4A253C5A455B79346AC853A8C5C15713F00734000754103713C00743F047944
      097E490E8652178D591D915E22986829A47737B18642AA7C378A54128953118F
      5A188049076B35006C360086500E8D57158E5917925D1B925D1B854F0D763F00
      854F0DA57432BC9250BC9351BB914EB78D48B0853CA97C33A97D31AB8032AE84
      34A2742795631888540B7B4500784200824B09895212945F1D925C1C915C1A8E
      58188C56148D56168B5513844D0C7C4503763F00733B00723A00703800733B00
      763E00743C007E47057F4806814B06824C077F49037B45007A44007B45007C47
      007F4A017E4802824D0785500A844F0988530E85500B86510B8A550F85500A84
      4F0985500A824D0788530D8B56108A550F8A550F8F5B158F5B158F5B15905C16
      905C1696631D97641E95621C9D6B24996720A2722AA5762EAB7E35B1863CB388
      3EAE8339AE8339A97B32A77830A97B32A77830A97C33AE8138AE8339BF9A4DC0
      9C4EBB9448BF9A4DBA9347B89145BA9347B58C41B58C41BC974ABE994CC09D4F
      C5A455C09D4FCAAC5BCFB361C7A757C6A556C09C4EC09D4FC09C4EBE994CC29F
      51C3A052C29F51C5A455C9AB5AC4A354CDB15FC6A556B48B40BF9A4DB1863CAE
      8339A97C339D6B24A3732B9A682195611B96631D95611B8C57118B56108E5A14
      8E5913925E188D5812915D1796631D8E591394601A94601A8F5B158D58128E59
      138A550F925E188C57118C5711915D178A550F8D58128F5B15905C16935F198E
      5A148E5A14925E188E5A148E5913935F19915D17935F1995611B95611B96631D
      97641E94601A925C169A651F96611B925D14956219925F168250077A47008855
      10976825A17431A274349F6F328F5C21743F07622F006F39007943037A44047A
      4404865210905D1B8D5A1583500B84510C7E4907824D0B855010784204693300
      6831006C3500693000672E006C33007038006F3700723A007943007C46018651
      0B804A0489540E8F5B15824C07814B069E6D27B78E44D0B663E5D97EE9E185E9
      E084E5D97FE6D982D5BC6CBF9950B99149BE984FC4A056BC944CAE8139B68D43
      D0B663E3D77CE2D47AD3BB67BC9549AA7D34AE8339BC974ABD984BB58C419663
      1DA3732BBF9A4DD6C06BD3BB67BD984BB3883EB89145C8A959C7A757C7A757C6
      A556C7A757C8A858D0B663BC9549A97B32B0853BB78F44BC974AC09D4FB38A3F
      C19E50D9C56FD3BB67DECD75D8C36DD8C36DD9C56FC09D4FB3883EC6A556CFB3
      61D0B663D5BE69D8C36DD9C46EDDCB73E2D47AE4D87DE1D379DDCC74D6BF6AC8
      A959C09D4FCBAE5DDAC770DECD75D1B764BF9A4DAE8138AC7F36B1863CB58C41
      B78F44BA9347B68D43BC974BB3883FA3742D935F1A89540F8E5A15905C178752
      0D824D087F490488530E95611C915D188B56118E5A158E5A148E59138F5B1591
      5D178E59138A550F8C57118F5B158F5B158E59138E5A1494601A97641E9B6922
      A17029A87931A97B32AE8138B1863CB48B40B99246BC9549BE994CC29F51C29F
      51C3A052C4A354C6A556C6A556C4A354C3A052C19E50C29F51C3A052C9AB5ACB
      AE5DC8A858C6A556CBAE5DCFB562C7A757BC9549B78F44C3A052CFB562CEB260
      C29F51B89145B38A3CB68F3FB79241B68F3FB78D3EB88F40B99142B99142B187
      3AB38B3DB58C41B89145B3883E9865207C4601733D00814D089D6D2795632173
      3C00652B00672D007D43099D6B28A6792CA779289D6C1C915E0F915E0F935E15
      945B1E965F1F97651695640F986B169C6B1B9D6C1FA373279D69228F58147D45
      056B3300662F00723900824A0D996523A97B32AA7E329B6A209562197E49006B
      38006F3B0088550AA07225A376289561159764189D6B1EA272249F6F1F956115
      834D02733D007944008854059562129664159664149562138B5708824D00824C
      00854F00935F0C9D6C189C6B1599681199690F97670D98690D96670B95650A95
      650A95650A95650A946308936207946107925F05905D038E5B018E5B018E5B01
      8F5C038F5C028F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C29F51C09C4EBC974ABF9A4DC09D4FC29F51C4A253C7A757CBAE5DCFB361CCAF
      5ECFB361CEB260CBAD5CCBAD5CCDB15FC8A959BD984BB1863CAC7F36A5762EA0
      6F289D6C259C6A2398651F96631D98651F99672094601A905C16935F198F5B15
      89540E8A550F87540F83500B7F4C057F4C0586540D8E5B16916019905E198653
      0E915E1C9A69269D6B2A9D6C2DA17031A37434A374349E6B2A8A54128A541285
      4F0D7841006F3800713A00854F0D986422844D0C88521095601E966220A77733
      BC954DC09C52BC934DB78C47B0833FAB7D38AA7C37AD8038AC7F37AA7D359663
      1D844F097842007B4500855108905C16956219925E198E58168D55188E58188E
      56198B54148A5215824B0B763E006F38006D3600713900753D00763E007A4202
      7D45057B4303814A08814A08814B06804A057D47017A44007A44007D47017D48
      00804B027F4A01834F0685500A85500A88530D85500A87520C8C571186510B85
      500A86510B844F0989540E8C571186510B89540E925E18925E18915D17925E18
      935F199B6922925E1897641EA170299E6D26A77830A87931AA7D34B0853BB38A
      3FAE8339AD8037A97B32A87931AB7E35A97C33AD8037B3883EB0853BBE994CBD
      984BB99246BE994CBC974ABC974ABA9347B68D42B68D42BE994CC09C4EC19E50
      C5A455BF9A4DCAAC5BD1B764CAAC5BC9AB5AC6A556C6A556C3A052C09D4FBD98
      4BC09D4FC3A052C8A858C9AB5AC09D4FC6A556BD984BB3883EBC974AAE8339AE
      8138A97B329C6A23A3732B9A682195611B96631D97641E915D17905C16935F19
      8F5B1594601A925E18915D1794601A89540E8E5913905C16905C16905C168D58
      128A550F905C168D58128E5913915D178B56108D5812915D17915D17935F198E
      59138D5812905C168E59138D5812925E188E5A148F5B15935F1994601A95611B
      94601A8E5A14925E1995611C935F1A935F1997651C94611888540B824D04824D
      0486540B8C5A13976721A67834A67834996A28946020915D1D8C5614824C0A81
      4A0886510C89540F8B5610905C1795621D8E5917814A087B43037C4306753C00
      6D35006E35007138006E3500713800783F037940037A4202804A0585500B8550
      0A8E591396631D95621C9D6B25AF843BA4752E814B068E5913AC7F36C4A354E0
      D078E6DB80E0D078D6BF6BD1B765CAAC5CC29F52B89146BA9348BE994CB78F44
      B1863CB48B40CAAC5BD9C46EDDCC74CCAF5EB48B40A77830A77830A97C33B186
      3CA97C33A17029A5762EB99246CBAD5CC7A757B78F44B2873DB89145C29F51CA
      AC5BCBAE5DC8A858CDB15FBC974AA97B32B3883EB89145B78F44B78E43B1863C
      C7A757D9C56FD2BA66D2BA66D1B764D7C16CCFB361B58C41B58C41C7A757D1B7
      64D2BA66D6C06BD9C46EDBC871E0D077E1D379DDCC74D9C56FDDCC74DECD75D8
      C36DCBAD5CBA9347BC9549CBAE5DD6C06BD2B865C5A455B38A3FA87931A97B32
      B2873DB89145B78E44B78E44B89146B99247AA7D3594601B8B561189540F935F
      1A935F1A86510C7A4400824C078D5813905C17925E19905C16905C168F5B158F
      5B158D581289540E8A550F905C16925E18925E1895621C9C6A239F6E27A3732B
      A97B32AE8138AE8339B38A3FB68D42B89145BC974ABF9A4DC19E50C6A556C8A9
      59C8A959C8A858C5A455C3A052C19E50C29F51C4A253C9AB5AC8A959C8A858C5
      A455C8A959CFB562CBAE5DC09C4EB99246BF9A4DCAAC5BD2B865CCAF5EBF9A4D
      B68D42B68D42BB9344BB9344B99142B78D3FB78E3FB99141B68F3FB38B3BB58D
      3FBB9546B48E42A0732A86530E723D007843018E5B16976B2085560C6D390068
      36007D4B008F60139B6D21A6792C9F722195651693610E915E0F905915955D1D
      9B612497611D8453028252009164109F70239F6E289761257F440E6B3000652C
      006931007C4601946118A37629AC8034AB7E36A4752E9F6D23A27025A16F248E
      590F794200733C007E4700935E149D6D21A4772AA6792C98681C845105784400
      7642007D4A00885404976515A1731E9F6F1E9A6A169867169562128C58088651
      007E4800824D008F5B0896640F9B6A149B6A1395620C97670D96650C95650A95
      650A96670B96670B956409946308956309936006905D038E5B018E5B018E5B01
      8F5C028F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C19E50BE994CB89145BB9448BD984BBE994CBF9A4DC09D4FC4A253C7A757CBAD
      5CCDB15FCFB361CBAE5DCAAC5BCBAE5DC4A354B68D42BC9549B68D42AE8138A7
      7830A3732B9F6E279B692298651F915D17905C168D58128A550F88530D824C06
      7A4400794300824D097F4B0686540D8E5D168F5E1595651C9A6C2096681C9C6E
      22A3772CA4782FA87C34A57634895416764002855012804808814A08814A087C
      4503804907844D0C7D4604753E00723B007E470595611FAB7D38B99149C39F55
      C19D53B78E47B2873EAC7F37AA7D35AC7F37B38842B387419D6A298B54147C45
      037F480688530E935F1996631D97651C9563188E5A148C55158E56198F581B88
      50137940037138007038006D3500723A00703800733B00773F00773F007C4404
      8149098149098049077E47057D47027D47027C46007B45007C46007F49037E49
      00824D04804B0284500785500A844F0987520C85500A844F0989540E844F0985
      500A86510B85500A8A550F8D581287520C8D581294601A935F1994601A935F19
      925E189B6922925E18996720A170299C6A23A5762EA6772FA87931B0853BB085
      3BAE8138AE8339A87931A4752DA6772FA77830AD8037B0853BAE8339BC974ABE
      994CBA9347BE994CBA9347BA9347B78F44B78E43B99246C09C4EBD984BBC974A
      C4A253C09C4ECBAD5CD2B865CCAF5ECFB361CCAF5ECCAF5EC8A959C6A556C4A3
      54C5A455C4A354C6A556C5A455BB9448C09D4FB89145AC7F36B2873DA77830A8
      7931A4752D9B69229F6E279B692298651F9967209C6A2397641E98651F97641E
      925E1895621C915D178E5A14935F198A550F8D58128C57118D58128D58128A55
      0F8A550F8E5A148D58128D58128E5A148B56108D5812905C168E5A14905C168B
      56108A550F8E59138B56108C5711915D178D58128E5913915D17925E18925E18
      905C168C571194601B905B19935F1A99672195631A8E5B128E5C119361169767
      1B8D5A0F824D058652099261189D6C25A3772EAC7F37B1863DA979359F6D2A9B
      6825935F1A85500B814B058A550F935F1A9967218D58137A43017A42027A4104
      7038006B33006E3600783F03854D11915A1D915B1B814A087842007F49048A55
      0F935F199C6A23996720A87932C8A859CDB160BF9A4EAB7E3598651F804A049E
      6D26BB9449C19E51C19E51C4A355C4A355CAAC5CC4A355BD984CBD984BB89145
      B68D42BD984BAA7D34AF843AC09C4ED5BE69DAC770CAAC5BB0853B9F6E27A475
      2DAA7D34A97C33A170299E6D26AC7F36BE994CC8A959B58C41B3883EB2873DBC
      9549CAAC5BCBAD5CCBAE5DB48B40A4752DB1863CBC974AB89145B3883EAF843A
      C29F51CBAE5DD0B663CDB15FD3BB67D4BC68BD984BAE8339BD984BCBAD5CCFB3
      61D2BA66D4BC68D6BF6ADAC770DFCF76DECD75D9C56FDBC871E1D379DECD75D9
      C46ED7C16CCBAD5CB89145B2873DC29F51D1B764D9C46ED0B663C09D4FB68D42
      B2873DAF843AB78F45B48B41B89146BF9A4EBD984CB2873E9E6D278B56118B56
      11905C178F5B1688530E824D08824C0786510C8E5914915D17905C168D58128C
      57118F5B158E5A148E5913915D1796631D9B6922A17029A5762EA97B32AC7F36
      B0853BB38A3FB68D42BB9448BC974ABE994CC29F51C4A253C5A455C9AB5AC9AB
      5AC8A858C5A455C29F51C19E50C4A253C8A858CBAE5DC8A959C6A556C9AB5ACD
      B15FC9AB5AC3A052BF9A4DBB9448C4A354CDB15FD0B663C7A757B99246B3883E
      B68D42BC9549BD9747BA9243B99142BA9243B99141B78D3EB48D3DB58D3FBC97
      47A97B32905F187844006E390085510F9562208A56147441006C3900804B0990
      5F18956816A78029AD8732986C1A986B1B8E5E0D8E5E0A925F108E5711925B17
      9C651F98641A8B5D098B5D099A6D1F986724875018763908642900692D007137
      00854D0E9C6C20AA802EAF8833AB812FA376299F6F25A97B2CA47527A57628A0
      6F22956016834D03753E007E47008F5C138D591089560B7C4800723E00733F00
      814D019869199F701CA0721D9E6F1B9F701C9B6B179969159C6C18966414925E
      0B895401824D00834D008753008F5C0796640E98671097670D96650C96670B96
      670B96670B95650A956409946308956309946107905D038E5B018E5B018E5B01
      8F5C028F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C09C4EBB9448BD984BBF9A4DC19E50C19E50C09D4FC09D4FC3A052C5A455CAAC
      5BC8A959CBAD5CCCAF5ECBAD5CCBAD5CC6A556BB9448BD984BBA9347B68D42B1
      863CAD8037A97C33A77830A5762EA170299D6B249C6A239A682195611B8F5B15
      8C571188530D8B56118E591498651F9F6E279D6D239E6F23A6792BA97E2FA77B
      2CA4772AA5772CAD8037A3732F7B4303612A006D35007F47078C55158A53138B
      5414925C1C8D56167B43036C3500784100A3732FBD974EC4A257C8A75BBC944C
      AC7E39AD8038A97C30AD8334B38B3DA8793195621D8952127E45087F46098850
      13915A1D9A65259763218F5B158E5B1294621795611B8E561982490D783F0372
      39006F3700713800733A00713800733A00763D007E450882490C7F47077D4505
      7B4303773F007D46047B44027A44007C46017D47027D47027D47017D47017E48
      02824C06824D04845007855108834F0687530A855108824C0687520C834D0884
      4F0986510B85500A8A550F8D581288530D8E5A14925E188F5B1595611B935F19
      8E591399672095611B9A68219D6C2596631DA2722AA4752DA87931B2873DB287
      3DAE8339AE8339A87931A4752DA6772FA6772FAA7D34AE8138AC7F36BC974AC0
      9C4EBC9549BE994CB89145B78E43B99246B89145BB9448C09C4EBC974ABC9549
      C3A052C09D4FCCAF5ED1B764CEB260D3BB67CFB361CFB361CDB15FCBAD5CCFB3
      61CBAD5CC4A354C29F51C09D4FB78E43BE994CB78E43A97C33AA7D34A3742CA4
      752DA4752D9D6B249D6C259E6D269A682197641E98651F97641E96631D935F19
      8C5711905C168D581288530D905C168D58128E59138A550F89540E89540E8853
      0D89540E8E59138D58128B56108B56108B56108E59138E5A158D58138E5A158B
      56118A55108D58138B56108D58128F5B158C57118E59138F5B158E59138D5812
      8E59138C57118E5A158D581395611C9865208F5C138E5B1297671B9B6B1F9E6F
      239462178A570C865006824D038D570E9E6E24AE8138AC7F37B0853CB38A40B6
      8D43B0853B9C6A2387520C804A0487520C95611C97641F8C5614824C0A824B0B
      824B0B80470A7A4104824A0D8A5215956020996424895311834D0995621D9A68
      219D6B24A4752DA2722AA6772FB78E43C29F52CCAF5FD0B663D3BB67B3883E9A
      682188530D8A550F9D6C25AD8037B3883EBC974ABF9A4DB89145B68D42B78E43
      B78E43B58C41C29F51BE994CB38A3FB0853BBE994CD2B865D5BE69CBAE5DAE83
      39A17029A2722AAE8138A8793196631D9A6821AE8339C4A253C09C4EB2873DAA
      7D34B68D42C19E50CEB260BE994CA97B32AB7E35B48B40B1863CB3883EBB9448
      CBAD5CCFB562CDB15FCFB361D6C06BC8A959AD8037AE8339C29F51C9AB5ACDB1
      5FD2BA66D4BC68D7C16CDDCC74DECD75DCC972DDCC74D9C46EDBC871D5BE69D0
      B663D8C36DDFCF76D3BB67C19E50AC7F36B3883EC09C4ECDB15FD2BA66CBAD5C
      BD984BB3883EB38A40B38A40B78F45B78F45BA9348C09C4FB48B419F6E288A55
      1086510C8E5A1597641F905C17824C07804A0585500B89540E8E59138B56108A
      550F905C16935F19925E1895621C95621C9E6D26A77830A97C33AB7E35B0853B
      B48B40B68D42BC9549C09C4EC29F51C4A253C7A757C7A757C8A858CBAD5CC8A8
      58C5A455C3A052C3A052C5A455C8A959CBAE5DCDB15FCBAE5DC6A556C7A757C8
      A858BD984BB78E43C29F51D0B663D2B865CBAE5DC09D4FB68D42B38A3FB78F44
      BB9448BB9448BB9344BB8F42B98D40B98D40B99142BB9344B99344B892439B6C
      228250097643007F4B068B57159764248954146530005623005A25008A561BB3
      8D47AE873C976B1F8E60138858098859088857068C5A0B9262119767139B6C16
      9D70189D6F19A57E27976B1F8F5D1F793E0D642A005F2500672D00854D17A574
      32B2883BB18838A97E2CA67C28A37923A37922A9812AA87B28A06D1E8F5C0D99
      671AA8782CA37226925D14834C06774100733D00743F007843008B580D98681C
      96691BA17423A47722A0731C9A6B159D6F199C6D179B6B179E6F1B9564119663
      10976411925E0B875200824D008450008D590495630D96650C97670D97670D96
      650C95640B95630A956409956409956309936006905D038E5B018E5B018E5B01
      8F5C028F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      BD984BB99246BB9448BD984BBF9A4DC09C4EBF9A4DC09C4EC3A052C6A556CBAD
      5CC4A253C7A757CDB15FCCAF5ECBAE5DCBAD5CC5A455BD984BBD984BBC9549B7
      8F44B38A3FB0853BAE8339AE8339AC7F36A5762EA4752DA3742C9D6B249A6821
      9A682197641E9D6B249D6C259E6D26A3742CA97D31AC8034B08738B79140BA95
      44AD8135A5772C996720824D08774000723A00642E00763E00925C1C935D1D94
      5E1E986323935D1D9661219C6827B88F48C19D53C5A358BD974EB38741AE813C
      AE813CAE833AAF8637A376299B6A2089540E7E4802824C0A885210966121A06D
      2C9D6928986323935D1D915C1A935E1C8D58138049077940047037006D35006F
      37006F3700713800773E027940047F46097F460981480B7F4609784000773F00
      7941017840007B44027942007943007C46017E48037D47027B45007A44007D47
      01824C06824D04845007845007824D05865209865209834D0889540E85500A86
      510B88530D86510B8B56108D581287520C8E59138E59138C571195621C95621C
      8E5A149A6821925E1898651F9D6C2598651FA6772FA97B32A87931B0853BB58C
      41AF843AAD8037A97C33AA7D34AE8339AC7F36AE8138B2873DAE8339BC9549BD
      984BBA9347BD984BBA9347BA9347BE994CBA9347B99246BF9A4DBE994CC09C4E
      C5A455C09D4FCFB361D1B764CFB562D5BE69CFB361CEB260CEB260CDB15FCCAF
      5EC8A858C09D4FBF9A4DBE994CB38A3FB78F44AE8339AC7F36A97C33A5762EA6
      772FA77830A06F289E6D26A3732BA170299C6A239B692299672098651F925E18
      8A550F8F5B158E591385500A8C571189540E8A550F86510B8A550F8D58128853
      0D8A550F8E59138C571189540E89540E8B56108F5B158E5A158C57128E5A158D
      58138D58138E5A158C57118F5B158E5A148C57118E59138E5A148A550F89540E
      8C57118E59138C57128E5A1595621D8F5B15855108946118A375289D6D219C6C
      2099681E98641B8D570E7A43007E4700966219A8772FB2873DB48B41B48B41B6
      8D43BC9549BA9347AE8138A3732B86510B88530D94601B986520915D18945F1D
      9E6C29A16E2DA06D2C9E6A2C9661219B6726A3732F976321986520B2873EC09C
      4EB38A3FAE8339A77830A3742CA3732BA3742DB38A40CBAE5DD2BA66C6A556C7
      A757AE813885500A7F4903915D1797641E9D6B24B0853BBD984BB68D42AE8339
      B0853BB2873DB0853BAE8138B1863CB58C41AF843AA97C33B78E43CBAD5CD1B7
      64C4A354B2873DA77830AC7F36B2873DA97C339A68219E6D26BC974AC7A757B7
      8E43A97B32AA7D34C3A052C3A052BC974AB1863CB58C41B48B40C09C4ECFB361
      D8C36DD7C16CD7C16CD7C16CD9C46EC09D4FAC7F36BD984BCBAD5CC6A556CBAE
      5DD1B764D3BB67D8C36DDFCF76D9C56FD5BE69DCC972DBC871D2B865D3BB67D9
      C56FD8C36DD9C46ED9C46ED2BA66C3A052AF843AA87931BA9347CEB260D1B764
      CBAD5CC6A556BC974BB48B41B68D43B78E44B78F45BD984CBD984CB78F459E6D
      278F5B168A55108E5A158E5A158D581389540F834D097E48028A550F8C57118A
      550F8F5B15925E1895611B9B692298651FA4752DAE8138AF843AB2873DB78F44
      BC974ABC974ABC974AC29F51C4A354C6A556C8A959C8A858C8A858CAAC5BC9AB
      5AC7A757C5A455C7A757C9AB5ACBAD5CC8A959C6A556C8A858C8A959C4A253BB
      9448BC974ACBAD5CD3BB67CFB562C7A757BC9549B58C41B99246BD984BBC974A
      BA9347BC9347B98D40BC9244BB8F42B98D40BC9546BC9347A4752D87520C7441
      00754100824D099664229562207741016430006E38005E29005C2500642E007E
      46138D5623804913733F017C4A058351088E5E118F6013926211986C149C6E16
      9D6E18A3772493621B7C480A6B35005824005E2500672D00672F007C440AAB7D
      38B78F41B08738A47827A87E2AA87F27A47D20AA8127A97E28A370218A56079D
      6C1FB18537A4742897631A844D07794300774100743F00733E008E5C11A87C2E
      A27728A17423996C169D70189C6D179D6F199C6D179D6F199F701C8D5A079663
      109E6D199B6915905C098B57028753008551008A560096650C97670D97670D96
      650C95640B946209946308956409956208936006905D038E5B018E5B018E5B01
      8F5C028F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      019A6C029A6C029A6C029A6C029A6C029A6C029B6D039B6E009B6E009B6E009B
      6E009C6F019C6F019C6F019C6F019E72019E72019E72019E72019F73029F7302
      9F73029F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A17601A17601A27702A27801A37902A37902A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A57B01A67C02A67C02A67C02A67C02A67C02
      A67D01A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401A98401AA8502AA8502AA
      8502AA8502AA8502AA8502AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03AF8E01B08F02B08F02B0
      8F02B08F02B08F02B08F02B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B89D03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C09D4FBD984BBD984BBA9347BB9448B99246B99246C3A052CAAC5BC5A455C6A5
      56C3A052C8A858CDB15FCEB260CEB260CCAF5EC5A455BF9A4DBD984BBD984BBE
      994CBC9549B68D42B38A3FB58C41B38A3FAC7F36AA7D34AA7D34A6772FA3732B
      A3742CA5762EA97C30AB7F33AD8135AF843AB58C41BC9549BC954AB78F45AD80
      38A3732C8A55107943007D4702804A057E4705824B09784000733B007B43038B
      5414976222A47331B78E47C4A257C39F55BE984FB48A43AC7E39AA7C37AC7E39
      A97C34A5762F95621C88530D7B46007E49008B570E96641B99681E97651C9764
      1E95611C935E1C915A1D8C541881470D753A036F35006630006831006C350070
      3800743C02773F057942067B44087E470B794206774103764002723C00713B00
      733D00733D00753E007740007942007A43017942007942007943007A44007B45
      007B45007C46007E48027F4A01814C03824D04824D04824D077D4701824D0782
      4D077D4701804A04834D08844F0985500A86510B8A550F8A550F8E5A14925E18
      8F5B1595611B8E5A148F5B1595611B95621C9A68219F6E27A06F28A97C33A97C
      33A77830A97C33A5762EA2722AA2722A9E6D26A17029A6772FA4752DB3883EB0
      853BAA7D34B0853BAF843AB1863CB38A3FAC7F36B0853BB48B40B1863CB68D42
      BE994CBC9549CBAD5CC4A253C4A253C8A858C09C4EBC974AC09D4FBB9448B68D
      42B58C41B3883EB3883EB1863CA6772FAF843AAA7D34A3742CA4752D9F6E27A1
      7029A170299D6C259D6B2498651F94601A97641E94601A905C168F5B158A550F
      88530D8E5A14844F0A7F490487520D844F0A844F0A814B06824C07844F0A824D
      08824C0789540F824D08814B0687520D834D0988530E86510C7F4904834D0985
      500B834D09824D08824D0887520D86510B844F0987520C88530D86510B87520C
      88530D86510B88530D8E59138E59138A550F87530A936017A16F2599651C9A67
      1DA06D26945E1888510B7F47017E45018D5511915A16A37029B3873DB78C41B4
      883EB68C3EBD9747C4A250C19D4CAD7E3599641E8F59138E5713945D19A26E29
      AD7D36B68843BC934DC09A53BB934BB78E47A67730AA7D35CEB261D3BB68D9C5
      6FD2BA66C7A757BB9448AE8339A6772FA3732CA3742DB1863CB1863CB48B40BB
      9448B89243A6782D905D1487530A84500784500796641BA6782DAB7E35BB9448
      BF9A4DAE8138A77830A2722AA87931B78E43B48B40AB7E35AE8138AD8037C4A3
      54CDB15FD2BA66BC9549A77830AB7E35AD8037AE8339A3742C9F6E27B68D42CC
      AF5EBF9A4DA5762EAC7F36C3A052CBAD5CC29F51C4A354C7A757C9AB5AD2B865
      D9C46EDAC770D9C46EDCC972D1B764B78F44B99246C7A757C19E50C09D4FCCAF
      5ED1B764D6C06BD9C56FDBC871D8C36DD6C06BD8C36DD4BC68D2BA66D6BF6AD9
      C56FD5BE69CEB260CFB562D6C06BCDB15FCBAE5DBD984BAB7E35AE8138C19E50
      CFB361CEB260CBAD5CC09D4FBC974AB48B40B48B40BB9448BB9448C29F51BE99
      4CAE83398B5610844F09925E188F5B158E5A14905C1688530D85500A844F098C
      5711925E18935F199B6922A87931A97B32A3732BAA7D34B78E43BA9347BD984B
      C09D4FBF9A4DC09D4FC9AB5AC8A959C7A757C7A757C9AB5ACBAE5DC4A354C7A7
      57C8A959CEB260CDB15FC8A959C7A757C8A959CDB15FC4A354BF9A4DBE994CC6
      A556D1B764D3BB67CAAC5BBF9A4DBD984BB78E43BA9347BE994CBA9347B89145
      BB9448BC9347BE9446B78A3DBC9143BE9446B1843A96631E7A4601723D007643
      01905F1D97682582500E67330066320085510F9865258E581E7339065B230052
      1B004C16005118006025016C33057B460A8957108E5D12996A1A9D6F1D9A6A1D
      986120844B11682F005823005E2A006C38007F4909885412885313683300763D
      008952129C6A23A5782BA67C28A277209D731A9B6C16A27321AF8130B08633A9
      7C2DA37226935E14814A017A4300814C0387530A8450077B46007F4B00905E13
      9A6D1F9D6E1E996C169F731A9B6C169F721B9E6F1B9A6A169D6E1A996915A06F
      1B9D6B1795620F8E5A078955008753008955008B57018C59008E5C0393610896
      650C96650C95630A946209946209946107925F05905D038F5C028F5C028F5C02
      8F5C028E5C008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C3A052C19E50BE994CBC974AC09C4EC4A253C5A455C9AB5AC8A959C09C4EC8A8
      58C5A455C6A556C9AB5ACBAD5CCBAE5DCBAE5DC9AB5AC8A959C7A757C3A052BE
      994CBB9448BB9448BC9549BC974AB99246B78F44B78E43B2873DAB7E35AC7F36
      AF843AAE8339B08738B89342BB9546B89145BC954ABC944CA978368E58187B42
      057A41047C44047F4806824C0A89540F8C57128A5510763F006F38007B430399
      6424B48844C29D55C39F55BC954DB38842AE813CA97B36AA7C37AD7F3AA87932
      97641F87520D7F4904814B058652098F5C139A691F9D6E229A6A1E956219915E
      158F5B168B5414834B0F773C056D3200692E006A30006B34006D360070380074
      3C02773F057A42087C45097D460A784105743D01743E00743E00713B00713B00
      743E00733D00763E00774000774000774000774000763F007740007741007943
      007943007A44007B45007D48007E49007F4A017F4A017F49037A44007E48027F
      49037A44007B4500804A04814B057D47017F4903824D07814B05844F0987520C
      86510B8D58128E59138D58128E5A148E5913925E1897641E9A6821A3742CA272
      2A9E6D269E6D2698651F95611B95611B925E1895621C9D6C259D6C25AB7E35A7
      7830A17029A6772FA3732BA2722A9F6E27A06F28A97B32AA7D34A4752DAA7D34
      B38A3FB2873DBC9549B38A3FB1863CB58C41B1863CAF843AB0853BA5762EA374
      2CA4752DA4752DA77830A778309D6C25A87931A2722A98651F9A682196631D98
      651F97641E935F19925E188D58128D58128D581285500A814B05824D07814B05
      7F490386510B7F49047943007F49047943007E48037B45007943007B45007A44
      007B4500834D097B45007842007D47027943007F49047E48037741007D47027E
      48037C46017D47027D4702814B067F49037D4701804A04824C067F49037F4903
      804A047D470187520C844F09824D0789540E8D591095631A9F6D2397621C9863
      1D99631F9059157D43026C33007B4100955D1C99622199631F955F19A16E27B3
      863CB3873AB78D3FC09C4BB88F41BE974ABA9145B1843AA06D2698621E9D6924
      AF8039C8A558DBC774E6DB83E3D47ED6BF6EC8A95AD2BA67EEEB8CF1EF8FECE7
      88E5D97EDECD75D7C16CCAAC5BB68D42A677309F6E28A06F28A3742CA4752DA4
      752DA374299D6C229A691F9D6D2396641B87530A8551088D591095611BA87931
      B58C41B0853BB99246B1863CA6772FA97C33B48B40BC974ABC974AAE8339AA7D
      34AC7F36BF9A4DC5A455BA9347AA7D34A3732BAC7F36AD8037AA7D34A17029A8
      7931BE994CC09C4EAC7F36A2722ABA9347CAAC5BCFB361C9AB5ACBAD5CCEB260
      CCAF5ED1B764D0B663CFB361BD984BAE8339B68D42C29F51C4A354BE994CC4A3
      54CFB562D9C46ED9C56FD8C36DD9C56FD7C16CD2BA66D6C06BD2BA66D0B663D1
      B764CFB361CAAC5BC8A959CBAE5DCAAC5BCDB15FCDB15FC3A052B58C41B0853B
      BB9448C8A858CEB260CDB15FCFB361C4A354BC974ABC974ABA9347BE994CC09C
      4EC5A455A879318C57118A550F8A550F8D5812905C1695621C905C168D581292
      5E189C6A23A17029A6772FAE8339B78F44A3742CA97C33BC9549BC974ABD984B
      C29F51C09D4FBC9549C6A556C4A354C4A253C8A858CBAD5CCDB15FCAAC5BD4BC
      68CFB361D2BA66CEB260CBAE5DD1B764CAAC5BC19E50BC9549C4A354CFB562D5
      BE69D2BA66CAAC5BC09D4FBB9448C09C4EB89145B99246BD984BB89145B68D42
      B99246BD9549BD9345C49D4DB98D40A06D2687520D723B00784202935F1F9A6A
      2B8956186A38005A2A006D3800976523B38B41AB803895641D885313773C0B64
      2800541B00521800551B00531B006930027C470C9463219E6F29925F1D885013
      7A3F095D2300612600652D00774109925F1DA98032A47B2B9A6C2086540D6730
      00652E00733B008F5B16A274279E70209363128B5A09A17221AD7E2FAA7D2E9C
      6A1D8A540A794200774000824B019361169D6D219D6D218C590E794500764200
      8150038E5D0E9B6B17A0731C98691393610E915F0C956411A1731EA1731E9F6E
      1A95610E8954018550008955008E5B06915E08905D078C59008B58008B58008E
      5C0394620996650C95630A915F06925F05915E048F5C028E5B018E5B018F5C02
      8F5C028F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C4A354C4A253C3A052BD984BBA9347B99246BA9347C19E50C8A858C8A959B992
      46C09C4EC29F51C19E50C09D4FC09C4EC29F51C7A757C8A858CAAC5BC8A959C4
      A253C19E50C29F51C19E50BE994CBC974ABC974ABC9549B68D42AE8138AD8037
      AF843AAF843AB38C3CB58E3EBC9848C3A053B78E479A64277B42066A3200652D
      006F3600854D118F581B8A54128D581395611B925E18885210945E1EAB7C39BE
      9750C4A056BE984FB38842A97935A5762FA87932A97C34A677309A68228B5610
      804A047B450086540D9261189B6C229A6B219362198F5E178F5E17915F1A8C59
      14824C0C743E006B34006831006A32006E3501723903743C02763F037A43077D
      460A7D460A7A4307763F03733C00733C00703900713A00743D01723B00713A00
      733C00733D00763E00763E00753D00753D00763E00763E00773F007740007740
      007740007842007943007A44007B45007C47007D48007D47017A44007D47027E
      48037A44007A44007F4904804A057F4904814B06844F0A824C07844F0A87520D
      86510C8E59148C57118B56108C57118C5711915D1797641E9A6821A3742CA373
      2B9E6D269D6C2597641E94601A94601A915D1794601A9D6B249E6D26AC7F36A8
      7931A17029A6772FA170299C6A239F6E279E6D26A2722AA3732BA2722AAB7E35
      B0853BA97B32B3883EB2873DB2873DB3883EAC7F36A97C33AE8138A5762EAD80
      37AB7E35A77830A77830A87931A3732BAE8339AB7E359D6B249E6D269A68219A
      682197641E935F19935F198F5B158A550F8A550F834D08824D0787520C834D08
      7F4903824C067F49047D47027E4803753F00804A057E48037943007943007943
      007B4500844F0A7C46017741007B45007741007D47027A4301763F007B44027A
      43017841007C45037B45007C46017F49047E4803804A04824C067F49037E4802
      7E48027B4500865209804B02814C038E5A1194601A98651F9F6E279865209761
      1D955D1C925A197C4202733900986121B98D48BC924C9F6E288C571187520C97
      641E9F6E27A97C33B68D42AF843AB3883EBF9A4DC19E50B78E43B1863CAE8339
      B3883EC7A758D9C46FECE789F8FD99F1EF8FE6DB80E6DB80ECE788EDE889EFEC
      8CE6DC80E0D178DDCC74D2BA66BC974AA97B32A1702997641E98651F97641E9A
      68219D6B2498651F96641B9B6A20A6782D9E6E2498651F8F5B15824C06834D08
      98651FAA7D34A77830B58C41B58C41AD8037A6772FA5762EA77830A2722AAA7D
      34A97B32A87931A6772FB2873DBF9A4DB48B40A3742C996720A3742CA1702995
      621C9D6B24B38A3FB48B40A17029A3742CB99246C8A858C9AB5ACAAC5BC8A959
      C7A757CAAC5BCCAF5EC09C4EA97C33AD8037B99246BE994CC7A757C29F51C4A2
      53C9AB5AD5BE69DCC972D8C36DD2BA66D3BB67D4BC68D1B764CFB562CDB15FCB
      AE5DC9AB5AC8A959C8A959C9AB5ACAAC5BCBAE5DD2B865D2BA66C7A757B58C41
      B1863CB78E43C9AB5ACBAE5DD0B663CBAE5DC8A858C7A757C09C4EBD984BBE99
      4CC6A556BC974AA778308F5B1587520C905C1696631D9D6C259E6D269E6D26A3
      732BAB7E35AE8339AE8339B1863CB99246A77830B0853BC19E50BC9549BA9347
      C29F51C29F51C5A455C4A253BE994CBF9A4DBD984BBD984BCEB260DECD75D6BF
      6ACBAE5DD2B865D1B764C9AB5AC5A455C19E50C09D4FCBAE5DD1B764D4BC68CF
      B562C4A354BC974ABC9549BF9A4DBC9549B89145BA9347BC9549BC974ABE994C
      BD984BBB9344BF9746AD7D308F5A117A4200753E00885313966527915E227540
      046430006835008D5B1AA87B36AE843BA97C3397671B966914946314905C1C86
      4D1A6B3205561F00501A00521B00521C00662E048049178149166F3608622800
      5721005520007137058D561EA27033AF863DB5923F9D701E946510996C179665
      1A7842005F290068300082490D945E1E9D6B24A17326A8782C9F6D228D570D7A
      4300733D007A44008E590DA37325A87C2DA477299F702397671A8A570B7D4900
      7743007845008B57079767139B6B179A69189B6A199D6D1C9E6E1D9563138C57
      048752008450008A560195620C9A691298680E946209905D078E5A0489560088
      55008E5B0294620995630A926007925F05915E048F5C028E5B018E5C008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      C29F51C29F51C4A253BD984BB38A3FA97C33A3732BA5762EB1863CBC9549BF9A
      4DBD984BB48B40AE8138AF843AAE8339AC7F36AE8339B1863CB58C41B78F44B9
      9246BC9549BF9A4DC09D4FC09C4EBF9A4DB99246B78F44B78F44B58C41B58C41
      B99246BB9448B89243B78F41AE83399E6D278D561681480B7B42067A40067E44
      0A7A40067B42067E45088149098E59179C6A239E6D27B48A43BD954FC4A058BE
      9750AE803BA47430A77733A97B36AC7F37A677309B69238D58137E48027B4500
      88530D97641E9C6D23996A2094631C8F5E17905E19915E1C8A5515814B0B713B
      006B35006730006932006F3800743C04753D05733B017C45097D460A7E470B7D
      460A7A4307763F03723B006F3800733C00703900723B00753E02723B00723B00
      733C00713A00763D00753D00743C00763E007840007941017941017840007740
      007841007842007943007A44007B45007C47007C46007C46017D47027C46017E
      48037C46017A44007F4904814B067E4803814B0686510C834D09844F0A87520D
      85500B8E59148C57118B56108E59138F5B1595621C9B69229C6A23A4752DA272
      2A9E6D269E6D2699672095621C96631D935F1995611B9E6D26A06F28AF843AAC
      7F36A77830AD8037A6772F9F6E27A3732B9D6C259B69229C6A239F6E27A77830
      AA7D34A4752DAD8037B1863CB3883EB2873DAB7E35A97C33AF843AAB7E35B085
      3BAE8339AA7D34A97C33AA7D34A5762EB0853BAB7E35A3742CA3742C9D6B249A
      682195621C905C16935F19915D1787520C89540E844F09844F0989540E844F09
      7E4802804A047D47027F49047E4803733D007F49047F49047842007A44007741
      00794300824D087B45007741007B45007640007B45007D46047A43017F48067C
      45037942007D46047C46017C46017F49047D47027F4903804A047D47017D4701
      7E48027B4500824D05824D04865209925F1694601A97641EA06F299D6B259C65
      24986120935B1A7D4303844B0BAE7D3DC39C54C29A53B78F45B0853B925E1882
      4C068C571197641E9C6A2397641EA97C33B78E43C4A253C4A253C3A052C4A253
      C19E50C7A757C09C4FCCAF5FE0D078E8DF83E8DF83DDCC75CCAF5ECBAE5DCEB2
      60C5A455BE994CBD984BB99246AE8339A6772FA3742C996720915D178D581290
      5C1694601A8F5B15905D149B6A209A691F9F6F25A97B32AE8138A4752D8E5913
      794300723C0088530D996720A17029AA7D34B0853BAA7D34A6772FA5762EA374
      2CAA7D34AD8037A6772FA3732BAA7D34B89145C6A556B78E43A97B32A87931A9
      7B329E6D269D6B24A97B32AF843AA5762EA4752DB78F44CDB15FCBAE5DC8A959
      CEB260CAAC5BCAAC5BB3883EA4752DB58C41BF9A4DBC9549C4A253CBAD5CCCAF
      5EC8A858CBAE5DD3BB67D4BC68D3BB67D3BB67D2BA66CFB361D1B764CFB562C9
      AB5AC29F51C19E50C3A052C4A354CBAD5CC9AB5ACAAC5BCDB15FCEB260C8A858
      BD984BB48B40B78E43C09D4FCCAF5ED0B663CDB15FC8A959C6A556C7A757B992
      46BF9A4DD0B663C9AB5AA2722A905C169B69229B6922996720A3732BA97B32AC
      7F36B2873DB38A3FB38A3FB48B40B78E43B78F44C3A052C8A959C09C4EC09D4F
      CBAD5CCEB260CDB15FCBAD5CCBAE5DCBAE5DC09C4EC09D4FD2BA66D9C46ECEB2
      60CFB562CBAE5DCCAF5EC8A959C19E50C8A959D1B764D9C56FD2B865C7A757BE
      994CBB9448BC974ABF9A4DC19E50BA9347BE994CBD984BB78F44B78F44BF9A4D
      BF9A4DB892439E6C21824900763F007D4702905C1C9D6A2D834F146530005A27
      00754005956327B08843B38C42A1702995621991601190610C91620E98681C9D
      6C29936024814916683006551E004C18005C2300692F0A6129005A2300552000
      5F2A008851199E6D2EB58B44BC984CB68E40A97E2F8B5B078D5E079D721BA174
      239A691F864D116C3300642B00763B04935C20A67533955F1B854F06733C0073
      3C008752069C6A1DA87B29AC802EA377249F73209E721FA074219B6C1C8E5D0E
      824F007B48007641008652039562129F6F1FA375239E6E1D8F5C0C7E49007F49
      008550008F5C079867119D6D169D6C1598680E95630A93600A94610B905E0589
      56008653008B5800905E05926007946107936006915E048F5C028F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      BA9347BC974ABF9A4DBE994CBA9347AF843AA17029925E188B56108C5711AA7D
      34B78E43BD984BBD984BBC974AB78E43B1863CB2873DAD8037A97C33A77830A6
      772FA6772FA87931AD8037B2873DBA9347B68D42B3883EB1863CB1863CB48B40
      B38A3FAC7F36A6772F98652086510C7A430179410181480B8B5316915A1E8B53
      1782490D7038006E3600844D0D9D6A27AF833DBC944CBF9950B78E47AE813CA7
      7733A2702DA57531A77831A4752E98651F8B56107E48027F490387530A8F5C13
      95631A99681E96671D93621B8E5B168A5614895416844D12773F056932006831
      006B34006F3800713900733C007740047C46067F49097E480A7B450777410373
      3D00713B00723C00743D01763F03723B006F3800723B00753E02723B00713A00
      723B00703900763D00753C00763D00773E017940037A4104794003783F02773F
      00773F007841007943007A44007B45007C46007C46007A44007E48037A44007D
      47027C46017842007E48037F49047B4500804A0585500B844F0A86510C87520D
      85500B8D58138D58128C57118E5A148E5A1494601A98651F98651FA06F28A373
      2B9E6D269D6B2497641E95611B95621C935F1995621C9967209C6A23AB7E35A9
      7C33A4752DAA7D34A3742C9D6C259E6D269B69229A68219C6A239C6A239D6C25
      A3732BA77830A97B32AA7D34A97B32AA7D34AB7E35AE8138B1863CAB7E35B085
      3BB3883EB38A3FB78F44BA9347B2873DB78F44AD8037A2722AA2722A9B692297
      641E925E188E59138F5B158E591389540E8A550F834D08804A04824D07804A04
      7D4701824D077C4601804A05804A05753F007F49047E48037943007E48037943
      00794300814B067A44007943007E48037741007943007C45037941017F48067B
      44027841007C45037B45007A4400804A057D47027F4903804A047D47017E4802
      804A047E48027D4701824D0788530D8E59138E5A1496631DA1702A9B69239865
      2095601E8852107B440295611FB68B46B48A43AE813CB78F45C09D4FA97B328A
      550F85500A8E591395611B95621C9D6C25A6772FBD984BC4A253BF9A4DC4A354
      C8A959C5A455B99246A4752D9B6922A17029B99246C19E50B0853BAF843AB085
      3BAD8037A87931A3742CA06F289D6B2498651F95611B9967219B692398652093
      5F1A8D581285500A8551088D591099681E98671D95621C9A6821A1702A9D6B25
      915D188B5611743E00824D078E59139F6E27A87931A06F289D6C25A17029A475
      2DA06F289D6C25A5762EAA7D34A4752DA3732BAA7D34BD984BBB9448AF843AAA
      7D34AC7F36A3742C9D6C25A77830AE8138A3742CAB7E35C4A253C8A959C5A455
      CBAD5CC8A858BC9549AA7D34AC7F36B78E43BC974ABD984BC19E50CEB260CFB5
      62CFB361C8A959C3A052CAAC5BD6C06BD6C06BCBAE5DCCAF5ECFB361CCAF5EC4
      A253BD984BBE994CC29F51C4A253C7A757C8A858C6A556C5A455C7A757CAAC5B
      C9AB5AC7A757BC9549BE994CC3A052CBAE5DCEB260CAAC5BC8A858C6A556C8A9
      59C9AB5ACCAF5EBC95499D6B2494601A9E6D26A3742CA5762EAD8037B0853BAF
      843AB38A3FB78E43B78F44B78F44A3742CB3883EC29F51CAAC5BCBAE5DC8A858
      C29F51C09C4EC9AB5ACAAC5BCFB562D0B663CEB260D7C16CC7A7578E5913AE81
      38C7A757B78E43B89145CAAC5BCEB260DAC770D6C06BCAAC5BC4A253BE994CBE
      994CC29F51C4A253C09D4FBC9549BE994CBE994CBC974ABC974AC09C4EBB9448
      A6772F915E157C46007F49008E5A1196631EA17031834C124B1C00622E009F6E
      39B38B4FAF8546A47835A1732C9461188B580C935F13945F159B681D9E721F9B
      6E1E9D7226A174318E5B236D38075C25004C19004B1700521B00673001855116
      956422A87D31BA9544B99240B18838AA7E2CA779289D6D1DA273229F6F1F9969
      1CA87C2EA97C30915D18763D006D33006F3301713602753C00784200814B058E
      5B129E6F23A97F2DA97F2BA07421A0721D9F701C9F701CA2741FA375239F6F1F
      9562138C58097E49007F49008551028C570B8E5A0B895506824D00824D008E59
      0995610E9B6A149D6C169A691296650C95650A95640B915E0895620C94610B8E
      5A048754008754008B58008E5B02925F05915E04915E04905D038F5D008F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      AF843AB38A3FBA9347BE994CBC9549B68D42AC7F36996720844F097943007A44
      00915D17A97C33B68D42BB9448BA9347B89145B89145B89145B2873DAA7D34A6
      772FA170299D6B249F6E27A4752DA3742CAB7E35B0853BAE8339B1863CB68D42
      AC7F3696631D7640006B35006C36007D460487510F854D0E895212925C1C955F
      228D55187F46098C5515B0833FC19C54B98F4AB28541A97B36A47430A3732FA5
      7531A57531A2702D95621D86510C7C46007F490387520C935F199B6A209B6A20
      9360178C57118C59148E5B198C5717824C0E723B006831006831006C3500723A
      02763E067941077B44087C46087E480A804B097F4A08764000753F01743E0072
      3C00723C00723C00723B00733C00723B006F3800713A00743D01723B00713A00
      723B00713A00763D00763D00773E01783F02783F02783F02773E01753C00763E
      00773F007740007841007A44007B45007B45007C4600794300804A057943007D
      47027E48037741007E48037F49047C4601804A0586510C86510C88530E8A5510
      87520D8D58138B56108B56108E59138D5812905C1695621C98651FA2722AA475
      2D9F6E279D6B2495621C94601A95621C94601A96631D996720996720A97B32A8
      7931A2722AA6772FA06F289C6A23A170299C6A239A68219D6B249E6D269C6A23
      9C6A23A06F28A5762EA97C33A97B32AC7F36AE8138AE8339B3883EB1863CAF84
      3AB2873DB3883EB68D42B89145B1863CB58C41A97C339E6D269F6E279A682199
      672095621C8F5B158F5B158C571187520C8A550F85500A824C06834D087F4903
      7B4500814B057B45007D4702824C077842007E48037C46017A44007F49047B45
      007A4400814B067A44007943007F49047741007841007A4301763E007C45037A
      43017841007A43017943007A44007F49047D47027E4802804A047D47017F4903
      814B057F49037D4701824C06844F0987520C8B561098651FA1702A96631E925E
      198D58137E4803824D08A67730B78F45AD8038A87932AF843AB48B40AC7F3695
      621C7E480285500AA5762EB58C4195621C905C16A3742CAE8138AE8138BE994C
      C8A959C4A253C8A858C5A455BB9448A3742C9B69229B692297641EA06F289865
      1F9C6A239D6C259C6A2398651F935F198A550F824C06824D08905C1796631E96
      631E9D6C25A77830A87B2FA3752A8E5A11925F16905C168A550F89540F8B5611
      8F5B1694601B915D178B56107D47017E480289540E94601AA2722AA97B32A576
      2EA97C339D6B2498651FA4752DAB7E35A778309D6C259B6922AB7E35B0853BA6
      772FA17029A3742CA170299A6821A3742CAB7E35A3732BB0853BC6A556C5A455
      C4A253C4A354A97B32A97C33B48B40B48B40B99246C4A253C4A253CCAF5ECBAD
      5CD2B865CFB361C6A556C4A253C5A455C8A858CBAD5CCFB361CDB15FC7A757C0
      9C4EBD984BC19E50C5A455C5A455C09D4FC29F51C6A556C8A858C6A556C4A253
      C7A757CBAE5DCBAE5DC7A757BE994CBF9A4DC19E50C19E50C6A556C7A757CBAD
      5CBA9347A2722A95621C9A682194601A8D58129B6922A06F28A77830AA7D34AE
      8339B99246C09C4EC09C4EBE994CAF843AB2873DB78F44C3A052CDB15FCCAF5E
      C3A052BC974AC09D4FC8A959D0B663CFB361C6A556C4A354A87931632F00B38A
      3FD3BB67C7A757CCAF5ED9C56FD0B663CFB361C4A253BD984BBE994CC09D4FC2
      9F51C29F51C09D4FBE994CBC974ABE994CBF9A4DC09C4EC09C4EB68D429C6A23
      824D077A45008D580C956216A3752A9D6B289B682B814A144D1E00572400AA7B
      48CDB171BE995A915D1F804D068754099461119D6C1C9D671E9D671E9D6C1B9F
      7320A57B2DA77D3594632674400C632D034C1900511B005721006833049E7032
      C0A455BF9F4CB18A36A97C29A37523A47624AD812FB28737B68D3CA57529915F
      139F7023A97E2FA4762B935E1C7F450B6F3202662B00693100824C0AA3732CB0
      8639AB8032A47827A27721A0751EA47821A3781FA2761DA1741DA47722A77927
      A375239D6C1C956216885208824C007C46007741007943008551029A69199D6B
      1A9D6B179C6B159A691298680E96650C96670B96670B915F0693600A94610B94
      610B915F068E5B028B58008956008D59008E5A008E5B018E5B018E5C008E5C00
      8F5D00905E018F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      A4752DA87931B0853BB58C41B38A3FAF843AAE8339A5762E96631D8E5A148E59
      138B56108C571194601AA2722AB1863CB68D42B1863CB2873DB0853BAE8138AB
      7E35A97B32A77830A77830A97B32AF843AB38A3FB58C41AF843AA778309F6E27
      905C167D47026D38007842027D47077A4503794402824F0A8C59148F5D188E5B
      169E6E2BAE843EB48B46B18642AA7D3CA47535A47535A26F2EA16F2CA16F2C9D
      6A27925E1989540F85500A824D078D581294601A9B6A209B6A2096641B925F16
      905E138F5B16844D137B420C7139016D36006D36006F3800733C00784204713B
      007640027D4707824C0C824D0F7F490B753F016C3700713B00733D00753F0076
      4000753F01733D00703A006F3900743D01703900723B00743D01723B00723B00
      743C02733B01773E02773E02783F03783F03773E02763D01763D01763D01763D
      00763D00773F007942007A44007B45007C46007D4701794300824D087943007E
      4803814B067842007F4904814B067A44007E4803834D09834D0986510C89540F
      85500B8A55108A550F8B56108F5B158E5A14925E1897641E9A6821A5762EA272
      2A9D6B249C6A2396631D95611B96631D94601A95621C9C6A239A6821A97B32A9
      7B32A2722AA3732B9D6C259D6C25A170299C6A2396631D98651F9D6C259D6C25
      9B69229C6A23A4752DAC7F36AD8037B1863CB2873DAE8138B3883EB68D42B891
      45B89145B58C41B58C41B78E43B2873DB89145AE81389E6D269F6E279A68219A
      682197641E925E18915D178D581285500A89540E86510B844F0986510B804A04
      7A44007F49037A44007741007E48037842007A44007640007640007A44007640
      007640007E4803774100753F007B4500753F007740007B4402753D007B43037C
      44047942007A43017841007B44027A44007842007B45007D47017B45007C4600
      7D47017A4400804A05824D08824D0885500B89540F95621D9E6D27925E198B59
      12814D0775420088560FA3772EA87D33A3772EA4782FB89145B38A3FA97B3297
      641E7E48027A44009D6B24B99246A97C33925E188B56108C571195611BAD8037
      BB9546BA9445B38A3CBE9A4AC2A04FBB9546BC9549BC974AAB7E3598651F8B56
      108D5812905C16925E18915D178B5610824D077D4701753F0079420077410079
      43008A550F9A68219D6C2299681EA3752AA3752AA06F289A682195621D935F1A
      8F5A188C57128D5812935F1994601A8E5A147F4903764000824C0688530D9B69
      2294601A7A44007B450094601AA3742CAC7F36AD8037A5762E9C6A23A5762EB0
      853BA778309E6D269E6D269B69229D6B24AE8138A17029AB7E35C8A858C9AB5A
      C29F51BC9549A3742CAF843AB48B40B48B40BC974AC6A556C7A757C9AB5AC8A9
      59D1B764D2B865CFB562C8A858B38A3FAD8037BC9549C8A959C8A858C4A354BF
      9A4DBD984BBF9A4DC09D4FC09D4FC09C4EC09D4FC4A253C8A959C8A858C3A052
      C29F51C4A354C6A556CDB15FC8A858C09D4FB78F44B68D42C19E50C4A354AB7E
      3594601A8C57119A6821AA7D34A170298E591395621C96631D9D6C25A5762EAF
      843ABD984BC6A556C8A858C8A858C9AB5ABC9549B48B40B0853BB1863CC19E50
      CEB260C9AB5ABD984BD1B764DAC770D3BB67BF9A4DAE8138A97B32A3742CB58C
      41CBAD5CD1B764D7C16CD6C06BC8A858C4A354C4A253C09D4FC29F51C29F51C0
      9C4EBD984BBD984BBF9A4DC29F51BD984BC09D4FB89145A3742C8C57117A4400
      824D0799681EA070209D6D1DA27328A06E2B9C682D97622F7840104719004719
      00966230B58C4FA272328D5B14915F139D6D199A6B15A37220966113966218A4
      752DA97C37956327723C08512100491B0057250067310C612A024E1E006B3403
      986531A679399D6A1FA37321AA7B2AA9782AA9792BAA7B2CB58C3BB28737A677
      29AB7D30AA7F319D6C25834D0B6D35006B32007339007039007F49099D6A27AE
      8138A97D2E9F73209D721B9F751C9E7217A3781DA77D21A57B21A37520A27321
      A57523A67525976319875108834D03814A007E47007F48008752069C6B1B9E6C
      1B9B691597651097650F99690F9B6C10996A0C97680C96650C94610B95620C97
      650F96650C905E058C59008A57008A56008C58008E5C008F5D008F5D008E5C00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700906000
      9D6C259E6D269F6E27AB7E35AE8138AB7E35AC7F36A879319D6B2498651F9561
      1B925E18915D178D58128A550F95621CA4752DA77830AA7D34AD8037AB7E35A7
      7830A5762EA77830A77830A4752D9D6C2594601A8F5B158E5A1486510B7D4701
      7E4802824D088F5B1B8C57198550107B45056F3B006E3A00804D0693621BA97F
      35A97E36AE853CAD803DA1702F9D6B2C9D6B2E9663259F6C2B976321915C1A8A
      5412814B06814B068A550F905C1696631D95621C925F168F5C138F5C138E5A11
      8552077C4601743B056B31006830006E3600743C04743D01753F01774101814C
      0A834F0D824D0C7B4505743E00723C00753E02774004743E00733D00723C0071
      3B00723C00733D00753F01764002774004733C00743D01753E02733C00723B00
      753D03743C02773E02783F03794004783F03773E02763D01783F03794004763D
      00773E017840007A42027B45007C46017E48027E4802794300834D097943007E
      4803814B067842007F4904814B067F4904814B0685500B85500B89540F8C5712
      88530E8D58138B56108E5A1495611B94601A95621C98651F996720A3732BA272
      2A9F6E27A170299E6D269E6D269F6E279967209967209B692297641EA6772FA6
      772F9E6D269D6C259967209C6A239D6B249F6E279D6B249A68219D6B24A06F28
      A4752DA97C33AE8138AF843AAE8138B48B40BA9347B68D42B58C41B58C41BB94
      48BC9549B99246BA9347BC974AB78E43BC974AB1863CA6772FA5762E9E6D269D
      6C259C6A2397641E97641E925E18905C16915D178B561087520C8A550F86510B
      834D0889540E804A05794300814B067E48037F49047A44007A44007C46017842
      00794300824C077B4500794300804A057B45007F48067E4705763E007C44047E
      46067B44027942007740007B44027D47027D4702804A04824D07814B05804A04
      804A047D4701804A05824D08834D0985500B86510C8F5B169865208F5B168250
      097441006F3C008E5C159F72279D6F25A87D31AE8639B68D42B78F44A5762E98
      651F8E5A147C460086510BA6772FB3883E9D6B248A550F804A0485500A905C16
      915E15915E159F6F25AC8034B1873AB1873AB99246C4A354C29F51B58C41A778
      309F6E2797641E935F198C5711824C067A4400794300723C00713A00743E007F
      490489540E88530D8652098B570E915E15925F1698651FA06F28A3732CA3742D
      A16F2C9D6A279D6C258F5B1586510B8E59138E59138B56108F5B158D5812925E
      18915D1779430079430094601AA6772FB0853BB0853BAD8037B1863CAD8037A8
      7931AA7D34A97B32A3732BA3732B9F6E27A778309E6D26AE8138C4A253C4A354
      BB9448A6772FA97B32B48B40AF843AB78F44C4A253C3A052C6A556C8A858CBAE
      5DD2BA66CFB361CEB260CFB361B891459E6D269D6B24AA7D34B1863CB78F44BA
      9347BB9448BD984BC19E50C5A455C3A052C4A253C3A052C09D4FC09D4FC29F51
      C4A253C4A253C4A354CAAC5BC4A253C4A253C8A959C8A858BE994CA6772F9865
      1F8B56109F6E27AC7F36A6772FAD8037B38A3FB48B40B78E43BC9549BC974ABD
      984BC19E50C4A354C7A757CBAD5CCEB260CAAC5BCEB260C09D4FAF843AC4A354
      DAC770CDB15FC6A556D1B764C8A959C8A858D2BA66CEB260C8A858CBAE5DCFB5
      62D6C06BDECD75D2B865C29F51C19E50C19E50C19E50C29F51C19E50C09C4EC0
      9C4EC19E50C29F51C29F51C19E50C29F51B68D4296631D7F4903844F09925E18
      98651F9C6B21996818A070209A691FA16F2C9D6D319C68349F6C3D8E572B5D28
      00461800622E00A27232B38D419C6C1F956510A1721AA87B23A87725A5752A9A
      63227B45075E2A00532100501F00602C027C461E7B461C743F15693308512000
      5521006832008751079D6B1AA97929A06D20955F158F580EA57628B68D3CBC95
      43A97B2E8B570E713B00683200733B00874F12955F228D571B723C006D370080
      4A048E5C109769179F741DA37920A2771A9B6E12996B11A1751CA97F27A97D27
      9E6C1B915B0D854F057942007F4800854F068A540A875107804A008853079D6B
      1A9A681495630E95620C97680C996A0E996A0C996A0E9B6B1196640E95620C96
      640E9361088B58008956008C59008B57008D59008F5D00905E01905E018F5D00
      8F5D008F5D008F5E00905F00905F00905F00905F00905F00905F009160019160
      0192610292610192610192620092620092620093630093630093630093630093
      6300946401946401946401946401966701966701966701966701976802976802
      976802976802976800986901986901986901986901986901986A00996B01996B
      01996B01996B019A6C029A6C029A6C029B6D039B6D039A6D009A6D009B6E009B
      6E009C6F019C6F019C6F019C6F019D70009E72019E72019E72019E72019E7201
      9E72019F73029F7302A07403A07403A07403A07501A07501A07501A17602A176
      01A27702A27702A27702A27801A27801A27801A37902A37902A37902A37902A3
      7902A37B03A37B03A37C01A37C01A67C02A67C02A67C02A67C02A77D03A77D03
      A77E02A77E02A77E02A87F03A87F03A87F03A88001A88001A88001A98102A981
      01A98101A98101A98101A98401A98401A98401A98401AA8502AA8502AA8502AA
      8502AB8603AB8603AB8603AB8603AC8701AD8802AD8802AD8802AD8802AD8802
      AD8802AE8A03AE8A02AE8A02AE8A02AE8A02AE8B03AE8B03AE8B03AE8B03AE8C
      01AF8D02AF8D02AF8D02AF8D02AF8D02AF8D02B08E03B08F02B08F02B08F02B0
      8F02B19103B19103B19103B19103B19102B19102B19102B19102B29203B29203
      B29203B29203B39301B49402B49402B49402B49402B49402B49402B59503B494
      02B59503B59503B59503B59503B59503B59503B69704B69703B69703B69703B6
      9703B79804B79804B79804B79804B79902B79902B79902B79902B79A03B79A03
      B79A03B79A03B79A03B79A03B79A03B79A03B89C04B89C04B89C04B89C04B89D
      03B89D03B89D03B89D03B99E04B99E04B99E04B99E04B89E02B99F03B99F03B9
      9F03B99F03B99F03B99F03BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BA
      A004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004
      BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA004BAA0
      04BAA004BAA004BAA004BAA004BAA004BAA004906000AB870000AB8700966900
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      0090600090600090600090600090600090600090600090600090600090600090
      6000906000906000906000906000906000906000906000906000906000906000
      9060009060009060009060009060009060009060009060009060009060009060
      00906000906000906000906000906000906000906000AB870000}
    BackgroundType = bgtTopLeftBitmap
    Align = alTop
    BevelOuter = bvNone
    TransparentXPThemes = False
    UseXPThemes = False
    Color = 11241216
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    DesignSize = (
      644
      57)
    object Animation: TImage
      Left = 593
      Top = 40
      Width = 37
      Height = 8
      Anchors = [akTop, akRight]
      Stretch = True
      Transparent = True
    end
    object AnimFixedImg: TImage
      Left = 589
      Top = 8
      Width = 42
      Height = 32
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D617016020000424D160200000000000076000000280000002000
        00001A0000000100040000000000A00100000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00333377777777773333337777777777333337000000000003333700000000
        0003337007F888888803337007F888888803370077F87FFFF803370077F87FFF
        F803370777F877777803370777F877777803308777F888888803308777F88888
        8803308777F87FFFF803308777F87FFFF803308777F877777803308777F87777
        7803308777F888888803308777F888888803308777F87FFFF803308777F87FFF
        F803308777F877777803308777F877777803308777F888888803308777F88888
        8803308777F87FFFF803308777F87FFFF803308777F877777803308777F87777
        7803308777F888888803308777F888888803308777F87FFFF803308777F87FFF
        F803308777F877777803308777F877777803308777F888888803308777F88888
        8803308777F888777803308777F888777803308777F888BBB803308777F888BB
        B80330F777F88877780330F777F888777803330F77F888CCC803330F77F888CC
        C8033330F7F8888888033330F7F88888880333330FFFFFFFFF0333330FFFFFFF
        FF03333330000000000333333000000000033333333333333333333333333333
        3333}
      Stretch = True
      Transparent = True
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
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Truy'#7873'n - Nh'#7853'n d'#7919' li'#7879'u t'#7915' xa'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 420
    Top = 65535
  end
  object FileDlg: TOpenDialog
    FilterIndex = 0
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 511
    Top = 42
  end
  object AnimationImgs: TImageList
    AllocBy = 10
    Height = 8
    Width = 32
    Left = 360
    Bitmap = {
      494C01010A000E00040020000800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF000080808000FFFF000080808000FFFF00008080
      8000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      00008080800080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      00008080800080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      00008080800080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFF000080808000FFFF000080808000FFFF000080808000FFFF00008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFF000080808000FFFF000080808000FFFF
      000080808000FFFF000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFF00008080
      8000FFFF000080808000FFFF000080808000FFFF000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF000080808000FFFF000080808000FFFF00008080
      8000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF000080808000FFFF000080808000FFFF00008080
      8000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFF000080808000FFFF
      000080808000FFFF000080808000FFFF00008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFF000080808000FFFF000080808000FFFF00008080
      8000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000
      FFFFF803FFFFFFFF0000000000000000FFFFF803FFFFFFFF0000000000000000
      FFFFF803F803F8030000000000000000F003F003F003F0030000000000000000
      E001E001E001E0010000000000000000FFE00FFFFFFC01FFFFFF803FFFFFF803
      FFE00FFFFFFC01FFFFFF803FFFFFF803FFE00FFFFFFC01FFFFFF803FFFFFF803
      FFE00FFFFFFC01FFFFFF803FFFFFF803FFE00FFFFFFC01FFFFFF803FFFFFF803
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F003F003F003F003F003F003F003
      E001E001E001E001E001E001E001E001FFFFFFFFFFFFFFFFF803FFFFFF007FFF
      FFFFFFFFFFFFFFFFF803FFFFFF007FFFFFFFFFFFF803FFFFF803FFFFFF007FFF
      FFFFFFFFF803FFFFF803FFFFFF007FFFFFFFFFFFF803FFFFF803FFFFFF007FFF
      FFFFFFFFF003FFFFFFFFFFFFFFFFFFFFF003F003E001F003F003F003F003F003
      E001E001C001E001E001E001E001E00100000000000000000000000000000000
      000000000000}
  end
  object qryHSCT: TIBOQuery
    Params = <>
    DatabaseName = 'F:\5.0\DB\accounting.GDB'
    EditSQL.Strings = (
      'UPDATE COMPANY_FILE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   FULLNAME = :FULLNAME,'
      '   FTP_DOMAIN = :FTP_DOMAIN,'
      '   FTP_PASSWORD = :FTP_PASSWORD,'
      '   FTP_USERNAME = :FTP_USERNAME,'
      '   PBRANCH_ID = :PBRANCH_ID'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select branch_id, '
      '       fullname,ftp_domain,'
      '       ftp_password,ftp_username,'
      '       pbranch_id,'
      '       ISMIN   '
      'from company_file'
      'order by branch_id')
    FieldOptions = []
    Left = 512
    object qryHSCTBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryHSCTFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryHSCTFTP_DOMAIN: TWideStringField
      FieldName = 'FTP_DOMAIN'
      Size = 30
    end
    object qryHSCTFTP_PASSWORD: TWideStringField
      FieldName = 'FTP_PASSWORD'
      Size = 15
    end
    object qryHSCTFTP_USERNAME: TWideStringField
      FieldName = 'FTP_USERNAME'
      Size = 15
    end
    object qryHSCTPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 6
    end
    object qryHSCTISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
  end
  object dsHSCT: TDataSource
    DataSet = qryHSCT
    Left = 512
    Top = 14
  end
  object ActionList1: TActionList
    Left = 553
    Top = 40
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&Save'
      Hint = 'Post'
      ImageIndex = 0
      DataSource = dsHSCT
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 0
      DataSource = dsHSCT
    end
  end
  object ActionList2: TActionList
    Left = 482
    Top = 42
    object acInfoPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&Save'
      Hint = 'Post'
      ImageIndex = 0
      DataSource = MainDM.dsTransferInfo
    end
    object acInfoCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 0
      DataSource = MainDM.dsTransferInfo
    end
    object acTransfer: TAction
      Caption = 'acTransfer'
      OnExecute = acTransferExecute
    end
    object acGenFile: TAction
      Caption = 'acGenFile'
      OnExecute = acGenFileExecute
    end
    object acUpdate: TAction
      Caption = 'acUpdate'
      OnExecute = acUpdateExecute
    end
  end
  object dsLog: TDataSource
    DataSet = memLog
    Left = 390
    Top = 12
  end
  object memLog: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 390
    Top = 65533
    object memLogCONTENT: TWideStringField
      FieldName = 'CONTENT'
      Size = 127
    end
    object memLogDATE: TDateField
      FieldName = 'DATE'
    end
    object memLogTIME: TTimeField
      FieldName = 'TIME'
    end
    object memLogTRANSFERED: TSmallintField
      FieldName = 'TRANSFERED'
    end
    object memLogUPDATED: TSmallintField
      FieldName = 'UPDATED'
    end
  end
  object tsMain: TIB_Transaction
    AutoCommit = True
    Isolation = tiCommitted
    Left = 584
    Top = 40
  end
  object IB_Script1: TIB_Script
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsMain
    Left = 88
    Top = 381
  end
  object qryHistory: TIBOQuery
    Params = <>
    DatabaseName = 'F:\5.0\DB\accounting.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LOG_ID'
      '     , LOG_DATE'
      '     , CONTENT'
      '     , LOG_TIME'
      '     , TRANSFERED'
      '     , UPDATED'
      'FROM TRANSFER_LOG')
    FieldOptions = []
    Left = 482
    object qryHistoryLOG_ID: TIntegerField
      FieldName = 'LOG_ID'
      Required = True
    end
    object qryHistoryLOG_DATE: TDateTimeField
      FieldName = 'LOG_DATE'
    end
    object qryHistoryCONTENT: TWideStringField
      FieldName = 'CONTENT'
      Size = 255
    end
    object qryHistoryLOG_TIME: TTimeField
      FieldName = 'LOG_TIME'
    end
    object qryHistoryTRANSFERED: TSmallintField
      FieldName = 'TRANSFERED'
      MaxValue = 1
    end
    object qryHistoryUPDATED: TSmallintField
      FieldName = 'UPDATED'
      MaxValue = 1
    end
  end
  object dsHistory: TDataSource
    DataSet = qryHistory
    Left = 482
    Top = 14
  end
  object Timer2: TTimer
    Interval = 60000
    OnTimer = Timer2Timer
    Left = 331
    Top = 65534
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 577
    Top = 4
  end
  object qryCommon: TIBOQuery
    Params = <
      item
        DataType = ftDateTime
        Name = 'tungay'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'denngay'
        ParamType = ptInput
      end>
    DatabaseName = 'F:\5.0\DB\accounting.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select LOG_ID,LOG_CONTENT,LOG_DATES from SYS_LOG'
      'where LOG_DATES between :tungay and :denngay and DONE <> 1'
      'order by LOG_DATES asc')
    FieldOptions = []
    Left = 452
    object qryCommonLOG_ID: TIntegerField
      FieldName = 'LOG_ID'
      Required = True
    end
    object qryCommonLOG_CONTENT: TWideStringField
      FieldName = 'LOG_CONTENT'
      Size = 3072
    end
    object qryCommonLOG_DATES: TDateTimeField
      FieldName = 'LOG_DATES'
    end
  end
  object activetrigger: TIB_Script
    SQL.Strings = (
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'SYSLOG_DOCUMENTS_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'SYSLOG_DOCUMENTS_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'SYSLOG_DOCUMENTS_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'FULL_ENTRYS_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'FULL_ENTRYS_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'FULL_ENTRYS_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE     RDB$TRIGGER_NAME = '#39'OBJECT_LIST_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_LIST_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_LIST_AD'#39';'
      ''
      '/*UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE  RDB$TRIGGER_NAME = '#39'OBJECT_LIST_BU'#39';*/'
      ''
      'UPDATE RDB$TRIGGERS SET   RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_DETAIL_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET   RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_DETAIL_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_DETAIL_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_TYPE_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_TYPE_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_TYPE_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_INFO_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_INFO_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 0'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_INFO_AU'#39';'
      ''
      'COMMIT WORK;'
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsMain
    Left = 16
    Top = 381
  end
  object inactivetrigger: TIB_Script
    SQL.Strings = (
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'SYSLOG_DOCUMENTS_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'SYSLOG_DOCUMENTS_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'SYSLOG_DOCUMENTS_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'FULL_ENTRYS_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'FULL_ENTRYS_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'FULL_ENTRYS_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE     RDB$TRIGGER_NAME = '#39'OBJECT_LIST_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_LIST_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_LIST_AD'#39';'
      ''
      '/*UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE  RDB$TRIGGER_NAME = '#39'OBJECT_LIST_BU'#39';*/'
      ''
      'UPDATE RDB$TRIGGERS SET   RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_DETAIL_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET   RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_DETAIL_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_DETAIL_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_TYPE_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_TYPE_AU'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'OBJECT_TYPE_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_INFO_AD'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_INFO_AI'#39';'
      ''
      'UPDATE RDB$TRIGGERS SET  RDB$TRIGGER_INACTIVE = 1'
      'WHERE RDB$TRIGGER_NAME = '#39'INVOICE_INFO_AU'#39';'
      ''
      'COMMIT WORK;')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsMain
    Left = 52
    Top = 381
  end
end
