object AccOptFrm: TAccOptFrm
  Left = 327
  Top = 229
  Width = 490
  Height = 339
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
    Width = 482
    Height = 305
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
      KeyField = 'OPTION_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsAccOpt
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGrid1OPTION_ID: TdxDBGridMaskColumn
        Caption = 'STT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OPTION_ID'
      end
      object dxDBGrid1OPTION_NOTE: TdxDBGridMaskColumn
        Caption = 'Di'#7877'n gi'#7843'i, t'#234'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 336
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OPTION_NOTE'
        Caption_UTF7 = 'Di+HsU-n gi+HqM-i, t+AOo-n t+AOA-i kho+HqM-n'
      end
      object dxDBGrid1ACCOUNT_ID: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1ACCOUNT_IDCloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object dxDBGrid1GROUP_NAME: TdxDBGridMaskColumn
        Caption = 'Nh'#243'm'
        Sorted = csUp
        Visible = False
        Width = 447
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+APM-m'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 79
      Top = 277
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
      Top = 277
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
      Left = 404
      Top = 277
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
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = TntBitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn7: TElPopupButton
      Left = 328
      Top = 277
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
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = TntBitBtn7Click
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
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        LookAndFeel = dxLayoutStandardLookAndFeel1
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
        Caption = 'C'#225'c t'#224'i kho'#7843'n m'#7863'c '#273#7883'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryAccOpt: TIBOQuery
    Params = <>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ACCOUNT_OPT'
      'WHERE'
      '   OPTION_ID = :OLD_OPTION_ID')
    EditSQL.Strings = (
      'UPDATE ACCOUNT_OPT SET'
      '   OPTION_ID = :OPTION_ID, /*PK*/'
      '   ACCOUNT_ID = :ACCOUNT_ID,'
      '   OPTION_NOTE = :OPTION_NOTE'
      'WHERE'
      '   OPTION_ID = :OLD_OPTION_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO ACCOUNT_OPT('
      '   OPTION_ID, /*PK*/'
      '   ACCOUNT_ID,'
      '   OPTION_NOTE)'
      'VALUES ('
      '   :OPTION_ID,'
      '   :ACCOUNT_ID,'
      '   :OPTION_NOTE)')
    KeyLinks.Strings = (
      'OPTION_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryAccOptBeforeEdit
    BeforeInsert = qryAccOptBeforeInsert
    AfterInsert = qryAccOptAfterInsert
    BeforePost = qryAccOptBeforePost
    OnPostError = qryAccOptPostError
    SQL.Strings = (
      'SELECT OPTION_ID'
      '     , ACCOUNT_ID'
      '     , OPTION_NOTE'
      '     , GROUP_NAME'
      'FROM ACCOUNT_OPT order by OPTION_ID')
    FieldOptions = []
    Left = 75
    Top = 64
    object qryAccOptOPTION_ID: TSmallintField
      FieldName = 'OPTION_ID'
      Required = True
    end
    object qryAccOptOPTION_NOTE: TWideStringField
      FieldName = 'OPTION_NOTE'
      Size = 126
    end
    object qryAccOptACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryAccOptGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 63
    end
  end
  object dsAccOpt: TDataSource
    DataSet = qryAccOpt
    Left = 75
    Top = 101
  end
  object ActionList1: TActionList
    Left = 304
    Top = 72
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsAccOpt
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsAccOpt
    end
  end
end
