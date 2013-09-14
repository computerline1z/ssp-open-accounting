object ObjectTypeFrm: TObjectTypeFrm
  Left = 175
  Top = 120
  HelpContext = 19
  BorderStyle = bsDialog
  ClientHeight = 507
  ClientWidth = 683
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
    Width = 683
    Height = 507
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      683
      507)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 625
      Height = 220
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OTYPE_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsObjectType
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Sizing = False
        TabStop = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTYPE_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object grdColShortName: TdxDBGridColumn
        Caption = 'T'#234'n g'#7885'i'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHORT_NAME'
        Caption_UTF7 = 'T+AOo-n g+Hs0-i'
      end
      object grdColName: TdxDBGridColumn
        Caption = 'Di'#7877'n gi'#7843'i lo'#7841'i '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 229
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTYPE_NAME'
        Caption_UTF7 = 'Di+HsU-n gi+HqM-i lo+HqE-i +AREe0Q-i t+AbAe4w-ng'
      end
      object grdColGroup: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NAME'
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
      object dxDBGrid1OTYPE_NOTE: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'Ghi ch'#250
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'OTYPE_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dxDBEdit1: TdxDBEdit
      Left = 479
      Top = 291
      Width = 188
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 12
      DataField = 'SUB1_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit2: TdxDBEdit
      Left = 161
      Top = 291
      Width = 123
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'ID_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit3: TdxDBEdit
      Left = 479
      Top = 313
      Width = 188
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 13
      DataField = 'SUB2_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit4: TdxDBEdit
      Left = 161
      Top = 335
      Width = 123
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      DataField = 'OTHER_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit5: TdxDBEdit
      Left = 161
      Top = 313
      Width = 123
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      DataField = 'NAME_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit6: TdxDBEdit
      Left = 161
      Top = 423
      Width = 188
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      DataField = 'NOTE_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object btnPhannhom: TElPopupButton
      Left = 509
      Top = 247
      Width = 85
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Ph'#226'n &nh'#243'm'
      TabOrder = 2
      OnClick = btnPhannhomClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDM: TElPopupButton
      Left = 423
      Top = 247
      Width = 85
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 1
      OnClick = btnDMClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBExtLookupEdit1: TdxDBExtLookupEdit
      Left = 479
      Top = 423
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 18
      DataField = 'TENDTTC'
      DataSource = MainDM.dsObjectType
      PopupAutoSize = True
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBExtLookupEdit1CloseUp
      OnInitPopup = dxDBExtLookupEdit1InitPopup
      DBGridLayout = dxDBGridLayoutList1Item1
    end
    object dxDBEdit7: TdxDBEdit
      Left = 161
      Top = 357
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      DataField = 'DATE_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit8: TdxDBEdit
      Left = 161
      Top = 379
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      DataField = 'VALUE_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object btnAdd: TElPopupButton
      Left = 3
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 20
      OnClick = btnAddClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 79
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 21
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 165
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 22
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 241
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 23
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 529
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 24
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 605
      Top = 479
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
      TabOrder = 25
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit9: TdxDBEdit
      Left = 161
      Top = 401
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      DataField = 'INT_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit10: TdxDBEdit
      Left = 479
      Top = 335
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 14
      DataField = 'SUB3_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit11: TdxDBEdit
      Left = 479
      Top = 357
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 15
      DataField = 'SUB4_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit12: TdxDBEdit
      Left = 479
      Top = 379
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 16
      DataField = 'SUB5_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object dxDBEdit13: TdxDBEdit
      Left = 479
      Top = 401
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 17
      DataField = 'SUB6_CAPTION'
      DataSource = MainDM.dsObjectType
    end
    object ElPopupButton1: TElPopupButton
      Left = 595
      Top = 247
      Width = 85
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#244'ng tin kh'#225'c'
      TabOrder = 3
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit14: TdxDBEdit
      Left = 161
      Top = 445
      Width = 187
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      DataField = 'ID_FORMAT'
      DataSource = MainDM.dsObjectType
    end
    object dxDBExtLookupEdit2: TdxDBExtLookupEdit
      Left = 479
      Top = 445
      Width = 190
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 19
      DataField = 'TENDTTC2'
      DataSource = MainDM.dsObjectType
      PopupAutoSize = True
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBExtLookupEdit2CloseUp
      OnInitPopup = dxDBExtLookupEdit1InitPopup
      DBGridLayout = dxDBGridLayoutList1Item1
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 
          'G'#7885'i danh m'#7909'c t'#432#417'ng '#7913'ng (Ph'#237'm t'#7855't l'#224' Ctrl+D Ho'#7863'c Double Click l'#234'n' +
          ' t'#234'n trong danh s'#225'ch)'
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.AlignVert = tavBottom
        CaptionOptions.Layout = clBottom
        LookAndFeel = dxLayoutStandardLookAndFeel2
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup5: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = btnDM
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locGroup: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnPhannhom
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem24: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object locFormGroup4: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = #272#7883'nh ngh'#297'a ti'#234'u '#273#7873' c'#7911'a c'#225'c c'#7897't '
          LayoutDirection = ldHorizontal
          object locFormGroup3: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locFormItem4: TdxLayoutItem
              Caption = 'C'#7897't m'#227' '#273#7889'i t'#432#7907'ng (B'#7855't bu'#7897'c)'
              Control = dxDBEdit2
              ControlOptions.ShowBorder = False
            end
            object locFormItem7: TdxLayoutItem
              Caption = 'C'#7897't t'#234'n '#273#7889'i t'#432#7907'ng '
              Control = dxDBEdit5
              ControlOptions.ShowBorder = False
            end
            object locFormItem6: TdxLayoutItem
              Caption = 'C'#7897't t'#234'n g'#7885'i kh'#225'c'
              Control = dxDBEdit4
              ControlOptions.ShowBorder = False
            end
            object locFormItem13: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ki'#7875'u ng'#224'y '
              Control = dxDBEdit7
              ControlOptions.ShowBorder = False
            end
            object locFormItem14: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ki'#7875'u s'#7889' th'#7921'c'
              Control = dxDBEdit8
              ControlOptions.ShowBorder = False
            end
            object locFormItem19: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ki'#7875'u s'#7889' nguy'#234'n'
              Control = dxDBEdit9
              ControlOptions.ShowBorder = False
            end
            object locFormItem8: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ghi ch'#250
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
            object locFormItem25: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              Caption = 'D'#7841'ng m'#227' s'#7889' ph'#225't sinh t'#7921' '#273#7897'ng'
              Control = dxDBEdit14
              ControlOptions.ShowBorder = False
            end
          end
          object locFormGroup2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Offsets.Left = 5
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locFormItem3: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ph'#7909' th'#7913' 1'
              Control = dxDBEdit1
              ControlOptions.ShowBorder = False
            end
            object locFormItem5: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ph'#7909' th'#7913' 2'
              Control = dxDBEdit3
              ControlOptions.ShowBorder = False
            end
            object locFormItem20: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ph'#7909' th'#7913' 3'
              Control = dxDBEdit10
              ControlOptions.ShowBorder = False
            end
            object locFormItem21: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ph'#7909' th'#7913' 4'
              Control = dxDBEdit11
              ControlOptions.ShowBorder = False
            end
            object locFormItem22: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ph'#7909' th'#7913' 5'
              Control = dxDBEdit12
              ControlOptions.ShowBorder = False
            end
            object locFormItem23: TdxLayoutItem
              Caption = 'C'#7897't th'#244'ng tin ph'#7909' th'#7913' 6'
              Control = dxDBEdit13
              ControlOptions.ShowBorder = False
            end
            object locFormItem12: TdxLayoutItem
              Caption = 'Lo'#7841'i '#273#7889'i t'#432#7907'ng li'#234'n quan'
              Control = dxDBExtLookupEdit1
              ControlOptions.ShowBorder = False
            end
            object locFormItem26: TdxLayoutItem
              Caption = 'Lo'#7841'i '#273#7889'i t'#432#7907'ng tham chi'#7871'u'
              Control = dxDBExtLookupEdit2
              ControlOptions.ShowBorder = False
            end
          end
        end
        object locFormGroup7: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem2: TdxLayoutItem
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.AlignVert = tavBottom
            CaptionOptions.Layout = clBottom
            ShowCaption = False
            Control = btnAdd
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem9: TdxLayoutItem
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.AlignVert = tavBottom
            CaptionOptions.Layout = clBottom
            ShowCaption = False
            Control = TntBitBtn2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem15: TdxLayoutItem
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.AlignVert = tavBottom
            CaptionOptions.Layout = clBottom
            Offsets.Left = 10
            ShowCaption = False
            Control = TntBitBtn3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem16: TdxLayoutItem
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.AlignVert = tavBottom
            CaptionOptions.Layout = clBottom
            ShowCaption = False
            Control = TntBitBtn4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem17: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.AlignVert = tavBottom
            CaptionOptions.Layout = clBottom
            ShowCaption = False
            Control = TntBitBtn5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem18: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.AlignVert = tavBottom
            CaptionOptions.Layout = clBottom
            ShowCaption = False
            Control = TntBitBtn6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object locFormItem11: TdxLayoutItem
      Caption = 'New Item'
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 344
    Top = 112
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
    object dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.HotTrack = True
      GroupOptions.CaptionOptions.TextColor = clBlue
      ItemOptions.CaptionOptions.HotTrack = True
      ItemOptions.CaptionOptions.TextColor = clBlue
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
        Caption = 'Ph'#226'n lo'#7841'i c'#225'c '#273#7889'i t'#432#7907'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 336
    Top = 112
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 376
    Top = 400
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        10050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406084F545950455F49440D53756D
        6D61727947726F7570730E001053756D6D617279536570617261746F7206022C
        200C466F6E742E43686172736574070C414E53495F434841525345540A466F6E
        742E436F6C6F72070C636C57696E646F77546578740B466F6E742E4865696768
        7402F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C65
        0B000A506172656E74466F6E74081042616E64466F6E742E4368617273657407
        0F44454641554C545F434841525345540E42616E64466F6E742E436F6C6F7207
        0C636C57696E646F77546578740F42616E64466F6E742E48656967687402F50D
        42616E64466F6E742E4E616D65060D4D532053616E732053657269660E42616E
        64466F6E742E5374796C650B000A44617461536F7572636507104D61696E444D
        2E64734F626A547970651044656661756C74526F7748656967687402130F4669
        6C7465722E43726974657269610A040000000000000012486561646572466F6E
        742E43686172736574070C414E53495F4348415253455410486561646572466F
        6E742E436F6C6F72070C636C57696E646F775465787411486561646572466F6E
        742E48656967687402F50F486561646572466F6E742E4E616D6506065461686F
        6D6110486561646572466F6E742E5374796C650B00094F7074696F6E7344420B
        106564676F43616E63656C4F6E457869740D6564676F43616E44656C6574650D
        6564676F43616E496E73657274116564676F43616E4E617669676174696F6E11
        6564676F436F6E6669726D44656C657465126564676F4C6F6164416C6C526563
        6F726473106564676F557365426F6F6B6D61726B73000B4F7074696F6E735669
        65770B0D6564676F4175746F5769647468136564676F42616E64486561646572
        57696474680D6564676F5573654269746D6170001350726576696577466F6E74
        2E43686172736574070F44454641554C545F4348415253455411507265766965
        77466F6E742E436F6C6F720706636C426C75651250726576696577466F6E742E
        48656967687402F51050726576696577466F6E742E4E616D65060D4D53205361
        6E732053657269661150726576696577466F6E742E5374796C650B0000135464
        784442477269644D61736B436F6C756D6E0A53484F52545F4E414D4507436170
        74696F6E141400000054C3AA6E20C491E1BB91692074C6B0E1BBA36E670F4865
        61646572416C69676E6D656E740708746143656E746572055769647468027E09
        42616E64496E646578020008526F77496E6465780200094669656C644E616D65
        060A53484F52545F4E414D450C43617074696F6E5F55544637061D542B414F6F
        2D6E202B4152456530512D6920742B4162416534772D6E670000135464784442
        477269644D61736B436F6C756D6E0A4F545950455F4E414D450743617074696F
        6E142000000054C3AA6E20C491E1BAA77920C491E1BBA72C206469E1BB856E20
        6769E1BAA3690F486561646572416C69676E6D656E740708746143656E746572
        0557696474680300010942616E64496E646578020008526F77496E6465780200
        094669656C644E616D65060A4F545950455F4E414D450C43617074696F6E5F55
        544637062C542B414F6F2D6E202B4152456570772D79202B4152456535772C20
        64692B4873552D6E2067692B48714D2D69000000}
    end
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsObjectType
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsObjectType
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsObjectType
    end
  end
end
