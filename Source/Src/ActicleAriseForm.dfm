object ActicleAriseFrm: TActicleAriseFrm
  Left = 198
  Top = 116
  Width = 727
  Height = 535
  HelpContext = 21
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
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 719
    Height = 501
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBTreeList1: TdxDBTreeList
      Left = 5
      Top = 5
      Width = 448
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MASO'
      ParentField = 'MACHA'
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxDBTreeList1DblClick
      OnKeyDown = dxDBTreeList1KeyDown
      OnMouseUp = dxDBTreeList1MouseUp
      DataSource = dsItem
      DefaultRowHeight = 21
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnCustomDrawCell = dxDBTreeList1CustomDrawCell
      object dxDBTreeList1KYSO: TdxDBTreeListMaskColumn
        Caption = 'M'#7909'c'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYSO'
        Caption_UTF7 = 'M+HuU-c'
      end
      object dxDBTreeList1MASO: TdxDBTreeListMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBTreeList1TENHM: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n h'#7841'n m'#7909'c'
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENHM'
        Caption_UTF7 = 'T+AOo-n h+HqE-n m+HuU-c'
      end
      object dxDBTreeList1MANHOM: TdxDBTreeListMaskColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object dxDBTreeList1PHATSINH: TdxDBTreeListMaskColumn
        Caption = 'Ph'#225't sinh'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PHATSINH'
        Caption_UTF7 = 'Ph+AOE-t sinh'
      end
      object dxDBTreeList1LUYKE: TdxDBTreeListMaskColumn
        Caption = 'L'#361'y k'#7871
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LUYKE'
        Caption_UTF7 = 'L+AWk-y k+Hr8'
      end
      object dxDBTreeList1ALEVEL: TdxDBTreeListMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALEVEL'
      end
    end
    object btnHelp: TElPopupButton
      Left = 563
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Hi'#7875'n th'#7883' th'#244'ng tin gi'#250'p '#273#7905
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 641
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDateEdit1: TdxDateEdit
      Left = 66
      Top = 475
      Width = 96
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      PopupBorder = pbFrame3D
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object dxDateEdit2: TdxDateEdit
      Left = 212
      Top = 475
      Width = 96
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Alignment = taCenter
      PopupBorder = pbFrame3D
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object ElPopupButton1: TElPopupButton
      Left = 311
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 3
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 389
      Top = 473
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 467
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Chi ti'#7871't'
      TabOrder = 5
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxDBTreeList1
      end
      object locFormGroup4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Xem t'#7915' ng'#224'y'
          Control = dxDateEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = #273#7871'n ng'#224'y'
          Control = dxDateEdit2
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = '&Chi ti'#7871't'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem19: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object locFormItem20: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 488
    Top = 408
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryItem: TIBOQuery
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
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\AOANH.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'maso')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select maso,tenhm,manhom,phatsinh,luyke,macha,kyso,alevel '
      'from sp_bc_itemlist(:tungay,:denngay,:branch_id)')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryItemMASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qryItemTENHM: TWideStringField
      FieldName = 'TENHM'
      Size = 126
    end
    object qryItemMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qryItemPHATSINH: TIBOFloatField
      FieldName = 'PHATSINH'
    end
    object qryItemLUYKE: TIBOFloatField
      FieldName = 'LUYKE'
    end
    object qryItemMACHA: TWideStringField
      FieldName = 'MACHA'
      Size = 30
    end
    object qryItemKYSO: TWideStringField
      FieldName = 'KYSO'
      Size = 15
    end
    object qryItemALEVEL: TSmallintField
      FieldName = 'ALEVEL'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 158
    Top = 140
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
        Caption = 'H'#7841'n m'#7913'c kinh ph'#237', ng'#226'n s'#225'ch ph'#225't sinh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 8
    Top = 24
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 416
    Top = 424
    object dxComponentPrinter1Link1: TdxDBTreeListReportLink
      Active = True
      Caption = 'New Report'
      Component = dxDBTreeList1
      DateTime = 39141.026123043980000000
      DesignerHelpContext = 0
      PrinterPage.Footer = 250
      PrinterPage.Header = 250
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.MinMargins.Bottom = 0
      PrinterPage.MinMargins.Left = 0
      PrinterPage.MinMargins.Right = 0
      PrinterPage.MinMargins.Top = 0
      PrinterPage.PageFooter.CenterTextAlignY = taTop
      PrinterPage.PageFooter.CenterTitle.WideStrings = (
        '')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTextAlignY = taTop
      PrinterPage.PageFooter.LeftTitle.WideStrings = (
        'SSP - Accounting')
      PrinterPage.PageFooter.RightTitle.WideStrings = (
        'SSP-Software')
      PrinterPage.PageHeader.CenterTextAlignY = taBottom
      PrinterPage.PageHeader.CenterTitle.WideStrings = (
        '')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageHeader.LeftTextAlignY = taBottom
      PrinterPage.PageHeader.LeftTitle.WideStrings = (
        'Saigon Software Park')
      PrinterPage.PageHeader.RightTitle.WideStrings = (
        'Trang [Page #]')
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage.ReverseTitlesOnEvenPages = True
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = 'T'#204'NH H'#204'NH PH'#193'T SINH H'#7840'N M'#7912'C KINH PH'#205
      ShrinkToPageWidth = True
      AutoNodesExpand = True
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Times New Roman'
      FooterFont.Style = []
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeFont.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Times New Roman'
      OddFont.Style = []
      Options = [tlpoBands, tlpoHeaders, tlpoFooters, tlpoRowFooters, tlpoPreview, tlpoPreviewGrid, tlpoGrid, tlpoFlatCheckMarks, tlpoSoft3D, tlpoRowFooterGrid, tlpoTreeLines, tlpoExpandButtons]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Times New Roman'
      PreviewFont.Style = []
      RowFooterFont.Charset = DEFAULT_CHARSET
      RowFooterFont.Color = clWindowText
      RowFooterFont.Height = -11
      RowFooterFont.Name = 'Times New Roman'
      RowFooterFont.Style = []
      TreeLineColor = clGrayText
      BuiltInReportLink = True
    end
  end
end
