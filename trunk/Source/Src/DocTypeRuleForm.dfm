object DocTypeRuleFrm: TDocTypeRuleFrm
  Left = 381
  Top = 197
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
    object grdDocTypeRule: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOCRULE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = grdDocTypeRuleKeyDown
      OnMouseUp = grdDocTypeRuleMouseUp
      DataSource = dsDocTypeRule
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdDocTypeRuleDOCRULE_ID: TdxDBGridColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCRULE_ID'
      end
      object grdDocTypeRuleDEBIT_BDV: TdxDBGridPopupColumn
        Caption = 'TK n'#7907' b'#7855't '#273#7847'u v'#7899'i'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_BDV'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDocTypeRuleDEBIT_BDVCloseUp
        Caption_UTF7 = 'TK n+HuM b+Hq8-t +AREepw-u v+Hts-i'
      end
      object grdDocTypeRuleCREDIT_BDV: TdxDBGridPopupColumn
        Caption = 'TK c'#243' b'#7855't '#273#7847'u v'#7899'i'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_BDV'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDocTypeRuleDEBIT_BDVCloseUp
        Caption_UTF7 = 'TK c+APM b+Hq8-t +AREepw-u v+Hts-i'
      end
      object grdDocTypeRuleDOCRULE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCRULE_NOTE'
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
        Control = grdDocTypeRule
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
        Caption = #272'i'#7873'u ki'#7879'n '#273#7883'nh kho'#7843'n d'#249'ng khi '#273#7885'c d'#7919' li'#7879'u t'#7915' Excel'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryDocTypeRule: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'DOCTYPE_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DOCTYPE_RULE'
      'WHERE'
      '   DOCRULE_ID = :OLD_DOCRULE_ID AND'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID')
    EditSQL.Strings = (
      'UPDATE DOCTYPE_RULE SET'
      '   DOCRULE_ID = :DOCRULE_ID, /*PK*/'
      '   DOCTYPE_ID = :DOCTYPE_ID, /*PK*/'
      '   DEBIT_BDV = :DEBIT_BDV,'
      '   CREDIT_BDV = :CREDIT_BDV,'
      '   DOCRULE_NOTE = :DOCRULE_NOTE'
      'WHERE'
      '   DOCRULE_ID = :OLD_DOCRULE_ID AND'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO DOCTYPE_RULE('
      '   DOCRULE_ID, /*PK*/'
      '   DOCTYPE_ID, /*PK*/'
      '   DEBIT_BDV,'
      '   CREDIT_BDV,'
      '   DOCRULE_NOTE)'
      'VALUES ('
      '   :DOCRULE_ID,'
      '   :DOCTYPE_ID,'
      '   :DEBIT_BDV,'
      '   :CREDIT_BDV,'
      '   :DOCRULE_NOTE)')
    KeyLinks.Strings = (
      'DOCTYPE_ID'
      'DOCRULE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryDocTypeRuleBeforeEdit
    BeforeDelete = qryDocTypeRuleBeforeDelete
    BeforeInsert = qryDocTypeRuleBeforeInsert
    AfterInsert = qryDocTypeRuleAfterInsert
    BeforePost = qryDocTypeRuleBeforePost
    OnNewRecord = qryDocTypeRuleNewRecord
    OnPostError = qryDocTypeRulePostError
    OnDeleteError = qryDocTypeRuleDeleteError
    SQL.Strings = (
      'SELECT DOCTYPE_ID'
      '     , DOCRULE_ID'
      '     , DEBIT_BDV'
      '     , CREDIT_BDV'
      '     , DOCRULE_NOTE'
      'FROM DOCTYPE_RULE'
      'where DOCTYPE_ID=:DOCTYPE_ID'
      'Order by DOCRULE_ID')
    FieldOptions = []
    Left = 163
    Top = 52
    object qryDocTypeRuleDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
      Required = True
    end
    object qryDocTypeRuleDOCRULE_ID: TSmallintField
      FieldName = 'DOCRULE_ID'
      Required = True
    end
    object qryDocTypeRuleDEBIT_BDV: TWideStringField
      FieldName = 'DEBIT_BDV'
      Size = 15
    end
    object qryDocTypeRuleCREDIT_BDV: TWideStringField
      FieldName = 'CREDIT_BDV'
      Size = 15
    end
    object qryDocTypeRuleDOCRULE_NOTE: TWideStringField
      FieldName = 'DOCRULE_NOTE'
      Size = 126
    end
  end
  object dsDocTypeRule: TDataSource
    DataSet = qryDocTypeRule
    Left = 163
    Top = 99
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsDocTypeRule
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsDocTypeRule
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsDocTypeRule
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsDocTypeRule
    end
  end
end
