object MaterialNormFrm: TMaterialNormFrm
  Left = 90
  Top = 108
  Width = 742
  Height = 542
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
    Width = 734
    Height = 508
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      734
      508)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 480
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
      Left = 159
      Top = 480
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
      Left = 656
      Top = 480
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
      Left = 578
      Top = 480
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
      Top = 480
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
      Top = 480
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
      Top = 32
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MATERIAL_NORM_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = grdKHEnter
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsMaterialNorm
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeColumn = grdKHChangeColumn
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHColumn6: TdxDBGridPopupColumn
        Caption = 'Nguy'#234'n li'#7879'u'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHColumn6CloseUp
        Caption_UTF7 = 'Nguy+AOo-n li+Hsc-u'
      end
      object colMaHH: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 d'#242'ng'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = colMaHHCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
        SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Caption = 'T'#234'n s'#7843'n ph'#7849'm'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        TabStop = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'T+AOo-n s+HqM-n ph+Hqk-m'
      end
      object grdKHColumn7: TdxDBGridColumn
        Caption = 'C'#244'ng '#273'o'#7841'n'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_NOTES'
        Caption_UTF7 = 'C+APQ-ng +ARE-o+HqE-n'
      end
      object grdColSLDM: TdxDBGridCalcColumn
        Caption = 'SL '#272#7883'nh m'#7913'c'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'SL +ARAeyw-nh m+Huk-c'
      end
      object grdColSLPB: TdxDBGridColumn
        Caption = 'SL ph'#226'n b'#7893
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REAL_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'SL ph+AOI-n b+HtU'
      end
      object grdColGTPB: TdxDBGridColumn
        Caption = 'GT ph'#226'n b'#7893
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REAL_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'GT ph+AOI-n b+HtU'
      end
      object grdKHSLTP: TdxDBGridColumn
        Caption = 'SL S'#7843'n xu'#7845't'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOLUONGTPSX'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'SL S+HqM-n xu+HqU-t'
      end
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 106
      Top = 6
      Width = 121
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
      Left = 304
      Top = 6
      Width = 378
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
        object locFormItem9: TdxLayoutItem
          Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh '
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = ' T'#234'n '#273#7889'i t'#432#7907'ng'
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
    Left = 388
    Top = 80
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 420
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsMaterialNorm
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsMaterialNorm
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsMaterialNorm
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsMaterialNorm
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
      Caption = 'Xu'#7845't d'#7919' li'#7879'u ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't d'#7919' li'#7879'u ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't d'#7919' li'#7879'u ra t'#7853'p tin &XML'
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
    object bbtnOne: TdxBarButton
      Caption = 'Xem s'#7921' ph'#226'n b'#7893' tr'#234'n 1 s'#7843'n ph'#7849'm'
      Category = 0
      Hint = 'Xem s'#7921' ph'#226'n b'#7893' tr'#234'n 1 s'#7843'n ph'#7849'm'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbtnOneClick
    end
    object bbtnMany: TdxBarButton
      Caption = 'Xem tr'#234'n s'#7889' l'#432#7907'ng s'#7843'n ph'#7849'm s'#7843'n xu'#7845't'
      Category = 0
      Hint = 'Xem tr'#234'n s'#7889' l'#432#7907'ng s'#7843'n ph'#7849'm s'#7843'n xu'#7845't'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnManyClick
    end
    object bbtnNhoHon: TdxBarButton
      Caption = 'Nh'#7919'ng d'#242'ng '#272#7883'nh m'#7913'c< Th'#7921'c t'#7871
      Category = 0
      Hint = 'Nh'#7919'ng d'#242'ng '#272#7883'nh m'#7913'c< Th'#7921'c t'#7871
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnNhoHonClick
    end
    object bbtnBang: TdxBarButton
      Caption = 'Nh'#7919'ng d'#242'ng '#272#7883'nh m'#7913'c = Th'#7921'c t'#7871
      Category = 0
      Hint = 'Nh'#7919'ng d'#242'ng '#272#7883'nh m'#7913'c = Th'#7921'c t'#7871
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnBangClick
    end
    object bbtnLonHon: TdxBarButton
      Caption = 'Nh'#7919'ng d'#242'ng '#272#7883'nh m'#7913'c > Th'#7921'c t'#7871
      Category = 0
      Hint = 'Nh'#7919'ng d'#242'ng '#272#7883'nh m'#7913'c > Th'#7921'c t'#7871
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnLonHonClick
    end
    object bbtnTatca: TdxBarButton
      Caption = 'Hi'#7875'n th'#7883' t'#7845't c'#7843' c'#225'c d'#242'ng '#273#7883'nh m'#7913'c'
      Category = 0
      Hint = 'Hi'#7875'n th'#7883' t'#7845't c'#7843' c'#225'c d'#242'ng '#273#7883'nh m'#7913'c'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbtnTatcaClick
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
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
        Item = bbtnOne
        Visible = True
      end
      item
        Item = bbtnMany
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnNhoHon
        Visible = True
      end
      item
        Item = bbtnBang
        Visible = True
      end
      item
        Item = bbtnLonHon
        Visible = True
      end
      item
        Item = bbtnTatca
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
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
        Caption = #272#7883'nh m'#7913'c nguy'#234'n v'#7853't li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 104
    Top = 56
  end
  object qryMaterialNorm: TIBOQuery
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
    DatabaseName = 'D:\Ketoan\Acc50\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM MATERIAL_NORM'
      'WHERE'
      '   MATERIAL_NORM_ID = :OLD_MATERIAL_NORM_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE MATERIAL_NORM SET'
      '   MATERIAL_NORM_ID = :MATERIAL_NORM_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   MATERIAL_ID = :MATERIAL_ID,'
      '   MATERIAL_AMOUNT = :MATERIAL_AMOUNT,'
      '   REAL_AMOUNT = :REAL_AMOUNT,'
      '   REAL_VALUE = :REAL_VALUE,'
      '   MATERIAL_NOTES = :MATERIAL_NOTES,'
      '   MAPX = :MAPX,'
      '   MALOAI = :MALOAI,'
      '   SOLUONGTPSX = :SOLUONGTPSX,'
      '   PREAL_AMOUNT = :PREAL_AMOUNT,'
      '   PREAL_VALUE = :PREAL_VALUE,'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID'
      'WHERE'
      '   MATERIAL_NORM_ID = :OLD_MATERIAL_NORM_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO MATERIAL_NORM('
      '   MATERIAL_NORM_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   MATERIAL_ID,'
      '   MATERIAL_AMOUNT,'
      '   REAL_AMOUNT,'
      '   REAL_VALUE,'
      '   MATERIAL_NOTES,'
      '   MAPX,'
      '   MALOAI,'
      '   SOLUONGTPSX,'
      '   PREAL_AMOUNT,'
      '   PREAL_VALUE,'
      '   OBJECT_ID,'
      '   OTYPE_ID)'
      'VALUES ('
      '   :MATERIAL_NORM_ID,'
      '   :PERIOD_ID,'
      '   :MATERIAL_ID,'
      '   :MATERIAL_AMOUNT,'
      '   :REAL_AMOUNT,'
      '   :REAL_VALUE,'
      '   :MATERIAL_NOTES,'
      '   :MAPX,'
      '   :MALOAI,'
      '   :SOLUONGTPSX,'
      '   :PREAL_AMOUNT,'
      '   :PREAL_VALUE,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID)')
    KeyLinks.Strings = (
      'MATERIAL_NORM_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryMaterialNormBeforeEdit
    BeforeDelete = qryMaterialNormBeforeDelete
    BeforeInsert = qryMaterialNormBeforeInsert
    AfterInsert = qryMaterialNormAfterInsert
    BeforePost = qryMaterialNormBeforePost
    OnNewRecord = qryMaterialNormNewRecord
    OnPostError = qryMaterialNormPostError
    SQL.Strings = (
      'SELECT MATERIAL_NORM_ID'
      '     , PERIOD_ID'
      '     , MATERIAL_ID'
      '     , MATERIAL_AMOUNT'
      '     , REAL_AMOUNT'
      '     , REAL_VALUE'
      '     , OBJECT_NAME'
      '     , MATERIAL_NOTES'
      '     , MAPX'
      '     , MALOAI'
      '     , SOLUONGTPSX'
      '     , PREAL_AMOUNT'
      '     , PREAL_VALUE'
      '     , MATERIAL_NORM.OBJECT_ID'
      '     , MATERIAL_NORM.OTYPE_ID'
      'FROM MATERIAL_NORM'
      
        'JOIN OBJECT_LIST on (MATERIAL_NORM.OBJECT_ID=OBJECT_LIST.OBJECT_' +
        'ID '
      '     and MATERIAL_NORM.OTYPE_ID= OBJECT_LIST.OTYPE_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and MAPX=:MAPX and MALOAI=6 AND OBJEC' +
        'T_LIST.OTYPE_ID=2'
      'order by MATERIAL_NORM.OBJECT_ID')
    FieldOptions = []
    Left = 140
    Top = 212
    object qryMaterialNormMATERIAL_NORM_ID: TIntegerField
      FieldName = 'MATERIAL_NORM_ID'
      Required = True
    end
    object qryMaterialNormMALOAI: TSmallintField
      FieldName = 'MALOAI'
    end
    object qryMaterialNormPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryMaterialNormMATERIAL_ID: TWideStringField
      FieldName = 'MATERIAL_ID'
      Required = True
      Size = 30
    end
    object qryMaterialNormOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryMaterialNormMATERIAL_NOTES: TWideStringField
      FieldName = 'MATERIAL_NOTES'
      Size = 126
    end
    object qryMaterialNormMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryMaterialNormMATERIAL_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'MATERIAL_AMOUNT'
    end
    object qryMaterialNormREAL_AMOUNT: TIBOFloatField
      Tag = 1
      FieldName = 'REAL_AMOUNT'
    end
    object qryMaterialNormSOLUONGTPSX: TIBOFloatField
      FieldName = 'SOLUONGTPSX'
    end
    object qryMaterialNormPREAL_AMOUNT: TIBOFloatField
      FieldName = 'PREAL_AMOUNT'
    end
    object qryMaterialNormREAL_VALUE: TIBOFloatField
      FieldName = 'REAL_VALUE'
    end
    object qryMaterialNormPREAL_VALUE: TIBOFloatField
      FieldName = 'PREAL_VALUE'
    end
    object qryMaterialNormOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryMaterialNormOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
  end
  object dsMaterialNorm: TDataSource
    DataSet = qryMaterialNorm
    Left = 140
    Top = 255
  end
end
