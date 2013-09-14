object TonghopFrm: TTonghopFrm
  Left = 435
  Top = 289
  HelpContext = 31
  BorderStyle = bsDialog
  ClientHeight = 432
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 631
    Height = 432
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object lblTo: TElLabel
      Tag = 122
      Left = 502
      Top = 28
      Width = 22
      Height = 13
      AutoSize = False
      Caption = #273#7871'n'
      Color = clBtnFace
      ParentColor = False
    end
    object lblFrom: TElLabel
      Left = 361
      Top = 27
      Width = 43
      Height = 14
      Caption = 'Th'#225'ng  '
      Color = clBtnFace
      ParentColor = False
    end
    object lblStatus: TElLabel
      Left = 614
      Top = 44
      Width = 4
      Height = 14
      Align = alClient
    end
    object btnThuchien: TElPopupButton
      Left = 477
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#7921'c hi'#7879'n'
      TabOrder = 13
      OnClick = btnThuchienClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 555
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 14
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 1
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 12
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkKHTSCD: TdxCheckEdit
      Left = 54
      Top = 161
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Caption = 'T'#7921' '#273#7897'ng tr'#237'ch kh'#7845'u hao t'#224'i s'#7843'n c'#7889' '#273#7883'nh theo '#273#259'ng k'#253
      StyleController = InterfaceDM.chkStyleController
    end
    object chkKCSoduTK: TdxCheckEdit
      Left = 54
      Top = 266
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Caption = 'K'#7871't chuy'#7875'n s'#7889' d'#432' t'#224'i kho'#7843'n cu'#7889'i k'#7923' sang k'#7923' sau'
      StyleController = InterfaceDM.chkStyleController
      State = cbsChecked
    end
    object chkKCSoduHH: TdxCheckEdit
      Left = 54
      Top = 291
      Width = 314
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Caption = 'K'#7871't chuy'#7875'n th'#244'ng tin t'#7891'n kho sang '#273#7847'u k'#7923' sau'
      StyleController = InterfaceDM.chkStyleController
      State = cbsChecked
    end
    object chkKCSoduKH: TdxCheckEdit
      Left = 54
      Top = 316
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Caption = 
        'S'#7889' d'#432' chi ti'#7871't c'#225'c t'#224'i kho'#7843'n theo d'#245'i theo '#273#7889'i t'#432#7907'ng (131,331,14' +
        '1,211,....)'
      StyleController = InterfaceDM.chkStyleController
      State = cbsChecked
    end
    object chkKCthongtinGB: TdxCheckEdit
      Left = 54
      Top = 341
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Caption = 'K'#7871't chuy'#7875'n gi'#225' mua, gi'#225' b'#225'n '#273#432#7907'c duy'#7879't trong k'#7923' n'#224'y sang k'#7923' sau'
      StyleController = InterfaceDM.chkStyleController
      State = cbsChecked
    end
    object chkExeKetchuyen: TdxCheckEdit
      Left = 54
      Top = 186
      Width = 303
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Caption = 'Th'#7921'c hi'#7879'n c'#225'c b'#250't to'#225'n t'#7921' '#273#7897'ng '#273#227' '#273#432#7907'c '#273#259'ng k'#253' '
      StyleController = InterfaceDM.chkStyleController
      State = cbsChecked
    end
    object ProgressBar1: TProgressBar
      Left = 79
      Top = 407
      Width = 411
      Height = 24
      Max = 13
      Step = 1
      TabOrder = 24
    end
    object chkLockData: TdxCheckEdit
      Left = 13
      Top = 368
      Width = 550
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Caption = 
        'Kho'#225' s'#7893' d'#7919' li'#7879'u c'#7911'a th'#225'ng n'#224'y (ng'#432#7901'i kh'#244'ng c'#243' quy'#7873'n s'#7869' kh'#244'ng tha' +
        'y '#273#7893'i '#273#432#7907'c d'#7919' li'#7879'u n'#7919'a)'
      StyleController = InterfaceDM.chkStyleController
    end
    object chkDCGBQCK: TdxCheckEdit
      Left = 13
      Top = 91
      Width = 550
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Caption = 
        'Th'#7921'c hi'#7879'n t'#237'nh l'#7841'i gi'#225' xu'#7845't kho c'#7911'a c'#225'c phi'#7871'u xu'#7845't trong k'#7923' theo' +
        ' ph'#432#417'ng ph'#225'p '#273#227' '#273#259'ng k'#253
      StyleController = InterfaceDM.chkStyleController
    end
    object chkPBHangChothue: TdxCheckEdit
      Left = 10000
      Top = 10000
      Width = 235
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 17
      Visible = False
      Caption = 'Ph'#226'n b'#7893' chi ph'#237' h'#224'ng '#273'ang cho thu'#234
    end
    object chkPBHangKho: TdxCheckEdit
      Left = 10000
      Top = 10000
      Width = 345
      Style.ButtonStyle = bts3D
      TabOrder = 18
      Visible = False
      Caption = 'Ph'#226'n b'#7893' chi ph'#237' c'#244'ng c'#7909' d'#7909'ng c'#7909' '#273#227' thu h'#7891'i v'#7873' trong kho'
    end
    object ElPopupButton1: TElPopupButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&hay '#273#7893'i'
      TabOrder = 16
      Visible = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbAdjustOther: TElRadioButton
      Left = 58
      Top = 116
      Width = 270
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = #272'i'#7873'u ch'#7881'nh b'#7857'ng c'#225'c phi'#7871'u xu'#7845't kh'#244'ng l'#432#7907'ng'
      TabStop = False
      TabOrder = 23
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbAdjustSelf: TElRadioButton
      Left = 331
      Top = 116
      Width = 286
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = #272'i'#7873'u ch'#7881'nh ngay tr'#234'n nh'#7919'ng phi'#7871'u xu'#7845't trong k'#7923
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkCLTygia: TdxCheckEdit
      Left = 10000
      Top = 10000
      Width = 572
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 15
      Visible = False
      Caption = 'Th'#7921'c hi'#7879'n h'#7841'ch to'#225'n ch'#234'nh l'#7879'ch t'#7927' gi'#225' (c'#225'c t'#224'i kho'#7843'n c'#244'ng n'#7907')'
      StyleController = InterfaceDM.chkStyleController
    end
    object chkKCHeSo: TdxCheckEdit
      Left = 53
      Top = 211
      Width = 277
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Caption = 'K'#7871't chuy'#7875'n c'#225'c h'#7879' s'#7889' ph'#226'n b'#7893' sang k'#7923' sau'
      StyleController = InterfaceDM.chkStyleController
    end
    object spnFromMonth: TdxSpinEdit
      Left = 407
      Top = 19
      Width = 37
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 19
      Alignment = taCenter
      StyleController = InterfaceDM.edtStyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnFromYear: TdxSpinEdit
      Left = 447
      Top = 19
      Width = 52
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 20
      Alignment = taCenter
      StyleController = InterfaceDM.edtStyleController
      MaxValue = 2700.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 2006.000000000000000000
      StoredValues = 49
    end
    object spnToMonth: TdxSpinEdit
      Left = 527
      Top = 19
      Width = 36
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 21
      Alignment = taCenter
      StyleController = InterfaceDM.edtStyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnToYear: TdxSpinEdit
      Left = 566
      Top = 19
      Width = 52
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 22
      Alignment = taCenter
      StyleController = InterfaceDM.edtStyleController
      MaxValue = 2700.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 2006.000000000000000000
      StoredValues = 49
    end
    object chkKCKYKY: TdxCheckEdit
      Left = 13
      Top = 19
      Width = 216
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnClick = chkKCKYKYClick
      Caption = 'K'#7871't chuy'#7875'n t'#7915' th'#225'ng '#273#7871'n th'#225'ng'
      StyleController = InterfaceDM.chkStyleController
    end
    object chkPBTKTT: TdxCheckEdit
      Left = 13
      Top = 136
      Width = 649
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Caption = 'T'#7921' '#273#7897'ng ph'#226'n b'#7893' c'#225'c t'#224'i kho'#7843'n tr'#237'ch tr'#432#7899'c theo '#273#259'ng k'#253
      StyleController = InterfaceDM.chkStyleController
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locKyKy: TdxLayoutGroup
        Caption = 'L'#7921'a ch'#7885'n'
        object dxLayoutControl1Group9: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item25: TdxLayoutItem
            AutoAligns = []
            ShowCaption = False
            Control = chkKCKYKY
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item24: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            ShowCaption = False
            Control = lblFrom
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locTuthang: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            Enabled = False
            Control = spnFromMonth
            ControlOptions.ShowBorder = False
          end
          object locTunam: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            Enabled = False
            Control = spnFromYear
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item22: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            ShowCaption = False
            Control = lblTo
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locDenthang: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            Enabled = False
            Control = spnToMonth
            ControlOptions.ShowBorder = False
          end
          object locDennam: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            Enabled = False
            Control = spnToYear
            ControlOptions.ShowBorder = False
          end
        end
        object loclblStatus: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          Control = lblStatus
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'C'#225'c b'#432#7899'c th'#7921'c hi'#7879'n'
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'dxCheckEdit1'
          ShowCaption = False
          Control = chkDCGBQCK
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'ElRadioButton1'
            Offsets.Left = 45
            ShowCaption = False
            Control = rbAdjustOther
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'ElRadioButton2'
            ShowCaption = False
            Control = rbAdjustSelf
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          ShowCaption = False
          Control = chkPBTKTT
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'B'#432#7899'c 1'
          OnCaptionClick = dxLayoutControl1Item1CaptionClick
          Control = chkKHTSCD
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item21: TdxLayoutItem
            Caption = 'B'#432#7899'c 2'
            OnCaptionClick = dxLayoutControl1Item21CaptionClick
            Control = chkExeKetchuyen
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'dxCheckEdit1'
            Offsets.Left = 40
            ShowCaption = False
            Control = chkKCHeSo
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'K'#7871't chuy'#7875'n s'#7889' li'#7879'u sang k'#7923' sau'
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'B'#432#7899'c 3'
            OnCaptionClick = dxLayoutControl1Item8CaptionClick
            Control = chkKCSoduTK
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'B'#432#7899'c 4'
            OnCaptionClick = dxLayoutControl1Item9CaptionClick
            Control = chkKCSoduHH
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Caption = 'B'#432#7899'c 5'
          OnCaptionClick = dxLayoutControl1Item11CaptionClick
          Control = chkKCSoduKH
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item20: TdxLayoutItem
          Caption = 'B'#432#7899'c 6'
          OnCaptionClick = dxLayoutControl1Item20CaptionClick
          Control = chkKCthongtinGB
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'dxCheckEdit1'
          Offsets.Top = 2
          ShowCaption = False
          Control = chkLockData
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group11: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        LookAndFeel = dxLayoutStandardLookAndFeel1
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item17: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object locProgress: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avBottom
          Control = ProgressBar1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnThuchien
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Caption = 'Ph'#226'n b'#7893' chi ph'#237' c'#244'ng c'#7909' d'#7909'ng c'#7909' cho thu'#234
      Visible = False
      object dxLayoutControl1Item7: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 
          'Mu'#7889'n thay '#273#7893'i th'#7901'i gian s'#7917' d'#7909'ng c'#7911'a c'#225'c l'#244' c'#244'ng c'#7909' d'#7909'ng c'#7909' nh'#7853'p ' +
          'kho trong k'#7923' th'#236' click v'#224'o '#273#226'y '
        Control = ElPopupButton1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'dxCheckEdit1'
          ShowCaption = False
          Control = chkPBHangChothue
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'dxCheckEdit2'
          ShowCaption = False
          Control = chkPBHangKho
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Caption = 'B'#432#7899'c 2'
      Control = chkCLTygia
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 536
    Top = 76
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clBlack
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsUnderline]
      ItemOptions.CaptionOptions.HotTrack = True
      ItemOptions.CaptionOptions.TextColor = clWindowText
      ItemOptions.CaptionOptions.TextHotColor = clBlue
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
  end
  object ActionList1: TActionList
    Left = 466
    Top = 82
    object acKhauhaoTSCD: TAction
      Caption = 'acKhauhaoTSCD'
      OnExecute = acKhauhaoTSCDExecute
    end
    object acAutoEntry: TAction
      Caption = 'acAutoEntry'
      OnExecute = acAutoEntryExecute
    end
    object acKCsoduTK: TAction
      Category = 'KHSodu'
      Caption = 'acKCsoduTK'
      OnExecute = acKCsoduTKExecute
    end
    object acKCSoduKH: TAction
      Category = 'KHSodu'
      Caption = 'acKCSoduKH'
      OnExecute = acKCSoduKHExecute
    end
    object acKCSoduHH: TAction
      Category = 'KHSodu'
      Caption = 'acKCSoduHH'
      OnExecute = acKCSoduHHExecute
    end
    object acKCGiaban: TAction
      Category = 'KHSodu'
      Caption = 'acKCGiaban'
      OnExecute = acKCGiabanExecute
    end
    object acTranferInfo: TAction
      Category = 'KHac'
      Caption = 'acTranferInfo'
      ShortCut = 16459
      OnExecute = acTranferInfoExecute
    end
    object acAllocateInfo: TAction
      Category = 'KHac'
      Caption = 'acAllocateInfo'
      ShortCut = 16464
      OnExecute = acAllocateInfoExecute
    end
    object acLockData: TAction
      Caption = 'acLockData'
      OnExecute = acLockDataExecute
    end
    object acKCCongnoDT: TAction
      Caption = 'acKCCongnoDT'
    end
    object acDCGBQCK: TAction
      Caption = 'acDCGBQCK'
      OnExecute = acDCGBQCKExecute
    end
    object acPBCPCCDC: TAction
      Category = 'KHac'
      Caption = 'acPBCPCCDC'
      OnExecute = acPBCPCCDCExecute
    end
    object acKCDT_BH: TAction
      Caption = 'acKCDT_BH'
    end
    object acCapnhatCTGS: TAction
      Caption = 'acCapnhatCTGS'
      OnExecute = acCapnhatCTGSExecute
    end
    object acCLTygia: TAction
      Caption = 'acCLTygia'
      OnExecute = acCLTygiaExecute
    end
    object acKCSoduHHFIFO: TAction
      Category = 'KHSodu'
      Caption = 'acKCSoduHHFIFO'
      OnExecute = acKCSoduHHFIFOExecute
    end
    object acPBTKTT: TAction
      Caption = 'acPBTKTT'
      OnExecute = acPBTKTTExecute
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
        Caption = 'T'#7893'ng h'#7907'p v'#224' k'#7871't chuy'#7875'n s'#7889' li'#7879'u cu'#7889'i k'#7923
        Layout = blGlyphLeft
        Align = taLeftJustify
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = #272#417'n v'#7883
        Layout = blGlyphLeft
        Align = taRightJustify
      end>
    Left = 368
    Top = 65528
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 572
    Top = 72
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        29050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094252414E43485F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200C466F6E742E43686172736574070F44454641554C545F43484152534554
        0A466F6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E48
        656967687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E53
        74796C650B000A506172656E74466F6E74081042616E64466F6E742E43686172
        736574070F44454641554C545F434841525345540E42616E64466F6E742E436F
        6C6F72070C636C57696E646F77546578740F42616E64466F6E742E4865696768
        7402F50D42616E64466F6E742E4E616D65060D4D532053616E73205365726966
        0E42616E64466F6E742E5374796C650B000A44617461536F75726365070F4D61
        696E444D2E64734272616E63680F46696C7465722E43726974657269610A0400
        00000000000012486561646572466F6E742E43686172736574070F4445464155
        4C545F4348415253455410486561646572466F6E742E436F6C6F72070C636C57
        696E646F775465787411486561646572466F6E742E48656967687402F50F4865
        61646572466F6E742E4E616D6506065461686F6D6110486561646572466F6E74
        2E5374796C650B000B4C6F6F6B416E644665656C07066C66466C6174094F7074
        696F6E7344420B106564676F43616E63656C4F6E457869740D6564676F43616E
        44656C6574650D6564676F43616E496E73657274116564676F43616E4E617669
        676174696F6E116564676F436F6E6669726D44656C657465126564676F4C6F61
        64416C6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F70
        74696F6E73566965770B0D6564676F4175746F57696474680D6564676F557365
        4269746D6170001350726576696577466F6E742E43686172736574070F444546
        41554C545F434841525345541150726576696577466F6E742E436F6C6F720706
        636C426C75651250726576696577466F6E742E48656967687402F51050726576
        696577466F6E742E4E616D65060D4D532053616E732053657269661150726576
        696577466F6E742E5374796C650B0000135464784442477269644D61736B436F
        6C756D6E094252414E43485F49440743617074696F6E140E0000004DC3A32063
        6869206E68C3A16E680C466F6E742E43686172736574070F44454641554C545F
        434841525345540A466F6E742E436F6C6F72070C636C57696E646F7754657874
        0B466F6E742E48656967687402F509466F6E742E4E616D6506065461686F6D61
        0A466F6E742E5374796C650B000F486561646572416C69676E6D656E74070874
        6143656E74657205576964746802560942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D6506094252414E43485F49440C43617074
        696F6E5F5554463706134D2B414F4D20636869206E682B414F452D6E68000013
        5464784442477269644D61736B436F6C756D6E0846554C4C4E414D4507436170
        74696F6E140F00000054C3AA6E20636869206E68C3A16E680F48656164657241
        6C69676E6D656E740708746143656E7465720557696474680323010942616E64
        496E646578020008526F77496E6465780200094669656C644E616D6506084655
        4C4C4E414D450C43617074696F6E5F555446370615542B414F6F2D6E20636869
        206E682B414F452D6E68000000}
    end
  end
  object dxLayoutLookAndFeelListGobal: TdxLayoutLookAndFeelList
    Left = 540
    Top = 112
    object lfActiveX: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = [fsBold]
      GroupOptions.CaptionOptions.TextHotColor = 15726583
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.CaptionOptions.Color = 12639202
      GroupOptions.Color = clCream
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object StyleWeb: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = [fsBold]
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.CaptionOptions.SeparatorWidth = 2
      GroupOptions.Color = 16579317
      GroupOptions.FrameColor = 12615680
      GroupOptions.FrameWidth = 0
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderColor = clSkyBlue
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object StyleDetrong: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.CaptionOptions.SeparatorWidth = 1
      GroupOptions.Color = 16316664
      GroupOptions.FrameColor = 9343859
      GroupOptions.FrameWidth = 0
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object StyleStandard: TdxLayoutStandardLookAndFeel
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
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object StylePhang: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.Color = 16054261
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object StyleMacDinh: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.CaptionOptions.SeparatorWidth = 2
      GroupOptions.Color = clCream
      GroupOptions.FrameColor = 11850718
      GroupOptions.FrameWidth = 0
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
