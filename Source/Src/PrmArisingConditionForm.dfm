object PrmArisingConditionFrm: TPrmArisingConditionFrm
  Left = 156
  Top = 164
  HelpContext = 17
  BorderStyle = bsDialog
  ClientHeight = 418
  ClientWidth = 635
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
    Width = 635
    Height = 418
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      635
      418)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
          Width = 32
        end
        item
          Caption = 'B'#234'n n'#7907
          Width = 211
        end
        item
          Caption = 'B'#234'n c'#243
          Width = 217
        end
        item
          Caption = 'H'#7879' s'#7889
          Width = 153
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'CONDITION_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsParamCondition
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1CONDITION_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONDITION_ID'
      end
      object dxDBGrid1DBEGINWITH: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DBEGINWITH'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DBEGINWITHCloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object dxDBGrid1DBEGINOBJECT: TdxDBGridMaskColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DBEGINOBJECT'
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object dxDBGrid1DBEGINFACTOR: TdxDBGridMaskColumn
        Caption = 'Y'#7871'u t'#7889
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DBEGINFACTOR'
        Caption_UTF7 = 'Y+Hr8-u t+HtE'
      end
      object dxDBGrid1CBEGINWITH: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CBEGINWITH'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DBEGINWITHCloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object dxDBGrid1CBEGINOBJECT: TdxDBGridMaskColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CBEGINOBJECT'
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object dxDBGrid1CBEGINFACTOR: TdxDBGridMaskColumn
        Caption = 'Y'#7871'u t'#7889
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 2
        RowIndex = 0
        FieldName = 'CBEGINFACTOR'
        Caption_UTF7 = 'Y+Hr8-u t+HtE'
      end
      object dxDBGrid1COEFFICIENT: TdxDBGridCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 3
        RowIndex = 0
        FieldName = 'COEFFICIENT'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1PARAM_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 3
        RowIndex = 0
        FieldName = 'PARAM_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 390
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
      Top = 390
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
      Top = 390
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
      Top = 390
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
      Left = 481
      Top = 390
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
      Left = 557
      Top = 390
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
    Left = 348
    Top = 100
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
        Caption = #272'i'#7873'u ki'#7879'n d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryParamCondition: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PARAM_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM PRMARSING_CONDITION'
      'WHERE'
      '   CONDITION_ID = :OLD_CONDITION_ID AND'
      '   PARAM_ID = :OLD_PARAM_ID')
    EditSQL.Strings = (
      'UPDATE PRMARSING_CONDITION SET'
      '   CONDITION_ID = :CONDITION_ID, /*PK*/'
      '   PARAM_ID = :PARAM_ID, /*PK*/'
      '   DBEGINWITH = :DBEGINWITH,'
      '   CBEGINWITH = :CBEGINWITH,'
      '   COEFFICIENT = :COEFFICIENT,'
      '   PARAM_NOTE = :PARAM_NOTE,'
      '   DBEGINOBJECT = :DBEGINOBJECT,'
      '   DBEGINFACTOR = :DBEGINFACTOR,'
      '   CBEGINOBJECT = :CBEGINOBJECT,'
      '   CBEGINFACTOR = :CBEGINFACTOR'
      'WHERE'
      '   CONDITION_ID = :OLD_CONDITION_ID AND'
      '   PARAM_ID = :OLD_PARAM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO PRMARSING_CONDITION('
      '   CONDITION_ID, /*PK*/'
      '   PARAM_ID, /*PK*/'
      '   DBEGINWITH,'
      '   CBEGINWITH,'
      '   COEFFICIENT,'
      '   PARAM_NOTE,'
      '   DBEGINOBJECT,'
      '   DBEGINFACTOR,'
      '   CBEGINOBJECT,'
      '   CBEGINFACTOR)'
      'VALUES ('
      '   :CONDITION_ID,'
      '   :PARAM_ID,'
      '   :DBEGINWITH,'
      '   :CBEGINWITH,'
      '   :COEFFICIENT,'
      '   :PARAM_NOTE,'
      '   :DBEGINOBJECT,'
      '   :DBEGINFACTOR,'
      '   :CBEGINOBJECT,'
      '   :CBEGINFACTOR)')
    KeyLinks.Strings = (
      'PARAM_ID'
      'DBEGINWITH'
      'CBEGINWITH')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryParamConditionBeforeEdit
    BeforeDelete = qryParamConditionBeforeDelete
    BeforeInsert = qryParamConditionBeforeInsert
    AfterInsert = qryParamConditionAfterInsert
    BeforePost = qryParamConditionBeforePost
    OnNewRecord = qryParamConditionNewRecord
    OnPostError = qryParamConditionPostError
    OnDeleteError = qryParamConditionDeleteError
    SQL.Strings = (
      'SELECT PARAM_ID'
      '     , DBEGINWITH'
      '     , CBEGINWITH'
      '     , COEFFICIENT'
      '     , PARAM_NOTE'
      '     , CONDITION_ID'
      '     , DBEGINOBJECT'
      '     , DBEGINFACTOR'
      '     , CBEGINOBJECT'
      '     , CBEGINFACTOR'
      'FROM PRMARSING_CONDITION'
      'where PARAM_ID=:PARAM_ID '
      'order by CONDITION_ID')
    FieldOptions = []
    Left = 163
    Top = 56
    object qryParamConditionPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
      Required = True
    end
    object qryParamConditionDBEGINWITH: TWideStringField
      FieldName = 'DBEGINWITH'
      Required = True
      Size = 15
    end
    object qryParamConditionCBEGINWITH: TWideStringField
      FieldName = 'CBEGINWITH'
      Required = True
      Size = 15
    end
    object qryParamConditionCOEFFICIENT: TIBOFloatField
      FieldName = 'COEFFICIENT'
      Required = True
    end
    object qryParamConditionPARAM_NOTE: TWideStringField
      FieldName = 'PARAM_NOTE'
      Size = 126
    end
    object qryParamConditionCONDITION_ID: TSmallintField
      FieldName = 'CONDITION_ID'
      Required = True
    end
    object qryParamConditionDBEGINOBJECT: TWideStringField
      FieldName = 'DBEGINOBJECT'
      Size = 30
    end
    object qryParamConditionDBEGINFACTOR: TWideStringField
      FieldName = 'DBEGINFACTOR'
      Size = 30
    end
    object qryParamConditionCBEGINOBJECT: TWideStringField
      FieldName = 'CBEGINOBJECT'
      Size = 30
    end
    object qryParamConditionCBEGINFACTOR: TWideStringField
      FieldName = 'CBEGINFACTOR'
      Size = 30
    end
  end
  object dsParamCondition: TDataSource
    DataSet = qryParamCondition
    Left = 163
    Top = 99
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsParamCondition
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsParamCondition
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsParamCondition
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsParamCondition
    end
  end
end
