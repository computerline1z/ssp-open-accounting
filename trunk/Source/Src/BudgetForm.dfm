object BudgetFrm: TBudgetFrm
  Left = 185
  Top = 171
  Width = 727
  Height = 535
  HelpContext = 21
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Width = 719
    Height = 501
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBTreeList1: TdxDBTreeList
      Left = 5
      Top = 5
      Width = 448
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BUDGET_NO'
      ParentField = 'PBUDGET_NO'
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      DataSource = dsBudget
      DefaultRowHeight = 21
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = dxDBTreeList1ChangeNode
      object dxDBTreeList1BUDGET_NO: TdxDBTreeListColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' s'#7889' '
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUDGET_NO'
        Caption_UTF7 = 'M+AOM s+HtE '
      end
      object dxDBTreeList1BUDGET_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n '#273'i'#7873'u kho'#7843'n  ng'#226'n s'#225'ch'
        HeaderAlignment = taCenter
        Width = 517
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUDGET_NAME'
        Caption_UTF7 = 'T+AOo-n +ARE-i+HsE-u kho+HqM-n  ng+AOI-n s+AOE-ch'
      end
      object dxDBTreeList1ACCOUNT_ID: TdxDBTreeListPopupColumn
        Caption = 'SHTK'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1ACCOUNT_IDCloseUp
      end
    end
    object btnHelp: TElPopupButton
      Left = 563
      Top = 473
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
      Left = 641
      Top = 473
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
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 473
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
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 81
      Top = 473
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
    object ElPopupButton4: TElPopupButton
      Left = 169
      Top = 473
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
    object ElPopupButton5: TElPopupButton
      Left = 247
      Top = 473
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
        Control = dxDBTreeList1
      end
      object locFormGroup4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Caption = 'ElPopupButton4'
          Offsets.Left = 10
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
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
  object qryBudget: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM BUDGET_TREE'
      'WHERE'
      '   BUDGET_NO = :OLD_BUDGET_NO')
    EditSQL.Strings = (
      'UPDATE BUDGET_TREE SET'
      '   BUDGET_NO = :BUDGET_NO, /*PK*/'
      '   PBUDGET_NO = :PBUDGET_NO,'
      '   BUDGET_NAME = :BUDGET_NAME,'
      '   ACCOUNT_ID = :ACCOUNT_ID,'
      '   DIRECTION = :DIRECTION'
      'WHERE'
      '   BUDGET_NO = :OLD_BUDGET_NO')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO BUDGET_TREE('
      '   BUDGET_NO, /*PK*/'
      '   PBUDGET_NO,'
      '   BUDGET_NAME,'
      '   ACCOUNT_ID,'
      '   DIRECTION)'
      'VALUES ('
      '   :BUDGET_NO,'
      '   :PBUDGET_NO,'
      '   :BUDGET_NAME,'
      '   :ACCOUNT_ID,'
      '   :DIRECTION)')
    KeyLinks.Strings = (
      'BUDGET_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBudgetBeforeEdit
    BeforeDelete = qryBudgetBeforeDelete
    BeforeInsert = qryBudgetBeforeInsert
    AfterInsert = qryBudgetAfterInsert
    BeforePost = qryBudgetBeforePost
    OnNewRecord = qryBudgetNewRecord
    OnPostError = qryBudgetPostError
    OnDeleteError = qryBudgetDeleteError
    SQL.Strings = (
      'SELECT BUDGET_NO'
      '     , PBUDGET_NO'
      '     , BUDGET_NAME'
      '     , ACCOUNT_ID'
      '     , DIRECTION'
      'FROM BUDGET_TREE')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryBudgetBUDGET_NO: TIntegerField
      FieldName = 'BUDGET_NO'
      Required = True
    end
    object qryBudgetPBUDGET_NO: TIntegerField
      FieldName = 'PBUDGET_NO'
    end
    object qryBudgetBUDGET_NAME: TWideStringField
      FieldName = 'BUDGET_NAME'
      Required = True
      Size = 126
    end
    object qryBudgetACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 15
    end
    object qryBudgetDIRECTION: TSmallintField
      FieldName = 'DIRECTION'
    end
  end
  object dsBudget: TDataSource
    DataSet = qryBudget
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
        Caption = 'C'#226'y '#273'i'#7873'u kho'#7843'n ng'#226'n s'#225'ch'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ActionList1: TActionList
    Left = 336
    Top = 56
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsBudget
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsBudget
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsBudget
    end
  end
end
