object AutoEntryFrm: TAutoEntryFrm
  Left = 206
  Top = 134
  Width = 700
  Height = 503
  HelpContext = 13
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
    Width = 692
    Height = 469
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      692
      469)
    object grdAllocate: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
          Caption = 'Th'#244'ng tin v'#7873' b'#250't to'#225'n'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'AUTO_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = grdAllocateDblClick
      OnKeyDown = grdAllocateKeyDown
      OnMouseUp = grdAllocateMouseUp
      DataSource = dsAutoEntry
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = grdAllocateChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAllocateAUTO_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUTO_ID'
      end
      object grdAllocateFROM_ACCOUNT: TdxDBGridPopupColumn
        Caption = 'T'#7915' t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FROM_ACCOUNT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateFROM_ACCOUNTCloseUp
        Caption_UTF7 = 'T+Hus t+AOA-i kho+HqM-n'
      end
      object grdAllocateTO_ACCOUNT: TdxDBGridPopupColumn
        Caption = #272#7871'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_ACCOUNT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateTO_ACCOUNTCloseUp
        Caption_UTF7 = '+ARAevw-n t+AOA-i kho+HqM-n'
      end
      object grdAllocatePERCENT: TdxDBGridMaskColumn
        Caption = '%'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENT'
      end
      object grdAllocateAUTOTYPE_NAME: TdxDBGridExtLookupColumn
        Caption = 'Lo'#7841'i b'#250't to'#225'n t'#7921' '#273#7897'ng'
        HeaderAlignment = taCenter
        Width = 314
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUTOTYPE_NAME'
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateAUTOTYPE_NAMECloseUp
        OnInitPopup = grdAllocateAUTOTYPE_NAMEInitPopup
        DBGridLayout = dxDBGridLayoutList1Item1
        Caption_UTF7 = 'Lo+HqE-i b+APo-t to+AOE-n t+HvE +AREe2Q-ng'
      end
      object grdAllocateAUTO_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUTO_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 441
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
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 79
      Top = 441
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
    object TntBitBtn3: TElPopupButton
      Left = 165
      Top = 441
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
    object TntBitBtn4: TElPopupButton
      Left = 241
      Top = 441
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
    object TntBitBtn5: TElPopupButton
      Left = 538
      Top = 441
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 6
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 614
      Top = 441
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHeso: TElPopupButton
      Left = 337
      Top = 441
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&H'#7879' s'#7889'/ t'#7927' l'#7879
      TabOrder = 5
      OnClick = btnHesoClick
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
          'Ch'#250' '#253' : C'#7897't % l'#224' ph'#7847'n tr'#259'm s'#7889' d'#432' c'#7911'a t'#7915' t'#224'i kho'#7843'n '#273#432#7907'c x'#7917' l'#253' t'#7841'i' +
          ' th'#7901'i '#273'i'#7875'm th'#7921'c hi'#7879'n b'#250't to'#225'n'
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clBottom
        LookAndFeel = dxLayoutStandardLookAndFeel2
        Control = grdAllocate
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 20
          ShowCaption = False
          Control = btnHeso
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 52
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.TextColor = clRed
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'C'#225'c b'#250't to'#225'n t'#7921' '#273#7897'ng (k'#7871't chuy'#7875'n v'#224' ph'#226'n b'#7893')'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 40
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsAutoEntry
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsAutoEntry
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsAutoEntry
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsAutoEntry
    end
  end
  object qryAutoEntry: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM AUTO_ENTRY'
      'WHERE'
      '   AUTO_ID = :OLD_AUTO_ID')
    EditSQL.Strings = (
      'UPDATE AUTO_ENTRY SET'
      '   AUTO_ID = :AUTO_ID, /*PK*/'
      '   FROM_ACCOUNT = :FROM_ACCOUNT,'
      '   TO_ACCOUNT = :TO_ACCOUNT,'
      '   PERCENT = :PERCENT,'
      '   AUTO_TYPE = :AUTO_TYPE,'
      '   AUTO_NOTE = :AUTO_NOTE'
      'WHERE'
      '   AUTO_ID = :OLD_AUTO_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO AUTO_ENTRY('
      '   AUTO_ID, /*PK*/'
      '   FROM_ACCOUNT,'
      '   TO_ACCOUNT,'
      '   PERCENT,'
      '   AUTO_TYPE,'
      '   AUTO_NOTE)'
      'VALUES ('
      '   :AUTO_ID,'
      '   :FROM_ACCOUNT,'
      '   :TO_ACCOUNT,'
      '   :PERCENT,'
      '   :AUTO_TYPE,'
      '   :AUTO_NOTE)')
    KeyLinks.Strings = (
      'AUTO_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryAutoEntryBeforeEdit
    BeforeDelete = qryAutoEntryBeforeDelete
    BeforeInsert = qryAutoEntryBeforeInsert
    AfterInsert = qryAutoEntryAfterInsert
    BeforePost = qryAutoEntryBeforePost
    OnNewRecord = qryAutoEntryNewRecord
    OnPostError = qryAutoEntryPostError
    SQL.Strings = (
      'SELECT AUTO_ID'
      '     , FROM_ACCOUNT'
      '     , TO_ACCOUNT'
      '     , PERCENT'
      '     , A.AUTO_TYPE'
      '     , AUTO_NOTE'
      '     , AUTOTYPE_NAME'
      'FROM AUTO_ENTRY A'
      'LEFT JOIN AUTO_TYPES B on (A.AUTO_TYPE = B.AUTO_TYPE)'
      'order by AUTO_ID')
    FieldOptions = []
    Left = 173
    Top = 94
    object qryAutoEntryAUTO_ID: TSmallintField
      FieldName = 'AUTO_ID'
      Required = True
    end
    object qryAutoEntryFROM_ACCOUNT: TWideStringField
      FieldName = 'FROM_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryAutoEntryTO_ACCOUNT: TWideStringField
      FieldName = 'TO_ACCOUNT'
      Required = True
      Size = 15
    end
    object qryAutoEntryPERCENT: TIBOFloatField
      FieldName = 'PERCENT'
    end
    object qryAutoEntryAUTO_TYPE: TSmallintField
      FieldName = 'AUTO_TYPE'
      OnChange = qryAutoEntryAUTO_TYPEChange
    end
    object qryAutoEntryAUTO_NOTE: TWideStringField
      FieldName = 'AUTO_NOTE'
      Size = 126
    end
    object qryAutoEntryAUTOTYPE_NAME: TWideStringField
      FieldName = 'AUTOTYPE_NAME'
      Size = 126
    end
  end
  object dsAutoEntry: TDataSource
    DataSet = qryAutoEntry
    Left = 173
    Top = 152
  end
  object qryHeso: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM AUTO_TYPES'
      'WHERE'
      '   AUTO_TYPE = :OLD_AUTO_TYPE')
    EditSQL.Strings = (
      'UPDATE AUTO_TYPES SET'
      '   AUTO_TYPE = :AUTO_TYPE, /*PK*/'
      '   AUTOTYPE_NAME = :AUTOTYPE_NAME'
      'WHERE'
      '   AUTO_TYPE = :OLD_AUTO_TYPE')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO AUTO_TYPES('
      '   AUTO_TYPE, /*PK*/'
      '   AUTOTYPE_NAME)'
      'VALUES ('
      '   :AUTO_TYPE,'
      '   :AUTOTYPE_NAME)')
    KeyLinks.Strings = (
      'AUTO_TYPE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AUTO_TYPE'
      '     , AUTOTYPE_NAME'
      'FROM AUTO_TYPES'
      'Order by AUTO_TYPE')
    FieldOptions = []
    Left = 357
    Top = 150
    object qryHesoAUTO_TYPE: TSmallintField
      FieldName = 'AUTO_TYPE'
      ReadOnly = True
      Required = True
    end
    object qryHesoAUTOTYPE_NAME: TWideStringField
      FieldName = 'AUTOTYPE_NAME'
      Size = 126
    end
  end
  object dsHeso: TDataSource
    DataSet = qryHeso
    Left = 357
    Top = 208
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 272
    Top = 144
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        3F050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094155544F5F545950450D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200C466F6E742E43686172736574070C414E53495F434841525345540A466F
        6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E48656967
        687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C
        650B000A506172656E74466F6E74081042616E64466F6E742E43686172736574
        070F44454641554C545F434841525345540E42616E64466F6E742E436F6C6F72
        070C636C57696E646F77546578740F42616E64466F6E742E48656967687402F5
        0D42616E64466F6E742E4E616D65060D4D532053616E732053657269660E4261
        6E64466F6E742E5374796C650B000A44617461536F7572636507134175746F45
        6E74727946726D2E64734865736F1044656661756C74526F7748656967687402
        140F46696C7465722E43726974657269610A0400000000000000124865616465
        72466F6E742E43686172736574070C414E53495F434841525345541048656164
        6572466F6E742E436F6C6F72070C636C57696E646F7754657874114865616465
        72466F6E742E48656967687402F50F486561646572466F6E742E4E616D650606
        5461686F6D6110486561646572466F6E742E5374796C650B000F4F7074696F6E
        734265686176696F720B0E6564676F4175746F5365617263680E6564676F4472
        61675363726F6C6C0B6564676F45646974696E67136564676F456E7465725368
        6F77456469746F72136564676F496D6D656469617465456469746F720E656467
        6F5461625468726F7567680F6564676F566572745468726F75676800094F7074
        696F6E7344420B116564676F43616E4E617669676174696F6E116564676F436F
        6E6669726D44656C657465126564676F4C6F6164416C6C5265636F7264731065
        64676F557365426F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564
        676F4175746F5769647468136564676F42616E6448656164657257696474680D
        6564676F5573654269746D6170001350726576696577466F6E742E4368617273
        6574070F44454641554C545F434841525345541150726576696577466F6E742E
        436F6C6F720706636C426C75651250726576696577466F6E742E486569676874
        02F51050726576696577466F6E742E4E616D65060D4D532053616E7320536572
        69661150726576696577466F6E742E5374796C650B0000135464784442477269
        644D61736B436F6C756D6E094155544F5F545950450743617074696F6E060353
        74740F486561646572416C69676E6D656E740708746143656E74657205576964
        7468022D0942616E64496E646578020008526F77496E6465780200094669656C
        644E616D6506094155544F5F545950450000135464784442477269644D61736B
        436F6C756D6E0D4155544F545950455F4E414D450743617074696F6E14270000
        004DC3B42074E1BAA3206C6FE1BAA1692062C3BA7420746FC3A16E2074E1BBB1
        20C491E1BB996E670F486561646572416C69676E6D656E740708746143656E74
        65720557696474680351010942616E64496E646578020008526F77496E646578
        0200094669656C644E616D65060D4155544F545950455F4E414D450C43617074
        696F6E5F5554463706364D2B41505120742B48714D206C6F2B4871452D692062
        2B41506F2D7420746F2B414F452D6E20742B487645202B4152456532512D6E67
        000000}
    end
  end
end
