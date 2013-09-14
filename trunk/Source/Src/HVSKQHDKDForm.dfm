object HVSKQHDKDFrm: THVSKQHDKDFrm
  Left = 105
  Top = 45
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
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1CHITIEU: TdxDBGridColumn
        Caption = 'Ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 344
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHITIEU'
        Caption_UTF7 = 'Ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1LOAI: TdxDBGridColumn
        Caption = 'Lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAI'
        Caption_UTF7 = 'Lo+HqE-i'
      end
      object dxDBGrid1MANHOM: TdxDBGridColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object dxDBGrid1VANPHONG: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VANPHONG'
      end
      object dxDBGrid1LIKSHO: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LIKSHO'
      end
      object dxDBGrid1BAOBI: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAOBI'
      end
      object dxDBGrid1HUONGVIET: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HUONGVIET'
      end
      object dxDBGrid1ISBOLD: TdxDBGridCheckColumn
        Caption = #272#7853'm'
        HeaderAlignment = taCenter
        Width = 60
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
        Width = 60
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
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISMIN'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Nh+Hs8 nh+HqU-t'
      end
      object dxDBGrid1ORDERCALC: TdxDBGridColumn
        Caption = 'Th'#7913' t'#7921
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDERCALC'
        Caption_UTF7 = 'Th+Huk t+HvE'
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
        Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u b'#7843'ng K'#7871't qu'#7843' ho'#7841't '#273#7897'ng kinh doanh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qry: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_KQKD_HVS'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_KQKD_HVS SET'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   LOAI = :LOAI,'
      '   MANHOM = :MANHOM,'
      '   VANPHONG = :VANPHONG,'
      '   LIKSHO = :LIKSHO,'
      '   BAOBI = :BAOBI,'
      '   HUONGVIET = :HUONGVIET,'
      '   ISBOLD = :ISBOLD,'
      '   ISUNDERLINE = :ISUNDERLINE,'
      '   ISMIN = :ISMIN,'
      '   ORDERCALC = :ORDERCALC'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_KQKD_HVS('
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   LOAI,'
      '   MANHOM,'
      '   VANPHONG,'
      '   LIKSHO,'
      '   BAOBI,'
      '   HUONGVIET,'
      '   ISBOLD,'
      '   ISUNDERLINE,'
      '   ISMIN,'
      '   ORDERCALC)'
      'VALUES ('
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :LOAI,'
      '   :MANHOM,'
      '   :VANPHONG,'
      '   :LIKSHO,'
      '   :BAOBI,'
      '   :HUONGVIET,'
      '   :ISBOLD,'
      '   :ISUNDERLINE,'
      '   :ISMIN,'
      '   :ORDERCALC)')
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
      '     , VANPHONG'
      '     , LIKSHO'
      '     , BAOBI'
      '     , HUONGVIET'
      '     , ISBOLD'
      '     , ISUNDERLINE'
      '     , ISMIN'
      '     , ORDERCALC'
      'FROM RPT_KQKD_HVS'
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
    object qryVANPHONG: TIBOFloatField
      FieldName = 'VANPHONG'
    end
    object qryLIKSHO: TIBOFloatField
      FieldName = 'LIKSHO'
    end
    object qryBAOBI: TIBOFloatField
      FieldName = 'BAOBI'
    end
    object qryHUONGVIET: TIBOFloatField
      FieldName = 'HUONGVIET'
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
  end
  object ds: TDataSource
    DataSet = qry
    Left = 195
    Top = 126
  end
end
