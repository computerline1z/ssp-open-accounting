object InOutTypeFrm: TInOutTypeFrm
  Left = 202
  Top = 144
  HelpContext = 21
  BorderStyle = bsDialog
  ClientHeight = 420
  ClientWidth = 646
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
    Width = 646
    Height = 420
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 584
      Height = 120
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'INOUT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      DataSource = dsInOutTypeList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGrid1Column1: TdxDBTreeListColumn
        Caption = 'T'#234'n lo'#7841'i phi'#7871'u nh'#7853'p xu'#7845't (ch'#432'ong tr'#236'nh kho)'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 303
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INOUT_NAME'
        Caption_UTF7 = 
          'T+AOo-n lo+HqE-i phi+Hr8-u nh+Hq0-p xu+HqU-t (ch+AbA-ong tr+AOw-' +
          'nh kho)'
      end
      object dxDBGrid1Column3: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i ch'#7913'ng t'#7915' (ch'#432#417'ng tr'#236'nh k'#7871' to'#225'n)'
        HeaderAlignment = taCenter
        Width = 254
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        HideEditCursor = True
        PopupControl = PopupFrm.Pnl_DocType
        PopupFormBorderStyle = pbsSimple
        PopupWidth = 254
        OnCloseUp = dxDBGrid1Column3CloseUp
        Caption_UTF7 = 'Lo+HqE-i ch+Huk-ng t+Hus (ch+AbABoQ-ng tr+AOw-nh k+Hr8 to+AOE-n)'
      end
      object dxDBGrid1Column4: TdxDBTreeListPopupColumn
        Alignment = taCenter
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column4CloseUp
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1Column5: TdxDBTreeListPopupColumn
        Alignment = taCenter
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column4CloseUp
        Caption_UTF7 = 'TK C+APM'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 79
      Top = 392
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 3
      Top = 392
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 1
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 568
      Top = 392
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      Cancel = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = TntBitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn7: TElPopupButton
      Left = 492
      Top = 392
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
      OnClick = TntBitBtn7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbIn: TElRadioButton
      Left = 155
      Top = 397
      Width = 124
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'C'#225'c lo'#7841'i phi'#7871'u nh'#7853'p'
      TabStop = False
      TabOrder = 7
      OnClick = rbInClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbOut: TElRadioButton
      Left = 280
      Top = 397
      Width = 120
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'C'#225'c lo'#7841'i phi'#7871'u xu'#7845't'
      TabOrder = 3
      OnClick = rbOutClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbAll: TElRadioButton
      Left = 401
      Top = 397
      Width = 79
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Hi'#7875'n th'#7883' h'#7871't'
      TabOrder = 4
      OnClick = rbAllClick
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
        Caption = 'New Item'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 3
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem4: TdxLayoutItem
          Caption = 'TntBitBtn3'
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'TntBitBtn1'
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = 'ElRadioButton1'
          Offsets.Top = 5
          ShowCaption = False
          Control = rbIn
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'ElRadioButton2'
          Offsets.Top = 5
          ShowCaption = False
          Control = rbOut
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          Caption = 'ElRadioButton3'
          Offsets.Top = 5
          ShowCaption = False
          Control = rbAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntBitBtn7'
          ShowCaption = False
          Control = TntBitBtn7
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntBitBtn4'
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 332
    Top = 108
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
        Caption = 'Ph'#226'n lo'#7841'i ch'#7913'ng t'#7915' v'#224' c'#225'c th'#244'ng s'#7889' li'#234'n quan'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryInOutTypeList: TIBOQuery
    Params = <>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM INOUT_TYPE'
      'WHERE'
      '   INOUT_ID = :OLD_INOUT_ID')
    EditSQL.Strings = (
      'UPDATE INOUT_TYPE SET'
      '   INOUT_ID = :INOUT_ID, /*PK*/'
      '   INOUT_NAME = :INOUT_NAME,'
      '   DOCTYPE_ID = :DOCTYPE_ID,'
      '   DEBIT_ACC = :DEBIT_ACC,'
      '   CREDIT_ACC = :CREDIT_ACC,'
      '   DIRECTION = :DIRECTION'
      'WHERE'
      '   INOUT_ID = :OLD_INOUT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO INOUT_TYPE('
      '   INOUT_ID, /*PK*/'
      '   INOUT_NAME,'
      '   DOCTYPE_ID,'
      '   DEBIT_ACC,'
      '   CREDIT_ACC,'
      '   DIRECTION)'
      'VALUES ('
      '   :INOUT_ID,'
      '   :INOUT_NAME,'
      '   :DOCTYPE_ID,'
      '   :DEBIT_ACC,'
      '   :CREDIT_ACC,'
      '   :DIRECTION)')
    KeyLinks.Strings = (
      'INOUT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnFilterRecord = qryInOutTypeListFilterRecord
    SQL.Strings = (
      'SELECT INOUT_ID'
      '     , INOUT_NAME'
      '     , INOUT_TYPE.DOCTYPE_ID'
      '     , DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , DOCTYPE_NAME'
      '     , DIRECTION'
      'FROM INOUT_TYPE'
      
        'LEFT JOIN DOC_TYPE ON (INOUT_TYPE.DOCTYPE_ID= DOC_TYPE.DOCTYPE_I' +
        'D)')
    FieldOptions = []
    Left = 75
    Top = 72
    object qryInOutTypeListINOUT_ID: TSmallintField
      FieldName = 'INOUT_ID'
      Required = True
    end
    object qryInOutTypeListINOUT_NAME: TWideStringField
      FieldName = 'INOUT_NAME'
      Size = 126
    end
    object qryInOutTypeListDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
    end
    object qryInOutTypeListDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Size = 15
    end
    object qryInOutTypeListCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Size = 15
    end
    object qryInOutTypeListDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
    object qryInOutTypeListDIRECTION: TSmallintField
      FieldName = 'DIRECTION'
    end
  end
  object dsInOutTypeList: TDataSource
    DataSet = qryInOutTypeList
    Left = 75
    Top = 101
  end
  object ActionList1: TActionList
    Left = 304
    Top = 72
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsInOutTypeList
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsInOutTypeList
    end
  end
end
