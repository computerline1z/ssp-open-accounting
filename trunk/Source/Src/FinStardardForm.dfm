object FinStardardFrm: TFinStardardFrm
  Left = 124
  Top = 49
  Width = 739
  Height = 520
  HelpContext = 12
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
    Width = 731
    Height = 486
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      731
      486)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 458
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 159
      Top = 458
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 653
      Top = 458
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
    object BitBtn4: TElPopupButton
      Left = 575
      Top = 458
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
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 458
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 458
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
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
    object grdKH: TdxDBGrid
      Left = 5
      Top = 8
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'STANDARD_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsFinStardard
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = grdKHChangeNode
      OnEditing = grdKHEditing
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHSTANDARD_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STANDARD_ID'
      end
      object grdKHSTANDARD_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n chi ti'#234'u t'#224'i ch'#237'nh'
        HeaderAlignment = taCenter
        Width = 214
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STANDARD_NAME'
        Caption_UTF7 = 'T+AOo-n chi ti+AOo-u t+AOA-i ch+AO0-nh'
      end
      object grdKHSTANDARD_FORMAT: TdxDBGridMaskColumn
        Caption = #272#7883'nh d'#7841'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STANDARD_FORMAT'
        Caption_UTF7 = '+ARAeyw-nh d+HqE-ng'
      end
      object grdKHLOAIKETHOP: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'K'#7871't h'#7907'p'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAIKETHOP'
        Descriptions.WideStrings = (
          'BC'#272'KT / BC'#272'KT'
          'BC'#272'KT / KQH'#272'KD'
          'KQH'#272'KD / BC'#272'KT'
          'KQH'#272'KD / KQH'#272'KD')
        ImageIndexes.WideStrings = (
          'BC'#272'/ BC'#272
          'BC'#272'/ KQH'#272'KD'
          'KQH'#272'KD/ BC'#272
          'KQH'#272'KD/ KQH'#272'KD')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1'
          '2'
          '3')
        Caption_UTF7 = 'K+Hr8-t h+HuM-p'
      end
      object grdKHTUSO_ID: TdxDBGridExtLookupColumn
        Caption = 'T'#7917' s'#7889
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TUSO_ID'
        PopupFormBorderStyle = pbsSimple
        PopupHeight = 300
        PopupWidth = 300
        DBGridLayout = ddpBCD
        Caption_UTF7 = 'T+Hu0 s+HtE'
      end
      object grdKHMAUSO_ID: TdxDBGridExtLookupColumn
        Caption = 'M'#7851'u s'#7889
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAUSO_ID'
        PopupFormBorderStyle = pbsSimple
        PopupHeight = 300
        PopupWidth = 300
        DBGridLayout = ddpBCD
        Caption_UTF7 = 'M+Hqs-u s+HtE'
      end
      object grdKHSTANDARD_VALUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STANDARD_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdKHLANHOM: TdxDBGridCheckColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LANHOM'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object grdKHColumn9: TdxDBGridCheckColumn
        Caption = 'T'#237'nh %'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENABLE_PERCENT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'T+AO0-nh %'
      end
      object grdKHColumn10: TdxDBGridColumn
        Caption = #272#417'n v'#7883' t'#237'nh'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DONVI'
        Caption_UTF7 = '+ARABoQ-n v+Hss t+AO0-nh'
      end
      object grdKHColumn11: TdxDBGridColumn
        Caption = #272#7883'nh d'#7841'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STANDARD_FORMAT'
        Caption_UTF7 = '+ARAeyw-nh d+HqE-ng'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 497
      Top = 458
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'In'
      TabOrder = 5
      OnClick = ElPopupButton1Click
      OnMouseUp = ElPopupButton1MouseUp
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
      end
      object lociKH: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid4'
        ShowCaption = False
        Control = grdKH
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
        object locFormItem4: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnDel
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
        object locFormItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Visible = False
          Control = ElPopupButton1
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
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 396
    Top = 208
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsFinStardard
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsFinStardard
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsFinStardard
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsFinStardard
    end
    object acModify: TAction
      Caption = 'acModify'
      OnExecute = acModifyExecute
    end
    object acPrint: TAction
      Caption = 'acPrint'
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
        Caption = 'C'#225'c ch'#7881' ti'#234'u ph'#226'n t'#237'ch t'#224'i ch'#237'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryFinStardard: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM FIN_STANDARD'
      'WHERE'
      '   STANDARD_ID = :OLD_STANDARD_ID')
    EditSQL.Strings = (
      'UPDATE FIN_STANDARD SET'
      '   STANDARD_ID = :STANDARD_ID, /*PK*/'
      '   STANDARD_NAME = :STANDARD_NAME,'
      '   STANDARD_VALUE = :STANDARD_VALUE,'
      '   TUSO_ID = :TUSO_ID,'
      '   MAUSO_ID = :MAUSO_ID,'
      '   LOAIKETHOP = :LOAIKETHOP,'
      '   LANHOM = :LANHOM,'
      '   ENABLE_PERCENT = :ENABLE_PERCENT,'
      '   DONVI = :DONVI,'
      '   STANDARD_FORMAT = :STANDARD_FORMAT'
      'WHERE'
      '   STANDARD_ID = :OLD_STANDARD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO FIN_STANDARD('
      '   STANDARD_ID, /*PK*/'
      '   STANDARD_NAME,'
      '   STANDARD_VALUE,'
      '   TUSO_ID,'
      '   MAUSO_ID,'
      '   LOAIKETHOP,'
      '   LANHOM,'
      '   ENABLE_PERCENT,'
      '   DONVI,'
      '   STANDARD_FORMAT)'
      'VALUES ('
      '   :STANDARD_ID,'
      '   :STANDARD_NAME,'
      '   :STANDARD_VALUE,'
      '   :TUSO_ID,'
      '   :MAUSO_ID,'
      '   :LOAIKETHOP,'
      '   :LANHOM,'
      '   :ENABLE_PERCENT,'
      '   :DONVI,'
      '   :STANDARD_FORMAT)')
    KeyLinks.Strings = (
      'STANDARD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryFinStardardBeforeEdit
    BeforeDelete = qryFinStardardBeforeDelete
    BeforeInsert = qryFinStardardBeforeInsert
    AfterInsert = qryFinStardardAfterInsert
    BeforePost = qryFinStardardBeforePost
    OnNewRecord = qryFinStardardNewRecord
    OnPostError = qryFinStardardPostError
    SQL.Strings = (
      'SELECT STANDARD_ID'
      '     , STANDARD_NAME'
      '     , STANDARD_VALUE'
      '     , TUSO_ID'
      '     , MAUSO_ID'
      '     , LOAIKETHOP'
      '     , LANHOM'
      '     , ENABLE_PERCENT'
      '     , DONVI'
      '     , STANDARD_FORMAT'
      'FROM FIN_STANDARD'
      'ORDER BY STANDARD_ID')
    FieldOptions = []
    Left = 45
    Top = 68
    object qryFinStardardSTANDARD_ID: TIntegerField
      FieldName = 'STANDARD_ID'
      Required = True
    end
    object qryFinStardardSTANDARD_NAME: TWideStringField
      FieldName = 'STANDARD_NAME'
      Size = 126
    end
    object qryFinStardardSTANDARD_VALUE: TIBOFloatField
      FieldName = 'STANDARD_VALUE'
    end
    object qryFinStardardTUSO_ID: TWideStringField
      FieldName = 'TUSO_ID'
      Size = 6
    end
    object qryFinStardardMAUSO_ID: TWideStringField
      FieldName = 'MAUSO_ID'
      Size = 6
    end
    object qryFinStardardLOAIKETHOP: TSmallintField
      FieldName = 'LOAIKETHOP'
    end
    object qryFinStardardLANHOM: TSmallintField
      FieldName = 'LANHOM'
    end
    object qryFinStardardENABLE_PERCENT: TSmallintField
      FieldName = 'ENABLE_PERCENT'
    end
    object qryFinStardardDONVI: TWideStringField
      FieldName = 'DONVI'
      Size = 15
    end
    object qryFinStardardSTANDARD_FORMAT: TWideStringField
      FieldName = 'STANDARD_FORMAT'
      Size = 30
    end
  end
  object dsFinStardard: TDataSource
    DataSet = qryFinStardard
    Left = 45
    Top = 111
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 296
    Top = 128
    object ddpBCD: TdxDBGridLayout
      Data = {
        95040000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406044D41534F0D53756D6D617279
        47726F7570730E001053756D6D617279536570617261746F7206022C200C466F
        6E742E43686172736574070C414E53495F434841525345540A466F6E742E436F
        6C6F72070C636C57696E646F77546578740B466F6E742E48656967687402F509
        466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B000A50
        6172656E74466F6E74081042616E64466F6E742E43686172736574070F444546
        41554C545F434841525345540E42616E64466F6E742E436F6C6F72070C636C57
        696E646F77546578740F42616E64466F6E742E48656967687402F50D42616E64
        466F6E742E4E616D65060D4D532053616E732053657269660E42616E64466F6E
        742E5374796C650B000A44617461536F75726365071646696E53746172646172
        6446726D2E64734243444B540F46696C7465722E43726974657269610A040000
        000000000012486561646572466F6E742E43686172736574070C414E53495F43
        48415253455410486561646572466F6E742E436F6C6F72070C636C57696E646F
        775465787411486561646572466F6E742E48656967687402F50F486561646572
        466F6E742E4E616D6506065461686F6D6110486561646572466F6E742E537479
        6C650B00094F7074696F6E7344420B106564676F43616E63656C4F6E45786974
        116564676F43616E4E617669676174696F6E116564676F436F6E6669726D4465
        6C657465126564676F4C6F6164416C6C5265636F726473106564676F55736542
        6F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F4175746F57
        69647468136564676F42616E6448656164657257696474680D6564676F557365
        4269746D6170001350726576696577466F6E742E43686172736574070F444546
        41554C545F434841525345541150726576696577466F6E742E436F6C6F720706
        636C426C75651250726576696577466F6E742E48656967687402F51050726576
        696577466F6E742E4E616D65060D4D532053616E732053657269661150726576
        696577466F6E742E5374796C650B0000135464784442477269644D61736B436F
        6C756D6E044D41534F0743617074696F6E14080000004DC3A32073E1BB910F48
        6561646572416C69676E6D656E740708746143656E7465720557696474680248
        0942616E64496E646578020008526F77496E6465780200094669656C644E616D
        6506044D41534F0C43617074696F6E5F55544637060B4D2B414F4D20732B4874
        450000135464784442477269644D61736B436F6C756D6E0354454E0743617074
        696F6E14180000004EE1BB99692064756E67206469E1BB856E206769E1BAA369
        0F486561646572416C69676E6D656E740708746143656E746572055769647468
        0336010942616E64496E646578020008526F77496E6465780200094669656C64
        4E616D65060354454E0C43617074696F6E5F55544637061E4E2B48746B2D6920
        64756E672064692B4873552D6E2067692B48714D2D69000000}
    end
    object ddpBKQ: TdxDBGridLayout
      Data = {
        AE040000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060249440D53756D6D6172794772
        6F7570730E001053756D6D617279536570617261746F7206022C200C466F6E74
        2E43686172736574070F44454641554C545F434841525345540A466F6E742E43
        6F6C6F72070C636C57696E646F77546578740B466F6E742E48656967687402F5
        09466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B000A
        506172656E74466F6E74081042616E64466F6E742E43686172736574070F4445
        4641554C545F434841525345540E42616E64466F6E742E436F6C6F72070C636C
        57696E646F77546578740F42616E64466F6E742E48656967687402F50D42616E
        64466F6E742E4E616D65060D4D532053616E732053657269660E42616E64466F
        6E742E5374796C650B000A44617461536F75726365071746696E537461726461
        726446726D2E64734B5148444B441044656661756C74526F7748656967687402
        140F46696C7465722E43726974657269610A0400000000000000124865616465
        72466F6E742E43686172736574070F44454641554C545F434841525345541048
        6561646572466F6E742E436F6C6F72070C636C57696E646F7754657874114865
        61646572466F6E742E48656967687402F50F486561646572466F6E742E4E616D
        6506065461686F6D6110486561646572466F6E742E5374796C650B00094F7074
        696F6E7344420B106564676F43616E63656C4F6E45786974116564676F43616E
        4E617669676174696F6E116564676F436F6E6669726D44656C65746512656467
        6F4C6F6164416C6C5265636F726473106564676F557365426F6F6B6D61726B73
        000B4F7074696F6E73566965770B0D6564676F4175746F576964746813656467
        6F42616E6448656164657257696474680D6564676F5573654269746D61700013
        50726576696577466F6E742E43686172736574070F44454641554C545F434841
        525345541150726576696577466F6E742E436F6C6F720706636C426C75651250
        726576696577466F6E742E48656967687402F51050726576696577466F6E742E
        4E616D65060D4D532053616E732053657269661150726576696577466F6E742E
        5374796C650B00000F546478444247726964436F6C756D6E044D41534F074361
        7074696F6E14080000004DC3A32073E1BB910F486561646572416C69676E6D65
        6E740708746143656E74657205576964746802480942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D6506044D41534F0C43617074
        696F6E5F55544637060B4D2B414F4D20732B48744500000F5464784442477269
        64436F6C756D6E07434849544945550743617074696F6E141700000054C3AA6E
        206DC3B42074E1BAA320636869207469C3AA750F486561646572416C69676E6D
        656E740708746143656E7465720557696474680336010942616E64496E646578
        020008526F77496E6465780200094669656C644E616D65060743484954494555
        0C43617074696F6E5F555446370620542B414F6F2D6E206D2B41505120742B48
        714D206368692074692B414F6F2D75000000}
    end
  end
  object qryBCDKT: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
        Value = 'SSP'
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ID'
      'BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryFinStardardBeforeEdit
    BeforeDelete = qryFinStardardBeforeDelete
    BeforeInsert = qryFinStardardBeforeInsert
    AfterInsert = qryFinStardardAfterInsert
    BeforeOpen = qryBCDKTBeforeOpen
    OnPostError = qryFinStardardPostError
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TEN'
      '     , MASO'
      '     , BRANCH_ID'
      'FROM RPT_BANGCANDOI where maso is not null '
      'AND BRANCH_ID =:BRANCH_ID'
      'order by ID')
    FieldOptions = []
    Left = 109
    Top = 68
    object qryBCDKTID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryBCDKTMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 6
    end
    object qryBCDKTTEN: TWideStringField
      FieldName = 'TEN'
      Size = 126
    end
    object qryBCDKTMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryBCDKTBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsBCDKT: TDataSource
    DataSet = qryBCDKT
    Left = 109
    Top = 111
  end
  object qryKQHDKD: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryFinStardardBeforeEdit
    BeforeDelete = qryFinStardardBeforeDelete
    BeforeInsert = qryFinStardardBeforeInsert
    AfterInsert = qryFinStardardAfterInsert
    OnPostError = qryFinStardardPostError
    SQL.Strings = (
      'SELECT ID'
      '     , MASO'
      '     , CHITIEU'
      'FROM RPT_KETQUAHDKD_A'
      'where maso is not null order by ID')
    FieldOptions = []
    Left = 157
    Top = 68
    object qryKQHDKDID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryKQHDKDMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryKQHDKDCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 126
    end
  end
  object dsKQHDKD: TDataSource
    DataSet = qryKQHDKD
    Left = 157
    Top = 111
  end
  object qryCTTC: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ID,BC_TENCHITIEU,'
      '    BC_DONVITINH,'
      '    BC_NAMNAY,'
      '    BC_NAMTRUOC,dataformat'
      'FROM SP_BC_TMBCTC_5'
      '')
    FieldOptions = []
    Left = 128
    Top = 248
    object qryCTTCID: TIntegerField
      FieldName = 'ID'
    end
    object qryCTTCBC_TENCHITIEU: TWideStringField
      FieldName = 'BC_TENCHITIEU'
      Size = 126
    end
    object qryCTTCBC_DONVITINH: TWideStringField
      FieldName = 'BC_DONVITINH'
      Size = 30
    end
    object qryCTTCBC_NAMNAY: TIBOFloatField
      FieldName = 'BC_NAMNAY'
    end
    object qryCTTCBC_NAMTRUOC: TIBOFloatField
      FieldName = 'BC_NAMTRUOC'
    end
    object qryCTTCDATAFORMAT: TWideStringField
      FieldName = 'DATAFORMAT'
      Size = 30
    end
  end
  object dsCTTC: TDataSource
    DataSet = qryCTTC
    Left = 136
    Top = 288
  end
  object dsnFinStandard: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptFinStandard
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 296
    Top = 208
  end
  object pplFinStandard: TppDBPipeline
    DataSource = dsCTTC
    UserName = 'lFinStandard'
    Left = 232
    Top = 208
  end
  object rptFinStandard: TppReport
    AutoStop = False
    DataPipeline = pplFinStandard
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Ch?ng t? k? to'#225'n'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    Left = 264
    Top = 208
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'pplFinStandard'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
end
