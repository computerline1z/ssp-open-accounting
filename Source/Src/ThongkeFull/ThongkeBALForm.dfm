object ThongkeBALFrm: TThongkeBALFrm
  Left = 171
  Top = 149
  Width = 760
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
  object Splitter1: TSplitter
    Left = 0
    Top = 371
    Width = 752
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 33
    Width = 752
    Height = 338
    MarginBottom = 6
    MarginLeft = 0
    MarginRight = 1
    MarginTop = 0
    Title.Font.Height = -16
    Title.Text.WideStrings = (
      'T'#236'nh h'#236'nh s'#7889' ph'#225't sinh v'#224' s'#7889' d'#432' m'#7897't t'#224'i kho'#7843'n')
    Title.Visible = False
    Chart3DPercent = 3
    Legend.Alignment = laTop
    Legend.CheckBoxes = True
    Legend.Gradient.Visible = True
    Legend.TopPos = 0
    View3D = False
    Zoom.Pen.Width = 3
    Align = alClient
    TabOrder = 0
    DesignSize = (
      752
      338)
    object ElLabel1: TElLabel
      Left = 155
      Top = 317
      Width = 43
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'T'#7915' ng'#224'y '
    end
    object ElLabel2: TElLabel
      Left = 295
      Top = 317
      Width = 22
      Height = 13
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = #273#7871'n'
    end
    object ElLabel3: TElLabel
      Left = 6
      Top = 317
      Width = 59
      Height = 13
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = 'T'#224'i kho'#7843'n :'
    end
    object dedtTungay: TdxDateEdit
      Left = 199
      Top = 314
      Width = 90
      TabOrder = 0
      Anchors = [akLeft, akBottom]
      Alignment = taCenter
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object dedtDenngay: TdxDateEdit
      Left = 314
      Top = 315
      Width = 90
      TabOrder = 1
      Anchors = [akLeft, akBottom]
      Alignment = taCenter
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object ElPopupButton1: TElPopupButton
      Left = 411
      Top = 313
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 2
      OnClick = ElPopupButton1Click
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 64
      Top = 314
      Width = 89
      TabOrder = 3
      OnEnter = dxDBPopupEdit1Enter
      Anchors = [akLeft, akBottom]
      DataField = 'ACCOUNT_ID'
      DataSource = MainDM.dsPAcc
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
    end
    object ElPopupButton2: TElPopupButton
      Left = 487
      Top = 313
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
      OnClick = ElPopupButton2Click
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxCheckEdit1: TdxCheckEdit
      Left = 639
      Top = 348
      Width = 97
      TabOrder = 5
      Caption = '&Hi'#7875'n th'#7883' gi'#225' tr'#7883
      OnChange = dxCheckEdit1Change
    end
    object Series4: TBarSeries
      Depth = 0
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clYellow
      Title = 'N'#7907' '#273#7847'u k'#7923
      XLabelsSource = 'TENTHANG'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'NODK'
    end
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clRed
      Title = 'C'#243' '#273#7847'u k'#7923
      XLabelsSource = 'TENTHANG'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'CODK'
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clGreen
      Title = 'N'#7907' ph'#225't sinh'
      XLabelsSource = 'TENTHANG'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'NOPS'
    end
    object Series3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clBlue
      Title = 'C'#243' ph'#225't sinh'
      XLabelsSource = 'TENTHANG'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'COPS'
    end
    object Series5: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clWhite
      Title = 'N'#7907' cu'#7889'i k'#7923
      XLabelsSource = 'TENTHANG'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'NOCK'
    end
    object Series6: TBarSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Style = smsValue
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clGray
      Title = 'C'#243' cu'#7889'i k'#7923
      XLabelsSource = 'TENTHANG'
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'KYHT'
      YValues.Name = 'Bar'
      YValues.ValueSource = 'COCK'
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 374
    Width = 752
    Height = 142
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KYHT'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alBottom
    TabOrder = 1
    OnDblClick = dxDBGrid1DblClick
    OnMouseUp = dxDBGrid1MouseUp
    DataSource = dsTKThuChi
    DefaultRowHeight = 19
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object dxDBGrid1TENTHANG: TdxDBGridMaskColumn
      Caption = 'Th'#225'ng'
      HeaderAlignment = taCenter
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TENTHANG'
      Caption_UTF7 = 'Th+AOE-ng'
    end
    object dxDBGrid1NODK: TdxDBGridMaskColumn
      Caption = 'N'#7907' '#273#7847'u k'#7923
      HeaderAlignment = taCenter
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NODK'
      Caption_UTF7 = 'N+HuM +AREepw-u k+HvM'
    end
    object dxDBGrid1CODK: TdxDBGridMaskColumn
      Caption = 'C'#243' '#273#7847'u k'#7923
      HeaderAlignment = taCenter
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODK'
      Caption_UTF7 = 'C+APM +AREepw-u k+HvM'
    end
    object dxDBGrid1NOPS: TdxDBGridMaskColumn
      Caption = 'N'#7907' ph'#225't sinh'
      HeaderAlignment = taCenter
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOPS'
      Caption_UTF7 = 'N+HuM ph+AOE-t sinh'
    end
    object dxDBGrid1COPS: TdxDBGridMaskColumn
      Caption = 'C'#243' ph'#225't sinh'
      HeaderAlignment = taCenter
      Width = 114
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COPS'
      Caption_UTF7 = 'C+APM ph+AOE-t sinh'
    end
    object dxDBGrid1NOCK: TdxDBGridMaskColumn
      Caption = 'N'#7907' cu'#7889'i k'#7923
      HeaderAlignment = taCenter
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOCK'
      Caption_UTF7 = 'N+HuM cu+HtE-i k+HvM'
    end
    object dxDBGrid1COCK: TdxDBGridMaskColumn
      Caption = 'C'#243' cu'#7889'i k'#7923
      HeaderAlignment = taCenter
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COCK'
      Caption_UTF7 = 'C+APM cu+HtE-i k+HvM'
    end
  end
  object TeeCommander1: TTeeCommander
    Left = 0
    Top = 0
    Width = 752
    Height = 33
    Panel = DBChart1
    Align = alTop
    ParentShowHint = False
    TabOrder = 2
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
        Caption = 
          'Th'#7889'ng k'#234' t'#236'nh h'#236'nh ph'#225't sinh v'#224' s'#7889' d'#432' qua t'#7915'ng th'#225'ng c'#7911'a 1 t'#224'i k' +
          'ho'#7843'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 360
    Top = 16
  end
  object qryTKThuChi: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'shtk'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'tungay'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'denngay'
        ParamType = ptInput
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
      'select kyht,thang,nam,nodk,codk,nops,cops,nock,cock,tenthang'
      'from sp_tk_ps(:shtk,:tungay,:denngay)')
    FieldOptions = []
    Left = 249
    Top = 124
    object qryTKThuChiKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryTKThuChiTHANG: TSmallintField
      FieldName = 'THANG'
    end
    object qryTKThuChiNAM: TSmallintField
      FieldName = 'NAM'
    end
    object qryTKThuChiNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryTKThuChiCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryTKThuChiNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryTKThuChiCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryTKThuChiNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryTKThuChiCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
    object qryTKThuChiTENTHANG: TWideStringField
      FieldName = 'TENTHANG'
      Size = 15
    end
  end
  object dsTKThuChi: TDataSource
    DataSet = qryTKThuChi
    Left = 216
    Top = 176
  end
end
