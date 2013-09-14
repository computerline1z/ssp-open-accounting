object FormPPXK: TFormPPXK
  Left = 217
  Top = 185
  Width = 497
  Height = 341
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 489
    Height = 307
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsPPXK
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dxDBGrid1MSPPXK: TdxDBGridMaskColumn
        Caption = 'STT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MSPPXK'
      end
      object dxDBGrid1TENPPXK: TdxDBGridMaskColumn
        Caption = 'Ph'#432#417'ng ph'#225'p xu'#7845't kho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 382
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENPPXK'
        Caption_UTF7 = 'Ph+AbABoQ-ng ph+AOE-p xu+HqU-t kho'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 179
      Top = 281
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 257
      Top = 281
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 335
      Top = 281
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L'#432'u'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 413
      Top = 281
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Kh'#244'ng l'#432'u'
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
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
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'Ph'#432#417'ng ph'#225'p xu'#7845't kho'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 144
  end
  object dsPPXK: TDataSource
    DataSet = qryPPXK
    Left = 160
    Top = 64
  end
  object qryPPXK: TIBOQuery
    Params = <>
    DatabaseName = 'F:\5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PHUONGPHAPXUATKHO'
      'WHERE'
      '   MS_PPXK = :OLD_MS_PPXK')
    EditSQL.Strings = (
      'UPDATE PHUONGPHAPXUATKHO SET'
      '   MS_PPXK = :MS_PPXK, /*PK*/'
      '   TEN_PPXK = :TEN_PPXK'
      'WHERE'
      '   MS_PPXK = :OLD_MS_PPXK')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO PHUONGPHAPXUATKHO('
      '   MS_PPXK, /*PK*/'
      '   TEN_PPXK)'
      'VALUES ('
      '   :MS_PPXK,'
      '   :TEN_PPXK)')
    KeyLinks.Strings = (
      'PHUONGPHAPXUATKHO.MS_PPXK')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MS_PPXK'
      '     , TEN_PPXK'
      'FROM PHUONGPHAPXUATKHO')
    FieldOptions = []
    Left = 120
    Top = 80
    object qryPPXKMS_PPXK: TSmallintField
      FieldName = 'MS_PPXK'
      Required = True
    end
    object qryPPXKTEN_PPXK: TWideStringField
      FieldName = 'TEN_PPXK'
      Size = 126
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 536
    Top = 76
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clBlack
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsUnderline]
      ItemOptions.CaptionOptions.HotTrack = True
      ItemOptions.CaptionOptions.TextColor = clWindowText
      ItemOptions.CaptionOptions.TextHotColor = clBlue
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 168
    Top = 112
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsert'
      DataSource = dsPPXK
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsPPXK
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsPPXK
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsPPXK
    end
  end
end
