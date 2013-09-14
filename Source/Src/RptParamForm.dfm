object RptParamFrm: TRptParamFrm
  Left = 260
  Top = 175
  Width = 557
  Height = 390
  HelpContext = 21
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
    Width = 549
    Height = 356
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object grdParam: TdxDBGrid
      Left = 5
      Top = 5
      Width = 448
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PARAM_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = grdParamKeyDown
      DataSource = dsRptPrm
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
      object grdParamPARAM_ID: TdxDBGridColumn
        Caption = 'STT'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_ID'
      end
      object grdParamPARAM_NOTE: TdxDBGridColumn
        Caption = 'M'#244' t'#7843' th'#244'ng s'#7889
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NOTE'
        Caption_UTF7 = 'M+APQ t+HqM th+APQ-ng s+HtE'
      end
      object grdParamPARAM_VALUE: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883' ki'#7875'u s'#7889
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss ki+HsM-u s+HtE'
      end
      object grdParamPARAM_NAME: TdxDBGridColumn
        Caption = 'Gi'#225' tr'#7883' ki'#7875'u ch'#7919
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NAME'
        Caption_UTF7 = 'Gi+AOE tr+Hss ki+HsM-u ch+Hu8'
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm kho'#7843'n m'#7909'c m'#7899'i ngang b'#7857'ng v'#7899'i kho'#7843'n m'#7909'c hi'#7879'n t'#7841'i'
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      ParentShowHint = False
      ShowHint = True
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a kho'#7843'n m'#7909'c n'#224'y'
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSave: TElPopupButton
      Left = 159
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i nh'#7919'ng th'#244'ng tin '#273'ang thay '#273#7893'i'
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 237
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Kh'#244'ng l'#432'u l'#7841'i nh'#7919'ng th'#244'ng tin '#273'ang thay '#273#7893'i'
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHelp: TElPopupButton
      Left = 393
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Hi'#7875'n th'#7883' th'#244'ng tin gi'#250'p '#273#7905
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 471
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = grdParam
      end
      object locFormGroup4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locIns: TdxLayoutItem
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locDel: TdxLayoutItem
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locSave: TdxLayoutItem
          ShowCaption = False
          Control = btnSave
          ControlOptions.ShowBorder = False
        end
        object locCancel: TdxLayoutItem
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
        object locFormItem19: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object locFormItem20: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 280
    Top = 128
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 252
    Top = 124
    object acHide: TAction
      Caption = 'Gi'#202'u, Kh'#171'ng hi'#211'n th'#222
    end
    object acShowAll: TAction
      Caption = 'Hi'#211'n th'#222' t'#202't c'#182
    end
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsRptPrm
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsRptPrm
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsRptPrm
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng l'#173'u'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsRptPrm
    end
  end
  object qryRptPrm: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM REPORT_PARAM'
      'WHERE'
      '   PARAM_ID = :OLD_PARAM_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE REPORT_PARAM SET'
      '   PARAM_ID = :PARAM_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   PARAM_NOTE = :PARAM_NOTE,'
      '   PARAM_VALUE = :PARAM_VALUE,'
      '   PARAM_NAME = :PARAM_NAME'
      'WHERE'
      '   PARAM_ID = :OLD_PARAM_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO REPORT_PARAM('
      '   PARAM_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   PARAM_NOTE,'
      '   PARAM_VALUE,'
      '   PARAM_NAME)'
      'VALUES ('
      '   :PARAM_ID,'
      '   :REPORT_ID,'
      '   :PARAM_NOTE,'
      '   :PARAM_VALUE,'
      '   :PARAM_NAME)')
    KeyLinks.Strings = (
      'REPORT_ID'
      'PARAM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeCancel = qryRptPrmBeforeCancel
    BeforeEdit = qryRptPrmBeforeEdit
    BeforeDelete = qryRptPrmBeforeDelete
    BeforeInsert = qryRptPrmBeforeInsert
    AfterInsert = qryRptPrmAfterInsert
    BeforePost = qryRptPrmBeforePost
    OnNewRecord = qryRptPrmNewRecord
    OnPostError = qryRptPrmPostError
    OnDeleteError = qryRptPrmDeleteError
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , PARAM_ID'
      '     , PARAM_NOTE'
      '     , PARAM_VALUE'
      '     , PARAM_NAME'
      'FROM REPORT_PARAM'
      'where REPORT_ID=:REPORT_ID'
      'order by PARAM_ID')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryRptPrmREPORT_ID: TSmallintField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object qryRptPrmPARAM_ID: TSmallintField
      FieldName = 'PARAM_ID'
      Required = True
    end
    object qryRptPrmPARAM_NOTE: TWideStringField
      FieldName = 'PARAM_NOTE'
      Size = 126
    end
    object qryRptPrmPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
    object qryRptPrmPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 15
    end
  end
  object dsRptPrm: TDataSource
    DataSet = qryRptPrm
    Left = 158
    Top = 140
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
        Caption = 'Danh s'#225'ch c'#225'c th'#244'ng s'#7889' li'#234'n quan '#273#7871'n b'#225'o c'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
