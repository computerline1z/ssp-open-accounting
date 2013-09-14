object BtnsFrame: TBtnsFrame
  Left = 0
  Top = 0
  Width = 501
  Height = 21
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 501
    Height = 21
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = ABCXYZ
    object TntBitBtn1: TElPopupButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 0
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 78
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 1
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 166
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 2
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 244
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 3
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 352
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 4
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 430
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Item7: TdxLayoutItem
        Caption = 'TntBitBtn1'
        ShowCaption = False
        Control = TntBitBtn1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'TntBitBtn2'
        ShowCaption = False
        Control = TntBitBtn2
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'TntBitBtn3'
        Offsets.Left = 10
        ShowCaption = False
        Control = TntBitBtn3
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        Caption = 'TntBitBtn4'
        ShowCaption = False
        Control = TntBitBtn4
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'TntBitBtn5'
        ShowCaption = False
        Control = TntBitBtn5
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'TntBitBtn6'
        ShowCaption = False
        Control = TntBitBtn6
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 328
    object ABCXYZ: TdxLayoutWebLookAndFeel
      GroupOptions.Color = clBtnFace
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object ActionList1: TActionList
    Left = 340
    Top = 24
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
    end
  end
end
