object LoginBFrm: TLoginBFrm
  Left = 334
  Top = 334
  BorderIcons = []
  BorderStyle = bsSingle
  BorderWidth = 1
  ClientHeight = 175
  ClientWidth = 366
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 366
    Height = 175
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object ElLabel1: TElLabel
      Left = 10
      Top = 10
      Width = 345
      Height = 26
      Caption = 
        'N'#7871'u l'#7847'n '#273#7847'u ti'#234'n '#273#259'ng nh'#7853'p b'#7841'n ph'#7843'i  ch'#250' '#253' '#273#7863't t'#234'n v'#224' nh'#7899' l'#7841'i t'#234 +
        'n n'#224'y. M'#7853't kh'#7849'u m'#7863'c '#273#7883'nh c'#7911'a b'#7841'n l'#224' tr'#7889'ng, h'#227'y nh'#7899' v'#224'o '#273#7893'i l'#7841'i m' +
        #7853't kh'#7849'u ngay.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Btn_OK: TElPopupButton
      Left = 194
      Top = 138
      Width = 82
      Height = 27
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#259'ng &nh'#7853'p'
      TabOrder = 4
      OnClick = Btn_OKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object Btn_Cancel: TElPopupButton
      Left = 282
      Top = 138
      Width = 74
      Height = 27
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Tho'#225't'
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDateEdit1: TdxDateEdit
      Left = 87
      Top = 47
      Width = 98
      TabOrder = 0
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 87
      Top = 101
      Width = 267
      TabOrder = 3
      OnChange = dxButtonEdit1Change
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxButtonEdit1ButtonClick
      ExistButtons = True
    end
    object edt_User: TdxEdit
      Left = 87
      Top = 74
      Width = 98
      TabOrder = 1
    end
    object edt_Pwd: TdxEdit
      Left = 240
      Top = 74
      Width = 121
      TabOrder = 2
      PasswordChar = '*'
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item4: TdxLayoutItem
        ShowCaption = False
        Control = ElLabel1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item9: TdxLayoutItem
        AutoAligns = [aaVertical]
        Caption = 'Ng'#224'y l'#224'm vi'#7879'c'
        Offsets.Top = 5
        Control = dxDateEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
          Control = edt_User
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'M'#7853't kh'#7849'u'
          Control = edt_Pwd
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'T'#7853'p tin d'#7919' li'#7879'u'
        Control = dxButtonEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'Btn_OK'
          Offsets.Top = 5
          ShowCaption = False
          Control = Btn_OK
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'Btn_Cancel'
          Offsets.Top = 5
          ShowCaption = False
          Control = Btn_Cancel
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
        Caption = 'SSP Accounting - '#272#259'ng nh'#7853'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 360
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'SSP Database Files|*.gdb'
    Left = 224
    Top = 48
  end
end
