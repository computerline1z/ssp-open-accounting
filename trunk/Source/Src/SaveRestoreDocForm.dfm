object SaveRestoreDocFrm: TSaveRestoreDocFrm
  Left = 356
  Top = 287
  BorderStyle = bsSingle
  ClientHeight = 124
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Pgc1: TElPageControl
    Left = 0
    Top = 0
    Width = 385
    Height = 124
    BorderWidth = 0
    DrawFocus = False
    Flat = False
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsFlatTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabSave
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'Tahoma'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 0
    object tabSave: TElTabSheet
      PageControl = Pgc1
      ImageIndex = -1
      TabVisible = True
      Caption = 'C'#7845't d'#7919' li'#7879'u'
      object locForm: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 381
        Height = 101
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object btnCancel: TElPopupButton
          Left = 296
          Top = 66
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
          TabOrder = 5
          OnClick = btnCancelClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnOK: TElPopupButton
          Left = 215
          Top = 66
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          Default = True
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Th'#7921'c hi'#7879'n'
          TabOrder = 4
          Action = acExe1
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object spnFromMonth: TdxSpinEdit
          Left = 59
          Top = 10
          Width = 37
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Alignment = taCenter
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spnFromYear: TdxSpinEdit
          Left = 127
          Top = 10
          Width = 52
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Alignment = taCenter
          MaxValue = 2700.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 49
        end
        object spnToMonth: TdxSpinEdit
          Left = 239
          Top = 10
          Width = 36
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Alignment = taCenter
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spnToYear: TdxSpinEdit
          Left = 306
          Top = 10
          Width = 52
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Alignment = taCenter
          MaxValue = 2700.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 49
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object loctuthang: TdxLayoutItem
              Caption = 'T'#7915' th'#225'ng'
              Control = spnFromMonth
              ControlOptions.ShowBorder = False
            end
            object loctunam: TdxLayoutItem
              Caption = 'n'#259'm'
              Control = spnFromYear
              ControlOptions.ShowBorder = False
            end
            object locdenthang: TdxLayoutItem
              Caption = #273#7871'n th'#225'ng'
              Control = spnToMonth
              ControlOptions.ShowBorder = False
            end
            object locdennam: TdxLayoutItem
              Caption = 'n'#259'm'
              Control = spnToYear
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup3: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Offsets.Top = 5
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object locFormItem5: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'BitBtn2'
              ShowCaption = False
              Control = btnOK
              ControlOptions.ShowBorder = False
            end
            object locFormItem4: TdxLayoutItem
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
    end
    object tabRestore: TElTabSheet
      PageControl = Pgc1
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ph'#7909'c h'#7891'i d'#7919' li'#7879'u'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 381
        Height = 101
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object btnCancel2: TElPopupButton
          Left = 296
          Top = 66
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
          OnClick = btnCancel2Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnOk2: TElPopupButton
          Left = 215
          Top = 66
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          Default = True
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Th'#7921'c hi'#7879'n'
          TabOrder = 5
          Action = acExe2
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object spnfromMonth2: TdxSpinEdit
          Left = 59
          Top = 10
          Width = 37
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Alignment = taCenter
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spnfromyear2: TdxSpinEdit
          Left = 127
          Top = 10
          Width = 52
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Alignment = taCenter
          MaxValue = 2700.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 49
        end
        object SpntoMonth2: TdxSpinEdit
          Left = 239
          Top = 10
          Width = 36
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Alignment = taCenter
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spntoyear2: TdxSpinEdit
          Left = 306
          Top = 10
          Width = 52
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Alignment = taCenter
          MaxValue = 2700.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 49
        end
        object chkKeep: TElCheckBox
          Left = 10
          Top = 37
          Width = 113
          Height = 17
          Cursor = crDefault
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = 'X'#243'a d'#7919' li'#7879'u hi'#7879'n t'#7841'i'
          TabOrder = 4
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object loctuthang2: TdxLayoutItem
              Caption = 'T'#7915' th'#225'ng'
              Control = spnfromMonth2
              ControlOptions.ShowBorder = False
            end
            object loctunam2: TdxLayoutItem
              Caption = 'n'#259'm'
              Control = spnfromyear2
              ControlOptions.ShowBorder = False
            end
            object locdenthang2: TdxLayoutItem
              Caption = #273#7871'n th'#225'ng'
              Control = SpntoMonth2
              ControlOptions.ShowBorder = False
            end
            object locdennam2: TdxLayoutItem
              Caption = 'n'#259'm'
              Control = spntoyear2
              ControlOptions.ShowBorder = False
            end
          end
          object locFormItem1: TdxLayoutItem
            Caption = 'ElCheckBox1'
            ShowCaption = False
            Control = chkKeep
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Offsets.Top = 5
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'BitBtn2'
              ShowCaption = False
              Control = btnOk2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem7: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'BitBtn1'
              ShowCaption = False
              Control = btnCancel2
              ControlOptions.ShowBorder = False
            end
          end
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
        Caption = 'C'#7845't gi'#7919' d'#7919' li'#7879'u '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 72
    Top = 94
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 96
    Top = 98
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object tsMain: TIB_Transaction
    AutoCommit = True
    Isolation = tiCommitted
    Left = 50
    Top = 94
  end
  object qryExe: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsMain
    RecordCountAccurate = True
    OnError = qryExeError
    FieldOptions = []
    Left = 6
    Top = 90
  end
  object Timer2: TTimer
    Interval = 600
    OnTimer = Timer2Timer
    Left = 25
    Top = 94
  end
  object ActionList1: TActionList
    Left = 120
    Top = 96
    object acExe1: TAction
      Caption = 'acExe1'
      OnExecute = acExe1Execute
    end
    object acExe2: TAction
      Caption = 'acExe2'
      OnExecute = acExe2Execute
    end
  end
end
