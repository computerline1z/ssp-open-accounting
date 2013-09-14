object OutTypeFrm: TOutTypeFrm
  Left = 327
  Top = 229
  HelpContext = 21
  BorderStyle = bsDialog
  ClientHeight = 339
  ClientWidth = 515
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
    Width = 515
    Height = 339
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object ElLabel1: TElLabel
      Left = 3
      Top = 281
      Width = 497
      Height = 26
      Caption = 
        'TK Gi'#225' v'#7889'n : L'#224' t'#224'i kho'#7843'n n'#7907' khi xu'#7845't h'#224'ng v'#7853'n chuy'#7875'n b'#7883' m'#7845't, ha' +
        'y kh'#225'ch h'#224'ng thu'#234' b'#7883' h'#432' h'#7887'ng m'#7845't m'#225't L'#432'u '#253' : Khi b'#7883' m'#7845't c'#361'ng ph'#7843 +
        'i nh'#7853'p v'#7873' kho v'#224' t'#7915' kho xu'#7845't ra ghi C'#243' "TK C'#243'"  v'#224' n'#7907' "TK Gi'#225' v'#7889 +
        'n"'
      WordWrap = True
    end
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
      KeyField = 'OUT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      DataSource = dsOutTypeList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGrid1OUT_ID: TdxDBGridMaskColumn
        Caption = 'Th'#7913' t'#7921
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUT_ID'
        Caption_UTF7 = 'Th+Huk t+HvE'
      end
      object dxDBGrid1Column4: TdxDBGridPopupColumn
        Alignment = taCenter
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column4CloseUp
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1Column5: TdxDBGridPopupColumn
        Alignment = taCenter
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column4CloseUp
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBGrid1Column6: TdxDBGridPopupColumn
        Caption = 'TK Gi'#225' v'#7889'n'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKGIAVON'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column4CloseUp
        Caption_UTF7 = 'TK Gi+AOE v+HtE-n'
      end
      object dxDBGrid1Column7: TdxDBGridPopupColumn
        Caption = 'TK Kh'#7845'u hao'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKHAUHAO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1Column4CloseUp
        Caption_UTF7 = 'TK Kh+HqU-u hao'
      end
      object dxDBGrid1Column1: TdxDBTreeListColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUT_NAME'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 231
      Top = 311
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
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 155
      Top = 311
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
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 437
      Top = 311
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
      Left = 361
      Top = 311
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
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 311
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
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 3
      Top = 311
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
      Action = acIns
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
        Caption = 
          'TK Gi'#225' v'#7889'n : L'#224' t'#224'i kho'#7843'n n'#7907' khi xu'#7845't h'#224'ng v'#7853'n chuy'#7875'n b'#7883' m'#7845't, ha' +
          'y kh'#225'ch h'#224'ng thu'#234' b'#7883' h'#432' h'#7887'ng m'#7845't m'#225't'
        CaptionOptions.AlignVert = tavBottom
        CaptionOptions.Layout = clBottom
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormItem3: TdxLayoutItem
        Caption = 'Khi'
        CaptionOptions.AlignVert = tavBottom
        CaptionOptions.Layout = clBottom
        ShowCaption = False
        Control = ElLabel1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 3
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem7: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
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
        Caption = 'Thi'#7871't l'#7853'p '#273#244' '#432'u ti'#234'n t'#224'i kho'#7843'n khi xu'#7845't cho thu'#234
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryOutTypeList: TIBOQuery
    Params = <>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM OUT_TYPE'
      'WHERE'
      '   OUT_ID = :OLD_OUT_ID')
    EditSQL.Strings = (
      'UPDATE OUT_TYPE SET'
      '   OUT_ID = :OUT_ID, /*PK*/'
      '   OUT_NAME = :OUT_NAME,'
      '   DEBIT_ACC = :DEBIT_ACC,'
      '   CREDIT_ACC = :CREDIT_ACC,'
      '   TKGIAVON = :TKGIAVON,'
      '   TKHAUHAO = :TKHAUHAO'
      'WHERE'
      '   OUT_ID = :OLD_OUT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO OUT_TYPE('
      '   OUT_ID, /*PK*/'
      '   OUT_NAME,'
      '   DEBIT_ACC,'
      '   CREDIT_ACC,'
      '   TKGIAVON,'
      '   TKHAUHAO)'
      'VALUES ('
      '   :OUT_ID,'
      '   :OUT_NAME,'
      '   :DEBIT_ACC,'
      '   :CREDIT_ACC,'
      '   :TKGIAVON,'
      '   :TKHAUHAO)')
    KeyLinks.Strings = (
      'OUT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryOutTypeListBeforeEdit
    BeforeDelete = qryOutTypeListBeforeDelete
    BeforeInsert = qryOutTypeListBeforeInsert
    AfterInsert = qryOutTypeListAfterInsert
    BeforePost = qryOutTypeListBeforePost
    OnPostError = qryOutTypeListPostError
    SQL.Strings = (
      'SELECT OUT_ID'
      '     , OUT_NAME'
      '     , DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , TKGIAVON'
      '     , TKHAUHAO'
      'FROM OUT_TYPE'
      'order by OUT_ID')
    FieldOptions = []
    Left = 75
    Top = 72
    object qryOutTypeListOUT_ID: TSmallintField
      FieldName = 'OUT_ID'
      Required = True
    end
    object qryOutTypeListOUT_NAME: TWideStringField
      FieldName = 'OUT_NAME'
      Size = 126
    end
    object qryOutTypeListDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryOutTypeListCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryOutTypeListTKGIAVON: TWideStringField
      FieldName = 'TKGIAVON'
      Required = True
      Size = 15
    end
    object qryOutTypeListTKHAUHAO: TWideStringField
      FieldName = 'TKHAUHAO'
      Size = 15
    end
  end
  object dsOutTypeList: TDataSource
    DataSet = qryOutTypeList
    Left = 75
    Top = 101
  end
  object ActionList1: TActionList
    Left = 304
    Top = 72
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsOutTypeList
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsOutTypeList
    end
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acIns'
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
    end
  end
end
