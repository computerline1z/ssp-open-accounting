object SearchDlgFrm: TSearchDlgFrm
  Left = 458
  Top = 370
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 56
  ClientWidth = 285
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 285
    Height = 56
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object edtSP: TdxEdit
      Left = 66
      Top = 0
      Width = 172
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      MaxLength = 15
      StoredValues = 2
    end
    object btnCancel: TElPopupButton
      Left = 210
      Top = 26
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
      Caption = '&B'#7887' qua'
      TabOrder = 2
      OnClick = btnCancelClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 135
      Top = 26
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&T'#236'm'
      TabOrder = 1
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'S'#7889' ch'#7913'ng t'#7915'  '
        Control = edtSP
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Offsets.Top = 5
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
        Caption = 'T'#236'm ch'#7913'ng t'#7915' theo s'#7889
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 48
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 16
    Top = 32
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
end
