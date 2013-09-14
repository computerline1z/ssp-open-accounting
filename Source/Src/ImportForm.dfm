object ImportFrm: TImportFrm
  Left = 318
  Top = 169
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 324
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 534
    Height = 324
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object lblRows: TElLabel
      Left = 3
      Top = 282
      Width = 110
      Height = 13
      AutoSize = False
      Caption = #272'ang '#273#7885'c d'#242'ng th'#7913' : '
    end
    object lblRowNum: TElLabel
      Left = 114
      Top = 282
      Width = 402
      Height = 13
      AutoSize = False
      Caption = '0'
    end
    object ElPopupButton1: TElPopupButton
      Left = 456
      Top = 296
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      Default = True
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxMemo1: TdxMemo
      Left = 3
      Top = 18
      Width = 528
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      ReadOnly = True
      ScrollBars = ssVertical
      Height = 240
      StoredValues = 64
    end
    object ProgressBar1: TProgressBar
      Left = 116
      Top = 300
      Width = 282
      Height = 19
      Step = 1
      TabOrder = 4
    end
    object ElPopupButton2: TElPopupButton
      Left = 3
      Top = 296
      Width = 112
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u th'#224'nh t'#7853'p tin'
      TabOrder = 1
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPause: TElPopupButton
      Left = 380
      Top = 296
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      Default = True
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&D'#7915'ng l'#7841'i'
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 
          'Th'#7913' t'#7921' c'#225'c c'#7897't trong file Excel ph'#7843'i t'#432#417'ng '#7913'ng v'#7899'i danh s'#225'ch c'#7911'a' +
          ' l'#432#7899'i (k'#7875' c'#7843' c'#225'c c'#7897't b'#7883' d'#7845'u)'
        CaptionOptions.Layout = clTop
        Control = dxMemo1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          CaptionOptions.Layout = clTop
          ShowCaption = False
          Control = lblRows
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          CaptionOptions.Layout = clTop
          ShowCaption = False
          Control = lblRowNum
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Visible = False
          Control = ElPopupButton2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avBottom
          Caption = 'ProgressBar1'
          Offsets.Bottom = 2
          ShowCaption = False
          Control = ProgressBar1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          ShowCaption = False
          Control = btnPause
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
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
        Caption = 'Qu'#225' tr'#236'nh '#273#7885'c d'#7919' li'#7879'u t'#7915' Excel'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 328
    Top = 352
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text Files (*.txt)|*.txt'
    Left = 8
    Top = 24
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 356
    Top = 28
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
