object MaterialProFrm: TMaterialProFrm
  Left = 225
  Top = 107
  Width = 777
  Height = 535
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
    Width = 769
    Height = 501
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      769
      501)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 473
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
      Top = 473
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
      Left = 691
      Top = 473
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
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 473
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
      Top = 473
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
      Top = 56
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MATERIAL_PRO_ID'
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
      DataSource = dsMaterialNormProj
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
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
      object grdColSLDM: TdxDBGridCalcColumn
        Caption = 'KL d'#7921' to'#225'n'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AMOUNT_ESTIMATE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,#'
        Caption_UTF7 = 'KL d+HvE to+AOE-n'
      end
      object grdColSLPB: TdxDBGridColumn
        Caption = 'KL ph'#225't sinh'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AMOUNT_ARISE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,#'
        Caption_UTF7 = 'KL ph+AOE-t sinh'
      end
      object grdKHSLTP: TdxDBGridColumn
        Caption = #272#417'n gi'#225
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRICE_ESTIMATE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,#'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object grdKHVALUE_ESTIMATE: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Th'#224'nh ti'#7873'n'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALUE_ESTIMATE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
      end
      object grdKHMATERIAL_PRO_ID: TdxDBGridMaskColumn
        Caption = 'STT'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_PRO_ID'
      end
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 55
      Top = 27
      Width = 121
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      OnEnter = dxPopupEdit1Enter
      OnExit = dxPopupEdit1Exit
      OnChange = dxPopupEdit1Change
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxEdit1: TdxEdit
      Left = 252
      Top = 27
      Width = 378
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
    end
    object dxPopupEdit2: TdxPopupEdit
      Left = 55
      Top = 3
      Width = 121
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = dxPopupEdit2Enter
      OnExit = dxPopupEdit2Exit
      OnChange = dxPopupEdit2Change
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit2CloseUp
    end
    object dxEdit2: TdxEdit
      Left = 252
      Top = 3
      Width = 427
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
      object locFormGroup4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locFormItem1: TdxLayoutItem
            Caption = #272#7889'i t'#432#7907'ng'
            Control = dxPopupEdit2
            ControlOptions.ShowBorder = False
          end
          object locFormItem9: TdxLayoutItem
            Caption = 'Y'#7871'u t'#7889
            Control = dxPopupEdit1
            ControlOptions.ShowBorder = False
          end
        end
        object locFormGroup5: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locFormItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#234'n '#272#7889'i t'#432#7907'ng'
            Control = dxEdit2
            ControlOptions.ShowBorder = False
          end
          object locFormItem10: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#234'n y'#7871'u t'#7889
            Control = dxEdit1
            ControlOptions.ShowBorder = False
          end
        end
      end
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
      DataSource = dsMaterialNormProj
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsMaterialNormProj
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsMaterialNormProj
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsMaterialNormProj
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
    end
    object bbtnMany: TdxBarButton
      Caption = 'Xem tr'#234'n s'#7889' l'#432#7907'ng s'#7843'n ph'#7849'm s'#7843'n xu'#7845't'
      Category = 0
      Hint = 'Xem tr'#234'n s'#7889' l'#432#7907'ng s'#7843'n ph'#7849'm s'#7843'n xu'#7845't'
      Visible = ivAlways
      ButtonStyle = bsChecked
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
  object qryMaterialProj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'object_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'otype_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'factor_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ftype_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM MATERIAL_PROJECT'
      'WHERE'
      '   BEGIN_PERIOD_ID = :OLD_BEGIN_PERIOD_ID AND'
      '   MATERIAL_PRO_ID = :OLD_MATERIAL_PRO_ID'
      '')
    EditSQL.Strings = (
      'UPDATE MATERIAL_PROJECT SET'
      '   BEGIN_PERIOD_ID = :BEGIN_PERIOD_ID, /*PK*/'
      '   MATERIAL_PRO_ID = :MATERIAL_PRO_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   FACTOR_ID = :FACTOR_ID,'
      '   FTYPE_ID = :FTYPE_ID,'
      '   MATERIAL_ID = :MATERIAL_ID,'
      '   MTYPE_ID = :MTYPE_ID,'
      '   AMOUNT_ESTIMATE = :AMOUNT_ESTIMATE,'
      '   AMOUNT_ARISE = :AMOUNT_ARISE,'
      '   PRICE_ESTIMATE = :PRICE_ESTIMATE,'
      '   VALUE_ESTIMATE = :VALUE_ESTIMATE'
      'WHERE'
      '   BEGIN_PERIOD_ID = :OLD_BEGIN_PERIOD_ID AND'
      '   MATERIAL_PRO_ID = :OLD_MATERIAL_PRO_ID and'
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO MATERIAL_PROJECT('
      '   BEGIN_PERIOD_ID, /*PK*/'
      '   MATERIAL_PRO_ID, /*PK*/'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   FACTOR_ID,'
      '   FTYPE_ID,'
      '   MATERIAL_ID,'
      '   MTYPE_ID,'
      '   AMOUNT_ESTIMATE,'
      '   AMOUNT_ARISE,'
      '   PRICE_ESTIMATE,'
      '   VALUE_ESTIMATE)'
      'VALUES ('
      '   :BEGIN_PERIOD_ID,'
      '   :MATERIAL_PRO_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :FACTOR_ID,'
      '   :FTYPE_ID,'
      '   :MATERIAL_ID,'
      '   :MTYPE_ID,'
      '   :AMOUNT_ESTIMATE,'
      '   :AMOUNT_ARISE,'
      '   :PRICE_ESTIMATE,'
      '   :VALUE_ESTIMATE)')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryMaterialProjBeforeEdit
    BeforeDelete = qryMaterialProjBeforeDelete
    BeforeInsert = qryMaterialProjBeforeInsert
    AfterInsert = qryMaterialProjAfterInsert
    AfterOpen = qryMaterialProjAfterOpen
    BeforePost = qryMaterialProjBeforePost
    OnNewRecord = qryMaterialProjNewRecord
    OnPostError = qryMaterialProjPostError
    SQL.Strings = (
      'SELECT'
      'BEGIN_PERIOD_ID'
      ',MATERIAL_PRO_ID'
      ',OBJECT_ID'
      ',OTYPE_ID'
      ',FACTOR_ID'
      ',FTYPE_ID'
      ',MATERIAL_ID'
      ',MTYPE_ID'
      ',sum(AMOUNT_ESTIMATE) AMOUNT_ESTIMATE'
      ',sum(AMOUNT_ARISE) AMOUNT_ARISE'
      ',avg(PRICE_ESTIMATE) PRICE_ESTIMATE'
      ',sum(VALUE_ESTIMATE) VALUE_ESTIMATE'
      'FROM material_project'
      'WHERE object_id = :object_id AND otype_id =:otype_id'
      '    AND factor_id = :factor_id AND ftype_id = :ftype_id'
      
        'group by  BEGIN_PERIOD_ID,MATERIAL_PRO_ID,OBJECT_ID,OTYPE_ID,FAC' +
        'TOR_ID,FTYPE_ID,MATERIAL_ID,MTYPE_ID'
      'order by  MATERIAL_ID'
      ''
      '')
    FieldOptions = []
    Left = 140
    Top = 212
    object qryMaterialProjBEGIN_PERIOD_ID: TSmallintField
      FieldName = 'BEGIN_PERIOD_ID'
      Required = True
    end
    object qryMaterialProjMATERIAL_PRO_ID: TSmallintField
      FieldName = 'MATERIAL_PRO_ID'
      Required = True
    end
    object qryMaterialProjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryMaterialProjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryMaterialProjFACTOR_ID: TWideStringField
      FieldName = 'FACTOR_ID'
      Size = 30
    end
    object qryMaterialProjFTYPE_ID: TSmallintField
      FieldName = 'FTYPE_ID'
    end
    object qryMaterialProjMATERIAL_ID: TWideStringField
      FieldName = 'MATERIAL_ID'
      Required = True
      Size = 30
    end
    object qryMaterialProjMTYPE_ID: TSmallintField
      FieldName = 'MTYPE_ID'
      Required = True
    end
    object qryMaterialProjAMOUNT_ESTIMATE: TIBOFloatField
      FieldName = 'AMOUNT_ESTIMATE'
    end
    object qryMaterialProjAMOUNT_ARISE: TIBOFloatField
      FieldName = 'AMOUNT_ARISE'
    end
    object qryMaterialProjPRICE_ESTIMATE: TIBOFloatField
      FieldName = 'PRICE_ESTIMATE'
    end
    object qryMaterialProjVALUE_ESTIMATE: TIBOFloatField
      FieldName = 'VALUE_ESTIMATE'
    end
  end
  object dsMaterialNormProj: TDataSource
    DataSet = qryMaterialProj
    Left = 140
    Top = 239
  end
end
