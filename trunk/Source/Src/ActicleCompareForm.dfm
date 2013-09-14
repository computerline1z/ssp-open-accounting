object ActicleCompareFrm: TActicleCompareFrm
  Left = 128
  Top = 54
  Width = 828
  Height = 619
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 820
    Height = 585
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object lkchinhanh: TdxDBExtLookupEdit
      Left = 315
      Top = 3
      Width = 102
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'SHORTNAME'
      DataSource = dsBranchFilterRight
      DBGridLayout = dxDBGridLayout1
      PickListField = 'SHORTNAME'
    end
    object pedtObj: TdxPopupEdit
      Left = 315
      Top = 25
      Width = 102
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtObjCloseUp
    end
    object btnCal: TElPopupButton
      Left = 739
      Top = 3
      Width = 80
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T'#237'nh gi'#225' tr'#7883
      TabStop = False
      TabOrder = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCalClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbPlanObj: TElRadioButton
      Left = 146
      Top = 25
      Width = 101
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'K'#7871' ho'#7841'ch chi ti'#7871't'
      TabOrder = 3
      OnClick = rbPlanObjClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbPlan: TElRadioButton
      Left = 146
      Top = 3
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
    object chkExpand: TdxCheckEdit
      Left = 1
      Top = 3
      Width = 144
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Caption = 'Bung to'#224'n b'#7897' c'#226'y d'#7919' li'#7879'u'
      StyleController = InterfaceDM.chkStyleController
      OnChange = chkExpandChange
    end
    object chkPS: TdxCheckEdit
      Left = 1
      Top = 25
      Width = 144
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Caption = 'Ch'#7881' hi'#7875'n th'#7883' ph'#225't sinh'
      StyleController = InterfaceDM.chkStyleController
      OnChange = chkPSChange
    end
    object spnFromMonth: TdxSpinEdit
      Left = 503
      Top = 3
      Width = 54
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Alignment = taCenter
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnFromYear: TdxSpinEdit
      Left = 558
      Top = 3
      Width = 57
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Alignment = taCenter
      MaxValue = 2700.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object spnToMonth: TdxSpinEdit
      Left = 638
      Top = 3
      Width = 44
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Alignment = taCenter
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnToYear: TdxSpinEdit
      Left = 683
      Top = 3
      Width = 55
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Alignment = taCenter
      MaxValue = 2700.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object pgc: TElPageControl
      Left = 1
      Top = 47
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      OnChange = pgcChange
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
      ActivePage = tabMonth
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      Align = alClient
      ParentColor = False
      TabOrder = 14
      object tabMonth: TElTabSheet
        PageControl = pgc
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
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
          OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          object dxDBTreeListColumn1: TdxDBTreeListColumn
            Caption = 'M'#7909'c, ti'#7875'u m'#7909'c'
            HeaderAlignment = taCenter
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NO'
            Caption_UTF7 = 'M+HuU-c, ti+HsM-u m+HuU-c'
          end
          object dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            Caption = 'M'#227' s'#7889
            HeaderAlignment = taCenter
            TabStop = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_ID'
            Caption_UTF7 = 'M+AOM s+HtE'
          end
          object dxDBTreeListColumn2: TdxDBTreeListColumn
            Caption = 'T'#234'n di'#7877'n gi'#7843'i'
            HeaderAlignment = taCenter
            Width = 197
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NAME'
            Caption_UTF7 = 'T+AOo-n di+HsU-n gi+HqM-i'
          end
          object dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn
            Caption = 'Level'
            HeaderAlignment = taCenter
            Visible = False
            Width = 226
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_LEVEL'
          end
          object dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn
            Caption = 'Ph'#225't sinh'
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REAL_VALUE'
            Caption_UTF7 = 'Ph+AOE-t sinh'
          end
          object dxDBTreeListCalcColumn1: TdxDBTreeListCalcColumn
            Caption = 'K'#7871' ho'#7841'ch'
            HeaderAlignment = taCenter
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_BEGIN'
            Caption_UTF7 = 'K+Hr8 ho+HqE-ch'
          end
          object dxDBTreeListCalcColumn2: TdxDBTreeListCalcColumn
            Caption = #272'i'#7873'u ch'#7881'nh'
            HeaderAlignment = taCenter
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_ADJUST'
            Caption_UTF7 = '+ARA-i+HsE-u ch+Hsk-nh'
          end
          object dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn
            Caption = 'Ch'#234'nh l'#7879'ch'
            HeaderAlignment = taCenter
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMP_BEGIN'
            Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch'
          end
          object dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn
            Caption = 'Ch'#234'nh l'#7865'ch '#272'C'
            HeaderAlignment = taCenter
            Visible = False
            Width = 136
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMP_ADJUST'
            Caption_UTF7 = 'Ch+AOo-nh l+Hrk-ch +ARA-C'
          end
          object dxDBTreeList1PERCENT: TdxDBTreeListMaskColumn
            Caption = 'T'#7927' l'#7879
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCENT'
            Caption_UTF7 = 'T+Hvc l+Hsc'
          end
        end
      end
      object tabYear: TElTabSheet
        PageControl = pgc
        ImageIndex = -1
        TabVisible = True
        Caption = 'K'#7871' ho'#7841'ch qu'#253
        Visible = False
        object grdPYear: TdxDBTreeList
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
          OnKeyDown = grdPYearKeyDown
          OnMouseUp = grdPYearMouseUp
          DataSource = dsItemYear
          DefaultRowHeight = 21
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          object grdPYearACTICLE_NO: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            Caption = 'M'#7909'c, ti'#7875'u m'#7909'c'
            HeaderAlignment = taCenter
            MinWidth = 90
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NO'
            Caption_UTF7 = 'M+HuU-c, ti+HsM-u m+HuU-c'
          end
          object grdPYearACTICLE_ID: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            Caption = 'M'#227' s'#7889
            HeaderAlignment = taCenter
            MaxLength = 90
            MinWidth = 30
            Visible = False
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_ID'
            Caption_UTF7 = 'M+AOM s+HtE'
          end
          object grdPYearPACTICLE_ID: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            HeaderAlignment = taCenter
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PACTICLE_ID'
          end
          object grdPYearACTICLE_NAME: TdxDBTreeListMaskColumn
            Alignment = taLeftJustify
            Caption = 'T'#234'n di'#7877'n gi'#7843'i'
            HeaderAlignment = taCenter
            MinWidth = 180
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACTICLE_NAME'
            Caption_UTF7 = 'T+AOo-n di+HsU-n gi+HqM-i'
          end
          object grdPYearPLAN_YEAR: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'KH N'#259'm'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_YEAR'
            Caption_UTF7 = 'KH N+AQM-m'
          end
          object grdPYearREAL_VALUE_YEAR: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'Th'#7921'c t'#7871' n'#259'm'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REAL_VALUE_YEAR'
            Caption_UTF7 = 'Th+HvE-c t+Hr8 n+AQM-m'
          end
          object grdPYearPERCENT_YEAR: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'T'#7927' l'#7879' n'#259'm'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCENT_YEAR'
            Caption_UTF7 = 'T+Hvc l+Hsc n+AQM-m'
          end
          object grdPYearPLAN_QUARTER_1: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'KH Qu'#253' 1'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_1'
            Caption_UTF7 = 'KH Qu+AP0 1'
          end
          object grdPYearADJ_QUARTER_1: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = #272'C Qu'#253' 1'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_1'
            Caption_UTF7 = '+ARA-C Qu+AP0 1'
          end
          object grdPYearREAL_QUARTER_1: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'PS qu'#253' 1'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REAL_QUARTER_1'
            Caption_UTF7 = 'PS qu+AP0 1'
          end
          object grdPYearPERCENT_QUARTER_1: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'T'#7927' l'#7879' qu'#253' 1'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCENT_QUARTER_1'
            Caption_UTF7 = 'T+Hvc l+Hsc qu+AP0 1'
          end
          object grdPYearPLAN_QUARTER_2: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'KH Qu'#253' 2'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_2'
            Caption_UTF7 = 'KH Qu+AP0 2'
          end
          object grdPYearADJ_QUARTER_2: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = #272'C Qu'#253' 2'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_2'
            Caption_UTF7 = '+ARA-C Qu+AP0 2'
          end
          object grdPYearREAL_QUARTER_2: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'PS qu'#253' 2'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REAL_QUARTER_2'
            Caption_UTF7 = 'PS qu+AP0 2'
          end
          object grdPYearPERCENT_QUARTER_2: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'T'#7927' l'#7879' qu'#253' 2'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCENT_QUARTER_2'
            Caption_UTF7 = 'T+Hvc l+Hsc qu+AP0 2'
          end
          object grdPYearPLAN_QUARTER_3: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'KH Qu'#253' 3'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_3'
            Caption_UTF7 = 'KH Qu+AP0 3'
          end
          object grdPYearADJ_QUARTER_3: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = #272'C Qu'#253' 3'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_3'
            Caption_UTF7 = '+ARA-C Qu+AP0 3'
          end
          object grdPYearREAL_QUARTER_3: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'PS qu'#253' 3'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REAL_QUARTER_3'
            Caption_UTF7 = 'PS qu+AP0 3'
          end
          object grdPYearPERCENT_QUARTER_3: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'T'#7927' l'#7879' qu'#253' 3'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCENT_QUARTER_3'
            Caption_UTF7 = 'T+Hvc l+Hsc qu+AP0 3'
          end
          object grdPYearPLAN_QUARTER_4: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'KH Qu'#253' 4'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLAN_QUARTER_4'
            Caption_UTF7 = 'KH Qu+AP0 4'
          end
          object grdPYearADJ_QUARTER_4: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = #272'C Qu'#253' 4'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ADJ_QUARTER_4'
            Caption_UTF7 = '+ARA-C Qu+AP0 4'
          end
          object grdPYearREAL_QUARTER_4: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'PS qu'#253' 4'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REAL_QUARTER_4'
            Caption_UTF7 = 'PS qu+AP0 4'
          end
          object grdPYearPERCENT_QUARTER_4: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            Caption = 'T'#7927' l'#7879' qu'#253' 4'
            HeaderAlignment = taCenter
            MinWidth = 80
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCENT_QUARTER_4'
            Caption_UTF7 = 'T+Hvc l+Hsc qu+AP0 4'
          end
        end
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
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
          object locFormGroup7: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locFormGroup10: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locFormItem7: TdxLayoutItem
                AutoAligns = []
                ShowCaption = False
                Control = chkExpand
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object locFormItem6: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                ShowCaption = False
                Control = rbPlan
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object locFormGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locFormItem8: TdxLayoutItem
                AutoAligns = []
                ShowCaption = False
                Control = chkPS
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object locFormItem5: TdxLayoutItem
                AutoAligns = []
                ShowCaption = False
                Control = rbPlanObj
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object locFormGroup4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locFormItem2: TdxLayoutItem
              AutoAligns = []
              Caption = #272#417'n v'#7883
              Control = lkchinhanh
              ControlOptions.ShowBorder = False
            end
            object locFormItem3: TdxLayoutItem
              AutoAligns = []
              Caption = 'M'#227' '#273#7889'i t'#432#7907'ng'
              Control = pedtObj
              ControlOptions.ShowBorder = False
            end
          end
        end
        object locFormItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'T'#7915' th'#225'ng'
          Control = spnFromMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Control = spnFromYear
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = #273#7871'n'
          Control = spnToMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem12: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Control = spnToYear
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          ShowCaption = False
          Control = btnCal
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem13: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = pgc
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 280
    Top = 128
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
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
        Caption = 
          'T'#236'nh h'#236'nh s'#7917' d'#7909'ng h'#7841'n m'#7913'c kinh ph'#237', ng'#226'n s'#225'ch v'#7899'i so v'#7899'i s'#7889' k'#7871' h' +
          'o'#7841'ch'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryItem: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TUKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DENKY'
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
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    EditSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryItemBeforeOpen
    OnFilterRecord = qryItemFilterRecord
    SQL.Strings = (
      'SELECT ACTICLE_ID ,'
      '    PACTICLE_ID ,'
      '    ACTICLE_NAME ,'
      '    ACTICLE_NO ,'
      '    REAL_VALUE ,'
      '    PLAN_MAX ,'
      '    PLAN_MIN ,'
      '    PLAN_BEGIN ,'
      '    PLAN_ADJUST ,'
      '    COMP_BEGIN ,'
      '    COMP_ADJUST ,'
      '    OVER_MAX ,'
      '    UNDER_MIN ,'
      '    PERCENT'
      'FROM SP_BC_ACTICLE_COMPARE('
      '    :TUKY ,'
      '    :DENKY ,'
      '    :BRANCH_ID ,'
      '    :OBJECT_ID ,'
      '    :OTYPE_ID )'
      ''
      ''
      '')
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
    object qryItemACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryItemACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryItemREAL_VALUE: TIBOFloatField
      FieldName = 'REAL_VALUE'
    end
    object qryItemPLAN_MAX: TIBOFloatField
      FieldName = 'PLAN_MAX'
    end
    object qryItemPLAN_MIN: TIBOFloatField
      FieldName = 'PLAN_MIN'
    end
    object qryItemPLAN_BEGIN: TIBOFloatField
      FieldName = 'PLAN_BEGIN'
    end
    object qryItemPLAN_ADJUST: TIBOFloatField
      FieldName = 'PLAN_ADJUST'
    end
    object qryItemCOMP_BEGIN: TIBOFloatField
      FieldName = 'COMP_BEGIN'
    end
    object qryItemCOMP_ADJUST: TIBOFloatField
      FieldName = 'COMP_ADJUST'
    end
    object qryItemPERCENT: TIBOFloatField
      FieldName = 'PERCENT'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 159
    Top = 140
  end
  object qryBranchFilterRight: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
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
  object dsBranchFilterRight: TDataSource
    DataSet = qryBranchFilterRight
    Left = 354
    Top = 140
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 392
    Top = 126
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        45050000545046301054647844424772696457726170706572000542616E6473
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
        0E42616E64466F6E742E5374796C650B000A44617461536F7572636507254163
        7469636C65436F6D7061726546726D2E64734272616E636846696C7465725269
        6768740F46696C7465722E43726974657269610A040000000000000012486561
        646572466F6E742E43686172736574070F44454641554C545F43484152534554
        10486561646572466F6E742E436F6C6F72070C636C57696E646F775465787411
        486561646572466F6E742E48656967687402F50F486561646572466F6E742E4E
        616D6506065461686F6D6110486561646572466F6E742E5374796C650B000B4C
        6F6F6B416E644665656C07066C66466C6174094F7074696F6E7344420B106564
        676F43616E63656C4F6E457869740D6564676F43616E44656C6574650D656467
        6F43616E496E73657274116564676F43616E4E617669676174696F6E11656467
        6F436F6E6669726D44656C657465126564676F4C6F6164416C6C5265636F7264
        73106564676F557365426F6F6B6D61726B73000B4F7074696F6E73566965770B
        0D6564676F4175746F57696474680D6564676F5573654269746D617000135072
        6576696577466F6E742E43686172736574070F44454641554C545F4348415253
        45541150726576696577466F6E742E436F6C6F720706636C426C756512507265
        76696577466F6E742E48656967687402F51050726576696577466F6E742E4E61
        6D65060D4D532053616E732053657269661150726576696577466F6E742E5374
        796C650B0000135464784442477269644D61736B436F6C756D6E094252414E43
        485F49440743617074696F6E140E0000004DC3A320C491C6A16E2076E1BB8B0C
        466F6E742E43686172736574070F44454641554C545F434841525345540A466F
        6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E48656967
        687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C
        650B000F486561646572416C69676E6D656E740708746143656E746572055769
        64746802560942616E64496E646578020008526F77496E646578020009466965
        6C644E616D6506094252414E43485F49440C43617074696F6E5F555446370615
        4D2B414F4D202B415245426F512D6E20762B4873730000135464784442477269
        644D61736B436F6C756D6E0953484F52544E414D450743617074696F6E140F00
        000054C3AA6E20C491C6A16E2076E1BB8B0F486561646572416C69676E6D656E
        740708746143656E7465720557696474680323010942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D65060953484F52544E414D45
        0C43617074696F6E5F555446370617542B414F6F2D6E202B415245426F512D6E
        20762B487373000000}
    end
  end
  object qryItemYear: TIBOQuery
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
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    EditSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'ACTICLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryItemYearBeforeOpen
    OnFilterRecord = qryItemYearFilterRecord
    SQL.Strings = (
      'SELECT     '
      '    ACTICLE_ID ,'
      '    PACTICLE_ID ,'
      '    ACTICLE_NAME ,'
      '    ACTICLE_NO ,'
      '    PLAN_YEAR ,'
      '    PLAN_QUARTER_1 ,'
      '    PLAN_QUARTER_2 ,'
      '    PLAN_QUARTER_3 ,'
      '    PLAN_QUARTER_4 ,'
      '    ADJ_QUARTER_2 ,'
      '    ADJ_QUARTER_1 ,'
      '    ADJ_QUARTER_3 ,'
      '    ADJ_QUARTER_4 ,'
      '    REAL_VALUE_YEAR ,'
      '    REAL_QUARTER_1 ,'
      '    REAL_QUARTER_2 ,'
      '    REAL_QUARTER_3 ,'
      '    REAL_QUARTER_4 ,'
      '    PERCENT_YEAR ,'
      '    PERCENT_QUARTER_1 ,'
      '    PERCENT_QUARTER_2 ,'
      '    PERCENT_QUARTER_3 ,'
      '    PERCENT_QUARTER_4 '
      'FROM SP_BC_ACTICLE_COMPARE_YEAR('
      '    :KYDN ,'
      '    :BRANCH_ID ,'
      '    :OBJECT_ID ,'
      '    :OTYPE_ID )'
      ''
      ''
      '')
    FieldOptions = []
    Left = 199
    Top = 112
    object qryItemYearACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryItemYearPACTICLE_ID: TWideStringField
      FieldName = 'PACTICLE_ID'
      Size = 30
    end
    object qryItemYearACTICLE_NAME: TWideStringField
      FieldName = 'ACTICLE_NAME'
      Size = 255
    end
    object qryItemYearACTICLE_NO: TWideStringField
      FieldName = 'ACTICLE_NO'
      Size = 30
    end
    object qryItemYearPLAN_YEAR: TIBOFloatField
      FieldName = 'PLAN_YEAR'
    end
    object qryItemYearPLAN_QUARTER_1: TIBOFloatField
      FieldName = 'PLAN_QUARTER_1'
    end
    object qryItemYearPLAN_QUARTER_2: TIBOFloatField
      FieldName = 'PLAN_QUARTER_2'
    end
    object qryItemYearPLAN_QUARTER_3: TIBOFloatField
      FieldName = 'PLAN_QUARTER_3'
    end
    object qryItemYearPLAN_QUARTER_4: TIBOFloatField
      FieldName = 'PLAN_QUARTER_4'
    end
    object qryItemYearADJ_QUARTER_2: TIBOFloatField
      FieldName = 'ADJ_QUARTER_2'
    end
    object qryItemYearADJ_QUARTER_1: TIBOFloatField
      FieldName = 'ADJ_QUARTER_1'
    end
    object qryItemYearADJ_QUARTER_3: TIBOFloatField
      FieldName = 'ADJ_QUARTER_3'
    end
    object qryItemYearADJ_QUARTER_4: TIBOFloatField
      FieldName = 'ADJ_QUARTER_4'
    end
    object qryItemYearREAL_VALUE_YEAR: TIBOFloatField
      FieldName = 'REAL_VALUE_YEAR'
    end
    object qryItemYearREAL_QUARTER_1: TIBOFloatField
      FieldName = 'REAL_QUARTER_1'
    end
    object qryItemYearREAL_QUARTER_2: TIBOFloatField
      FieldName = 'REAL_QUARTER_2'
    end
    object qryItemYearREAL_QUARTER_3: TIBOFloatField
      FieldName = 'REAL_QUARTER_3'
    end
    object qryItemYearREAL_QUARTER_4: TIBOFloatField
      FieldName = 'REAL_QUARTER_4'
    end
    object qryItemYearPERCENT_YEAR: TIBOFloatField
      FieldName = 'PERCENT_YEAR'
    end
    object qryItemYearPERCENT_QUARTER_1: TIBOFloatField
      FieldName = 'PERCENT_QUARTER_1'
    end
    object qryItemYearPERCENT_QUARTER_2: TIBOFloatField
      FieldName = 'PERCENT_QUARTER_2'
    end
    object qryItemYearPERCENT_QUARTER_3: TIBOFloatField
      FieldName = 'PERCENT_QUARTER_3'
    end
    object qryItemYearPERCENT_QUARTER_4: TIBOFloatField
      FieldName = 'PERCENT_QUARTER_4'
    end
  end
  object dsItemYear: TDataSource
    DataSet = qryItemYear
    Left = 199
    Top = 140
  end
end
