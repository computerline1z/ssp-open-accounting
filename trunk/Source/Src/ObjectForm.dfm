object ObjectFrm: TObjectFrm
  Left = 73
  Top = 69
  Width = 873
  Height = 580
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
  OnActivate = FormActivate
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
    Width = 865
    Height = 546
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object grdObj: TdxDBGrid
      Left = 5
      Top = 5
      Width = 688
      Height = 408
      Bands = <
        item
          Caption = 'Th'#244'ng tin ch'#237'nh'
          Fixed = bfLeft
          Width = 227
        end
        item
          Caption = 'C'#225'c th'#244'ng tin kh'#225'c'
          Width = 568
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      Align = alClient
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = grdObjKeyDown
      OnMouseMove = grdObjMouseMove
      OnMouseUp = grdObjMouseUp
      DataSource = MainDM.dsObject
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      ShowBands = True
      OnEditing = grdObjEditing
      object grdObj_ID: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object grdObj_Name: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'H'#7885' t'#234'n'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n'
      end
      object grdObj_Other: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OTHER_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object grdObj_Sub1: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'B'#7897' ph'#7853'n'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_1'
        Caption_UTF7 = 'B+Htk ph+Hq0-n'
      end
      object grdObj_Sub2: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_2'
        PopupControl = PopupFrm.PnlUnit
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObj_Sub2CloseUp
        OnInitPopup = grdObj_Sub2InitPopup
      end
      object grdObj_Note: TdxDBGridColumn
        Alignment = taLeftJustify
        HeaderAlignment = taCenter
        Sorted = csDown
        Width = 48
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJECT_NOTES'
      end
      object grdObjGrp: TdxDBGridPopupColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjGrpCloseUp
        OnInitPopup = grdObjGrpInitPopup
        GroupIndex = 0
        Caption_UTF7 = 'Nh+APM-m'
      end
      object grdObjAcc: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OACCOUNT_ID'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjAccCloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object grdObjOBJECT_VALUE: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 34
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJECT_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdObjHanTT: TdxDBGridSpinColumn
        Caption = 'H'#7841'n TT'
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DEBT_LEN'
        MaxValue = 1000.000000000000000000
        Caption_UTF7 = 'H+HqE-n TT'
      end
      object grdObjMAKH: TdxDBGridPopupColumn
        Caption = 'Kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'MAKH'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjMAKHCloseUp
        Caption_UTF7 = 'Kh+AOE-ch h+AOA-ng'
      end
      object grdObjCREATE_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y t'#7841'o'
        HeaderAlignment = taCenter
        Width = 43
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CREATE_DATE'
        UseEditMask = True
        Caption_UTF7 = 'Ng+AOA-y t+HqE-o'
      end
      object grdObjStatus: TdxDBGridColumn
        Caption = 'TT'
        HeaderAlignment = taCenter
        Width = 34
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJECT_STATUS'
      end
      object grdObjSUBINFO_3: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_3'
      end
      object grdObjSUBINFO_4: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_4'
      end
      object grdObjSUBINFO_5: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_5'
      end
      object grdObjSUBINFO_6: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_6'
      end
      object grdObjMS_PPXK: TdxDBGridPopupColumn
        Caption = 'PP xu'#7845't kho'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'MS_PPXK'
        PopupAutoSize = False
        PopupControl = PopupFrm.PnlPPXK
        PopupFormBorderStyle = pbsSysPanel
        PopupHeight = 240
        PopupWidth = 320
        OnCloseUp = grdObjMS_PPXKCloseUp
        Caption_UTF7 = 'PP xu+HqU-t kho'
      end
      object grdObjDISCOUNT_DEF: TdxDBGridCalcColumn
        Caption = '% Chi'#7871't kh'#7845'u'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DISCOUNT_DEF'
        Caption_UTF7 = '% Chi+Hr8-t kh+HqU-u'
      end
      object grdObjOTHER_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y t'#7901' khai'
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OTHER_DATE'
        Caption_UTF7 = 'Ng+AOA-y t+Ht0 khai'
      end
      object grdObjOBJECT_HIDE: TdxDBGridCheckColumn
        Caption = #7848'n'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_HIDE'
        ValueChecked = '-1'
        ValueUnchecked = '0'
        Caption_UTF7 = '+Hqg-n'
      end
      object grdObjTONKHOTT: TdxDBGridCalcColumn
        Caption = 'TK t'#7889'i thi'#7875'u'
        HeaderAlignment = taCenter
        Width = 48
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TONKHOTT'
        Caption_UTF7 = 'TK t+HtE-i thi+HsM-u'
      end
      object grdObjOBJREF_ID: TdxDBGridPopupColumn
        Caption = #272#7889'i t'#432#7907'ng 2'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJREF_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjOBJREF_IDCloseUp
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng 2'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 518
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
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 79
      Top = 518
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
    object TntBitBtn3: TElPopupButton
      Left = 160
      Top = 518
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
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 236
      Top = 518
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
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 711
      Top = 518
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 7
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 787
      Top = 518
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
      TabOrder = 8
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnAutoSetOrder: TElPopupButton
      Left = 388
      Top = 518
      Width = 143
      Height = 25
      Cursor = crDefault
      Hint = 
        'D'#7921'a v'#224'o '#273#7883'nh m'#7913'c nguy'#234'n v'#7853't li'#7879'u, thi'#7871't l'#7853'p th'#7913' t'#7921' t'#237'nh gi'#225' th'#224'n' +
        'h'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T'#7921' '#273#7897'ng thi'#7871't l'#7853'p th'#7913' t'#7921' '
      TabOrder = 6
      OnClick = btnAutoSetOrderClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 312
      Top = 518
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Li'#234'n q&uan'
      TabOrder = 5
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSubInfo: TElPopupButton
      Left = 10000
      Top = 10000
      Width = 84
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#244'ng tin &ph'#7909
      TabOrder = 9
      Visible = False
      OnClick = btnSubInfoClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGrd: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        CaptionOptions.Layout = clBottom
        Control = grdObj
      end
      object locFormGroup1: TdxLayoutGroup
        Offsets.Top = 7
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Offsets.Left = 5
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'TntBitBtn7'
          ShowCaption = False
          Control = btnAutoSetOrder
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.ShowBorder = False
        end
      end
    end
    object locbtnSubInfo: TdxLayoutItem
      Caption = 'ElPopupButton2'
      ShowCaption = False
      Control = btnSubInfo
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 376
    Top = 68
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 168
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsert'
      DataSource = MainDM.dsObject
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = MainDM.dsObject
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = MainDM.dsObject
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = MainDM.dsObject
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
    object dxBarButton2: TdxBarButton
      Caption = 'T'#7921' '#273#7897'ng thi'#7871't l'#7853'p th'#7913' t'#7921' '
      Category = 0
      Hint = 'T'#7921' '#273#7897'ng thi'#7871't l'#7853'p th'#7913' t'#7921' '
      Visible = ivNever
      OnClick = dxBarButton2Click
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
      end
      item
        Item = dxBarButton2
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
        Caption = 'Danh s'#225'ch c'#225'c '#273#7889'i t'#432#7907'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 208
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 276
    Top = 144
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        39010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E7402010D53756D6D61727947726F7570730E001053756D6D6172
        79536570617261746F7206022C200A44617461536F7572636507154F626A6563
        7446726D2E44617461536F75726365310F46696C7465722E4372697465726961
        0A040000000000000000135464784442477269644D61736B436F6C756D6E074D
        535F5050584B0942616E64496E646578020008526F77496E6465780200094669
        656C644E616D6506074D535F5050584B0000135464784442477269644D61736B
        436F6C756D6E0854454E5F5050584B0942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D65060854454E5F5050584B000000}
    end
  end
  object IBOQuery1: TIBOQuery
    Params = <>
    DatabaseName = '127.0.0.1:F:\Project\GHD\demo.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MS_PPXK, TEN_PPXK '
      'FROM PHUONGPHAPXUATKHO')
    FieldOptions = []
    Left = 144
    Top = 216
    object IBOQuery1MS_PPXK: TSmallintField
      FieldName = 'MS_PPXK'
      Required = True
    end
    object IBOQuery1TEN_PPXK: TStringField
      FieldName = 'TEN_PPXK'
      Size = 126
    end
  end
  object DataSource1: TDataSource
    DataSet = IBOQuery1
    Left = 144
    Top = 240
  end
  object ActionList2: TActionList
    Left = 366
    Top = 186
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = MainDM.dsObject
    end
  end
end
