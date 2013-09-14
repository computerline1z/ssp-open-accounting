object BalFactorForeignFrm: TBalFactorForeignFrm
  Tag = 25
  Left = 216
  Top = 106
  Width = 683
  Height = 503
  HelpContext = 5
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
    Width = 675
    Height = 469
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      675
      469)
    object btnCancel: TElPopupButton
      Tag = 22
      Left = 246
      Top = 441
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
      TabOrder = 5
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Tag = 21
      Left = 165
      Top = 441
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
      TabOrder = 4
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Tag = 24
      Left = 597
      Top = 441
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Tag = 23
      Left = 516
      Top = 441
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Gi'#250'p '#273#7905
      TabOrder = 6
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 92
      Top = 3
      Width = 143
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnExit = dxDBPopupEdit1Exit
      DataField = 'ACCOUNT_ID'
      DataSource = MainDM.dsPAcc
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
    end
    object dxDBEdit1: TdxDBEdit
      Left = 241
      Top = 3
      Width = 164
      Cursor = crIBeam
      Color = clHighlightText
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 8
      DataField = 'ACCOUNT_NAME'
      DataSource = MainDM.dsPAcc
      ReadOnly = True
      StoredValues = 64
    end
    object btnDel: TElPopupButton
      Tag = 20
      Left = 84
      Top = 441
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
      TabOrder = 3
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Tag = 19
      Left = 3
      Top = 441
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
      TabOrder = 2
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdObj: TdxDBGrid
      Left = 5
      Top = 32
      Width = 669
      Height = 140
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = grdObjEnter
      OnKeyDown = grdObjKeyDown
      OnMouseUp = grdObjMouseUp
      DataSource = dsBalForeign
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnEditing = grdObjEditing
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Col_ID: TdxDBGridPopupColumn
        Tag = 2
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = Col_IDCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object Col_Name: TdxDBGridColumn
        Tag = 3
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        DisableFilter = True
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object grdObjFACTOR_ID: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FACTOR_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjFACTOR_IDCloseUp
        Caption_UTF7 = 'Y+Hr8-u t+HtE'
      end
      object grdObjCURRENCY_ID: TdxDBGridPopupColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_ID'
        PopupControl = PopupFrm.grdNgoaite
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjCURRENCY_IDCloseUp
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object Col_No: TdxDBGridCalcColumn
        Tag = 4
        Caption = 'N'#7907' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_DEBIT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'N+HuM +AREepw-u k+HvM'
      end
      object Col_Co: TdxDBGridCalcColumn
        Tag = 5
        Caption = 'C'#243' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_CREDIT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'C+APM +AREepw-u k+HvM'
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup1: TdxLayoutGroup
        Caption = #167#232'i t'#173#238'ng chi ti'#213't'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem9: TdxLayoutItem
          Tag = 1
          Caption = 'S'#7889' hi'#7879'u t'#224'i kho'#7843'n '
          Control = dxDBPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object lociKH: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid4'
        ShowCaption = False
        Control = grdObj
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
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
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
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
      DataSource = dsBalForeign
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsBalForeign
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBalForeign
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBalForeign
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
        Caption = 'S'#7889' d'#432' ban '#273#7847'u c'#225'c '#273#7889'i t'#432#7907'ng chi ti'#7871't theo ngo'#7841'i t'#7879
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryBalForeign: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ACCOUNT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM FACTOR_FBAL'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   FACTOR_ID = :OLD_FACTOR_ID AND'
      '   FACTOR_TYPE = :OLD_FACTOR_TYPE AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE FACTOR_FBAL SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   CURRENCY_ID = :CURRENCY_ID, /*PK*/'
      '   FACTOR_ID = :FACTOR_ID, /*PK*/'
      '   FACTOR_TYPE = :FACTOR_TYPE, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT = :BEGIN_DEBIT,'
      '   BEGIN_CREDIT = :BEGIN_CREDIT'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   FACTOR_ID = :OLD_FACTOR_ID AND'
      '   FACTOR_TYPE = :OLD_FACTOR_TYPE AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMDIChild
    InsertSQL.Strings = (
      'INSERT INTO FACTOR_FBAL('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   CURRENCY_ID, /*PK*/'
      '   FACTOR_ID, /*PK*/'
      '   FACTOR_TYPE, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT,'
      '   BEGIN_CREDIT)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :CURRENCY_ID,'
      '   :FACTOR_ID,'
      '   :FACTOR_TYPE,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :BEGIN_DEBIT,'
      '   :BEGIN_CREDIT)')
    KeyLinks.Strings = (
      'FACTOR_FBAL.OBJECT_ID'
      'FACTOR_FBAL.OTYPE_ID'
      'FACTOR_FBAL.ACCOUNT_ID'
      'FACTOR_ID'
      'FACTOR_TYPE'
      'PERIOD_ID'
      'CURRENCY_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBalForeignBeforeEdit
    BeforeDelete = qryBalForeignBeforeDelete
    BeforeInsert = qryBalForeignBeforeInsert
    AfterInsert = qryBalForeignAfterInsert
    BeforePost = qryBalForeignBeforePost
    OnNewRecord = qryBalForeignNewRecord
    OnPostError = qryBalForeignPostError
    DataSource = MainDM.dsPAcc
    SQL.Strings = (
      'SELECT FACTOR_FBAL.OBJECT_ID'
      '     , FACTOR_FBAL.OTYPE_ID'
      '     , FACTOR_FBAL.ACCOUNT_ID'
      '     , FACTOR_FBAL.OBJECT_ID||FACTOR_ID||CURRENCY_ID KF'
      '     , FACTOR_ID'
      '     , FACTOR_TYPE'
      '     , PERIOD_ID'
      '     , BEGIN_DEBIT'
      '     , BEGIN_CREDIT'
      '     , OBJECT_NAME'
      '     , CURRENCY_ID'
      '     , BRANCH_ID'
      'FROM FACTOR_FBAL'
      
        'JOIN OBJECT_LIST on (OBJECT_LIST.OBJECT_ID =FACTOR_FBAL.OBJECT_I' +
        'D and OBJECT_LIST.OTYPE_ID= FACTOR_FBAL.OTYPE_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and FACTOR_FBAL.ACCOUNT_ID=:ACCOUNT_I' +
        'D'
      'and FACTOR_FBAL.BRANCH_ID = :BRANCH_ID')
    FieldOptions = []
    Left = 217
    Top = 124
    object qryBalForeignOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryBalForeignPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBalForeignOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryBalForeignACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryBalForeignOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryBalForeignCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Required = True
      Size = 6
    end
    object qryBalForeignBEGIN_DEBIT: TIBOFloatField
      Tag = 1
      FieldName = 'BEGIN_DEBIT'
    end
    object qryBalForeignBEGIN_CREDIT: TIBOFloatField
      Tag = 1
      FieldName = 'BEGIN_CREDIT'
    end
    object qryBalForeignFACTOR_ID: TWideStringField
      FieldName = 'FACTOR_ID'
      Required = True
      Size = 30
    end
    object qryBalForeignFACTOR_TYPE: TSmallintField
      FieldName = 'FACTOR_TYPE'
      Required = True
    end
    object qryBalForeignKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 66
    end
    object qryBalForeignBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsBalForeign: TDataSource
    DataSet = qryBalForeign
    Left = 217
    Top = 161
  end
end
