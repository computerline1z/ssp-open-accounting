object ErrorListFrm: TErrorListFrm
  Left = 158
  Top = 162
  Width = 632
  Height = 468
  HelpContext = 17
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
    Width = 624
    Height = 434
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      624
      434)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 68
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ERROR_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 2
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsErr
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ERROR_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ERROR_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1ERROR_FORM: TdxDBGridMaskColumn
        Caption = 'T'#7841'i Form'
        HeaderAlignment = taCenter
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ERROR_FORM'
        Caption_UTF7 = 'T+HqE-i Form'
      end
      object dxDBGrid1ERROR_SUBJECT: TdxDBGridMaskColumn
        Caption = 'Ti'#234'u '#273#7873
        HeaderAlignment = taCenter
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ERROR_SUBJECT'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ'
      end
      object dxDBGrid1ERROR_CONTENT: TdxDBGridColumn
        Caption = '               N'#7897'i dung'
        Width = 339
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ERROR_CONTENT'
        DisableFilter = True
        Caption_UTF7 = '               N+Htk-i dung'
      end
      object dxDBGrid1ERROR_TIME: TdxDBGridDateColumn
        Caption = 'Th'#7901'i '#273'i'#7875'm'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ERROR_TIME'
        Caption_UTF7 = 'Th+Ht0-i +ARE-i+HsM-m'
      end
      object dxDBGrid1ERROR_STATUS: TdxDBGridCheckColumn
        Caption = #272#227' s'#7917'a'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ERROR_STATUS'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = '+ARAA4w s+Hu0-a'
      end
      object dxDBGrid1USER_INPUT: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i b'#225'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 28
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USER_INPUT'
        Caption_UTF7 = 'Ng+AbAe3Q-i b+AOE-o'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 79
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 4
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 3
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 3
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 546
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 8
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 322
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &Excel'
      TabOrder = 7
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 160
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 5
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 236
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 6
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit1: TdxDBEdit
      Left = 47
      Top = 3
      Width = 121
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'ERROR_SUBJECT'
      DataSource = dsErr
    end
    object dxDBMemo1: TdxDBMemo
      Left = 47
      Top = 25
      Width = 549
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'ERROR_CONTENT'
      DataSource = dsErr
      Height = 40
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem8: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'Ti'#234'u '#273#7873
        Control = dxDBEdit1
        ControlOptions.ShowBorder = False
      end
      object locFormItem9: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'N'#7897'i dung'
        CaptionOptions.AlignVert = tavTop
        Control = dxDBMemo1
        ControlOptions.ShowBorder = False
      end
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup1: TdxLayoutGroup
        Offsets.Top = 3
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'ElPopupButton5'
          Offsets.Left = 5
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          Caption = 'ElPopupButton6'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'ElPopupButton3'
          Offsets.Left = 10
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
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
        Caption = 'Danh s'#225'ch c'#225'c b'#225'o l'#7895'i, c'#225'c '#253' ki'#7871'n '#273#243'ng g'#243'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 72
    Top = 192
  end
  object ActionList1: TActionList
    Left = 280
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
    end
  end
  object qryErr: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ERROR_LOG'
      'WHERE'
      '   ERROR_ID = :OLD_ERROR_ID')
    EditSQL.Strings = (
      'UPDATE ERROR_LOG SET'
      '   ERROR_ID = :ERROR_ID, /*PK*/'
      '   ERROR_FORM = :ERROR_FORM,'
      '   ERROR_SUBJECT = :ERROR_SUBJECT,'
      '   ERROR_CONTENT = :ERROR_CONTENT,'
      '   ERROR_TIME = :ERROR_TIME,'
      '   ERROR_STATUS = :ERROR_STATUS,'
      '   USER_INPUT = :USER_INPUT'
      'WHERE'
      '   ERROR_ID = :OLD_ERROR_ID')
    GeneratorLinks.Strings = (
      'ERROR_ID=GEN_ERRORID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO ERROR_LOG('
      '   ERROR_ID, /*PK*/'
      '   ERROR_FORM,'
      '   ERROR_SUBJECT,'
      '   ERROR_CONTENT,'
      '   ERROR_TIME,'
      '   ERROR_STATUS,'
      '   USER_INPUT)'
      'VALUES ('
      '   :ERROR_ID,'
      '   :ERROR_FORM,'
      '   :ERROR_SUBJECT,'
      '   :ERROR_CONTENT,'
      '   :ERROR_TIME,'
      '   :ERROR_STATUS,'
      '   :USER_INPUT)')
    KeyLinks.Strings = (
      'ERROR_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryErrBeforeDelete
    AfterInsert = qryErrAfterInsert
    BeforePost = qryErrBeforePost
    OnNewRecord = qryErrNewRecord
    SQL.Strings = (
      'SELECT ERROR_ID'
      '     , ERROR_FORM'
      '     , ERROR_SUBJECT'
      '     , ERROR_CONTENT'
      '     , ERROR_TIME'
      '     , ERROR_STATUS'
      '     , USER_INPUT'
      'FROM ERROR_LOG')
    FieldOptions = []
    Left = 134
    Top = 110
    object qryErrERROR_ID: TIntegerField
      FieldName = 'ERROR_ID'
      Required = True
    end
    object qryErrERROR_FORM: TWideStringField
      FieldName = 'ERROR_FORM'
      Size = 15
    end
    object qryErrERROR_SUBJECT: TWideStringField
      FieldName = 'ERROR_SUBJECT'
      Size = 126
    end
    object qryErrERROR_CONTENT: TWideStringField
      FieldName = 'ERROR_CONTENT'
      Size = 6144
    end
    object qryErrERROR_TIME: TDateTimeField
      FieldName = 'ERROR_TIME'
    end
    object qryErrERROR_STATUS: TSmallintField
      FieldName = 'ERROR_STATUS'
    end
    object qryErrUSER_INPUT: TWideStringField
      FieldName = 'USER_INPUT'
      Size = 15
    end
  end
  object dsErr: TDataSource
    DataSet = qryErr
    Left = 166
    Top = 111
  end
end
