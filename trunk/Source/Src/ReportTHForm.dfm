object ReportTHFrm: TReportTHFrm
  Left = 351
  Top = 131
  Width = 834
  Height = 588
  HelpContext = 15
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
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 826
    Height = 554
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      826
      554)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = ds
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1CHITIEU: TdxDBGridColumn
        Caption = 'Ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 325
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHITIEU'
        Caption_UTF7 = 'Ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1LOAI: TdxDBGridColumn
        Caption = 'Lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAI'
        Caption_UTF7 = 'Lo+HqE-i'
      end
      object dxDBGrid1MANHOM: TdxDBGridColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object dxDBGrid1ISBOLD: TdxDBGridCheckColumn
        Caption = #272#7853'm'
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISBOLD'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = '+ARAerQ-m'
      end
      object dxDBGrid1ISUNDERLINE: TdxDBGridCheckColumn
        Caption = 'G'#7841'ch d'#432#7899'i'
        HeaderAlignment = taCenter
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISUNDERLINE'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'G+HqE-ch d+AbAe2w-i'
      end
      object dxDBGrid1ISMIN: TdxDBGridCheckColumn
        Caption = 'Nh'#7887' nh'#7845't'
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISMIN'
        ValueChecked = '1'
        ValueGrayed = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Nh+Hs8 nh+HqU-t'
      end
      object dxDBGrid1ORDERCALC: TdxDBGridColumn
        Caption = #272#7897' '#432'u ti'#234'n '
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDERCALC'
        Caption_UTF7 = '+ARAe2Q +AbA-u ti+AOo-n '
      end
      object dxDBGrid1MABC: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' BC'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MABC'
        GroupIndex = 0
        Caption_UTF7 = 'M+AOM BC'
      end
      object dxDBGrid1Column11: TdxDBGridMaskColumn
        Caption = 'M'#227' BC'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MABC'
        Caption_UTF7 = 'M+AOM BC'
      end
    end
    object btnDefine: TElPopupButton
      Left = 3
      Top = 526
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7883'n&h ngh'#297'a'
      TabOrder = 1
      OnClick = btnDefineClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 672
      Top = 526
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 2
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 748
      Top = 526
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 3
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = btnDefine
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 580
    Top = 340
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
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
        Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u b'#225'o c'#225'o t'#7893'ng h'#7907'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qry: TIBOQuery
    Params = <>
    DatabaseName = '127.0.0.1:F:\Project\TNXP\D07-XNLS.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_REPORT_TH'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_REPORT_TH SET'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   LOAI = :LOAI,'
      '   MANHOM = :MANHOM,'
      '   KYNAY = :KYNAY,'
      '   KYTRUOC = :KYTRUOC,'
      '   LUYKE = :LUYKE,'
      '   ISBOLD = :ISBOLD,'
      '   ISUNDERLINE = :ISUNDERLINE,'
      '   ISMIN = :ISMIN,'
      '   ORDERCALC = :ORDERCALC,'
      '   MABC = :MABC'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_REPORT_TH('
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   LOAI,'
      '   MANHOM,'
      '   KYNAY,'
      '   KYTRUOC,'
      '   LUYKE,'
      '   ISBOLD,'
      '   ISUNDERLINE,'
      '   ISMIN,'
      '   ORDERCALC,'
      '   MABC)'
      'VALUES ('
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :LOAI,'
      '   :MANHOM,'
      '   :KYNAY,'
      '   :KYTRUOC,'
      '   :LUYKE,'
      '   :ISBOLD,'
      '   :ISUNDERLINE,'
      '   :ISMIN,'
      '   :ORDERCALC,'
      '   :MABC)')
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBeforeEdit
    BeforeDelete = qryBeforeDelete
    BeforeInsert = qryBeforeInsert
    AfterInsert = qryAfterInsert
    BeforePost = qryBeforePost
    OnPostError = qryPostError
    SQL.Strings = (
      'SELECT ID'
      '     , CHITIEU'
      '     , MASO'
      '     , LOAI'
      '     , MANHOM'
      '     , KYNAY'
      '     , KYTRUOC'
      '     , LUYKE'
      '     , ISBOLD'
      '     , ISUNDERLINE'
      '     , ISMIN'
      '     , ORDERCALC'
      '     , MABC'
      'FROM RPT_REPORT_TH'
      'Order by ID')
    FieldOptions = []
    Left = 193
    Top = 108
    object qryID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 126
    end
    object qryMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryISUNDERLINE: TSmallintField
      FieldName = 'ISUNDERLINE'
    end
    object qryISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryORDERCALC: TSmallintField
      FieldName = 'ORDERCALC'
    end
    object qryLOAI: TIBOFloatField
      FieldName = 'LOAI'
    end
    object qryKYNAY: TIBOFloatField
      FieldName = 'KYNAY'
    end
    object qryKYTRUOC: TIBOFloatField
      FieldName = 'KYTRUOC'
    end
    object qryLUYKE: TIBOFloatField
      FieldName = 'LUYKE'
    end
    object qryMABC: TWideStringField
      FieldName = 'MABC'
      Size = 30
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 195
    Top = 126
  end
end
