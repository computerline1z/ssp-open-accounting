object AccountListFrm: TAccountListFrm
  Tag = 90
  Left = 137
  Top = 86
  Width = 743
  Height = 575
  HelpContext = 16
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
  object dxLayoutControl2: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 735
    Height = 541
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object ElGraphicButton1: TElGraphicButton
      Left = 392
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      NumGlyphs = 1
      ShadowFollowsColor = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Ki'#7875'm tr&a'
      OnClick = ElGraphicButton1Click
      DockOrientation = doNoOrient
    end
    object dxDBTreeList2: TdxDBTreeList
      Left = 2
      Top = 7
      Width = 415
      Height = 480
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACCOUNT_ID'
      ParentField = 'PACCOUNT_ID'
      Align = alLeft
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = dxDBTreeList2KeyDown
      OnMouseUp = dxDBTreeList2MouseUp
      DataSource = dsAccLst
      DefaultRowHeight = 20
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = dxDBTreeList2ChangeNode
      object dxDBTreeList2Column2: TdxDBTreeListColumn
        Tag = 91
        Caption = 'S'#7889' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
      end
      object dxDBTreeList2Column3: TdxDBTreeListColumn
        Tag = 92
        Caption = 'T'#234'n Ti'#7871'ng Vi'#7879't'
        HeaderAlignment = taCenter
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n Ti+Hr8-ng Vi+Hsc-t'
      end
      object dxDBTreeList2ENGLISH_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n Ti'#7871'ng Anh'
        HeaderAlignment = taCenter
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENGLISH_NAME'
        Caption_UTF7 = 'T+AOo-n Ti+Hr8-ng Anh'
      end
      object dxDBTreeList2Column4: TdxDBTreeListColumn
        Caption = 'AccID Mapping'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACC_MAP_ID'
      end
    end
    object dxDBEdit5: TdxDBEdit
      Left = 454
      Top = 23
      Width = 51
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'ACCOUNT_ID'
      DataSource = dsAccLst
    end
    object dxDBEdit6: TdxDBEdit
      Left = 454
      Top = 46
      Width = 237
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      DataField = 'ACCOUNT_NAME'
      DataSource = dsAccLst
    end
    object btnPost: TElPopupButton
      Tag = 116
      Left = 241
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 14
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Tag = 117
      Left = 317
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 15
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Tag = 115
      Left = 156
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Delete'
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 13
      ParentShowHint = False
      ShowHint = True
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnAdd: TElPopupButton
      Tag = 113
      Left = 0
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm t'#224'i kho'#7843'n m'#7899'i ngang h'#224'ng v'#7899'i t'#224'i kho'#7843'n hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnAddChild: TElPopupButton
      Tag = 114
      Left = 76
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm ti'#7875'u kho'#7843'n con c'#7911'a t'#224'i kho'#7843'n hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm c&on'
      TabOrder = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddChildClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pedtOtherObjName: TdxDBPopupEdit
      Left = 457
      Top = 212
      Width = 201
      Cursor = crIBeam
      Color = clInfoBk
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 21
      DataField = 'OTYPE_NAME'
      DataSource = dsAccLst
      PopupControl = grdObjectType
      PopupFormBorderStyle = pbsSimple
      PopupWidth = 121
      OnCloseUp = pedtOtherObjNameCloseUp
    end
    object rbKhongtheodoi: TElRadioButton
      Left = 384
      Top = 190
      Width = 204
      Height = 17
      Cursor = crDefault
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Kh'#244'ng theo d'#245'i chi ti'#7871't t'#7915'ng '#273#7889'i t'#432#7907'ng'
      TabOrder = 7
      OnClick = rbKhongtheodoiClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbTheodoi: TElRadioButton
      Left = 384
      Top = 215
      Width = 73
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = #272#7889'i t'#432#7907'ng '
      TabOrder = 8
      OnClick = rbTheodoiClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElGroupBox1: TElGroupBox
      Left = 372
      Top = 437
      Width = 363
      Height = 83
      AutoDisableChildren = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Caption = 'Thu'#7897'c t'#237'nh t'#224'i kho'#7843'n'
      Flat = False
      FlatAlways = False
      ShowFocus = False
      TabOrder = 20
      TabStop = False
      UseXPThemes = False
      object rbTKBT: TElRadioButton
        Left = 15
        Top = 24
        Width = 138
        Height = 17
        Cursor = crDefault
        AutoSize = False
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'T'#224'i kho'#7843'n b'#236'nh th'#432#7901'ng'
        TabOrder = 0
        OnClick = rbTKBTClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbTKDT: TElRadioButton
        Left = 15
        Top = 51
        Width = 138
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'T'#224'i kho'#7843'n doanh thu '
        TabOrder = 1
        OnClick = rbTKDTClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbTKThue: TElRadioButton
        Left = 153
        Top = 24
        Width = 130
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'T'#224'i kho'#7843'n thu'#7871' GTGT'
        TabOrder = 2
        OnClick = rbTKThueClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbTKChiphi: TElRadioButton
        Left = 153
        Top = 51
        Width = 128
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'T'#224'i kho'#7843'n chi ph'#237
        TabOrder = 3
        OnClick = rbTKChiphiClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
    end
    object ElGroupBox2: TElGroupBox
      Left = 372
      Top = 104
      Width = 290
      Height = 66
      AutoDisableChildren = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Caption = 'Ki'#7875'u s'#7889' d'#432
      Flat = False
      FlatAlways = False
      ShowFocus = False
      TabOrder = 18
      TabStop = False
      UseXPThemes = False
      object rbDuNo: TElRadioButton
        Left = 18
        Top = 18
        Width = 89
        Height = 17
        Cursor = crDefault
        AutoSize = False
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'D'#432' b'#234'n N'#7907
        TabOrder = 0
        OnClick = rbDuNoClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbDu2ben: TElRadioButton
        Left = 180
        Top = 40
        Width = 90
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'D'#432' 2 b'#234'n'
        TabOrder = 3
        OnClick = rbDu2benClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbDuCo: TElRadioButton
        Left = 180
        Top = 18
        Width = 90
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'D'#432' b'#234'n C'#243
        TabOrder = 1
        OnClick = rbDuCoClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbLuongtinh: TElRadioButton
        Left = 18
        Top = 40
        Width = 135
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'D'#432' b'#234'n l'#7899'n '
        TabOrder = 2
        OnClick = rbLuongtinhClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 585
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 16
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 660
      Top = 516
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 17
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElGroupBox3: TElGroupBox
      Left = 372
      Top = 292
      Width = 363
      Height = 70
      AutoDisableChildren = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Caption = 'Y'#7871'u t'#7889' 1 li'#234'n quan'
      Flat = False
      FlatAlways = False
      ShowFocus = False
      TabOrder = 19
      TabStop = False
      UseXPThemes = False
      DesignSize = (
        363
        70)
      object rbNoYeuto: TElRadioButton
        Left = 15
        Top = 19
        Width = 194
        Height = 17
        Cursor = crDefault
        AutoSize = False
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Kh'#244'ng li'#234'n quan '#273#7871'n y'#7871'u t'#7889
        TabOrder = 0
        OnClick = rbNoYeutoClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbYeuto: TElRadioButton
        Left = 15
        Top = 44
        Width = 58
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Y'#7871'u t'#7889' '
        TabOrder = 1
        OnClick = rbYeutoClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object pedtYeuto: TdxDBPopupEdit
        Left = 84
        Top = 42
        Width = 266
        Cursor = crIBeam
        Color = clInfoBk
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbs3D
        Style.ButtonStyle = bts3D
        TabOrder = 2
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DTYPE_NAME'
        DataSource = dsAccLst
        PopupControl = grdObjectType
        PopupFormBorderStyle = pbsSimple
        PopupWidth = 121
        OnCloseUp = pedtYeutoCloseUp
      end
      object chkFollowBAl: TdxDBCheckEdit
        Left = 206
        Top = 16
        Width = 98
        Enabled = False
        Style.ButtonTransparence = ebtAlways
        TabOrder = 3
        Caption = 'Theo d'#245'i s'#7889' d'#432
        DataField = 'FOLLOW_BAL'
        DataSource = dsAccLst
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object dxDBEdit1: TdxDBEdit
      Left = 454
      Top = 69
      Width = 169
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      DataField = 'ENGLISH_NAME'
      DataSource = dsAccLst
    end
    object chkFOLLOW_DOCBAL: TdxDBCheckEdit
      Left = 384
      Top = 236
      Width = 121
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Caption = 'Theo d'#245'i c'#244'ng n'#7907' theo t'#7915'ng h'#243'a '#273#417'n ch'#7913'ng t'#7915
      DataField = 'FOLLOW_DOCBAL'
      DataSource = dsAccLst
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 612
      Top = 23
      Width = 111
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Caption = 'C'#243' theo d'#245'i s'#7889' d'#432
      DataField = 'HAS_BALANCE'
      DataSource = dsAccLst
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dxDBCheckEdit2: TdxDBCheckEdit
      Left = 384
      Top = 257
      Width = 293
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Caption = 'T'#7921' '#273#7897'ng th'#244'ng b'#225'o khi c'#244'ng n'#7907' qu'#225' h'#7841'n theo '#273#259'ng k'#253
      DataField = 'NOTICE_WHENEXP'
      DataSource = dsAccLst
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object ElGroupBox4: TElGroupBox
      Left = 372
      Top = 364
      Width = 363
      Height = 71
      AutoDisableChildren = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Caption = 'Y'#7871'u t'#7889' 2 li'#234'n quan'
      Flat = False
      FlatAlways = False
      ShowFocus = False
      TabOrder = 22
      TabStop = False
      UseXPThemes = False
      DesignSize = (
        363
        71)
      object rbNoYeuto1: TElRadioButton
        Left = 16
        Top = 19
        Width = 201
        Height = 17
        Cursor = crDefault
        AutoSize = False
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Kh'#244'ng li'#234'n quan '#273#7871'n y'#7871'u t'#7889
        TabOrder = 0
        OnClick = rbNoYeuto1Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbYeuto1: TElRadioButton
        Left = 16
        Top = 44
        Width = 65
        Height = 17
        Cursor = crDefault
        AutoSize = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Y'#7871'u t'#7889' '
        TabOrder = 1
        OnClick = rbYeuto1Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object pedtYeuto1: TdxDBPopupEdit
        Left = 84
        Top = 42
        Width = 266
        Cursor = crIBeam
        Color = clInfoBk
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbs3D
        Style.ButtonStyle = bts3D
        TabOrder = 2
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DTYPE_NAME_1'
        DataSource = dsAccLst
        PopupControl = grdObjectType
        PopupFormBorderStyle = pbsSimple
        PopupWidth = 121
        OnCloseUp = pedtYeuto1CloseUp
      end
      object chkFollowBAl1: TdxDBCheckEdit
        Left = 206
        Top = 16
        Width = 96
        Enabled = False
        Style.ButtonTransparence = ebtAlways
        TabOrder = 3
        Caption = 'Theo d'#245'i s'#7889' d'#432
        DataField = 'FOLLOW_BAL_1'
        DataSource = dsAccLst
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object chkExpand: TdxCheckEdit
      Left = 0
      Top = 493
      Width = 72
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 1
      OnClick = chkExpandClick
      Caption = 'Bung to'#224'n b'#7897' c'#226'y t'#224'i kho'#7843'n'
      StyleController = InterfaceDM.chkStyleController
    end
    object dxDBEdit2: TdxDBEdit
      Left = 555
      Top = 23
      Width = 50
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      DataField = 'ACC_MAP_ID'
      DataSource = dsAccLst
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl2Group5: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl2Group4: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBTreeList1'
            LookAndFeel = dxLayoutStandardLookAndFeel1
            Offsets.Top = 5
            ShowCaption = False
            Control = dxDBTreeList2
          end
          object dxLayoutControl2Item20: TdxLayoutItem
            ShowCaption = False
            Control = chkExpand
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl2Group7: TdxLayoutGroup
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            Tag = 93
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Th'#244'ng tin chung'
            LookAndFeel = dxLayoutStandardLookAndFeel1
            Offsets.Left = 5
            UseIndent = False
            object dxLayoutControl2Group6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem2: TdxLayoutItem
                Tag = 94
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'S'#7889' hi'#7879'u'
                Offsets.Top = 5
                Control = dxDBEdit5
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item21: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avBottom
                Caption = 'Mapping'
                Control = dxDBEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item14: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'dxDBCheckEdit1'
                Offsets.Top = 5
                ShowCaption = False
                Control = dxDBCheckEdit1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutItem4: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'T'#234'n Ti'#7871'ng Vi'#7879't'
              Offsets.Top = 2
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item9: TdxLayoutItem
              Caption = 'T'#234'n Ti'#7871'ng Anh'
              Offsets.Top = 2
              Control = dxDBEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Item12: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'ElGroupBox2'
            Offsets.Left = 5
            Offsets.Top = 2
            ShowCaption = False
            Control = ElGroupBox2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Group1: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #272#7889'i t'#432#7907'ng theo d'#245'i chi ti'#7871't '
            Offsets.Left = 5
            Offsets.Top = 2
            object dxLayoutControl2Item10: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'RadioButton1'
              ShowCaption = False
              Control = rbKhongtheodoi
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item11: TdxLayoutItem
                Caption = 'RadioButton2'
                Offsets.Top = 8
                ShowCaption = False
                Control = rbTheodoi
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object lciObjType: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Lo'#185'i '#174#232'i t'#173#238'ng chi ti'#213't  '
                Offsets.Top = 5
                ShowCaption = False
                Control = pedtOtherObjName
                ControlOptions.AutoAlignment = False
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Item13: TdxLayoutItem
              Caption = 'dxDBCheckEdit1'
              Offsets.Top = 3
              ShowCaption = False
              Control = chkFOLLOW_DOCBAL
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item15: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = dxDBCheckEdit2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Item8: TdxLayoutItem
            Caption = 'ElGroupBox3'
            Offsets.Left = 5
            Offsets.Top = 2
            ShowCaption = False
            Control = ElGroupBox3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item17: TdxLayoutItem
            Caption = 'New Item'
            LookAndFeel = dxLayoutStandardLookAndFeel1
            Offsets.Left = 5
            Offsets.Top = 2
            ShowCaption = False
            Control = ElGroupBox4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item16: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'ElGroupBox1'
            Offsets.Left = 5
            Offsets.Top = 2
            ShowCaption = False
            Control = ElGroupBox1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl2Group3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'New Group'
        Offsets.Top = 2
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl2Item5: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnAdd
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          Caption = 'BitBtn6'
          Offsets.Left = 1
          ShowCaption = False
          Control = btnAddChild
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Caption = 'BitBtn4'
          Offsets.Left = 5
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn2'
          Offsets.Left = 10
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn3'
          Offsets.Left = 1
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item18: TdxLayoutItem
          AutoAligns = [aaVertical]
          ShowCaption = False
          Control = ElGraphicButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object grdObjectType: TdxDBGrid
    Left = 761
    Top = 116
    Width = 219
    Height = 203
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'OTYPE_ID'
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
    TabOrder = 1
    Visible = False
    OnDblClick = grdObjectTypeDblClick
    OnKeyDown = grdObjectTypeKeyDown
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'SaigonSoft   '
    BandFont.Style = []
    DataSource = MainDM.dsObjectType
    DefaultRowHeight = 22
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'SaigonSoft   '
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'SaigonSoft   '
    PreviewFont.Style = []
    ShowHeader = False
    object dxDBGridColumn15: TdxDBGridColumn
      Caption = 'T'#170'n lo'#185'i'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 192
      BandIndex = 0
      RowIndex = 0
      DisableGrouping = True
      FieldName = 'OTYPE_NAME'
      DisableFilter = True
      Caption_UTF7 = 'T+AKo-n lo+ALk-i'
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 16
    Top = 32
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object qryAccLst: TIBOQuery
    Params = <>
    DatabaseName = '127.0.0.1:F:\Project\GHD\demo.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM ACCOUNT_LIST'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID')
    EditSQL.Strings = (
      'UPDATE ACCOUNT_LIST SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   PACCOUNT_ID = :PACCOUNT_ID,'
      '   ACCOUNT_NAME = :ACCOUNT_NAME,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   ACCOUNT_TAG = :ACCOUNT_TAG,'
      '   BALANCE_TYPE = :BALANCE_TYPE,'
      '   ISMIN = :ISMIN,'
      '   ISSELECT = :ISSELECT,'
      '   DTYPE_ID = :DTYPE_ID,'
      '   DTYPE_ID_1 = :DTYPE_ID_1,'
      '   ENGLISH_NAME = :ENGLISH_NAME,'
      '   FOLLOW_BAL = :FOLLOW_BAL,'
      '   FOLLOW_BAL_1 = :FOLLOW_BAL_1,'
      '   FOLLOW_DOCBAL = :FOLLOW_DOCBAL,'
      '   ACC_LEVEL = :ACC_LEVEL,'
      '   HAS_BALANCE = :HAS_BALANCE,'
      '   NOTICE_WHENEXP = :NOTICE_WHENEXP,'
      '   ACC_MAP_ID = :ACC_MAP_ID'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO ACCOUNT_LIST('
      '   ACCOUNT_ID, /*PK*/'
      '   PACCOUNT_ID,'
      '   ACCOUNT_NAME,'
      '   OTYPE_ID,'
      '   ACCOUNT_TAG,'
      '   BALANCE_TYPE,'
      '   ISMIN,'
      '   ISSELECT,'
      '   DTYPE_ID,'
      '   DTYPE_ID_1,'
      '   ENGLISH_NAME,'
      '   FOLLOW_BAL,'
      '   FOLLOW_BAL_1,'
      '   FOLLOW_DOCBAL,'
      '   ACC_LEVEL,'
      '   HAS_BALANCE,'
      '   NOTICE_WHENEXP,'
      '   ACC_MAP_ID)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :PACCOUNT_ID,'
      '   :ACCOUNT_NAME,'
      '   :OTYPE_ID,'
      '   :ACCOUNT_TAG,'
      '   :BALANCE_TYPE,'
      '   :ISMIN,'
      '   :ISSELECT,'
      '   :DTYPE_ID,'
      '   :DTYPE_ID_1,'
      '   :ENGLISH_NAME,'
      '   :FOLLOW_BAL,'
      '   :FOLLOW_BAL_1,'
      '   :FOLLOW_DOCBAL,'
      '   :ACC_LEVEL,'
      '   :HAS_BALANCE,'
      '   :NOTICE_WHENEXP,'
      '   :ACC_MAP_ID)')
    KeyLinks.Strings = (
      'ACCOUNT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryAccLstBeforeEdit
    BeforeDelete = qryAccLstBeforeDelete
    AfterDelete = qryAccLstAfterDelete
    BeforeInsert = qryAccLstBeforeInsert
    AfterInsert = qryAccLstAfterInsert
    BeforePost = qryAccLstBeforePost
    AfterPost = qryAccLstAfterPost
    OnNewRecord = qryAccLstNewRecord
    OnPostError = qryAccLstPostError
    OnDeleteError = qryAccLstDeleteError
    AfterRefresh = qryAccLstAfterRefresh
    SQL.Strings = (
      'SELECT ACCOUNT_ID'
      '     , PACCOUNT_ID'
      '     , ACCOUNT_NAME'
      '     , ACCOUNT_LIST.OTYPE_ID'
      '     , ACCOUNT_TAG'
      '     , BALANCE_TYPE'
      '     , ISMIN'
      '     , ISSELECT'
      '     , DT.OTYPE_NAME OTYPE_NAME'
      '     , YEUTO.OTYPE_NAME DTYPE_NAME'
      '     , YEUTO_1.OTYPE_NAME DTYPE_NAME_1'
      '     , ACCOUNT_LIST.DTYPE_ID'
      '     , ACCOUNT_LIST.DTYPE_ID_1'
      '     , ENGLISH_NAME'
      '     , FOLLOW_BAL'
      '     , FOLLOW_BAL_1'
      '     , FOLLOW_DOCBAL'
      '     , ACC_LEVEL'
      '     , HAS_BALANCE'
      '     , NOTICE_WHENEXP'
      '     , ACC_MAP_ID'
      'FROM ACCOUNT_LIST'
      'LEFT JOIN OBJECT_TYPE DT ON (ACCOUNT_LIST.OTYPE_ID=DT.OTYPE_ID)'
      
        'LEFT JOIN OBJECT_TYPE YEUTO ON (ACCOUNT_LIST.DTYPE_ID=YEUTO.OTYP' +
        'E_ID)'
      
        'LEFT JOIN OBJECT_TYPE YEUTO_1 ON (ACCOUNT_LIST.DTYPE_ID_1 = YEUT' +
        'O_1.OTYPE_ID)'
      'ORDER BY ACCOUNT_ID')
    FieldOptions = []
    Left = 176
    Top = 76
    object qryAccLstOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryAccLstACCOUNT_TAG: TSmallintField
      FieldName = 'ACCOUNT_TAG'
    end
    object qryAccLstBALANCE_TYPE: TSmallintField
      FieldName = 'BALANCE_TYPE'
    end
    object qryAccLstISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryAccLstACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      OnChange = qryAccLstACCOUNT_IDChange
      Size = 45
    end
    object qryAccLstPACCOUNT_ID: TWideStringField
      FieldName = 'PACCOUNT_ID'
      Size = 45
    end
    object qryAccLstACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 189
    end
    object qryAccLstOTYPE_NAME: TWideStringField
      FieldName = 'OTYPE_NAME'
      Size = 381
    end
    object qryAccLstISSELECT: TSmallintField
      FieldName = 'ISSELECT'
    end
    object qryAccLstDTYPE_NAME: TWideStringField
      FieldName = 'DTYPE_NAME'
      Size = 126
    end
    object qryAccLstDTYPE_ID: TSmallintField
      FieldName = 'DTYPE_ID'
      OnChange = qryAccLstDTYPE_IDChange
    end
    object qryAccLstENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryAccLstFOLLOW_BAL: TSmallintField
      FieldName = 'FOLLOW_BAL'
    end
    object qryAccLstFOLLOW_DOCBAL: TSmallintField
      FieldName = 'FOLLOW_DOCBAL'
    end
    object qryAccLstACC_LEVEL: TSmallintField
      FieldName = 'ACC_LEVEL'
    end
    object qryAccLstHAS_BALANCE: TSmallintField
      FieldName = 'HAS_BALANCE'
    end
    object qryAccLstNOTICE_WHENEXP: TSmallintField
      FieldName = 'NOTICE_WHENEXP'
    end
    object qryAccLstDTYPE_NAME_1: TWideStringField
      FieldName = 'DTYPE_NAME_1'
      Size = 126
    end
    object qryAccLstDTYPE_ID_1: TSmallintField
      FieldName = 'DTYPE_ID_1'
      OnChange = qryAccLstDTYPE_ID_1Change
    end
    object qryAccLstFOLLOW_BAL_1: TSmallintField
      FieldName = 'FOLLOW_BAL_1'
    end
    object qryAccLstACC_MAP_ID: TWideStringField
      FieldName = 'ACC_MAP_ID'
      Size = 15
    end
  end
  object dsAccLst: TDataSource
    DataSet = qryAccLst
    Left = 176
    Top = 104
  end
  object ActionList1: TActionList
    Left = 204
    Top = 104
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsAccLst
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsAccLst
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsAccLst
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
        Caption = 'H'#7879' th'#7889'ng t'#224'i kho'#7843'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 48
    Top = 32
  end
end
