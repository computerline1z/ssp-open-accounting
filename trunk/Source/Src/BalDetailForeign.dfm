object BalForeignFrm: TBalForeignFrm
  Tag = 25
  Left = 149
  Top = 161
  Width = 716
  Height = 514
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
    Width = 708
    Height = 480
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      708
      480)
    object btnCancel: TElPopupButton
      Tag = 22
      Left = 246
      Top = 452
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
      TabOrder = 7
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Tag = 21
      Left = 165
      Top = 452
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
      TabOrder = 6
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Tag = 24
      Left = 630
      Top = 452
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
      TabOrder = 9
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Tag = 23
      Left = 549
      Top = 452
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Gi'#250'p '#273#7905
      TabOrder = 8
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
      OnCloseUp = dxDBPopupEdit1CloseUp
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
      TabOrder = 10
      DataField = 'ACCOUNT_NAME'
      DataSource = MainDM.dsPAcc
      ReadOnly = True
      StoredValues = 64
    end
    object btnDel: TElPopupButton
      Tag = 20
      Left = 84
      Top = 452
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
      TabOrder = 5
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Tag = 19
      Left = 3
      Top = 452
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
      TabOrder = 4
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
      KeyField = 'OBJECT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
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
      OnChangeColumn = grdObjChangeColumn
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Col_ID: TdxDBGridPopupColumn
        Tag = 2
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 91
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
        Sorted = csUp
        TabStop = False
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        DisableFilter = True
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object Col_No: TdxDBGridCalcColumn
        Tag = 4
        Caption = 'N'#7907' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 93
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
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_CREDIT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'C+APM +AREepw-u k+HvM'
      end
      object grdObjDEF_DEBIT: TdxDBGridCalcColumn
        Caption = 'N'#7907' (Qui ra VND)'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEF_DEBIT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'N+HuM (Qui ra VND)'
      end
      object grdObjDEF_CREDIT: TdxDBGridCalcColumn
        Caption = 'C'#243' (Qui ra VND)'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEF_CREDIT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'C+APM (Qui ra VND)'
      end
    end
    object dxDBPopupEdit2: TdxDBPopupEdit
      Left = 498
      Top = 3
      Width = 92
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'CURRENCY_ID'
      DataSource = MainDM.dsPCurrency
      PopupControl = PopupFrm.grdNgoaite
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit2CloseUp
    end
    object edtTyGia: TdxCalcEdit
      Left = 629
      Top = 3
      Width = 76
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnExit = edtTyGiaExit
      Alignment = taCenter
      Text = '0'
      PopupBorder = pbFrame3D
      StoredValues = 1
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
        object locFormItem1: TdxLayoutItem
          Caption = 'Lo'#7841'i ti'#7873'n t'#7879' '
          Control = dxDBPopupEdit2
          ControlOptions.ShowBorder = False
        end
        object locFormItem10: TdxLayoutItem
          Caption = 'T'#7927' gi'#225
          Control = edtTyGia
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
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_FBAL'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_FBAL SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   CURRENCY_ID = :CURRENCY_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT = :BEGIN_DEBIT,'
      '   BEGIN_CREDIT = :BEGIN_CREDIT,'
      '   DEF_DEBIT = :DEF_DEBIT,'
      '   DEF_CREDIT = :DEF_CREDIT,'
      '   CUR_RATE = :CUR_RATE'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   CURRENCY_ID = :OLD_CURRENCY_ID AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    Filtered = True
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_FBAL('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   CURRENCY_ID, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT,'
      '   BEGIN_CREDIT,'
      '   DEF_DEBIT,'
      '   DEF_CREDIT,'
      '   CUR_RATE)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :CURRENCY_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :BEGIN_DEBIT,'
      '   :BEGIN_CREDIT,'
      '   :DEF_DEBIT,'
      '   :DEF_CREDIT,'
      '   :CUR_RATE)')
    KeyLinks.Strings = (
      'OBJECT_FBAL.OBJECT_ID'
      'OBJECT_FBAL.OTYPE_ID'
      'OBJECT_FBAL.ACCOUNT_ID'
      'PERIOD_ID'
      'CURRENCY_ID'
      'BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBalForeignBeforeEdit
    BeforeDelete = qryBalForeignBeforeDelete
    BeforeInsert = qryBalForeignBeforeInsert
    AfterInsert = qryBalForeignAfterInsert
    BeforePost = qryBalForeignBeforePost
    OnFilterRecord = qryBalForeignFilterRecord
    OnNewRecord = qryBalForeignNewRecord
    OnPostError = qryBalForeignPostError
    SQL.Strings = (
      'SELECT OBJECT_FBAL.OBJECT_ID'
      '     , OBJECT_FBAL.OTYPE_ID'
      '     , OBJECT_FBAL.ACCOUNT_ID'
      '     , PERIOD_ID'
      '     , BEGIN_DEBIT'
      '     , BEGIN_CREDIT'
      '     , OBJECT_NAME'
      '     , CURRENCY_ID'
      '     , DEF_DEBIT'
      '     , DEF_CREDIT'
      '     , BRANCH_ID'
      '     , CUR_RATE'
      'FROM OBJECT_FBAL'
      
        'JOIN OBJECT_LIST on (OBJECT_FBAL.OBJECT_ID = OBJECT_LIST.OBJECT_' +
        'ID '
      '         and OBJECT_FBAL.OTYPE_ID=OBJECT_LIST.OTYPE_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and BRANCH_ID = :BRANCH_ID order by O' +
        'BJECT_FBAL.OBJECT_ID')
    FieldOptions = []
    Left = 305
    Top = 220
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
      OnChange = qryBalForeignBEGIN_DEBITChange
    end
    object qryBalForeignBEGIN_CREDIT: TIBOFloatField
      Tag = 1
      FieldName = 'BEGIN_CREDIT'
      OnChange = qryBalForeignBEGIN_CREDITChange
    end
    object qryBalForeignDEF_DEBIT: TIBOFloatField
      FieldName = 'DEF_DEBIT'
    end
    object qryBalForeignDEF_CREDIT: TIBOFloatField
      FieldName = 'DEF_CREDIT'
    end
    object qryBalForeignBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryBalForeignCUR_RATE: TIBOFloatField
      FieldName = 'CUR_RATE'
    end
  end
  object dsBalForeign: TDataSource
    DataSet = qryBalForeign
    Left = 305
    Top = 265
  end
end
