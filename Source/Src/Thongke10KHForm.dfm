object Thongke10KHFrm: TThongke10KHFrm
  Left = 181
  Top = 67
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
    object pcgObj: TElTabSheet
      PageControl = pcg1
      ImageIndex = -1
      TabVisible = True
      Caption = 'Doanh thu kh'#225'ch h'#224'ng'
      object Splitter2: TSplitter
        Left = 0
        Top = 347
        Width = 738
        Height = 4
        Cursor = crVSplit
        Align = alBottom
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
        KeyField = 'MAKH'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alBottom
        TabOrder = 0
        OnMouseUp = dxDBGrid1MouseUp
        DataSource = dsTKDT
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
          FieldName = 'MAKH'
          Caption_UTF7 = 'M+AOM +AREe0Q-i t+AbAe4w-ng'
        end
        object dxDBGridColumn2: TdxDBGridColumn
          Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
          HeaderAlignment = taCenter
          Width = 163
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TENKH'
          Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
        end
        object dxdbgrid2DOANHTHU: TdxDBGridColumn
          Caption = 'Doanh thu'
          HeaderAlignment = taCenter
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DOANHTHU'
          SummaryFooterType = cstSum
        end
        object dxdbgrid2CHIPHI: TdxDBGridColumn
          Caption = 'T'#7893'ng chi ph'#237
          HeaderAlignment = taCenter
          Visible = False
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHIPHI'
          SummaryFooterType = cstSum
          Caption_UTF7 = 'T+HtU-ng chi ph+AO0'
        end
        object dxdbgrid2tienlai: TdxDBGridColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIENLAI'
          SummaryFooterType = cstSum
        end
        object dxdbgrid2lailo: TdxDBGridColumn
          Caption = 'L'#227'i l'#7895
          HeaderAlignment = taCenter
          Visible = False
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAILO'
          SummaryFooterType = cstSum
          Caption_UTF7 = 'L+AOM-i l+Htc'
        end
        object dxdbgrid2tienlo: TdxDBGridColumn
          Visible = False
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIENLO'
          SummaryFooterType = cstSum
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
        TabOrder = 1
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
          'Doanh thu theo '#273#7889'i t'#432#7907'ng.')
        BottomAxis.LabelsMultiLine = True
        Chart3DPercent = 3
        LeftAxis.LabelsMultiLine = True
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
        TabOrder = 2
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
        object Series1: THorizBarSeries
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = qryTKDT
          SeriesColor = clBlue
          Title = 'Doanh thu'
          XLabelsSource = 'MAKH'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'Bar'
          XValues.ValueSource = 'DOANHTHU'
          YValues.Name = 'Y'
          YValues.Order = loAscending
          YValues.ValueSource = 'X'
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
  object qryTKDT: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'TUKY'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DENKY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'MAKH')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select MAKH, '
      '    TENKH, '
      '    X, '
      '    DOANHTHU,'
      '    X'
      '  from SP_TK_TOPTENKH(:TUKY,:DENKY,:BRANCH_ID)')
    FieldOptions = []
    Left = 257
    Top = 140
    object qryTKDTX: TSmallintField
      FieldName = 'X'
    end
    object qryTKDTMAKH: TWideStringField
      FieldName = 'MAKH'
      Size = 90
    end
    object qryTKDTTENKH: TWideStringField
      FieldName = 'TENKH'
      Size = 126
    end
    object qryTKDTDOANHTHU: TIBOFloatField
      FieldName = 'DOANHTHU'
    end
  end
  object dsTKDT: TDataSource
    DataSet = qryTKDT
    Left = 256
    Top = 176
  end
end
