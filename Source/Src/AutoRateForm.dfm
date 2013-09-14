object AutoRateFrm: TAutoRateFrm
  Left = 148
  Top = 122
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
      Top = 27
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'AUTORATE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      TabOrder = 1
      OnKeyDown = grdAllocateKeyDown
      OnMouseUp = grdAllocateMouseUp
      DataSource = dsHeso
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAllocateFROM_OBJECT: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        Caption = 'T'#7915' '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FROM_OBJECT'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateFROM_OBJECTCloseUp
        OnInitPopup = grdAllocateFROM_OBJECTInitPopup
        Caption_UTF7 = 'T+Hus +AREe0Q-i t+AbAe4w-ng'
      end
      object grdAllocateOBJECT_ID: TdxDBGridPopupColumn
        Caption = #272#7871'n '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateOBJECT_IDCloseUp
        OnInitPopup = grdAllocateOBJECT_IDInitPopup
        Caption_UTF7 = '+ARAevw-n +AREe0Q-i t+AbAe4w-ng'
      end
      object grdAllocateOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng '#273#7871'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 158
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng +AREevw-n'
      end
      object grdAllocateTO_FACTOR: TdxDBGridPopupColumn
        Caption = #272#7871'n y'#7871'u t'#7889' 1'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_FACTOR'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateTO_FACTORCloseUp
        OnInitPopup = grdAllocateTO_FACTORInitPopup
        Caption_UTF7 = '+ARAevw-n y+Hr8-u t+HtE 1'
      end
      object grdAllocateTO_FACTOR_2: TdxDBGridPopupColumn
        Caption = #272#7871'n y'#7871'u t'#7889' 2'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_FACTOR_2'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateTO_FACTOR_2CloseUp
        OnInitPopup = grdAllocateTO_FACTOR_2InitPopup
        Caption_UTF7 = '+ARAevw-n y+Hr8-u t+HtE 2'
      end
      object grdAllocateCOEFFICIENT: TdxDBGridMaskColumn
        Caption = 'H'#7879' s'#7889
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COEFFICIENT'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object grdAllocatePTSPB: TdxDBGridCalcColumn
        Caption = 'T'#7917' s'#7889' t'#7927' l'#7879
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COEFFICIENT'
        Caption_UTF7 = 'T+Hu0 s+HtE t+Hvc l+Hsc'
      end
      object grdAllocatePMSPB: TdxDBGridCalcColumn
        Caption = 'M'#7851'u s'#7889' t'#7927' l'#7879
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUTO_VALUE'
        Caption_UTF7 = 'M+Hqs-u s+HtE t+Hvc l+Hsc'
      end
      object grdAllocateAUTO_VALUE: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883' ph'#226'n b'#7893
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUTO_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss ph+AOI-n b+HtU'
      end
      object grdAllocateAUTORATE_ID: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AUTORATE_ID'
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      Cancel = True
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
    object pedtBranch: TdxDBExtLookupEdit
      Left = 595
      Top = 3
      Width = 94
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'BRANCH_ID'
      DataSource = dsComBranch
      OnCloseUp = pedtBranchCloseUp
      OnInitPopup = pedtBranchInitPopup
      DBGridLayout = dxDBGridLayout1
      PickListField = 'BRANCH_ID'
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem8: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = #272#417'n v'#7883
        CaptionOptions.AlignHorz = taCenter
        Control = pedtBranch
        ControlOptions.ShowBorder = False
      end
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clBottom
        ShowCaption = False
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
        Caption = 'H'#7879' s'#7889'/ t'#7927' l'#7879' ph'#226'n b'#7893
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
      DataSource = dsHeso
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsHeso
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsHeso
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsHeso
    end
  end
  object qryHeso: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'AUTO_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\demo.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM AUTO_RATE'
      'WHERE'
      '   AUTORATE_ID = :OLD_AUTORATE_ID AND'
      '   AUTO_ID = :OLD_AUTO_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE AUTO_RATE SET'
      '   AUTORATE_ID = :AUTORATE_ID, /*PK*/'
      '   AUTO_ID = :AUTO_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   COEFFICIENT = :COEFFICIENT,'
      '   AUTO_VALUE = :AUTO_VALUE,'
      '   TO_FACTOR = :TO_FACTOR,'
      '   TO_FACTYPE = :TO_FACTYPE,'
      '   TO_FACTOR_2 = :TO_FACTOR_2,'
      '   TO_FACTYPE_2 = :TO_FACTYPE_2,'
      '   FROM_OBJECT = :FROM_OBJECT,'
      '   FROM_OBJTYPE = :FROM_OBJTYPE'
      'WHERE'
      '   AUTORATE_ID = :OLD_AUTORATE_ID AND'
      '   AUTO_ID = :OLD_AUTO_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO AUTO_RATE('
      '   AUTORATE_ID, /*PK*/'
      '   AUTO_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   COEFFICIENT,'
      '   AUTO_VALUE,'
      '   TO_FACTOR,'
      '   TO_FACTYPE,'
      '   TO_FACTOR_2,'
      '   TO_FACTYPE_2,'
      '   FROM_OBJECT,'
      '   FROM_OBJTYPE)'
      'VALUES ('
      '   :AUTORATE_ID,'
      '   :AUTO_ID,'
      '   :BRANCH_ID,'
      '   :PERIOD_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :COEFFICIENT,'
      '   :AUTO_VALUE,'
      '   :TO_FACTOR,'
      '   :TO_FACTYPE,'
      '   :TO_FACTOR_2,'
      '   :TO_FACTYPE_2,'
      '   :FROM_OBJECT,'
      '   :FROM_OBJTYPE)')
    KeyLinks.Strings = (
      'AUTORATE_ID'
      'AUTO_ID'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryHesoBeforeEdit
    BeforeDelete = qryHesoBeforeDelete
    BeforeInsert = qryHesoBeforeInsert
    AfterInsert = qryHesoAfterInsert
    BeforeOpen = qryHesoBeforeOpen
    AfterOpen = qryHesoAfterOpen
    BeforePost = qryHesoBeforePost
    OnNewRecord = qryHesoNewRecord
    OnPostError = qryHesoPostError
    SQL.Strings = (
      'SELECT A.AUTO_ID'
      '     , A.OBJECT_ID'
      '     , A.OTYPE_ID'
      '     , OBJECT_NAME'
      '     , COEFFICIENT'
      '     , PERIOD_ID'
      '     , AUTO_VALUE'
      '     , TO_FACTOR'
      '     , TO_FACTYPE'
      '     , TO_FACTOR_2'
      '     , TO_FACTYPE_2'
      '     , AUTORATE_ID'
      '     , b.AUTO_TYPE'
      '     , BRANCH_ID'
      '     , FROM_OBJECT     '
      '     , FROM_OBJTYPE'
      'FROM AUTO_RATE A'
      'JOIN auto_entry  B on (b.auto_id = a.auto_id)'
      
        'JOIN OBJECT_LIST O on (A.OBJECT_ID=O.OBJECT_ID and A.OTYPE_ID= O' +
        '.OTYPE_ID)'
      
        '/*LEFT JOIN OBJECT_LIST O4 on (A.TO_OBJECT  =O4.OBJECT_ID and A.' +
        'TO_OBJTYPE = O4.OTYPE_ID)'
      
        'JOIN OBJECT_LIST O5 on (A.TO_FACTOR  =O5.OBJECT_ID and A.TO_FACT' +
        'YPE = O5.OTYPE_ID)'
      
        'JOIN OBJECT_LIST O6 on (A.TO_FACTOR_2=O6.OBJECT_ID and A.TO_FACT' +
        'YPE_2 = O6.OTYPE_ID)*/'
      ''
      
        'where A.AUTO_ID=:AUTO_ID and PERIOD_ID=:PERIOD_ID and branch_id ' +
        '= :branch_id'
      'order by A.OBJECT_ID')
    FieldOptions = []
    Left = 173
    Top = 94
    object qryHesoOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      OnChange = qryHesoOBJECT_IDChange
      Size = 30
    end
    object qryHesoOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryHesoOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryHesoAUTO_ID: TSmallintField
      FieldName = 'AUTO_ID'
      Required = True
    end
    object qryHesoCOEFFICIENT: TIBOFloatField
      FieldName = 'COEFFICIENT'
    end
    object qryHesoPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryHesoAUTO_VALUE: TIBOFloatField
      FieldName = 'AUTO_VALUE'
    end
    object qryHesoTO_FACTYPE: TSmallintField
      FieldName = 'TO_FACTYPE'
    end
    object qryHesoTO_FACTOR_2: TWideStringField
      FieldName = 'TO_FACTOR_2'
      OnChange = qryHesoTO_FACTOR_2Change
      Size = 30
    end
    object qryHesoTO_FACTYPE_2: TSmallintField
      FieldName = 'TO_FACTYPE_2'
    end
    object qryHesoAUTORATE_ID: TSmallintField
      FieldName = 'AUTORATE_ID'
    end
    object qryHesoAUTO_TYPE: TSmallintField
      FieldName = 'AUTO_TYPE'
    end
    object qryHesoBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryHesoFROM_OBJECT: TWideStringField
      FieldName = 'FROM_OBJECT'
      OnChange = qryHesoFROM_OBJECTChange
      Size = 30
    end
    object qryHesoTO_FACTOR: TWideStringField
      FieldName = 'TO_FACTOR'
      OnChange = qryHesoTO_FACTORChange
      Size = 30
    end
    object qryHesoFROM_OBJTYPE: TSmallintField
      FieldName = 'FROM_OBJTYPE'
    end
  end
  object dsHeso: TDataSource
    DataSet = qryHeso
    Left = 173
    Top = 152
  end
  object qryComBranch: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\demo.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM COMPANY_FILE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    EditSQL.Strings = (
      'UPDATE COMPANY_FILE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   FULLNAME = :FULLNAME,'
      '   SHORTNAME = :SHORTNAME,'
      '   ISMIN = :ISMIN,'
      '   PBRANCH_ID = :PBRANCH_ID,'
      '   COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO COMPANY_FILE('
      '   BRANCH_ID, /*PK*/'
      '   FULLNAME,'
      '   SHORTNAME,'
      '   ISMIN,'
      '   PBRANCH_ID)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :FULLNAME,'
      '   :SHORTNAME,'
      '   :ISMIN,'
      '   :PBRANCH_ID)')
    KeyLinks.Strings = (
      'COMPANY_FILE.BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryComBranchBeforeOpen
    AfterOpen = qryComBranchAfterOpen
    SQL.Strings = (
      'SELECT BRANCH_ID'
      '     , FULLNAME'
      '     , SHORTNAME'
      '     , ISMIN'
      '     , PBRANCH_ID'
      '     , COMPANY_ID'
      'FROM COMPANY_FILE '
      'WHERE BRANCH_ID STARTING WITH :BRANCH_ID AND ISMIN =1'
      'order by BRANCH_ID')
    FieldOptions = []
    Left = 610
    Top = 120
    object qryComBranchBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryComBranchFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryComBranchSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 63
    end
    object qryComBranchISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryComBranchPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 6
    end
    object qryComBranchCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
      Required = True
    end
  end
  object dsComBranch: TDataSource
    DataSet = qryComBranch
    Left = 610
    Top = 140
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 582
    Top = 140
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        09060000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094252414E43485F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200C466F6E742E43686172736574070F44454641554C545F43484152534554
        0A466F6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E48
        656967687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E53
        74796C650B000A506172656E74466F6E74081042616E64466F6E742E43686172
        736574070F44454641554C545F434841525345540E42616E64466F6E742E436F
        6C6F72070C636C57696E646F77546578740F42616E64466F6E742E4865696768
        7402F50D42616E64466F6E742E4E616D65060D4D532053616E73205365726966
        0E42616E64466F6E742E5374796C650B000A44617461536F7572636507174175
        746F5261746546726D2E6473436F6D4272616E63680F46696C7465722E437269
        74657269610A040000000000000012486561646572466F6E742E436861727365
        74070F44454641554C545F4348415253455410486561646572466F6E742E436F
        6C6F72070C636C57696E646F775465787411486561646572466F6E742E486569
        67687402F50F486561646572466F6E742E4E616D6506065461686F6D61104865
        61646572466F6E742E5374796C650B000B4C6F6F6B416E644665656C07066C66
        466C6174094F7074696F6E7344420B106564676F43616E63656C4F6E45786974
        0D6564676F43616E44656C6574650D6564676F43616E496E7365727411656467
        6F43616E4E617669676174696F6E116564676F436F6E6669726D44656C657465
        126564676F4C6F6164416C6C5265636F726473106564676F557365426F6F6B6D
        61726B73000B4F7074696F6E73566965770B0D6564676F4175746F5769647468
        0D6564676F5573654269746D6170001350726576696577466F6E742E43686172
        736574070F44454641554C545F434841525345541150726576696577466F6E74
        2E436F6C6F720706636C426C75651250726576696577466F6E742E4865696768
        7402F51050726576696577466F6E742E4E616D65060D4D532053616E73205365
        7269661150726576696577466F6E742E5374796C650B00001354647844424772
        69644D61736B436F6C756D6E094252414E43485F49440743617074696F6E140E
        0000004DC3A320C491C6A16E2076E1BB8B0C466F6E742E43686172736574070F
        44454641554C545F434841525345540A466F6E742E436F6C6F72070C636C5769
        6E646F77546578740B466F6E742E48656967687402F509466F6E742E4E616D65
        06065461686F6D610A466F6E742E5374796C650B000F486561646572416C6967
        6E6D656E740708746143656E74657205576964746802560942616E64496E6465
        78020008526F77496E6465780200094669656C644E616D6506094252414E4348
        5F49440C43617074696F6E5F5554463706154D2B414F4D202B415245426F512D
        6E20762B4873730000135464784442477269644D61736B436F6C756D6E084655
        4C4C4E414D450743617074696F6E141E00000054C3AA6E20C491C6A16E2076E1
        BB8B2028C491E1BAA77920C491E1BBA7290F486561646572416C69676E6D656E
        740708746143656E7465720756697369626C6508055769647468032301094261
        6E64496E646578020008526F77496E6465780200094669656C644E616D650608
        46554C4C4E414D450C43617074696F6E5F55544637062B542B414F6F2D6E202B
        415245426F512D6E20762B48737320282B4152456570772D79202B4152456535
        77290000135464784442477269644D61736B436F6C756D6E0953484F52544E41
        4D450743617074696F6E140F00000054C3AA6E20C491C6A16E2076E1BB8B0F48
        6561646572416C69676E6D656E740708746143656E7465720942616E64496E64
        6578020008526F77496E6465780200094669656C644E616D65060953484F5254
        4E414D450C43617074696F6E5F555446370617542B414F6F2D6E202B41524542
        6F512D6E20762B487373000000}
    end
  end
end
