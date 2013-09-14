object tln_Costdeclarefrm: Ttln_Costdeclarefrm
  Left = 186
  Top = 83
  Width = 706
  Height = 530
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 698
    Height = 496
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object TntBitBtn5: TElPopupButton
      Left = 544
      Top = 468
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 2
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 620
      Top = 468
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 3
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pedtKH: TdxPopupEdit
      Left = 61
      Top = 3
      Width = 124
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = pedtKHEnter
      OnChange = pedtKHChange
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtKHCloseUp
    end
    object chkExpand: TdxCheckEdit
      Left = 186
      Top = 3
      Width = 173
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Caption = 'Bung to'#224'n b'#7897' d'#7919' li'#7879'u'
      StyleController = InterfaceDM.chkStyleController
      OnChange = chkExpandChange
    end
    object ElPageControl1: TElPageControl
      Left = 3
      Top = 25
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = ElTabSheet1
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 7
      object ElTabSheet1: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'WIP'
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 170
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dxLayoutStandardLookAndFeel1
          DesignSize = (
            285
            170)
          object grdAllocate: TdxDBGrid
            Left = 5
            Top = 5
            Width = 434
            Height = 96
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'TABLE_ID'
            ShowSummaryFooter = True
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <>
                Name = 'grdAllocateSummaryGroup2'
              end>
            SummarySeparator = ', '
            IsImportFromXLS = True
            BorderStyle = bsNone
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnEnter = grdAllocateEnter
            OnKeyDown = grdAllocateKeyDown
            OnMouseUp = grdAllocateMouseUp
            DataSource = dsHeso
            DefaultRowHeight = 21
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            ShowRowFooter = True
            Anchors = [akLeft, akTop, akRight, akBottom]
            object grdAllocateTABLE_ID: TdxDBGridMaskColumn
              Alignment = taLeftJustify
              Caption = 'STT'
              HeaderAlignment = taCenter
              MinWidth = 0
              Width = 32
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TABLE_ID'
            end
            object grdAllocateOBJECT_ID: TdxDBGridPopupColumn
              Caption = 'M'#227' KH'
              HeaderAlignment = taCenter
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_IDCloseUp
              OnInitPopup = grdAllocateOBJECT_IDInitPopup
              Caption_UTF7 = 'M+AOM KH'
            end
            object grdAllocateOBJECT_ID_2: TdxDBGridPopupColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Width = 98
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID_2'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_ID_2CloseUp
              OnInitPopup = grdAllocateOBJECT_ID_2InitPopup
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object grdAllocateOBJECT_ID_3: TdxDBGridPopupColumn
              Caption = 'M'#227' c'#244'ng vi'#7879'c'
              HeaderAlignment = taCenter
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID_3'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_ID_3CloseUp
              OnInitPopup = grdAllocateOBJECT_ID_3InitPopup
              Caption_UTF7 = 'M+AOM c+APQ-ng vi+Hsc-c'
            end
            object grdAllocateOBJECT_ID_4: TdxDBGridPopupColumn
              Caption = 'M'#227' chi ph'#237
              HeaderAlignment = taCenter
              Width = 98
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID_4'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_ID_4CloseUp
              OnInitPopup = grdAllocateOBJECT_ID_4InitPopup
              Caption_UTF7 = 'M+AOM chi ph+AO0'
            end
            object grdAllocateCOST_VALUE: TdxDBGridColumn
              Caption = 'Gi'#225' tr'#7883
              HeaderAlignment = taCenter
              Width = 77
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COST_VALUE'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '###,##0.#'
              Caption_UTF7 = 'Gi+AOE tr+Hss'
            end
            object grdAllocateNOTES: TdxDBGridMaskColumn
              Caption = 'Ghi ch'#250
              HeaderAlignment = taCenter
              Width = 125
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOTES'
              Caption_UTF7 = 'Ghi ch+APo'
            end
            object grdAllocateHESO: TdxDBGridColumn
              Caption = 'H'#7879' s'#7889
              HeaderAlignment = taCenter
              Visible = False
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HESO'
              Caption_UTF7 = 'H+Hsc s+HtE'
            end
          end
          object TntBitBtn4: TElPopupButton
            Left = 231
            Top = 391
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
            Action = DataSetCancel1
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object TntBitBtn3: TElPopupButton
            Left = 155
            Top = 391
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
            Action = DataSetPost1
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object TntBitBtn2: TElPopupButton
            Left = 79
            Top = 391
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
            Action = DataSetDelete1
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object TntBitBtn1: TElPopupButton
            Left = 3
            Top = 391
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
            Action = DataSetInsert1
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton5: TElPopupButton
            Left = 307
            Top = 391
            Width = 75
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&Bill'
            TabOrder = 5
            OnClick = ElPopupButton5Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = grdAllocate
            end
            object dxLayoutControl1Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item5: TdxLayoutItem
                ShowCaption = False
                Control = TntBitBtn1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item4: TdxLayoutItem
                ShowCaption = False
                Control = TntBitBtn2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item3: TdxLayoutItem
                ShowCaption = False
                Control = TntBitBtn3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                ShowCaption = False
                Control = TntBitBtn4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item6: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton5
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object ElTabSheet2: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'Chi ph'#237' '#273#227' ra h'#243'a '#273#417'n'
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 170
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dxLayoutStandardLookAndFeel1
          DesignSize = (
            285
            170)
          object dxDBGrid1: TdxDBGrid
            Left = 5
            Top = 5
            Width = 622
            Height = 120
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'TABLE_ID'
            ShowSummaryFooter = True
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryField = 'D1'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D2'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D3'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D4'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D5'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D6'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D8'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D9'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D9'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D10'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D11'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D12'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D13'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D14'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D15'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D16'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D17'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D18'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D19'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D20'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D21'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D22'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D23'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D24'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D25'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D26'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D27'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D28'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D29'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D30'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'D31'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'TONGCONG'
                    SummaryFormat = '0.#'
                    SummaryType = cstSum
                  end>
                Name = 'grdAllocateSummaryGroup2'
              end>
            SummarySeparator = ', '
            IsImportFromXLS = True
            BorderStyle = bsNone
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnEnter = dxDBGrid1Enter
            OnKeyDown = dxDBGrid1KeyDown
            OnMouseUp = dxDBGrid1MouseUp
            DataSource = dsheso2
            DefaultRowHeight = 21
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            ShowRowFooter = True
            Anchors = [akLeft, akTop, akRight, akBottom]
            object dxDBGridMaskColumn1: TdxDBGridMaskColumn
              Alignment = taLeftJustify
              Caption = 'STT'
              HeaderAlignment = taCenter
              MinWidth = 0
              Width = 36
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TABLE_ID'
            end
            object dxDBGridPopupColumn1: TdxDBGridPopupColumn
              Caption = 'M'#227' KH'
              HeaderAlignment = taCenter
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_IDCloseUp
              OnInitPopup = grdAllocateOBJECT_IDInitPopup
              Caption_UTF7 = 'M+AOM KH'
            end
            object dxDBGridPopupColumn2: TdxDBGridPopupColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Width = 109
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID_2'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_ID_2CloseUp
              OnInitPopup = grdAllocateOBJECT_ID_2InitPopup
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object dxDBGridPopupColumn3: TdxDBGridPopupColumn
              Caption = 'M'#227' c'#244'ng vi'#7879'c'
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID_3'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_ID_3CloseUp
              OnInitPopup = grdAllocateOBJECT_ID_3InitPopup
              Caption_UTF7 = 'M+AOM c+APQ-ng vi+Hsc-c'
            end
            object dxDBGridPopupColumn4: TdxDBGridPopupColumn
              Caption = 'M'#227' chi ph'#237
              HeaderAlignment = taCenter
              Width = 109
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBJECT_ID_4'
              PopupControl = PopupFrm.PnlCommonObj
              PopupFormBorderStyle = pbsSimple
              OnCloseUp = grdAllocateOBJECT_ID_4CloseUp
              OnInitPopup = grdAllocateOBJECT_ID_4InitPopup
              Caption_UTF7 = 'M+AOM chi ph+AO0'
            end
            object dxDBGridColumn1: TdxDBGridColumn
              Caption = 'Gi'#225' tr'#7883
              HeaderAlignment = taCenter
              Width = 77
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COST_VALUE'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '###,##0.#'
              Caption_UTF7 = 'Gi+AOE tr+Hss'
            end
            object dxDBGridMaskColumn2: TdxDBGridMaskColumn
              Caption = 'Ghi ch'#250
              HeaderAlignment = taCenter
              Width = 145
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOTES'
              Caption_UTF7 = 'Ghi ch+APo'
            end
            object dxDBGridColumn2: TdxDBGridColumn
              Caption = 'H'#7879' s'#7889
              HeaderAlignment = taCenter
              Visible = False
              Width = 37
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HESO'
              Caption_UTF7 = 'H+Hsc s+HtE'
            end
          end
          object ElPopupButton1: TElPopupButton
            Left = 3
            Top = 391
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
            Action = DataSetInsert2
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton2: TElPopupButton
            Left = 231
            Top = 391
            Width = 75
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&X'#243'a'
            TabOrder = 4
            Action = DataSetDelete2
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton3: TElPopupButton
            Left = 79
            Top = 391
            Width = 75
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&L'#432'u'
            TabOrder = 2
            Action = DataSetPost2
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton4: TElPopupButton
            Left = 155
            Top = 391
            Width = 75
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&Kh'#244'ng l'#432'u'
            TabOrder = 3
            Action = DataSetCancel2
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = dxDBGrid1
            end
            object dxLayoutControl2Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item2: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item5: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
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
        object locFormItem9: TdxLayoutItem
          Caption = 'Kh'#225'ch h'#224'ng'
          Control = pedtKH
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          ShowCaption = False
          Control = chkExpand
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem15: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        ShowCaption = False
        Control = ElPageControl1
        ControlOptions.ShowBorder = False
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
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
        Caption = 'WIP'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 40
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 52
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsHeso
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsHeso
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsHeso
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsHeso
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert2'
      DataSource = dsheso2
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete2'
      DataSource = dsheso2
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost2'
      DataSource = dsheso2
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel2'
      DataSource = dsheso2
    end
  end
  object qryHeso: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'period_id_in'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM TLN_COSTDECLARE'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   TABLE_ID = :OLD_TABLE_ID')
    EditSQL.Strings = (
      'UPDATE TLN_COSTDECLARE SET'
      '   TABLE_ID = :TABLE_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   OBJECT_ID_2 = :OBJECT_ID_2,'
      '   OTYPE_ID_2 = :OTYPE_ID_2,'
      '   OBJECT_ID_3 = :OBJECT_ID_3,'
      '   OTYPE_ID_3 = :OTYPE_ID_3,'
      '   OBJECT_ID_4 = :OBJECT_ID_4,'
      '   OTYPE_ID_4 = :OTYPE_ID_4,'
      '   COST_VALUE = :COST_VALUE,'
      '   NOTES = :NOTES,'
      '   HESO = 1'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   TABLE_ID = :OLD_TABLE_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO TLN_COSTDECLARE('
      '   PERIOD_ID, /*PK*/'
      '   TABLE_ID, /*PK*/'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   OBJECT_ID_2,'
      '   OTYPE_ID_2,'
      '   OBJECT_ID_3,'
      '   OTYPE_ID_3,'
      '   OBJECT_ID_4,'
      '   OTYPE_ID_4,'
      '   COST_VALUE,'
      '   NOTES,'
      '   HESO)'
      'VALUES ('
      '   :PERIOD_ID,'
      '   :TABLE_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :OBJECT_ID_2,'
      '   :OTYPE_ID_2,'
      '   :OBJECT_ID_3,'
      '   :OTYPE_ID_3,'
      '   :OBJECT_ID_4,'
      '   :OTYPE_ID_4,'
      '   :COST_VALUE,'
      '   :NOTES,'
      '   1)')
    KeyLinks.Strings = (
      'TABLE_ID'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryHesoBeforeOpen
    AfterOpen = qryHesoAfterOpen
    BeforePost = qryHesoBeforePost
    OnFilterRecord = qryHesoFilterRecord
    OnNewRecord = qryHesoNewRecord
    OnPostError = qryHesoPostError
    SQL.Strings = (
      'select'
      '    TABLE_ID'
      '    ,PERIOD_ID'
      '    ,OBJECT_ID'
      '    ,OTYPE_ID'
      '    ,OBJECT_ID_2'
      '    ,OTYPE_ID_2'
      '    ,OBJECT_ID_3'
      '    ,OTYPE_ID_3'
      '    ,OBJECT_ID_4'
      '    ,OTYPE_ID_4'
      '    ,COST_VALUE'
      '    ,NOTES'
      '    ,HESO'
      'FROM tln_costdeclare'
      'where PERIOD_ID = :period_id_in and heso >0')
    FieldOptions = []
    Left = 173
    Top = 94
    object qryHesoOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      OnChange = qryHesoOBJECT_IDChange
      Size = 30
    end
    object qryHesoOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryHesoTABLE_ID: TSmallintField
      FieldName = 'TABLE_ID'
      Required = True
    end
    object qryHesoPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryHesoOBJECT_ID_2: TWideStringField
      FieldName = 'OBJECT_ID_2'
      Required = True
      OnChange = qryHesoOBJECT_ID_2Change
      Size = 30
    end
    object qryHesoOTYPE_ID_2: TSmallintField
      FieldName = 'OTYPE_ID_2'
    end
    object qryHesoOBJECT_ID_3: TWideStringField
      FieldName = 'OBJECT_ID_3'
      Required = True
      OnChange = qryHesoOBJECT_ID_3Change
      Size = 30
    end
    object qryHesoOTYPE_ID_3: TSmallintField
      FieldName = 'OTYPE_ID_3'
    end
    object qryHesoOBJECT_ID_4: TWideStringField
      FieldName = 'OBJECT_ID_4'
      Required = True
      OnChange = qryHesoOBJECT_ID_4Change
      Size = 30
    end
    object qryHesoOTYPE_ID_4: TSmallintField
      FieldName = 'OTYPE_ID_4'
    end
    object qryHesoCOST_VALUE: TIBOFloatField
      FieldName = 'COST_VALUE'
    end
    object qryHesoNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 63
    end
    object qryHesoHESO: TSmallintField
      FieldName = 'HESO'
      MaxValue = 1
      MinValue = -1
    end
  end
  object dsHeso: TDataSource
    DataSet = qryHeso
    Left = 173
    Top = 125
  end
  object qryHeso2: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'period_id_in'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM TLN_COSTDECLARE'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   TABLE_ID = :OLD_TABLE_ID')
    EditSQL.Strings = (
      'UPDATE TLN_COSTDECLARE SET'
      '   TABLE_ID = :TABLE_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   OBJECT_ID_2 = :OBJECT_ID_2,'
      '   OTYPE_ID_2 = :OTYPE_ID_2,'
      '   OBJECT_ID_3 = :OBJECT_ID_3,'
      '   OTYPE_ID_3 = :OTYPE_ID_3,'
      '   OBJECT_ID_4 = :OBJECT_ID_4,'
      '   OTYPE_ID_4 = :OTYPE_ID_4,'
      '   COST_VALUE = :COST_VALUE,'
      '   NOTES = :NOTES,'
      '   HESO = -1'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   TABLE_ID = :OLD_TABLE_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO TLN_COSTDECLARE('
      '   PERIOD_ID, /*PK*/'
      '   TABLE_ID, /*PK*/'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   OBJECT_ID_2,'
      '   OTYPE_ID_2,'
      '   OBJECT_ID_3,'
      '   OTYPE_ID_3,'
      '   OBJECT_ID_4,'
      '   OTYPE_ID_4,'
      '   COST_VALUE,'
      '   NOTES,'
      '   HESO)'
      'VALUES ('
      '   :PERIOD_ID,'
      '   :TABLE_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :OBJECT_ID_2,'
      '   :OTYPE_ID_2,'
      '   :OBJECT_ID_3,'
      '   :OTYPE_ID_3,'
      '   :OBJECT_ID_4,'
      '   :OTYPE_ID_4,'
      '   :COST_VALUE,'
      '   :NOTES,'
      '   -1)')
    KeyLinks.Strings = (
      'TABLE_ID'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryHeso2BeforeOpen
    AfterOpen = qryHeso2AfterOpen
    BeforePost = qryHeso2BeforePost
    OnFilterRecord = qryHeso2FilterRecord
    OnNewRecord = qryHeso2NewRecord
    OnPostError = qryHeso2PostError
    SQL.Strings = (
      'select'
      '    TABLE_ID'
      '    ,PERIOD_ID'
      '    ,OBJECT_ID'
      '    ,OTYPE_ID'
      '    ,OBJECT_ID_2'
      '    ,OTYPE_ID_2'
      '    ,OBJECT_ID_3'
      '    ,OTYPE_ID_3'
      '    ,OBJECT_ID_4'
      '    ,OTYPE_ID_4'
      '    ,COST_VALUE'
      '    ,NOTES'
      '    ,HESO'
      'FROM tln_costdeclare'
      'where PERIOD_ID = :period_id_in and heso <0')
    FieldOptions = []
    Left = 209
    Top = 94
    object qryHeso2TABLE_ID: TSmallintField
      FieldName = 'TABLE_ID'
      Required = True
    end
    object qryHeso2PERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryHeso2OBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      OnChange = qryHeso2OBJECT_IDChange
      Size = 30
    end
    object qryHeso2OTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryHeso2OBJECT_ID_2: TWideStringField
      FieldName = 'OBJECT_ID_2'
      Required = True
      Size = 30
    end
    object qryHeso2OTYPE_ID_2: TSmallintField
      FieldName = 'OTYPE_ID_2'
    end
    object qryHeso2OBJECT_ID_3: TWideStringField
      FieldName = 'OBJECT_ID_3'
      Required = True
      OnChange = qryHeso2OBJECT_ID_3Change
      Size = 30
    end
    object qryHeso2OTYPE_ID_3: TSmallintField
      FieldName = 'OTYPE_ID_3'
    end
    object qryHeso2OBJECT_ID_4: TWideStringField
      FieldName = 'OBJECT_ID_4'
      Required = True
      OnChange = qryHeso2OBJECT_ID_4Change
      Size = 30
    end
    object qryHeso2OTYPE_ID_4: TSmallintField
      FieldName = 'OTYPE_ID_4'
    end
    object qryHeso2COST_VALUE: TIBOFloatField
      FieldName = 'COST_VALUE'
    end
    object qryHeso2NOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 63
    end
    object qryHeso2HESO: TSmallintField
      FieldName = 'HESO'
    end
  end
  object dsheso2: TDataSource
    DataSet = qryHeso2
    Left = 209
    Top = 125
  end
end
