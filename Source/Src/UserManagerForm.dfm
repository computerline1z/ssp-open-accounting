object UserManagerFrm: TUserManagerFrm
  Left = 276
  Top = 187
  Width = 856
  Height = 571
  HelpContext = 11
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
  OnKeyDown = TntFormKeyDown
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 296
    Top = 384
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 848
    Height = 537
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnCancel: TElPopupButton
      Left = 306
      Top = 511
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
      TabOrder = 6
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 231
      Top = 511
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
      TabOrder = 5
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 772
      Top = 511
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
      TabOrder = 9
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 697
      Top = 511
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 8
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 76
      Top = 511
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
      Left = 1
      Top = 511
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
    object PgCtrlLeft: TElPageControl
      Left = 1
      Top = 1
      Width = 483
      Height = 512
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      OnChange = PgCtrlLeftChange
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = TntTabSheet1
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 11
      object TntTabSheet1: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'Ng'#432#7901'i d'#249'ng'
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 489
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'USER_NAME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = dxDBGrid2DblClick
          OnExit = dxDBGrid2Exit
          OnKeyDown = dxDBGrid2KeyDown
          DataSource = dsUser
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dxDBGrid2Column1: TdxDBGridColumn
            Caption = 'T'#234'n s'#7917' d'#7909'ng'
            HeaderAlignment = taCenter
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USER_NAME'
            Caption_UTF7 = 'T+AOo-n s+Hu0 d+HuU-ng'
          end
          object dxDBGrid2Column2: TdxDBGridColumn
            Caption = 'T'#234'n '#273#7847'y '#273#7911
            HeaderAlignment = taCenter
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'T+AOo-n +AREepw-y +AREe5w'
          end
          object dxDBGrid2Column4: TdxDBGridColumn
            Caption = 'L'#7847'n cu'#7889'i truy c'#7853'p'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LAST_ACCESS'
            Caption_UTF7 = 'L+Hqc-n cu+HtE-i truy c+Hq0-p'
          end
          object dxDBGrid2Column3: TdxDBGridColumn
            Caption = 'M'#7853't kh'#7849'u'
            HeaderAlignment = taCenter
            PasswordChar = '*'
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USER_PWD'
            Caption_UTF7 = 'M+Hq0-t kh+Hqk-u'
          end
        end
      end
      object TntTabSheet2: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'Ph'#226'n nh'#243'm'
        Visible = False
        object Splitter1: TSplitter
          Left = 228
          Top = 217
          Height = 271
        end
        object dxDBGrid5: TdxDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 217
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'GROUP_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = dxDBGrid2Exit
          OnKeyDown = dxDBGrid5KeyDown
          DataSource = dsGroup
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          OnChangeNode = dxDBGrid5ChangeNode
          object dxDBGridColumn4: TdxDBGridColumn
            Caption = 'M'#227' nh'#243'm'
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUP_ID'
            Caption_UTF7 = 'M+AOM nh+APM-m'
          end
          object dxDBGridColumn5: TdxDBGridColumn
            Caption = 'T'#234'n nh'#243'm'
            HeaderAlignment = taCenter
            Width = 181
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUP_NAME'
            Caption_UTF7 = 'T+AOo-n nh+APM-m'
          end
          object dxDBGrid5Column3: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 156
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUP_NOTES'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object grdUserInofGroup: TdxDBGrid
          Left = 257
          Top = 217
          Width = 222
          Height = 271
          Bands = <
            item
              Caption = 'Ng'#432#7901'i d'#249'ng trong nh'#243'm'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'USER_NAME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnDblClick = grdUserInofGroupDblClick
          OnExit = dxDBGrid2Exit
          DataSource = dsUserGroup
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'T'#234'n'
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USER_NAME'
            Caption_UTF7 = 'T+AOo-n'
          end
          object dxDBGridColumn3: TdxDBGridColumn
            Caption = 'T'#234'n '#273#7847'y '#273#7911
            HeaderAlignment = taCenter
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'T+AOo-n +AREepw-y +AREe5w'
          end
        end
        object grdUserOutofGroup: TdxDBGrid
          Left = 0
          Top = 217
          Width = 228
          Height = 271
          Bands = <
            item
              Caption = 'Ng'#432#7901'i d'#249'ng kh'#244'ng thu'#7897'c nh'#243'm'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'USER_NAME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alLeft
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnDblClick = grdUserOutofGroupDblClick
          OnExit = dxDBGrid2Exit
          DataSource = dsUserAvailable
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object dxDBGridColumn6: TdxDBGridColumn
            Caption = 'T'#234'n'
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USER_NAME'
            Caption_UTF7 = 'T+AOo-n'
          end
          object dxDBGridColumn7: TdxDBGridColumn
            Caption = 'T'#234'n '#273#7847'y '#273#7911
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'T+AOo-n +AREepw-y +AREe5w'
          end
        end
        object Panel1: TPanel
          Left = 231
          Top = 217
          Width = 26
          Height = 271
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object btnAdd: TElPopupButton
            Left = 2
            Top = 41
            Width = 21
            Height = 21
            Cursor = crDefault
            Hint = #272#432'a ng'#432#7901'i b'#234'n tr'#225'i v'#224'o nh'#243'm b'#234'n tr'#234'n'
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '>'
            TabOrder = 0
            ParentShowHint = False
            ShowHint = True
            Action = acAddUserIntoGrp
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object btnRemove: TElPopupButton
            Left = 2
            Top = 62
            Width = 21
            Height = 21
            Cursor = crDefault
            Hint = 'Xo'#225' ng'#432#7901'i b'#234'n ph'#7843'i kh'#7887'i nh'#243'm b'#234'n tr'#234'n'
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '<'
            TabOrder = 1
            ParentShowHint = False
            ShowHint = True
            Action = acRemoveUserFromgrp
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
        end
      end
    end
    object PgCtrlRight: TElPageControl
      Left = 492
      Top = 1
      Width = 355
      Height = 480
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      OnChange = PgCtrlRightChange
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabIndex = 1
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tab_2
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 12
      object tab_1: TElTabSheet
        PageControl = PgCtrlRight
        ImageIndex = -1
        TabVisible = True
        Caption = 'Ch'#7913'c n'#259'ng'
        Visible = False
        object grdRightModule: TdxDBGrid
          Left = 0
          Top = 0
          Width = 351
          Height = 457
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MODUL_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = grdRightModuleKeyDown
          OnMouseUp = grdRightModuleMouseUp
          DataSource = dsRight
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ScrollBars = ssNone
          object grdRightModule_Name: TdxDBGridColumn
            Caption = 'Ch'#7913'c n'#259'ng'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 159
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MODUL_NAME'
            Caption_UTF7 = 'Ch+Huk-c n+AQM-ng'
          end
          object grdRightModule_Read: TdxDBGridCheckColumn
            Caption = 'Xem'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 35
            BandIndex = 0
            RowIndex = 0
            OnChange = grdRightModule_ReadChange
            FieldName = 'ALLOWREAD'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object grdRightModule_Ins: TdxDBGridCheckColumn
            Caption = 'Th'#234'm'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 40
            BandIndex = 0
            RowIndex = 0
            OnChange = grdRightModule_InsChange
            FieldName = 'ALLOWINSERT'
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayUnChecked = ' '
            Caption_UTF7 = 'Th+AOo-m'
          end
          object grdRightModule_Edit: TdxDBGridCheckColumn
            Caption = 'S'#7917'a'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 35
            BandIndex = 0
            RowIndex = 0
            OnChange = grdRightModule_EditChange
            FieldName = 'ALLOWEDIT'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'S+Hu0-a'
          end
          object grdRightModule_Del: TdxDBGridCheckColumn
            Caption = 'X'#243'a'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 35
            BandIndex = 0
            RowIndex = 0
            OnChange = grdRightModule_DelChange
            FieldName = 'ALLOWDELETE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'X+APM-a'
          end
        end
      end
      object tab_2: TElTabSheet
        PageControl = PgCtrlRight
        ImageIndex = -1
        TabVisible = True
        Caption = 'Ch'#7913'ng t'#7915
        object TreeRightDocType: TdxDBTreeList
          Left = 0
          Top = 0
          Width = 351
          Height = 457
          Hint = 'Click chu'#233't ph'#182'i '#174#211' ch'#228'n h'#213't ho'#198'c b'#225' h'#213't'
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'DOCTYPE_ID'
          ParentField = 'PDOC_TYPE'
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnKeyDown = TreeRightDocTypeKeyDown
          OnMouseUp = TreeRightDocTypeMouseUp
          DataSource = dsRightDoc
          DefaultRowHeight = 20
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsCustomize = [etoBandMoving, etoBandSizing, etoKeepColumnWidth]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          ScrollBars = ssNone
          TreeLineColor = clGrayText
          object TreeDocType_Name: TdxDBTreeListColumn
            Caption = 'Lo'#7841'i phi'#7871'u'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 171
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOCTYPE_NAME'
            Caption_UTF7 = 'Lo+HqE-i phi+Hr8-u'
          end
          object col_R: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Xem'
            HeaderAlignment = taCenter
            Sizing = False
            Width = 35
            BandIndex = 0
            RowIndex = 0
            OnChange = col_RChange
            FieldName = 'ALLOWREAD'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object col_Ins: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Th'#234'm'
            HeaderAlignment = taCenter
            MinWidth = 20
            Sizing = False
            Width = 40
            BandIndex = 0
            RowIndex = 0
            OnChange = col_InsChange
            FieldName = 'ALLOWINSERT'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Th+AOo-m'
          end
          object col_Edit: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'S'#7917'a'
            HeaderAlignment = taCenter
            MinWidth = 20
            Sizing = False
            Width = 35
            BandIndex = 0
            RowIndex = 0
            OnChange = col_EditChange
            FieldName = 'ALLOWEDIT'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'S+Hu0-a'
          end
          object col_Del: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'X'#243'a'
            HeaderAlignment = taCenter
            MinWidth = 20
            Sizing = False
            Width = 35
            BandIndex = 0
            RowIndex = 0
            OnChange = col_DelChange
            FieldName = 'ALLOWDELETE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'X+APM-a'
          end
        end
      end
      object tab_3: TElTabSheet
        PageControl = PgCtrlRight
        ImageIndex = -1
        TabVisible = True
        Caption = 'B'#225'o c'#225'o'
        Visible = False
        object TreeRightReport: TdxDBGrid
          Left = 0
          Top = 0
          Width = 351
          Height = 457
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'REPORT_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = TreeRightReportKeyDown
          OnMouseUp = TreeRightReportMouseUp
          DataSource = dsRightRpt
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object TreeRightReport_Name: TdxDBTreeListColumn
            Caption = 'T'#234'n b'#225'o c'#225'o'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 228
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NAME'
            Caption_UTF7 = 'T+AOo-n b+AOE-o c+AOE-o'
          end
          object TreeRightReport_Read: TdxDBTreeListCheckColumn
            Caption = 'Xem'
            HeaderAlignment = taCenter
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWREAD'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object TreeRightReportColumn3: TdxDBGridColumn
            Caption = 'Lo'#7841'i '
            Sorted = csUp
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TENLOAIBC'
            GroupIndex = 0
            Caption_UTF7 = 'Lo+HqE-i '
          end
        end
      end
    end
    object btnXemnhatky: TElPopupButton
      Left = 391
      Top = 511
      Width = 85
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X&em nh'#7853't k'#253
      TabOrder = 7
      OnClick = btnXemnhatkyClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnEdit: TElPopupButton
      Left = 151
      Top = 511
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
      OnClick = btnEditClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 697
      Top = 481
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      TabOrder = 0
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 772
      Top = 481
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'B'#7887' t'#7845't c'#7843
      TabOrder = 1
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object popBranch: TdxPopupEdit
      Left = 525
      Top = 483
      Width = 172
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
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
      object locFormGroup3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'TntPageControl1'
          ShowCaption = False
          Control = PgCtrlLeft
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locFormItem9: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avClient
            Caption = 'TntPageControl2'
            ShowCaption = False
            Control = PgCtrlRight
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormGroup5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object locFormItem3: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avCenter
              Caption = #272#417'n v'#7883
              Enabled = False
              Control = popBranch
              ControlOptions.ShowBorder = False
            end
            object locFormItem10: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object locFormItem11: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object locFormGroup1: TdxLayoutGroup
        Caption = #167#232'i t'#173#238'ng chi ti'#213't'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 5
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
        object locFormEditBtn: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnEdit
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
          Offsets.Left = 5
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
        object locFormXemnhatky: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 10
          ShowCaption = False
          Control = btnXemnhatky
          ControlOptions.AutoColor = True
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
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 252
    Top = 56
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 180
    Top = 128
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsUser
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsUser
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsUser
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsUser
    end
    object acAddUserIntoGrp: TAction
      Caption = 'acAddUserIntoGrp'
      OnExecute = acAddUserIntoGrpExecute
    end
    object acRemoveUserFromgrp: TAction
      Caption = 'acRemoveUserFromgrp'
      OnExecute = acRemoveUserFromgrpExecute
    end
    object acShowUserDetail: TAction
      Caption = 'acShowUserDetail'
      OnExecute = acShowUserDetailExecute
    end
  end
  object qryUser: TIBOQuery
    Params = <>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_LIST'
      'WHERE'
      '   USER_NAME = :OLD_USER_NAME')
    EditSQL.Strings = (
      'UPDATE USER_LIST SET'
      '   USER_NAME = :USER_NAME, /*PK*/'
      '   FULL_NAME = :FULL_NAME,'
      '   USER_PWD = :USER_PWD,'
      '   LAST_ACCESS = :LAST_ACCESS,'
      '   ACCESSCOUNT = :ACCESSCOUNT'
      'WHERE'
      '   USER_NAME = :OLD_USER_NAME')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO USER_LIST('
      '   USER_NAME, /*PK*/'
      '   FULL_NAME,'
      '   USER_PWD,'
      '   LAST_ACCESS,'
      '   ACCESSCOUNT)'
      'VALUES ('
      '   :USER_NAME,'
      '   :FULL_NAME,'
      '   :USER_PWD,'
      '   :LAST_ACCESS,'
      '   :ACCESSCOUNT)')
    KeyLinks.Strings = (
      'USER_NAME')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryUserBeforeEdit
    BeforeDelete = qryUserBeforeDelete
    AfterDelete = qryUserAfterDelete
    BeforeInsert = qryUserBeforeInsert
    AfterInsert = qryUserAfterInsert
    BeforePost = qryUserBeforePost
    AfterPost = qryUserAfterPost
    OnPostError = qryUserPostError
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , FULL_NAME'
      '     , USER_PWD'
      '     , LAST_ACCESS'
      '     , ACCESSCOUNT'
      'FROM USER_LIST '
      'order by USER_NAME')
    FieldOptions = []
    Left = 527
    Top = 92
    object qryUserLAST_ACCESS: TDateTimeField
      FieldName = 'LAST_ACCESS'
    end
    object qryUserACCESSCOUNT: TIntegerField
      FieldName = 'ACCESSCOUNT'
    end
    object qryUserUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryUserFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryUserUSER_PWD: TWideStringField
      FieldName = 'USER_PWD'
      Size = 63
    end
  end
  object dsUser: TDataSource
    DataSet = qryUser
    Left = 527
    Top = 120
  end
  object qryRight: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_MODUL'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   MODUL_ID = :OLD_MODUL_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    EditSQL.Strings = (
      'UPDATE USER_MODUL SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   MODUL_ID = :MODUL_ID, /*PK*/'
      '   USER_NAME = :USER_NAME, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWEDIT = :ALLOWEDIT,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   MODUL_ID = :OLD_MODUL_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO USER_MODUL('
      '   BRANCH_ID, /*PK*/'
      '   MODUL_ID, /*PK*/'
      '   USER_NAME, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWEDIT,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :MODUL_ID,'
      '   :USER_NAME,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWEDIT,'
      '   :ALLOWDELETE)')
    KeyLinks.Strings = (
      'USER_NAME'
      'USER_MODUL.MODUL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryRightBeforeOpen
    DataSource = dsUser
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , USER_MODUL.MODUL_ID'
      '     , ALLOWREAD'
      '     , ALLOWINSERT'
      '     , ALLOWEDIT'
      '     , ALLOWDELETE'
      '     , MODUL_NAME'
      '     , ENGNAME'
      '     , BRANCH_ID'
      'FROM USER_MODUL'
      'JOIN MODUL_LIST on(USER_MODUL.MODUL_ID = MODUL_LIST.MODUL_ID)'
      'where USER_NAME=:USER_NAME AND BRANCH_ID = :BRANCH_ID'
      'order by USER_MODUL.MODUL_ID')
    FieldOptions = []
    Left = 575
    Top = 124
    object qryRightMODUL_ID: TSmallintField
      FieldName = 'MODUL_ID'
      Required = True
    end
    object qryRightALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
      OnChange = qryRightALLOWREADChange
    end
    object qryRightALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
      OnChange = qryRightALLOWINSERTChange
    end
    object qryRightALLOWEDIT: TSmallintField
      FieldName = 'ALLOWEDIT'
      OnChange = qryRightALLOWEDITChange
    end
    object qryRightALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
      OnChange = qryRightALLOWDELETEChange
    end
    object qryRightUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryRightMODUL_NAME: TWideStringField
      FieldName = 'MODUL_NAME'
      Size = 126
    end
    object qryRightENGNAME: TWideStringField
      FieldName = 'ENGNAME'
      Size = 126
    end
    object qryRightBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsRight: TDataSource
    DataSet = qryRight
    Left = 575
    Top = 152
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 292
    Top = 120
    DockControlHeights = (
      0
      0
      0
      0)
    object btnSeeAll: TdxBarButton
      Caption = 'C'#243' quy'#7873'n xem t'#7845't c'#7843
      Category = 0
      Hint = 'C'#243' quy?n xem t?t c?'
      Visible = ivAlways
      OnClick = btnSeeAllClick
    end
    object btnNoSee: TdxBarButton
      Caption = 'Kh'#244'ng c'#243' quy'#7873'n xem'
      Category = 0
      Hint = 'Kh'#244'ng c'#243' quy?n xem t?t c?'
      Visible = ivAlways
      OnClick = btnNoSeeClick
    end
    object btnInsAll: TdxBarButton
      Caption = 'C'#243' quy'#7873'n th'#234'm t'#7845't c'#7843
      Category = 0
      Hint = 'C'#243' quy?n th'#234'm t?t c?'
      Visible = ivAlways
      OnClick = btnInsAllClick
    end
    object btnNoIns: TdxBarButton
      Caption = 'Kh'#244'ng c'#243' quy'#7873'n th'#234'm'
      Category = 0
      Hint = 'Kh'#244'ng c'#243' quy?n th'#234'm n'#224'o'
      Visible = ivAlways
      OnClick = btnNoInsClick
    end
    object btnEditAll: TdxBarButton
      Caption = 'C'#243' quy'#7873'n s'#7917'a t'#7845't c'#7843
      Category = 0
      Hint = 'C'#243' quy?n s?a t?t c?'
      Visible = ivAlways
      OnClick = btnEditAllClick
    end
    object btnNoEdit: TdxBarButton
      Caption = 'Kh'#244'ng c'#243' quy'#7873'n s'#7917'a '
      Category = 0
      Hint = 'Kh'#244'ng c'#243' quy?n s?a '
      Visible = ivAlways
      OnClick = btnNoEditClick
    end
    object btnDelAll: TdxBarButton
      Caption = 'C'#243' quy'#7873'n x'#243'a t'#7845't c'#7843
      Category = 0
      Hint = 'C'#243' quy?n x'#243'a t?t c?'
      Visible = ivAlways
      OnClick = btnDelAllClick
    end
    object btnNoDel: TdxBarButton
      Caption = 'Kh'#244'ng c'#243' quy'#7873'n x'#243'a'
      Category = 0
      Hint = 'Kh'#244'ng c'#243' quy?n x'#243'a'
      Visible = ivAlways
      OnClick = btnNoDelClick
    end
    object bbtnAll: TdxBarButton
      Caption = 'To'#224'n quy'#7873'n ch'#7913'c n'#259'ng n'#224'y'
      Category = 0
      Hint = 'To'#224'n quy'#7873'n ch'#7913'c n'#259'ng n'#224'y'
      Visible = ivAlways
      OnClick = bbtnAllClick
    end
    object bbtnNoAll: TdxBarButton
      Caption = 'Ch'#7913'c n'#259'ng n'#224'y kh'#244'ng c'#243' quy'#7873'n'
      Category = 0
      Hint = 'Ch'#7913'c n'#259'ng n'#224'y kh'#244'ng c'#243' quy'#7873'n'
      Visible = ivAlways
      OnClick = bbtnNoAllClick
    end
    object btnChechAllBranch: TdxBarButton
      Caption = 'To'#224'n quy'#7873'n tr'#234'n t'#7845't c'#7843' '#273#417'n v'#7883
      Category = 0
      Enabled = False
      Hint = 'To'#224'n quy'#7873'n tr'#234'n t'#7845't c'#7843' '#273#417'n v'#7883
      Visible = ivAlways
      OnClick = btnChechAllBranchClick
    end
    object btnUncheckAllBranch: TdxBarButton
      Caption = 'Kh'#244'ng c'#243' quy'#7873'n tr'#234'n t'#7845't c'#7843' '#273#417'n v'#7883
      Category = 0
      Enabled = False
      Hint = 'Kh'#244'ng c'#243' quy'#7873'n tr'#234'n t'#7845't c'#7843' '#273#417'n v'#7883
      Visible = ivAlways
      OnClick = btnUncheckAllBranchClick
    end
  end
  object pmRight: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbtnAll
        Visible = True
      end
      item
        Item = bbtnNoAll
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnSeeAll
        Visible = True
      end
      item
        Item = btnNoSee
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnInsAll
        Visible = True
      end
      item
        Item = btnNoIns
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnEditAll
        Visible = True
      end
      item
        Item = btnNoEdit
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnDelAll
        Visible = True
      end
      item
        Item = btnNoDel
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnChechAllBranch
        Visible = True
      end
      item
        Item = btnUncheckAllBranch
        Visible = True
      end>
    UseOwnFont = False
    Left = 292
    Top = 148
  end
  object qryRightDoc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_DOCTYPE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    EditSQL.Strings = (
      'UPDATE USER_DOCTYPE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   DOCTYPE_ID = :DOCTYPE_ID, /*PK*/'
      '   USER_NAME = :USER_NAME, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWEDIT = :ALLOWEDIT,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO USER_DOCTYPE('
      '   BRANCH_ID, /*PK*/'
      '   DOCTYPE_ID, /*PK*/'
      '   USER_NAME, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWEDIT,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :DOCTYPE_ID,'
      '   :USER_NAME,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWEDIT,'
      '   :ALLOWDELETE)')
    KeyLinks.Strings = (
      'USER_NAME'
      'USER_DOCTYPE.DOCTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryRightDocBeforeOpen
    BeforePost = qryRightDocBeforePost
    DataSource = dsUser
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , USER_DOCTYPE.DOCTYPE_ID'
      '     , ALLOWREAD'
      '     , ALLOWINSERT'
      '     , ALLOWEDIT'
      '     , ALLOWDELETE'
      '     , DOCTYPE_NAME, ENGLISH_NAME'
      '     , PDOC_TYPE'
      '     , BRANCH_ID'
      'FROM USER_DOCTYPE'
      
        'JOIN DOC_TYPE on (USER_DOCTYPE.DOCTYPE_ID= DOC_TYPE.DOCTYPE_ID a' +
        'nd DOC_TYPE.DOCTYPE_ID<>-1)'
      
        'where USER_NAME=:USER_NAME and HIENTHI=1 and BRANCH_ID =:BRANCH_' +
        'ID'
      'order by USER_DOCTYPE.DOCTYPE_ID')
    FieldOptions = []
    Left = 619
    Top = 124
    object qryRightDocDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Required = True
    end
    object qryRightDocALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
      OnChange = qryRightDocALLOWREADChange
    end
    object qryRightDocALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
      OnChange = qryRightDocALLOWINSERTChange
    end
    object qryRightDocALLOWEDIT: TSmallintField
      FieldName = 'ALLOWEDIT'
      OnChange = qryRightDocALLOWEDITChange
    end
    object qryRightDocALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
      OnChange = qryRightDocALLOWDELETEChange
    end
    object qryRightDocPDOC_TYPE: TIntegerField
      FieldName = 'PDOC_TYPE'
    end
    object qryRightDocUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryRightDocDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
    object qryRightDocENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryRightDocBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsRightDoc: TDataSource
    DataSet = qryRightDoc
    Left = 619
    Top = 152
  end
  object qryRightRpt: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_REPORT'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   USER_NAME = :OLD_USER_NAME AND'
      '   BRANCH_ID = :OLD_BRANCH_ID '
      '')
    EditSQL.Strings = (
      'UPDATE USER_REPORT SET'
      '   REPORT_ID =:REPORT_ID, /*PK*/'
      '   USER_NAME =:USER_NAME, /*PK*/'
      '   ALLOWREAD =:ALLOWREAD,'
      '   BRANCH_ID = :BRANCH_ID'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   USER_NAME = :OLD_USER_NAME AND'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO USER_REPORT('
      '   REPORT_ID, /*PK*/'
      '   USER_NAME, /*PK*/'
      '   ALLOWREAD,'
      '   BRANCH_ID)'
      'VALUES ('
      '   :REPORT_ID,'
      '   :USER_NAME,'
      '   :ALLOWREAD,'
      '   :BRANCH_ID)')
    KeyLinks.Strings = (
      'USER_NAME'
      'REPORT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryRightRptBeforeOpen
    DataSource = dsUser
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , REPORT_ID'
      '     , ALLOWREAD'
      '     , REPORT_NAME, ENGLISH_NAME  '
      '     , TENLOAIBC'
      '     , ENGTYPE'
      '     , BRANCH_ID'
      'FROM SP_USER_REPORT(:BRANCH_ID) where USER_NAME=:USER_NAME')
    FieldOptions = []
    Left = 671
    Top = 124
    object qryRightRptREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object qryRightRptALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryRightRptUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Size = 45
    end
    object qryRightRptREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 381
    end
    object qryRightRptTENLOAIBC: TWideStringField
      FieldName = 'TENLOAIBC'
      Size = 189
    end
    object qryRightRptENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryRightRptENGTYPE: TWideStringField
      FieldName = 'ENGTYPE'
      Size = 126
    end
    object qryRightRptBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 21
    end
  end
  object dsRightRpt: TDataSource
    DataSet = qryRightRpt
    Left = 671
    Top = 152
  end
  object qryGroup: TIBOQuery
    Params = <>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM GROUP_LIST'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID')
    EditSQL.Strings = (
      'UPDATE GROUP_LIST SET'
      '   GROUP_ID =:GROUP_ID, /*PK*/'
      '   GROUP_NAME = :GROUP_NAME,'
      '   GROUP_NOTES = :GROUP_NOTES'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO GROUP_LIST('
      '   GROUP_ID, /*PK*/'
      '   GROUP_NAME,'
      '   GROUP_NOTES)'
      'VALUES ('
      '   :GROUP_ID,'
      '   :GROUP_NAME,'
      '   :GROUP_NOTES)')
    KeyLinks.Strings = (
      'GROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryGroupBeforeEdit
    BeforeDelete = qryGroupBeforeDelete
    BeforeInsert = qryGroupBeforeInsert
    AfterInsert = qryGroupAfterInsert
    BeforePost = qryGroupBeforePost
    AfterPost = qryGroupAfterPost
    SQL.Strings = (
      'SELECT GROUP_ID'
      '     , GROUP_NAME'
      '     , GROUP_NOTES'
      ''
      'FROM GROUP_LIST')
    FieldOptions = []
    Left = 208
    Top = 220
    object qryGroupGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 15
    end
    object qryGroupGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 126
    end
    object qryGroupGROUP_NOTES: TWideStringField
      FieldName = 'GROUP_NOTES'
      Size = 126
    end
  end
  object dsGroup: TDataSource
    DataSet = qryGroup
    Left = 208
    Top = 248
  end
  object qryGroupDoc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM GROUP_DOCTYPE'
      'WHERE'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID AND'
      '   GROUP_ID = :OLD_GROUP_ID')
    EditSQL.Strings = (
      'UPDATE GROUP_DOCTYPE SET'
      '   DOCTYPE_ID =:DOCTYPE_ID, /*PK*/'
      '   GROUP_ID =:GROUP_ID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWEDIT = :ALLOWEDIT,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID AND'
      '   GROUP_ID = :OLD_GROUP_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO GROUP_DOCTYPE('
      '   DOCTYPE_ID, /*PK*/'
      '   GROUP_ID, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWEDIT,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :DOCTYPE_ID,'
      '   :GROUP_ID,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWEDIT,'
      '   :ALLOWDELETE)')
    KeyLinks.Strings = (
      'GROUP_ID'
      'GROUP_DOCTYPE.DOCTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroup
    SQL.Strings = (
      'SELECT GROUP_ID'
      '     , GROUP_DOCTYPE.DOCTYPE_ID'
      '     , ALLOWREAD'
      '     , ALLOWINSERT'
      '     , ALLOWEDIT'
      '     , ALLOWDELETE'
      '     , DOCTYPE_NAME,ENGLISH_NAME'
      '     , PDOC_TYPE'
      'FROM GROUP_DOCTYPE'
      'JOIN DOC_TYPE on (GROUP_DOCTYPE.DOCTYPE_ID=DOC_TYPE.DOCTYPE_ID)'
      'where GROUP_ID=:GROUP_ID and HIENTHI=1'
      'order by GROUP_DOCTYPE.DOCTYPE_ID')
    FieldOptions = []
    Left = 260
    Top = 268
    object qryGroupDocDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Required = True
    end
    object qryGroupDocALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
      OnChange = qryGroupDocALLOWREADChange
    end
    object qryGroupDocALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
      OnChange = qryGroupDocALLOWINSERTChange
    end
    object qryGroupDocALLOWEDIT: TSmallintField
      FieldName = 'ALLOWEDIT'
      OnChange = qryGroupDocALLOWEDITChange
    end
    object qryGroupDocALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
      OnChange = qryGroupDocALLOWDELETEChange
    end
    object qryGroupDocPDOC_TYPE: TIntegerField
      FieldName = 'PDOC_TYPE'
    end
    object qryGroupDocGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 15
    end
    object qryGroupDocDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
    object qryGroupDocENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
  end
  object dsGroupDoc: TDataSource
    DataSet = qryGroupDoc
    Left = 260
    Top = 296
  end
  object qryUserAvailable: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'group_id'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    KeyLinks.Strings = (
      'USER_NAME')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroup
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , FULL_NAME'
      'FROM USER_LIST'
      
        'where USER_NAME not in (select USER_NAME from user_group where g' +
        'roup_id=:group_id)'
      'and USER_NAME<>'#39'SSPAdmin'#39)
    FieldOptions = []
    Left = 60
    Top = 344
    object qryUserAvailableUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryUserAvailableFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
  end
  object dsUserAvailable: TDataSource
    DataSet = qryUserAvailable
    Left = 60
    Top = 372
  end
  object qryUserGroup: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_GROUP'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    EditSQL.Strings = (
      'UPDATE USER_GROUP SET'
      '   GROUP_ID =:GROUP_ID,'
      '   USER_NAME =:USER_NAME '
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO USER_GROUP('
      '   GROUP_ID, '
      '   USER_NAME)'
      'VALUES ('
      '   :GROUP_ID,'
      '   :USER_NAME)')
    KeyLinks.Strings = (
      'USER_GROUP.USER_NAME'
      'GROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroup
    SQL.Strings = (
      'SELECT FULL_NAME'
      '     , USER_GROUP.USER_NAME'
      '     , GROUP_ID'
      'FROM USER_GROUP'
      'JOIN USER_LIST on (USER_GROUP.USER_NAME= USER_LIST.USER_NAME)'
      'where GROUP_ID=:GROUP_ID')
    FieldOptions = []
    Left = 300
    Top = 348
    object qryUserGroupFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryUserGroupUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryUserGroupGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 15
    end
  end
  object dsUserGroup: TDataSource
    DataSet = qryUserGroup
    Left = 300
    Top = 376
  end
  object tsUserManager: TIB_Transaction
    IB_Connection = MainDM.cnMain
    AutoCommit = True
    Isolation = tiCommitted
    Left = 28
    Top = 208
  end
  object qryGroupModule: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM GROUP_MODUL'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   MODUL_ID = :OLD_MODUL_ID')
    EditSQL.Strings = (
      'UPDATE GROUP_MODUL SET'
      '   GROUP_ID =:GROUP_ID, /*PK*/'
      '   MODUL_ID =:MODUL_ID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWEDIT = :ALLOWEDIT,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   MODUL_ID = :OLD_MODUL_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO GROUP_MODUL('
      '   GROUP_ID, /*PK*/'
      '   MODUL_ID, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWEDIT,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :GROUP_ID,'
      '   :MODUL_ID,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWEDIT,'
      '   :ALLOWDELETE)')
    KeyLinks.Strings = (
      'GROUP_ID'
      'GROUP_MODUL.MODUL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroup
    SQL.Strings = (
      'SELECT GROUP_ID'
      '     , GROUP_MODUL.MODUL_ID'
      '     , ALLOWREAD'
      '     , ALLOWINSERT'
      '     , ALLOWEDIT'
      '     , ALLOWDELETE'
      '     , MODUL_NAME'
      'FROM GROUP_MODUL'
      'JOIN MODUL_LIST on(GROUP_MODUL.MODUL_ID = MODUL_LIST.MODUL_ID)'
      'where GROUP_ID=:GROUP_ID order by GROUP_MODUL.MODUL_ID')
    FieldOptions = []
    Left = 208
    Top = 268
    object qryGroupModuleMODUL_ID: TSmallintField
      FieldName = 'MODUL_ID'
      Required = True
    end
    object qryGroupModuleALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
      OnChange = qryGroupModuleALLOWREADChange
    end
    object qryGroupModuleALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
      OnChange = qryGroupModuleALLOWINSERTChange
    end
    object qryGroupModuleALLOWEDIT: TSmallintField
      FieldName = 'ALLOWEDIT'
      OnChange = qryGroupModuleALLOWEDITChange
    end
    object qryGroupModuleALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
      OnChange = qryGroupModuleALLOWDELETEChange
    end
    object qryGroupModuleGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 15
    end
    object qryGroupModuleMODUL_NAME: TWideStringField
      FieldName = 'MODUL_NAME'
      Size = 126
    end
  end
  object dsGroupModule: TDataSource
    DataSet = qryGroupModule
    Left = 208
    Top = 296
  end
  object qryGroupReport: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM GROUP_REPORT'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE GROUP_REPORT SET'
      '   GROUP_ID = :GROUP_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = tsUserManager
    InsertSQL.Strings = (
      'INSERT INTO GROUP_REPORT('
      '   GROUP_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   ALLOWREAD)'
      'VALUES ('
      '   :GROUP_ID,'
      '   :REPORT_ID,'
      '   :ALLOWREAD)')
    KeyLinks.Strings = (
      'GROUP_ID'
      'REPORT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroup
    SQL.Strings = (
      'SELECT GROUP_ID'
      '     , REPORT_ID'
      '     , ALLOWREAD'
      '     , REPORT_NAME,ENGLISH_NAME  '
      '     , TENLOAIBC'
      'FROM SP_GROUP_REPORT where GROUP_ID=:GROUP_ID')
    FieldOptions = []
    Left = 304
    Top = 268
    object qryGroupReportREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object qryGroupReportALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryGroupReportGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 45
    end
    object qryGroupReportREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 381
    end
    object qryGroupReportTENLOAIBC: TWideStringField
      FieldName = 'TENLOAIBC'
      Size = 189
    end
    object qryGroupReportENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
  end
  object dsGroupReport: TDataSource
    DataSet = qryGroupReport
    Left = 304
    Top = 296
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'Qu'#7843'n tr'#7883' ng'#432#7901'i d'#249'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
end
