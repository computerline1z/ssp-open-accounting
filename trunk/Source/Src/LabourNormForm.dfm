object LabourFrm: TLabourFrm
  Left = 238
  Top = 130
  Width = 709
  Height = 515
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
    Width = 701
    Height = 481
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      701
      481)
    object btnCancel: TElPopupButton
      Left = 246
      Top = 453
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
      Top = 453
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
      Left = 623
      Top = 453
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
      Left = 542
      Top = 453
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
      Top = 453
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
      Top = 453
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
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LABOURNORM_ID'
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
      DataSource = dsLabourNorm
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeColumn = grdKHChangeColumn
      Anchors = [akLeft, akTop, akRight, akBottom]
      object colMaHH: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 81
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
        TabStop = False
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n s+HqM-n ph+Hqk-m'
      end
      object grdKHColumn6: TdxDBGridColumn
        Caption = 'C'#244'ng '#273'o'#7841'n'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LABOUR_NOTES'
        Caption_UTF7 = 'C+APQ-ng +ARE-o+HqE-n'
      end
      object grdColumnGTDM: TdxDBGridCalcColumn
        Caption = 'GT '#272#7883'nh m'#7913'c'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NORM_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'GT +ARAeyw-nh m+Huk-c'
      end
      object grdColumnGTPB: TdxDBGridColumn
        Caption = 'GT th'#7853't s'#7921
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REAL_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0'
        Caption_UTF7 = 'GT th+Hq0-t s+HvE'
      end
      object grdKHSLTP: TdxDBGridColumn
        Caption = 'SL S'#7843'n xu'#7845't'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOLUONGTPSX'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'SL S+HqM-n xu+HqU-t'
      end
      object grdKHGTPB: TdxDBGridColumn
        Caption = 'GT Ph'#226'n b'#7893
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PREAL_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'GT Ph+AOI-n b+HtU'
      end
      object grdKHOBJGRP_ID: TdxDBGridColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+APM-m'
      end
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 103
      Top = 9
      Width = 156
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
      Left = 336
      Top = 9
      Width = 327
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
        object locFormItem3: TdxLayoutItem
          Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh'
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
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
    Left = 388
    Top = 80
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
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
      DataSource = dsLabourNorm
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 16469
      DataSource = dsLabourNorm
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsLabourNorm
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsLabourNorm
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
        Caption = #272#7883'nh m'#7913'c nh'#226'n c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryLabourNorm: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAPX'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM LABOUR_NORM'
      'WHERE'
      '   LABOURNORM_ID = :OLD_LABOURNORM_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE LABOUR_NORM SET'
      '   LABOURNORM_ID = :LABOURNORM_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   NORM_VALUE = :NORM_VALUE,'
      '   REAL_VALUE = :REAL_VALUE,'
      '   LABOUR_NOTES = :LABOUR_NOTES,'
      '   MAPX = :MAPX,'
      '   MALOAI = :MALOAI,'
      '   SOLUONGTPSX = :SOLUONGTPSX,'
      '   PREAL_VALUE = :PREAL_VALUE,'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID'
      'WHERE'
      '   LABOURNORM_ID = :OLD_LABOURNORM_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO LABOUR_NORM('
      '   LABOURNORM_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   NORM_VALUE,'
      '   REAL_VALUE,'
      '   LABOUR_NOTES,'
      '   MAPX,'
      '   MALOAI,'
      '   SOLUONGTPSX,'
      '   PREAL_VALUE,'
      '   OBJECT_ID,'
      '   OTYPE_ID)'
      'VALUES ('
      '   :LABOURNORM_ID,'
      '   :PERIOD_ID,'
      '   :NORM_VALUE,'
      '   :REAL_VALUE,'
      '   :LABOUR_NOTES,'
      '   :MAPX,'
      '   :MALOAI,'
      '   :SOLUONGTPSX,'
      '   :PREAL_VALUE,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID)')
    KeyLinks.Strings = (
      'LABOURNORM_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryLabourNormBeforeEdit
    BeforeDelete = qryLabourNormBeforeDelete
    BeforeInsert = qryLabourNormBeforeInsert
    AfterInsert = qryLabourNormAfterInsert
    BeforePost = qryLabourNormBeforePost
    OnNewRecord = qryLabourNormNewRecord
    OnPostError = qryLabourNormPostError
    SQL.Strings = (
      'SELECT LABOURNORM_ID'
      '     , PERIOD_ID'
      '     , NORM_VALUE'
      '     , REAL_VALUE'
      '     , OBJECT_NAME'
      '     , LABOUR_NOTES'
      '     , MAPX'
      '     , MALOAI'
      '     , SOLUONGTPSX'
      '     , PREAL_VALUE'
      '     , LABOUR_NORM.OBJECT_ID'
      '     , LABOUR_NORM.OTYPE_ID'
      '     , OBJGRP_ID'
      'FROM LABOUR_NORM'
      
        'JOIN OBJECT_LIST on (LABOUR_NORM.OBJECT_ID=OBJECT_LIST.OBJECT_ID' +
        ' '
      
        '    and OBJECT_LIST.OTYPE_ID=LABOUR_NORM.OTYPE_ID and OBJECT_LIS' +
        'T.OTYPE_ID=2)  '
      'where PERIOD_ID=:PERIOD_ID and MAPX=:MAPX and MALOAI=6'
      'order by LABOUR_NORM.OBJECT_ID')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryLabourNormLABOURNORM_ID: TIntegerField
      FieldName = 'LABOURNORM_ID'
      Required = True
    end
    object qryLabourNormMALOAI: TSmallintField
      FieldName = 'MALOAI'
    end
    object qryLabourNormPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryLabourNormOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryLabourNormLABOUR_NOTES: TWideStringField
      FieldName = 'LABOUR_NOTES'
      Size = 126
    end
    object qryLabourNormMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryLabourNormSOLUONGTPSX: TIBOFloatField
      FieldName = 'SOLUONGTPSX'
    end
    object qryLabourNormNORM_VALUE: TIBOFloatField
      FieldName = 'NORM_VALUE'
    end
    object qryLabourNormREAL_VALUE: TIBOFloatField
      FieldName = 'REAL_VALUE'
    end
    object qryLabourNormPREAL_VALUE: TIBOFloatField
      FieldName = 'PREAL_VALUE'
    end
    object qryLabourNormOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryLabourNormOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryLabourNormOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Size = 15
    end
  end
  object dsLabourNorm: TDataSource
    DataSet = qryLabourNorm
    Left = 326
    Top = 287
  end
end
