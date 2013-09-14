object ActicleGroupFrm: TActicleGroupFrm
  Left = 439
  Top = 307
  Width = 541
  Height = 395
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
    Width = 533
    Height = 361
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
      KeyField = 'AGROUP_ID'
      ParentField = 'PAGROUP_ID'
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      OnMouseUp = dxDBTreeList1MouseUp
      DataSource = dsItemGroup
      DefaultRowHeight = 21
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoInvertSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1Column1: TdxDBTreeListColumn
        Caption = 'M'#227' s'#7889' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGROUP_ID'
        Caption_UTF7 = 'M+AOM s+HtE nh+APM-m'
      end
      object dxDBTreeList1Column2: TdxDBTreeListColumn
        Caption = 'T'#234'n di'#7877'n gi'#7843'i c'#7911'a nh'#243'm'
        HeaderAlignment = taCenter
        Width = 309
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGROUP_NAME'
        Caption_UTF7 = 'T+AOo-n di+HsU-n gi+HqM-i c+Huc-a nh+APM-m'
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 333
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm nh'#243'm m'#7899'i ngang h'#224'ng v'#7899'i nh'#243'm hi'#7879'n t'#7841'i'
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
      Left = 149
      Top = 333
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a nh'#243'm hi'#7879'n t'#7841'i'
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
      Left = 222
      Top = 333
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i nh'#7919'ng thay '#273#7893'i'
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
      Left = 295
      Top = 333
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng l'#432'u l'#7841'i nh'#7919'ng thay '#273#7893'i'
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
      Left = 387
      Top = 333
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'Hi'#7875'n th'#7883' th'#244'ng tin tr'#7907' gi'#250'p'
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
      Left = 460
      Top = 333
      Width = 70
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
      Left = 76
      Top = 333
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm nh'#243'm m'#7899'i l'#224' con c'#7911'a nh'#243'm hi'#7879'n t'#7841'i'
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
        object locFormItem15: TdxLayoutItem
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnInsChild
          ControlOptions.ShowBorder = False
        end
        object locFormItem16: TdxLayoutItem
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locFormItem17: TdxLayoutItem
          ShowCaption = False
          Control = btnSave
          ControlOptions.ShowBorder = False
        end
        object locFormItem18: TdxLayoutItem
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
    Left = 304
    Top = 176
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
    object acCusGrp: TAction
      Caption = 'Nh'#227'm kh'#184'ch h'#181'ng'
    end
    object acShowAll: TAction
      Caption = 'Hi'#211'n th'#222' t'#202't c'#182
    end
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsItemGroup
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsItemGroup
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsItemGroup
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng l'#173'u'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsItemGroup
    end
  end
  object qryItemGroup: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ACTICLE_GROUP'
      'WHERE'
      '   AGROUP_ID = :OLD_AGROUP_ID')
    EditSQL.Strings = (
      'UPDATE ACTICLE_GROUP SET'
      '   AGROUP_ID = :AGROUP_ID, /*PK*/'
      '   PAGROUP_ID = :PAGROUP_ID,'
      '   AGROUP_NAME = :AGROUP_NAME'
      'WHERE'
      '   AGROUP_ID = :OLD_AGROUP_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO ACTICLE_GROUP('
      '   AGROUP_ID, /*PK*/'
      '   PAGROUP_ID,'
      '   AGROUP_NAME)'
      'VALUES ('
      '   :AGROUP_ID,'
      '   :PAGROUP_ID,'
      '   :AGROUP_NAME)')
    KeyLinks.Strings = (
      'AGROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryItemGroupBeforeEdit
    BeforeDelete = qryItemGroupBeforeDelete
    BeforeInsert = qryItemGroupBeforeInsert
    AfterInsert = qryItemGroupAfterInsert
    BeforePost = qryItemGroupBeforePost
    OnNewRecord = qryItemGroupNewRecord
    OnPostError = qryItemGroupPostError
    OnDeleteError = qryItemGroupDeleteError
    SQL.Strings = (
      'SELECT AGROUP_ID'
      '     , PAGROUP_ID'
      '     , AGROUP_NAME'
      'FROM ACTICLE_GROUP')
    FieldOptions = []
    Left = 158
    Top = 110
    object qryItemGroupAGROUP_ID: TWideStringField
      FieldName = 'AGROUP_ID'
      Required = True
      Size = 15
    end
    object qryItemGroupPAGROUP_ID: TWideStringField
      FieldName = 'PAGROUP_ID'
      Size = 15
    end
    object qryItemGroupAGROUP_NAME: TWideStringField
      FieldName = 'AGROUP_NAME'
      Size = 126
    end
  end
  object dsItemGroup: TDataSource
    DataSet = qryItemGroup
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
        Caption = 'Ph'#226'n nh'#243'm h'#7841'n m'#7913'c '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 56
    Top = 40
  end
end
