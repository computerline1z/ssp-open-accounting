object ThongkeHMFrm: TThongkeHMFrm
  Left = 90
  Top = 180
  Width = 823
  Height = 526
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
    Height = 492
  end
  object ElPageControl1: TElPageControl
    Left = 253
    Top = 0
    Width = 562
    Height = 492
    BorderWidth = 0
    DrawFocus = False
    Flat = False
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsTabs
    TabHeight = 25
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
    TabOrder = 1
    object ElTabSheet1: TElTabSheet
      PageControl = ElPageControl1
      ImageIndex = -1
      TabVisible = True
      Caption = 'Bi'#7875'u '#273#7891
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 558
        Height = 463
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
        object Series3: TPieSeries
          Marks.ArrowLength = 8
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.MultiLine = True
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryHMPhatsinh
          SeriesColor = clYellow
          ShowInLegend = False
          Title = 'H'#7841'n m'#7913'c'
          XLabelsSource = 'TENHM'
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.ValueSource = 'GIATRI'
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
        Width = 548
        Height = 453
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MASO'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnMouseUp = dxDBGrid1MouseUp
        DataSource = dsTKPhatsinh
        DefaultRowHeight = 19
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object dxDBGrid1MASO: TdxDBGridMaskColumn
          Caption = 'M'#227' s'#7889
          HeaderAlignment = taCenter
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MASO'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '0,# d'#242'ng'
          Caption_UTF7 = 'M+AOM s+HtE'
          SummaryFooterFormat_UTF7 = '0,# d+API-ng'
        end
        object dxDBGrid1TENHM: TdxDBGridMaskColumn
          Caption = 'T'#234'n h'#7841'n m'#7913'c, ng'#226'n s'#225'ch'
          HeaderAlignment = taCenter
          Width = 350
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TENHM'
          Caption_UTF7 = 'T+AOo-n h+HqE-n m+Huk-c, ng+AOI-n s+AOE-ch'
        end
        object dxDBGrid1GIATRI: TdxDBGridColumn
          Caption = 'Gi'#225' tr'#7883
          HeaderAlignment = taCenter
          Width = 176
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GIATRI'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '0,#;-0,#'
          Caption_UTF7 = 'Gi+AOE tr+Hss'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 492
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 0
    object dxDBTreeList1: TdxDBTreeList
      Left = 1
      Top = 1
      Width = 248
      Height = 438
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACTICLE_ID'
      ParentField = 'PACTICLE_ID'
      Align = alClient
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      DataSource = dsAccLst
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1ACCOUNT_ID: TdxDBTreeListMaskColumn
        Caption = 'M'#227' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n h'#7841'n m'#7909'c'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NAME'
        Caption_UTF7 = 'T+AOo-n h+HqE-n m+HuU-c'
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
      Top = 439
      Width = 248
      Height = 52
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object ElPopupButton1: TElPopupButton
        Left = 171
        Top = 28
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        Default = True
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
      object ElPopupButton4: TElPopupButton
        Left = 95
        Top = 1
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Ch'#7885'n h'#7871't cha'
        TabOrder = 2
        OnClick = ElPopupButton4Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object dedtTungay: TdxDateEdit
        Left = 2
        Top = 30
        Width = 79
        TabOrder = 3
        Alignment = taCenter
        Date = 37816.000000000000000000
        DateButtons = [btnToday]
        DateOnError = deToday
        UseEditMask = True
        StoredValues = 5
      end
      object dedtDenngay: TdxDateEdit
        Left = 86
        Top = 30
        Width = 76
        TabOrder = 4
        Alignment = taCenter
        Date = 37912.000000000000000000
        DateButtons = [btnToday]
        DateOnError = deToday
        UseEditMask = True
        StoredValues = 5
      end
      object ElPopupButton3: TElPopupButton
        Left = 171
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
        TabOrder = 5
        OnClick = ElPopupButton3Click
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
        Caption = 'B'#7843'ng th'#7889'ng k'#234' t'#236'nh h'#236'nh s'#7917' d'#7909'ng h'#7841'n m'#7913'c, ng'#226'n s'#225'ch'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 256
    Top = 24
  end
  object qryHMPhatsinh: TIBOQuery
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
      'maso')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select maso,tenhm, giatri from sp_tk_hanmuc(:tungay,:denngay)')
    FieldOptions = []
    Left = 217
    Top = 148
    object qryHMPhatsinhTENHM: TWideStringField
      FieldName = 'TENHM'
      Size = 126
    end
    object qryHMPhatsinhGIATRI: TIBOFloatField
      FieldName = 'GIATRI'
    end
    object qryHMPhatsinhMASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
  end
  object dsTKPhatsinh: TDataSource
    DataSet = qryHMPhatsinh
    Left = 216
    Top = 184
  end
  object qryItemLst: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    EditSQL.Strings = (
      'UPDATE ACTICLE_LIST SET'
      '   ISSELECT = :ISSELECT'
      'WHERE'
      '   ACTICLE_ID = :OLD_ACTICLE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACTICLE_ID'
      '     , PACTICLE_ID'
      '     , ACTICLE_NO'
      '     , AGROUP_ID'
      '     , ACTICLE_NAME'
      '     , ACTICLE_LEVEL'
      '     , TKNO'
      '     , TKCO'
      '     , ISSELECT'
      'FROM ACTICLE_LIST')
    FieldOptions = []
    Left = 57
    Top = 212
    object qryItemLstACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Required = True
      Size = 30
    end
    object qryItemLstPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryItemLstACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Required = True
      Size = 15
    end
    object qryItemLstAGROUP_ID: TWideStringField
      FieldName = 'AGROUP_ID'
      Size = 15
    end
    object qryItemLstACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 126
    end
    object qryItemLstACTICLE_LEVEL: TSmallintField
      FieldName = 'ACTICLE_LEVEL'
    end
    object qryItemLstTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryItemLstTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryItemLstISSELECT: TSmallintField
      FieldName = 'ISSELECT'
    end
  end
  object dsAccLst: TDataSource
    DataSet = qryItemLst
    Left = 56
    Top = 240
  end
end
