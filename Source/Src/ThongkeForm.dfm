object ThongkeFrm: TThongkeFrm
  Left = 169
  Top = 120
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
    TabIndex = 1
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = pcgObj
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
      Visible = False
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
        Height = 348
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
        Align = alClient
        ParentColor = False
        TabOrder = 0
        object tabMonth: TElTabSheet
          OnShow = tabMonthShow
          PageControl = pcg
          ImageIndex = -1
          TabVisible = True
          Caption = 'Th'#225'ng'
          object DBChart2: TDBChart
            Left = 0
            Top = 0
            Width = 734
            Height = 325
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            MarginBottom = 0
            MarginLeft = 0
            MarginRight = 2
            MarginTop = 0
            Title.Font.Height = -13
            Title.Text.WideStrings = (
              'TDBChart')
            Chart3DPercent = 3
            Legend.Alignment = laBottom
            View3D = False
            Align = alClient
            TabOrder = 1
            DesignSize = (
              734
              325)
            object ElPopupButton2: TElPopupButton
              Left = 648
              Top = 295
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
            object ElPopupButton3: TElPopupButton
              Left = 8
              Top = 295
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
              Title = 'L'#227'i l?'
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
              Title = 'T?ng ph'#225't sinh'
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
          object DBChart1: TDBChart
            Left = 0
            Top = 0
            Width = 734
            Height = 325
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            MarginBottom = 0
            MarginLeft = 0
            MarginRight = 2
            MarginTop = 0
            Title.Font.Height = -13
            Title.Text.WideStrings = (
              'TDBChart')
            Chart3DPercent = 3
            Legend.Alignment = laLeft
            Legend.CheckBoxes = True
            Legend.Gradient.Direction = gdTopBottom
            Legend.Shadow.Color = clSilver
            Legend.Shadow.HorizSize = 1
            Legend.Shadow.VertSize = 1
            Legend.TopPos = 8
            View3D = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              734
              325)
            object dxCheckEdit1: TdxCheckEdit
              Left = 4
              Top = 234
              Width = 121
              TabOrder = 0
              Anchors = [akLeft, akBottom]
              Caption = 'Hi'#7875'n th'#7883' gi'#225' tr'#7883
              OnChange = dxCheckEdit1Change
            end
            object ElPopupButton1: TElPopupButton
              Left = 7
              Top = 259
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
            object ElPopupButton6: TElPopupButton
              Left = 7
              Top = 287
              Width = 75
              Height = 25
              Cursor = crDefault
              DrawDefaultFrame = False
              LinkColor = clBlue
              LinkStyle = [fsUnderline]
              NumGlyphs = 1
              UseXPThemes = True
              Caption = '&In'
              TabOrder = 2
              OnClick = ElPopupButton3Click
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
        end
        object tabQuater: TElTabSheet
          OnShow = tabQuaterShow
          PageControl = pcg
          ImageIndex = -1
          TabVisible = True
          Caption = 'Qu'#253
          Visible = False
          object DBChart3: TDBChart
            Left = 0
            Top = 0
            Width = 734
            Height = 325
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            MarginBottom = 0
            MarginLeft = 0
            MarginRight = 2
            MarginTop = 0
            Title.Font.Height = -13
            Title.Text.WideStrings = (
              'TDBChart')
            Chart3DPercent = 3
            Legend.Alignment = laLeft
            Legend.CheckBoxes = True
            Legend.Font.Charset = ANSI_CHARSET
            Legend.Font.Name = 'Tahoma'
            Legend.Gradient.Balance = 51
            Legend.Gradient.Direction = gdBottomTop
            Legend.Gradient.EndColor = clSilver
            Legend.Gradient.MidColor = 16514043
            Legend.Gradient.StartColor = clWhite
            Legend.Shadow.Color = clSilver
            Legend.Shadow.HorizSize = 1
            Legend.Shadow.Transparency = 1
            Legend.Shadow.VertSize = 1
            Legend.Symbol.DefaultPen = False
            Legend.Symbol.Pen.Color = clGray
            Legend.Symbol.Squared = True
            Legend.TopPos = 8
            Legend.Transparency = 80
            View3D = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              734
              325)
            object dxCheckEdit2: TdxCheckEdit
              Left = 5
              Top = 262
              Width = 121
              TabOrder = 0
              Anchors = [akLeft, akBottom]
              Caption = 'Hi'#7875'n th'#7883' gi'#225' tr'#7883
              OnChange = dxCheckEdit2Change
            end
            object ElPopupButton4: TElPopupButton
              Left = 7
              Top = 287
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
              OnClick = ElPopupButton4Click
              Anchors = [akLeft, akBottom]
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
            object BarSeries5: TBarSeries
              Depth = 0
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
            object BarSeries6: TBarSeries
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
            object BarSeries7: TBarSeries
              Marks.ArrowLength = 20
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Length = 20
              Marks.Font.Charset = ANSI_CHARSET
              Marks.Font.Name = 'Tahoma'
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
            object BarSeries8: TBarSeries
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
        end
        object tabYear: TElTabSheet
          OnShow = tabYearShow
          PageControl = pcg
          ImageIndex = -1
          TabVisible = True
          Caption = 'N'#259'm'
          Visible = False
          object DBChart4: TDBChart
            Left = 0
            Top = 0
            Width = 734
            Height = 325
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            MarginBottom = 0
            MarginLeft = 0
            MarginRight = 2
            MarginTop = 0
            Title.Font.Height = -13
            Title.Text.WideStrings = (
              'TDBChart')
            Chart3DPercent = 3
            Legend.Alignment = laLeft
            Legend.CheckBoxes = True
            Legend.Shadow.Color = clSilver
            Legend.Shadow.HorizSize = 1
            Legend.Shadow.VertSize = 1
            Legend.TopPos = 8
            View3D = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              734
              325)
            object dxCheckEdit3: TdxCheckEdit
              Left = 6
              Top = 265
              Width = 99
              TabOrder = 0
              Anchors = [akLeft, akBottom]
              Caption = 'Hi'#7875'n th'#7883' gi'#225' tr'#7883
              OnChange = dxCheckEdit3Change
            end
            object ElPopupButton5: TElPopupButton
              Left = 8
              Top = 290
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
              OnClick = ElPopupButton5Click
              Anchors = [akLeft, akBottom]
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
            object BarSeries9: TBarSeries
              Depth = 0
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
            object BarSeries10: TBarSeries
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
            object BarSeries11: TBarSeries
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
            object BarSeries12: TBarSeries
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
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'THANGHT'
          Caption_UTF7 = 'Th+Ht0-i gian'
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
    end
    object pcgObj: TElTabSheet
      PageControl = pcg1
      ImageIndex = -1
      TabVisible = True
      Caption = #272#7889'i t'#432#7907'ng'
      object Splitter2: TSplitter
        Left = 0
        Top = 347
        Width = 738
        Height = 4
        Cursor = crVSplit
        Align = alBottom
      end
      object DBChart5: TDBChart
        Left = 0
        Top = 28
        Width = 738
        Height = 319
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 2
        MarginTop = 0
        Title.Font.Height = -13
        Title.Text.WideStrings = (
          'Doanh thu, chi ph'#237' l'#227'i l'#7895' theo '#273#7889'i t'#432#7907'ng.')
        Chart3DPercent = 3
        Legend.Alignment = laLeft
        Legend.CheckBoxes = True
        Legend.Gradient.Direction = gdTopBottom
        Legend.Shadow.Color = clSilver
        Legend.Shadow.HorizSize = 1
        Legend.Shadow.VertSize = 1
        Legend.TopPos = 8
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          738
          319)
        object dxCheckEdit4: TdxCheckEdit
          Left = 6
          Top = 241
          Width = 121
          TabOrder = 0
          Anchors = [akLeft, akBottom]
          Caption = 'Hi'#7875'n th'#7883' gi'#225' tr'#7883
          OnChange = dxCheckEdit4Change
        end
        object ElPopupButton8: TElPopupButton
          Left = 7
          Top = 269
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
          OnClick = ElPopupButton8Click
          Anchors = [akLeft, akBottom]
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object BarSeries13: TBarSeries
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = qryTKDT
          SeriesColor = clRed
          Title = 'Doanh thu'
          XLabelsSource = 'MABOPHAN'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'X'
          YValues.Name = 'Bar'
          YValues.ValueSource = 'DOANHTHU'
        end
        object BarSeries14: TBarSeries
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = qryTKDT
          SeriesColor = clGreen
          Title = 'Chi ph'#237
          XLabelsSource = 'MABOPHAN'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'X'
          YValues.Name = 'Bar'
          YValues.ValueSource = 'CHIPHI'
        end
        object BarSeries15: TBarSeries
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = qryTKDT
          SeriesColor = clYellow
          Title = 'L'#227'i l'#7895
          ValueFormat = '#,0;-#,0'
          XLabelsSource = 'MABOPHAN'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'X'
          YValues.Name = 'Bar'
          YValues.ValueSource = 'LAILO'
        end
      end
      object dxDBGrid2: TdxDBGrid
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
        object dxDBGridColumn1: TdxDBGridColumn
          Caption = 'M'#227' '#273#7889'i t'#432#7907'ng'
          HeaderAlignment = taCenter
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MABOPHAN'
          Caption_UTF7 = 'M+AOM +AREe0Q-i t+AbAe4w-ng'
        end
        object dxDBGridColumn2: TdxDBGridColumn
          Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
          HeaderAlignment = taCenter
          Width = 163
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TENBOPHAN'
          Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
        end
        object dxDBGridColumn3: TdxDBGridColumn
          Caption = 'T'#7893'ng doanh thu'
          HeaderAlignment = taCenter
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DOANHTHU'
          Caption_UTF7 = 'T+HtU-ng doanh thu'
        end
        object dxDBGridColumn4: TdxDBGridColumn
          Caption = 'T'#7893'ng chi ph'#237
          HeaderAlignment = taCenter
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHIPHI'
          Caption_UTF7 = 'T+HtU-ng chi ph+AO0'
        end
        object dxDBGridColumn5: TdxDBGridColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIENLAI'
        end
        object dxDBGridColumn6: TdxDBGridColumn
          Caption = 'L'#227'i l'#7895
          HeaderAlignment = taCenter
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAILO'
          Caption_UTF7 = 'L+AOM-i l+Htc'
        end
        object dxDBGridColumn7: TdxDBGridColumn
          Visible = False
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIENLO'
        end
      end
      object ElPanel1: TElPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 28
        Align = alTop
        BevelOuter = bvSpace
        MouseCapture = False
        TabOrder = 2
        DockOrientation = doNoOrient
        DoubleBuffered = False
        DesignSize = (
          738
          28)
        object lblTo: TElLabel
          Tag = 122
          Left = 516
          Top = 6
          Width = 22
          Height = 13
          AutoSize = False
          Caption = #273#7871'n'
        end
        object ElLabel1: TElLabel
          Tag = 122
          Left = 394
          Top = 8
          Width = 22
          Height = 13
          AutoSize = False
          Caption = 'T'#7915
        end
        object spnFromMonth: TdxSpinEdit
          Left = 419
          Top = 4
          Width = 37
          Cursor = crIBeam
          TabOrder = 0
          Alignment = taCenter
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spnFromYear: TdxSpinEdit
          Left = 458
          Top = 4
          Width = 52
          Cursor = crIBeam
          TabOrder = 1
          Alignment = taCenter
          MaxValue = 2700.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 49
        end
        object spnToMonth: TdxSpinEdit
          Left = 545
          Top = 4
          Width = 36
          Cursor = crIBeam
          TabOrder = 2
          Alignment = taCenter
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spnToYear: TdxSpinEdit
          Left = 582
          Top = 4
          Width = 52
          Cursor = crIBeam
          TabOrder = 3
          Alignment = taCenter
          MaxValue = 2700.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 49
        end
        object ElPopupButton7: TElPopupButton
          Left = 650
          Top = 2
          Width = 75
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&T'#237'nh gi'#225' tr'#7883
          TabOrder = 4
          OnClick = ElPopupButton7Click
          Anchors = [akLeft, akBottom]
          DockOrientation = doNoOrient
          DoubleBuffered = False
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
        Caption = 'Th'#7889'ng k'#234' doanh thu, chi ph'#237' v'#224' l'#227'i l'#7895' trong n'#259'm'
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
        Name = 'tuky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
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
      'select chiphi,doanhthu,kyht,lailo,thanght,tongps'
      '  from sp_tk_dtcpll(:tuky,:denky,:branch_id,:REPORT_TYPE)')
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
  object qryTKDT: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'tuky'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'denky'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'branch_id'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'MABOPHAN')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select MABOPHAN ,'
      '    TENBOPHAN ,'
      '    DOANHTHU ,'
      '    CHIPHI ,'
      '    TIENLAI ,'
      '    TIENLO ,'
      '    LAILO,'
      '    X'
      '  from sp_tk_dtcpll_BP(:tuky,:denky,:branch_id)')
    FieldOptions = []
    Left = 257
    Top = 140
    object qryTKDTMABOPHAN: TWideStringField
      FieldName = 'MABOPHAN'
      Size = 90
    end
    object qryTKDTTENBOPHAN: TWideStringField
      FieldName = 'TENBOPHAN'
      Size = 126
    end
    object qryTKDTDOANHTHU: TIBOFloatField
      FieldName = 'DOANHTHU'
    end
    object qryTKDTCHIPHI: TIBOFloatField
      FieldName = 'CHIPHI'
    end
    object qryTKDTTIENLAI: TIBOFloatField
      FieldName = 'TIENLAI'
    end
    object qryTKDTTIENLO: TIBOFloatField
      FieldName = 'TIENLO'
    end
    object qryTKDTLAILO: TIBOFloatField
      FieldName = 'LAILO'
    end
    object qryTKDTX: TSmallintField
      FieldName = 'X'
    end
  end
  object dsTKDT: TDataSource
    DataSet = qryTKDT
    Left = 256
    Top = 176
  end
end
