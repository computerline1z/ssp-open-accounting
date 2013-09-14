object MaterialUnfinishFrm: TMaterialUnfinishFrm
  Left = 137
  Top = 40
  Width = 761
  Height = 570
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
    Width = 753
    Height = 536
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      753
      536)
    object btnCancel: TElPopupButton
      Left = 246
      Top = 508
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
      TabOrder = 5
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 165
      Top = 508
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
      TabOrder = 4
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 675
      Top = 508
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
      Left = 594
      Top = 508
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
      Left = 84
      Top = 508
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
      TabOrder = 3
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 508
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
      TabOrder = 2
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 38
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = 'Nguy'#234'n v'#7853't li'#7879'u'
          Width = 184
        end
        item
          Caption = 'S'#7889' '#273#7847'u k'#7923
          Width = 156
        end
        item
          Caption = 'S'#7889' xu'#7845't d'#249'ng'
          Width = 140
        end
        item
          Caption = 'S'#7889' ph'#226'n b'#7893
          Width = 124
        end
        item
          Caption = 'S'#7889' c'#242'n l'#7841'i'
          Width = 127
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnEnter = grdKHEnter
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsMaterialUnfinish
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      OnChangeColumn = grdKHChangeColumn
      Anchors = [akLeft, akTop, akRight, akBottom]
      object colMaNVL: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = colMaNVLCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Caption = 'T'#234'n nguy'#234'n li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n nguy+AOo-n li+Hsc-u'
      end
      object grdKHColSLDK: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BEGIN_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdKHColGTDK: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BEGIN_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdKHColSLXD: TdxDBGridColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 71
        BandIndex = 2
        RowIndex = 0
        FieldName = 'IN_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdKHColGTXD: TdxDBGridColumn
        Caption = 'Gi'#225' tr'#7883
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 69
        BandIndex = 2
        RowIndex = 0
        FieldName = 'IN_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdKHColSLPB: TdxDBGridColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 58
        BandIndex = 3
        RowIndex = 0
        FieldName = 'ALLOCATE_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdKHColGTPB: TdxDBGridColumn
        Caption = 'Gi'#225' tr'#7883
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 66
        BandIndex = 3
        RowIndex = 0
        FieldName = 'ALLOCATE_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdKHColSLTon: TdxDBGridColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        BandIndex = 4
        RowIndex = 0
        FieldName = 'END_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdKHColGTTon: TdxDBGridColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        BandIndex = 4
        RowIndex = 0
        FieldName = 'END_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 106
      Top = 9
      Width = 148
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = dxPopupEdit1Enter
      OnExit = dxPopupEdit1Exit
      OnChange = dxPopupEdit1Change
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxEdit1: TdxEdit
      Left = 331
      Top = 9
      Width = 450
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
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
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem1: TdxLayoutItem
          Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh '
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
          Control = dxEdit1
          ControlOptions.ShowBorder = False
        end
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
          Control = btnClose
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
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 180
    Top = 200
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsMaterialUnfinish
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsMaterialUnfinish
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsMaterialUnfinish
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsMaterialUnfinish
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Export')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 228
    Top = 68
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton8: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton1Click
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = dxBarButton8
        Visible = True
      end
      item
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = True
    Left = 264
    Top = 68
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
        Caption = 'Th'#244'ng tin v'#7873' nguy'#234'n li'#7879'u d'#7903' dang'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 72
  end
  object qryMaterialUnfinish: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAPX'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '192.168.9.148:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\acc' +
      'ounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM MATERIAL_UNFINISH'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE MATERIAL_UNFINISH SET'
      '   MALOAI = :MALOAI, /*PK*/'
      '   MAPX = :MAPX, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_AMOUNT = :BEGIN_AMOUNT,'
      '   BEGIN_VALUE = :BEGIN_VALUE,'
      '   IN_AMOUNT = :IN_AMOUNT,'
      '   IN_VALUE = :IN_VALUE,'
      '   ALLOCATE_AMOUNT = :ALLOCATE_AMOUNT,'
      '   ALLOCATE_VALUE = :ALLOCATE_VALUE,'
      '   END_AMOUNT = :END_AMOUNT,'
      '   END_VALUE = :END_VALUE'
      'WHERE'
      '   MALOAI = :OLD_MALOAI AND'
      '   MAPX = :OLD_MAPX AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO MATERIAL_UNFINISH('
      '   MALOAI, /*PK*/'
      '   MAPX, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_AMOUNT,'
      '   BEGIN_VALUE,'
      '   IN_AMOUNT,'
      '   IN_VALUE,'
      '   ALLOCATE_AMOUNT,'
      '   ALLOCATE_VALUE,'
      '   END_AMOUNT,'
      '   END_VALUE)'
      'VALUES ('
      '   :MALOAI,'
      '   :MAPX,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :BEGIN_AMOUNT,'
      '   :BEGIN_VALUE,'
      '   :IN_AMOUNT,'
      '   :IN_VALUE,'
      '   :ALLOCATE_AMOUNT,'
      '   :ALLOCATE_VALUE,'
      '   :END_AMOUNT,'
      '   :END_VALUE)')
    KeyLinks.Strings = (
      'PERIOD_ID'
      'MATERIAL_UNFINISH.OBJECT_ID'
      'MATERIAL_UNFINISH.OTYPE_ID'
      'MAPX'
      'MALOAI')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryMaterialUnfinishBeforeEdit
    BeforeDelete = qryMaterialUnfinishBeforeDelete
    BeforeInsert = qryMaterialUnfinishBeforeInsert
    AfterInsert = qryMaterialUnfinishAfterInsert
    BeforePost = qryMaterialUnfinishBeforePost
    OnNewRecord = qryMaterialUnfinishNewRecord
    OnPostError = qryMaterialUnfinishPostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , MAPX'
      '     , MALOAI'
      '     , BEGIN_AMOUNT'
      '     , BEGIN_VALUE'
      '     , OBJECT_NAME'
      '     , IN_AMOUNT'
      '     , IN_VALUE'
      '     , ALLOCATE_AMOUNT'
      '     , ALLOCATE_VALUE'
      '     , MATERIAL_UNFINISH.OBJECT_ID'
      '     , MATERIAL_UNFINISH.OTYPE_ID'
      '     , END_AMOUNT'
      '     , END_VALUE'
      'FROM MATERIAL_UNFINISH'
      
        'JOIN OBJECT_LIST on(MATERIAL_UNFINISH.OBJECT_ID=OBJECT_LIST.OBJE' +
        'CT_ID '
      'and MATERIAL_UNFINISH.OTYPE_ID=OBJECT_LIST.OTYPE_ID)'
      'where PERIOD_ID=:PERIOD_ID and MAPX=:MAPX and MALOAI=6 '
      'and OBJECT_LIST.OTYPE_ID=2'
      'Order by  MATERIAL_UNFINISH.OBJECT_ID')
    FieldOptions = []
    Left = 82
    Top = 196
    object qryMaterialUnfinishMALOAI: TSmallintField
      FieldName = 'MALOAI'
    end
    object qryMaterialUnfinishPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryMaterialUnfinishMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryMaterialUnfinishOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryMaterialUnfinishBEGIN_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'BEGIN_AMOUNT'
    end
    object qryMaterialUnfinishIN_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'IN_AMOUNT'
    end
    object qryMaterialUnfinishALLOCATE_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'ALLOCATE_AMOUNT'
    end
    object qryMaterialUnfinishBEGIN_VALUE: TIBOFloatField
      FieldName = 'BEGIN_VALUE'
    end
    object qryMaterialUnfinishIN_VALUE: TIBOFloatField
      FieldName = 'IN_VALUE'
    end
    object qryMaterialUnfinishALLOCATE_VALUE: TIBOFloatField
      FieldName = 'ALLOCATE_VALUE'
    end
    object qryMaterialUnfinishOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryMaterialUnfinishOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryMaterialUnfinishEND_AMOUNT: TIBOFloatField
      FieldName = 'END_AMOUNT'
      OnChange = qryMaterialUnfinishEND_AMOUNTChange
    end
    object qryMaterialUnfinishEND_VALUE: TIBOFloatField
      FieldName = 'END_VALUE'
    end
  end
  object dsMaterialUnfinish: TDataSource
    DataSet = qryMaterialUnfinish
    Left = 82
    Top = 239
  end
end
