object frmThuyetminhBCTC_DKKPS: TfrmThuyetminhBCTC_DKKPS
  Left = 495
  Top = 387
  Width = 483
  Height = 346
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Width = 475
    Height = 312
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      475
      312)
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 3
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
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = ds
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1TKNOBDV: TdxDBGridPopupColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNOBDV'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1TKNOBDVCloseUp
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1TKCOBDV: TdxDBGridPopupColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCOBDV'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1TKCOBDVCloseUp
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
      Top = 284
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
      Top = 284
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
      Top = 284
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
      Top = 284
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
      Left = 321
      Top = 284
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
      Left = 397
      Top = 284
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
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
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
    Left = 372
    Top = 44
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
        Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 40
  end
  object ActionList1: TActionList
    Left = 400
    Top = 40
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = ds
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = ds
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = ds
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = ds
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 203
    Top = 42
  end
  object qry: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINHBCTC_KPSDK'
      'WHERE'
      '   ID = :OLD_ID AND'
      '   TKCOBDV = :OLD_TKCOBDV AND'
      '   TKNOBDV = :OLD_TKNOBDV')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINHBCTC_KPSDK SET'
      '   ID = :ID, /*PK*/'
      '   TKCOBDV = :TKCOBDV, /*PK*/'
      '   TKNOBDV = :TKNOBDV, /*PK*/'
      '   HESO = :HESO,'
      '   GHICHU = :GHICHU,'
      '   DTNO = :DTNO,'
      '   DTCO = :DTCO,'
      '   YTNO1 = :YTNO1,'
      '   YTNO2 = :YTNO2,'
      '   YTCO1 = :YTCO1,'
      '   YTCO2 = :YTCO2'
      'WHERE'
      '   ID = :OLD_ID AND'
      '   TKCOBDV = :OLD_TKCOBDV AND'
      '   TKNOBDV = :OLD_TKNOBDV')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINHBCTC_KPSDK('
      '   ID, /*PK*/'
      '   TKCOBDV, /*PK*/'
      '   TKNOBDV, /*PK*/'
      '   HESO,'
      '   GHICHU,'
      '   DTNO,'
      '   DTCO,'
      '   YTNO1,'
      '   YTNO2,'
      '   YTCO1,'
      '   YTCO2)'
      'VALUES ('
      '   :ID,'
      '   :TKCOBDV,'
      '   :TKNOBDV,'
      '   :HESO,'
      '   :GHICHU,'
      '   :DTNO,'
      '   :DTCO,'
      '   :YTNO1,'
      '   :YTNO2,'
      '   :YTCO1,'
      '   :YTCO2)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryBeforeDelete
    AfterInsert = qryAfterInsert
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    OnPostError = qryPostError
    OnDeleteError = qryDeleteError
    DataSource = ThuyetminhBCTCFrm.dsNoidung2
    SQL.Strings = (
      'SELECT ID'
      '     , TKNOBDV'
      '     , TKCOBDV'
      '     , ID||TKNOBDV||TKCOBDV KF'
      '     , HESO'
      '     , GHICHU'
      '     , DTNO'
      '     , DTCO'
      '     , YTNO1'
      '     , YTNO2'
      '     , YTCO1'
      '     , YTCO2'
      'FROM RPT_BANGTHUYETMINHBCTC_KPSDK'
      'where id=:id')
    FieldOptions = []
    Left = 225
    Top = 43
    object qryID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryTKNOBDV: TWideStringField
      FieldName = 'TKNOBDV'
      Required = True
      Size = 15
    end
    object qryTKCOBDV: TWideStringField
      FieldName = 'TKCOBDV'
      Required = True
      Size = 15
    end
    object qryKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 36
    end
    object qryGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 126
    end
    object qryHESO: TIBOFloatField
      FieldName = 'HESO'
    end
  end
end
