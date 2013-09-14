object ChangePassAFrm: TChangePassAFrm
  Left = 427
  Top = 261
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 164
  ClientWidth = 346
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
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 346
    Height = 164
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth]
    object edtOldPass: TdxEdit
      Left = 88
      Top = 37
      Width = 201
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      MaxLength = 15
      PasswordChar = '*'
      StoredValues = 2
    end
    object edtNewPass: TdxEdit
      Left = 88
      Top = 64
      Width = 201
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      MaxLength = 15
      PasswordChar = '*'
      StoredValues = 2
    end
    object edtReNewPass: TdxEdit
      Left = 88
      Top = 91
      Width = 201
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      MaxLength = 15
      PasswordChar = '*'
      StoredValues = 2
    end
    object btnCancel: TElPopupButton
      Left = 261
      Top = 128
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
      Caption = '&Kh'#244'ng '#273#7893'i'
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 180
      Top = 128
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Thay '#273#7893'i'
      TabOrder = 4
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxEdit1: TdxEdit
      Left = 88
      Top = 10
      Width = 121
      Enabled = False
      TabOrder = 0
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item6: TdxLayoutItem
        Caption = 'H'#7885' v'#224' t'#234'n'
        Control = dxEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'M'#7853't kh'#7849'u c'#361' '
        Control = edtOldPass
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'M'#7853't kh'#7849'u m'#7899'i '
        Control = edtNewPass
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        Caption = 'G'#245' x'#225'c nh'#7853'n l'#7841'i'
        Control = edtReNewPass
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Offsets.Top = 10
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
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
        Caption = 'Thay '#273#7893'i m'#7853't kh'#7849'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 88
  end
end
