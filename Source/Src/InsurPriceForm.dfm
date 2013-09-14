object InsurPriceFrm: TInsurPriceFrm
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
    object dxDBTreeList1: TdxDBTreeList
      Left = 5
      Top = 10
      Width = 448
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PRICE_ID'
      ParentField = 'PPRICE_ID'
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      DataSource = dsItem
      DefaultRowHeight = 21
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1PRICE_NOTE: TdxDBTreeListColumn
        Caption = 'Lo'#7841'i gi'#225
        HeaderAlignment = taCenter
        Width = 301
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRICE_NOTE'
        Caption_UTF7 = 'Lo+HqE-i gi+AOE'
      end
      object dxDBTreeList1PRICE_A: TdxDBTreeListCalcColumn
        Caption = 'Lo'#7841'i A'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRICE_A'
        Caption_UTF7 = 'Lo+HqE-i A'
      end
      object dxDBTreeList1PRICE_B: TdxDBTreeListCalcColumn
        Caption = 'Lo'#7841'i B'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRICE_B'
        Caption_UTF7 = 'Lo+HqE-i B'
      end
      object dxDBTreeList1PRICE_C: TdxDBTreeListCalcColumn
        Caption = 'Lo'#7841'i C'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRICE_C'
        Caption_UTF7 = 'Lo+HqE-i C'
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm kho'#7843'n m'#7909'c m'#7899'i ngang b'#7857'ng v'#7899'i kho'#7843'n m'#7909'c hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 159
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
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSave: TElPopupButton
      Left = 237
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
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 315
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
      TabOrder = 5
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
      TabOrder = 6
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
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnInsChild: TElPopupButton
      Left = 81
      Top = 328
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm kho'#7843'n m'#7909'c m'#7899'i l'#224' con c'#7911'a kho'#7843'n m'#7909'c hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm &con'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInsChildClick
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
        Offsets.Top = 5
        ShowCaption = False
        Control = dxDBTreeList1
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
        object locInsChild: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnInsChild
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
      DataSource = dsItem
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsItem
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsItem
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng l'#173'u'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsItem
    end
  end
  object qryItem: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM INSUR_PRICE'
      'WHERE'
      '   PRICE_ID = :OLD_PRICE_ID')
    EditSQL.Strings = (
      'UPDATE INSUR_PRICE SET'
      '   PRICE_ID = :PRICE_ID, /*PK*/'
      '   PPRICE_ID = :PPRICE_ID,'
      '   PRICE_NOTE = :PRICE_NOTE,'
      '   PRICE_A = :PRICE_A,'
      '   PRICE_B = :PRICE_B,'
      '   PRICE_C = :PRICE_C'
      'WHERE'
      '   PRICE_ID = :OLD_PRICE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO INSUR_PRICE('
      '   PRICE_ID, /*PK*/'
      '   PPRICE_ID,'
      '   PRICE_NOTE,'
      '   PRICE_A,'
      '   PRICE_B,'
      '   PRICE_C)'
      'VALUES ('
      '   :PRICE_ID,'
      '   :PPRICE_ID,'
      '   :PRICE_NOTE,'
      '   :PRICE_A,'
      '   :PRICE_B,'
      '   :PRICE_C)')
    KeyLinks.Strings = (
      'PRICE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryItemBeforeEdit
    BeforeDelete = qryItemBeforeDelete
    BeforeInsert = qryItemBeforeInsert
    AfterInsert = qryItemAfterInsert
    BeforePost = qryItemBeforePost
    OnNewRecord = qryItemNewRecord
    OnPostError = qryItemPostError
    OnDeleteError = qryItemDeleteError
    SQL.Strings = (
      'SELECT PRICE_ID'
      '     , PPRICE_ID'
      '     , PRICE_NOTE'
      '     , PRICE_A'
      '     , PRICE_B'
      '     , PRICE_C'
      'FROM INSUR_PRICE')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryItemPRICE_ID: TSmallintField
      FieldName = 'PRICE_ID'
      Required = True
    end
    object qryItemPPRICE_ID: TSmallintField
      FieldName = 'PPRICE_ID'
    end
    object qryItemPRICE_NOTE: TWideStringField
      FieldName = 'PRICE_NOTE'
      Size = 126
    end
    object qryItemPRICE_A: TIBOFloatField
      FieldName = 'PRICE_A'
    end
    object qryItemPRICE_B: TIBOFloatField
      FieldName = 'PRICE_B'
    end
    object qryItemPRICE_C: TIBOFloatField
      FieldName = 'PRICE_C'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
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
        Caption = 'Bi'#7875'u gi'#225' thu ti'#7873'n B'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
