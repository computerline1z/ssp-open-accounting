object ThuBHFrm: TThuBHFrm
  Left = 376
  Top = 255
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 150
  ClientWidth = 352
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 352
    Height = 150
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object btnCancel: TElPopupButton
      Left = 267
      Top = 115
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
      TabOrder = 4
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 186
      Top = 115
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 3
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxPopupEdit2: TdxPopupEdit
      Left = 171
      Top = 10
      Width = 165
      TabOrder = 0
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit4: TdxPopupEdit
      Left = 171
      Top = 37
      Width = 165
      TabOrder = 1
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object pedtMADTTIEN: TdxPopupEdit
      Left = 171
      Top = 64
      Width = 179
      TabOrder = 2
      OnEnter = pedtMADTTIENEnter
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtMADTTIENCloseUp
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#224'i kho'#7843'n ph'#7843'i thu nh'#224' B'#7843'o hi'#7875'm'
          Control = dxPopupEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'Thu nh'#224' B'#7843'o hi'#7875'm v'#224'o t'#224'i kho'#7843'n '
          Control = dxPopupEdit4
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'M'#227' '#273#7889'i t'#432#7907'ng t'#224'i kho'#7843'n ti'#7873'n thu'
          Control = pedtMADTTIEN
          ControlOptions.ShowBorder = False
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
        Caption = 'Thu ti'#7873'n hoa h'#7891'ng do kh'#225'ch h'#224'ng tr'#7843' tr'#7921'c ti'#7871'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 64
    Top = 56
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 40
    Top = 60
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
