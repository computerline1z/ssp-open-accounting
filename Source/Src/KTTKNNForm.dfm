object FormKTTKNN: TFormKTTKNN
  Left = 235
  Top = 185
  Width = 604
  Height = 414
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
    Width = 596
    Height = 380
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    AutoControlAlignment = False
    AutoControlTabOrders = False
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object ElGraphicButton2: TElGraphicButton
      Left = 517
      Top = 355
      Width = 70
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
      Width = 560
      Height = 362
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
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
      DataSource = dsKTTKNN
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dxDBGrid1ACCOUNT_ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'SHTK'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
      end
      object dxDBGrid1ACCOUNT_NAME: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 255
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
      end
      object dxDBGrid1TAIDULIEU: TdxDBGridMaskColumn
        Caption = 'T'#7841'i d'#7919' li'#7879'u'
        HeaderAlignment = taCenter
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAIDULIEU'
        Caption_UTF7 = 'T+HqE-i d+Hu8 li+Hsc-u'
      end
      object dxDBGrid1GHICHU: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Control = dxDBGrid1
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        ShowCaption = False
        Control = ElGraphicButton2
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
        Caption = 'C'#225'c '#273#7883'nh ngh'#297'a li'#234'n quan t'#7899'i t'#224'i kho'#7843'n kh'#244'ng '#273#250'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 92
    Top = 48
  end
  object dsKTTKNN: TDataSource
    DataSet = qryKTTKNN
    Left = 120
    Top = 48
  end
  object qryKTTKNN: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    ACCOUNT_ID ,'
      '    ACCOUNT_NAME ,'
      '    TAIDULIEU ,'
      '    GHICHU'
      'from  SP_KTTKNHONHAT')
    FieldOptions = []
    Left = 190
    Top = 52
    object qryKTTKNNACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 45
    end
    object qryKTTKNNACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 381
    end
    object qryKTTKNNTAIDULIEU: TWideStringField
      FieldName = 'TAIDULIEU'
      Size = 381
    end
    object qryKTTKNNGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 381
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 146
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 6
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
end
