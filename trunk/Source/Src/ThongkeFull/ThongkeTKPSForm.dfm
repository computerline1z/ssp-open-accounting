object ThongkeTKPSFrm: TThongkeTKPSFrm
  Left = 139
  Top = 239
  Width = 793
  Height = 530
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
    Left = 250
    Top = 0
    Height = 496
  end
  object ElPageControl1: TElPageControl
    Left = 253
    Top = 0
    Width = 532
    Height = 496
    BorderWidth = 0
    DrawFocus = False
    Flat = False
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = ElTabSheet1
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
    object ElTabSheet1: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = 'Bi'#7875'u '#273#7891
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 528
        Height = 473
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 0
        MarginTop = 0
        Title.Font.Height = -16
        Title.Text.WideStrings = (
          '')
        Chart3DPercent = 20
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Gradient.Visible = True
        Legend.Inverted = True
        Legend.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 441
          Width = 528
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object ElRadioGroup1: TElRadioGroup
            Left = 0
            Top = 0
            Width = 528
            Height = 32
            Align = alClient
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
            Columns = 4
            Flat = False
            FlatAlways = False
            ItemIndex = 0
            Items.Strings = (
              'N'#7907' ph'#225't sinh'
              'C'#243' ph'#225't sinh')
            ItemHeight = 15
            ShowFocus = False
            TabOrder = 0
            OnClick = ElRadioGroup1Click
          end
        end
        object TeeCommander1: TTeeCommander
          Left = 0
          Top = 0
          Width = 528
          Height = 33
          Panel = DBChart1
          Align = alTop
          ParentShowHint = False
          TabOrder = 1
        end
        object Series3: TPieSeries
          Marks.ArrowLength = 8
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.MultiLine = True
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryTKPhatsinh
          SeriesColor = clYellow
          ShowInLegend = False
          Title = 'N'#7907' ph'#225't sinh'
          XLabelsSource = 'SHTK'
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.ValueSource = 'NOPS'
        end
        object Series4: TPieSeries
          Marks.ArrowLength = 8
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.MultiLine = True
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryTKPhatsinh
          SeriesColor = clBlue
          ShowInLegend = False
          Title = 'C'#243' ph'#225't sinh'
          XLabelsSource = 'SHTK'
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.ValueSource = 'COPS'
        end
      end
    end
    object ElTabSheet2: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = 'B'#7843'ng bi'#7875'u'
      Visible = False
      BorderWidth = 5
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 0
        Width = 518
        Height = 463
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SHTK'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnDblClick = dxDBGrid1DblClick
        OnMouseUp = dxDBGrid1MouseUp
        DataSource = dsTKPhatsinh
        DefaultRowHeight = 19
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object dxDBGrid1SHTK: TdxDBGridMaskColumn
          Caption = 'S'#7889' hi'#7879'u'
          HeaderAlignment = taCenter
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SHTK'
          SummaryFooterType = cstCount
          Caption_UTF7 = 'S+HtE hi+Hsc-u'
        end
        object dxDBGrid1TENTK: TdxDBGridColumn
          Caption = 'T'#234'n t'#224'i kho'#7843'n'
          HeaderAlignment = taCenter
          Width = 176
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TENTK'
          Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
        end
        object dxDBGrid1NOPS: TdxDBGridColumn
          Caption = 'N'#7907' ph'#225't sinh'
          HeaderAlignment = taCenter
          Width = 121
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOPS'
          SummaryFooterType = cstSum
          Caption_UTF7 = 'N+HuM ph+AOE-t sinh'
        end
        object dxDBGrid1COPS: TdxDBGridColumn
          Caption = 'C'#243' ph'#225't sinh'
          HeaderAlignment = taCenter
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COPS'
          SummaryFooterType = cstSum
          Caption_UTF7 = 'C+APM ph+AOE-t sinh'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 496
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object dxDBTreeList1: TdxDBTreeList
      Left = 1
      Top = 1
      Width = 248
      Height = 441
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACCOUNT_ID'
      ParentField = 'PACCOUNT_ID'
      Align = alClient
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      DataSource = dsAccLst
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1ACCOUNT_ID: TdxDBTreeListMaskColumn
        Caption = 'S'#7889' hi'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
      end
      object dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
      end
      object dxDBTreeList1ISSELECT: TdxDBTreeListCheckColumn
        Caption = ' '
        DisableCaption = True
        DisableCustomizing = True
        HeaderAlignment = taCenter
        MinWidth = 20
        Sizing = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'ISSELECT'
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 442
      Width = 248
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object ElPopupButton1: TElPopupButton
        Left = 172
        Top = 27
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Xem'
        TabOrder = 0
        OnClick = ElPopupButton1Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object ElPopupButton2: TElPopupButton
        Left = 0
        Top = 1
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&B'#7887' h'#7871't'
        TabOrder = 1
        OnClick = ElPopupButton2Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object ElPopupButton3: TElPopupButton
        Left = 75
        Top = 1
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Ch'#7885'n h'#7871't con'
        TabOrder = 2
        OnClick = ElPopupButton3Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object dedtTungay: TdxDateEdit
        Left = 2
        Top = 30
        Width = 82
        TabOrder = 3
        Alignment = taCenter
        Date = 37816.000000000000000000
        UseEditMask = True
        StoredValues = 5
      end
      object dedtDenngay: TdxDateEdit
        Left = 86
        Top = 30
        Width = 82
        TabOrder = 4
        Alignment = taCenter
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 5
      end
      object ElPopupButton4: TElPopupButton
        Left = 172
        Top = 2
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&In'
        TabOrder = 5
        OnClick = ElPopupButton4Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
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
        Caption = 'B'#7843'ng th'#7889'ng k'#234' t'#236'nh h'#236'nh t'#224'i kho'#7843'n ph'#225't sinh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 344
    Top = 136
  end
  object qryTKPhatsinh: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'tungay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denngay'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'shtk')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select shtk,tentk, nops,cops from sp_tk_phatsinh_noco(:tungay,:d' +
        'enngay)')
    FieldOptions = []
    Left = 217
    Top = 148
    object qryTKPhatsinhSHTK: TWideStringField
      FieldName = 'SHTK'
      Size = 15
    end
    object qryTKPhatsinhNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryTKPhatsinhCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryTKPhatsinhTENTK: TWideStringField
      FieldName = 'TENTK'
      Size = 126
    end
  end
  object dsTKPhatsinh: TDataSource
    DataSet = qryTKPhatsinh
    Left = 216
    Top = 176
  end
  object qryAccLst: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    EditSQL.Strings = (
      'UPDATE ACCOUNT_LIST SET'
      '   ISSELECT = :ISSELECT'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACCOUNT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACCOUNT_ID'
      '     , PACCOUNT_ID'
      '     , ACCOUNT_NAME'
      '     , OTYPE_ID'
      '     , ACCOUNT_TAG'
      '     , BALANCE_TYPE'
      '     , ISMIN'
      '     , ISSELECT'
      'FROM ACCOUNT_LIST order by ACCOUNT_ID')
    FieldOptions = []
    Left = 57
    Top = 212
    object qryAccLstACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryAccLstPACCOUNT_ID: TWideStringField
      FieldName = 'PACCOUNT_ID'
      Size = 15
    end
    object qryAccLstACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryAccLstOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryAccLstACCOUNT_TAG: TSmallintField
      FieldName = 'ACCOUNT_TAG'
    end
    object qryAccLstBALANCE_TYPE: TSmallintField
      FieldName = 'BALANCE_TYPE'
    end
    object qryAccLstISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryAccLstISSELECT: TSmallintField
      FieldName = 'ISSELECT'
    end
  end
  object dsAccLst: TDataSource
    DataSet = qryAccLst
    Left = 56
    Top = 240
  end
end
