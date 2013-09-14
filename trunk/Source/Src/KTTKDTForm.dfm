object FormKTTKDT: TFormKTTKDT
  Left = 223
  Top = 151
  Width = 649
  Height = 455
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 641
    Height = 421
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object ElGraphicButton1: TElGraphicButton
      Left = 557
      Top = 396
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
      Left = 11
      Top = 2
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
      TabOrder = 0
      DataSource = dsKTTKDT
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid1SHTK: TdxDBGridMaskColumn
        Caption = 'S'#7889' hi'#7879'u t'#224'i kho'#7843'n'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        Caption_UTF7 = 'S+HtE hi+Hsc-u t+AOA-i kho+HqM-n'
      end
      object dxDBGrid1SDNO: TdxDBGridMaskColumn
        Caption = 'S'#7889' d'#432' b'#234'n n'#7907
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SDNO'
        Caption_UTF7 = 'S+HtE d+AbA b+AOo-n n+HuM'
      end
      object dxDBGrid1SDCO: TdxDBGridMaskColumn
        Caption = 'S'#7889' d'#432' b'#234'n c'#243
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SDCO'
        Caption_UTF7 = 'S+HtE d+AbA b+AOo-n c+APM'
      end
      object dxDBGrid1SDDTCO: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng SDNO c'#7911'a c'#225'c '#272'T theo d'#245'i'
        HeaderAlignment = taCenter
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SDDTCO'
        Caption_UTF7 = 'T+HtU-ng SDNO c+Huc-a c+AOE-c +ARA-T theo d+APU-i'
      end
      object dxDBGrid1SDDTNO: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng SDCO c'#7911'a c'#225'c '#272'T theo d'#245'i'
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SDDTNO'
        Caption_UTF7 = 'T+HtU-ng SDCO c+Huc-a c+AOE-c +ARA-T theo d+APU-i'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        ShowCaption = False
        Control = ElGraphicButton1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object qryKTTKDT: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'denngay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING - Thin' +
      'h .GDB'
    IB_Connection = MainDM.cnMain
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    SHTK ,'
      '    SDNO ,'
      '    SDCO ,'
      '    SDDTCO ,'
      '    SDDTNO'
      'from  SP_KIEMTRATKDT(:denngay,:BRANCH_ID)')
    FieldOptions = []
    Left = 72
    Top = 304
    object qryKTTKDTSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 45
    end
    object qryKTTKDTSDNO: TIBOFloatField
      FieldName = 'SDNO'
    end
    object qryKTTKDTSDCO: TIBOFloatField
      FieldName = 'SDCO'
    end
    object qryKTTKDTSDDTCO: TIBOFloatField
      FieldName = 'SDDTCO'
    end
    object qryKTTKDTSDDTNO: TIBOFloatField
      FieldName = 'SDDTNO'
    end
  end
  object dsKTTKDT: TDataSource
    DataSet = qryKTTKDT
    Left = 88
    Top = 248
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
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'C'#225'c t'#224'i kho'#7843'n '#273#432#7907'c theo d'#245'i theo '#273#7889'i t'#432#7907'ng c'#243' s'#7889' d'#432' kh'#244'ng '#273#250'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 48
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 284
    Top = 65524
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 6
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
end
