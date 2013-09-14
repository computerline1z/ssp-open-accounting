object FrmDefRptKQKD: TFrmDefRptKQKD
  Left = 97
  Top = 123
  Width = 716
  Height = 509
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
    Width = 708
    Height = 475
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      708
      475)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
          Caption = 'Ch'#7881' ti'#234'u'
          Width = 251
        end
        item
          Caption = 'K'#7923' n'#224'y'
          Width = 259
        end
        item
          Caption = 'L'#361'y k'#7871' t'#7915' '#273#7847'u n'#259'm'
          Width = 176
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsDefKQKD
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridColumn
        Caption = 'STT'
        HeaderAlignment = taCenter
        Visible = False
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1CHITIEU: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        TabStop = False
        Width = 251
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHITIEU'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 559
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1LUYKE: TdxDBGridColumn
        Caption = 'L'#361'y k'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 2
        RowIndex = 0
        FieldName = 'LUYKE'
        Caption_UTF7 = 'L+AWk-y k+Hr8'
      end
      object dxDBGrid1LOAICHITIEU: TdxDBGridColumn
        Caption = 'Lo'#7841'i'
        HeaderAlignment = taCenter
        Visible = False
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAICHITIEU'
        Caption_UTF7 = 'Lo+HqE-i'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Caption = 'C'#7897't 1'
        HeaderAlignment = taCenter
        Width = 111
        BandIndex = 1
        RowIndex = 0
        FieldName = 'COL1'
        Caption_UTF7 = 'C+Htk-t 1'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Caption = 'C'#7897't 2'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 1
        RowIndex = 0
        FieldName = 'COL2'
        Caption_UTF7 = 'C+Htk-t 2'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = '%'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 1
        RowIndex = 0
        FieldName = 'COL3'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = '%'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 2
        RowIndex = 0
        FieldName = 'PHANTRAM'
      end
    end
    object btnDefine: TElPopupButton
      Left = 3
      Top = 447
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
      Left = 554
      Top = 447
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
      Left = 630
      Top = 447
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
        Caption = 'B'#7843'ng k'#7871't qu'#7843' kinh doanh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 576
    Top = 304
  end
  object qrDefKQKD: TIBOQuery
    Params = <>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_KQKD'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_KQKD SET'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   COL1 = :COL1,'
      '   COL2 = :COL2,'
      '   COL3 = :COL3,'
      '   LUYKE = :LUYKE,'
      '   PHANTRAM_LUYKE = :PHANTRAM_LUYKE,'
      '   LOAICHITIEU = :LOAICHITIEU'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_KQKD('
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   COL1,'
      '   COL2,'
      '   COL3,'
      '   LUYKE,'
      '   PHANTRAM_LUYKE,'
      '   LOAICHITIEU)'
      'VALUES ('
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :COL1,'
      '   :COL2,'
      '   :COL3,'
      '   :LUYKE,'
      '   :PHANTRAM_LUYKE,'
      '   :LOAICHITIEU)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '       ID'
      '     , CHITIEU'
      '     , MASO'
      '     , COL1'
      '     , COL2'
      '     , COL3'
      '     , LUYKE'
      '     , PHANTRAM_LUYKE'
      '     , LOAICHITIEU'
      'FROM RPT_KQKD'
      'ORDER BY ID')
    FieldOptions = []
    Left = 48
    Top = 96
  end
  object dsDefKQKD: TDataSource
    DataSet = qrDefKQKD
    Left = 80
    Top = 104
  end
end
