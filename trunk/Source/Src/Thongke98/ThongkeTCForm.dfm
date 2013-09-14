object ThongkeTCFrm: TThongkeTCFrm
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
    Top = 0
    Width = 752
    Height = 371
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Font.Height = -16
    Title.Text.WideStrings = (
      'T'#236'nh h'#236'nh thu chi t'#7891'n qu'#7929)
    Chart3DPercent = 3
    Legend.Alignment = laBottom
    Legend.CheckBoxes = True
    Legend.Gradient.Visible = True
    Legend.TopPos = 50
    Legend.VertMargin = 1
    View3D = False
    Zoom.Pen.Width = 3
    Align = alClient
    TabOrder = 0
    DesignSize = (
      752
      371)
    object ElLabel1: TElLabel
      Left = 155
      Top = 350
      Width = 43
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'T'#7915' ng'#224'y '
    end
    object ElLabel2: TElLabel
      Left = 295
      Top = 350
      Width = 22
      Height = 13
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = #273#7871'n'
    end
    object ElLabel3: TElLabel
      Left = 6
      Top = 350
      Width = 59
      Height = 13
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = 'T'#224'i kho'#7843'n :'
    end
    object dedtTungay: TdxDateEdit
      Left = 199
      Top = 347
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
      Top = 348
      Width = 90
      TabOrder = 1
      Anchors = [akLeft, akBottom]
      Alignment = taCenter
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object ElPopupButton1: TElPopupButton
      Left = 409
      Top = 346
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
      Top = 347
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
      Left = 484
      Top = 346
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
    object Series1: TFastLineSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Frame.Width = 3
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = 16711808
      Title = 'Thu'
      XLabelsSource = 'NGAY'
      LinePen.Color = 16711808
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'NGAY'
      YValues.Name = 'Y'
      YValues.ValueSource = 'THU'
    end
    object Series2: TFastLineSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Frame.Width = 3
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clGreen
      Title = 'Chi'
      XLabelsSource = 'NGAY'
      LinePen.Color = clGreen
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'NGAY'
      YValues.Name = 'Y'
      YValues.ValueSource = 'CHI'
    end
    object Series3: TFastLineSeries
      Marks.ArrowLength = 20
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Length = 20
      Marks.Frame.Width = 3
      Marks.Visible = False
      DataSource = qryTKThuChi
      SeriesColor = clRed
      Title = 'T'#7891'n'
      ValueFormat = '#,0;-#,0'
      XLabelsSource = 'NGAY'
      LinePen.Color = clRed
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'NGAY'
      YValues.Name = 'Y'
      YValues.ValueSource = 'TON'
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
    KeyField = 'ngay'
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
    object dxDBGrid1NGAY: TdxDBGridDateColumn
      Alignment = taCenter
      Caption = 'Ng'#224'y ph'#225't sinh'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NGAY'
      Caption_UTF7 = 'Ng+AOA-y ph+AOE-t sinh'
    end
    object dxDBGrid1THU: TdxDBGridColumn
      Caption = 'Thu (Ph'#225't sinh n'#7907')'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'THU'
      Caption_UTF7 = 'Thu (Ph+AOE-t sinh n+HuM)'
    end
    object dxDBGrid1CHI: TdxDBGridColumn
      Caption = 'Chi (Ph'#225't sinh C'#243')'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CHI'
      Caption_UTF7 = 'Chi (Ph+AOE-t sinh C+APM)'
    end
    object dxDBGrid1TON: TdxDBGridColumn
      Caption = 'T'#7891'n'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TON'
      Caption_UTF7 = 'T+HtM-n'
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
        Caption = 'Th'#7889'ng k'#234' t'#236'nh h'#236'nh thu chi t'#7891'n qu'#7929
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
      'ngay')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select ngay,thu,chi,ton from sp_tk_thuchi(:shtk,:tungay,:denngay' +
        ')')
    FieldOptions = []
    Left = 249
    Top = 124
    object qryTKThuChiNGAY: TDateField
      FieldName = 'NGAY'
    end
    object qryTKThuChiTHU: TIBOFloatField
      FieldName = 'THU'
    end
    object qryTKThuChiCHI: TIBOFloatField
      FieldName = 'CHI'
    end
    object qryTKThuChiTON: TIBOFloatField
      FieldName = 'TON'
    end
  end
  object dsTKThuChi: TDataSource
    DataSet = qryTKThuChi
    Left = 216
    Top = 176
  end
end
