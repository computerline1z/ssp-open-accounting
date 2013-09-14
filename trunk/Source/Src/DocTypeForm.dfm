object DocTypeFrm: TDocTypeFrm
  Left = 154
  Top = 113
  Width = 760
  Height = 550
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 752
    Height = 516
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBTreeList1: TdxDBTreeList
      Left = 5
      Top = 5
      Width = 584
      Height = 120
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOCTYPE_ID'
      ParentField = 'PDOC_TYPE'
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnDblClick = dxDBTreeList1DblClick
      OnKeyDown = dxDBTreeList1KeyDown
      OnMouseUp = dxDBTreeList1MouseUp
      DataSource = MainDM.dsDocTypeList
      DefaultRowHeight = 21
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = dxDBTreeList1ChangeNode
      object dxDBTreeList1Column1: TdxDBTreeListColumn
        Caption = 'T'#234'n lo'#7841'i ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        TabStop = False
        Width = 233
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i ch+Huk-ng t+Hus'
      end
      object dxDBTreeList1Column2: TdxDBTreeListColumn
        Alignment = taCenter
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYHIEURIENG'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBTreeList1Column10: TdxDBTreeListColumn
        Alignment = taCenter
        Caption = 'STT'
        HeaderAlignment = taCenter
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUTUSAPXEP'
      end
      object dxDBTreeList1Column7: TdxDBTreeListColumn
        Alignment = taCenter
        Caption = 'D'#224'i'
        HeaderAlignment = taCenter
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHIEUDAISTT'
        Caption_UTF7 = 'D+AOA-i'
      end
      object dxDBTreeList1Column4: TdxDBTreeListPopupColumn
        Alignment = taCenter
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column4CloseUp
        OnInitPopup = dxDBTreeList1Column4InitPopup
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBTreeList1Column5: TdxDBTreeListPopupColumn
        Alignment = taCenter
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column4CloseUp
        OnInitPopup = dxDBTreeList1Column4InitPopup
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBTreeList1Column3: TdxDBTreeListColumn
        Caption = 'T'#234'n m'#7851'u in'
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_FILE'
        Caption_UTF7 = 'T+AOo-n m+Hqs-u in'
      end
      object dxDBTreeList1Column9: TdxDBTreeListColumn
        Caption = 'ID'
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_ID'
      end
      object dxDBTreeList1HIENTHI: TdxDBTreeListCheckColumn
        Caption = 'Vi.'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HIENTHI'
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 155
      Top = 488
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
      ParentShowHint = False
      ShowHint = True
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 3
      Top = 488
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
      ParentShowHint = False
      ShowHint = True
      Action = acInsParent
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 674
      Top = 488
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      Cancel = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = TntBitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnEdit: TElPopupButton
      Left = 236
      Top = 488
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&S'#7917'a'
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnEditClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn7: TElPopupButton
      Left = 598
      Top = 488
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Hi'#7875'n th'#7883' th'#244'ng tin gi'#250'p '#273#7905
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = TntBitBtn7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 332
      Top = 488
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 
        #272#7883'nh ngh'#297'a '#273'i'#7873'u ki'#7879'n '#273#7883'nh kho'#7843'n '#273#7875' ph'#226'n bi'#7879't khi '#273#7885'c t'#7915' Excel v'#224 +
        'o'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7883'nh &kho'#7843'n'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 488
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm &con'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      Action = acIns
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
        Caption = 'New Item'
        ShowCaption = False
        Control = dxDBTreeList1
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 3
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem4: TdxLayoutItem
          Caption = 'TntBitBtn3'
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'TntBitBtn1'
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'TntBitBtn5'
          Offsets.Left = 5
          ShowCaption = False
          Control = btnEdit
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 20
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntBitBtn7'
          ShowCaption = False
          Control = TntBitBtn7
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntBitBtn4'
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 332
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 136
    object acIns: TAction
      Category = 'Dataset'
      Caption = 'acIns'
      ShortCut = 45
      OnExecute = acInsExecute
    end
    object acDel: TAction
      Category = 'Dataset'
      Caption = 'acDel'
      ShortCut = 16430
      OnExecute = acDelExecute
    end
    object acSetStatus: TAction
      Category = 'Dataset'
      Caption = 'acSetStatus'
      OnExecute = acSetStatusExecute
    end
    object acInsParent: TAction
      Category = 'Dataset'
      Caption = 'acInsParent'
      OnExecute = acInsParentExecute
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
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = 'Ph'#226'n lo'#7841'i ch'#7913'ng t'#7915' v'#224' c'#225'c th'#244'ng s'#7889' li'#234'n quan'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
