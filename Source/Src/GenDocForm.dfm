object GenDocFrm: TGenDocFrm
  Left = 279
  Top = 256
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 274
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = TntFormCreate
  OnKeyDown = FormKeyDown
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 454
    Height = 274
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnCancel: TElPopupButton
      Left = 376
      Top = 246
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
      TabOrder = 14
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 300
      Top = 246
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 13
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn1: TElPopupButton
      Left = 3
      Top = 246
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
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbPSPT: TElRadioButton
      Left = 3
      Top = 5
      Width = 105
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ph'#225't &sinh theo %'
      TabStop = False
      TabOrder = 16
      OnClick = rbPSPTClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbPSTT: TElRadioButton
      Left = 109
      Top = 5
      Width = 151
      Height = 17
      Cursor = crDefault
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ph'#225't sinh th&eo t'#7893'ng s'#7889' ti'#7873'n'
      TabOrder = 0
      OnClick = rbPSTTClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxCalcEdit1: TdxCalcEdit
      Left = 260
      Top = 28
      Width = 147
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      OnEnter = dxCalcEdit1Enter
      OnExit = dxCalcEdit1Exit
      Alignment = taRightJustify
      Text = '0'
      PopupBorder = pbFrame3D
      StoredValues = 1
    end
    object dxSpinEdit1: TdxSpinEdit
      Left = 72
      Top = 28
      Width = 99
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 17
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 72
      Top = 104
      Width = 99
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      OnExit = dxPopupEdit1Exit
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
      OnInitPopup = dxPopupEdit1InitPopup
    end
    object dxPopupEdit2: TdxPopupEdit
      Left = 72
      Top = 126
      Width = 99
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      OnEnter = dxPopupEdit2Enter
      OnExit = dxPopupEdit2Exit
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit2CloseUp
    end
    object dxPopupEdit3: TdxPopupEdit
      Left = 260
      Top = 170
      Width = 187
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit3CloseUp
      OnInitPopup = dxPopupEdit3InitPopup
    end
    object dxSpinEdit2: TdxSpinEdit
      Left = 72
      Top = 170
      Width = 99
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      MaxValue = 100.000000000000000000
      StoredValues = 16
    end
    object dxEdit1: TdxEdit
      Left = 260
      Top = 126
      Width = 179
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 19
      ReadOnly = True
      StoredValues = 64
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 72
      Top = 82
      Width = 315
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxButtonEdit1ButtonClick
      ExistButtons = True
    end
    object dxEdit2: TdxEdit
      Left = 172
      Top = 104
      Width = 166
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 18
      Text = ' '
    end
    object dxPopupEdit4: TdxPopupEdit
      Left = 72
      Top = 50
      Width = 99
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      PopupControl = PopupFrm.grdNgoaite
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit4CloseUp
    end
    object dxCalcEdit2: TdxCalcEdit
      Left = 260
      Top = 50
      Width = 149
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      OnEnter = dxCalcEdit2Enter
      OnExit = dxCalcEdit2Exit
      Alignment = taRightJustify
      Text = '1'
      PopupBorder = pbFrame3D
      StoredValues = 1
    end
    object dxPopupEdit5: TdxPopupEdit
      Left = 72
      Top = 148
      Width = 99
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      OnExit = dxPopupEdit5Exit
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit5CloseUp
      OnInitPopup = dxPopupEdit5InitPopup
    end
    object dxEdit3: TdxEdit
      Left = 172
      Top = 148
      Width = 121
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 15
    end
    object dxSpinEdit3: TdxSpinEdit
      Left = 72
      Top = 192
      Width = 99
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      MaxValue = 100.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 48
    end
    object dxSpinEdit4: TdxSpinEdit
      Left = 260
      Top = 192
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      MaxValue = 100.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 48
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'TntRadioButton1'
          ShowCaption = False
          Control = rbPSPT
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'TntRadioButton2'
          ShowCaption = False
          Control = rbPSTT
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        Offsets.Top = 5
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locPT: TdxLayoutItem
          Caption = 'Ph'#225'&t sinh %'
          Enabled = False
          Control = dxSpinEdit1
          ControlOptions.ShowBorder = False
        end
        object locST: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#7893'ng chi ph'#237' /thu'#7871
          Control = dxCalcEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group8: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item13: TdxLayoutItem
          Caption = 'Lo'#7841'i ti'#7873'n t'#7879
          Control = dxPopupEdit4
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#7927' gi'#225' qui '#273#7893'i'
          Control = dxCalcEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item12: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'S'#7889' phi'#7871'&u m'#7899'i'
        Offsets.Top = 10
        Control = dxButtonEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group7: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#224'i kho'#7843'n &c'#243
            Control = dxPopupEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            Control = dxEdit2
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = #272#7889'i t'#432#7907'ng'
            Control = dxPopupEdit2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
            Control = dxEdit1
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group5: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group10: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item15: TdxLayoutItem
            Caption = 'T'#224'i kho'#7843'n n'#7907
            Control = dxPopupEdit5
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item16: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = dxEdit3
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group9: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group13: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item9: TdxLayoutItem
              Caption = '% Thu'#7871' &VAT'
              Control = dxSpinEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'T'#224'i kho'#7843'n V&AT'
              Control = dxPopupEdit3
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group12: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item17: TdxLayoutItem
              Caption = 'T'#7915' d'#242'ng th'#7913
              Control = dxSpinEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item18: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = #272#7871'n d'#242'ng th'#7913
              Control = dxSpinEdit4
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 10
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnOK
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
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
        Caption = 'Ph'#225't sinh phi'#7871'u m'#7899'i'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 224
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 4
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
