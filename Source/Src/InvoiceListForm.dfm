object InvoiceListFrm: TInvoiceListFrm
  Left = 207
  Top = 135
  Width = 733
  Height = 513
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 725
    Height = 479
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnDelete: TElPopupButton
      Left = 153
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 3
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHelp: TElPopupButton
      Left = 573
      Top = 453
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
      Left = 649
      Top = 453
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
      KeyField = 'SERIAL_NO'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsInvoiceList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object dxDBGrid1ENTRY_ID: TdxDBGridColumn
        Caption = 'Stt'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_ID'
      end
      object dxDBGrid1SERIAL_NO: TdxDBGridMaskColumn
        Caption = 'S'#7889' S'#234'ri'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERIAL_NO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 H'#243'a '#273#417'n'
        Caption_UTF7 = 'S+HtE S+AOo-ri'
        SummaryFooterFormat_UTF7 = '#,0 H+APM-a +AREBoQ-n'
      end
      object dxDBGrid1INVOICE_NO: TdxDBGridMaskColumn
        Caption = 'S'#7889' h'#243'a '#273#417'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_NO'
        Caption_UTF7 = 'S+HtE h+APM-a +AREBoQ-n'
      end
      object dxDBGrid1INVOICE_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_DATE'
        Caption_UTF7 = 'Ng+AOA-y'
      end
      object dxDBGrid1INVOICE_VAT: TdxDBGridMaskColumn
        Caption = '%VAT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_VAT'
      end
      object dxDBGrid1CUSNAME: TdxDBGridMaskColumn
        Caption = 'Kh'#225'ch h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSNAME'
        Caption_UTF7 = 'Kh+AOE-ch h+AOA-ng'
      end
      object dxDBGrid1ITEM_NAME: TdxDBGridMaskColumn
        Caption = 'M'#7863't h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM_NAME'
        Caption_UTF7 = 'M+Hrc-t h+AOA-ng'
      end
      object dxDBGrid1NOTTAX_VALUE: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTTAX_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Ti+HsE-n h+AOA-ng'
      end
      object dxDBGrid1TAX_VALUE: TdxDBGridMaskColumn
        Caption = 'Thu'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAX_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Thu+Hr8'
      end
    end
    object btnIns: TElPopupButton
      Left = 1
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnEdit: TElPopupButton
      Left = 77
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&S'#7917'a'
      TabOrder = 2
      OnClick = btnEditClick
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
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnEdit
          ControlOptions.ShowBorder = False
        end
        object lciIns: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnDelete
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
  object DlgSave: TSaveDialog
    Filter = 
      'Excel Files (*.xls)|*.xls|HTML Files (*.htm, *.html)|*.html; *.h' +
      'tm |XML Files (*.xml)|*.xml'
    Left = 356
    Top = 72
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
        Caption = 'Danh s'#225'ch c'#225'c h'#243'a '#273#417'n t'#224'i ch'#237'nh trong ch'#7913'ng t'#7915' '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ActionList1: TActionList
    Left = 264
    Top = 32
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
    end
  end
end
