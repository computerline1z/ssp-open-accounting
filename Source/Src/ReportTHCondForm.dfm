object ReportTHCondFrm: TReportTHCondFrm
  Left = 319
  Top = 150
  HelpContext = 17
  BorderStyle = bsDialog
  ClientHeight = 559
  ClientWidth = 884
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
    Width = 884
    Height = 559
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      884
      559)
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
      OnEditing = dxDBGrid1Editing
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1TKNOBDV: TdxDBGridPopupColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNOBDV'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1TKNOBDVCloseUp
        OnInitPopup = dxDBGrid1TKNOBDVInitPopup
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1DEBIT_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' n'#7907
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DEBIT_OBJCloseUp
        OnPopup = dxDBGrid1DEBIT_OBJPopup
        Caption_UTF7 = 'M+AOM n+HuM'
      end
      object dxDBGrid1DEBIT_TYPE: TdxDBGridPopupColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_TYPE'
        PopupFormBorderStyle = pbsSimple
      end
      object dxDBGrid1DEBIT_DETAIL: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889' n'#7907
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DETAIL'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DEBIT_DETAILCloseUp
        Caption_UTF7 = 'Y+Hr8-u t+HtE n+HuM'
      end
      object dxDBGrid1DEBIT_DTYPE: TdxDBGridPopupColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DTYPE'
        PopupFormBorderStyle = pbsSimple
      end
      object dxDBGrid1DEBIT_DETAIL_1: TdxDBGridPopupColumn
        Caption = 'YT n'#7907' 2'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DETAIL_1'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DEBIT_DETAIL_1CloseUp
        Caption_UTF7 = 'YT n+HuM 2'
      end
      object dxDBGrid1TKCOBDV: TdxDBGridPopupColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCOBDV'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1TKCOBDVCloseUp
        OnInitPopup = dxDBGrid1TKCOBDVInitPopup
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBGrid1DEBIT_DTYPE_1: TdxDBGridPopupColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DTYPE_1'
        PopupFormBorderStyle = pbsSimple
      end
      object dxDBGrid1CREDIT_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' c'#243
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        OnCloseUp = dxDBGrid1CREDIT_OBJCloseUp
        OnPopup = dxDBGrid1CREDIT_OBJPopup
        Caption_UTF7 = 'M+AOM c+APM'
      end
      object dxDBGrid1CREDIT_TYPE: TdxDBGridPopupColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_TYPE'
        PopupFormBorderStyle = pbsSimple
      end
      object dxDBGrid1CREDIT_DETAIL: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889' c'#243
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DETAIL'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1CREDIT_DETAILCloseUp
        Caption_UTF7 = 'Y+Hr8-u t+HtE c+APM'
      end
      object dxDBGrid1CREDIT_DTYPE: TdxDBGridPopupColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DTYPE'
        PopupFormBorderStyle = pbsSimple
      end
      object dxDBGrid1CREDIT_DETAIL_1: TdxDBGridPopupColumn
        Caption = 'YT c'#243' 2'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DETAIL_1'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1CREDIT_DETAIL_1CloseUp
        Caption_UTF7 = 'YT c+APM 2'
      end
      object dxDBGrid1CREDIT_DTYPE_1: TdxDBGridPopupColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DTYPE_1'
        PopupFormBorderStyle = pbsSimple
      end
      object dxDBGrid1HESO: TdxDBGridCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HESO'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1GHICHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 531
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
      Top = 531
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
      Top = 531
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
      Top = 531
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
      Left = 730
      Top = 531
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
      Left = 806
      Top = 531
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
    Left = 244
    Top = 112
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
        Caption = #272'i'#7873'u ki'#7879'n B'#225'o c'#225'o t'#7893'ng h'#7907'p'
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
    DatabaseName = '127.0.0.1:F:\Project\TNXP\D07-XNLS.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_REPORT_TH_DK'
      'WHERE'
      '   ID = :OLD_ID AND'
      '   STT = :OLD_STT')
    EditSQL.Strings = (
      'UPDATE RPT_REPORT_TH_DK SET'
      '   ID = :ID, /*PK*/'
      '   STT = :STT, /*PK*/'
      '   TKNOBDV = :TKNOBDV,'
      '   TKCOBDV = :TKCOBDV,'
      '   GHICHU = :GHICHU,'
      '   HESO = :HESO,'
      '   DEBIT_OBJ = :DEBIT_OBJ,'
      '   DEBIT_TYPE = :DEBIT_TYPE,'
      '   DEBIT_DETAIL = :DEBIT_DETAIL,'
      '   DEBIT_DTYPE = :DEBIT_DTYPE,'
      '   DEBIT_DETAIL_1 = :DEBIT_DETAIL_1,'
      '   DEBIT_DTYPE_1 = :DEBIT_DTYPE_1,'
      '   CREDIT_OBJ = :CREDIT_OBJ,'
      '   CREDIT_TYPE = :CREDIT_TYPE,'
      '   CREDIT_DETAIL = :CREDIT_DETAIL,'
      '   CREDIT_DTYPE = :CREDIT_DTYPE,'
      '   CREDIT_DETAIL_1 = :CREDIT_DETAIL_1,'
      '   CREDIT_DTYPE_1 = :CREDIT_DTYPE_1'
      'WHERE'
      '   ID = :OLD_ID AND'
      '   STT = :OLD_STT')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_REPORT_TH_DK('
      '   ID, /*PK*/'
      '   STT, /*PK*/'
      '   TKNOBDV,'
      '   TKCOBDV,'
      '   GHICHU,'
      '   HESO,'
      '   DEBIT_OBJ,'
      '   DEBIT_TYPE,'
      '   DEBIT_DETAIL,'
      '   DEBIT_DTYPE,'
      '   DEBIT_DETAIL_1,'
      '   DEBIT_DTYPE_1,'
      '   CREDIT_OBJ,'
      '   CREDIT_TYPE,'
      '   CREDIT_DETAIL,'
      '   CREDIT_DTYPE,'
      '   CREDIT_DETAIL_1,'
      '   CREDIT_DTYPE_1)'
      'VALUES ('
      '   :ID,'
      '   :STT,'
      '   :TKNOBDV,'
      '   :TKCOBDV,'
      '   :GHICHU,'
      '   :HESO,'
      '   :DEBIT_OBJ,'
      '   :DEBIT_TYPE,'
      '   :DEBIT_DETAIL,'
      '   :DEBIT_DTYPE,'
      '   :DEBIT_DETAIL_1,'
      '   :DEBIT_DTYPE_1,'
      '   :CREDIT_OBJ,'
      '   :CREDIT_TYPE,'
      '   :CREDIT_DETAIL,'
      '   :CREDIT_DTYPE,'
      '   :CREDIT_DETAIL_1,'
      '   :CREDIT_DTYPE_1)')
    KeyLinks.Strings = (
      'ID'
      'STT')
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
      'SELECT STT'
      '     ,ID'
      '     , TKNOBDV'
      '     , TKCOBDV'
      '     , ID||STT KF'
      '     , GHICHU'
      '     , HESO'
      ',DEBIT_OBJ'
      ',DEBIT_TYPE'
      ',DEBIT_DETAIL'
      ',DEBIT_DTYPE'
      ',DEBIT_DETAIL_1'
      ',DEBIT_DTYPE_1'
      ',CREDIT_OBJ'
      ',CREDIT_TYPE'
      ',CREDIT_DETAIL'
      ',CREDIT_DTYPE'
      ',CREDIT_DETAIL_1'
      ',CREDIT_DTYPE_1'
      'FROM RPT_REPORT_TH_DK'
      'where ID=:ID')
    FieldOptions = []
    Left = 163
    Top = 64
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
    object qryLCTTCondKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 48
    end
    object qryLCTTCondGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 126
    end
    object qryLCTTCondHESO: TIBOFloatField
      FieldName = 'HESO'
    end
    object qryLCTTCondDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Required = True
      Size = 30
    end
    object qryLCTTCondDEBIT_TYPE: TSmallintField
      FieldName = 'DEBIT_TYPE'
    end
    object qryLCTTCondDEBIT_DETAIL: TWideStringField
      FieldName = 'DEBIT_DETAIL'
      Size = 30
    end
    object qryLCTTCondDEBIT_DTYPE: TSmallintField
      FieldName = 'DEBIT_DTYPE'
    end
    object qryLCTTCondDEBIT_DETAIL_1: TWideStringField
      FieldName = 'DEBIT_DETAIL_1'
      Size = 30
    end
    object qryLCTTCondDEBIT_DTYPE_1: TSmallintField
      FieldName = 'DEBIT_DTYPE_1'
    end
    object qryLCTTCondCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      Required = True
      Size = 30
    end
    object qryLCTTCondCREDIT_TYPE: TSmallintField
      FieldName = 'CREDIT_TYPE'
    end
    object qryLCTTCondCREDIT_DETAIL: TWideStringField
      FieldName = 'CREDIT_DETAIL'
      Size = 30
    end
    object qryLCTTCondCREDIT_DTYPE: TSmallintField
      FieldName = 'CREDIT_DTYPE'
    end
    object qryLCTTCondCREDIT_DETAIL_1: TWideStringField
      FieldName = 'CREDIT_DETAIL_1'
      Size = 30
    end
    object qryLCTTCondCREDIT_DTYPE_1: TSmallintField
      FieldName = 'CREDIT_DTYPE_1'
    end
    object qryLCTTCondSTT: TIntegerField
      FieldName = 'STT'
      Required = True
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
  object qryObjectList: TIBOQuery
    Params = <>
    DatabaseName = '127.0.0.1:F:\Project\TNXP\D07-XNLS.gdb'
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLCTTCondBeforeDelete
    AfterInsert = qryLCTTCondAfterInsert
    BeforePost = qryLCTTCondBeforePost
    OnNewRecord = qryLCTTCondNewRecord
    OnPostError = qryLCTTCondPostError
    OnDeleteError = qryLCTTCondDeleteError
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , o.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , o.OBJGRP_ID'
      '     , OBJGRP_NAME'
      '     , SHORT_NAME'
      'FROM OBJECT_LIST o '
      'left JOIN OBJECT_GROUP g on  g.OBJGRP_ID = o.OBJGRP_ID'
      'left JOIN OBJECT_TYPE t on  t.Otype_ID = o.Otype_ID'
      'order by o.Otype_ID,o.OBJGRP_ID,o.OBJECT_ID')
    FieldOptions = []
    Left = 199
    Top = 64
    object qryObjectListOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryObjectListOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryObjectListOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryObjectListOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
    object qryObjectListOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryObjectListSHORT_NAME: TWideStringField
      FieldName = 'SHORT_NAME'
      Size = 30
    end
  end
  object dsObjectList: TDataSource
    DataSet = qryObjectList
    Left = 199
    Top = 99
  end
end
