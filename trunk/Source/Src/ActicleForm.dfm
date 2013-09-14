object ActicleFrm: TActicleFrm
  Left = 151
  Top = 67
  Width = 727
  Height = 535
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
      KeyField = 'ACTICLE_ID'
      ParentField = 'PACTICLE_ID'
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      OnMouseUp = dxDBTreeList1MouseUp
      DataSource = dsItem
      DefaultRowHeight = 21
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1Column1: TdxDBTreeListColumn
        Caption = 'M'#7909'c, ti'#7875'u m'#7909'c'
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NO'
        Caption_UTF7 = 'M+HuU-c, ti+HsM-u m+HuU-c'
      end
      object dxDBTreeList1ITEM_ID: TdxDBTreeListMaskColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        TabStop = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBTreeList1Column2: TdxDBTreeListColumn
        Caption = 'T'#234'n di'#7877'n gi'#7843'i'
        HeaderAlignment = taCenter
        Width = 357
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NAME'
        Caption_UTF7 = 'T+AOo-n di+HsU-n gi+HqM-i'
      end
      object dxDBTreeList1Column3: TdxDBTreeListPopupColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGROUP_ID'
        PopupControl = PnlGroup
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column3CloseUp
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object dxDBTreeList1ITEM_LEVEL: TdxDBTreeListMaskColumn
        Caption = 'Level'
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_LEVEL'
      end
      object dxDBTreeList1TKNO: TdxDBTreeListPopupColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1TKNOCloseUp
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBTreeList1TKCO: TdxDBTreeListPopupColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1TKNOCloseUp
        Caption_UTF7 = 'TK C+APM'
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 473
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
      Top = 473
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
      Top = 473
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
      Top = 473
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
      TabOrder = 6
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
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnInsChild: TElPopupButton
      Left = 81
      Top = 473
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
  object PnlGroup: TPanel
    Left = 300
    Top = 136
    Width = 293
    Height = 249
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      293
      249)
    object TreeGroup: TdxDBTreeList
      Left = 0
      Top = 0
      Width = 293
      Height = 224
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'AGROUP_ID'
      ParentField = 'PAGROUP_ID'
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      OnDblClick = TreeGroupDblClick
      OnEnter = TreeGroupEnter
      OnKeyDown = TreeGroupKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'SaigonSoft   '
      BandFont.Style = []
      DataSource = dsGrp
      DefaultRowHeight = 21
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'SaigonSoft   '
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      object TreeGroupColumn1: TdxDBTreeListColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGROUP_ID'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object TreeGroupColumn2: TdxDBTreeListColumn
        Caption = 'T'#234'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 163
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGROUP_NAME'
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
    end
    object btnNewHanmuc: TElPopupButton
      Left = 0
      Top = 225
      Width = 75
      Height = 24
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c nh'#243'm h'#7841'n m'#7913'c kinh ph'#237' (Alt+D)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabStop = False
      TabOrder = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNewHanmucClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object SpeedButton4: TElPopupButton
      Left = 144
      Top = 225
      Width = 75
      Height = 24
      Cursor = crDefault
      Hint = 'Ch'#7885'n h'#7841'n m'#7909'c n'#224'y (Enter)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabStop = False
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancelSel: TElPopupButton
      Left = 218
      Top = 225
      Width = 75
      Height = 24
      Cursor = crDefault
      Hint = 'Ch'#7885'n h'#7841'n m'#7909'c n'#224'y (Enter)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelSelClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
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
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ACTICLE_LIST'
      'WHERE'
      '   ACTICLE_ID = :OLD_ACTICLE_ID')
    EditSQL.Strings = (
      'UPDATE ACTICLE_LIST SET'
      '   ACTICLE_ID = :ACTICLE_ID, /*PK*/'
      '   PACTICLE_ID = :PACTICLE_ID,'
      '   ACTICLE_NO = :ACTICLE_NO,'
      '   AGROUP_ID = :AGROUP_ID,'
      '   ACTICLE_NAME = :ACTICLE_NAME,'
      '   ACTICLE_LEVEL = :ACTICLE_LEVEL,'
      '   TKNO = :TKNO,'
      '   TKCO = :TKCO'
      'WHERE'
      '   ACTICLE_ID = :OLD_ACTICLE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO ACTICLE_LIST('
      '   ACTICLE_ID, /*PK*/'
      '   PACTICLE_ID,'
      '   ACTICLE_NO,'
      '   AGROUP_ID,'
      '   ACTICLE_NAME,'
      '   ACTICLE_LEVEL,'
      '   TKNO,'
      '   TKCO)'
      'VALUES ('
      '   :ACTICLE_ID,'
      '   :PACTICLE_ID,'
      '   :ACTICLE_NO,'
      '   :AGROUP_ID,'
      '   :ACTICLE_NAME,'
      '   :ACTICLE_LEVEL,'
      '   :TKNO,'
      '   :TKCO)')
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryItemBeforeEdit
    BeforeDelete = qryItemBeforeDelete
    AfterDelete = qryItemAfterDelete
    BeforeInsert = qryItemBeforeInsert
    AfterInsert = qryItemAfterInsert
    BeforePost = qryItemBeforePost
    AfterPost = qryItemAfterPost
    OnNewRecord = qryItemNewRecord
    OnPostError = qryItemPostError
    OnDeleteError = qryItemDeleteError
    SQL.Strings = (
      'SELECT ACTICLE_ID'
      '     , PACTICLE_ID'
      '     , ACTICLE_NO'
      '     , AGROUP_ID'
      '     , ACTICLE_NAME'
      '     , ACTICLE_LEVEL'
      '     , TKNO'
      '     , TKCO'
      'FROM ACTICLE_LIST order by ACTICLE_ID')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryItemACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Required = True
      Size = 30
    end
    object qryItemPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryItemACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Required = True
      Size = 15
    end
    object qryItemAGROUP_ID: TWideStringField
      FieldName = 'AGROUP_ID'
      Size = 15
    end
    object qryItemACTICLE_LEVEL: TSmallintField
      FieldName = 'ACTICLE_LEVEL'
    end
    object qryItemTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryItemTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryItemACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 158
    Top = 140
  end
  object qryItemGrp: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'AGROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AGROUP_ID'
      '     , PAGROUP_ID'
      '     , AGROUP_NAME'
      'FROM ACTICLE_GROUP order by AGROUP_ID')
    FieldOptions = []
    Left = 190
    Top = 110
    object qryItemGrpAGROUP_ID: TWideStringField
      FieldName = 'AGROUP_ID'
      Required = True
      Size = 15
    end
    object qryItemGrpPAGROUP_ID: TWideStringField
      FieldName = 'PAGROUP_ID'
      Size = 15
    end
    object qryItemGrpAGROUP_NAME: TWideStringField
      FieldName = 'AGROUP_NAME'
      Size = 126
    end
  end
  object dsGrp: TDataSource
    DataSet = qryItemGrp
    Left = 190
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
        Caption = 'H'#7841'n m'#7913'c kinh ph'#237', ng'#226'n s'#225'ch'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
