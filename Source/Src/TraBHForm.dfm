object TraBHFrm: TTraBHFrm
  Left = 376
  Top = 255
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 246
  ClientWidth = 372
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
    Width = 372
    Height = 246
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object btnCancel: TElPopupButton
      Left = 287
      Top = 211
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
      TabOrder = 8
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 206
      Top = 211
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 7
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxPopupEdit2: TdxPopupEdit
      Left = 183
      Top = 10
      Width = 100
      TabOrder = 0
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit4: TdxPopupEdit
      Left = 183
      Top = 64
      Width = 121
      TabOrder = 2
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit3: TdxPopupEdit
      Left = 183
      Top = 118
      Width = 121
      TabOrder = 4
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit5: TdxPopupEdit
      Left = 183
      Top = 145
      Width = 121
      TabOrder = 5
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 183
      Top = 172
      Width = 121
      TabOrder = 6
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit6: TdxPopupEdit
      Left = 183
      Top = 37
      Width = 121
      TabOrder = 1
    end
    object pedtMADTTIEN: TdxPopupEdit
      Left = 183
      Top = 91
      Width = 153
      TabOrder = 3
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
          Caption = 'T'#224'i kho'#7843'n ph'#7843'i tr'#7843' nh'#224' B'#7843'o hi'#7875'm'
          Control = dxPopupEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'T'#224'i kho'#7843'n ph'#7843'i thu nh'#224' B'#7843'o hi'#7875'm'
          Control = dxPopupEdit6
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'Tr'#7843' nh'#224' B'#7843'o hi'#7875'm b'#7857'ng t'#224'i kho'#7843'n '
          Control = dxPopupEdit4
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item9: TdxLayoutItem
        Caption = 'M'#227' '#273#7889'i t'#432#7907'ng t'#224'i kho'#7843'n ti'#7873'n thu'
        Control = pedtMADTTIEN
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'T'#224'i kho'#7843'n doanh thu ti'#7873'n hoa h'#7891'ng'
        Control = dxPopupEdit3
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'T'#224'i kho'#7843'n thu'#7871' GTGT c'#7911'a hoa h'#7891'ng'
        Control = dxPopupEdit5
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        Caption = 'T'#224'i kho'#7843'n thu'#7871' nh'#224' th'#7847'u'
        Control = dxPopupEdit1
        ControlOptions.ShowBorder = False
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
        Caption = 'Tr'#7843' ti'#7873'n b'#7843'o hi'#7875'm cho Nh'#224' cung c'#7845'p (Insurer)'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 56
    Top = 192
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 32
    Top = 196
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
