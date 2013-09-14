object DefRptBCDKTFrm: TDefRptBCDKTFrm
  Left = 129
  Top = 80
  Width = 800
  Height = 600
  HelpContext = 15
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
    Width = 792
    Height = 566
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      792
      566)
    object btCheck: TElGraphicButton
      Left = 383
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      NumGlyphs = 1
      ShadowFollowsColor = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ki'#7875'm tra'
      OnClick = btCheckClick
      DockOrientation = doNoOrient
    end
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      DragMode = dmAutomatic
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsDefRptBCDKT
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridMaskColumn
        Caption = 'STT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 28
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1MANHOM: TdxDBGridMaskColumn
        Caption = 'Nh'#243'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object dxDBGrid1CHITIEU: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 251
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1ISMIN: TdxDBGridCheckColumn
        Caption = 'N'#250't l'#225
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISMIN'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'N+APo-t l+AOE'
      end
      object dxDBGrid1HESO_GROUP: TdxDBGridMaskColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HESO_GROUP'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1THUYETMINH: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Thuy'#7871't minh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUYETMINH'
        Caption_UTF7 = 'Thuy+Hr8-t minh'
      end
      object dxDBGrid1DAUNAM: TdxDBGridMaskColumn
        Caption = 'S'#7889' '#273#7847'u n'#259'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DAUNAM'
        Caption_UTF7 = 'S+HtE +AREepw-u n+AQM-m'
      end
      object dxDBGrid1CUOIKY: TdxDBGridMaskColumn
        Caption = 'S'#7889' cu'#7889'i k'#7923
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUOIKY'
        Caption_UTF7 = 'S+HtE cu+HtE-i k+HvM'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 5
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 74
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 6
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 155
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 7
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 226
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 8
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 648
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 11
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 719
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 12
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDef: TElPopupButton
      Left = 312
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7883'n&h ngh'#297'a'
      TabOrder = 9
      OnClick = btnDefClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 454
      Top = 538
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem &chi ti'#7871't'
      TabOrder = 10
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCopy: TElPopupButton
      Left = 446
      Top = 514
      Width = 70
      Height = 23
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Sao ch'#233'p'
      TabOrder = 4
      OnClick = btnCopyClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtBranch: TTntEdit
      Left = 266
      Top = 516
      Width = 106
      Height = 17
      BorderStyle = bsNone
      TabOrder = 2
    end
    object btnDel: TElPopupButton
      Left = 375
      Top = 514
      Width = 70
      Height = 23
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X'#243'a'
      TabOrder = 3
      OnClick = btnDelClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object popBranch: TdxPopupEdit
      Left = 36
      Top = 514
      Width = 172
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      ReadOnly = False
      PopupControl = PopupFrm.pnlBranch
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = popBranchCloseUp
      StoredValues = 64
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locBranch: TdxLayoutItem
          Caption = #272#417'n v'#7883
          Control = popBranch
          ControlOptions.ShowBorder = False
        end
        object locBranch2: TdxLayoutItem
          Caption = #272#417'n v'#7883' '#273#237'ch'
          Control = edtBranch
        end
        object locFormItem12: TdxLayoutItem
          ShowCaption = False
          Control = btnDel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = btnCopy
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormGroup2: TdxLayoutGroup
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
          object locdel: TdxLayoutItem
            Caption = 'Chi nh'#225'nh'
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
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 15
          ShowCaption = False
          Control = btnDef
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          ShowCaption = False
          Control = btCheck
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem10: TdxLayoutItem
          Caption = 'Xem chi ti'#7871't'
          ShowCaption = False
          Control = ElPopupButton1
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
    Left = 172
    Top = 164
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
        Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u cho B'#7843'ng c'#226'n '#273#7889'i k'#7871' to'#225'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ActionList1: TActionList
    Left = 208
    Top = 168
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = MainDM.dsDefRptBCDKT
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = MainDM.dsDefRptBCDKT
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = MainDM.dsDefRptBCDKT
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = MainDM.dsDefRptBCDKT
    end
  end
end
