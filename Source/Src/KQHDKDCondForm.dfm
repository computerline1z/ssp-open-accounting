object KQHDKDCondFrm: TKQHDKDCondFrm
  Left = 256
  Top = 246
  HelpContext = 17
  BorderStyle = bsDialog
  ClientHeight = 307
  ClientWidth = 478
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
    Width = 478
    Height = 307
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      478
      307)
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
      KeyField = 'KF'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsLCTTCond
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1TKNOBDV: TdxDBGridColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNOBDV'
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1TKCOBDV: TdxDBGridColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCOBDV'
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBGrid1HESO: TdxDBGridCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HESO'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1GHICHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 270
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 279
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
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 79
      Top = 279
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 165
      Top = 279
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 241
      Top = 279
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 324
      Top = 279
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 400
      Top = 279
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
      TabOrder = 6
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
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
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
    Left = 364
    Top = 4
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
        Caption = #272'i'#7873'u ki'#7879'n B'#225'o c'#225'o K'#7871't qu'#7843' ho'#7841't '#273#7897'ng kinh doanh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryLCTTCond: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_KQHDKD_CONDITION'
      'WHERE'
      '   ID = :OLD_ID AND'
      '   TKCOBDV = :OLD_TKCOBDV AND'
      '   TKNOBDV = :OLD_TKNOBDV')
    EditSQL.Strings = (
      'UPDATE RPT_KQHDKD_CONDITION SET'
      '   ID = :ID, /*PK*/'
      '   TKCOBDV = :TKCOBDV, /*PK*/'
      '   TKNOBDV = :TKNOBDV, /*PK*/'
      '   GHICHU = :GHICHU,'
      '   HESO = :HESO'
      'WHERE'
      '   ID = :OLD_ID AND'
      '   TKCOBDV = :OLD_TKCOBDV AND'
      '   TKNOBDV = :OLD_TKNOBDV')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_KQHDKD_CONDITION('
      '   ID, /*PK*/'
      '   TKCOBDV, /*PK*/'
      '   TKNOBDV, /*PK*/'
      '   GHICHU,'
      '   HESO)'
      'VALUES ('
      '   :ID,'
      '   :TKCOBDV,'
      '   :TKNOBDV,'
      '   :GHICHU,'
      '   :HESO)')
    KeyLinks.Strings = (
      'ID'
      'TKNOBDV'
      'TKCOBDV')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLCTTCondBeforeDelete
    AfterInsert = qryLCTTCondAfterInsert
    BeforePost = qryLCTTCondBeforePost
    OnNewRecord = qryLCTTCondNewRecord
    OnPostError = qryLCTTCondPostError
    OnDeleteError = qryLCTTCondDeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , TKNOBDV'
      '     , TKCOBDV'
      '     , ID||TKNOBDV||TKCOBDV KF'
      '     , GHICHU'
      '     , HESO'
      ''
      'FROM RPT_KQHDKD_CONDITION'
      'where ID=:ID')
    FieldOptions = []
    Left = 163
    Top = 52
    object qryLCTTCondID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryLCTTCondTKNOBDV: TWideStringField
      FieldName = 'TKNOBDV'
      Required = True
      Size = 15
    end
    object qryLCTTCondTKCOBDV: TWideStringField
      FieldName = 'TKCOBDV'
      Required = True
      Size = 15
    end
    object qryLCTTCondGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 126
    end
    object qryLCTTCondHESO: TIBOFloatField
      FieldName = 'HESO'
    end
    object qryLCTTCondKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
  object dsLCTTCond: TDataSource
    DataSet = qryLCTTCond
    Left = 163
    Top = 99
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsLCTTCond
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsLCTTCond
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsLCTTCond
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsLCTTCond
    end
  end
end
