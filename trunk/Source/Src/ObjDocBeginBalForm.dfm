object ObjDocBeginBalFrm: TObjDocBeginBalFrm
  Tag = 25
  Left = 229
  Top = 124
  Width = 663
  Height = 481
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
    Width = 655
    Height = 447
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      655
      447)
    object btnCancel: TElPopupButton
      Tag = 22
      Left = 246
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
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
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 4
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Tag = 24
      Left = 577
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 8
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Tag = 23
      Left = 496
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 7
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 89
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
      Left = 238
      Top = 3
      Width = 354
      Cursor = crIBeam
      Color = clHighlightText
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 9
      DataField = 'ACCOUNT_NAME'
      DataSource = MainDM.dsPAcc
      ReadOnly = True
      StoredValues = 64
    end
    object btnIns: TElPopupButton
      Tag = 19
      Left = 3
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Insert'
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
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
      DataSource = dsBeginObjDoc
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdObjOBJECT_ID: TdxDBGridPopupColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        SummaryFooterType = cstCount
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjOBJECT_IDCloseUp
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object grdObjDOC_ARISE: TdxDBGridColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_ARISE'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object grdObjARISE_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ARISE_DATE'
        DateButtons = [btnToday]
        UseEditMask = True
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object grdObjPERIOD_ARISE: TdxDBGridColumn
        Caption = 'Th'#225'ng l'#7853'p'
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERIOD_ARISE'
        Caption_UTF7 = 'Th+AOE-ng l+Hq0-p'
      end
      object grdObjBEGIN_DEBIT: TdxDBGridCalcColumn
        Caption = 'N'#7907' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_DEBIT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'N+HuM +AREepw-u k+HvM'
      end
      object grdObjBEGIN_CREDIT: TdxDBGridCalcColumn
        Caption = 'C'#243' '#273#7847'u k'#7923
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_CREDIT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'C+APM +AREepw-u k+HvM'
      end
      object grdObjTENNGOAITE: TdxDBGridPopupColumn
        Caption = 'T'#234'n ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENNGOAITE'
        PopupControl = PopupFrm.grdNgoaite
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjTENNGOAITECloseUp
        Caption_UTF7 = 'T+AOo-n ngo+HqE-i t+Hsc'
      end
      object grdObjSOTIENNGOAITE: TdxDBGridCalcColumn
        Caption = 'S'#7889' ti'#7873'n ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOTIENNGOAITE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE ti+HsE-n ngo+HqE-i t+Hsc'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 84
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Xo'#225
      TabOrder = 3
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 327
      Top = 419
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X&em phi'#7871'u'
      TabOrder = 6
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
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
          Caption = 'S'#7889' hi'#7879'u t'#224'i kho'#7843'n'
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
        object locFormItem1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
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
        object locFormItem4: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
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
      DataSource = dsBeginObjDoc
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBeginObjDoc
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBeginObjDoc
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsBeginObjDoc
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
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'S'#7889' d'#432' chi ti'#7871't ban '#273#7847'u theo t'#7915'ng ch'#7913'ng t'#7915
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 96
  end
  object qryBeginObjDoc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ACCOUNT_ID'
        ParamType = ptUnknown
      end
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
    DatabaseName = 
      '192.168.81.161:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\ac' +
      'counting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_DOCBAL'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ARISE = :OLD_DOC_ARISE AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ARISE = :OLD_PERIOD_ARISE AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_DOCBAL SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   DOC_ARISE = :DOC_ARISE, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ARISE = :PERIOD_ARISE, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT = :BEGIN_DEBIT,'
      '   BEGIN_CREDIT = :BEGIN_CREDIT,'
      '   TENNGOAITE = :TENNGOAITE,'
      '   SOTIENNGOAITE = :SOTIENNGOAITE,'
      '   ARISE_DATE = :ARISE_DATE'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ARISE = :OLD_DOC_ARISE AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ARISE = :OLD_PERIOD_ARISE AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_DOCBAL('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   DOC_ARISE, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ARISE, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_DEBIT,'
      '   BEGIN_CREDIT,'
      '   TENNGOAITE,'
      '   SOTIENNGOAITE,'
      '   ARISE_DATE)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :DOC_ARISE,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ARISE,'
      '   :PERIOD_ID,'
      '   :BEGIN_DEBIT,'
      '   :BEGIN_CREDIT,'
      '   :TENNGOAITE,'
      '   :SOTIENNGOAITE,'
      '   :ARISE_DATE)')
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID'
      'ACCOUNT_ID'
      'DOC_ARISE'
      'PERIOD_ARISE'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBeginObjDocBeforeEdit
    BeforeDelete = qryBeginObjDocBeforeDelete
    BeforeInsert = qryBeginObjDocBeforeInsert
    AfterInsert = qryBeginObjDocAfterInsert
    BeforePost = qryBeginObjDocBeforePost
    AfterPost = qryBeginObjDocAfterPost
    OnNewRecord = qryBeginObjDocNewRecord
    OnPostError = qryBeginObjDocPostError
    DataSource = MainDM.dsPAcc
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OTYPE_ID'
      '     , ACCOUNT_ID'
      '     , PERIOD_ID'
      '     , DOC_ARISE'
      
        '     , OBJECT_ID||OTYPE_ID||ACCOUNT_ID||PERIOD_ID||DOC_ARISE||PE' +
        'RIOD_ARISE KF'
      '     , PERIOD_ARISE'
      '     , BEGIN_DEBIT'
      '     , BEGIN_CREDIT'
      '     , TENNGOAITE'
      '     , SOTIENNGOAITE'
      '     , ARISE_DATE'
      '     , BRANCH_ID'
      'FROM OBJECT_DOCBAL'
      'where ACCOUNT_ID=:ACCOUNT_ID'
      '     and PERIOD_ID=:PERIOD_ID'
      '     and BRANCH_ID =:BRANCH_ID')
    FieldOptions = []
    Left = 381
    Top = 180
    object qryBeginObjDocOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryBeginObjDocOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryBeginObjDocACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryBeginObjDocPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBeginObjDocDOC_ARISE: TWideStringField
      FieldName = 'DOC_ARISE'
      Required = True
      Size = 30
    end
    object qryBeginObjDocPERIOD_ARISE: TSmallintField
      FieldName = 'PERIOD_ARISE'
      Required = True
    end
    object qryBeginObjDocBEGIN_DEBIT: TIBOFloatField
      FieldName = 'BEGIN_DEBIT'
    end
    object qryBeginObjDocBEGIN_CREDIT: TIBOFloatField
      FieldName = 'BEGIN_CREDIT'
    end
    object qryBeginObjDocTENNGOAITE: TWideStringField
      FieldName = 'TENNGOAITE'
      OnChange = qryBeginObjDocTENNGOAITEChange
      Size = 6
    end
    object qryBeginObjDocSOTIENNGOAITE: TIBOFloatField
      FieldName = 'SOTIENNGOAITE'
    end
    object qryBeginObjDocKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Size = 93
    end
    object qryBeginObjDocARISE_DATE: TDateField
      FieldName = 'ARISE_DATE'
      Required = True
    end
    object qryBeginObjDocBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsBeginObjDoc: TDataSource
    DataSet = qryBeginObjDoc
    Left = 381
    Top = 225
  end
end
