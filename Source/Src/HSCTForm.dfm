object HSCTFrm: THSCTFrm
  Left = 234
  Top = 142
  Width = 596
  Height = 432
  HelpContext = 7
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
    Width = 588
    Height = 398
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBEdit1: TdxDBEdit
      Left = 130
      Top = 73
      Width = 308
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'FULLNAME'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit2: TdxDBEdit
      Left = 130
      Top = 100
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      DataField = 'SHORTNAME'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit3: TdxDBEdit
      Left = 366
      Top = 100
      Width = 106
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'TAXCODE'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit4: TdxDBEdit
      Left = 130
      Top = 127
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      DataField = 'TELPHONE'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit5: TdxDBEdit
      Left = 130
      Top = 154
      Width = 414
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      DataField = 'ADDRESS'
      DataSource = MainDM.dsHSCT
    end
    object dxDBGraphicEdit1: TdxDBGraphicEdit
      Left = 475
      Top = 46
      Width = 100
      Cursor = crIBeam
      ImeMode = imDisable
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      DataField = 'LOGO'
      DataSource = MainDM.dsHSCT
      OnAssignPicture = dxDBGraphicEdit1AssignPicture
      OnGetGraphicClass = dxDBGraphicEdit1GetGraphicClass
      Height = 100
    end
    object dxDBEdit6: TdxDBEdit
      Left = 366
      Top = 181
      Width = 178
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      DataField = 'TRADEFIELD'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit7: TdxDBEdit
      Left = 130
      Top = 181
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      DataField = 'TRADETYPE'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit8: TdxDBEdit
      Left = 366
      Top = 208
      Width = 178
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 12
      DataField = 'EMAL'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit9: TdxDBEdit
      Left = 130
      Top = 208
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      DataField = 'WEBSITE'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit10: TdxDBEdit
      Left = 366
      Top = 292
      Width = 178
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 17
      DataField = 'CASHIER'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit11: TdxDBEdit
      Left = 130
      Top = 265
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 13
      DataField = 'DIRECTOR'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit12: TdxDBEdit
      Left = 130
      Top = 292
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 14
      DataField = 'ACCT_MANAGER'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit13: TdxDBEdit
      Left = 366
      Top = 319
      Width = 178
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 18
      DataField = 'STOREKEEPER'
      DataSource = MainDM.dsHSCT
    end
    object BitBtn1: TElPopupButton
      Left = 1
      Top = 372
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 19
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 82
      Top = 372
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 20
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 431
      Top = 372
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 21
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 512
      Top = 372
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 22
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit14: TdxDBEdit
      Left = 130
      Top = 46
      Width = 308
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'OWNER_NAME'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit15: TdxDBEdit
      Left = 366
      Top = 127
      Width = 72
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      DataField = 'FAXNUMBER'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit16: TdxDBEdit
      Left = 130
      Top = 319
      Width = 130
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 15
      DataField = 'GENERAL_ACC'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit17: TdxDBEdit
      Left = 366
      Top = 265
      Width = 178
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 16
      DataField = 'PAYMENT_ACC'
      DataSource = MainDM.dsHSCT
    end
    object dxDBEdit18: TdxDBEdit
      Left = 130
      Top = 19
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'COMPANY_ID'
      DataSource = MainDM.dsHSCT
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Th'#244'ng tin chung'
        object locCompanyID: TdxLayoutItem
          Caption = 'M'#227' c'#244'ng ty'
          Control = dxDBEdit18
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group9: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group6: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'New Group'
            ShowCaption = False
            ShowBorder = False
            object dxLayoutControl1Group12: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item19: TdxLayoutItem
                Caption = 'T'#234'n '#273#417'n v'#7883' ch'#7911' &qu'#7843'n'
                Control = dxDBEdit14
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item3: TdxLayoutItem
                Caption = 'T'#234'n '#273#7847'y '#273#7911' '#273#417'n v'#7883
                Control = dxDBEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'T'#234'n t'#7855't (th'#432#7901'ng g'#7885'i)'
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'M'#227' s'#7889' thu'#7871
                  Control = dxDBEdit3
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'S'#7889' '#273'i'#7879'n tho'#7841'i'
                  Control = dxDBEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'S'#7889' FAX'
                  Control = dxDBEdit15
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            Caption = 'New Group'
            ShowCaption = False
            ShowBorder = False
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Logo'
              CaptionOptions.AlignVert = tavTop
              ShowCaption = False
              Control = dxDBGraphicEdit1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = #272#7883'a ch'#7881' '#273#417'n v'#7883
          Control = dxDBEdit5
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'Lo'#7841'i h'#236'nh doanh nghi'#7879'p'
            Control = dxDBEdit7
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'L'#297'nh v'#7921'c ho'#7841't '#273#7897'ng'
            Control = dxDBEdit6
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group10: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item12: TdxLayoutItem
            Caption = #272#7883'a ch'#7881' website'
            Control = dxDBEdit9
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #272#7883'a ch'#7881' Email'
            Control = dxDBEdit8
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group8: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Th'#244'ng tin v'#7873' nh'#226'n s'#7921' '
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group15: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'Th'#7911' tr'#432#7903'ng '#273#417'n v'#7883
            Control = dxDBEdit11
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            Caption = 'K'#7871' to'#225'n tr'#432#7903'ng'
            Control = dxDBEdit12
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item21: TdxLayoutItem
            Caption = 'K'#7871' to'#225'n t'#7893'ng h'#7907'p'
            Control = dxDBEdit16
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group14: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item22: TdxLayoutItem
            Caption = 'K'#7871' to'#225'n thanh to'#225'n'
            Control = dxDBEdit17
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Th'#7911' qu'#7929
            Control = dxDBEdit10
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Th'#7911' kho '
            Control = dxDBEdit13
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group11: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item15: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item17: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item18: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 104
    Top = 56
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 4
      Offsets.ControlOffsetVert = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 340
    Top = 388
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = MainDM.dsHSCT
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = MainDM.dsHSCT
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
        Caption = 'H'#7891' s'#417' c'#244'ng ty'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
