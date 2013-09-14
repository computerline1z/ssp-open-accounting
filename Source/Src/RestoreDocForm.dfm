object RestoreDocFrm: TRestoreDocFrm
  Left = 340
  Top = 336
  Width = 379
  Height = 143
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 371
    Height = 109
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object btnCancel: TElPopupButton
      Left = 286
      Top = 74
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
      Left = 205
      Top = 74
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
      Action = acExe
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
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          Caption = 'T'#7915' th'#225'ng'
          Control = spnFromMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'n'#259'm'
          Control = spnFromYear
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = #273#7871'n th'#225'ng'
          Control = spnToMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'n'#259'm'
          Control = spnToYear
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
      object dxLayoutGroup3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 10
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
  object qryExe: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsMain
    RecordCountAccurate = True
    OnError = qryExeError
    FieldOptions = []
    Top = 48
  end
  object Timer2: TTimer
    Interval = 600
    Left = 31
    Top = 46
  end
  object tsMain: TIB_Transaction
    AutoCommit = True
    Isolation = tiCommitted
    Left = 62
    Top = 52
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
        Caption = 'Ph'#7909'c h'#7891'i d'#7919' li'#7879'u '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 90
    Top = 52
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 114
    Top = 56
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 174
    Top = 60
    object acExe: TAction
      Caption = 'acExe'
      OnExecute = acExeExecute
    end
  end
end
