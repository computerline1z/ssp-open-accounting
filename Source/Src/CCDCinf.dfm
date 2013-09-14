object CCDCINFFrm: TCCDCINFFrm
  Left = 190
  Top = 127
  Width = 700
  Height = 525
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TntPageControl1: TTntPageControl
    Left = 0
    Top = 0
    Width = 692
    Height = 491
    ActivePage = TntTabSheet1
    Align = alClient
    TabOrder = 0
    object TntTabSheet1: TTntTabSheet
      Caption = 'Th'#244'ng tin '
      Caption_UTF7 = 'Th+APQ-ng tin '
      object dxLayoutControl1: TdxLayoutControl
        Tag = -2
        Left = 0
        Top = 0
        Width = 684
        Height = 463
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLayoutStandardLookAndFeel1
        object ElLabel1: TElLabel
          Left = 188
          Top = 325
          Width = 32
          Height = 16
          Caption = 'th'#225'ng'
        end
        object dxDBEdit4: TdxDBEdit
          Left = 253
          Top = 46
          Width = 302
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 5
          DataField = 'OBJECT_NAME'
          DataSource = dsDTPB_lst
        end
        object dxDBEdit7: TdxDBEdit
          Left = 81
          Top = 70
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          DataField = 'SUBINFO_1'
          DataSource = dsDTPB_lst
        end
        object pedtTK: TdxDBPopupEdit
          Left = 581
          Top = 22
          Width = 90
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 7
          OnEnter = pedtTKEnter
          DataField = 'OACCOUNT_ID'
          DataSource = dsDTPB_lst
          PopupControl = PopupFrm.PnlTK
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = pedtTKCloseUp
          OnInitPopup = pedtTKInitPopup
        end
        object dxDBMemo1: TdxDBMemo
          Left = 81
          Top = 94
          Width = 592
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 10
          DataField = 'OBJECT_NOTES'
          DataSource = dsDTPB_lst
          Height = 194
        end
        object dxDBPopupEdit2: TdxDBPopupEdit
          Left = 81
          Top = 349
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 13
          OnEnter = dxDBPopupEdit2Enter
          OnExit = dxDBPopupEdit2Exit
          DataField = 'ALLOCATE_ACC'
          DataSource = dsDTPB
          PopupControl = PopupFrm.PnlTK
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = dxDBPopupEdit2CloseUp
          OnInitPopup = dxDBPopupEdit2InitPopup
        end
        object dxDBPopupEdit3: TdxDBPopupEdit
          Left = 81
          Top = 22
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          OnEnter = dxDBPopupEdit3Enter
          DataField = 'AMORTISE_ACC'
          DataSource = dsDTPB
          PopupControl = PopupFrm.PnlTK
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = dxDBPopupEdit3CloseUp
          OnInitPopup = dxDBPopupEdit3InitPopup
        end
        object dxDBPopupEdit4: TdxDBPopupEdit
          Left = 424
          Top = 22
          Width = 95
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 4
          OnEnter = dxDBPopupEdit4Enter
          DataField = 'OBJGRP_ID'
          DataSource = dsDTPB_lst
          PopupControl = PopupFrm.PnlObjGrp
          PopupFormBorderStyle = pbsSimple
          PopupWidth = 543
          OnCloseUp = dxDBPopupEdit4CloseUp
        end
        object dxDBEdit3: TdxDBEdit
          Left = 81
          Top = 401
          Width = 104
          Cursor = crIBeam
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 18
          DataField = 'NGUYENGIA'
          DataSource = dsDTPB_lst
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBEdit8: TdxDBEdit
          Left = 422
          Top = 401
          Width = 265
          Cursor = crIBeam
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 20
          DataField = 'GTCL'
          DataSource = dsDTPB_lst
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBEdit9: TdxDBEdit
          Left = 253
          Top = 401
          Width = 100
          Cursor = crIBeam
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 19
          DataField = 'HAOMON'
          DataSource = dsDTPB_lst
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBCalcEdit1: TdxDBCalcEdit
          Left = 253
          Top = 349
          Width = 100
          Cursor = crIBeam
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 25
          DataField = 'AMOR_VALUE'
          DataSource = dsDTPB_lst
          PopupBorder = pbFrame3D
        end
        object spnTGSD: TdxDBSpinEdit
          Left = 81
          Top = 325
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 11
          DataField = 'USING_LIFE'
          DataSource = dsDTPB
          MaxValue = 1200.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object dxDBEdit11: TdxDBEdit
          Left = 81
          Top = 46
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          DataField = 'BINC_ID'
          DataSource = dsDTPB
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 581
          Top = 46
          Width = 90
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 8
          DataField = 'BINC_DATE'
          DataSource = dsDTPB
          PopupBorder = pbFrame3D
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBPopupEdit1: TdxDBPopupEdit
          Left = 81
          Top = 377
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 15
          OnEnter = dxDBPopupEdit1Enter
          DataField = 'USEOBJECT_ID'
          DataSource = dsDTPB
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = dxDBPopupEdit1CloseUp
        end
        object rbPBBENNO: TElRadioButton
          Left = 223
          Top = 325
          Width = 113
          Height = 18
          Cursor = crDefault
          AutoSize = False
          Checked = True
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = 'Ph'#226'n b'#7893' b'#234'n n'#7907
          TabOrder = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBPopupEdit5: TdxDBPopupEdit
          Left = 253
          Top = 377
          Width = 100
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 16
          OnEnter = dxDBPopupEdit5Enter
          DataField = 'USEOBJECT_DETAIL'
          DataSource = dsDTPB
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = dxDBPopupEdit5CloseUp
        end
        object popBranch: TdxDBPopupEdit
          Left = 581
          Top = 70
          Width = 90
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 9
          DataField = 'OBRANCH_ID'
          DataSource = dsDTPB_lst
          PopupControl = PopupFrm.pnlBranch
          PopupFormBorderStyle = pbsSimple
        end
        object dxDBEdit6: TdxDBEdit
          Left = 253
          Top = 70
          Width = 137
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 6
          DataField = 'OTHER_NAME'
          DataSource = dsDTPB_lst
        end
        object ElPopupButton3: TElPopupButton
          Left = 452
          Top = 437
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Th'#234'm m'#7899'i'
          TabOrder = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = ElPopupButton3Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object BitBtn2: TElPopupButton
          Left = 608
          Top = 437
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          ModalResult = 1
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = BitBtn2Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object BitBtn3: TElPopupButton
          Left = 1
          Top = 437
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object BitBtn1: TElPopupButton
          Left = 530
          Top = 437
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u'
          TabOrder = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = BitBtn1Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBPopupEdit6: TdxDBPopupEdit
          Left = 422
          Top = 377
          Width = 265
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 17
          DataSource = dsDTPB
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
        end
        object popOBJ: TdxDBPopupEdit
          Left = 253
          Top = 22
          Width = 104
          Cursor = crIBeam
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          OnEnter = popOBJEnter
          DataField = 'OBJECT_ID'
          DataSource = dsDTPB
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popOBJCloseUp
        end
        object rbPBBENCO: TElRadioButton
          Left = 339
          Top = 325
          Width = 113
          Height = 18
          Cursor = crDefault
          AutoSize = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = 'Ph'#226'n b'#7893' b'#234'n c'#243
          TabStop = False
          TabOrder = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnkyphanbo: TElPopupButton
          Left = 596
          Top = 349
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'K'#7923' PS'
          TabOrder = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnkyphanboClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object top: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'top'
            ShowCaption = False
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object topleft: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'topleft'
              ShowBorder = False
              object dxLayoutControl10Group1: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group14: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'New Group'
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                end
                object dxLayoutGroup2: TdxLayoutGroup
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'Th'#244'ng tin chung'
                  object dxLayoutControl1Group12: TdxLayoutGroup
                    AutoAligns = []
                    AlignHorz = ahClient
                    Caption = 'New Group'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Group4: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutControl1Group3: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutControl1Item19: TdxLayoutItem
                          Tag = 156
                          AutoAligns = [aaVertical]
                          Caption = 'TK tr'#237'ch tr'#432#7899'c'
                          Control = dxDBPopupEdit3
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutControl1Item32: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Caption = 'S'#7889' phi'#7871'u t'#259'ng'
                          Control = dxDBEdit11
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutControl1Item10: TdxLayoutItem
                          Tag = 148
                          AutoAligns = [aaVertical]
                          Caption = 'N'#432#7899'c SX '
                          Control = dxDBEdit7
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object dxLayoutControl1Group1: TdxLayoutGroup
                        AutoAligns = [aaVertical]
                        AlignHorz = ahClient
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutControl1Group2: TdxLayoutGroup
                          ShowCaption = False
                          Hidden = True
                          LayoutDirection = ldHorizontal
                          ShowBorder = False
                          object dxLayoutControl1Item12: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            AlignHorz = ahClient
                            Caption = 'M'#227' '#273#7889'i t'#432#7907'ng'
                            Control = popOBJ
                            ControlOptions.ShowBorder = False
                          end
                          object dxLayoutControl1Item2: TdxLayoutItem
                            Tag = 145
                            AutoAligns = [aaVertical]
                            Caption = 'Nh'#243'm '
                            Control = dxDBPopupEdit4
                            ControlOptions.ShowBorder = False
                          end
                        end
                        object dxLayoutControl1Item6: TdxLayoutItem
                          Tag = 144
                          Caption = 'T'#234'n g'#7885'i'
                          Control = dxDBEdit4
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutControl1Item27: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          AlignHorz = ahClient
                          Caption = 'BP s'#7917' d'#7909'ng'
                          Control = dxDBEdit6
                          ControlOptions.ShowBorder = False
                        end
                      end
                    end
                    object dxLayoutControl1Group6: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object lciTK: TdxLayoutItem
                        Tag = 143
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Caption = 'T'#224'i kho'#7843'n'
                        Control = pedtTK
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl1Item3: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Caption = 'Ng'#224'y t'#259'ng '
                        Control = dxDBDateEdit1
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl1Item26: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Caption = #272'V S'#7917' d'#7909'ng'
                        Control = popBranch
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                  object dxLayoutControl1Item5: TdxLayoutItem
                    Tag = 149
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Caption = 'Ghi ch'#250' '
                    Control = dxDBMemo1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Group8: TdxLayoutGroup
                Tag = 150
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avBottom
                Caption = ' Th'#244'ng tin v'#7873' ph'#226'n b'#7893' '
                Offsets.Top = 5
                object dxLayoutControl1Group13: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Offsets.Top = 3
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Group10: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item45: TdxLayoutItem
                      Tag = 153
                      AutoAligns = [aaVertical]
                      Caption = 'Th'#7901'i gian SD'
                      Control = spnTGSD
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item4: TdxLayoutItem
                      ShowCaption = False
                      Control = ElLabel1
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item11: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'ElRadioButton2'
                      ShowCaption = False
                      Control = rbPBBENNO
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item1: TdxLayoutItem
                      ShowCaption = False
                      Control = rbPBBENCO
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Group15: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutControl1Group7: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutControl1Item9: TdxLayoutItem
                        Tag = 155
                        AutoAligns = [aaVertical]
                        Caption = 'TK ph'#226'n b'#7893' '
                        Control = dxDBPopupEdit2
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl1Item22: TdxLayoutItem
                        Tag = 161
                        AutoAligns = [aaVertical]
                        Caption = 'M'#7913'c ph'#226'n b'#7893
                        Control = dxDBCalcEdit1
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl1Item13: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        ShowCaption = False
                        Control = btnkyphanbo
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl1Group11: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object locDT: TdxLayoutItem
                        Caption = #272#7889'i t'#432#7907'ng PB'
                        Control = dxDBPopupEdit1
                        ControlOptions.ShowBorder = False
                      end
                      object locYT: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Y'#7871'u t'#7889' PB'
                        Control = dxDBPopupEdit5
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl1Item7: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahClient
                        Caption = 'Y'#7871'u t'#7889' 2'
                        Visible = False
                        Control = dxDBPopupEdit6
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                end
                object lciLuyke: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item8: TdxLayoutItem
                    Tag = 158
                    AutoAligns = [aaVertical]
                    Caption = 'Nguy'#234'n gi'#225' '
                    Control = dxDBEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item18: TdxLayoutItem
                    Tag = 159
                    AutoAligns = [aaVertical]
                    Caption = 'L'#361'y k'#7871' PB'
                    Control = dxDBEdit9
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item14: TdxLayoutItem
                    Tag = 160
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Gi'#225' tr'#7883' c'#242'n l'#7841'i '
                    Control = dxDBEdit8
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Group9: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item17: TdxLayoutItem
                  Caption = 'ElPopupButton3'
                  ShowCaption = False
                  Control = BitBtn3
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton1'
                  ShowCaption = False
                  Control = ElPopupButton3
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item25: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton4'
                  ShowCaption = False
                  Control = BitBtn1
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton2'
                  ShowCaption = False
                  Control = BitBtn2
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
        end
      end
      object pnlkyphanbo: TElPanel
        Left = 240
        Top = 112
        Width = 369
        Height = 233
        Align = alNone
        MouseCapture = False
        TabOrder = 1
        Visible = False
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 367
          Height = 231
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dxLayoutStandardLookAndFeel1
          object btnpnlClose: TElPopupButton
            Left = 291
            Top = 205
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
            OnClick = btnpnlCloseClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton1: TElPopupButton
            Left = 213
            Top = 205
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
            Action = acpost
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object grdkyphanbo: TdxDBGrid
            Left = 3
            Top = 3
            Width = 250
            Height = 129
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'period_id'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            OnKeyDown = grdkyphanboKeyDown
            DataSource = dskyphanbo
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object grdkyphanboRMONTH: TdxDBGridSpinColumn
              Caption = 'Th'#225'ng PS'
              HeaderAlignment = taCenter
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RMONTH'
              Caption_UTF7 = 'Th+AOE-ng PS'
            end
            object grdkyphanboOBJECT_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 148
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_NAME'
            end
            object grdkyphanboRYEAR: TdxDBGridSpinColumn
              Caption = 'N'#259'm PS'
              HeaderAlignment = taCenter
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RYEAR'
              Caption_UTF7 = 'N+AQM-m PS'
            end
            object grdkyphanboBMONTH: TdxDBGridSpinColumn
              Caption = 'Th'#225'ng PB'
              Sorted = csUp
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BMONTH'
              Caption_UTF7 = 'Th+AOE-ng PB'
            end
            object grdkyphanboBYEAR: TdxDBGridSpinColumn
              Caption = 'N'#259'm PB'
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BYEAR'
              Caption_UTF7 = 'N+AQM-m PB'
            end
            object grdkyphanboTHOIGIANPB: TdxDBGridMaskColumn
              Caption = 'TGPB'
              HeaderAlignment = taCenter
              Width = 48
              BandIndex = 0
              RowIndex = 0
              FieldName = 'THOIGIANPB'
            end
            object grdkyphanboGTPS: TdxDBGridMaskColumn
              Caption = 'T'#7893'ng GTPB'
              HeaderAlignment = taCenter
              Width = 122
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GTPS'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '###,###.##'
              Caption_UTF7 = 'T+HtU-ng GTPB'
            end
          end
          object ElPopupButton4: TElPopupButton
            Left = 135
            Top = 205
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
            Action = AcDel
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton5: TElPopupButton
            Left = 57
            Top = 205
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
            Action = acIns
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = grdkyphanbo
            end
            object dxLayoutControl2Group1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item5: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                ShowCaption = False
                Control = ElPopupButton5
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                ShowCaption = False
                Control = btnpnlClose
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 264
    Top = 16
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
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
        Caption = 'C'#244'ng c'#7909' d'#7909'ng c'#7909' v'#224' c'#225'c kho'#7843'n tr'#237'ch tr'#432#7899'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 312
    Top = 40
  end
  object qryDTPB_lst: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID_IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID_IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '192.168.81.161:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\ac' +
      'counting.GDB'
    EditSQL.Strings = (
      'UPDATE OBJECT_LIST SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   OBJECT_NAME = :OBJECT_NAME,'
      '   OTHER_NAME = :OTHER_NAME,'
      '   SUBINFO_1 = :SUBINFO_1,'
      '   SUBINFO_2 = :SUBINFO_2,'
      '   OBJECT_NOTES = :OBJECT_NOTES,'
      '   OBJECT_STATUS = :OBJECT_STATUS,'
      '   OBJGRP_ID = :OBJGRP_ID,'
      '   LASTUSER_MODIFY =:LASTUSER_MODIFY, '
      '   OACCOUNT_ID = :OACCOUNT_ID,'
      '   OBRANCH_ID = :OBRANCH_ID'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDTPB_lstBeforeEdit
    BeforeInsert = qryDTPB_lstBeforeInsert
    BeforeOpen = qryDTPB_lstBeforeOpen
    BeforePost = qryDTPB_lstBeforePost
    OnPostError = qryDTPB_lstPostError
    DataSource = dsDTPB
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     ,  OTYPE_ID'
      '     ,  OBJECT_NAME'
      '     , OTHER_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , OBJECT_NOTES'
      '     , OBJECT_STATUS'
      '     , ALLOCATE_ACC'
      '     , AMORTISE_ACC'
      '     , OACCOUNT_ID'
      '     , BINC_ID'
      '     , BINC_DATE'
      '     , USING_LIFE'
      '     , AMOR_METHOD'
      '     , AMOR_PERCENT'
      '     , AMOR_VALUE'
      '     , NGUYENGIA'
      '     , HAOMON'
      '     , GTCL'
      '     , USEOBJECT_ID'
      '     , USEOTYPE_ID'
      '     , USEOBJECT_DETAIL'
      '     , USEDTYPE_ID'
      '     , USEOBJECT_DETAIL_1'
      '     , USEDTYPE_ID_1'
      '     , BEGIN_MONTH'
      '     , BEGIN_YEAR'
      '     , OBJGRP_ID'
      '     , LASTUSER_MODIFY,NAM_THANG'
      '     , OBRANCH_ID'
      
        'FROM SP_CHITIET_1DTPB(:OBJECT_ID_IN,:OTYPE_ID_IN,:KYHT,:BRANCH_I' +
        'D)')
    FieldOptions = []
    Left = 164
    Top = 136
    object qryDTPB_lstOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryDTPB_lstOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryDTPB_lstBINC_DATE: TDateField
      FieldName = 'BINC_DATE'
    end
    object qryDTPB_lstAMOR_METHOD: TSmallintField
      FieldName = 'AMOR_METHOD'
    end
    object qryDTPB_lstUSEOTYPE_ID: TIntegerField
      FieldName = 'USEOTYPE_ID'
    end
    object qryDTPB_lstBEGIN_MONTH: TSmallintField
      FieldName = 'BEGIN_MONTH'
      MaxValue = 12
      MinValue = 1
    end
    object qryDTPB_lstBEGIN_YEAR: TIntegerField
      FieldName = 'BEGIN_YEAR'
      MaxValue = 9999
      MinValue = 1900
    end
    object qryDTPB_lstOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryDTPB_lstOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryDTPB_lstOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryDTPB_lstSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryDTPB_lstSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryDTPB_lstOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryDTPB_lstAMORTISE_ACC: TWideStringField
      FieldName = 'AMORTISE_ACC'
      Required = True
      Size = 15
    end
    object qryDTPB_lstALLOCATE_ACC: TWideStringField
      FieldName = 'ALLOCATE_ACC'
      Required = True
      Size = 15
    end
    object qryDTPB_lstBINC_ID: TWideStringField
      FieldName = 'BINC_ID'
      Size = 30
    end
    object qryDTPB_lstUSEOBJECT_ID: TWideStringField
      FieldName = 'USEOBJECT_ID'
      Size = 30
    end
    object qryDTPB_lstAMOR_VALUE: TIBOFloatField
      FieldName = 'AMOR_VALUE'
    end
    object qryDTPB_lstNGUYENGIA: TIBOFloatField
      FieldName = 'NGUYENGIA'
      ReadOnly = True
    end
    object qryDTPB_lstHAOMON: TIBOFloatField
      FieldName = 'HAOMON'
    end
    object qryDTPB_lstGTCL: TIBOFloatField
      FieldName = 'GTCL'
    end
    object qryDTPB_lstOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 30
    end
    object qryDTPB_lstOACCOUNT_ID: TWideStringField
      FieldName = 'OACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryDTPB_lstLASTUSER_MODIFY: TWideStringField
      FieldName = 'LASTUSER_MODIFY'
      Size = 15
    end
    object qryDTPB_lstNAM_THANG: TSmallintField
      FieldName = 'NAM_THANG'
    end
    object qryDTPB_lstUSING_LIFE: TIBOFloatField
      FieldName = 'USING_LIFE'
    end
    object qryDTPB_lstAMOR_PERCENT: TIBOFloatField
      FieldName = 'AMOR_PERCENT'
    end
    object qryDTPB_lstUSEOBJECT_DETAIL: TWideStringField
      FieldName = 'USEOBJECT_DETAIL'
      Size = 30
    end
    object qryDTPB_lstUSEDTYPE_ID: TSmallintField
      FieldName = 'USEDTYPE_ID'
    end
    object qryDTPB_lstOBRANCH_ID: TWideStringField
      FieldName = 'OBRANCH_ID'
      Size = 21
    end
  end
  object dsDTPB_lst: TDataSource
    DataSet = qryDTPB_lst
    Left = 164
    Top = 152
  end
  object qryDTPB: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '192.168.81.161:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\ac' +
      'counting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM CHIPHI_PHANBO'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE CHIPHI_PHANBO SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   ALLOCATE_ACC = :ALLOCATE_ACC,'
      '   AMORTISE_ACC = :AMORTISE_ACC,'
      '   BINC_ID = :BINC_ID,'
      '   BINC_DATE = :BINC_DATE,'
      '   USING_LIFE = :USING_LIFE,'
      '   AMOR_METHOD = :AMOR_METHOD,'
      '   AMOR_PERCENT = :AMOR_PERCENT,'
      '   AMOR_VALUE = :AMOR_VALUE,'
      '   USEOBJECT_ID = :USEOBJECT_ID,'
      '   USEOTYPE_ID = :USEOTYPE_ID,'
      '   USEOBJECT_DETAIL = :USEOBJECT_DETAIL,'
      '   USEDTYPE_ID = :USEDTYPE_ID,'
      '   USEOBJECT_DETAIL_1 = :USEOBJECT_DETAIL_1,'
      '   USEDTYPE_ID_1 = :USEDTYPE_ID_1,'
      '   BEGIN_MONTH = :BEGIN_MONTH,'
      '   BEGIN_YEAR = :BEGIN_YEAR,'
      '   NAM_THANG = :NAM_THANG'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO CHIPHI_PHANBO('
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   ALLOCATE_ACC,'
      '   AMORTISE_ACC,'
      '   BINC_ID,'
      '   BINC_DATE,'
      '   USING_LIFE,'
      '   AMOR_METHOD,'
      '   AMOR_PERCENT,'
      '   AMOR_VALUE,'
      '   USEOBJECT_ID,'
      '   USEOTYPE_ID,'
      '   USEOBJECT_DETAIL,'
      '   USEDTYPE_ID,'
      '   USEOBJECT_DETAIL_1,'
      '   USEDTYPE_ID_1,'
      '   BEGIN_MONTH,'
      '   BEGIN_YEAR,'
      '   NAM_THANG)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :ALLOCATE_ACC,'
      '   :AMORTISE_ACC,'
      '   :BINC_ID,'
      '   :BINC_DATE,'
      '   :USING_LIFE,'
      '   :AMOR_METHOD,'
      '   :AMOR_PERCENT,'
      '   :AMOR_VALUE,'
      '   :USEOBJECT_ID,'
      '   :USEOTYPE_ID,'
      '   :USEOBJECT_DETAIL,'
      '   :USEDTYPE_ID,'
      '   :USEOBJECT_DETAIL_1,'
      '   :USEDTYPE_ID_1,'
      '   :BEGIN_MONTH,'
      '   :BEGIN_YEAR,'
      '   :NAM_THANG)')
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDTPBBeforeEdit
    BeforeDelete = qryDTPBBeforeDelete
    BeforeInsert = qryDTPBBeforeInsert
    AfterOpen = qryDTPBAfterOpen
    BeforePost = qryDTPBBeforePost
    AfterPost = qryDTPBAfterPost
    OnNewRecord = qryDTPBNewRecord
    OnPostError = qryDTPBPostError
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OTYPE_ID'
      '     , ALLOCATE_ACC'
      '     , AMORTISE_ACC'
      '     , BINC_ID'
      '     , BINC_DATE'
      '     , USING_LIFE'
      '     , AMOR_METHOD'
      '     , AMOR_PERCENT'
      '     , AMOR_VALUE'
      '     , USEOBJECT_ID'
      '     , USEOTYPE_ID'
      '     , USEOBJECT_DETAIL'
      '     , USEDTYPE_ID'
      '     , USEOBJECT_DETAIL_1'
      '     , USEDTYPE_ID_1'
      '     , BEGIN_MONTH'
      '     , BEGIN_YEAR'
      '     , NAM_THANG'
      'FROM chiphi_phanbo'
      'where OBJECT_ID=:OBJECT_ID and OTYPE_ID=:OTYPE_ID ')
    FieldOptions = []
    Left = 222
    Top = 92
    object qryDTPBOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryDTPBAMORTISE_ACC: TWideStringField
      FieldName = 'AMORTISE_ACC'
      Required = True
      Size = 15
    end
    object qryDTPBALLOCATE_ACC: TWideStringField
      FieldName = 'ALLOCATE_ACC'
      Required = True
      OnChange = qryDTPBALLOCATE_ACCChange
      Size = 15
    end
    object qryDTPBBINC_ID: TWideStringField
      FieldName = 'BINC_ID'
      Size = 30
    end
    object qryDTPBBINC_DATE: TDateField
      FieldName = 'BINC_DATE'
    end
    object qryDTPBUSING_LIFE: TIBOFloatField
      FieldName = 'USING_LIFE'
    end
    object qryDTPBAMOR_METHOD: TSmallintField
      FieldName = 'AMOR_METHOD'
    end
    object qryDTPBAMOR_PERCENT: TIBOFloatField
      FieldName = 'AMOR_PERCENT'
    end
    object qryDTPBAMOR_VALUE: TIBOFloatField
      FieldName = 'AMOR_VALUE'
    end
    object qryDTPBUSEOBJECT_ID: TWideStringField
      FieldName = 'USEOBJECT_ID'
      Size = 30
    end
    object qryDTPBUSEOTYPE_ID: TSmallintField
      FieldName = 'USEOTYPE_ID'
    end
    object qryDTPBUSEOBJECT_DETAIL: TWideStringField
      FieldName = 'USEOBJECT_DETAIL'
      Size = 30
    end
    object qryDTPBUSEDTYPE_ID: TSmallintField
      FieldName = 'USEDTYPE_ID'
    end
    object qryDTPBBEGIN_MONTH: TSmallintField
      FieldName = 'BEGIN_MONTH'
    end
    object qryDTPBBEGIN_YEAR: TSmallintField
      FieldName = 'BEGIN_YEAR'
    end
    object qryDTPBNAM_THANG: TSmallintField
      FieldName = 'NAM_THANG'
    end
    object qryDTPBOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      OnChange = qryDTPBOBJECT_IDChange
      Size = 30
    end
    object qryDTPBUSEOBJECT_DETAIL_1: TWideStringField
      FieldName = 'USEOBJECT_DETAIL_1'
      Size = 30
    end
    object qryDTPBUSEDTYPE_ID_1: TSmallintField
      FieldName = 'USEDTYPE_ID_1'
    end
  end
  object dsDTPB: TDataSource
    AutoEdit = False
    DataSet = qryDTPB
    Left = 222
    Top = 111
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 284
    Top = 176
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        57060000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060841535345545F49440D53756D
        6D61727947726F7570730E010C44656661756C7447726F7570080C53756D6D61
        72794974656D730E00044E616D65060D53756D6D61727947726F757031000010
        53756D6D617279536570617261746F7206022C200C466F6E742E436861727365
        74070F44454641554C545F434841525345540A466F6E742E436F6C6F72070C63
        6C57696E646F77546578740B466F6E742E48656967687402F509466F6E742E4E
        616D65060D4D532053616E732053657269660A466F6E742E5374796C650B000A
        506172656E74466F6E74081042616E64466F6E742E43686172736574070F4445
        4641554C545F434841525345540E42616E64466F6E742E436F6C6F72070C636C
        57696E646F77546578740F42616E64466F6E742E48656967687402F50D42616E
        64466F6E742E4E616D65060D4D532053616E732053657269660E42616E64466F
        6E742E5374796C650B000A44617461536F75726365070E466F726D322E647344
        657461696C0F46696C7465722E43726974657269610A04000000000000001248
        6561646572466F6E742E43686172736574070F44454641554C545F4348415253
        455410486561646572466F6E742E436F6C6F72070C636C57696E646F77546578
        7411486561646572466F6E742E48656967687402F50F486561646572466F6E74
        2E4E616D65060D4D532053616E7320536572696610486561646572466F6E742E
        5374796C650B000F4F7074696F6E734265686176696F720B0C6564676F417574
        6F536F72740E6564676F447261675363726F6C6C0B6564676F45646974696E67
        136564676F456E74657253686F77456469746F72106564676F456E7465725468
        726F7567680F6564676F486F727A5468726F756768136564676F496D6D656469
        617465456469746F72086564676F546162730E6564676F5461625468726F7567
        680F6564676F566572745468726F75676800094F7074696F6E7344420B0D6564
        676F43616E417070656E64106564676F43616E63656C4F6E457869740D656467
        6F43616E44656C6574650D6564676F43616E496E73657274116564676F43616E
        4E617669676174696F6E116564676F436F6E6669726D44656C65746514656467
        6F5265736574436F6C756D6E466F637573106564676F557365426F6F6B6D6172
        6B73000B4F7074696F6E73566965770B136564676F42616E6448656164657257
        696474680D6564676F496E64696361746F72106564676F496E7665727453656C
        656374146564676F53686F77427574746F6E416C776179730D6564676F557365
        4269746D6170001350726576696577466F6E742E43686172736574070C414E53
        495F434841525345541150726576696577466F6E742E436F6C6F720706636C42
        6C75651250726576696577466F6E742E48656967687402F51050726576696577
        466F6E742E4E616D6506065461686F6D611150726576696577466F6E742E5374
        796C650B000E53686F774E65774974656D526F77090013546478444247726964
        4D61736B436F6C756D6E0944455441494C5F49440942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D65060944455441494C5F4944
        0000135464784442477269644D61736B436F6C756D6E0B44455441494C5F4E41
        4D450942616E64496E646578020008526F77496E6465780200094669656C644E
        616D65060B44455441494C5F4E414D450000135464784442477269644D61736B
        436F6C756D6E04554E49540942616E64496E646578020008526F77496E646578
        0200094669656C644E616D650604554E49540000135464784442477269644D61
        736B436F6C756D6E0B424153455F414D4F554E540942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D65060B424153455F414D4F55
        4E541253756D6D617279466F6F7465724669656C64060B424153455F414D4F55
        4E540000135464784442477269644D61736B436F6C756D6E0D424153455F5155
        414E544954590942616E64496E646578020008526F77496E6465780200094669
        656C644E616D65060D424153455F5155414E544954591253756D6D617279466F
        6F7465724669656C64060D424153455F5155414E54495459000000}
    end
  end
  object qrykyphanbo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'object_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'otype_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '192.168.81.161:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\ac' +
      'counting.GDB'
    DeleteSQL.Strings = (
      'delete from DTPB_PHATSINH'
      'WHERE'
      '   OTYPE_ID = :OLD_OTYPE_ID and'
      '   OBJECT_ID = :OLD_OBJECT_ID and'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE DTPB_PHATSINH SET'
      '   THOIGIANPB = :THOIGIANPB,'
      '   kybatdaupb = :kybatdaupb'
      'WHERE'
      '   OTYPE_ID = :OLD_OTYPE_ID and'
      '   OBJECT_ID = :OLD_OBJECT_ID and'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      
        'INSERT INTO DTPB_PHATSINH (OTYPE_ID,OBJECT_ID,PERIOD_ID,THOIGIAN' +
        'PB,kybatdaupb,loaichitiet) '
      
        'VALUES (:OTYPE_ID,:OBJECT_ID,:PERIOD_ID,:THOIGIANPB,:kybatdaupb,' +
        '1);')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qrykyphanboBeforeDelete
    BeforeOpen = qrykyphanboBeforeOpen
    BeforePost = qrykyphanboBeforePost
    AfterPost = qrykyphanboAfterPost
    OnNewRecord = qrykyphanboNewRecord
    OnPostError = qrykyphanboPostError
    SQL.Strings = (
      
        'select thoigianpb, object_name, otype_id, object_id, ryear, rmon' +
        'th,period_id,GTPS, bmonth, byear, kybatdaupb'
      'from sp_dtpb_dangky(:object_id,:otype_id,:branch_id)')
    FieldOptions = []
    Left = 381
    Top = 201
    object qrykyphanboTHOIGIANPB: TSmallintField
      FieldName = 'THOIGIANPB'
    end
    object qrykyphanboOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qrykyphanboOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qrykyphanboOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qrykyphanboRMONTH: TSmallintField
      FieldName = 'RMONTH'
      OnChange = qrykyphanboRMONTHChange
    end
    object qrykyphanboRYEAR: TSmallintField
      FieldName = 'RYEAR'
      OnChange = qrykyphanboRYEARChange
    end
    object qrykyphanboPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qrykyphanboGTPS: TIBOFloatField
      FieldName = 'GTPS'
      ReadOnly = True
    end
    object qrykyphanboBMONTH: TSmallintField
      FieldName = 'BMONTH'
      OnChange = qrykyphanboBMONTHChange
    end
    object qrykyphanboBYEAR: TSmallintField
      FieldName = 'BYEAR'
      OnChange = qrykyphanboBYEARChange
    end
    object qrykyphanboKYBATDAUPB: TSmallintField
      FieldName = 'KYBATDAUPB'
    end
  end
  object dskyphanbo: TDataSource
    DataSet = qrykyphanbo
    Left = 384
    Top = 216
  end
  object ActionList1: TActionList
    Left = 336
    Top = 248
    object acpost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acpost'
      DataSource = dskyphanbo
    end
    object AcDel: TDataSetDelete
      Category = 'Dataset'
      Caption = 'AcDel'
      DataSource = dskyphanbo
    end
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acIns'
      DataSource = dskyphanbo
    end
  end
end
