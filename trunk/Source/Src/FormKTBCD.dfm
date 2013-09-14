object KTBCDForm: TKTBCDForm
  Left = 160
  Top = 135
  Width = 742
  Height = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 734
    Height = 518
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object ElGraphicButton1: TElGraphicButton
      Left = 658
      Top = 492
      Width = 75
      Height = 25
      Cursor = crDefault
      ModalResult = 1
      NumGlyphs = 1
      ShadowFollowsColor = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'OK'
      DockOrientation = doNoOrient
    end
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
      KeyField = 'SHTK'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
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
      DataSource = dsKTBCD
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dxDBGrid1SHTK: TdxDBGridMaskColumn
        Caption = 'S'#7889' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
      end
      object dxDBGrid1TENCHITIEU: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 236
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENCHITIEU'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1TENSHTK: TdxDBGridMaskColumn
        Visible = False
        Width = 28346
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENSHTK'
      end
      object dxDBGrid1CHITIEU: TdxDBGridMaskColumn
        Caption = 'Ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHITIEU'
        Caption_UTF7 = 'Ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1DINHNGHIADK: TdxDBGridMaskColumn
        Caption = #272#7883'nh ngh'#297'a '#273#259'ng k'#253
        HeaderAlignment = taCenter
        Width = 179
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DINHNGHIADK'
        Caption_UTF7 = '+ARAeyw-nh ngh+ASk-a +AREBAw-ng k+AP0'
      end
      object dxDBGrid1SOLANDANGKY: TdxDBGridMaskColumn
        Caption = 'SL '#273#259'ng k'#253
        HeaderAlignment = taCenter
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOLANDANGKY'
        Caption_UTF7 = 'SL +AREBAw-ng k+AP0'
      end
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
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        ShowCaption = False
        Control = ElGraphicButton1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object qryKTBCD: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '  SHTK ,'
      '  TENCHITIEU ,'
      '  TENSHTK ,'
      '  LOAI_TK,'
      '  DIENGIAI,'
      '  ID,'
      '  CHITIEU,'
      '  DINHNGHIADK,'
      '  SOLANDANGKY '
      'from  SP_CHECK_BANGCANDOI ')
    FieldOptions = []
    Left = 40
    Top = 32
    object qryKTBCDSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 63
    end
    object qryKTBCDTENCHITIEU: TWideStringField
      FieldName = 'TENCHITIEU'
      Size = 405
    end
    object qryKTBCDTENSHTK: TWideStringField
      FieldName = 'TENSHTK'
      Size = 405
    end
    object qryKTBCDLOAI_TK: TSmallintField
      FieldName = 'LOAI_TK'
    end
    object qryKTBCDDIENGIAI: TWideStringField
      FieldName = 'DIENGIAI'
      Size = 381
    end
    object qryKTBCDID: TSmallintField
      FieldName = 'ID'
    end
    object qryKTBCDCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 21
    end
    object qryKTBCDDINHNGHIADK: TWideStringField
      FieldName = 'DINHNGHIADK'
      Size = 135
    end
    object qryKTBCDSOLANDANGKY: TSmallintField
      FieldName = 'SOLANDANGKY'
    end
  end
  object dsKTBCD: TDataSource
    DataSet = qryKTBCD
    Left = 48
    Top = 64
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
        Caption = 'C'#225'c t'#224'i kho'#7843'n ch'#432'a h'#7907'p l'#237' trong b'#224'ng '#273'i'#7873'u ki'#7879'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 32
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
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 536
    Top = 76
    object dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel
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
end
