object ThongkeTysuatFrm: TThongkeTysuatFrm
  Left = 234
  Top = 69
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcg1: TElPageControl
    Left = 0
    Top = 0
    Width = 742
    Height = 516
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsFlatTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = pcgTotal
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 0
    object pcgTotal: TElTabSheet
      PageControl = pcg1
      ImageIndex = -1
      TabVisible = True
      Caption = 'Th'#7889'ng k'#234' chung'
      object Splitter1: TSplitter
        Left = 0
        Top = 348
        Width = 738
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object pcg: TElPageControl
        Left = 0
        Top = 0
        Width = 738
        Height = 22
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
        ActivePage = tabMonth
        FlatTabBorderColor = clBtnShadow
        DraggablePages = False
        ActiveTabFont.Charset = DEFAULT_CHARSET
        ActiveTabFont.Color = clWindowText
        ActiveTabFont.Height = -11
        ActiveTabFont.Name = 'MS Sans Serif'
        ActiveTabFont.Style = []
        TabCursor = crDefault
        Align = alTop
        ParentColor = False
        TabOrder = 0
        object tabMonth: TElTabSheet
          OnShow = tabMonthShow
          PageControl = pcg
          ImageIndex = -1
          TabVisible = True
          Caption = 'Th'#225'ng'
        end
        object tabQuater: TElTabSheet
          OnShow = tabQuaterShow
          PageControl = pcg
          ImageIndex = -1
          TabVisible = True
          Caption = 'Qu'#253
          Visible = False
        end
        object tabYear: TElTabSheet
          OnShow = tabYearShow
          PageControl = pcg
          ImageIndex = -1
          TabVisible = True
          Caption = 'N'#259'm'
          Visible = False
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 351
        Width = 738
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
          Caption = 'Th'#7901'i gian'
          HeaderAlignment = taCenter
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'THANGHT'
          Caption_UTF7 = 'Th+Ht0-i gian'
        end
        object dxDBGrid1KYHT: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KYHT'
        end
        object dxDBGrid1KN9: TdxDBGridMaskColumn
          Caption = 'TS l'#7907'i nhu'#7853'n tr'#432#7899'c thu'#7871'/ Doanh thu'
          HeaderAlignment = taCenter
          Width = 221
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KN9'
          Caption_UTF7 = 'TS l+HuM-i nhu+Hq0-n tr+AbAe2w-c thu+Hr8-/ Doanh thu'
        end
        object dxDBGrid1KN10: TdxDBGridMaskColumn
          Caption = 'TS l'#7907'i nhu'#7853'n sau thu'#7871'/ Doanh thu'
          HeaderAlignment = taCenter
          Width = 199
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KN10'
          Caption_UTF7 = 'TS l+HuM-i nhu+Hq0-n sau thu+Hr8-/ Doanh thu'
        end
        object dxDBGrid1KN13: TdxDBGridMaskColumn
          Caption = 'TS l'#7907'i nhu'#7853'n sau thu'#7871'/ Ngu'#7891'n v'#7889'n'
          HeaderAlignment = taCenter
          Width = 198
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KN13'
          Caption_UTF7 = 'TS l+HuM-i nhu+Hq0-n sau thu+Hr8-/ Ngu+HtM-n v+HtE-n'
        end
      end
      object DBChart1: TDBChart
        Left = 0
        Top = 22
        Width = 738
        Height = 326
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 2
        MarginTop = 0
        Title.Font.Height = -13
        Title.Text.WideStrings = (
          'Th'#7889'ng k'#234' ch'#7881' ti'#234'u t'#224'i ch'#237'nh')
        Chart3DPercent = 3
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Gradient.Direction = gdTopBottom
        Legend.Shadow.Color = clSilver
        Legend.Shadow.HorizSize = 1
        Legend.Shadow.VertSize = 1
        Legend.TopPos = 50
        Legend.VertMargin = 3
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          738
          326)
        object dxCheckEdit1: TdxCheckEdit
          Left = 4
          Top = 280
          Width = 99
          TabOrder = 0
          Anchors = [akLeft, akBottom]
          Caption = 'Hi'#7875'n th'#7883' gi'#225' tr'#7883
          OnChange = dxCheckEdit1Change
        end
        object ElPopupButton6: TElPopupButton
          Left = 7
          Top = 299
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&In'
          TabOrder = 1
          OnClick = ElPopupButton3Click
          Anchors = [akLeft, akBottom]
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton1: TElPopupButton
          Left = 91
          Top = 299
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&T'#237'nh gi'#225' tr'#7883
          TabOrder = 2
          OnClick = ElPopupButton1Click
          Anchors = [akLeft, akBottom]
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
          Title = 'T'#7927' su'#7845't l'#7907'i nhu'#7853'n tr'#432#7899'c thu'#7871'/ Doanh thu'
          XLabelsSource = 'THANGHT'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'KYHT'
          YValues.Name = 'Bar'
          YValues.ValueSource = 'KN9'
        end
        object Series2: TBarSeries
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = qryTonkho
          SeriesColor = clGreen
          Title = 'T'#7927' su'#7845't l'#7907'i nhu'#7853'n sau thu'#7871'/ Doanh thu'
          XLabelsSource = 'THANGHT'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'KYHT'
          YValues.Name = 'Bar'
          YValues.ValueSource = 'KN10'
        end
        object Series3: TBarSeries
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = qryTonkho
          SeriesColor = clYellow
          Title = 'T'#7927' su'#7845't l'#7907'i nhu'#7853'n sau thu'#7871'/ Ngu'#7891'n v'#7889'n'
          ValueFormat = '#,0;-#,0'
          XLabelsSource = 'THANGHT'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'KYHT'
          YValues.Name = 'Bar'
          YValues.ValueSource = 'KN13'
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
        Caption = 'Th'#7889'ng k'#234' c'#225'c ch'#7881' s'#7889' t'#224'i ch'#237'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 280
    Top = 64
  end
  object qryTonkho: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TUKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORT_TYPE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'kyht')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select KYHT,THANGHT ,KN9 ,KN10 , KN13 from '
      'SP_TK_CTTC(:TUKY ,:DENKY ,:BRANCH_ID,:REPORT_TYPE)')
    FieldOptions = []
    Left = 217
    Top = 140
    object qryTonkhoKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryTonkhoTHANGHT: TWideStringField
      FieldName = 'THANGHT'
      Size = 15
    end
    object qryTonkhoKN9: TIBOFloatField
      FieldName = 'KN9'
    end
    object qryTonkhoKN10: TIBOFloatField
      FieldName = 'KN10'
    end
    object qryTonkhoKN13: TIBOFloatField
      FieldName = 'KN13'
    end
  end
  object DataSource1: TDataSource
    DataSet = qryTonkho
    Left = 216
    Top = 176
  end
end
