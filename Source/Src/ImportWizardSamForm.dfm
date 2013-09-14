object ImportWizardFrm: TImportWizardFrm
  Left = 248
  Top = 198
  Width = 598
  Height = 444
  Caption = 'Import Wizard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ElPanel1: TElPanel
    Left = 0
    Top = 384
    Width = 590
    Height = 26
    Align = alBottom
    MouseCapture = False
    TabOrder = 0
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object btnSkip: TElPopupButton
      Left = 515
      Top = 1
      Width = 74
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Close'
      TabOrder = 0
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSkipClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnNext: TElPopupButton
      Left = 367
      Top = 1
      Width = 74
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Read files'
      TabOrder = 1
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNextClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnBack: TElPopupButton
      Left = 293
      Top = 1
      Width = 74
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Back'
      Enabled = False
      TabOrder = 2
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnFinish: TElPopupButton
      Left = 441
      Top = 1
      Width = 74
      Height = 24
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Import'
      TabOrder = 3
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFinishClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object ElPanel2: TElPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 384
    Align = alClient
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 588
      Height = 382
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dxLayoutWebLookAndFeel1
      object ElRadioButton1: TElRadioButton
        Left = 14
        Top = 28
        Width = 78
        Height = 17
        Cursor = crDefault
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Import SOC'
        TabOrder = 0
        Color = clWindow
        ParentColor = False
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object ElRadioButton2: TElRadioButton
        Left = 93
        Top = 28
        Width = 79
        Height = 17
        Cursor = crDefault
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Import COC'
        TabOrder = 1
        Color = clWindow
        ParentColor = False
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object edtHeader: TdxButtonEdit
        Left = 67
        Top = 78
        Width = 121
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbsFlat
        Style.ButtonStyle = btsFlat
        TabOrder = 2
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = edtHeaderButtonClick
        ExistButtons = True
      end
      object edtQty: TdxButtonEdit
        Left = 67
        Top = 100
        Width = 310
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbsFlat
        Style.ButtonStyle = btsFlat
        TabOrder = 3
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = edtQtyButtonClick
        ExistButtons = True
      end
      object edtCredit: TdxButtonEdit
        Left = 67
        Top = 144
        Width = 310
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbsFlat
        Style.ButtonStyle = btsFlat
        TabOrder = 5
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = edtCreditButtonClick
        ExistButtons = True
      end
      object edtDebit: TdxButtonEdit
        Left = 67
        Top = 122
        Width = 310
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbsFlat
        Style.ButtonStyle = btsFlat
        TabOrder = 4
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = edtDebitButtonClick
        ExistButtons = True
      end
      object ProgressBar: TProgressBar
        Left = 14
        Top = 220
        Width = 573
        Height = 21
        Min = 1
        Max = 4
        Position = 1
        Step = 1
        TabOrder = 8
      end
      object grdImport: TdxDBGrid
        Left = 5
        Top = 251
        Width = 447
        Height = 23
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'DOC_ID'
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryType = cstCount
              end>
            Name = 'grdReportSummaryGroup2'
          end>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        DataSource = ds
        DefaultRowHeight = 20
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth]
        ShowRowFooter = True
        object grdImportDOC_NUM: TdxDBGridMaskColumn
          Caption = 'Number'
          HeaderAlignment = taCenter
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DOC_NUM'
        end
        object grdImportDEBIT_ACC_ID: TdxDBGridMaskColumn
          Caption = 'Debit Account'
          HeaderAlignment = taCenter
          Width = 153
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CREDIT_ACC_ID'
        end
        object grdImportCREDIT_ACC_ID: TdxDBGridMaskColumn
          Caption = 'Credit Account'
          HeaderAlignment = taCenter
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CREDIT_ACC_ID'
        end
        object grdImportENTRY_VALUE: TdxDBGridMaskColumn
          Caption = 'Value'
          HeaderAlignment = taCenter
          Width = 185
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ENTRY_VALUE'
        end
      end
      object dxCalcEdit1: TdxCalcEdit
        Left = 67
        Top = 166
        Width = 121
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbsFlat
        Style.ButtonStyle = btsFlat
        TabOrder = 6
        Text = '0'
        PopupBorder = pbFlat
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group1: TdxLayoutGroup
          Caption = 'Import Type'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'ElRadioButton1'
            ShowCaption = False
            Control = ElRadioButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'ElRadioButton2'
            ShowCaption = False
            Control = ElRadioButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          Caption = 'Import Files'
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'Header'
            Control = edtHeader
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'Quantity'
            Control = edtQty
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item6: TdxLayoutItem
              Caption = 'Debit'
              Control = edtDebit
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              Caption = 'Credit'
              Control = edtCredit
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              Caption = 'Rate(USD)'
              Control = dxCalcEdit1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object locProgress: TdxLayoutGroup
          Caption = 'Progress'
          object dxLayoutControl1Item7: TdxLayoutItem
            Control = ProgressBar
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = grdImport
        end
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        Caption = 'New Group'
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 128
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.CaptionOptions.Color = clMenuBar
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 96
    Top = 48
  end
  object qry: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rate'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '    DOC_ID ,'
      '    DOC_NUM ,'
      '    DOC_CODE ,'
      '    COM_ID ,'
      '    LINK_ID ,'
      '    DEBIT_ACC_ID ,'
      '    CREDIT_ACC_ID ,'
      '    ENTRY_VALUE ,'
      '    ENTRY_NOTE ,'
      '    CREDIT_OBJ ,'
      '    CREDIT_DETAIL ,'
      '    CREDIT_DETAIL_1 ,'
      '    DEBIT_OBJ ,'
      '    DEBIT_DETAIL ,'
      '    DEBIT_DETAIL_1 ,'
      '    DOC_DATE ,'
      '    PERIOD_ID ,'
      '    SSP_DEBIT_ACC ,'
      '    SSP_CREDIT_ACC'
      'FROM sam_sp_import_doc_entry(:branch_id,:rate)')
    FieldOptions = []
    Left = 193
    Top = 57
    object qryDOC_ID: TStringField
      FieldName = 'DOC_ID'
      Size = 90
    end
    object qryDOC_NUM: TSmallintField
      FieldName = 'DOC_NUM'
    end
    object qryDOC_CODE: TStringField
      FieldName = 'DOC_CODE'
      Size = 90
    end
    object qryCOM_ID: TStringField
      FieldName = 'COM_ID'
      Size = 90
    end
    object qryLINK_ID: TStringField
      FieldName = 'LINK_ID'
      Size = 90
    end
    object qryDEBIT_ACC_ID: TStringField
      FieldName = 'DEBIT_ACC_ID'
      Size = 90
    end
    object qryCREDIT_ACC_ID: TStringField
      FieldName = 'CREDIT_ACC_ID'
      Size = 90
    end
    object qryENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryENTRY_NOTE: TStringField
      FieldName = 'ENTRY_NOTE'
      Size = 126
    end
    object qryCREDIT_OBJ: TStringField
      FieldName = 'CREDIT_OBJ'
      Size = 90
    end
    object qryCREDIT_DETAIL: TStringField
      FieldName = 'CREDIT_DETAIL'
      Size = 90
    end
    object qryCREDIT_DETAIL_1: TStringField
      FieldName = 'CREDIT_DETAIL_1'
      Size = 90
    end
    object qryDEBIT_OBJ: TStringField
      FieldName = 'DEBIT_OBJ'
      Size = 90
    end
    object qryDEBIT_DETAIL: TStringField
      FieldName = 'DEBIT_DETAIL'
      Size = 90
    end
    object qryDEBIT_DETAIL_1: TStringField
      FieldName = 'DEBIT_DETAIL_1'
      Size = 90
    end
    object qryDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
    end
    object qryPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qrySSP_DEBIT_ACC: TStringField
      FieldName = 'SSP_DEBIT_ACC'
      Size = 30
    end
    object qrySSP_CREDIT_ACC: TStringField
      FieldName = 'SSP_CREDIT_ACC'
      Size = 30
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 225
    Top = 57
  end
end
