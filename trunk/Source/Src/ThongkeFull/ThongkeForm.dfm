object ThongkeFrm: TThongkeFrm
  Left = 242
  Top = 273
  Width = 719
  Height = 524
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    711
    490)
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 345
    Width = 711
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 33
    Width = 711
    Height = 312
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 2
    MarginTop = 0
    Title.Font.Height = -13
    Title.Text.WideStrings = (
      'T'#236'nh h'#236'nh doanh thu chi ph'#237' v'#224' l'#227'i l'#7895' trong n'#259'm (h'#236'nh c'#7897't)')
    Chart3DPercent = 3
    Legend.Alignment = laBottom
    Legend.CheckBoxes = True
    Legend.Gradient.Visible = True
    View3D = False
    Align = alClient
    TabOrder = 0
    DesignSize = (
      711
      312)
    object dxCheckEdit1: TdxCheckEdit
      Left = 8
      Top = 292
      Width = 121
      TabOrder = 0
      Anchors = [akLeft, akBottom]
      Caption = 'Hi'#7875'n th'#7883' gi'#225' tr'#7883
      OnChange = dxCheckEdit1Change
    end
    object ElPopupButton1: TElPopupButton
      Left = 625
      Top = 281
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#432#7901'ng &th'#7859'ng'
      TabOrder = 1
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clRed
      Title = 'Doanh thu'
      XLabelsSource = 'THANGHT'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'DOANHTHU'
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clGreen
      Title = 'Chi ph'#237
      XLabelsSource = 'THANGHT'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'CHIPHI'
    end
    object Series3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clYellow
      Title = 'L'#227'i l'#7895
      ValueFormat = '#,0;-#,0'
      XLabelsSource = 'THANGHT'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'LAILO'
    end
    object Series4: TBarSeries
      Active = False
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clBlue
      Title = 'T'#7893'ng ph'#225't sinh'
      XLabelsSource = 'THANGHT'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'TONGPS'
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 348
    Width = 711
    Height = 142
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'kyht'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alBottom
    TabOrder = 1
    OnMouseUp = dxDBGrid1MouseUp
    DataSource = DataSource1
    DefaultRowHeight = 19
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dxDBGrid1THANGHT: TdxDBGridColumn
      Caption = 'Th'#225'ng'
      HeaderAlignment = taCenter
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'THANGHT'
      Caption_UTF7 = 'Th+AOE-ng'
    end
    object dxDBGrid1TONGPS: TdxDBGridColumn
      Caption = 'T'#7893'ng ph'#225't sinh'
      HeaderAlignment = taCenter
      Width = 163
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TONGPS'
      Caption_UTF7 = 'T+HtU-ng ph+AOE-t sinh'
    end
    object dxDBGrid1DOANHTHU: TdxDBGridColumn
      Caption = 'T'#7893'ng doanh thu'
      HeaderAlignment = taCenter
      Width = 144
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DOANHTHU'
      Caption_UTF7 = 'T+HtU-ng doanh thu'
    end
    object dxDBGrid1CHIPHI: TdxDBGridColumn
      Caption = 'T'#7893'ng chi ph'#237
      HeaderAlignment = taCenter
      Width = 144
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CHIPHI'
      Caption_UTF7 = 'T+HtU-ng chi ph+AO0'
    end
    object dxDBGrid1TIENLAI: TdxDBGridColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TIENLAI'
    end
    object dxDBGrid1LAILO: TdxDBGridColumn
      Caption = 'L'#227'i l'#7895
      HeaderAlignment = taCenter
      Width = 145
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAILO'
      Caption_UTF7 = 'L+AOM-i l+Htc'
    end
    object dxDBGrid1TIENLO: TdxDBGridColumn
      Visible = False
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TIENLO'
    end
  end
  object DBChart2: TDBChart
    Left = 0
    Top = 33
    Width = 711
    Height = 312
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 2
    MarginTop = 0
    Title.CustomPosition = True
    Title.Font.Height = -13
    Title.Left = 187
    Title.Text.WideStrings = (
      'T'#236'nh h'#236'nh doanh thu chi ph'#237' v'#224' l'#227'i l'#7895' trong n'#259'm ('#273#432#7901'ng th'#7859'ng)')
    Title.Top = 1
    Chart3DPercent = 3
    Legend.Alignment = laBottom
    Legend.CheckBoxes = True
    Legend.Gradient.Visible = True
    View3D = False
    Align = alClient
    TabOrder = 2
    DesignSize = (
      711
      312)
    object ElPopupButton2: TElPopupButton
      Left = 625
      Top = 281
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&H'#236'nh c'#7897't'
      TabOrder = 0
      OnClick = ElPopupButton2Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BarSeries1: TLineSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clRed
      Title = 'Doanh thu'
      XLabelsSource = 'THANGHT'
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Y'
      YValues.ValueSource = 'DOANHTHU'
    end
    object BarSeries2: TLineSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clBlack
      Title = 'Chi ph'#237
      XLabelsSource = 'THANGHT'
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Y'
      YValues.ValueSource = 'CHIPHI'
    end
    object BarSeries3: TLineSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = clBlue
      Title = 'L'#227'i l'#7895
      ValueFormat = '#,0;-#,0'
      XLabelsSource = 'THANGHT'
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Y'
      YValues.ValueSource = 'LAILO'
    end
    object BarSeries4: TLineSeries
      Active = False
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTonkho
      SeriesColor = 65408
      Title = 'T'#7893'ng ph'#225't sinh'
      XLabelsSource = 'THANGHT'
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Y'
      YValues.ValueSource = 'TONGPS'
    end
  end
  object TeeCommander1: TTeeCommander
    Left = 0
    Top = 0
    Width = 711
    Height = 33
    Panel = DBChart2
    Align = alTop
    ParentShowHint = False
    TabOrder = 3
  end
  object ElPopupButton3: TElPopupButton
    Left = 8
    Top = 314
    Width = 75
    Height = 25
    Cursor = crDefault
    DrawDefaultFrame = False
    LinkColor = clBlue
    LinkStyle = [fsUnderline]
    NumGlyphs = 1
    UseXPThemes = True
    Caption = '&In'
    TabOrder = 4
    OnClick = ElPopupButton3Click
    Anchors = [akLeft, akBottom]
    DockOrientation = doNoOrient
    DoubleBuffered = False
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
        Caption = 'Th'#7889'ng k'#234' doanh thu, chi ph'#237' v'#224' l'#227'i l'#7895' trong n'#259'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 360
    Top = 16
  end
  object qryTonkho: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'tuky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denky'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'kyht')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select chiphi,doanhthu,kyht,lailo,thanght,tongps'
      '  from sp_tk_dtcpll(:tuky,:denky)')
    FieldOptions = []
    Left = 249
    Top = 124
    object qryTonkhoKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryTonkhoTHANGHT: TWideStringField
      FieldName = 'THANGHT'
      Size = 15
    end
    object qryTonkhoCHIPHI: TIBOFloatField
      FieldName = 'CHIPHI'
    end
    object qryTonkhoDOANHTHU: TIBOFloatField
      FieldName = 'DOANHTHU'
    end
    object qryTonkhoLAILO: TIBOFloatField
      FieldName = 'LAILO'
    end
    object qryTonkhoTONGPS: TIBOFloatField
      FieldName = 'TONGPS'
    end
  end
  object DataSource1: TDataSource
    DataSet = qryTonkho
    Left = 216
    Top = 176
  end
end
