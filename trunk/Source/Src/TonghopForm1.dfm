object TonghopFrm: TTonghopFrm
  Left = 227
  Top = 224
  HelpContext = 31
  BorderStyle = bsDialog
  ClientHeight = 385
  ClientWidth = 667
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
    Width = 667
    Height = 385
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnThuchien: TElPopupButton
      Left = 513
      Top = 359
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
      TabOrder = 12
      OnClick = btnThuchienClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 591
      Top = 359
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
      TabOrder = 13
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 1
      Top = 359
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 11
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkKHTSCD: TdxCheckEdit
      Left = 54
      Top = 64
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Caption = 'T'#7921' '#273#7897'ng tr'#237'ch kh'#7845'u hao t'#224'i s'#7843'n c'#7889' '#273#7883'nh theo '#273#259'ng k'#253
      State = cbsChecked
    end
    object chkKCSoduTK: TdxCheckEdit
      Left = 54
      Top = 194
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Caption = 'K'#7871't chuy'#7875'n s'#7889' d'#432' t'#224'i kho'#7843'n cu'#7889'i k'#7923' sang k'#7923' sau'
      State = cbsChecked
    end
    object chkKCSoduHH: TdxCheckEdit
      Left = 54
      Top = 219
      Width = 314
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Caption = 'K'#7871't chuy'#7875'n th'#244'ng tin t'#7891'n kho sang '#273#7847'u k'#7923' sau'
      State = cbsChecked
    end
    object chkKCSoduKH: TdxCheckEdit
      Left = 54
      Top = 244
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Caption = 
        'S'#7889' d'#432' chi ti'#7871't c'#225'c t'#224'i kho'#7843'n theo d'#245'i theo '#273#7889'i t'#432#7907'ng (131,331,14' +
        '1,211,....)'
      State = cbsChecked
    end
    object chkKCthongtinGB: TdxCheckEdit
      Left = 54
      Top = 269
      Width = 510
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Caption = 'K'#7871't chuy'#7875'n gi'#225' mua, gi'#225' b'#225'n '#273#432#7907'c duy'#7879't trong k'#7923' n'#224'y sang k'#7923' sau'
      State = cbsChecked
    end
    object chkExeKetchuyen: TdxCheckEdit
      Left = 54
      Top = 114
      Width = 303
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Caption = 'Th'#7921'c hi'#7879'n c'#225'c b'#250't to'#225'n t'#7921' '#273#7897'ng '#273#227' '#273#432#7907'c '#273#259'ng k'#253' '
      State = cbsChecked
    end
    object ProgressBar1: TProgressBar
      Left = 79
      Top = 360
      Width = 319
      Height = 24
      Max = 13
      Step = 1
      TabOrder = 19
    end
    object chkLockData: TdxCheckEdit
      Left = 13
      Top = 296
      Width = 550
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Caption = 
        'Kho'#225' s'#7893' d'#7919' li'#7879'u c'#7911'a th'#225'ng n'#224'y (ng'#432#7901'i kh'#244'ng c'#243' quy'#7873'n s'#7869' kh'#244'ng tha' +
        'y '#273#7893'i '#273#432#7907'c d'#7919' li'#7879'u n'#7919'a)'
    end
    object chkDCGBQCK: TdxCheckEdit
      Left = 13
      Top = 19
      Width = 550
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Caption = 
        'Th'#7921'c hi'#7879'n t'#237'nh l'#7841'i gi'#225' xu'#7845't kho c'#7911'a c'#225'c phi'#7871'u xu'#7845't trong k'#7923' theo' +
        ' ph'#432#417'ng ph'#225'p '#273#227' '#273#259'ng k'#253
    end
    object chkPBHangChothue: TdxCheckEdit
      Left = 10000
      Top = 10000
      Width = 235
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Visible = False
      Caption = 'Ph'#226'n b'#7893' chi ph'#237' h'#224'ng '#273'ang cho thu'#234
    end
    object chkPBHangKho: TdxCheckEdit
      Left = 10000
      Top = 10000
      Width = 345
      Style.ButtonStyle = bts3D
      TabOrder = 17
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
      TabOrder = 15
      Visible = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbAdjustOther: TElRadioButton
      Left = 58
      Top = 44
      Width = 270
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = #272'i'#7873'u ch'#7881'nh b'#7857'ng c'#225'c phi'#7871'u xu'#7845't kh'#244'ng l'#432#7907'ng'
      TabStop = False
      TabOrder = 18
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbAdjustSelf: TElRadioButton
      Left = 331
      Top = 44
      Width = 286
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = #272'i'#7873'u ch'#7881'nh ngay tr'#234'n nh'#7919'ng phi'#7871'u xu'#7845't trong k'#7923
      TabOrder = 1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkGhiDTBH: TdxCheckEdit
      Left = 10000
      Top = 10000
      Width = 641
      Style.ButtonStyle = bts3D
      TabOrder = 14
      Visible = False
      Caption = 'Ghi b'#250't to'#225'n doanh thu b'#7843'o hi'#7875'm ch'#432'a th'#7921'c hi'#7879'n thu ti'#7873'n trong k'#7923
    end
    object chkCLTygia: TdxCheckEdit
      Left = 54
      Top = 89
      Width = 121
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Caption = 'Th'#7921'c hi'#7879'n h'#7841'ch to'#225'n ch'#234'nh l'#7879'ch t'#7927' gi'#225' (c'#225'c t'#224'i kho'#7843'n c'#244'ng n'#7907')'
    end
    object chkKCHeSo: TdxCheckEdit
      Left = 53
      Top = 139
      Width = 212
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Caption = 'K'#7871't chuy'#7875'n c'#225'c h'#7879' s'#7889' ph'#226'n b'#7893' sang k'#7923' sau'
      State = cbsChecked
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'C'#225'c b'#432#7899'c th'#7921'c hi'#7879'n'
        LookAndFeel = dxLayoutStandardLookAndFeel1
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
          object dxLayoutControl1Item13: TdxLayoutItem
            Caption = 'B'#432#7899'c 2'
            Control = chkCLTygia
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item21: TdxLayoutItem
              Caption = 'B'#432#7899'c 3'
              OnCaptionClick = dxLayoutControl1Item21CaptionClick
              Control = chkExeKetchuyen
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'dxCheckEdit1'
              Offsets.Left = 40
              ShowCaption = False
              Control = chkKCHeSo
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'K'#7871't chuy'#7875'n s'#7889' li'#7879'u sang k'#7923' sau'
        LookAndFeel = dxLayoutStandardLookAndFeel1
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'B'#432#7899'c 4'
            OnCaptionClick = dxLayoutControl1Item8CaptionClick
            Control = chkKCSoduTK
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'B'#432#7899'c 5'
            OnCaptionClick = dxLayoutControl1Item9CaptionClick
            Control = chkKCSoduHH
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Caption = 'B'#432#7899'c 6'
          OnCaptionClick = dxLayoutControl1Item11CaptionClick
          Control = chkKCSoduKH
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item20: TdxLayoutItem
          Caption = 'B'#432#7899'c 7'
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
    object dxLayoutControl1Item5: TdxLayoutItem
      Caption = 'dxCheckEdit1'
      ShowCaption = False
      Visible = False
      Control = chkGhiDTBH
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
  end
  object ActionList1: TActionList
    Left = 508
    Top = 76
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
      OnExecute = acKCDT_BHExecute
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
      end>
    Left = 368
    Top = 65528
  end
end
