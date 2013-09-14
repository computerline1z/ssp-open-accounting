object ButtoanCTGSFrm: TButtoanCTGSFrm
  Left = 231
  Top = 155
  Width = 597
  Height = 470
  HelpContext = 12
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
  DesignSize = (
    589
    436)
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 589
    Height = 436
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      589
      436)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 158
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 159
      Top = 158
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 511
      Top = 408
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
      TabOrder = 12
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 433
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 11
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 158
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 158
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdBTCTGS: TdxDBGrid
      Left = 5
      Top = 205
      Width = 724
      Height = 202
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
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnEnter = grdBTCTGSEnter
      OnKeyDown = grdBTCTGSKeyDown
      OnMouseUp = grdBTCTGSMouseUp
      DataSource = dsBTCTGS
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdBTCTGSDEBIT_ACC: TdxDBGridPopupColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_ACC'
        SummaryFooterType = cstCount
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBTCTGSDEBIT_ACCCloseUp
        Caption_UTF7 = 'TK N+HuM'
      end
      object grdBTCTGSCREDIT_ACC: TdxDBGridPopupColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBTCTGSDEBIT_ACCCloseUp
        Caption_UTF7 = 'TK C+APM'
      end
      object grdBTCTGSENTRY_SUB: TdxDBGridMaskColumn
        Caption = 'Tr'#237'ch y'#7871'u'
        HeaderAlignment = taCenter
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_SUB'
        Caption_UTF7 = 'Tr+AO0-ch y+Hr8-u'
      end
      object grdBTCTGSENTRY_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object grdGroup: TdxDBGrid
      Left = 5
      Top = 5
      Width = 579
      Height = 148
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung v'#7873' th'#224'nh ph'#7849'm'
          Width = 237
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'MANHOMCTGS'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = grdGroupEnter
      OnKeyDown = grdGroupKeyDown
      OnMouseUp = grdGroupMouseUp
      DataSource = dsGroup
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdGroupMANHOMCTGS: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOMCTGS'
        Caption_UTF7 = 'M+AOM lo+HqE-i ch+Huk-ng t+Hus'
      end
      object grdGroupTENNHOMCTGS: TdxDBGridMaskColumn
        Caption = 'T'#234'n lo'#7841'i ch'#7913'ng t'#7915' ghi s'#7893
        HeaderAlignment = taCenter
        Width = 365
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENNHOMCTGS'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i ch+Huk-ng t+Hus ghi s+HtU'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 315
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T'#224'i kho'#7843'n &PS'
      TabOrder = 10
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 3
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm'
      TabOrder = 6
      Action = acInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 81
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X'#243'a'
      TabOrder = 7
      Action = acDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 159
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L'#432'u'
      TabOrder = 8
      Action = acPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 237
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Kh'#244'ng l'#432'u'
      TabOrder = 9
      Action = acCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem3: TdxLayoutItem
        Control = grdGroup
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Caption = #167#232'i t'#173#238'ng chi ti'#213't'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          Caption = 'BitBtn6'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'C'#225'c b'#250't to'#225'n thu'#7897'c lo'#7841'i ch'#7913'ng t'#7915' ghi s'#7893' b'#234'n tr'#234'n'
        CaptionOptions.Layout = clTop
        Control = grdBTCTGS
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem10: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem12: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem13: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object PnlRemind: TElPanel
    Left = 52
    Top = 72
    Width = 440
    Height = 300
    Align = alNone
    MouseCapture = False
    TabOrder = 1
    Visible = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object grdRemind: TdxDBGrid
      Left = 1
      Top = 1
      Width = 438
      Height = 269
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'tkno'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      TabOrder = 0
      OnDblClick = grdRemindDblClick
      DataSource = dsRemind
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object grdRemindTKNO: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n n'#7907
        HeaderAlignment = taCenter
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        Caption_UTF7 = 'T+AOA-i kho+HqM-n n+HuM'
      end
      object grdRemindTKCO: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n c'#243
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        Caption_UTF7 = 'T+AOA-i kho+HqM-n c+APM'
      end
    end
    object ElPopupButton5: TElPopupButton
      Left = 362
      Top = 272
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 1
      OnClick = ElPopupButton5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 283
      Top = 272
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 2
      OnClick = ElPopupButton6Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 388
    Top = 80
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 420
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsGroup
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsGroup
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsGroup
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsGroup
    end
    object acInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsert1'
      DataSource = dsBTCTGS
    end
    object acDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete1'
      DataSource = dsBTCTGS
    end
    object acPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost1'
      DataSource = dsBTCTGS
    end
    object acCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel1'
      DataSource = dsBTCTGS
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
        Caption = #272#259'ng k'#253' c'#225'c ch'#7913'ng t'#7915' ghi s'#7893
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 104
    Top = 56
  end
  object dsBTCTGS: TDataSource
    DataSet = qryBTCTGS
    Left = 116
    Top = 287
  end
  object qryBTCTGS: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MANHOMCTGS'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM BTCHUNGTUGHISO'
      'WHERE'
      '   CREDIT_ACC = :OLD_CREDIT_ACC AND'
      '   DEBIT_ACC = :OLD_DEBIT_ACC')
    EditSQL.Strings = (
      'UPDATE BTCHUNGTUGHISO SET'
      '   CREDIT_ACC = :CREDIT_ACC, /*PK*/'
      '   DEBIT_ACC = :DEBIT_ACC, /*PK*/'
      '   ENTRY_SUB = :ENTRY_SUB,'
      '   MANHOMCTGS = :MANHOMCTGS,'
      '   ENTRY_NOTE = :ENTRY_NOTE'
      'WHERE'
      '   CREDIT_ACC = :OLD_CREDIT_ACC AND'
      '   DEBIT_ACC = :OLD_DEBIT_ACC')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO BTCHUNGTUGHISO('
      '   CREDIT_ACC, /*PK*/'
      '   DEBIT_ACC, /*PK*/'
      '   ENTRY_SUB,'
      '   MANHOMCTGS,'
      '   ENTRY_NOTE)'
      'VALUES ('
      '   :CREDIT_ACC,'
      '   :DEBIT_ACC,'
      '   :ENTRY_SUB,'
      '   :MANHOMCTGS,'
      '   :ENTRY_NOTE)')
    KeyLinks.Strings = (
      'DEBIT_ACC'
      'CREDIT_ACC')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBTCTGSBeforeEdit
    BeforeDelete = qryBTCTGSBeforeDelete
    BeforeInsert = qryBTCTGSBeforeInsert
    AfterInsert = qryBTCTGSAfterInsert
    BeforePost = qryBTCTGSBeforePost
    OnNewRecord = qryBTCTGSNewRecord
    OnPostError = qryBTCTGSPostError
    DataSource = dsGroup
    SQL.Strings = (
      'SELECT DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , ENTRY_SUB'
      '     , DEBIT_ACC||CREDIT_ACC KF'
      '     , MANHOMCTGS'
      '     , ENTRY_NOTE'
      'FROM BTCHUNGTUGHISO'
      'where MANHOMCTGS=:MANHOMCTGS')
    FieldOptions = []
    Left = 116
    Top = 244
    object qryBTCTGSDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryBTCTGSCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryBTCTGSENTRY_SUB: TWideStringField
      FieldName = 'ENTRY_SUB'
      Size = 255
    end
    object qryBTCTGSKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryBTCTGSMANHOMCTGS: TWideStringField
      FieldName = 'MANHOMCTGS'
      Required = True
      Size = 15
    end
    object qryBTCTGSENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
  end
  object qryGroup: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM NHOMCTGS'
      'WHERE'
      '   MANHOMCTGS = :OLD_MANHOMCTGS')
    EditSQL.Strings = (
      'UPDATE NHOMCTGS SET'
      '   MANHOMCTGS = :MANHOMCTGS, /*PK*/'
      '   TENNHOMCTGS = :TENNHOMCTGS'
      'WHERE'
      '   MANHOMCTGS = :OLD_MANHOMCTGS')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO NHOMCTGS('
      '   MANHOMCTGS, /*PK*/'
      '   TENNHOMCTGS)'
      'VALUES ('
      '   :MANHOMCTGS,'
      '   :TENNHOMCTGS)')
    KeyLinks.Strings = (
      'MANHOMCTGS')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryGroupBeforeEdit
    BeforeDelete = qryGroupBeforeDelete
    BeforeInsert = qryGroupBeforeInsert
    AfterInsert = qryGroupAfterInsert
    BeforePost = qryGroupBeforePost
    OnPostError = qryGroupPostError
    OnDeleteError = qryGroupDeleteError
    SQL.Strings = (
      'SELECT MANHOMCTGS'
      '     , TENNHOMCTGS'
      'FROM NHOMCTGS'
      'order by MANHOMCTGS')
    FieldOptions = []
    Left = 173
    Top = 36
    object qryGroupMANHOMCTGS: TWideStringField
      FieldName = 'MANHOMCTGS'
      Required = True
      Size = 15
    end
    object qryGroupTENNHOMCTGS: TWideStringField
      FieldName = 'TENNHOMCTGS'
      Size = 126
    end
  end
  object dsGroup: TDataSource
    DataSet = qryGroup
    Left = 173
    Top = 81
  end
  object dsRemind: TDataSource
    DataSet = qryRemind
    Left = 276
    Top = 295
  end
  object qryRemind: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERFIX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUFFIX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'tkno')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select colongnhau,tkno,tkco,manhom from SP_PS_CTGS(:KYHT,:NGAY,:' +
        'PERFIX,:SUFFIX,:BRANCH_ID)')
    FieldOptions = []
    Left = 276
    Top = 252
    object qryRemindCOLONGNHAU: TSmallintField
      FieldName = 'COLONGNHAU'
    end
    object qryRemindTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryRemindTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryRemindMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
  end
end
