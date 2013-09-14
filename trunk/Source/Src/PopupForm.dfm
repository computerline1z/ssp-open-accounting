object PopupFrm: TPopupFrm
  Left = 273
  Top = 33
  Width = 966
  Height = 690
  Caption = 'PopupFrm'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_DocType: TPanel
    Left = 502
    Top = 345
    Width = 217
    Height = 223
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object TreeDocType: TdxDBTreeList
      Left = 0
      Top = 0
      Width = 217
      Height = 223
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOCTYPE_ID'
      ParentField = 'PDOC_TYPE'
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnDblClick = TreeDocTypeDblClick
      OnEnter = TreeDocTypeEnter
      OnKeyDown = TreeDocTypeKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPDocType
      DefaultRowHeight = 20
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      OptionsBehavior = [etoAnsiSort, etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      ShowHeader = False
      TreeLineColor = clGrayText
      object TreeDocType_Name: TdxDBTreeListColumn
        Caption = 'T'#234'n lo'#7841'i phi'#7871'u'
        Width = 234
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i phi+Hr8-u'
      end
    end
  end
  object PnlItem: TPanel
    Left = 482
    Top = 362
    Width = 353
    Height = 259
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    DesignSize = (
      353
      259)
    object btnNewHanmuc: TElPopupButton
      Left = 2
      Top = 232
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c h'#7841'n m'#7913'c kinh ph'#237' (Alt+D)'
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
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object SpeedButton4: TElPopupButton
      Left = 204
      Top = 232
      Width = 75
      Height = 25
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
    object TreeItem: TdxDBTreeList
      Tag = 100
      Left = 0
      Top = 0
      Width = 353
      Height = 231
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACTICLE_ID'
      ParentField = 'PACTICLE_ID'
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      OnDblClick = TreeItemDblClick
      OnEnter = TreeItemEnter
      OnKeyDown = TreeItemKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPActicle
      DefaultRowHeight = 20
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAnsiSort, etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      object TreeItemACTICLE_NO: TdxDBTreeListColumn
        Caption = 'M'#7909'c'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NO'
        Caption_UTF7 = 'M+HuU-c'
      end
      object dxDBTreeListColumn5: TdxDBTreeListColumn
        Caption = 'T'#234'n h'#7841'n m'#7909'c'
        HeaderAlignment = taCenter
        Width = 222
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_NAME'
        Caption_UTF7 = 'T+AOo-n h+HqE-n m+HuU-c'
      end
      object dxDBTreeListColumn4: TdxDBTreeListColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
    end
    object ElPopupButton4: TElPopupButton
      Left = 279
      Top = 232
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton4Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlCommonObj: TPanel
    Left = 11
    Top = 0
    Width = 358
    Height = 257
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    object grdCommonObj: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 358
      Height = 211
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdCommonObjDblClick
      OnEnter = grdCommonObjEnter
      OnKeyDown = grdCommonObjKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPComObj
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      OnChangeNode = grdCommonObjChangeNode
      object grdCommonObjOBJECT_ID: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
      end
      object grdCommonObjOBJECT_NAME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
      end
      object grdCommonObjOTHER_NAME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 604
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_NAME'
      end
      object grdCommonObjSUBINFO_1: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 604
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_1'
      end
      object grdCommonObjSUBINFO_2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_2'
      end
      object grdCommonObjOBJECT_NOTES: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdCommonObjOBJGRP_NAME: TdxDBGridMaskColumn
        Caption = 'Nh'#243'm'
        Sorted = csUp
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+APM-m'
      end
    end
    object PnlButton: TElPanel
      Left = 0
      Top = 232
      Width = 358
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      MouseCapture = False
      TabOrder = 1
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object btnSelCommonObj: TElPopupButton
        Left = 208
        Top = 0
        Width = 75
        Height = 25
        Cursor = crDefault
        Hint = 'Ch'#7885'n '#273#7889'i t'#432#7907'ng n'#224'y (Enter)'
        DrawDefaultFrame = False
        Flat = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Ch'#7885'n'
        TabStop = False
        TabOrder = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = btnSelCommonObjClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnObjArise: TElPopupButton
        Left = 77
        Top = 0
        Width = 75
        Height = 25
        Cursor = crDefault
        Hint = 'G'#7885'i danh m'#7909'c '#273#7889'i t'#432#7907'ng (Alt+D)'
        DrawDefaultFrame = False
        Flat = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&S'#7889' d'#432
        TabStop = False
        TabOrder = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = btnObjAriseClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnNoSelComObj: TElPopupButton
        Left = 282
        Top = 0
        Width = 75
        Height = 25
        Cursor = crDefault
        Hint = 'Ch'#7885'n '#273#7889'i t'#432#7907'ng n'#224'y (Enter)'
        DrawDefaultFrame = False
        Flat = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&B'#7887' qua'
        TabStop = False
        TabOrder = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnNoSelComObjClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnCommonObj: TElPopupButton
        Left = 1
        Top = 0
        Width = 75
        Height = 25
        Cursor = crDefault
        Hint = 'G'#7885'i danh m'#7909'c '#273#7889'i t'#432#7907'ng (Alt+D)'
        DrawDefaultFrame = False
        Flat = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Danh m'#7909'c'
        TabStop = False
        TabOrder = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = btnCommonObjClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
    end
    object PnlBalance: TElPanel
      Left = 0
      Top = 211
      Width = 358
      Height = 21
      Align = alBottom
      BevelOuter = bvNone
      MouseCapture = False
      TabOrder = 2
      Visible = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object ElLabel1: TElLabel
        Left = 8
        Top = 3
        Width = 97
        Height = 13
        Caption = 'Th'#244'ng tin v'#7873' s'#7889' d'#432' :'
      end
      object dxDBEdit2: TdxDBEdit
        Left = 235
        Top = 0
        Width = 121
        Color = clBtnFace
        Style.BorderStyle = xbsFlat
        TabOrder = 0
        DataField = 'VALUE_2'
        DataSource = MainDM.dsGetBalObj
      end
      object dxDBEdit1: TdxDBEdit
        Left = 113
        Top = 0
        Width = 121
        Color = clBtnFace
        Style.BorderStyle = xbsFlat
        TabOrder = 1
        DataField = 'VALUE_1'
        DataSource = MainDM.dsGetBalObj
      end
    end
  end
  object PnlObjGrp: TPanel
    Left = 16
    Top = 29
    Width = 314
    Height = 249
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    DesignSize = (
      314
      249)
    object btnObjGrp: TElPopupButton
      Left = 1
      Top = 224
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
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
      OnClick = btnObjGrpClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSelObjGrp: TElPopupButton
      Left = 163
      Top = 224
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n kho h'#224'ng n'#224'y (Enter)'
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
      OnClick = btnSelObjGrpClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdObjGrp: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 314
      Height = 223
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJGRP_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdObjGrpDblClick
      OnEnter = grdObjGrpEnter
      OnKeyDown = grdObjGrpKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPObjGrp
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'M'#227' nh'#243'm'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'OBJGRP_ID'
        DisableFilter = True
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 211
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'OBJGRP_NAME'
        DisableFilter = True
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
    end
    object btnCancelObjGrp: TElPopupButton
      Left = 238
      Top = 224
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelObjGrpClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlWork: TPanel
    Left = 510
    Top = 34
    Width = 369
    Height = 215
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
    DesignSize = (
      369
      215)
    object ElPopupButton1: TElPopupButton
      Left = 1
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
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
      OnClick = ElPopupButton1Click
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 218
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n kho h'#224'ng n'#224'y (Enter)'
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
      OnClick = ElPopupButton2Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdCongtrinh: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 369
      Height = 189
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WORK_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdCongtrinhDblClick
      OnEnter = grdCongtrinhEnter
      OnKeyDown = grdCongtrinhKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPWork
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdCongtrinhWORK_ID: TdxDBGridMaskColumn
        Caption = 'M'#227
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_ID'
        Caption_UTF7 = 'M+AOM'
      end
      object dxDBGridColumn4: TdxDBGridColumn
        Caption = 'T'#234'n c'#244'ng tr'#236'nh'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 215
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'WORK_NAME'
        DisableFilter = True
        Caption_UTF7 = 'T+AOo-n c+APQ-ng tr+AOw-nh'
      end
      object dxDBGridColumn5: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk'
      end
    end
    object ElPopupButton5: TElPopupButton
      Left = 293
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton5Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnWorkArise: TElPopupButton
      Left = 78
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem t'#7891'n'
      TabStop = False
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnWorkAriseClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlBudget: TPanel
    Left = 608
    Top = 2
    Width = 321
    Height = 243
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    DesignSize = (
      321
      243)
    object btnBudgetList: TElPopupButton
      Left = 1
      Top = 217
      Width = 70
      Height = 24
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c t'#224'i kho'#7843'n (Alt+D)'
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
      OnClick = btnBudgetListClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSelBudget: TElPopupButton
      Left = 182
      Top = 217
      Width = 70
      Height = 24
      Cursor = crDefault
      Hint = 'Ch'#7885'n t'#224'i kho'#7843'n n'#224'y (Enter)'
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
      OnClick = btnSelBudgetClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TreeBudget: TdxDBTreeList
      Tag = 100
      Left = 0
      Top = 0
      Width = 321
      Height = 215
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BUDGET_NO'
      ParentField = 'PBUDGET_NO'
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      OnDblClick = TreeBudgetDblClick
      OnEnter = TreeBudgetEnter
      OnKeyDown = TreeBudgetKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPBudget
      DefaultRowHeight = 20
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAnsiSort, etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      object dxDBTreeListColumn1: TdxDBTreeListColumn
        Caption = 'M'#227' s'#7889
        DisableDragging = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUDGET_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBTreeListColumn3: TdxDBTreeListColumn
        Caption = 'T'#234'n '#273'i'#7873'u kho'#7843'n'
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 234
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BUDGET_NAME'
        Caption_UTF7 = 'T+AOo-n +ARE-i+HsE-u kho+HqM-n'
      end
    end
    object btnCancelBudget: TElPopupButton
      Left = 252
      Top = 217
      Width = 70
      Height = 24
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelBudgetClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlUnit: TPanel
    Left = 62
    Top = 112
    Width = 285
    Height = 215
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Visible = False
    DesignSize = (
      285
      215)
    object btnUnitList: TElPopupButton
      Left = 1
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
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
      OnClick = btnUnitListClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSelectUnit: TElPopupButton
      Left = 134
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n kho h'#224'ng n'#224'y (Enter)'
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
      OnClick = btnSelectUnitClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridUnit: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 285
      Height = 187
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'UNIT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = gridUnitDblClick
      OnEnter = gridUnitEnter
      OnKeyDown = gridUnitKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsUnit
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      object gridUnitUNIT_ID: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' '#273#417'n v'#7883' t'#237'nh'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIT_ID'
        Caption_UTF7 = 'M+AOM +AREBoQ-n v+Hss t+AO0-nh'
      end
      object gridUnitUNIT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n '#273#417'n v'#7883' t'#237'nh'
        HeaderAlignment = taCenter
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss t+AO0-nh'
      end
    end
    object btnCancelUnit: TElPopupButton
      Left = 209
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelUnitClick
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlTK: TPanel
    Left = 364
    Top = 256
    Width = 311
    Height = 221
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    DesignSize = (
      311
      221)
    object PnlPPXK: TPanel
      Left = 174
      Top = -8
      Width = 311
      Height = 223
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      DesignSize = (
        311
        223)
      object ElPopupButton14: TElPopupButton
        Left = 168
        Top = 197
        Width = 70
        Height = 24
        Cursor = crDefault
        Hint = 'Ch'#7885'n t'#224'i kho'#7843'n n'#224'y (Enter)'
        DrawDefaultFrame = False
        Flat = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Ch'#7885'n'
        TabStop = False
        TabOrder = 0
        ParentShowHint = False
        ShowHint = True
        Anchors = [akRight, akBottom]
        Action = acPPXK
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object ElPopupButton15: TElPopupButton
        Left = 238
        Top = 197
        Width = 70
        Height = 24
        Cursor = crDefault
        Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
        DrawDefaultFrame = False
        Flat = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&B'#7887' qua'
        TabStop = False
        TabOrder = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = ElPopupButton15Click
        Anchors = [akRight, akBottom]
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object grdPPXK: TdxDBGrid
        Left = 0
        Top = 0
        Width = 311
        Height = 177
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MS_PPXK'
        SummaryGroups = <>
        SummarySeparator = ', '
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnDblClick = grdPPXKDblClick
        OnEnter = grdPPXKEnter
        OnKeyDown = grdPPXKKeyDown
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = []
        DataSource = MainDM.dsPPXK
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        object grdPPXKMS_PPXK: TdxDBGridMaskColumn
          Caption = 'ID'
          HeaderAlignment = taCenter
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MS_PPXK'
        end
        object grdPPXKTEN_PPXK: TdxDBGridMaskColumn
          Caption = 'Ph'#432#417'ng ph'#225'p xu'#7845't kho'
          HeaderAlignment = taCenter
          Width = 232
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEN_PPXK'
          Caption_UTF7 = 'Ph+AbABoQ-ng ph+AOE-p xu+HqU-t kho'
        end
      end
    end
    object btnNewAcc: TElPopupButton
      Left = 1
      Top = 195
      Width = 70
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c t'#224'i kho'#7843'n (Alt+D)'
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
      OnClick = btnNewAccClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object SpeedButton17: TElPopupButton
      Left = 168
      Top = 195
      Width = 70
      Height = 24
      Cursor = crDefault
      Hint = 'Ch'#7885'n t'#224'i kho'#7843'n n'#224'y (Enter)'
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
      Anchors = [akRight, akBottom]
      Action = acSelTK
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object tlAcc: TdxDBTreeList
      Tag = 100
      Left = 0
      Top = 0
      Width = 311
      Height = 193
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACCOUNT_ID'
      ParentField = 'PACCOUNT_ID'
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      OnDblClick = tlAccDblClick
      OnEnter = tlAccEnter
      OnKeyDown = tlAccKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPAcc
      DefaultRowHeight = 20
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAnsiSort, etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      object tlAccColumn1: TdxDBTreeListColumn
        Caption = '  S'#7889' hi'#7879'u'
        DisableDragging = True
        Sorted = csUp
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        Caption_UTF7 = '  S+HtE hi+Hsc-u'
      end
      object tlAccColumn2: TdxDBTreeListColumn
        Caption = '  T'#234'n t'#224'i kho'#7843'n'
        DisableDragging = True
        Width = 234
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = '  T+AOo-n t+AOA-i kho+HqM-n'
      end
      object tlAccENGLISH_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n ti'#7871'ng Anh'
        HeaderAlignment = taCenter
        Visible = False
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENGLISH_NAME'
        Caption_UTF7 = 'T+AOo-n ti+Hr8-ng Anh'
      end
      object tlAccACC_MAP_ID: TdxDBTreeListColumn
        Caption = 'TK Mapping'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACC_MAP_ID'
      end
    end
    object ElPopupButton3: TElPopupButton
      Left = 238
      Top = 195
      Width = 70
      Height = 24
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton3Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnAccArise: TElPopupButton
      Left = 71
      Top = 195
      Width = 70
      Height = 24
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c t'#224'i kho'#7843'n (Alt+D)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem t'#7891'n'
      TabStop = False
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAccAriseClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlWare: TPanel
    Left = 34
    Top = 352
    Width = 369
    Height = 215
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
      369
      215)
    object btnNewWare: TElPopupButton
      Left = 1
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
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
      OnClick = btnNewWareClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object SpeedButton23: TElPopupButton
      Left = 218
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n kho h'#224'ng n'#224'y (Enter)'
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
      Anchors = [akRight, akBottom]
      Action = acSelWare
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdWare: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 369
      Height = 189
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WAREHOUSE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdWareDblClick
      OnEnter = grdWareEnter
      OnKeyDown = grdWareKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPWare
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      OnChangeNode = grdWareChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdWareMaso: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'WAREHOUSE_ID'
        DisableFilter = True
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object grdWareTen: TdxDBGridColumn
        Caption = 'T'#234'n kho h'#224'ng'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 189
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'WAREHOUSE_NAME'
        DisableFilter = True
        Caption_UTF7 = 'T+AOo-n kho h+AOA-ng'
      end
      object grdWareDiachi: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAREHOUSE_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk'
      end
    end
    object ElPopupButton7: TElPopupButton
      Left = 293
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton7Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnWareArise: TElPopupButton
      Left = 76
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem t'#7891'n'
      TabStop = False
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnWareAriseClick
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object PnlInvType: TPanel
    Left = 452
    Top = -10
    Width = 340
    Height = 215
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Visible = False
    DesignSize = (
      340
      215)
    object ElPopupButton6: TElPopupButton
      Left = 1
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
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
      OnClick = ElPopupButton6Click
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 189
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n kho h'#224'ng n'#224'y (Enter)'
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
      OnClick = ElPopupButton8Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdInvType: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 340
      Height = 189
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'INVTYPE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdInvTypeDblClick
      OnEnter = grdInvTypeEnter
      OnKeyDown = grdInvTypeKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsPInvType
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdInvTypeINVTYPE_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVTYPE_ID'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object grdInvTypeINVTYPE_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n lo'#7841'i ho'#225' '#273#417'n'
        HeaderAlignment = taCenter
        Width = 269
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVTYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i ho+AOE +AREBoQ-n'
      end
    end
    object ElPopupButton9: TElPopupButton
      Left = 264
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton9Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object grdNgoaite: TdxDBGrid
    Left = 574
    Top = 394
    Width = 257
    Height = 206
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'CURRENCY_ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnDblClick = grdNgoaiteDblClick
    OnEnter = grdNgoaiteEnter
    OnKeyDown = grdNgoaiteKeyDown
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Arial'
    BandFont.Style = []
    DataSource = MainDM.dsPCurrency
    DefaultRowHeight = 22
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Arial'
    PreviewFont.Style = []
    object dxDBGridColumn7: TdxDBGridColumn
      Caption = 'M'#227' ti'#7873'n t'#7879
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 105
      BandIndex = 0
      RowIndex = 0
      DisableGrouping = True
      FieldName = 'CURRENCY_ID'
      DisableFilter = True
      Caption_UTF7 = 'M+AOM ti+HsE-n t+Hsc'
    end
    object dxDBGridColumn8: TdxDBGridColumn
      Caption = 'T'#234'n ti'#7873'n t'#7879
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 192
      BandIndex = 0
      RowIndex = 0
      DisableGrouping = True
      FieldName = 'CURRENCY_NAME'
      DisableFilter = True
      Caption_UTF7 = 'T+AOo-n ti+HsE-n t+Hsc'
    end
  end
  object pnlBranch: TPanel
    Left = 504
    Top = 389
    Width = 343
    Height = 224
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
    object grdBranch: TdxDBTreeList
      Tag = 100
      Left = 0
      Top = 0
      Width = 343
      Height = 224
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BRANCH_ID'
      ParentField = 'PBRANCH_ID'
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnDblClick = grdBranchDblClick
      OnEnter = grdBranchEnter
      OnKeyDown = grdBranchKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsBranch
      DefaultRowHeight = 20
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAnsiSort, etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      object grdBranchBRANCH_ID: TdxDBTreeListMaskColumn
        Caption = #272#417'n v'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object grdBranchFULLNAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n '#273#7847'y d'#7911
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 208
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULLNAME'
        Caption_UTF7 = 'T+AOo-n +AREepw-y d+Huc'
      end
      object grdBranchPBRANCH_ID: TdxDBTreeListMaskColumn
        DisableEditor = True
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PBRANCH_ID'
      end
      object grdBranchSHORTNAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n vi'#7871't t'#7855't'
        HeaderAlignment = taCenter
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHORTNAME'
        Caption_UTF7 = 'T+AOo-n vi+Hr8-t t+Hq8-t'
      end
    end
  end
  object pnlVATList: TPanel
    Left = 619
    Top = 416
    Width = 250
    Height = 145
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Visible = False
    object grdVATList: TdxDBGrid
      Left = 0
      Top = 0
      Width = 250
      Height = 145
      Bands = <
        item
        end>
      DefaultLayout = True
      KeyField = 'VAT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = grdVATListDblClick
      OnKeyDown = grdVATListKeyDown
      DataSource = MainDM.dsVATList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object grdVATListVAT_ID: TdxDBGridMaskColumn
        Caption = 'STT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_ID'
      end
      object grdVATListVAT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n lo'#7841'i'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i'
      end
      object grdVATListVAT_PER: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = '%'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_PER'
      end
      object grdVATListOTHER_ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Kh'#225'c'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_ID'
        Caption_UTF7 = 'Kh+AOE-c'
      end
      object grdVATListMETHOD_ID: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_ID'
      end
    end
  end
  object PnlDMDinhmuc: TPanel
    Left = 434
    Top = 24
    Width = 369
    Height = 215
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Visible = False
    DesignSize = (
      369
      215)
    object ElPopupButton10: TElPopupButton
      Left = 1
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'G'#7885'i danh m'#7909'c kho h'#224'ng (Alt+D)'
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
      OnClick = ElPopupButton10Click
      Anchors = [akLeft, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton11: TElPopupButton
      Left = 218
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n kho h'#224'ng n'#224'y (Enter)'
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
      OnClick = ElPopupButton11Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdDMDinhmuc: TdxDBGrid
      Tag = 100
      Left = 0
      Top = 0
      Width = 369
      Height = 189
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MATERIAL_NORM_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = grdDMDinhmucDblClick
      OnEnter = grdDMDinhmucEnter
      OnKeyDown = grdWareKeyDown
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = MainDM.dsDMDinhmuc
      DefaultRowHeight = 22
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdDMDinhmucMATERIAL_NORM_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' '#273#7883'nh m'#7913'c'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_NORM_ID'
        Caption_UTF7 = 'M+AOM +AREeyw-nh m+Huk-c'
      end
      object grdDMDinhmucMAPX: TdxDBGridMaskColumn
        Caption = 'M'#227' '#272'TGT'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAPX'
        Caption_UTF7 = 'M+AOM +ARA-TGT'
      end
      object grdDMDinhmucOBJECT_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' SP'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        Caption_UTF7 = 'M+AOM SP'
      end
      object grdDMDinhmucMATERIAL_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' NVL'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL_ID'
        Caption_UTF7 = 'M+AOM NVL'
      end
    end
    object ElPopupButton12: TElPopupButton
      Left = 293
      Top = 190
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'B'#7887' qua kh'#244'ng ch'#7885'n (Esc)'
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabStop = False
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton12Click
      Anchors = [akRight, akBottom]
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object grdobjectlist: TdxDBGrid
    Tag = 100
    Left = 568
    Top = 304
    Width = 278
    Height = 240
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'OBJECT_ID'
    PartialLoadBufferCount = 500
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alCustom
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    OnDblClick = grdobjectlistDblClick
    OnKeyDown = grdobjectlistKeyDown
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Arial'
    BandFont.Style = []
    DefaultRowHeight = 22
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Arial'
    PreviewFont.Style = []
    object dxDBGridMaskColumn1: TdxDBGridMaskColumn
      Caption = 'M'#227' s'#7889
      HeaderAlignment = taCenter
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJECT_ID'
      Caption_UTF7 = 'M+AOM s+HtE'
    end
    object dxDBGridMaskColumn2: TdxDBGridMaskColumn
      Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
      HeaderAlignment = taCenter
      Width = 139
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJECT_NAME'
      Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
    end
    object dxDBGridMaskColumn3: TdxDBGridMaskColumn
      Caption = 'Nh'#243'm'
      Sorted = csUp
      Visible = False
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJGRP_ID'
      GroupIndex = 1
      Caption_UTF7 = 'Nh+APM-m'
    end
    object grdCommonObjSHORT_NAME: TdxDBGridMaskColumn
      Caption = 'T'#234'n lo'#7841'i'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHORT_NAME'
      GroupIndex = 0
      Caption_UTF7 = 'T+AOo-n lo+HqE-i'
    end
  end
  object pnlObjectList: TdxDBGrid
    Tag = 100
    Left = 360
    Top = 368
    Width = 281
    Height = 224
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'OBJECT_ID'
    PartialLoadBufferCount = 500
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alCustom
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    OnDblClick = grdobjectlistDblClick
    OnKeyDown = grdobjectlistKeyDown
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Arial'
    BandFont.Style = []
    DefaultRowHeight = 22
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Arial'
    PreviewFont.Style = []
    object dxDBGridMaskColumn4: TdxDBGridMaskColumn
      Caption = 'M'#227' s'#7889
      HeaderAlignment = taCenter
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJECT_ID'
      Caption_UTF7 = 'M+AOM s+HtE'
    end
    object dxDBGridMaskColumn5: TdxDBGridMaskColumn
      Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
      HeaderAlignment = taCenter
      Width = 139
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJECT_NAME'
      Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
    end
    object dxDBGridMaskColumn6: TdxDBGridMaskColumn
      Caption = 'Nh'#243'm'
      Sorted = csUp
      Visible = False
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJGRP_ID'
      GroupIndex = 1
      Caption_UTF7 = 'Nh+APM-m'
    end
    object dxDBGridMaskColumn7: TdxDBGridMaskColumn
      Caption = 'T'#234'n lo'#7841'i'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHORT_NAME'
      GroupIndex = 0
      Caption_UTF7 = 'T+AOo-n lo+HqE-i'
    end
  end
  object ActionList1: TActionList
    Left = 908
    Top = 310
    object acSelObj: TAction
      Category = 'SeleteObj'
      Caption = '&Ch'#228'n'
    end
    object acSelTK: TAction
      Category = 'SeleteObj'
      Caption = '&Ch'#228'n'
      OnExecute = acSelTKExecute
    end
    object acSelWare: TAction
      Category = 'SeleteObj'
      Caption = '&Ch'#228'n'
      OnExecute = acSelWareExecute
    end
    object acNoSelObj: TAction
      Category = 'NoSeleteObj'
      Caption = '&Kh'#171'ng'
    end
    object acNoselTK: TAction
      Category = 'NoSeleteObj'
      Caption = '&Kh'#171'ng'
      OnExecute = acNoselTKExecute
    end
    object acNoSelWare: TAction
      Category = 'NoSeleteObj'
      Caption = '&Kh'#171'ng'
      OnExecute = acNoSelWareExecute
    end
    object acPPXK: TAction
      Category = 'SeleteObj'
      Caption = '&Ch'#228'n'
      OnExecute = acPPXKExecute
    end
  end
end
