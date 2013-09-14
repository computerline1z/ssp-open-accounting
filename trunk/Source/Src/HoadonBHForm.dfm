object HoadonBHFrm: THoadonBHFrm
  Left = 374
  Top = 303
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 165
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 261
    Height = 165
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object btnCancel: TElPopupButton
      Left = 176
      Top = 130
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
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 95
      Top = 130
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Nh'#7853'p g'#7897'p'
      TabOrder = 5
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtHoadon: TdxEdit
      Left = 165
      Top = 10
      Width = 121
      TabOrder = 1
    end
    object edtSeri: TdxEdit
      Left = 82
      Top = 10
      Width = 77
      TabOrder = 0
    end
    object dedtNgayHD: TdxDateEdit
      Left = 82
      Top = 37
      Width = 167
      TabOrder = 2
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dedtDenngay: TdxDateEdit
      Left = 82
      Top = 91
      Width = 165
      TabOrder = 4
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dedtTungay: TdxDateEdit
      Left = 82
      Top = 64
      Width = 165
      TabOrder = 3
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      DateValidation = True
      UseEditMask = True
      StoredValues = 5
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = ' S'#234'ri-H'#243'a '#273#417'n'
            Control = edtSeri
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = edtHoadon
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Ng'#224'y h'#243'a '#273#417'n'
          Control = dedtNgayHD
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item7: TdxLayoutItem
        Caption = 'Thu t'#7915' ng'#224'y'
        Control = dedtTungay
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        Caption = #272#7871'n ng'#224'y'
        Control = dedtDenngay
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
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
        Caption = 'H'#243'a '#273#417'n g'#7897'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 64
    Top = 120
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 32
    Top = 116
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clFuchsia
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold, fsItalic]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
