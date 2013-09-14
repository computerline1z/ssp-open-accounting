object GenAutoDocFrm: TGenAutoDocFrm
  Left = 606
  Top = 337
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 142
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = TntFormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 294
    Height = 142
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnCancel: TElPopupButton
      Left = 216
      Top = 114
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
      Left = 138
      Top = 114
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
    object dxPopupEdit3: TdxPopupEdit
      Left = 94
      Top = 27
      Width = 172
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit4: TdxPopupEdit
      Left = 94
      Top = 3
      Width = 172
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      PopupControl = PopupFrm.Pnl_DocType
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit4CloseUp
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 94
      Top = 51
      Width = 172
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item6: TdxLayoutItem
        Caption = 'T'#234'n lo'#7841'i ch'#7913'ng t'#7915' '
        Control = dxPopupEdit4
        ControlOptions.ShowBorder = False
      end
      object locThu: TdxLayoutItem
        Caption = 'T'#224'i kho'#7843'n ti'#7873'n thu'
        Control = dxPopupEdit3
        ControlOptions.ShowBorder = False
      end
      object locChi: TdxLayoutItem
        Caption = 'T'#224'i kho'#7843'n ti'#7873'n chi'
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
        Caption = 'Ph'#225't sinh phi'#7871'u thu t'#7921' '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
        Caption = 'Ph'#225't sinh phi'#7871'u chi t'#7921' '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 64
    Top = 152
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
