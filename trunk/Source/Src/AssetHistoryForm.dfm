object AssetHistoryFrm: TAssetHistoryFrm
  Left = 203
  Top = 150
  Width = 750
  Height = 550
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = TntFormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 742
    Height = 516
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnHelp: TElPopupButton
      Left = 590
      Top = 490
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
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 666
      Top = 490
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 5
      OnClick = btnCloseClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'THANG'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsAssetHistory
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object dxDBGrid1KYHT: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'Th'#225'ng'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LSTHANG'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        Caption_UTF7 = 'Th+AOE-ng'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGrid1TKPB: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'TK PB'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKPB'
      end
      object dxDBGrid1DTPB: TdxDBGridColumn
        Caption = #272#7889'i t'#432#7907'ng ph'#226'n b'#7893
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDTPB'
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng ph+AOI-n b+HtU'
      end
      object dxDBGrid1GTKH: TdxDBGridColumn
        Caption = 'GT kh'#7845'u hao'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTKH'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ###'
        Caption_UTF7 = 'GT kh+HqU-u hao'
      end
      object dxDBGrid1LKKH: TdxDBGridColumn
        Caption = 'Lu'#7929' k'#7871
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KHLK'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ###'
        Caption_UTF7 = 'Lu+Hvk k+Hr8'
      end
      object dxDBGrid1NG: TdxDBGridColumn
        Caption = 'Nguy'#234'n gi'#225
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Sizing = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'NGUYENGIA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ###'
        DisableFilter = True
        Caption_UTF7 = 'Nguy+AOo-n gi+AOE'
      end
      object dxDBGrid1GTCL: TdxDBGridColumn
        Caption = 'C'#242'n l'#7841'i'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTCL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ###'
        Caption_UTF7 = 'C+API-n l+HqE-i'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THANG'
      end
    end
    object BitBtn1: TElPopupButton
      Left = 1
      Top = 490
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &Excel'
      TabOrder = 1
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 77
      Top = 490
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &HTML'
      TabOrder = 2
      OnClick = BitBtn2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 153
      Top = 490
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &XML'
      TabOrder = 3
      OnClick = BitBtn3Click
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
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn7'
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn8'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 312
    Top = 68
    object acExcel: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra Excel'
      OnExecute = acExcelExecute
    end
    object acHTML: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra trang web'
      OnExecute = acHTMLExecute
    end
    object acXML: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra file XML'
      OnExecute = acXMLExecute
    end
  end
  object DlgSave: TSaveDialog
    Filter = 
      'Excel Files (*.xls)|*.xls|HTML Files (*.htm, *.html)|*.html; *.h' +
      'tm |XML Files (*.xml)|*.xml'
    Left = 356
    Top = 72
  end
  object qryAssetHistory: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'asset_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'THANG')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select bpsd,gtcl,gtkh,khlk,loaidtpb,madtpb,nguyengia,tendtpb,tha' +
        'ng,tkkh,tkpb,lsthang'
      'from sp_assethistory(:asset_id,:branch_id) order by thang')
    FieldOptions = []
    Left = 129
    Top = 160
    object qryAssetHistoryLOAIDTPB: TIntegerField
      FieldName = 'LOAIDTPB'
    end
    object qryAssetHistoryTHANG: TSmallintField
      FieldName = 'THANG'
    end
    object qryAssetHistoryLSTHANG: TWideStringField
      FieldName = 'LSTHANG'
      Size = 21
    end
    object qryAssetHistoryBPSD: TWideStringField
      FieldName = 'BPSD'
      Size = 381
    end
    object qryAssetHistoryMADTPB: TWideStringField
      FieldName = 'MADTPB'
      Size = 93
    end
    object qryAssetHistoryTENDTPB: TWideStringField
      FieldName = 'TENDTPB'
      Size = 381
    end
    object qryAssetHistoryTKKH: TWideStringField
      FieldName = 'TKKH'
      Size = 45
    end
    object qryAssetHistoryTKPB: TWideStringField
      FieldName = 'TKPB'
      Size = 45
    end
    object qryAssetHistoryGTCL: TIBOFloatField
      FieldName = 'GTCL'
    end
    object qryAssetHistoryKHLK: TIBOFloatField
      FieldName = 'KHLK'
    end
    object qryAssetHistoryNGUYENGIA: TIBOFloatField
      FieldName = 'NGUYENGIA'
    end
    object qryAssetHistoryGTKH: TIBOFloatField
      FieldName = 'GTKH'
    end
  end
  object dsAssetHistory: TDataSource
    DataSet = qryAssetHistory
    Left = 129
    Top = 200
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
        Caption = 'L'#7883'ch s'#7917' s'#7917' d'#7909'ng t'#224'i s'#7843'n c'#7889' '#273#7883'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 172
    Top = 168
  end
end
