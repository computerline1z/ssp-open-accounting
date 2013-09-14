object ActiclePlanFrm: TActiclePlanFrm
  Left = 91
  Top = 139
  Width = 817
  Height = 568
  HelpContext = 21
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 809
    Height = 534
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnIns: TElPopupButton
      Left = 3
      Top = 506
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm kho'#7843'n m'#7909'c m'#7899'i ngang b'#7857'ng v'#7899'i kho'#7843'n m'#7909'c hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSave: TElPopupButton
      Left = 81
      Top = 506
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i nh'#7919'ng th'#244'ng tin '#273'ang thay '#273#7893'i'
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 159
      Top = 506
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Kh'#244'ng l'#432'u l'#7841'i nh'#7919'ng th'#244'ng tin '#273'ang thay '#273#7893'i'
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHelp: TElPopupButton
      Left = 653
      Top = 506
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
      TabOrder = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 731
      Top = 506
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 10
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object Num: TdxSpinEdit
      Left = 413
      Top = 5
      Width = 45
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 48
    end
    object btnRefresh: TElPopupButton
      Left = 461
      Top = 3
      Width = 29
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000000000000000
        0000000000000000000075170075170075170000000000000000000000000000
        00000000000000000000000000000000000000000000007517007E203ACD7000
        7517000000000000000000000000000000000000000000000000000000000000
        00751700751704953546E4815DF5970075170075170075170075170000000000
        00000000000000000000000000007517007D1E1BBA5548F28A52F3915DF59729
        B65B2EB75E189F45007E21007517007517000000000000000000000000007517
        0CAB443FF08448F28A52F3915DF59758E78D71F9A47CFBAB7CF3A847C271007E
        22007517000000000000000000000000007517069C3943EA8452F3915DF59700
        7517007517007E211CA04752CB7C79E59F007E22007517000000000000000000
        000000007517007E1F33CC6B5DF5970075170000000000000000000075170C90
        373BB363007517000000000000000000000000000000000000007517109E4000
        7517000000007517007517000000000000007517007517000000000000000000
        007517007517000000000000007517007517000000007517119E400075170000
        000000000000000000000000000000000075173CB3640D903700751700000000
        00000000000075175FF59935CD6D007E1F007517000000000000000000000000
        007517007E237BE6A153CB7D1DA048007E210075170075175FF59956F49345EA
        85079C3A007517000000000000000000000000007517007E2248C2727EF4AA7E
        FBAD73F9A75AE78F5FF59956F4934CF28C41F1860DAB45007517000000000000
        000000000000007517007517007E21199F462FB75E2BB65B5FF59956F4934CF2
        8C1CBA56007D1E00751700000000000000000000000000000000000000751700
        75170075170075175FF59948E484049535007517007517000000000000000000
        0000000000000000000000000000000000000000000075173BCE71007E200075
        1700000000000000000000000000000000000000000000000000000000000000
        0000000000007517007517007517000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabStop = False
      TabOrder = 12
      ParentShowHint = False
      ShowHint = True
      Action = acReload
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkExpand: TdxCheckEdit
      Left = 3
      Top = 5
      Width = 166
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnClick = chkExpandClick
      Caption = 'Bung to'#224'n b'#7897' c'#226'y d'#7919' li'#7879'u'
      StyleController = InterfaceDM.chkStyleController
    end
    object btnLockPlanYear: TElPopupButton
      Left = 237
      Top = 506
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i nh'#7919'ng th'#244'ng tin '#273'ang thay '#273#7893'i'
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#243'a KH n'#259'm'
      TabOrder = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = btnLockPlanYearClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pedtObj: TdxPopupEdit
      Left = 558
      Top = 5
      Width = 128
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      OnClick = pedtObjClick
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtObjCloseUp
    end
    object pgc1: TElPageControl
      Left = 3
      Top = 31
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      OnChange = pgc1Change
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabIndex = 0
      TabPosition = etpBottom
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabPlanMonth
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 16
      object tabPlanMonth: TElTabSheet
        PageControl = pgc1
        ImageIndex = -1
        TabVisible = True
        Caption = 'K'#7871' ho'#7841'ch th'#225'ng'
        object dxDBTreeList1: TdxDBTreeList
          Left = 0
          Top = 0
          Width = 285
          Height = 170
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ACTICLE_ID'
          ParentField = 'PACTICLE_ID'
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          OnKeyDown = dxDBTreeList1KeyDown
          OnMouseUp = dxDBTreeList1MouseUp
          DataSource = dsItem
          DefaultRowHeight = 21
          GridLineColor = clMoneyGreen
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          OnEditing = dxDBTreeList1Editing
          object dxDBTreeListColumn1: TdxDBTreeListColumn
            Caption = 'M'#7909'c, ti'#7875'u m'#7909'c'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NO'
            Caption_UTF7 = 'M+HuU-c, ti+HsM-u m+HuU-c'
          end
          object dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            Caption = 'M'#227' s'#7889
            DisableEditor = True
            HeaderAlignment = taCenter
            TabStop = False
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_ID'
            Caption_UTF7 = 'M+AOM s+HtE'
          end
          object dxDBTreeListColumn2: TdxDBTreeListColumn
            Caption = 'T'#234'n di'#7877'n gi'#7843'i'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 218
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NAME'
            Caption_UTF7 = 'T+AOo-n di+HsU-n gi+HqM-i'
          end
          object dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn
            Caption = 'Level'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_LEVEL'
          end
          object dxDBTreeList1PLAN_BEGIN: TdxDBTreeListColumn
            Caption = 'K'#7871' ho'#7841'ch'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_BEGIN'
            Caption_UTF7 = 'K+Hr8 ho+HqE-ch'
          end
        end
      end
      object tabPlanYear: TElTabSheet
        PageControl = pgc1
        ImageIndex = -1
        TabVisible = True
        Caption = 'K'#7871' ho'#7841'ch n'#259'm'
        Visible = False
        object dxDBTreeList2: TdxDBTreeList
          Left = 0
          Top = 0
          Width = 285
          Height = 170
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ACTICLE_ID'
          ParentField = 'PACTICLE_ID'
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          OnKeyDown = dxDBTreeList2KeyDown
          OnMouseUp = dxDBTreeList2MouseUp
          DataSource = dsPlanYear
          DefaultRowHeight = 21
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          OnEditing = dxDBTreeList2Editing
          object dxDBTreeListColumn3: TdxDBTreeListColumn
            Caption = 'M'#7909'c, ti'#7875'u m'#7909'c'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NO'
            Caption_UTF7 = 'M+HuU-c, ti+HsM-u m+HuU-c'
          end
          object dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            Caption = 'M'#227' s'#7889
            DisableEditor = True
            HeaderAlignment = taCenter
            TabStop = False
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_ID'
            Caption_UTF7 = 'M+AOM s+HtE'
          end
          object dxDBTreeListColumn4: TdxDBTreeListColumn
            Caption = 'T'#234'n di'#7877'n gi'#7843'i'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 170
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NAME'
            Caption_UTF7 = 'T+AOo-n di+HsU-n gi+HqM-i'
          end
          object dxDBTreeListMaskColumn6: TdxDBTreeListMaskColumn
            Caption = 'Level'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 196
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_LEVEL'
          end
          object dxDBTreeList2PLAN_YEAR: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'N'#259'm'
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_YEAR'
            Caption_UTF7 = 'N+AQM-m'
          end
          object colPlanQ1: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'Qu'#253' 1'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_1'
            Caption_UTF7 = 'Qu+AP0 1'
          end
          object colPlanQ2: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'Qu'#253' 2'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_2'
            Caption_UTF7 = 'Qu+AP0 2'
          end
          object colPlanQ3: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'Qu'#253' 3'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_3'
            Caption_UTF7 = 'Qu+AP0 3'
          end
          object colPlanQ4: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'Qu'#253' 4'
            HeaderAlignment = taCenter
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_4'
            Caption_UTF7 = 'Qu+AP0 4'
          end
          object colAdjQ1: TdxDBTreeListMaskColumn
            Caption = #272'C Qu'#253' 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_1'
            Caption_UTF7 = '+ARA-C Qu+AP0 1'
          end
          object colAdjQ2: TdxDBTreeListMaskColumn
            Caption = #272'C Qu'#253' 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_2'
            Caption_UTF7 = '+ARA-C Qu+AP0 2'
          end
          object colAdjQ3: TdxDBTreeListMaskColumn
            Caption = #272'C Qu'#253' 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_3'
            Caption_UTF7 = '+ARA-C Qu+AP0 3'
          end
          object colBRANCH_ID: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            HeaderAlignment = taCenter
            Visible = False
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BRANCH_ID'
          end
          object colAdjQ4: TdxDBTreeListMaskColumn
            Caption = #272'C Qu'#253' 4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_4'
            Caption_UTF7 = '+ARA-C Qu+AP0 4'
          end
        end
      end
    end
    object rbPlan: TElRadioButton
      Left = 172
      Top = 7
      Width = 98
      Height = 17
      Cursor = crDefault
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'K'#7871' ho'#7841'ch chung'
      TabOrder = 1
      OnClick = rbPlanClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbPlanObj: TElRadioButton
      Left = 273
      Top = 7
      Width = 101
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'K'#7871' ho'#7841'ch chi ti'#7871't'
      TabOrder = 2
      OnClick = rbPlanObjClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object lkchinhanh: TdxDBExtLookupEdit
      Left = 689
      Top = 3
      Width = 117
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'SHORTNAME'
      DataSource = dsBranchFilterRight
      OnCloseUp = lkchinhanhCloseUp
      DBGridLayout = dxDBGridLayout1
      PickListField = 'SHORTNAME'
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          AutoAligns = []
          AlignVert = avCenter
          ShowCaption = False
          Control = chkExpand
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'KH chung'
          ShowCaption = False
          Control = rbPlan
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          ShowCaption = False
          Control = rbPlanObj
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avCenter
          Caption = 'Th'#225'ng'
          Control = Num
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnRefresh
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avCenter
          Caption = 'M'#227' '#273#7889'i t'#432#7907'ng'
          Enabled = False
          Control = pedtObj
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Control = lkchinhanh
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem8: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = pgc1
        ControlOptions.ShowBorder = False
      end
      object locFormGroup4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem15: TdxLayoutItem
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem17: TdxLayoutItem
          ShowCaption = False
          Control = btnSave
          ControlOptions.ShowBorder = False
        end
        object locFormItem18: TdxLayoutItem
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
        object locLockPlanYear: TdxLayoutItem
          ShowCaption = False
          Control = btnLockPlanYear
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem19: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object locFormItem20: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 281
    Top = 125
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 252
    Top = 124
    object acHide: TAction
      Caption = 'Gi'#202'u, Kh'#171'ng hi'#211'n th'#222
    end
    object acShowAll: TAction
      Caption = 'Hi'#211'n th'#222' t'#202't c'#182
    end
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsItem
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsItem
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsItem
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng l'#173'u'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsItem
    end
    object acReload: TAction
      Caption = 'acReload'
      OnExecute = acReloadExecute
    end
  end
  object qryItem: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Locthiendinh\Accounting.gdb'
    EditSQL.Strings = (
      
        'execute procedure SP_ACTICLE_PLAN(:ACTICLE_ID,:KYHT,:PLAN_MAX,:P' +
        'LAN_MIN,:PLAN_BEGIN,:PLAN_ADJUST,:BRANCH_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID'
      'KYHT'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryItemBeforeEdit
    BeforeOpen = qryItemBeforeOpen
    BeforePost = qryItemBeforePost
    OnPostError = qryItemPostError
    SQL.Strings = (
      'SELECT ACTICLE_ID'
      '     , PACTICLE_ID'
      '     , ACTICLE_NO'
      '     , ACTICLE_NAME'
      '     , PLAN_BEGIN'
      '     , PLAN_ADJUST'
      '     , BRANCH_ID'
      '     , PLAN_MAX'
      '     , PLAN_MIN'
      '     , KYHT'
      'FROM SP_GET_ACTICLE_PLAN(:KYHT,:BRANCH_ID)'
      'order by ACTICLE_ID')
    FieldOptions = []
    Left = 159
    Top = 112
    object qryItemACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryItemPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryItemACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryItemACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryItemPLAN_BEGIN: TIBOFloatField
      FieldName = 'PLAN_BEGIN'
    end
    object qryItemPLAN_ADJUST: TIBOFloatField
      FieldName = 'PLAN_ADJUST'
    end
    object qryItemBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
    object qryItemPLAN_MAX: TIBOFloatField
      FieldName = 'PLAN_MAX'
    end
    object qryItemPLAN_MIN: TIBOFloatField
      FieldName = 'PLAN_MIN'
      OnChange = qryItemPLAN_MINChange
    end
    object qryItemKYHT: TSmallintField
      FieldName = 'KYHT'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 158
    Top = 140
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
        Caption = 'K'#7871' ho'#7841'ch s'#7917' d'#7909'ng h'#7841'n m'#7913'c kinh ph'#237', ng'#226'n s'#225'ch'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 310
    Top = 126
  end
  object qryPlanYear: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYDN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Locthiendinh\Accounting.gdb'
    EditSQL.Strings = (
      
        'execute procedure SP_ACTICLE_PLAN_YEAR(:ACTICLE_ID ,:KYDN ,:PLAN' +
        '_YEAR ,:PLAN_quarter_1 ,'
      
        ':PLAN_quarter_2 ,:PLAN_quarter_3 ,:PLAN_quarter_4,:ADJ_QUARTER_1' +
        ',:ADJ_QUARTER_2,'
      ':ADJ_QUARTER_3, :ADJ_QUARTER_4,:BRANCH_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryPlanYearBeforeEdit
    BeforeOpen = qryPlanYearBeforeOpen
    AfterOpen = qryPlanYearAfterOpen
    OnPostError = qryPlanYearPostError
    SQL.Strings = (
      'SELECT ACTICLE_ID ,'
      '    PACTICLE_ID ,'
      '    ACTICLE_NAME ,'
      '    ACTICLE_NO ,'
      '    PLAN_YEAR,'
      '    PLAN_QUARTER_1 ,'
      '    PLAN_QUARTER_2 ,'
      '    PLAN_QUARTER_3 ,'
      '    PLAN_QUARTER_4 ,'
      '    ADJ_QUARTER_1 ,'
      '    ADJ_QUARTER_2 ,'
      '    ADJ_QUARTER_3 ,'
      '    ADJ_QUARTER_4 ,'
      '    BRANCH_ID,'
      '    KYDN,'
      '    LOCKED'
      'FROM SP_GET_ACTICLE_PLAN_YEAR(:KYDN,:BRANCH_ID)'
      'order by ACTICLE_ID'
      '')
    FieldOptions = []
    Left = 194
    Top = 112
    object qryPlanYearACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryPlanYearPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryPlanYearACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryPlanYearACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryPlanYearPLAN_QUARTER_1: TIBOFloatField
      FieldName = 'PLAN_QUARTER_1'
    end
    object qryPlanYearPLAN_QUARTER_2: TIBOFloatField
      FieldName = 'PLAN_QUARTER_2'
    end
    object qryPlanYearPLAN_QUARTER_3: TIBOFloatField
      FieldName = 'PLAN_QUARTER_3'
    end
    object qryPlanYearPLAN_QUARTER_4: TIBOFloatField
      FieldName = 'PLAN_QUARTER_4'
    end
    object qryPlanYearPLAN_YEAR: TIBOFloatField
      FieldName = 'PLAN_YEAR'
    end
    object qryPlanYearBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
    object qryPlanYearADJ_QUARTER_1: TIBOFloatField
      FieldName = 'ADJ_QUARTER_1'
    end
    object qryPlanYearADJ_QUARTER_2: TIBOFloatField
      FieldName = 'ADJ_QUARTER_2'
    end
    object qryPlanYearADJ_QUARTER_3: TIBOFloatField
      FieldName = 'ADJ_QUARTER_3'
    end
    object qryPlanYearADJ_QUARTER_4: TIBOFloatField
      FieldName = 'ADJ_QUARTER_4'
    end
    object qryPlanYearKYDN: TSmallintField
      FieldName = 'KYDN'
    end
    object qryPlanYearLOCKED: TSmallintField
      FieldName = 'LOCKED'
    end
  end
  object dsPlanYear: TDataSource
    DataSet = qryPlanYear
    Left = 194
    Top = 140
  end
  object qryPlanObj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Locthiendinh\Accounting.gdb'
    EditSQL.Strings = (
      
        'execute procedure SP_ACTICLE_PLAN_OBJ(:ACTICLE_ID,:KYHT,:PLAN_MA' +
        'X,:PLAN_MIN,'
      ':PLAN_BEGIN ,:PLAN_ADJUST ,:OBJECT_ID , :OTYPE_ID , :BRANCH_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryPlanObjBeforeEdit
    BeforeOpen = qryPlanObjBeforeOpen
    OnPostError = qryPlanObjPostError
    SQL.Strings = (
      'SELECT ACTICLE_ID'
      '     , PACTICLE_ID'
      '     , ACTICLE_NO'
      '     , ACTICLE_NAME'
      '     , PLAN_BEGIN'
      '     , PLAN_ADJUST'
      '     , BRANCH_ID'
      '     , PLAN_MAX'
      '     , PLAN_MIN'
      '     , KYHT'
      '     , OBJECT_ID'
      '     , OTYPE_ID'
      
        'FROM SP_GET_ACTICLE_PLAN_OBJ(:KYHT,:BRANCH_ID,:OBJECT_ID,:OTYPE_' +
        'ID)'
      'order by ACTICLE_ID')
    FieldOptions = []
    Left = 87
    Top = 112
    object qryPlanObjACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryPlanObjPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryPlanObjACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryPlanObjACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryPlanObjPLAN_BEGIN: TIBOFloatField
      FieldName = 'PLAN_BEGIN'
    end
    object qryPlanObjPLAN_ADJUST: TIBOFloatField
      FieldName = 'PLAN_ADJUST'
    end
    object qryPlanObjBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
    object qryPlanObjPLAN_MAX: TIBOFloatField
      FieldName = 'PLAN_MAX'
    end
    object qryPlanObjPLAN_MIN: TIBOFloatField
      FieldName = 'PLAN_MIN'
    end
    object qryPlanObjKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryPlanObjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 90
    end
    object qryPlanObjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
  end
  object dsPlanObj: TDataSource
    DataSet = qryPlanObj
    Left = 87
    Top = 140
  end
  object qryPlanYearObj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYDN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Locthiendinh\Accounting.gdb'
    EditSQL.Strings = (
      
        'execute procedure sp_acticle_plan_year_obj(:ACTICLE_ID ,:KYDN ,:' +
        'PLAN_YEAR ,:PLAN_quarter_1 ,'
      
        ':PLAN_quarter_2 ,:PLAN_quarter_3 ,:PLAN_quarter_4,:ADJ_QUARTER_1' +
        ',:ADJ_QUARTER_2,'
      ':ADJ_QUARTER_3, :ADJ_QUARTER_4,:BRANCH_ID,:OBJECT_ID ,:OTYPE_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryPlanYearObjBeforeEdit
    BeforeOpen = qryPlanYearObjBeforeOpen
    AfterOpen = qryPlanYearObjAfterOpen
    OnPostError = qryPlanYearObjPostError
    SQL.Strings = (
      'SELECT ACTICLE_ID ,'
      '    PACTICLE_ID ,'
      '    ACTICLE_NAME ,'
      '    ACTICLE_NO ,'
      '    PLAN_YEAR,'
      '    PLAN_QUARTER_1 ,'
      '    PLAN_QUARTER_2 ,'
      '    PLAN_QUARTER_3 ,'
      '    PLAN_QUARTER_4 ,'
      '    ADJ_QUARTER_1 ,'
      '    ADJ_QUARTER_2 ,'
      '    ADJ_QUARTER_3 ,'
      '    ADJ_QUARTER_4 ,'
      '    BRANCH_ID,'
      '    KYDN,'
      '    OBJECT_ID,'
      '    OTYPE_ID,'
      '    LOCKED'
      
        'FROM sp_get_acticle_plan_year_obj(:KYDN,:BRANCH_ID,:OBJECT_ID ,:' +
        'OTYPE_ID )'
      'order by ACTICLE_ID')
    FieldOptions = []
    Left = 123
    Top = 112
    object qryPlanYearObjACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryPlanYearObjPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryPlanYearObjACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryPlanYearObjACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryPlanYearObjPLAN_QUARTER_1: TIBOFloatField
      FieldName = 'PLAN_QUARTER_1'
    end
    object qryPlanYearObjPLAN_QUARTER_2: TIBOFloatField
      FieldName = 'PLAN_QUARTER_2'
    end
    object qryPlanYearObjPLAN_QUARTER_3: TIBOFloatField
      FieldName = 'PLAN_QUARTER_3'
    end
    object qryPlanYearObjPLAN_QUARTER_4: TIBOFloatField
      FieldName = 'PLAN_QUARTER_4'
    end
    object qryPlanYearObjADJ_QUARTER_1: TIBOFloatField
      FieldName = 'ADJ_QUARTER_1'
    end
    object qryPlanYearObjADJ_QUARTER_2: TIBOFloatField
      FieldName = 'ADJ_QUARTER_2'
    end
    object qryPlanYearObjADJ_QUARTER_3: TIBOFloatField
      FieldName = 'ADJ_QUARTER_3'
    end
    object qryPlanYearObjADJ_QUARTER_4: TIBOFloatField
      FieldName = 'ADJ_QUARTER_4'
    end
    object qryPlanYearObjBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
    object qryPlanYearObjPLAN_YEAR: TIBOFloatField
      FieldName = 'PLAN_YEAR'
    end
    object qryPlanYearObjKYDN: TSmallintField
      FieldName = 'KYDN'
    end
    object qryPlanYearObjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 90
    end
    object qryPlanYearObjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryPlanYearObjLOCKED: TSmallintField
      FieldName = 'LOCKED'
    end
  end
  object dsPlanYearObj: TDataSource
    DataSet = qryPlanYearObj
    Left = 123
    Top = 140
  end
  object dsBranchFilterRight: TDataSource
    DataSet = qryBranchFilterRight
    Left = 354
    Top = 140
  end
  object qryBranchFilterRight: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Locthiendinh\Accounting.gdb'
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'BRANCH_ID')
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryBranchFilterRightBeforeOpen
    SQL.Strings = (
      'SELECT    '
      '    BRANCH_ID ,'
      '    FULLNAME ,'
      '    SHORTNAME ,'
      '    ISMIN ,'
      '    PBRANCH_ID ,'
      '    COMPANY_ID ,'
      '    HAS_RIGHT_READ ,'
      '    HAS_RIGHT_EDIT '
      'FROM SP_GET_BRANCH_ACTICLE_RIGHT(:USERNAME)'
      'order by BRANCH_ID')
    FieldOptions = []
    Left = 354
    Top = 114
    object qryBranchFilterRightBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
    object qryBranchFilterRightFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Size = 384
    end
    object qryBranchFilterRightSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 384
    end
    object qryBranchFilterRightISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryBranchFilterRightPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 21
    end
    object qryBranchFilterRightCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
    end
    object qryBranchFilterRightHAS_RIGHT_READ: TSmallintField
      FieldName = 'HAS_RIGHT_READ'
    end
    object qryBranchFilterRightHAS_RIGHT_EDIT: TSmallintField
      FieldName = 'HAS_RIGHT_EDIT'
    end
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 392
    Top = 126
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        42050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094252414E43485F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200C466F6E742E43686172736574070F44454641554C545F43484152534554
        0A466F6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E48
        656967687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E53
        74796C650B000A506172656E74466F6E74081042616E64466F6E742E43686172
        736574070F44454641554C545F434841525345540E42616E64466F6E742E436F
        6C6F72070C636C57696E646F77546578740F42616E64466F6E742E4865696768
        7402F50D42616E64466F6E742E4E616D65060D4D532053616E73205365726966
        0E42616E64466F6E742E5374796C650B000A44617461536F7572636507224163
        7469636C65506C616E46726D2E64734272616E636846696C7465725269676874
        0F46696C7465722E43726974657269610A040000000000000012486561646572
        466F6E742E43686172736574070F44454641554C545F43484152534554104865
        61646572466F6E742E436F6C6F72070C636C57696E646F775465787411486561
        646572466F6E742E48656967687402F50F486561646572466F6E742E4E616D65
        06065461686F6D6110486561646572466F6E742E5374796C650B000B4C6F6F6B
        416E644665656C07066C66466C6174094F7074696F6E7344420B106564676F43
        616E63656C4F6E457869740D6564676F43616E44656C6574650D6564676F4361
        6E496E73657274116564676F43616E4E617669676174696F6E116564676F436F
        6E6669726D44656C657465126564676F4C6F6164416C6C5265636F7264731065
        64676F557365426F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564
        676F4175746F57696474680D6564676F5573654269746D617000135072657669
        6577466F6E742E43686172736574070F44454641554C545F4348415253455411
        50726576696577466F6E742E436F6C6F720706636C426C756512507265766965
        77466F6E742E48656967687402F51050726576696577466F6E742E4E616D6506
        0D4D532053616E732053657269661150726576696577466F6E742E5374796C65
        0B0000135464784442477269644D61736B436F6C756D6E094252414E43485F49
        440743617074696F6E140E0000004DC3A320C491C6A16E2076E1BB8B0C466F6E
        742E43686172736574070F44454641554C545F434841525345540A466F6E742E
        436F6C6F72070C636C57696E646F77546578740B466F6E742E48656967687402
        F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B00
        0F486561646572416C69676E6D656E740708746143656E746572055769647468
        02560942616E64496E646578020008526F77496E6465780200094669656C644E
        616D6506094252414E43485F49440C43617074696F6E5F5554463706154D2B41
        4F4D202B415245426F512D6E20762B4873730000135464784442477269644D61
        736B436F6C756D6E0953484F52544E414D450743617074696F6E140F00000054
        C3AA6E20C491C6A16E2076E1BB8B0F486561646572416C69676E6D656E740708
        746143656E7465720557696474680323010942616E64496E646578020008526F
        77496E6465780200094669656C644E616D65060953484F52544E414D450C4361
        7074696F6E5F555446370617542B414F6F2D6E202B415245426F512D6E20762B
        487373000000}
    end
  end
end
