object ThuyetminhBCTCFrm: TThuyetminhBCTCFrm
  Left = 77
  Top = 12
  Width = 874
  Height = 685
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
    Tag = -2
    Left = 0
    Top = 0
    Width = 866
    Height = 651
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnIns: TElPopupButton
      Left = 3
      Top = 623
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 9
      Action = acAppend
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 155
      Top = 623
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 11
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 241
      Top = 623
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 12
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 317
      Top = 623
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 13
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 710
      Top = 623
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 15
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 786
      Top = 623
      Width = 77
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 16
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object PgCtrlLeft: TElPageControl
      Left = 3
      Top = 3
      Width = 519
      Height = 505
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = True
      OnChange = PgCtrlLeftChange
      RaggedRight = False
      ScrollOpposite = False
      Style = etsTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlack
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = eltsNoidung1
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 20
      object eltsNoidung1: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'N'#7897'i dung'
        OnEnter = eltsNoidung1Enter
        OnExit = eltsNoidung1Exit
        object dbgNoidung1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = dbgNoidung1KeyDown
          OnMouseUp = dbgNoidung1MouseUp
          DataSource = dsNoidung
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          object dbgNoidung1ID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgNoidung1TENTHUYETMINH: TdxDBGridColumn
            Caption = 'T'#234'n thuy'#7871't minh'
            HeaderAlignment = taCenter
            Width = 399
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TENTHUYETMINH'
            Caption_UTF7 = 'T+AOo-n thuy+Hr8-t minh'
          end
          object dbgNoidung1MANHOM: TdxDBGridColumn
            Caption = 'Nh'#243'm cha'
            HeaderAlignment = taCenter
            Visible = False
            Width = 203
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'Nh+APM-m cha'
          end
          object dbgNoidung1NAMNAY: TdxDBGridColumn
            Caption = 'N'#259'm nay'
            HeaderAlignment = taCenter
            Visible = False
            Width = 33
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAMNAY'
            Caption_UTF7 = 'N+AQM-m nay'
          end
          object dbgNoidung1MASO: TdxDBGridColumn
            Caption = 'M'#227' s'#7889
            HeaderAlignment = taCenter
            Visible = False
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MASO'
            Caption_UTF7 = 'M+AOM s+HtE'
          end
          object dbgNoidung1NAMTRUOC: TdxDBGridColumn
            Caption = 'N'#259'm tr'#432#7899'c'
            HeaderAlignment = taCenter
            Visible = False
            Width = 38
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAMTRUOC'
            Caption_UTF7 = 'N+AQM-m tr+AbAe2w-c'
          end
          object dbgNoidung1HESO_GROUP: TdxDBGridColumn
            Caption = 'H'#7879' s'#7889' nh'#243'm'
            HeaderAlignment = taCenter
            Visible = False
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HESO_GROUP'
            Caption_UTF7 = 'H+Hsc s+HtE nh+APM-m'
          end
          object dbgNoidung1GROUP_ID: TdxDBGridColumn
            Caption = 'M'#227' nh'#243'm'
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUP_ID'
            Caption_UTF7 = 'M+AOM nh+APM-m'
          end
          object dbgNoidung1Column9: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
        end
      end
      object eltsTanggiamTSCDHH: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'T'#259'ng gi'#7843'm TSC'#272' h'#7919'u h'#236'nh'
        Visible = False
        OnEnter = eltsTanggiamTSCDHHEnter
        OnExit = eltsTanggiamTSCDHHExit
        object dbgTanggiamTSCDHH: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Caption = 'Gi'#225' tr'#7883
              Width = 448
            end
            item
              Caption = 'C'#244'ng th'#7913'c'
              Width = 364
            end>
          DefaultLayout = False
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDefinationExecute
          OnKeyDown = dbgTanggiamTSCDHHKeyDown
          OnMouseUp = dbgTanggiamTSCDHHMouseUp
          DataSource = dsTSCDHH_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          object dbgTanggiamTSCDHHID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgTanggiamTSCDHHMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamTSCDHHKHOANMUC: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 256
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamTSCDHHMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgTanggiamTSCDHHColumn12: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 28
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgTanggiamTSCDHHNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgTanggiamTSCDHHNHACUA: TdxDBGridColumn
            Caption = 'Nh'#224' c'#7917'a'
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NHACUA'
            Caption_UTF7 = 'Nh+AOA c+Hu0-a'
          end
          object dbgTanggiamTSCDHHMAYMOCTB: TdxDBGridColumn
            Caption = 'M'#225'y m'#243'c thi'#7871't b'#7883
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MAYMOCTB'
            Caption_UTF7 = 'M+AOE-y m+APM-c thi+Hr8-t b+Hss'
          end
          object dbgTanggiamTSCDHHPTVTTD: TdxDBGridColumn
            Caption = 'Ph'#432#417'ng ti'#7879'n v'#7853'n t'#7843'i truy'#7873'n d'#7851'n'
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PTVTTD'
            Caption_UTF7 = 'Ph+AbABoQ-ng ti+Hsc-n v+Hq0-n t+HqM-i truy+HsE-n d+Hqs-n'
          end
          object dbgTanggiamTSCDHHTBDCQLY: TdxDBGridColumn
            Caption = 'Thi'#7871't b'#7883' d'#7909'ng c'#7909' qu'#7843'n l'#253
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TBDCQLY'
            Caption_UTF7 = 'Thi+Hr8-t b+Hss d+HuU-ng c+HuU qu+HqM-n l+AP0'
          end
          object dbgTanggiamTSCDHHTAISANCDKHAC: TdxDBGridColumn
            Caption = 'T'#224'i s'#7843'n c'#7889' '#273#7883'nh kh'#225'c'
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TAISANCDKHAC'
            Caption_UTF7 = 'T+AOA-i s+HqM-n c+HtE +AREeyw-nh kh+AOE-c'
          end
          object dbgTanggiamTSCDHHTONGCONG: TdxDBGridColumn
            Caption = 'T'#7893'ng c'#7897'ng'
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TONGCONG'
            Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
          end
          object dbgTanggiamTSCDHHNHACUA_CT: TdxDBGridColumn
            Caption = 'Nh'#224' c'#7917'a'
            HeaderAlignment = taCenter
            Width = 54
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NHACUA_CT'
            Caption_UTF7 = 'Nh+AOA c+Hu0-a'
          end
          object dbgTanggiamTSCDHHMAYMOCTB_CT: TdxDBGridColumn
            Caption = 'M'#225'y m'#243'c thi'#7871't b'#7883
            HeaderAlignment = taCenter
            Width = 69
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MAYMOCTB_CT'
            Caption_UTF7 = 'M+AOE-y m+APM-c thi+Hr8-t b+Hss'
          end
          object dbgTanggiamTSCDHHTAISANCDKHAC_CT: TdxDBGridColumn
            Caption = 'TSC'#272' kh'#225'c'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TAISANCDKHAC_CT'
            Caption_UTF7 = 'TSC+ARA kh+AOE-c'
          end
          object dbgTanggiamTSCDHHPTVTTD_CT: TdxDBGridColumn
            Caption = 'Ph'#432#417'ng ti'#7879'n v'#7853'n t'#7843'i truy'#7873'n d'#7851'n'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 1
            RowIndex = 0
            FieldName = 'PTVTTD_CT'
            Caption_UTF7 = 'Ph+AbABoQ-ng ti+Hsc-n v+Hq0-n t+HqM-i truy+HsE-n d+Hqs-n'
          end
          object dbgTanggiamTSCDHHTBDCQLY_CT: TdxDBGridColumn
            Caption = 'Thi'#7871't b'#7883' c'#244'ng c'#7909' qu'#7843'n l'#253
            HeaderAlignment = taCenter
            Width = 68
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TBDCQLY_CT'
            Caption_UTF7 = 'Thi+Hr8-t b+Hss c+APQ-ng c+HuU qu+HqM-n l+AP0'
          end
          object dbgTanggiamTSCDHHTONGCONG_CT: TdxDBGridColumn
            Caption = 'T'#7893'ng c'#7897'ng'
            HeaderAlignment = taCenter
            Width = 53
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TONGCONG_CT'
            Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
          end
        end
      end
      object eltsTanggiamTSCDTTC: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'T'#259'ng gi'#7843'mTSC'#272' thu'#234' t'#224'i ch'#237'nh'
        Visible = False
        OnEnter = eltsTanggiamTSCDTTCEnter
        OnExit = eltsTanggiamTSCDTTCExit
        object dbgTanggiamTSCDTTC: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Caption = 'Gi'#225' tr'#7883
              Width = 435
            end
            item
              Caption = 'C'#244'ng th'#7913'c'
              Width = 377
            end>
          DefaultLayout = False
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDefinationExecute
          OnKeyDown = dbgTanggiamTSCDTTCKeyDown
          OnMouseUp = dbgTanggiamTSCDTTCMouseUp
          DataSource = dsTSCDThuetaichinh_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          object dbgTanggiamTSCDTTCID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 28
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgTanggiamTSCDTTCMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamTSCDTTCKHOANMUC: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamTSCDTTCMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgTanggiamTSCDTTCNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgTanggiamTSCDTTCMAYMOCTB: TdxDBGridColumn
            Caption = 'M'#225'y m'#243'cthi'#7871't b'#7883
            HeaderAlignment = taCenter
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MAYMOCTB'
            Caption_UTF7 = 'M+AOE-y m+APM-cthi+Hr8-t b+Hss'
          end
          object dbgTanggiamTSCDTTCPTVTTD: TdxDBGridColumn
            Caption = 'Ph'#432#417'ng ti'#7879'n v'#7853'n t'#7843'i truy'#7873'n d'#7851'n'
            HeaderAlignment = taCenter
            Visible = False
            Width = 142
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PTVTTD'
            Caption_UTF7 = 'Ph+AbABoQ-ng ti+Hsc-n v+Hq0-n t+HqM-i truy+HsE-n d+Hqs-n'
          end
          object dbgTanggiamTSCDTTCTBDCQLY: TdxDBGridColumn
            Caption = 'Thi'#7871't b'#7883' d'#7909'ng c'#7909' qu'#7843'n l'#253
            HeaderAlignment = taCenter
            Visible = False
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TBDCQLY'
            Caption_UTF7 = 'Thi+Hr8-t b+Hss d+HuU-ng c+HuU qu+HqM-n l+AP0'
          end
          object dbgTanggiamTSCDTTCTAISANCDKHAC: TdxDBGridColumn
            Caption = 'T'#224'i s'#7843'n c'#7889' '#273#7883'nh kh'#225'c'
            HeaderAlignment = taCenter
            Visible = False
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TAISANCDKHAC'
            Caption_UTF7 = 'T+AOA-i s+HqM-n c+HtE +AREeyw-nh kh+AOE-c'
          end
          object dbgTanggiamTSCDTTCTONGCONG: TdxDBGridColumn
            Caption = 'T'#7893'ng c'#7897'ng'
            HeaderAlignment = taCenter
            Visible = False
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TONGCONG'
            Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
          end
          object dbgTanggiamTSCDTTCColumn11: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 27
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgTanggiamTSCDTTCMAYMOCTB_CT: TdxDBGridColumn
            Caption = 'M'#225'y m'#243'c thi'#7871't b'#7883
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'MAYMOCTB_CT'
            Caption_UTF7 = 'M+AOE-y m+APM-c thi+Hr8-t b+Hss'
          end
          object dbgTanggiamTSCDTTCPTVTTD_CT: TdxDBGridColumn
            Caption = 'Ph'#432#417'ng ti'#7879'n v'#7853'n t'#7843'i truy'#7873'n d'#7851'n'
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'PTVTTD_CT'
            Caption_UTF7 = 'Ph+AbABoQ-ng ti+Hsc-n v+Hq0-n t+HqM-i truy+HsE-n d+Hqs-n'
          end
          object dbgTanggiamTSCDTTCTBDCQLY_CT: TdxDBGridColumn
            Caption = 'Thi'#7871't b'#7883' c'#244'ng c'#7909' qu'#7843'n l'#253
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TBDCQLY_CT'
            Caption_UTF7 = 'Thi+Hr8-t b+Hss c+APQ-ng c+HuU qu+HqM-n l+AP0'
          end
          object dbgTanggiamTSCDTTCTAISANCDKHAC_CT: TdxDBGridColumn
            Caption = 'T'#224'i s'#7843'n c'#7889' '#273#7883'nh kh'#225'c'
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TAISANCDKHAC_CT'
            Caption_UTF7 = 'T+AOA-i s+HqM-n c+HtE +AREeyw-nh kh+AOE-c'
          end
          object dbgTanggiamTSCDTTCTONGCONG_CT: TdxDBGridColumn
            Caption = 'T'#7893'ng c'#7897'ng'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TONGCONG_CT'
            Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
          end
        end
      end
      object eltsTanggiamTSCDVH: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'T'#259'ng gi'#7843'm TSC'#272' v'#244' h'#236'nh'
        Visible = False
        OnEnter = eltsTanggiamTSCDVHEnter
        OnExit = eltsTanggiamTSCDVHExit
        object dbgTanggiamTSCDVH: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Caption = 'Gi'#225' tr'#7883
              Width = 459
            end
            item
              Caption = 'C'#244'ng th'#7913'c'
              Width = 353
            end>
          DefaultLayout = False
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDefinationExecute
          OnKeyDown = dbgTanggiamTSCDVHKeyDown
          OnMouseUp = dbgTanggiamTSCDVHMouseUp
          DataSource = dsTSCDVH_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          object dbgTanggiamTSCDVHID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 25
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgTanggiamTSCDVHMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamTSCDVHKHOANMUC: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 227
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamTSCDVHMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgTanggiamTSCDVHNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 29
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgTanggiamTSCDVHQUYENSDDAT: TdxDBGridColumn
            Caption = 'Quy'#7873'n s'#7917' d'#7909'ng '#273#7845't'
            HeaderAlignment = taCenter
            Visible = False
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUYENSDDAT'
            Caption_UTF7 = 'Quy+HsE-n s+Hu0 d+HuU-ng +AREepQ-t'
          end
          object dbgTanggiamTSCDVHBANQUYEN: TdxDBGridColumn
            Caption = 'B'#7843'n quy'#7873'n'
            HeaderAlignment = taCenter
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BANQUYEN'
            Caption_UTF7 = 'B+HqM-n quy+HsE-n'
          end
          object dbgTanggiamTSCDVHNHANHIEU: TdxDBGridColumn
            Caption = 'Nh'#227'n hi'#7879'u'
            HeaderAlignment = taCenter
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NHANHIEU'
            Caption_UTF7 = 'Nh+AOM-n hi+Hsc-u'
          end
          object dbgTanggiamTSCDVHPHANMEM: TdxDBGridColumn
            Caption = 'Ph'#7847'n m'#7873'm m'#225'y vi t'#237'nh'
            HeaderAlignment = taCenter
            Visible = False
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PHANMEM'
            Caption_UTF7 = 'Ph+Hqc-n m+HsE-m m+AOE-y vi t+AO0-nh'
          end
          object dbgTanggiamTSCDVHTSCDVHKHAC: TdxDBGridColumn
            Caption = 'T'#224'i s'#7843'n c'#243' '#273#7883'nh v'#244' h'#236'nh kh'#225'c'
            HeaderAlignment = taCenter
            Visible = False
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TSCDVHKHAC'
            Caption_UTF7 = 'T+AOA-i s+HqM-n c+APM +AREeyw-nh v+APQ h+AOw-nh kh+AOE-c'
          end
          object dbgTanggiamTSCDVHTONGCONG: TdxDBGridColumn
            Caption = 'T'#7893'ng c'#7897'ng'
            HeaderAlignment = taCenter
            Visible = False
            Width = 178
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TONGCONG'
            Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
          end
          object dbgTanggiamTSCDVHColumn12: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 26
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgTanggiamTSCDVHQUYENSDDAT_CT: TdxDBGridColumn
            Caption = 'Quy'#7873'n s'#7917' d'#7909'ng '#273#7845't'
            HeaderAlignment = taCenter
            Width = 62
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QUYENSDDAT_CT'
            Caption_UTF7 = 'Quy+HsE-n s+Hu0 d+HuU-ng +AREepQ-t'
          end
          object dbgTanggiamTSCDVHBANQUYEN_CT: TdxDBGridColumn
            Caption = 'B'#7843'n quy'#7873'n'
            HeaderAlignment = taCenter
            Width = 58
            BandIndex = 1
            RowIndex = 0
            FieldName = 'BANQUYEN_CT'
            Caption_UTF7 = 'B+HqM-n quy+HsE-n'
          end
          object dbgTanggiamTSCDVHNHANHIEU_CT: TdxDBGridColumn
            Caption = 'Nh'#227'n hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 58
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NHANHIEU_CT'
            Caption_UTF7 = 'Nh+AOM-n hi+Hsc-u'
          end
          object dbgTanggiamTSCDVHPHANMEM_CT: TdxDBGridColumn
            Caption = 'Ph'#7847'n m'#7873'm'
            HeaderAlignment = taCenter
            Width = 58
            BandIndex = 1
            RowIndex = 0
            FieldName = 'PHANMEM_CT'
            Caption_UTF7 = 'Ph+Hqc-n m+HsE-m'
          end
          object dbgTanggiamTSCDVHTSCDVHKHAC_CT: TdxDBGridColumn
            Caption = 'TSC'#272' v'#244' h'#236'nh kh'#225'c'
            HeaderAlignment = taCenter
            Width = 58
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TSCDVHKHAC_CT'
            Caption_UTF7 = 'TSC+ARA v+APQ h+AOw-nh kh+AOE-c'
          end
          object dbgTanggiamTSCDVHTONGCONG_CT: TdxDBGridColumn
            Caption = 'T'#7893'ng c'#7897'ng'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TONGCONG_CT'
            Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
          end
        end
      end
      object eltsTanggiamBDSDT: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'T'#259'ng gi'#7843'm b'#7845't '#273#7897'ng s'#7843'n '#273#7847'u t'#432
        Visible = False
        OnEnter = eltsTanggiamBDSDTEnter
        OnExit = eltsTanggiamBDSDTExit
        object dbgTanggiamBDSDT: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Caption = 'Gi'#225' tr'#7883
              Width = 490
            end
            item
              Caption = 'C'#244'ng th'#7913'c'
              Width = 322
            end>
          DefaultLayout = False
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDefinationExecute
          OnKeyDown = dbgTanggiamBDSDTKeyDown
          OnMouseUp = dbgTanggiamBDSDTMouseUp
          DataSource = dsTanggiamBDSDT_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          object dbgTanggiamBDSDTID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 26
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgTanggiamBDSDTMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamBDSDTKHOANMUC: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 218
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c'
          end
          object dbgTanggiamBDSDTMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgTanggiamBDSDTNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 37
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgTanggiamBDSDTSODAUNAM: TdxDBGridColumn
            Caption = 'S'#7889' '#273#7847'u n'#259'm'
            HeaderAlignment = taCenter
            Visible = False
            Width = 177
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SODAUNAM'
            Caption_UTF7 = 'S+HtE +AREepw-u n+AQM-m'
          end
          object dbgTanggiamBDSDTTANGTRONGNAM: TdxDBGridColumn
            Caption = 'T'#259'ng trong n'#259'm'
            HeaderAlignment = taCenter
            Visible = False
            Width = 193
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TANGTRONGNAM'
            Caption_UTF7 = 'T+AQM-ng trong n+AQM-m'
          end
          object dbgTanggiamBDSDTGIAMTRONGNAM: TdxDBGridColumn
            Caption = 'Gi'#7843'm trong n'#259'm'
            HeaderAlignment = taCenter
            Visible = False
            Width = 177
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GIAMTRONGNAM'
            Caption_UTF7 = 'Gi+HqM-m trong n+AQM-m'
          end
          object dbgTanggiamBDSDTSOCUOINAM: TdxDBGridColumn
            Caption = 'S'#7889' cu'#7889'i n'#259'm'
            HeaderAlignment = taCenter
            Visible = False
            Width = 252
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SOCUOINAM'
            Caption_UTF7 = 'S+HtE cu+HtE-i n+AQM-m'
          end
          object dbgTanggiamBDSDTColumn10: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 37
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgTanggiamBDSDTSODAUNAM_CT: TdxDBGridColumn
            Caption = 'S'#7889' '#273#7847'u n'#259'm'
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SODAUNAM_CT'
            Caption_UTF7 = 'S+HtE +AREepw-u n+AQM-m'
          end
          object dbgTanggiamBDSDTTANGTRONGNAM_CT: TdxDBGridColumn
            Caption = 'T'#259'ng trong n'#259'm'
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TANGTRONGNAM_CT'
            Caption_UTF7 = 'T+AQM-ng trong n+AQM-m'
          end
          object dbgTanggiamBDSDTGIAMTRONGNAM_CT: TdxDBGridColumn
            Alignment = taLeftJustify
            Caption = 'Gi'#7843'm trong n'#259'm'
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 1
            RowIndex = 0
            FieldName = 'GIAMTRONGNAM_CT'
            Caption_UTF7 = 'Gi+HqM-m trong n+AQM-m'
          end
          object dbgTanggiamBDSDTSOCUOINAM_CT: TdxDBGridColumn
            Caption = 'S'#7889' cu'#7889'i n'#259'm'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SOCUOINAM_CT'
            Caption_UTF7 = 'S+HtE cu+HtE-i n+AQM-m'
          end
        end
      end
      object eltsCackhoannothuetaichinh: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'C'#225'c kho'#7843'n n'#7907' thu'#234' t'#224'i ch'#237'nh'
        Visible = False
        OnEnter = eltsCackhoannothuetaichinhEnter
        OnExit = eltsCackhoannothuetaichinhExit
        object dbgCackhoannothuetaichinh: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Width = 369
            end
            item
              Caption = 'N'#259'm nay'
            end
            item
              Caption = 'N'#259'm tr'#432#7899'c'
              Width = 193
            end>
          DefaultLayout = False
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = dbgCackhoannothuetaichinhKeyDown
          OnMouseUp = dbgCackhoannothuetaichinhMouseUp
          DataSource = dsCackhoannothuetaichinh_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          object dbgCackhoannothuetaichinhID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 22
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgCackhoannothuetaichinhMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgCackhoannothuetaichinhKHOANMUC: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 153
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c'
          end
          object dbgCackhoannothuetaichinhTRATIENLAITHUE_NN: TdxDBGridColumn
            Caption = 'Tr'#7843' ti'#7873'n l'#227'i thu'#234
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TRATIENLAITHUE_NN'
            Caption_UTF7 = 'Tr+HqM ti+HsE-n l+AOM-i thu+AOo'
          end
          object dbgCackhoannothuetaichinhTONGKHOANTT_NN: TdxDBGridColumn
            Caption = 'T'#7893'ng kho'#7843'n thanh to'#225'n ti'#7873'n thu'#234' t'#224'i ch'#237'nh'
            HeaderAlignment = taCenter
            Width = 122
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TONGKHOANTT_NN'
            Caption_UTF7 = 
              'T+HtU-ng kho+HqM-n thanh to+AOE-n ti+HsE-n thu+AOo t+AOA-i ch+AO' +
              '0-nh'
          end
          object dbgCackhoannothuetaichinhTONGKHOANTT_NT: TdxDBGridColumn
            Caption = 'T'#7893'ng kho'#7843'n thanh to'#225'n ti'#7873'n thu'#234' t'#224'i ch'#237'nh'
            HeaderAlignment = taCenter
            Width = 96
            BandIndex = 2
            RowIndex = 0
            FieldName = 'TONGKHOANTT_NT'
            Caption_UTF7 = 
              'T+HtU-ng kho+HqM-n thanh to+AOE-n ti+HsE-n thu+AOo t+AOA-i ch+AO' +
              '0-nh'
          end
          object dbgCackhoannothuetaichinhTRANOGOC_NN: TdxDBGridColumn
            Caption = 'Tr'#7843' n'#7907' g'#7889'c'
            HeaderAlignment = taCenter
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TRANOGOC_NN'
            Caption_UTF7 = 'Tr+HqM n+HuM g+HtE-c'
          end
          object dbgCackhoannothuetaichinhTRATIENLAITHUE_NT: TdxDBGridColumn
            Caption = 'Tr'#7843' ti'#7873'n l'#7841'i thu'#7871
            HeaderAlignment = taCenter
            Width = 48
            BandIndex = 2
            RowIndex = 0
            FieldName = 'TRATIENLAITHUE_NT'
            Caption_UTF7 = 'Tr+HqM ti+HsE-n l+HqE-i thu+Hr8'
          end
          object dbgCackhoannothuetaichinhMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgCackhoannothuetaichinhTRANOGOC_NT: TdxDBGridColumn
            Caption = 'Tr'#7843' n'#7907' g'#7889'c'
            HeaderAlignment = taCenter
            Width = 48
            BandIndex = 2
            RowIndex = 0
            FieldName = 'TRANOGOC_NT'
            Caption_UTF7 = 'Tr+HqM n+HuM g+HtE-c'
          end
          object dbgCackhoannothuetaichinhNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgCackhoannothuetaichinhColumn12: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 39
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
        end
      end
      object eltsDoichieuVCSH: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'B'#7843'ng '#273#7889'i chi'#7871'u bi'#7871'n '#273#7897'ng v'#7889'n CSH'
        Visible = False
        OnEnter = eltsDoichieuVCSHEnter
        OnExit = eltsDoichieuVCSHExit
        object dbgDoichieuVCSH: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Caption = 'Gi'#225' tr'#7883
              Width = 383
            end
            item
              Caption = 'C'#244'ng th'#7913'c'
              Width = 429
            end>
          DefaultLayout = False
          HeaderMinRowCount = 4
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDefinationExecute
          OnKeyDown = dbgDoichieuVCSHKeyDown
          OnMouseUp = dbgDoichieuVCSHMouseUp
          DataSource = dsDoichieubiendongvonCSH_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          object dbgDoichieuVCSHID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 26
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgDoichieuVCSHMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgDoichieuVCSHKHOANMUC: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 171
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c'
          end
          object dbgDoichieuVCSHMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgDoichieuVCSHNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgDoichieuVCSHVONGOP: TdxDBGridColumn
            Caption = 'V'#7889'n g'#243'p'
            HeaderAlignment = taCenter
            Visible = False
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VONGOP'
            Caption_UTF7 = 'V+HtE-n g+APM-p'
          end
          object dbgDoichieuVCSHTHANGDUVCP: TdxDBGridColumn
            Caption = 'Th'#7863'ng d'#432' v'#7889'n c'#7893' ph'#7847'n'
            HeaderAlignment = taCenter
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'THANGDUVCP'
            Caption_UTF7 = 'Th+Hrc-ng d+AbA v+HtE-n c+HtU ph+Hqc-n'
          end
          object dbgDoichieuVCSHCOPHIEUNGANQUI: TdxDBGridColumn
            Caption = 'C'#7893' phi'#7871'u v'#7889'n ng'#226'n q'#361'y'
            HeaderAlignment = taCenter
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COPHIEUNGANQUI'
            Caption_UTF7 = 'C+HtU phi+Hr8-u v+HtE-n ng+AOI-n q+AWk-y'
          end
          object dbgDoichieuVCSHCHENHLENHDGTS: TdxDBGridColumn
            Caption = 'Ch'#234'nh l'#7879'ch '#273#225'nh gi'#225' l'#7841'i t'#224'i s'#7843'n'
            HeaderAlignment = taCenter
            Visible = False
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHENHLENHDGTS'
            Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch +AREA4Q-nh gi+AOE l+HqE-i t+AOA-i s+HqM-n'
          end
          object dbgDoichieuVCSHCHENHLECHTGHD: TdxDBGridColumn
            Caption = 'Ch'#234'nh l'#7879'ch t'#7927' gi'#225' h'#7889'i '#273'o'#225'i'
            HeaderAlignment = taCenter
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHENHLECHTGHD'
            Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch t+Hvc gi+AOE h+HtE-i +ARE-o+AOE-i'
          end
          object dbgDoichieuVCSHQUIDAUTUPHATTRIEN: TdxDBGridColumn
            Caption = 'Q'#361'y '#273#7847'u t'#432' ph'#225't tri'#7877'n'
            HeaderAlignment = taCenter
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUIDAUTUPHATTRIEN'
            Caption_UTF7 = 'Q+AWk-y +AREepw-u t+AbA ph+AOE-t tri+HsU-n'
          end
          object dbgDoichieuVCSHQUIDUPHONGTAICHINH: TdxDBGridColumn
            Caption = 'Q'#361'y d'#7921' ph'#242'ng t'#224'i ch'#237'nh'
            HeaderAlignment = taCenter
            Visible = False
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUIDUPHONGTAICHINH'
            Caption_UTF7 = 'Q+AWk-y d+HvE ph+API-ng t+AOA-i ch+AO0-nh'
          end
          object dbgDoichieuVCSHQUITHUOCVSH: TdxDBGridColumn
            Caption = 'Q'#361'y kh'#225'c thu'#7897'c v'#7889'n CSH'
            HeaderAlignment = taCenter
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUITHUOCVSH'
            Caption_UTF7 = 'Q+AWk-y kh+AOE-c thu+Htk-c v+HtE-n CSH'
          end
          object dbgDoichieuVCSHLOINHUANSTCHUAPP: TdxDBGridColumn
            Caption = 'L'#7907'i nhu'#7853'n sau thu'#7871' ch'#432'a ph'#226'n ph'#7889'i'
            HeaderAlignment = taCenter
            Visible = False
            Width = 192
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LOINHUANSTCHUAPP'
            Caption_UTF7 = 'L+HuM-i nhu+Hq0-n sau thu+Hr8 ch+AbA-a ph+AOI-n ph+HtE-i'
          end
          object dbgDoichieuVCSHColumn15: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 26
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgDoichieuVCSHVONGOP_CT: TdxDBGridColumn
            Caption = 'V'#7889'n g'#7897'p'
            HeaderAlignment = taCenter
            Width = 37
            BandIndex = 1
            RowIndex = 0
            FieldName = 'VONGOP_CT'
            Caption_UTF7 = 'V+HtE-n g+Htk-p'
          end
          object dbgDoichieuVCSHTHANGDUVCP_CT: TdxDBGridColumn
            Caption = 'Th'#7863'ng d'#432' v'#7889'n c'#7893' ph'#7847'n'
            HeaderAlignment = taCenter
            Width = 59
            BandIndex = 1
            RowIndex = 0
            FieldName = 'THANGDUVCP_CT'
            Caption_UTF7 = 'Th+Hrc-ng d+AbA v+HtE-n c+HtU ph+Hqc-n'
          end
          object dbgDoichieuVCSHCOPHIEUNGANQUI_CT: TdxDBGridColumn
            Caption = 'C'#7893' phi'#7871'u ng'#226'n q'#361'y'
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 1
            RowIndex = 0
            FieldName = 'COPHIEUNGANQUI_CT'
            Caption_UTF7 = 'C+HtU phi+Hr8-u ng+AOI-n q+AWk-y'
          end
          object dbgDoichieuVCSHCHENHLENHDGTS_CT: TdxDBGridColumn
            Caption = 'Ch'#234'nh l'#7879'ch '#273#225'nh gi'#225' l'#7841'i t'#224'i s'#7843'n'
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHENHLENHDGTS_CT'
            Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch +AREA4Q-nh gi+AOE l+HqE-i t+AOA-i s+HqM-n'
          end
          object dbgDoichieuVCSHCHENHLECHTGHD_CT: TdxDBGridColumn
            Caption = 'Ch'#234'nh l'#7879'ch t'#7927' gi'#225' h'#7889'i '#273'o'#225'i'
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHENHLECHTGHD_CT'
            Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch t+Hvc gi+AOE h+HtE-i +ARE-o+AOE-i'
          end
          object dbgDoichieuVCSHQUIDAUTUPHATTRIEN_CT: TdxDBGridColumn
            Caption = 'Q'#361'y '#273#7847'u t'#432' ph'#225't tri'#7877'n'
            HeaderAlignment = taCenter
            Width = 47
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QUIDAUTUPHATTRIEN_CT'
            Caption_UTF7 = 'Q+AWk-y +AREepw-u t+AbA ph+AOE-t tri+HsU-n'
          end
          object dbgDoichieuVCSHQUIDUPHONGTAICHINH_CT: TdxDBGridColumn
            Caption = 'Q'#361'y d'#7921' ph'#242'ng t'#224'i ch'#237'nh'
            HeaderAlignment = taCenter
            Width = 46
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QUIDUPHONGTAICHINH_CT'
            Caption_UTF7 = 'Q+AWk-y d+HvE ph+API-ng t+AOA-i ch+AO0-nh'
          end
          object dbgDoichieuVCSHQUITHUOCVSH_CT: TdxDBGridColumn
            Caption = 'Q'#361'y thu'#7897'c v'#7889'n CSH'
            HeaderAlignment = taCenter
            Width = 34
            BandIndex = 1
            RowIndex = 0
            FieldName = 'QUITHUOCVSH_CT'
            Caption_UTF7 = 'Q+AWk-y thu+Htk-c v+HtE-n CSH'
          end
          object dbgDoichieuVCSHLOINHUANSTCHUAPP_CT: TdxDBGridColumn
            Caption = 'Lnhu'#7853'n sau thu'#7871' ch'#432'a pp'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'LOINHUANSTCHUAPP_CT'
            Caption_UTF7 = 'Lnhu+Hq0-n sau thu+Hr8 ch+AbA-a pp'
          end
        end
      end
      object eltsChitietvondautu: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'Chi ti'#7871't v'#7889'n '#273#7847'u t'#432' c'#7911'a CSH'
        Visible = False
        OnEnter = eltsChitietvondautuEnter
        OnExit = eltsChitietvondautuExit
        object dbgChitietvondautu: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
              Width = 403
            end
            item
              Caption = 'N'#259'm nay'
              Visible = False
              Width = 1024
            end
            item
              Caption = 'N'#259'm tr'#432#7899'c'
              Visible = False
              Width = 939
            end
            item
              Caption = 'C'#244'ng th'#7913'c - N'#259'm nay'
              Width = 200
            end
            item
              Caption = 'C'#244'ng th'#7913'c - N'#259'm tr'#432#7899'c'
              Width = 209
            end>
          DefaultLayout = False
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDefinationExecute
          OnKeyDown = dbgChitietvondautuKeyDown
          OnMouseUp = dbgChitietvondautuMouseUp
          DataSource = dsChitietvondautuCSH_0
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          ShowBands = True
          OnChangeColumn = dbgChitietvondautuChangeColumn
          object dbgChitietvondautuID: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 25
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dbgChitietvondautuTONGSO_NN: TdxDBGridColumn
            Caption = 'T'#7893'ng s'#7889
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TONGSO_NN'
            Caption_UTF7 = 'T+HtU-ng s+HtE'
          end
          object dbgChitietvondautuVONCPTHUONG_NN: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n th'#432#7901'ng'
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 1
            RowIndex = 0
            FieldName = 'VONCPTHUONG_NN'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n th+AbAe3Q-ng'
          end
          object dbgChitietvondautuMANHOM: TdxDBGridColumn
            Caption = 'M'#227' kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'M+AOM kho+HqM-n m+HuU-c'
          end
          object dbgChitietvondautuVONCPUUDAI_NN: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n '#432'u '#273#227'i'
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 1
            RowIndex = 0
            FieldName = 'VONCPUUDAI_NN'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n +AbA-u +AREA4w-i'
          end
          object dbgChitietvondautuKHOANMUC: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c'
            HeaderAlignment = taCenter
            Width = 186
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KHOANMUC'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c'
          end
          object dbgChitietvondautuTONGSO_NT: TdxDBGridColumn
            Caption = 'T'#7893'ng s'#7889
            HeaderAlignment = taCenter
            Width = 57
            BandIndex = 2
            RowIndex = 0
            FieldName = 'TONGSO_NT'
            Caption_UTF7 = 'T+HtU-ng s+HtE'
          end
          object dbgChitietvondautuVONCPTHUONG_NT: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n th'#432#7901'ng'
            HeaderAlignment = taCenter
            Width = 78
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VONCPTHUONG_NT'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n th+AbAe3Q-ng'
          end
          object dbgChitietvondautuMANHOMCHA: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c cha'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOMCHA'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c cha'
          end
          object dbgChitietvondautuVONCPUUDAI_NT: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n '#432'u '#273#227'i'
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VONCPUUDAI_NT'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n +AbA-u +AREA4w-i'
          end
          object dbgChitietvondautuNUTLA: TdxDBGridColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Visible = False
            Width = 29
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUTLA'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dbgChitietvondautuColumn12: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            Width = 27
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgChitietvondautuVONCPTHUONG_NN_CT: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n th'#432#7901'ng'
            HeaderAlignment = taCenter
            Width = 62
            BandIndex = 3
            RowIndex = 0
            FieldName = 'VONCPTHUONG_NN_CT'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n th+AbAe3Q-ng'
          end
          object dbgChitietvondautuVONCPUUDAI_NN_CT: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n '#432'u '#273#227'i'
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 3
            RowIndex = 0
            FieldName = 'VONCPUUDAI_NN_CT'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n +AbA-u +AREA4w-i'
          end
          object dbgChitietvondautuVONCPUUDAI_NT_CT: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n '#432'u '#273#227'i'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VONCPUUDAI_NT_CT'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n +AbA-u +AREA4w-i'
          end
          object dbgChitietvondautuVONCPTHUONG_NT_CT: TdxDBGridColumn
            Caption = 'V'#7889'n c'#7893' ph'#7847'n th'#432#7901'ng'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VONCPTHUONG_NT_CT'
            Caption_UTF7 = 'V+HtE-n c+HtU ph+Hqc-n th+AbAe3Q-ng'
          end
          object dbgChitietvondautuTONGSO_NT_CT: TdxDBGridColumn
            Caption = 'T'#7893'ng s'#7889
            HeaderAlignment = taCenter
            Width = 67
            BandIndex = 4
            RowIndex = 0
            FieldName = 'TONGSO_NT_CT'
            Caption_UTF7 = 'T+HtU-ng s+HtE'
          end
          object dbgChitietvondautuTONGSO_NN_CT: TdxDBGridColumn
            Caption = 'T'#7893'ng s'#7889
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 3
            RowIndex = 0
            FieldName = 'TONGSO_NN_CT'
            Caption_UTF7 = 'T+HtU-ng s+HtE'
          end
        end
      end
      object eltsNoidung2: TElTabSheet
        PageControl = PgCtrlLeft
        ImageIndex = -1
        TabVisible = True
        Caption = 'N'#7897'i dung 2'
        Visible = False
        OnEnter = eltsNoidung2Enter
        OnExit = eltsNoidung2Exit
        object dbgNoidung2: TdxDBGrid
          Left = 0
          Top = 0
          Width = 515
          Height = 444
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = acDinhnghia2Execute
          OnKeyDown = dbgNoidung1KeyDown
          OnMouseUp = dbgNoidung2MouseUp
          DataSource = dsNoidung2
          DefaultRowHeight = 20
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          OnChangeNode = dbgNoidung2ChangeNode
          object dxDBGridMaskColumn1: TdxDBGridColumn
            Caption = 'STT'
            HeaderAlignment = taCenter
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object dxDBGridMaskColumn2: TdxDBGridColumn
            Caption = 'Nh'#243'm'
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MANHOM'
            Caption_UTF7 = 'Nh+APM-m'
          end
          object dxDBGridMaskColumn3: TdxDBGridColumn
            Caption = 'T'#234'n thuy'#7871't minh'
            HeaderAlignment = taCenter
            Width = 319
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TENTHUYETMINH'
            Caption_UTF7 = 'T+AOo-n thuy+Hr8-t minh'
          end
          object dxDBGridMaskColumn4: TdxDBGridColumn
            Caption = 'M'#227' s'#7889
            HeaderAlignment = taCenter
            Visible = False
            Width = 33
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MASO'
            Caption_UTF7 = 'M+AOM s+HtE'
          end
          object dbgNoidung2Column10: TdxDBGridCheckColumn
            Caption = 'N'#250't l'#225
            HeaderAlignment = taCenter
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISMIN'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'N+APo-t l+AOE'
          end
          object dxDBGridMaskColumn7: TdxDBGridColumn
            Caption = 'H'#7879' s'#7889
            HeaderAlignment = taCenter
            Width = 39
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HESO_GROUP'
            Caption_UTF7 = 'H+Hsc s+HtE'
          end
          object dxDBGridMaskColumn5: TdxDBGridColumn
            Caption = 'N'#259'm nay'
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAMNAY'
            Caption_UTF7 = 'N+AQM-m nay'
          end
          object dxDBGridMaskColumn6: TdxDBGridColumn
            Caption = 'N'#259'm tr'#432#7899'c'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAMTRUOC'
            Caption_UTF7 = 'N+AQM-m tr+AbAe2w-c'
          end
          object dxDBGridMaskColumn8: TdxDBGridColumn
            Caption = 'M'#227' nh'#243'm'
            HeaderAlignment = taCenter
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUP_ID'
            Caption_UTF7 = 'M+AOM nh+APM-m'
          end
          object dbgNoidung2Column9: TdxDBGridCheckColumn
            Caption = 'Ch'#7919' '#273#7853'm'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISBOLD'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
          end
          object dbgNoidung2Column11: TdxDBGridCheckColumn
            Caption = 'Ki'#7875'u ph'#225't sinh'
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PHATSINH'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ki+HsM-u ph+AOE-t sinh'
          end
        end
      end
    end
    object elbtDinhnghia: TElPopupButton
      Left = 710
      Top = 597
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272'&'#7883'nh ngh'#297'a'
      TabOrder = 5
      OnClick = elbtDinhnghiaClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ebtPreview: TElPopupButton
      Left = 786
      Top = 597
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem tr'#432#7899'c khi in (F3)'
      DrawDefaultFrame = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
        D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
        3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
        97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
        DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
        B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
        99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
        978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
        BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
        A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
        EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
        CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
        B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
        F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
        DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
        C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
        9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
        E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
        70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
        EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
        86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
        A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphBottom
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      Action = acPreview
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ebtPrint: TElPopupButton
      Left = 812
      Top = 597
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'In tr'#7921'c ti'#7871'p ra m'#225'y in (Ctrl+P)'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000717171FF5F5F5FFF717171FF717171FF0000
        00000000000000000000717171FF000000000000000000000000000000000000
        000000000000BFBFBFFF383838FF959595FFDADADAFFD5D5D5FF545454FF7171
        71FF717171FF878787FF7C7C7CFF717171FF0000000000000000000000008E8E
        8EFF282828FF7D7D7DFFDADADAFFE9E9E9FFDBDBDBFFDBDBDBFFA4A4A4FF4646
        46FF8A8A8AFFF9F9F9FFF0F0F0FF666666FF717171FF000000008E8E8EFF6060
        60FFCDCDCDFFFEFEFEFFEDEDEDFFDCDCDCFFE8E8E8FFD9D9D9FFAFAFAFFFE3E3
        E3FFFFFFFFFFF7F7F7FFF0F0F0FFE8E8E8FF5A5A5AFF595959FF5B5B5BFFFDFD
        FDFFFFFFFFFFF2F2F2FFE7E7E7FFECECECFFF6F6F6FFDADADAFF5C5C5CFFCECE
        CEFFFFFFFFFFFDFDFDFFF3F3F3FFF3F3F3FFE5E5E5FF464646FF626262FFFFFF
        FFFFFFFFFFFFF5F5F5FFF2F2F2FFFEFEFEFFFFFFFFFFA5A5A5FF2A2A2AFF3030
        30FFD4D4D4FFFFFFFFFFFEFEFEFFFFFFFFFFBBBBBBFF353535FF2C2C2CFFA9A9
        A9FFFFFFFFFFF9F9F9FFFEFEFEFFFFFFFFFFC4C4C4FF8B8B8BFF717171FF2B2B
        2BFF303030FFDDDDDDFFFFFFFFFF9B9B9BFF292929FF00000000000000002A2A
        2AFF9C9C9CFFDADADAFFDBDBDBFFAFAFAFFFA9A9A9FFA7A7A7FF9B9B9BFF7B7B
        7BFF272727FF2F2F2FFF8E8E8EFF757575FF2E2E2EFF00000000000000000000
        0000363636FF7E7E7EFF505050FF707070FFAAAAAAFFBABABAFFA5A5A5FFA7A7
        A7FF858585FF1C1C1CFF343434FFCDCDCDFF656565FF00000000000000000000
        00003F3F3FFFD3D3D3FFA3A3A3FF454545FF7C7C7CFFB1B1B1FFBDBDBDFFA3A3
        A3FFB8B8B8FF767676FF999999FFE7E7E7FF595959FF00000000000000006E6E
        6EFF626262FFEDEDEDFFFFFFFFFF909090FF494949FF838383FFBBBBBBFFBFBF
        BFFFA0A0A0FFA8A8A8FFF2F2F2FFCACACAFF333333FF00000000000000003131
        31FF787878FFEEEEEEFFEEEEEEFFFDFDFDFF7F7F7FFF4D4D4DFF858585FFB2B2
        B2FFA3A3A3FFE9E9E9FFFFFFFFFF737373FF8E8E8EFF0000000000000000AAAA
        AAFF373737FF9C9C9CFFEFEFEFFFFDFDFDFF8D8D8DFF333333FF6E6E6EFFABAB
        ABFFF5F5F5FFFFFFFFFFA3A3A3FF545454FF0000000000000000000000000000
        0000AAAAAAFF353535FFA9A9A9FFF6F6F6FF515151FF4D4D4DFFCCCCCCFFFCFC
        FCFFF7F7F7FF939393FF545454FF000000000000000000000000000000000000
        0000000000005F5F5FFF404040FF989898FF383838FFAAAAAAFF585858FF7D7D
        7DFF4D4D4DFF9B9B9BFF00000000000000000000000000000000000000000000
        000000000000000000005F5F5FFF313131FFBABABAFF00000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphBottom
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      Action = acPrint
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ebtDesign: TElPopupButton
      Left = 838
      Top = 597
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'S'#7917'a l'#7841'i m'#7851'u phi'#7871'u in'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00BA69
        336BB9642FBCBA6530EDB9652FF7B9652FF7B9652FF7B9642FF7B9642EF7B864
        2DF7B8642DF7B8632DF7B8632DEFB6612BBDB6612D63FFFFFF00FFFFFF00BB68
        32DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
        EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B65F29D5FFFFFF00FFFFFF00BE70
        37F5F5EBDFFEFDBE67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC
        62FFFBBB60FFFCBD5FFFFCBB61FFFDFBF8FDB8632CF3FFFFFF00FFFFFF00C077
        3BF7F7EDE3FFFDC16DFF174156FF2A6086FF4B88BBFF6F9EB2FFE3C999FFFFD6
        94FFFFD593FFFFD492FFFBBD64FFFBF7F4FFBA6630F7FFFFFF00FFFFFF00C37B
        3FF7F7F0E6FFF8B354FF2D6581FF93C7F9FF90C9F9FF4084C9FF2567A5FFD2A7
        64FFF7B150FFF7B14EFFF7B14EFFFCF9F5FFBE6E35F7FFFFFF00FFFFFF00C47F
        41F7F8F1E8FFFEE5D5FF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478B
        C1FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC0753AF7FFFFFF00FFFFFF00C481
        44F7F8F2EBFFFEE7D6FFA5B5BEFF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0
        EDFF509AD9FFE1D6CDFFFBE1C9FFFBF7F2FFC47B3EF7FFFFFF00FFFFFF00C583
        46F7F9F3ECFFFEE8D6FFFEE8D7FFB2C5CCFF75B8D6FFC1F6FDFF62DFF7FF5CE2
        F8FF78D3F0FF4897DAFFE2D5C8FFFAF2EAFFC57F41F7FFFFFF00FFFFFF00C587
        48F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFAFC5CCFF76CBE7FFC7F7FDFF5DDC
        F5FF59E1F7FF7AD4F1FF4A98DBFFD2DFE9FFC58144F7FFFFFF00FFFFFF00C587
        49F7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBCD6D5FF78D3EEFFC7F7
        FDFF5EDCF5FF5AE2F7FF79D6F2FF50A0E0FFAC845FF9FFFFFF00FFFFFF00C588
        4AF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7CD4
        EEFFC3F6FDFF6BDDF6FF6CCAEDFF62A2D7FF6398C8FE5091CA26FFFFFF00C588
        4AF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECD
        C9FF80D5EEFFB1E3F9FF8ABFE7FFADD3F6FFC3E0FCFF659ED3F7FFFFFF00C588
        4BF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6
        B9FFAEE3F1FF76BDE7FFB3D2F0FFE5F3FFFFABD2EFFF478BC7E8FFFFFF00C487
        4AEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6
        B7FFFFFBF8FFB5CBC1FF57A4D8FF84B0DBFF459CD0FF2A94D15EFFFFFF00C384
        48C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
        ECFFF2E6D7FFE2B17CFFDB9364F5B2673A07FFFFFF00FFFFFF00FFFFFF00C07C
        4360C88A4CBBC88B4EEEC88B4EF6C88B4EF7C88B4EF7C88C4EF7C98B4EF7C78A
        4EF7C4884AD4C3753A91B2673B06FFFFFF00FFFFFF00FFFFFF00}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphTop
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 8
      ParentShowHint = False
      ShowHint = True
      Action = acDesign
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 623
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#232'n'
      TabOrder = 10
      Action = acChen
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object peTuthang: TdxPickEdit
      Left = 49
      Top = 597
      Width = 56
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object peDenthang: TdxPickEdit
      Left = 262
      Top = 597
      Width = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object seTunam: TdxSpinEdit
      Left = 134
      Top = 597
      Width = 59
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      MaxValue = 2090.000000000000000000
      MinValue = 2000.000000000000000000
      Value = 2000.000000000000000000
      StoredValues = 48
    end
    object seDennam: TdxSpinEdit
      Left = 337
      Top = 597
      Width = 56
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      MaxValue = 2090.000000000000000000
      MinValue = 2000.000000000000000000
      Value = 2000.000000000000000000
      StoredValues = 48
    end
    object btnDefault: TElPopupButton
      Left = 393
      Top = 623
      Width = 76
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&M'#7863'c '#273#7883'nh'
      TabOrder = 14
      Action = acResetData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pedtBranch: TdxDBExtLookupEdit
      Left = 427
      Top = 597
      Width = 175
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'FULLNAME'
      DataSource = MainDM.dsBranch
      DBGridLayout = dxDBGridLayout1
      PickListField = 'FULLNAME'
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        ShowCaption = False
        Control = PgCtrlLeft
        ControlOptions.ShowBorder = False
      end
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem15: TdxLayoutItem
          Caption = 'T'#7915' th'#225'ng'
          Control = peTuthang
          ControlOptions.ShowBorder = False
        end
        object locFormItem14: TdxLayoutItem
          Caption = '  n'#259'm'
          Control = seTunam
          ControlOptions.ShowBorder = False
        end
        object locFormItem13: TdxLayoutItem
          Caption = '     '#272#7871'n th'#225'ng'
          Control = peDenthang
          ControlOptions.ShowBorder = False
        end
        object locFormItem16: TdxLayoutItem
          Caption = '  n'#259'm'
          Control = seDennam
          ControlOptions.ShowBorder = False
        end
        object locBranch: TdxLayoutItem
          Caption = #272#417'n v'#7883
          Control = pedtBranch
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = elbtDinhnghia
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ebtPreview
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ebtPrint
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ebtDesign
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = btnIns
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem12: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = btnDel
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
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem17: TdxLayoutItem
          ShowCaption = False
          Control = btnDefault
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
    Left = 596
    Top = 177
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
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
    Left = 540
    Top = 177
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
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
      end>
    UseOwnFont = True
    Left = 568
    Top = 177
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
        Caption = 'Thuy'#7871't minh b'#225'o c'#225'o t'#224'i ch'#237'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 512
    Top = 176
  end
  object ActionList1: TActionList
    Left = 632
    Top = 176
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
    end
    object acPreview: TAction
      Caption = 'acPreview'
      OnExecute = acPreviewExecute
    end
    object acPrint: TAction
      Caption = 'acPrint'
      OnExecute = acPrintExecute
    end
    object acDesign: TAction
      Caption = 'acDesign'
      OnExecute = acDesignExecute
    end
    object acChen: TAction
      Caption = 'acChen'
      OnExecute = acChenExecute
    end
    object acDefination: TAction
      Caption = 'acDefination'
      OnExecute = acDefinationExecute
    end
    object acDinhnghia2: TAction
      Caption = 'acDinhnghia2'
      OnExecute = acDinhnghia2Execute
    end
    object acResetData: TAction
      Caption = 'ResetData'
      OnExecute = acResetDataExecute
    end
    object acAppend: TAction
      Category = 'Dataset'
      Caption = 'Append'
      OnExecute = acAppendExecute
    end
  end
  object qryNoidungkhac: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD,'
      '   ISMIN = :ISMIN,'
      '   PHATSINH = :PHATSINH'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD,'
      '   ISMIN,'
      '   PHATSINH)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD,'
      '   :ISMIN,'
      '   :PHATSINH)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryNoidungkhacAfterCancel
    BeforeDelete = qryNoidungkhacBeforeDelete
    AfterDelete = qryNoidungkhacAfterDelete
    AfterInsert = qryNoidungkhacAfterInsert
    BeforePost = qryNoidungkhacBeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryNoidungkhacNewRecord
    OnPostError = qryNoidungkhacPostError
    OnDeleteError = qryNoidungkhacDeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      '     , ISMIN'
      '     , PHATSINH'
      'FROM RPT_BANGTHUYETMINH_BCTC'
      'order by ID')
    FieldOptions = []
    Left = 584
    Top = 260
    object qryNoidungkhacID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryNoidungkhacMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qryNoidungkhacMASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qryNoidungkhacNAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qryNoidungkhacNAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qryNoidungkhacHESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qryNoidungkhacGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qryNoidungkhacISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryNoidungkhacISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryNoidungkhacPHATSINH: TSmallintField
      FieldName = 'PHATSINH'
    end
    object qryNoidungkhacTENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 1533
    end
  end
  object dsNoidung: TDataSource
    DataSet = qryNoidung
    Left = 16
    Top = 288
  end
  object qryTSCDHH: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTSCDHHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , NHACUA'
      '     , MAYMOCTB'
      '     , PTVTTD'
      '     , TBDCQLY'
      '     , TAISANCDKHAC'
      '     , TONGCONG'
      '     , MANHOM'
      '     , NUTLA     '
      '     , ISBOLD'
      'FROM SP_TMBCTC_QRY6'
      'order by ID')
    FieldOptions = []
    Left = 96
    Top = 260
    object qryTSCDHHID: TIntegerField
      FieldName = 'ID'
    end
    object qryTSCDHHKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryTSCDHHNHACUA: TIBOFloatField
      FieldName = 'NHACUA'
    end
    object qryTSCDHHMAYMOCTB: TIBOFloatField
      FieldName = 'MAYMOCTB'
    end
    object qryTSCDHHPTVTTD: TIBOFloatField
      FieldName = 'PTVTTD'
    end
    object qryTSCDHHTBDCQLY: TIBOFloatField
      FieldName = 'TBDCQLY'
    end
    object qryTSCDHHTAISANCDKHAC: TIBOFloatField
      FieldName = 'TAISANCDKHAC'
    end
    object qryTSCDHHTONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
    end
    object qryTSCDHHMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTSCDHHNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTSCDHHISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTSCDHHKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
  end
  object dsTSCDHH: TDataSource
    DataSet = qryTSCDHH
    Left = 96
    Top = 288
  end
  object qryTSCDThuetaichinh: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTSCDThuetaichinhNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , MAYMOCTB'
      '     , PTVTTD'
      '     , TBDCQLY'
      '     , TAISANCDKHAC'
      '     , TONGCONG'
      '     , MANHOM'
      '     , NUTLA     , ISBOLD'
      'FROM SP_TMBCTC_QRY7'
      'order by ID')
    FieldOptions = []
    Left = 168
    Top = 260
    object qryTSCDThuetaichinhID: TIntegerField
      FieldName = 'ID'
    end
    object qryTSCDThuetaichinhKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryTSCDThuetaichinhMAYMOCTB: TIBOFloatField
      FieldName = 'MAYMOCTB'
    end
    object qryTSCDThuetaichinhPTVTTD: TIBOFloatField
      FieldName = 'PTVTTD'
    end
    object qryTSCDThuetaichinhTBDCQLY: TIBOFloatField
      FieldName = 'TBDCQLY'
    end
    object qryTSCDThuetaichinhTAISANCDKHAC: TIBOFloatField
      FieldName = 'TAISANCDKHAC'
    end
    object qryTSCDThuetaichinhTONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
    end
    object qryTSCDThuetaichinhMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTSCDThuetaichinhNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTSCDThuetaichinhISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTSCDThuetaichinhKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
  end
  object dsTSCDThuetaichinh: TDataSource
    DataSet = qryTSCDThuetaichinh
    Left = 168
    Top = 288
  end
  object qryTSCDVH: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTSCDVHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , QUYENSDDAT'
      '     , BANQUYEN'
      '     , NHANHIEU'
      '     , PHANMEM'
      '     , TSCDVHKHAC'
      '     , TONGCONG'
      '     , MANHOM'
      '     , NUTLA     , ISBOLD'
      'FROM SP_TMBCTC_QRY8'
      'order by ID')
    FieldOptions = []
    Left = 240
    Top = 260
    object qryTSCDVHID: TIntegerField
      FieldName = 'ID'
    end
    object qryTSCDVHKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryTSCDVHQUYENSDDAT: TIBOFloatField
      FieldName = 'QUYENSDDAT'
    end
    object qryTSCDVHBANQUYEN: TIBOFloatField
      FieldName = 'BANQUYEN'
    end
    object qryTSCDVHNHANHIEU: TIBOFloatField
      FieldName = 'NHANHIEU'
    end
    object qryTSCDVHPHANMEM: TIBOFloatField
      FieldName = 'PHANMEM'
    end
    object qryTSCDVHTSCDVHKHAC: TIBOFloatField
      FieldName = 'TSCDVHKHAC'
    end
    object qryTSCDVHTONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
    end
    object qryTSCDVHMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTSCDVHNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTSCDVHISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTSCDVHKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
  end
  object dsTSCDVH: TDataSource
    DataSet = qryTSCDVH
    Left = 240
    Top = 288
  end
  object qryTanggiamBDSDT: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    EditSQL.Strings = (
      '')
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTanggiamBDSDTNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , SODAUNAM'
      '     , TANGTRONGNAM'
      '     , GIAMTRONGNAM'
      '     , SOCUOINAM'
      '     , MANHOM'
      '     , NUTLA     , ISBOLD'
      'FROM SP_TMBCTC_QRY10'
      'order by ID')
    FieldOptions = []
    Left = 312
    Top = 260
    object qryTanggiamBDSDTID: TIntegerField
      FieldName = 'ID'
    end
    object qryTanggiamBDSDTKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryTanggiamBDSDTSODAUNAM: TIBOFloatField
      FieldName = 'SODAUNAM'
    end
    object qryTanggiamBDSDTTANGTRONGNAM: TIBOFloatField
      FieldName = 'TANGTRONGNAM'
    end
    object qryTanggiamBDSDTGIAMTRONGNAM: TIBOFloatField
      FieldName = 'GIAMTRONGNAM'
    end
    object qryTanggiamBDSDTSOCUOINAM: TIBOFloatField
      FieldName = 'SOCUOINAM'
    end
    object qryTanggiamBDSDTMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTanggiamBDSDTNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTanggiamBDSDTISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTanggiamBDSDTKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
  end
  object dsTanggiamBDSDT: TDataSource
    DataSet = qryTanggiamBDSDT
    Left = 312
    Top = 288
  end
  object qryCackhoannothuetaichinh: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      '')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryCackhoannothuetaichinhNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , TONGKHOANTT_NN'
      '     , TRATIENLAITHUE_NN'
      '     , TRANOGOC_NN'
      '     , TONGKHOANTT_NT'
      '     , TRATIENLAITHUE_NT'
      '     , TRANOGOC_NT'
      '     , MANHOM'
      '     , NUTLA     , ISBOLD'
      'FROM SP_TMBCTC_QRY20'
      'order by ID')
    FieldOptions = []
    Left = 384
    Top = 260
    object qryCackhoannothuetaichinhID: TIntegerField
      FieldName = 'ID'
    end
    object qryCackhoannothuetaichinhKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryCackhoannothuetaichinhTONGKHOANTT_NN: TIBOFloatField
      FieldName = 'TONGKHOANTT_NN'
    end
    object qryCackhoannothuetaichinhTRATIENLAITHUE_NN: TIBOFloatField
      FieldName = 'TRATIENLAITHUE_NN'
    end
    object qryCackhoannothuetaichinhTRANOGOC_NN: TIBOFloatField
      FieldName = 'TRANOGOC_NN'
    end
    object qryCackhoannothuetaichinhTONGKHOANTT_NT: TIBOFloatField
      FieldName = 'TONGKHOANTT_NT'
    end
    object qryCackhoannothuetaichinhTRATIENLAITHUE_NT: TIBOFloatField
      FieldName = 'TRATIENLAITHUE_NT'
    end
    object qryCackhoannothuetaichinhTRANOGOC_NT: TIBOFloatField
      FieldName = 'TRANOGOC_NT'
    end
    object qryCackhoannothuetaichinhMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryCackhoannothuetaichinhNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryCackhoannothuetaichinhISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryCackhoannothuetaichinhKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
  end
  object dsCackhoannothuetaichinh: TDataSource
    DataSet = qryCackhoannothuetaichinh
    Left = 384
    Top = 288
  end
  object qryDoichieubiendongvonCSH: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDoichieubiendongvonCSHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , VONGOP'
      '     , THANGDUVCP'
      '     , COPHIEUNGANQUY'
      '     , CHENHLECHDGTS'
      '     , CHENHLECHTGHD'
      '     , QUYDAUTUPHATTRIEN'
      '     , QUYDUPHONGTAICHINH'
      '     , QUYTHUOCVONCSH'
      '     , LOINHUANSTCHUAPP'
      '     , MANHOM'
      '     , NUTLA     , ISBOLD'
      'FROM SP_TMBCTC_QRY21_1'
      'order by ID')
    FieldOptions = []
    Left = 448
    Top = 260
    object qryDoichieubiendongvonCSHID: TIntegerField
      FieldName = 'ID'
    end
    object qryDoichieubiendongvonCSHKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryDoichieubiendongvonCSHKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
    object qryDoichieubiendongvonCSHVONGOP: TIBOFloatField
      FieldName = 'VONGOP'
    end
    object qryDoichieubiendongvonCSHTHANGDUVCP: TIBOFloatField
      FieldName = 'THANGDUVCP'
    end
    object qryDoichieubiendongvonCSHCOPHIEUNGANQUY: TIBOFloatField
      FieldName = 'COPHIEUNGANQUY'
    end
    object qryDoichieubiendongvonCSHCHENHLECHDGTS: TIBOFloatField
      FieldName = 'CHENHLECHDGTS'
    end
    object qryDoichieubiendongvonCSHCHENHLECHTGHD: TIBOFloatField
      FieldName = 'CHENHLECHTGHD'
    end
    object qryDoichieubiendongvonCSHQUYDAUTUPHATTRIEN: TIBOFloatField
      FieldName = 'QUYDAUTUPHATTRIEN'
    end
    object qryDoichieubiendongvonCSHQUYDUPHONGTAICHINH: TIBOFloatField
      FieldName = 'QUYDUPHONGTAICHINH'
    end
    object qryDoichieubiendongvonCSHQUYTHUOCVONCSH: TIBOFloatField
      FieldName = 'QUYTHUOCVONCSH'
    end
    object qryDoichieubiendongvonCSHLOINHUANSTCHUAPP: TIBOFloatField
      FieldName = 'LOINHUANSTCHUAPP'
    end
    object qryDoichieubiendongvonCSHMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryDoichieubiendongvonCSHNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryDoichieubiendongvonCSHISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
  end
  object dsDoichieubiendongvonCSH: TDataSource
    DataSet = qryDoichieubiendongvonCSH
    Left = 448
    Top = 288
  end
  object qryChitietvondautuCSH: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    EditSQL.Strings = (
      '')
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietvondautuCSHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , TONGSO_NN'
      '     , VONCPTHUONG_NN'
      '     , VONCPUUDAI_NN'
      '     , KHOANMUC'
      '     , KHOANMUCDAM'
      '     , TONGSO_NT'
      '     , VONCPTHUONG_NT'
      '     , VONCPUUDAI_NT'
      '     , MANHOM'
      '     , NUTLA     , ISBOLD'
      'FROM SP_TMBCTC_QRY21_2'
      'order by ID')
    FieldOptions = []
    Left = 512
    Top = 260
    object qryChitietvondautuCSHID: TIntegerField
      FieldName = 'ID'
    end
    object qryChitietvondautuCSHTONGSO_NN: TIBOFloatField
      FieldName = 'TONGSO_NN'
    end
    object qryChitietvondautuCSHVONCPTHUONG_NN: TIBOFloatField
      FieldName = 'VONCPTHUONG_NN'
    end
    object qryChitietvondautuCSHVONCPUUDAI_NN: TIBOFloatField
      FieldName = 'VONCPUUDAI_NN'
    end
    object qryChitietvondautuCSHKHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 765
    end
    object qryChitietvondautuCSHTONGSO_NT: TIBOFloatField
      FieldName = 'TONGSO_NT'
    end
    object qryChitietvondautuCSHVONCPTHUONG_NT: TIBOFloatField
      FieldName = 'VONCPTHUONG_NT'
    end
    object qryChitietvondautuCSHVONCPUUDAI_NT: TIBOFloatField
      FieldName = 'VONCPUUDAI_NT'
    end
    object qryChitietvondautuCSHMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryChitietvondautuCSHNUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryChitietvondautuCSHISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryChitietvondautuCSHKHOANMUCDAM: TWideStringField
      FieldName = 'KHOANMUCDAM'
      Size = 765
    end
  end
  object dsChitietvondautuCSH: TDataSource
    DataSet = qryChitietvondautuCSH
    Left = 512
    Top = 288
  end
  object dsgReport: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 660
    Top = 176
  end
  object rptDocReport: TppReport
    AutoStop = False
    DataPipeline = dplNoidung
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Ch?ng t? k? to'#225'n'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    Left = 688
    Top = 176
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplNoidung'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object dplNoidung: TppDBPipeline
    DataSource = dsNoidung
    SkipWhenNoRecords = False
    UserName = 'dplNoidung'
    Left = 16
    Top = 316
  end
  object dplTSCDHH: TppDBPipeline
    DataSource = dsTSCDHH
    SkipWhenNoRecords = False
    UserName = 'dplTSCDHH'
    Left = 96
    Top = 316
  end
  object dplTSCDThuetaichinh: TppDBPipeline
    DataSource = dsTSCDThuetaichinh
    SkipWhenNoRecords = False
    UserName = 'dplTSCDThuetaichinh'
    Left = 168
    Top = 316
  end
  object dplTSCDVH: TppDBPipeline
    DataSource = dsTSCDVH
    SkipWhenNoRecords = False
    UserName = 'dplTSCDVH'
    Left = 240
    Top = 316
    object ppField1: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object dplTanggiamBDSDT: TppDBPipeline
    DataSource = dsTanggiamBDSDT
    SkipWhenNoRecords = False
    UserName = 'dplTanggiamBDSDT'
    Left = 312
    Top = 316
    object ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField20: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField22: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppField23: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField24: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField27: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField28: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField30: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object ppField31: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppField32: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object ppField33: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object dplCackhoannothuetaichinh: TppDBPipeline
    DataSource = dsCackhoannothuetaichinh
    SkipWhenNoRecords = False
    UserName = 'dplCackhoannothuetaichinh'
    Left = 384
    Top = 316
  end
  object dplDoichieubiendongvonCSH: TppDBPipeline
    DataSource = dsDoichieubiendongvonCSH
    SkipWhenNoRecords = False
    UserName = 'dplDoichieubiendongvonCSH'
    Left = 448
    Top = 316
  end
  object dplChitietvondautuCSH: TppDBPipeline
    DataSource = dsChitietvondautuCSH
    SkipWhenNoRecords = False
    UserName = 'dplChitietvondautuCSH'
    Left = 512
    Top = 316
  end
  object dsNoidung2: TDataSource
    DataSet = qryNoidungkhac
    Left = 584
    Top = 288
  end
  object dplNoidung2: TppDBPipeline
    DataSource = dsNoidung2
    SkipWhenNoRecords = False
    UserName = 'dplNoidung2'
    Left = 584
    Top = 316
  end
  object qryNoidung: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryNoidungAfterCancel
    BeforeDelete = qryNoidungBeforeDelete
    AfterDelete = qryNoidungAfterDelete
    AfterInsert = qryNoidungAfterInsert
    BeforePost = qryNoidungBeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryNoidungNewRecord
    OnPostError = qryNoidungPostError
    OnDeleteError = qryNoidungDeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'order by ID')
    FieldOptions = []
    Left = 16
    Top = 260
    object qryNoidungID: TSmallintField
      FieldName = 'ID'
    end
    object qryNoidungMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qryNoidungMASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qryNoidungNAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qryNoidungNAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qryNoidungHESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qryNoidungGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qryNoidungISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryNoidungTENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 1533
    end
  end
  object qry1: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM SP_TMBCTC_QRY1(1,:branch_id)')
    FieldOptions = []
    Left = 16
    Top = 364
    object qry1ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry1MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry1MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry1NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry1NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry1HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry1GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry1ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qry1TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 765
    end
    object qry1TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
  end
  object qry2: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTSCDHHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(2,:branch_id)')
    FieldOptions = []
    Left = 96
    Top = 364
    object qry2ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry2MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry2TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry2MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry2NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry2NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry2HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry2GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry2TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry2NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry2NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object qry3: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTSCDThuetaichinhNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =3'
      'order by ID')
    FieldOptions = []
    Left = 168
    Top = 364
    object qry3ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry3MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry3TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry3MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry3NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry3NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry3HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry3GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object qry4: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTSCDVHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(4,:branch_id)'
      '')
    FieldOptions = []
    Left = 240
    Top = 360
    object qry4ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry4MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry4TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry4MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry4NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry4NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry4HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry4GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry4TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry4NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry4NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object qry5: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTanggiamBDSDTNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =5'
      'order by ID')
    FieldOptions = []
    Left = 312
    Top = 364
    object qry5ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry5MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry5TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry5MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry5NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry5NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry5HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry5GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object qry6: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryCackhoannothuetaichinhNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(6,:branch_id)')
    FieldOptions = []
    Left = 384
    Top = 360
    object qry6ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry6MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry6TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry6MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry6NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry6NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry6HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry6GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry6TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry6NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry6NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object qry7: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDoichieubiendongvonCSHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(7,:branch_id)'
      '')
    FieldOptions = []
    Left = 448
    Top = 359
    object qry7ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry7MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry7TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry7MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry7NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry7NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry7HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry7GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry7TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry7NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry7NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object qry8: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietvondautuCSHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =8'
      'order by ID')
    FieldOptions = []
    Left = 512
    Top = 364
    object qry8ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry8MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry8TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry8MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry8NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry8NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry8HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry8GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object qry11: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(11,:branch_id)'
      '')
    FieldOptions = []
    Left = 694
    Top = 359
    object qry11ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry11MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry11TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry11MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry11NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry11NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry11HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry11GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry11TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry11NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry11NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object dpl2: TppDBPipeline
    DataSource = ds2
    SkipWhenNoRecords = False
    UserName = 'dpl2'
    Left = 96
    Top = 392
    object ppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField79: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object ppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField81: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppField82: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField83: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField86: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField87: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object ppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField89: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object ppField90: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppField91: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object ppField92: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object dpl3: TppDBPipeline
    DataSource = ds3
    SkipWhenNoRecords = False
    UserName = 'dpl3'
    Left = 168
    Top = 392
  end
  object dpl4: TppDBPipeline
    DataSource = ds4
    SkipWhenNoRecords = False
    UserName = 'dpl4'
    Left = 240
    Top = 392
    object ppField98: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField102: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField105: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField106: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object ppField107: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppField108: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField109: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppField110: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppField111: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField112: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppField113: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object ppField114: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object dpl5: TppDBPipeline
    DataSource = ds5
    SkipWhenNoRecords = False
    UserName = 'dpl5'
    Left = 312
    Top = 392
    object ppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField117: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object ppField118: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField119: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppField120: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField121: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppField122: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField123: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField124: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField125: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object ppField126: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField127: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object ppField128: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppField129: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object ppField130: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField131: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppField134: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppField135: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object dpl6: TppDBPipeline
    DataSource = ds6
    SkipWhenNoRecords = False
    UserName = 'dpl6'
    Left = 384
    Top = 392
  end
  object dpl7: TppDBPipeline
    DataSource = ds7
    SkipWhenNoRecords = False
    UserName = 'dpl7'
    Left = 448
    Top = 392
    object ppField136: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField137: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField138: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField139: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField140: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField143: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField144: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object ppField145: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppField146: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField147: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppField148: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppField149: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField150: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppField151: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object ppField152: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object dpl8: TppDBPipeline
    DataSource = ds8
    SkipWhenNoRecords = False
    UserName = 'dpl8'
    Left = 512
    Top = 392
    object ppField153: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppField154: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField155: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object ppField156: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField157: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppField158: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField159: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppField160: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField161: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField162: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField163: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object ppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField165: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object ppField166: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppField167: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object ppField168: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField169: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField170: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object dpl11: TppDBPipeline
    DataSource = ds11
    SkipWhenNoRecords = False
    UserName = 'dpl11'
    Left = 694
    Top = 392
  end
  object dpl1: TppDBPipeline
    DataSource = ds1
    SkipWhenNoRecords = False
    UserName = 'dpl1'
    Left = 16
    Top = 392
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 16
    Top = 420
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 96
    Top = 420
  end
  object ds3: TDataSource
    DataSet = qry3
    Left = 168
    Top = 420
  end
  object ds4: TDataSource
    DataSet = qry4
    Left = 240
    Top = 420
  end
  object ds5: TDataSource
    DataSet = qry5
    Left = 312
    Top = 420
  end
  object ds6: TDataSource
    DataSet = qry6
    Left = 384
    Top = 420
  end
  object ds7: TDataSource
    DataSet = qry7
    Left = 448
    Top = 420
  end
  object ds8: TDataSource
    DataSet = qry8
    Left = 512
    Top = 420
  end
  object ds11: TDataSource
    DataSet = qry11
    Left = 694
    Top = 420
  end
  object qry9: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDoichieubiendongvonCSHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(9,:branch_id)'
      '')
    FieldOptions = []
    Left = 568
    Top = 359
    object SmallintField1: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField2: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField3: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField1: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField2: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField3: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField4: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry9TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry9NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry9NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object dpl9: TppDBPipeline
    DataSource = ds9
    SkipWhenNoRecords = False
    UserName = 'dpl9'
    Left = 568
    Top = 392
    object ppField174: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField178: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField180: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField182: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object ppField183: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppField184: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField185: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppField186: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppField187: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField188: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppField189: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object ppField190: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object ds9: TDataSource
    DataSet = qry9
    Left = 568
    Top = 420
  end
  object ds10: TDataSource
    DataSet = qry10
    Left = 632
    Top = 420
  end
  object dpl10: TppDBPipeline
    DataSource = ds10
    SkipWhenNoRecords = False
    UserName = 'dpl10'
    Left = 632
    Top = 392
    object ppField191: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppField192: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField193: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object ppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField195: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppField196: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField197: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppField198: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField200: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField201: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object ppField202: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField203: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object ppField204: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppField205: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object ppField206: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField207: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppField209: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object qry10: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietvondautuCSHNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =10'
      'order by ID')
    FieldOptions = []
    Left = 632
    Top = 364
    object qry10ID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qry10MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object qry10TENTHUYETMINH: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object qry10MASO: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object qry10NAMNAY: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object qry10NAMTRUOC: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object qry10HESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qry10GROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object qry12: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =12'
      'order by ID')
    FieldOptions = []
    Left = 16
    Top = 460
    object SmallintField2: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField5: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField6: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField7: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField4: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField5: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField6: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField8: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object dpl12: TppDBPipeline
    DataSource = ds12
    SkipWhenNoRecords = False
    UserName = 'dpl12'
    Left = 16
    Top = 488
  end
  object ds12: TDataSource
    DataSet = qry12
    Left = 16
    Top = 516
  end
  object qry13: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =13'
      'order by ID')
    FieldOptions = []
    Left = 96
    Top = 460
    object SmallintField3: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField9: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField10: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField11: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField7: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField8: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField9: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField12: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object dpl13: TppDBPipeline
    DataSource = ds13
    SkipWhenNoRecords = False
    UserName = 'dpl13'
    Left = 96
    Top = 488
  end
  object ds13: TDataSource
    DataSet = qry13
    Left = 96
    Top = 516
  end
  object qry14: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(14,:branch_id)')
    FieldOptions = []
    Left = 174
    Top = 455
    object SmallintField4: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField13: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField14: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField15: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField10: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField11: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField12: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField16: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry14TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry14NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry14NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object dpl14: TppDBPipeline
    DataSource = ds14
    SkipWhenNoRecords = False
    UserName = 'dpl14'
    Left = 174
    Top = 488
  end
  object ds14: TDataSource
    DataSet = qry14
    Left = 174
    Top = 516
  end
  object qry15: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =15'
      'order by ID')
    FieldOptions = []
    Left = 240
    Top = 460
    object SmallintField5: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField17: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField18: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField19: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField13: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField14: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField15: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField20: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object dpl15: TppDBPipeline
    DataSource = ds15
    SkipWhenNoRecords = False
    UserName = 'dpl15'
    Left = 240
    Top = 488
  end
  object ds15: TDataSource
    DataSet = qry15
    Left = 240
    Top = 516
  end
  object qry16: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(16,:branch_id)'
      '')
    FieldOptions = []
    Left = 310
    Top = 455
    object SmallintField6: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField21: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField22: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField23: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField16: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField17: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField18: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField24: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry16TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry16NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry16NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object dpl16: TppDBPipeline
    DataSource = ds16
    SkipWhenNoRecords = False
    UserName = 'dpl16'
    Left = 310
    Top = 488
  end
  object ds16: TDataSource
    DataSet = qry16
    Left = 310
    Top = 516
  end
  object qry17: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID =17'
      'order by ID')
    FieldOptions = []
    Left = 384
    Top = 460
    object SmallintField7: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField25: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField26: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField27: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField19: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField20: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField21: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField28: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object dpl17: TppDBPipeline
    DataSource = ds17
    SkipWhenNoRecords = False
    UserName = 'dpl17'
    Left = 384
    Top = 488
  end
  object ds17: TDataSource
    DataSet = qry17
    Left = 384
    Top = 516
  end
  object qry18: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(18,:branch_id)'
      '')
    FieldOptions = []
    Left = 454
    Top = 460
    object SmallintField8: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField29: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField30: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField31: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField22: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField23: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField24: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField32: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry18TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry18NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry18NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object dpl18: TppDBPipeline
    DataSource = ds18
    SkipWhenNoRecords = False
    UserName = 'dpl18'
    Left = 454
    Top = 488
  end
  object ds18: TDataSource
    DataSet = qry18
    Left = 454
    Top = 516
  end
  object qry19: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC2 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID,'
      '   ISBOLD = :ISBOLD'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC2('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID,'
      '   ISBOLD)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID,'
      '   :ISBOLD)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM RPT_BANGTHUYETMINH_BCTC2'
      'where GROUP_ID=19'
      'order by ID')
    FieldOptions = []
    Left = 520
    Top = 460
    object SmallintField9: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField33: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField34: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField35: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField25: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField26: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField27: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField36: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object dpl19: TppDBPipeline
    DataSource = ds19
    SkipWhenNoRecords = False
    UserName = 'dpl19'
    Left = 520
    Top = 488
  end
  object ds19: TDataSource
    DataSet = qry19
    Left = 520
    Top = 516
  end
  object qry20: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , NAMNAYDAM'
      '     , NAMTRUOCDAM'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM SP_TMBCTC_QRY4(20,:branch_id)')
    FieldOptions = []
    Left = 574
    Top = 455
    object SmallintField10: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField37: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField38: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField39: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField28: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField29: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField30: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField40: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry20TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry20NAMNAYDAM: TIBOFloatField
      FieldName = 'NAMNAYDAM'
    end
    object qry20NAMTRUOCDAM: TIBOFloatField
      FieldName = 'NAMTRUOCDAM'
    end
  end
  object dpl20: TppDBPipeline
    DataSource = ds20
    SkipWhenNoRecords = False
    UserName = 'dpl20'
    Left = 574
    Top = 488
  end
  object ds20: TDataSource
    DataSet = qry20
    Left = 574
    Top = 516
  end
  object qry21: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , TENTHUYETMINHDAM'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      '     , ISBOLD'
      'FROM SP_TMBCTC_QRY1(21,:branch_id)'
      'order by ID')
    FieldOptions = []
    Left = 640
    Top = 460
    object SmallintField11: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField41: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField42: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField43: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField31: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField32: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField33: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField44: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
    object qry21TENTHUYETMINHDAM: TWideStringField
      FieldName = 'TENTHUYETMINHDAM'
      Size = 765
    end
    object qry21ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
  end
  object dpl21: TppDBPipeline
    DataSource = ds21
    SkipWhenNoRecords = False
    UserName = 'dpl21'
    Left = 640
    Top = 488
  end
  object ds21: TDataSource
    DataSet = qry21
    Left = 640
    Top = 516
  end
  object qryPrepare: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TENTHUYETMINH = :TENTHUYETMINH,'
      '   MASO = :MASO,'
      '   NAMNAY = :NAMNAY,'
      '   NAMTRUOC = :NAMTRUOC,'
      '   HESO_GROUP = :HESO_GROUP,'
      '   GROUP_ID = :GROUP_ID'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TENTHUYETMINH,'
      '   MASO,'
      '   NAMNAY,'
      '   NAMTRUOC,'
      '   HESO_GROUP,'
      '   GROUP_ID)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TENTHUYETMINH,'
      '   :MASO,'
      '   :NAMNAY,'
      '   :NAMTRUOC,'
      '   :HESO_GROUP,'
      '   :GROUP_ID)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TENTHUYETMINH'
      '     , MASO'
      '     , NAMNAY'
      '     , NAMTRUOC'
      '     , HESO_GROUP'
      '     , GROUP_ID'
      'FROM RPT_BANGTHUYETMINH_BCTC'
      'where GROUP_ID=20'
      'order by ID'
      '')
    FieldOptions = []
    Left = 46
    Top = 100
    object SmallintField13: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField49: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField50: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField51: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField37: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField38: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField39: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField52: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object qryTemp: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'iType'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'execute procedure sp_tmbctc_unpost(:iType)')
    FieldOptions = []
    Left = 80
    Top = 100
    object SmallintField14: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField53: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField54: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField55: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField40: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField41: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField42: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField56: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object qryTSCDHH_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC6'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC6 SET'
      '   ID = :ID, /*PK*/'
      '   KHOANMUC = :KHOANMUC,'
      '   NHACUA = :NHACUA,'
      '   MAYMOCTB = :MAYMOCTB,'
      '   PTVTTD = :PTVTTD,'
      '   TBDCQLY = :TBDCQLY,'
      '   TAISANCDKHAC = :TAISANCDKHAC,'
      '   TONGCONG = :TONGCONG,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   NHACUA_CT = :NHACUA_CT,'
      '   MAYMOCTB_CT = :MAYMOCTB_CT,'
      '   PTVTTD_CT = :PTVTTD_CT,'
      '   TBDCQLY_CT = :TBDCQLY_CT,'
      '   TAISANCDKHAC_CT = :TAISANCDKHAC_CT,'
      '   TONGCONG_CT = :TONGCONG_CT'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC6('
      '   ID, /*PK*/'
      '   KHOANMUC,'
      '   NHACUA,'
      '   MAYMOCTB,'
      '   PTVTTD,'
      '   TBDCQLY,'
      '   TAISANCDKHAC,'
      '   TONGCONG,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   NHACUA_CT,'
      '   MAYMOCTB_CT,'
      '   PTVTTD_CT,'
      '   TBDCQLY_CT,'
      '   TAISANCDKHAC_CT,'
      '   TONGCONG_CT)'
      'VALUES ('
      '   :ID,'
      '   :KHOANMUC,'
      '   :NHACUA,'
      '   :MAYMOCTB,'
      '   :PTVTTD,'
      '   :TBDCQLY,'
      '   :TAISANCDKHAC,'
      '   :TONGCONG,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :NHACUA_CT,'
      '   :MAYMOCTB_CT,'
      '   :PTVTTD_CT,'
      '   :TBDCQLY_CT,'
      '   :TAISANCDKHAC_CT,'
      '   :TONGCONG_CT)')
    KeyLinks.Strings = (
      'id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryTSCDHH_0AfterCancel
    BeforeDelete = qryTSCDHH_0BeforeDelete
    AfterDelete = qryTSCDHH_0AfterDelete
    AfterInsert = qryTSCDHH_0AfterInsert
    BeforePost = qryTSCDHH_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryTSCDHH_0NewRecord
    OnPostError = qryTSCDHH_0PostError
    OnDeleteError = qryTSCDHH_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , NHACUA'
      '     , MAYMOCTB'
      '     , PTVTTD'
      '     , TBDCQLY'
      '     , TAISANCDKHAC'
      '     , TONGCONG'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , NHACUA_CT'
      '     , MAYMOCTB_CT'
      '     , PTVTTD_CT'
      '     , TBDCQLY_CT'
      '     , TAISANCDKHAC_CT'
      '     , TONGCONG_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC6'
      'order by id')
    FieldOptions = []
    Left = 16
    Top = 156
    object qryTSCDHH_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryTSCDHH_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryTSCDHH_0NHACUA: TIBOFloatField
      FieldName = 'NHACUA'
    end
    object qryTSCDHH_0MAYMOCTB: TIBOFloatField
      FieldName = 'MAYMOCTB'
    end
    object qryTSCDHH_0PTVTTD: TIBOFloatField
      FieldName = 'PTVTTD'
    end
    object qryTSCDHH_0TBDCQLY: TIBOFloatField
      FieldName = 'TBDCQLY'
    end
    object qryTSCDHH_0TAISANCDKHAC: TIBOFloatField
      FieldName = 'TAISANCDKHAC'
    end
    object qryTSCDHH_0TONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
    end
    object qryTSCDHH_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTSCDHH_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryTSCDHH_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTSCDHH_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTSCDHH_0NHACUA_CT: TWideStringField
      FieldName = 'NHACUA_CT'
      Size = 126
    end
    object qryTSCDHH_0MAYMOCTB_CT: TWideStringField
      FieldName = 'MAYMOCTB_CT'
      Size = 126
    end
    object qryTSCDHH_0PTVTTD_CT: TWideStringField
      FieldName = 'PTVTTD_CT'
      Size = 126
    end
    object qryTSCDHH_0TBDCQLY_CT: TWideStringField
      FieldName = 'TBDCQLY_CT'
      Size = 126
    end
    object qryTSCDHH_0TAISANCDKHAC_CT: TWideStringField
      FieldName = 'TAISANCDKHAC_CT'
      Size = 126
    end
    object qryTSCDHH_0TONGCONG_CT: TWideStringField
      FieldName = 'TONGCONG_CT'
      Size = 126
    end
  end
  object qryTSCDThuetaichinh_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC7'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC7 SET'
      '   ID = :ID, /*PK*/'
      '   KHOANMUC = :KHOANMUC,'
      '   MAYMOCTB = :MAYMOCTB,'
      '   PTVTTD = :PTVTTD,'
      '   TBDCQLY = :TBDCQLY,'
      '   TAISANCDKHAC = :TAISANCDKHAC,'
      '   TONGCONG = :TONGCONG,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   MAYMOCTB_CT = :MAYMOCTB_CT,'
      '   PTVTTD_CT = :PTVTTD_CT,'
      '   TBDCQLY_CT = :TBDCQLY_CT,'
      '   TAISANCDKHAC_CT = :TAISANCDKHAC_CT,'
      '   TONGCONG_CT = :TONGCONG_CT'
      'WHERE'
      '   ID = :OLD_ID')
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC7('
      '   ID, /*PK*/'
      '   KHOANMUC,'
      '   MAYMOCTB,'
      '   PTVTTD,'
      '   TBDCQLY,'
      '   TAISANCDKHAC,'
      '   TONGCONG,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   MAYMOCTB_CT,'
      '   PTVTTD_CT,'
      '   TBDCQLY_CT,'
      '   TAISANCDKHAC_CT,'
      '   TONGCONG_CT)'
      'VALUES ('
      '   :ID,'
      '   :KHOANMUC,'
      '   :MAYMOCTB,'
      '   :PTVTTD,'
      '   :TBDCQLY,'
      '   :TAISANCDKHAC,'
      '   :TONGCONG,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :MAYMOCTB_CT,'
      '   :PTVTTD_CT,'
      '   :TBDCQLY_CT,'
      '   :TAISANCDKHAC_CT,'
      '   :TONGCONG_CT)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryTSCDThuetaichinh_0AfterCancel
    BeforeDelete = qryTSCDThuetaichinh_0BeforeDelete
    AfterDelete = qryTSCDThuetaichinh_0AfterDelete
    AfterInsert = qryTSCDThuetaichinh_0AfterInsert
    BeforePost = qryTSCDThuetaichinh_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryTSCDThuetaichinh_0NewRecord
    OnPostError = qryTSCDThuetaichinh_0PostError
    OnDeleteError = qryTSCDThuetaichinh_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , MAYMOCTB'
      '     , PTVTTD'
      '     , TBDCQLY'
      '     , TAISANCDKHAC'
      '     , TONGCONG'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , MAYMOCTB_CT'
      '     , PTVTTD_CT'
      '     , TBDCQLY_CT'
      '     , TAISANCDKHAC_CT'
      '     , TONGCONG_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC7'
      'order by ID')
    FieldOptions = []
    Left = 88
    Top = 156
    object qryTSCDThuetaichinh_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryTSCDThuetaichinh_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryTSCDThuetaichinh_0MAYMOCTB: TIBOFloatField
      FieldName = 'MAYMOCTB'
    end
    object qryTSCDThuetaichinh_0PTVTTD: TIBOFloatField
      FieldName = 'PTVTTD'
    end
    object qryTSCDThuetaichinh_0TBDCQLY: TIBOFloatField
      FieldName = 'TBDCQLY'
    end
    object qryTSCDThuetaichinh_0TAISANCDKHAC: TIBOFloatField
      FieldName = 'TAISANCDKHAC'
    end
    object qryTSCDThuetaichinh_0TONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
    end
    object qryTSCDThuetaichinh_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTSCDThuetaichinh_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryTSCDThuetaichinh_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTSCDThuetaichinh_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTSCDThuetaichinh_0MAYMOCTB_CT: TWideStringField
      FieldName = 'MAYMOCTB_CT'
      Size = 126
    end
    object qryTSCDThuetaichinh_0PTVTTD_CT: TWideStringField
      FieldName = 'PTVTTD_CT'
      Size = 126
    end
    object qryTSCDThuetaichinh_0TBDCQLY_CT: TWideStringField
      FieldName = 'TBDCQLY_CT'
      Size = 126
    end
    object qryTSCDThuetaichinh_0TAISANCDKHAC_CT: TWideStringField
      FieldName = 'TAISANCDKHAC_CT'
      Size = 126
    end
    object qryTSCDThuetaichinh_0TONGCONG_CT: TWideStringField
      FieldName = 'TONGCONG_CT'
      Size = 126
    end
  end
  object qryTSCDVH_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC8'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC8 SET'
      '   ID = :ID, /*PK*/'
      '   KHOANMUC = :KHOANMUC,'
      '   QUYENSDDAT = :QUYENSDDAT,'
      '   BANQUYEN = :BANQUYEN,'
      '   NHANHIEU = :NHANHIEU,'
      '   PHANMEM = :PHANMEM,'
      '   TSCDVHKHAC = :TSCDVHKHAC,'
      '   TONGCONG = :TONGCONG,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   QUYENSDDAT_CT = :QUYENSDDAT_CT,'
      '   BANQUYEN_CT = :BANQUYEN_CT,'
      '   NHANHIEU_CT = :NHANHIEU_CT,'
      '   PHANMEM_CT = :PHANMEM_CT,'
      '   TSCDVHKHAC_CT = :TSCDVHKHAC_CT,'
      '   TONGCONG_CT = :TONGCONG_CT'
      'WHERE'
      '   ID = :OLD_ID')
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC8('
      '   ID, /*PK*/'
      '   KHOANMUC,'
      '   QUYENSDDAT,'
      '   BANQUYEN,'
      '   NHANHIEU,'
      '   PHANMEM,'
      '   TSCDVHKHAC,'
      '   TONGCONG,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   QUYENSDDAT_CT,'
      '   BANQUYEN_CT,'
      '   NHANHIEU_CT,'
      '   PHANMEM_CT,'
      '   TSCDVHKHAC_CT,'
      '   TONGCONG_CT)'
      'VALUES ('
      '   :ID,'
      '   :KHOANMUC,'
      '   :QUYENSDDAT,'
      '   :BANQUYEN,'
      '   :NHANHIEU,'
      '   :PHANMEM,'
      '   :TSCDVHKHAC,'
      '   :TONGCONG,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :QUYENSDDAT_CT,'
      '   :BANQUYEN_CT,'
      '   :NHANHIEU_CT,'
      '   :PHANMEM_CT,'
      '   :TSCDVHKHAC_CT,'
      '   :TONGCONG_CT)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryTSCDVH_0AfterCancel
    BeforeDelete = qryTSCDVH_0BeforeDelete
    AfterDelete = qryTSCDVH_0AfterDelete
    AfterInsert = qryTSCDVH_0AfterInsert
    BeforePost = qryTSCDVH_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryTSCDVH_0NewRecord
    OnPostError = qryTSCDVH_0PostError
    OnDeleteError = qryTSCDVH_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , QUYENSDDAT'
      '     , BANQUYEN'
      '     , NHANHIEU'
      '     , PHANMEM'
      '     , TSCDVHKHAC'
      '     , TONGCONG'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , QUYENSDDAT_CT'
      '     , BANQUYEN_CT'
      '     , NHANHIEU_CT'
      '     , PHANMEM_CT'
      '     , TSCDVHKHAC_CT'
      '     , TONGCONG_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC8'
      'order by ID')
    FieldOptions = []
    Left = 160
    Top = 156
    object qryTSCDVH_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryTSCDVH_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryTSCDVH_0QUYENSDDAT: TIBOFloatField
      FieldName = 'QUYENSDDAT'
    end
    object qryTSCDVH_0BANQUYEN: TIBOFloatField
      FieldName = 'BANQUYEN'
    end
    object qryTSCDVH_0NHANHIEU: TIBOFloatField
      FieldName = 'NHANHIEU'
    end
    object qryTSCDVH_0PHANMEM: TIBOFloatField
      FieldName = 'PHANMEM'
    end
    object qryTSCDVH_0TSCDVHKHAC: TIBOFloatField
      FieldName = 'TSCDVHKHAC'
    end
    object qryTSCDVH_0TONGCONG: TIBOFloatField
      FieldName = 'TONGCONG'
    end
    object qryTSCDVH_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTSCDVH_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryTSCDVH_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTSCDVH_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTSCDVH_0QUYENSDDAT_CT: TWideStringField
      FieldName = 'QUYENSDDAT_CT'
      Size = 126
    end
    object qryTSCDVH_0BANQUYEN_CT: TWideStringField
      FieldName = 'BANQUYEN_CT'
      Size = 126
    end
    object qryTSCDVH_0NHANHIEU_CT: TWideStringField
      FieldName = 'NHANHIEU_CT'
      Size = 126
    end
    object qryTSCDVH_0PHANMEM_CT: TWideStringField
      FieldName = 'PHANMEM_CT'
      Size = 126
    end
    object qryTSCDVH_0TSCDVHKHAC_CT: TWideStringField
      FieldName = 'TSCDVHKHAC_CT'
      Size = 126
    end
    object qryTSCDVH_0TONGCONG_CT: TWideStringField
      FieldName = 'TONGCONG_CT'
      Size = 126
    end
  end
  object qryTanggiamBDSDT_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC10'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC10 SET'
      '   ID = :ID, /*PK*/'
      '   KHOANMUC = :KHOANMUC,'
      '   SODAUNAM = :SODAUNAM,'
      '   TANGTRONGNAM = :TANGTRONGNAM,'
      '   GIAMTRONGNAM = :GIAMTRONGNAM,'
      '   SOCUOINAM = :SOCUOINAM,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   SODAUNAM_CT = :SODAUNAM_CT,'
      '   TANGTRONGNAM_CT = :TANGTRONGNAM_CT,'
      '   GIAMTRONGNAM_CT = :GIAMTRONGNAM_CT,'
      '   SOCUOINAM_CT = :SOCUOINAM_CT'
      'WHERE'
      '   ID = :OLD_ID')
    FetchWholeRows = False
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC10('
      '   ID, /*PK*/'
      '   KHOANMUC,'
      '   SODAUNAM,'
      '   TANGTRONGNAM,'
      '   GIAMTRONGNAM,'
      '   SOCUOINAM,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   SODAUNAM_CT,'
      '   TANGTRONGNAM_CT,'
      '   GIAMTRONGNAM_CT,'
      '   SOCUOINAM_CT)'
      'VALUES ('
      '   :ID,'
      '   :KHOANMUC,'
      '   :SODAUNAM,'
      '   :TANGTRONGNAM,'
      '   :GIAMTRONGNAM,'
      '   :SOCUOINAM,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :SODAUNAM_CT,'
      '   :TANGTRONGNAM_CT,'
      '   :GIAMTRONGNAM_CT,'
      '   :SOCUOINAM_CT)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryTanggiamBDSDT_0AfterCancel
    BeforeDelete = qryTanggiamBDSDT_0BeforeDelete
    AfterDelete = qryTanggiamBDSDT_0AfterDelete
    AfterInsert = qryTanggiamBDSDT_0AfterInsert
    BeforePost = qryTanggiamBDSDT_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryTanggiamBDSDT_0NewRecord
    OnPostError = qryTanggiamBDSDT_0PostError
    OnDeleteError = qryTanggiamBDSDT_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , SODAUNAM'
      '     , TANGTRONGNAM'
      '     , GIAMTRONGNAM'
      '     , SOCUOINAM'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , SODAUNAM_CT'
      '     , TANGTRONGNAM_CT'
      '     , GIAMTRONGNAM_CT'
      '     , SOCUOINAM_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC10'
      'order by ID')
    FieldOptions = []
    Left = 232
    Top = 156
    object qryTanggiamBDSDT_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryTanggiamBDSDT_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryTanggiamBDSDT_0SODAUNAM: TIBOFloatField
      FieldName = 'SODAUNAM'
    end
    object qryTanggiamBDSDT_0TANGTRONGNAM: TIBOFloatField
      FieldName = 'TANGTRONGNAM'
    end
    object qryTanggiamBDSDT_0GIAMTRONGNAM: TIBOFloatField
      FieldName = 'GIAMTRONGNAM'
    end
    object qryTanggiamBDSDT_0SOCUOINAM: TIBOFloatField
      FieldName = 'SOCUOINAM'
    end
    object qryTanggiamBDSDT_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryTanggiamBDSDT_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryTanggiamBDSDT_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryTanggiamBDSDT_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryTanggiamBDSDT_0SODAUNAM_CT: TWideStringField
      FieldName = 'SODAUNAM_CT'
      Size = 126
    end
    object qryTanggiamBDSDT_0TANGTRONGNAM_CT: TWideStringField
      FieldName = 'TANGTRONGNAM_CT'
      Size = 126
    end
    object qryTanggiamBDSDT_0GIAMTRONGNAM_CT: TWideStringField
      FieldName = 'GIAMTRONGNAM_CT'
      Size = 126
    end
    object qryTanggiamBDSDT_0SOCUOINAM_CT: TWideStringField
      FieldName = 'SOCUOINAM_CT'
      Size = 126
    end
  end
  object qryCackhoannothuetaichinh_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC20'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC20 SET'
      '   ID = :ID, /*PK*/'
      '   KHOANMUC = :KHOANMUC,'
      '   TONGKHOANTT_NN = :TONGKHOANTT_NN,'
      '   TRATIENLAITHUE_NN = :TRATIENLAITHUE_NN,'
      '   TRANOGOC_NN = :TRANOGOC_NN,'
      '   TONGKHOANTT_NT = :TONGKHOANTT_NT,'
      '   TRATIENLAITHUE_NT = :TRATIENLAITHUE_NT,'
      '   TRANOGOC_NT = :TRANOGOC_NT,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   TONGKHOANTT_NN_CT = :TONGKHOANTT_NN_CT,'
      '   TONGKHOANTT_NT_CT = :TONGKHOANTT_NT_CT,'
      '   TRATIENLAITHUE_NN_CT = :TRATIENLAITHUE_NN_CT,'
      '   TRATIENLAITHUE_NT_CT = :TRATIENLAITHUE_NT_CT,'
      '   TRANOGOC_NN_CT = :TRANOGOC_NN_CT,'
      '   TRANOGOC_NT_CT = :TRANOGOC_NT_CT'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC20('
      '   ID, /*PK*/'
      '   KHOANMUC,'
      '   TONGKHOANTT_NN,'
      '   TRATIENLAITHUE_NN,'
      '   TRANOGOC_NN,'
      '   TONGKHOANTT_NT,'
      '   TRATIENLAITHUE_NT,'
      '   TRANOGOC_NT,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   TONGKHOANTT_NN_CT,'
      '   TONGKHOANTT_NT_CT,'
      '   TRATIENLAITHUE_NN_CT,'
      '   TRATIENLAITHUE_NT_CT,'
      '   TRANOGOC_NN_CT,'
      '   TRANOGOC_NT_CT)'
      'VALUES ('
      '   :ID,'
      '   :KHOANMUC,'
      '   :TONGKHOANTT_NN,'
      '   :TRATIENLAITHUE_NN,'
      '   :TRANOGOC_NN,'
      '   :TONGKHOANTT_NT,'
      '   :TRATIENLAITHUE_NT,'
      '   :TRANOGOC_NT,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :TONGKHOANTT_NN_CT,'
      '   :TONGKHOANTT_NT_CT,'
      '   :TRATIENLAITHUE_NN_CT,'
      '   :TRATIENLAITHUE_NT_CT,'
      '   :TRANOGOC_NN_CT,'
      '   :TRANOGOC_NT_CT)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryCackhoannothuetaichinh_0AfterCancel
    BeforeDelete = qryCackhoannothuetaichinh_0BeforeDelete
    AfterDelete = qryCackhoannothuetaichinh_0AfterDelete
    AfterInsert = qryCackhoannothuetaichinh_0AfterInsert
    BeforePost = qryCackhoannothuetaichinh_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryCackhoannothuetaichinh_0NewRecord
    OnPostError = qryCackhoannothuetaichinh_0PostError
    OnDeleteError = qryCackhoannothuetaichinh_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , TONGKHOANTT_NN'
      '     , TRATIENLAITHUE_NN'
      '     , TRANOGOC_NN'
      '     , TONGKHOANTT_NT'
      '     , TRATIENLAITHUE_NT'
      '     , TRANOGOC_NT'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , TONGKHOANTT_NN_CT'
      '     , TONGKHOANTT_NT_CT'
      '     , TRATIENLAITHUE_NN_CT'
      '     , TRATIENLAITHUE_NT_CT'
      '     , TRANOGOC_NN_CT'
      '     , TRANOGOC_NT_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC20'
      'order by ID')
    FieldOptions = []
    Left = 304
    Top = 156
    object qryCackhoannothuetaichinh_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryCackhoannothuetaichinh_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryCackhoannothuetaichinh_0TONGKHOANTT_NN: TIBOFloatField
      FieldName = 'TONGKHOANTT_NN'
    end
    object qryCackhoannothuetaichinh_0TRATIENLAITHUE_NN: TIBOFloatField
      FieldName = 'TRATIENLAITHUE_NN'
    end
    object qryCackhoannothuetaichinh_0TRANOGOC_NN: TIBOFloatField
      FieldName = 'TRANOGOC_NN'
    end
    object qryCackhoannothuetaichinh_0TONGKHOANTT_NT: TIBOFloatField
      FieldName = 'TONGKHOANTT_NT'
    end
    object qryCackhoannothuetaichinh_0TRATIENLAITHUE_NT: TIBOFloatField
      FieldName = 'TRATIENLAITHUE_NT'
    end
    object qryCackhoannothuetaichinh_0TRANOGOC_NT: TIBOFloatField
      FieldName = 'TRANOGOC_NT'
    end
    object qryCackhoannothuetaichinh_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryCackhoannothuetaichinh_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryCackhoannothuetaichinh_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryCackhoannothuetaichinh_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryCackhoannothuetaichinh_0TONGKHOANTT_NN_CT: TSmallintField
      FieldName = 'TONGKHOANTT_NN_CT'
    end
    object qryCackhoannothuetaichinh_0TONGKHOANTT_NT_CT: TWideStringField
      FieldName = 'TONGKHOANTT_NT_CT'
      Size = 126
    end
    object qryCackhoannothuetaichinh_0TRATIENLAITHUE_NN_CT: TWideStringField
      FieldName = 'TRATIENLAITHUE_NN_CT'
      Size = 126
    end
    object qryCackhoannothuetaichinh_0TRATIENLAITHUE_NT_CT: TWideStringField
      FieldName = 'TRATIENLAITHUE_NT_CT'
      Size = 126
    end
    object qryCackhoannothuetaichinh_0TRANOGOC_NN_CT: TWideStringField
      FieldName = 'TRANOGOC_NN_CT'
      Size = 126
    end
    object qryCackhoannothuetaichinh_0TRANOGOC_NT_CT: TWideStringField
      FieldName = 'TRANOGOC_NT_CT'
      Size = 126
    end
  end
  object qryDoichieubiendongvonCSH_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC21_1'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC21_1 SET'
      '   ID = :ID, /*PK*/'
      '   KHOANMUC = :KHOANMUC,'
      '   VONGOP = :VONGOP,'
      '   THANGDUVCP = :THANGDUVCP,'
      '   COPHIEUNGANQUI = :COPHIEUNGANQUI,'
      '   CHENHLENHDGTS = :CHENHLENHDGTS,'
      '   CHENHLECHTGHD = :CHENHLECHTGHD,'
      '   QUIDAUTUPHATTRIEN = :QUIDAUTUPHATTRIEN,'
      '   QUIDUPHONGTAICHINH = :QUIDUPHONGTAICHINH,'
      '   QUITHUOCVSH = :QUITHUOCVSH,'
      '   LOINHUANSTCHUAPP = :LOINHUANSTCHUAPP,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   VONGOP_CT = :VONGOP_CT,'
      '   THANGDUVCP_CT = :THANGDUVCP_CT,'
      '   COPHIEUNGANQUI_CT = :COPHIEUNGANQUI_CT,'
      '   CHENHLENHDGTS_CT = :CHENHLENHDGTS_CT,'
      '   CHENHLECHTGHD_CT = :CHENHLECHTGHD_CT,'
      '   QUIDAUTUPHATTRIEN_CT = :QUIDAUTUPHATTRIEN_CT,'
      '   QUIDUPHONGTAICHINH_CT = :QUIDUPHONGTAICHINH_CT,'
      '   QUITHUOCVSH_CT = :QUITHUOCVSH_CT,'
      '   LOINHUANSTCHUAPP_CT = :LOINHUANSTCHUAPP_CT'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1('
      '   ID, /*PK*/'
      '   KHOANMUC,'
      '   VONGOP,'
      '   THANGDUVCP,'
      '   COPHIEUNGANQUI,'
      '   CHENHLENHDGTS,'
      '   CHENHLECHTGHD,'
      '   QUIDAUTUPHATTRIEN,'
      '   QUIDUPHONGTAICHINH,'
      '   QUITHUOCVSH,'
      '   LOINHUANSTCHUAPP,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   VONGOP_CT,'
      '   THANGDUVCP_CT,'
      '   COPHIEUNGANQUI_CT,'
      '   CHENHLENHDGTS_CT,'
      '   CHENHLECHTGHD_CT,'
      '   QUIDAUTUPHATTRIEN_CT,'
      '   QUIDUPHONGTAICHINH_CT,'
      '   QUITHUOCVSH_CT,'
      '   LOINHUANSTCHUAPP_CT)'
      'VALUES ('
      '   :ID,'
      '   :KHOANMUC,'
      '   :VONGOP,'
      '   :THANGDUVCP,'
      '   :COPHIEUNGANQUI,'
      '   :CHENHLENHDGTS,'
      '   :CHENHLECHTGHD,'
      '   :QUIDAUTUPHATTRIEN,'
      '   :QUIDUPHONGTAICHINH,'
      '   :QUITHUOCVSH,'
      '   :LOINHUANSTCHUAPP,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :VONGOP_CT,'
      '   :THANGDUVCP_CT,'
      '   :COPHIEUNGANQUI_CT,'
      '   :CHENHLENHDGTS_CT,'
      '   :CHENHLECHTGHD_CT,'
      '   :QUIDAUTUPHATTRIEN_CT,'
      '   :QUIDUPHONGTAICHINH_CT,'
      '   :QUITHUOCVSH_CT,'
      '   :LOINHUANSTCHUAPP_CT)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryDoichieubiendongvonCSH_0AfterCancel
    BeforeDelete = qryDoichieubiendongvonCSH_0BeforeDelete
    AfterDelete = qryDoichieubiendongvonCSH_0AfterDelete
    AfterInsert = qryDoichieubiendongvonCSH_0AfterInsert
    BeforePost = qryDoichieubiendongvonCSH_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryDoichieubiendongvonCSH_0NewRecord
    OnPostError = qryDoichieubiendongvonCSH_0PostError
    OnDeleteError = qryDoichieubiendongvonCSH_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , KHOANMUC'
      '     , VONGOP'
      '     , THANGDUVCP'
      '     , COPHIEUNGANQUI'
      '     , CHENHLENHDGTS'
      '     , CHENHLECHTGHD'
      '     , QUIDAUTUPHATTRIEN'
      '     , QUIDUPHONGTAICHINH'
      '     , QUITHUOCVSH'
      '     , LOINHUANSTCHUAPP'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , VONGOP_CT'
      '     , THANGDUVCP_CT'
      '     , COPHIEUNGANQUI_CT'
      '     , CHENHLENHDGTS_CT'
      '     , CHENHLECHTGHD_CT'
      '     , QUIDAUTUPHATTRIEN_CT'
      '     , QUIDUPHONGTAICHINH_CT'
      '     , QUITHUOCVSH_CT'
      '     , LOINHUANSTCHUAPP_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC21_1'
      'order by ID')
    FieldOptions = []
    Left = 368
    Top = 156
    object qryDoichieubiendongvonCSH_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryDoichieubiendongvonCSH_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0VONGOP: TIBOFloatField
      FieldName = 'VONGOP'
    end
    object qryDoichieubiendongvonCSH_0THANGDUVCP: TIBOFloatField
      FieldName = 'THANGDUVCP'
    end
    object qryDoichieubiendongvonCSH_0COPHIEUNGANQUI: TIBOFloatField
      FieldName = 'COPHIEUNGANQUI'
    end
    object qryDoichieubiendongvonCSH_0CHENHLENHDGTS: TIBOFloatField
      FieldName = 'CHENHLENHDGTS'
    end
    object qryDoichieubiendongvonCSH_0CHENHLECHTGHD: TIBOFloatField
      FieldName = 'CHENHLECHTGHD'
    end
    object qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN: TIBOFloatField
      FieldName = 'QUIDAUTUPHATTRIEN'
    end
    object qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH: TIBOFloatField
      FieldName = 'QUIDUPHONGTAICHINH'
    end
    object qryDoichieubiendongvonCSH_0QUITHUOCVSH: TIBOFloatField
      FieldName = 'QUITHUOCVSH'
    end
    object qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP: TIBOFloatField
      FieldName = 'LOINHUANSTCHUAPP'
    end
    object qryDoichieubiendongvonCSH_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryDoichieubiendongvonCSH_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryDoichieubiendongvonCSH_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryDoichieubiendongvonCSH_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryDoichieubiendongvonCSH_0VONGOP_CT: TWideStringField
      FieldName = 'VONGOP_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0THANGDUVCP_CT: TWideStringField
      FieldName = 'THANGDUVCP_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0COPHIEUNGANQUI_CT: TWideStringField
      FieldName = 'COPHIEUNGANQUI_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0CHENHLENHDGTS_CT: TWideStringField
      FieldName = 'CHENHLENHDGTS_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0CHENHLECHTGHD_CT: TWideStringField
      FieldName = 'CHENHLECHTGHD_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0QUIDAUTUPHATTRIEN_CT: TWideStringField
      FieldName = 'QUIDAUTUPHATTRIEN_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0QUIDUPHONGTAICHINH_CT: TWideStringField
      FieldName = 'QUIDUPHONGTAICHINH_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0QUITHUOCVSH_CT: TWideStringField
      FieldName = 'QUITHUOCVSH_CT'
      Size = 126
    end
    object qryDoichieubiendongvonCSH_0LOINHUANSTCHUAPP_CT: TSmallintField
      FieldName = 'LOINHUANSTCHUAPP_CT'
    end
  end
  object qryChitietvondautuCSH_0: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC21_2'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC21_2 SET'
      '   ID = :ID, /*PK*/'
      '   TONGSO_NN = :TONGSO_NN,'
      '   VONCPTHUONG_NN = :VONCPTHUONG_NN,'
      '   VONCPUUDAI_NN = :VONCPUUDAI_NN,'
      '   KHOANMUC = :KHOANMUC,'
      '   TONGSO_NT = :TONGSO_NT,'
      '   VONCPTHUONG_NT = :VONCPTHUONG_NT,'
      '   VONCPUUDAI_NT = :VONCPUUDAI_NT,'
      '   MANHOM = :MANHOM,'
      '   MANHOMCHA = :MANHOMCHA,'
      '   NUTLA = :NUTLA,'
      '   ISBOLD = :ISBOLD,'
      '   TONGSO_NN_CT = :TONGSO_NN_CT,'
      '   VONCPTHUONG_NN_CT = :VONCPTHUONG_NN_CT,'
      '   VONCPUUDAI_NN_CT = :VONCPUUDAI_NN_CT,'
      '   VONCPUUDAI_NT_CT = :VONCPUUDAI_NT_CT,'
      '   VONCPTHUONG_NT_CT = :VONCPTHUONG_NT_CT,'
      '   TONGSO_NT_CT = :TONGSO_NT_CT'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_2('
      '   ID, /*PK*/'
      '   TONGSO_NN,'
      '   VONCPTHUONG_NN,'
      '   VONCPUUDAI_NN,'
      '   KHOANMUC,'
      '   TONGSO_NT,'
      '   VONCPTHUONG_NT,'
      '   VONCPUUDAI_NT,'
      '   MANHOM,'
      '   MANHOMCHA,'
      '   NUTLA,'
      '   ISBOLD,'
      '   TONGSO_NN_CT,'
      '   VONCPTHUONG_NN_CT,'
      '   VONCPUUDAI_NN_CT,'
      '   VONCPUUDAI_NT_CT,'
      '   VONCPTHUONG_NT_CT,'
      '   TONGSO_NT_CT)'
      'VALUES ('
      '   :ID,'
      '   :TONGSO_NN,'
      '   :VONCPTHUONG_NN,'
      '   :VONCPUUDAI_NN,'
      '   :KHOANMUC,'
      '   :TONGSO_NT,'
      '   :VONCPTHUONG_NT,'
      '   :VONCPUUDAI_NT,'
      '   :MANHOM,'
      '   :MANHOMCHA,'
      '   :NUTLA,'
      '   :ISBOLD,'
      '   :TONGSO_NN_CT,'
      '   :VONCPTHUONG_NN_CT,'
      '   :VONCPUUDAI_NN_CT,'
      '   :VONCPUUDAI_NT_CT,'
      '   :VONCPTHUONG_NT_CT,'
      '   :TONGSO_NT_CT)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryChitietvondautuCSH_0AfterCancel
    BeforeDelete = qryChitietvondautuCSH_0BeforeDelete
    AfterDelete = qryChitietvondautuCSH_0AfterDelete
    AfterInsert = qryChitietvondautuCSH_0AfterInsert
    BeforePost = qryChitietvondautuCSH_0BeforePost
    AfterPost = qryNoidungAfterPost
    OnNewRecord = qryChitietvondautuCSH_0NewRecord
    OnPostError = qryChitietvondautuCSH_0PostError
    OnDeleteError = qryChitietvondautuCSH_0DeleteError
    SQL.Strings = (
      'SELECT ID'
      '     , TONGSO_NN'
      '     , VONCPTHUONG_NN'
      '     , VONCPUUDAI_NN'
      '     , KHOANMUC'
      '     , TONGSO_NT'
      '     , VONCPTHUONG_NT'
      '     , VONCPUUDAI_NT'
      '     , MANHOM'
      '     , MANHOMCHA'
      '     , NUTLA'
      '     , ISBOLD'
      '     , TONGSO_NN_CT'
      '     , VONCPTHUONG_NN_CT'
      '     , VONCPUUDAI_NN_CT'
      '     , VONCPUUDAI_NT_CT'
      '     , VONCPTHUONG_NT_CT'
      '     , TONGSO_NT_CT'
      'FROM RPT_BANGTHUYETMINH_BCTC21_2'
      'order by ID')
    FieldOptions = []
    Left = 432
    Top = 156
    object qryChitietvondautuCSH_0ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryChitietvondautuCSH_0TONGSO_NN: TIBOFloatField
      FieldName = 'TONGSO_NN'
    end
    object qryChitietvondautuCSH_0VONCPTHUONG_NN: TIBOFloatField
      FieldName = 'VONCPTHUONG_NN'
    end
    object qryChitietvondautuCSH_0VONCPUUDAI_NN: TIBOFloatField
      FieldName = 'VONCPUUDAI_NN'
    end
    object qryChitietvondautuCSH_0KHOANMUC: TWideStringField
      FieldName = 'KHOANMUC'
      Size = 126
    end
    object qryChitietvondautuCSH_0TONGSO_NT: TIBOFloatField
      FieldName = 'TONGSO_NT'
    end
    object qryChitietvondautuCSH_0VONCPTHUONG_NT: TIBOFloatField
      FieldName = 'VONCPTHUONG_NT'
    end
    object qryChitietvondautuCSH_0VONCPUUDAI_NT: TIBOFloatField
      FieldName = 'VONCPUUDAI_NT'
    end
    object qryChitietvondautuCSH_0MANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
    object qryChitietvondautuCSH_0MANHOMCHA: TWideStringField
      FieldName = 'MANHOMCHA'
      Size = 30
    end
    object qryChitietvondautuCSH_0NUTLA: TSmallintField
      FieldName = 'NUTLA'
    end
    object qryChitietvondautuCSH_0ISBOLD: TSmallintField
      FieldName = 'ISBOLD'
    end
    object qryChitietvondautuCSH_0TONGSO_NN_CT: TWideStringField
      FieldName = 'TONGSO_NN_CT'
      Size = 126
    end
    object qryChitietvondautuCSH_0VONCPTHUONG_NN_CT: TWideStringField
      FieldName = 'VONCPTHUONG_NN_CT'
      Size = 126
    end
    object qryChitietvondautuCSH_0VONCPUUDAI_NN_CT: TWideStringField
      FieldName = 'VONCPUUDAI_NN_CT'
      Size = 126
    end
    object qryChitietvondautuCSH_0VONCPUUDAI_NT_CT: TWideStringField
      FieldName = 'VONCPUUDAI_NT_CT'
      Size = 126
    end
    object qryChitietvondautuCSH_0VONCPTHUONG_NT_CT: TWideStringField
      FieldName = 'VONCPTHUONG_NT_CT'
      Size = 126
    end
    object qryChitietvondautuCSH_0TONGSO_NT_CT: TWideStringField
      FieldName = 'TONGSO_NT_CT'
      Size = 126
    end
  end
  object dsTSCDHH_0: TDataSource
    DataSet = qryTSCDHH_0
    Left = 16
    Top = 184
  end
  object dplTSCDHH_0: TppDBPipeline
    DataSource = dsTSCDHH_0
    SkipWhenNoRecords = False
    UserName = 'dplTSCDHH_0'
    Left = 16
    Top = 212
  end
  object dplTSCDThuetaichinh_0: TppDBPipeline
    DataSource = dsTSCDThuetaichinh_0
    SkipWhenNoRecords = False
    UserName = 'dplTSCDThuetaichinh_0'
    Left = 88
    Top = 212
  end
  object dsTSCDThuetaichinh_0: TDataSource
    DataSet = qryTSCDThuetaichinh_0
    Left = 88
    Top = 184
  end
  object dsTSCDVH_0: TDataSource
    DataSet = qryTSCDVH_0
    Left = 160
    Top = 184
  end
  object dplTSCDVH_0: TppDBPipeline
    DataSource = dsTSCDVH_0
    SkipWhenNoRecords = False
    UserName = 'dplTSCDVH_0'
    Left = 160
    Top = 212
    object ppField39: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField43: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField47: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object ppField48: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppField49: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField50: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppField51: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppField52: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField53: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppField54: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object ppField55: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object dplTanggiamBDSDT_0: TppDBPipeline
    DataSource = dsTanggiamBDSDT_0
    SkipWhenNoRecords = False
    UserName = 'dplTanggiamBDSDT_0'
    Left = 232
    Top = 212
    object ppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField58: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object ppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField60: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppField61: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField62: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField65: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField66: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object ppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField68: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object ppField69: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppField70: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object ppField71: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object dsTanggiamBDSDT_0: TDataSource
    DataSet = qryTanggiamBDSDT_0
    Left = 232
    Top = 184
  end
  object dsCackhoannothuetaichinh_0: TDataSource
    DataSet = qryCackhoannothuetaichinh_0
    Left = 304
    Top = 184
  end
  object dplCackhoannothuetaichinh_0: TppDBPipeline
    DataSource = dsCackhoannothuetaichinh_0
    SkipWhenNoRecords = False
    UserName = 'dplCackhoannothuetaichinh_0'
    Left = 304
    Top = 212
  end
  object dplDoichieubiendongvonCSH_0: TppDBPipeline
    DataSource = dsDoichieubiendongvonCSH_0
    SkipWhenNoRecords = False
    UserName = 'dplDoichieubiendongvonCSH_0'
    Left = 368
    Top = 212
  end
  object dsDoichieubiendongvonCSH_0: TDataSource
    DataSet = qryDoichieubiendongvonCSH_0
    Left = 368
    Top = 184
  end
  object dsChitietvondautuCSH_0: TDataSource
    DataSet = qryChitietvondautuCSH_0
    Left = 432
    Top = 184
  end
  object dplChitietvondautuCSH_0: TppDBPipeline
    DataSource = dsChitietvondautuCSH_0
    SkipWhenNoRecords = False
    UserName = 'dplChitietvondautuCSH_0'
    Left = 432
    Top = 212
  end
  object qryUpdateEntryNum: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'iType'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNoidungkhacNewRecord
    SQL.Strings = (
      'execute procedure sp_update_entrynum(:iType,:iCur,:branch_id)')
    FieldOptions = []
    Left = 112
    Top = 100
    object SmallintField12: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object WideStringField45: TWideStringField
      FieldName = 'MANHOM'
      Size = 15
    end
    object WideStringField46: TWideStringField
      FieldName = 'TENTHUYETMINH'
      Size = 126
    end
    object WideStringField47: TWideStringField
      FieldName = 'MASO'
      Size = 30
    end
    object IBOFloatField34: TIBOFloatField
      FieldName = 'NAMNAY'
    end
    object IBOFloatField35: TIBOFloatField
      FieldName = 'NAMTRUOC'
    end
    object IBOFloatField36: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object WideStringField48: TWideStringField
      FieldName = 'GROUP_ID'
      Size = 15
    end
  end
  object IB_Script1: TIB_Script
    OnError = IB_Script1Error
    SQL.Strings = (
      '/* Generated by IBExpert 7/19/2006 1:47:02 PM*/'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC;'
      'commit work;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (68, NULL, '#39'1- Ti'#225#187#129'n v'#195#160' kho'#225#186#163'n t'#198#176#198#161'ng '#196#8216#198#176#198#161'ng' +
        ' ti'#225#187#129'n'#39', NULL, 54756, 7, NULL, '#39'2'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (69, '#39'TM611'#39', '#39'- Ti'#225#187#129'n m'#225#186#183't'#39', NULL, 643, 67, NUL' +
        'L, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (70, '#39'TM612'#39', '#39'- Ti'#225#187#129'n g'#225#187#173'i ng'#195#162'n h'#195#160'ng'#39', NULL, ' +
        '3463, 5, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (71, '#39'TM613'#39', '#39'- Ti'#225#187#129'n '#196#8216'ang chuy'#225#187#402'n'#39', NULL, 346' +
        '34, 7, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (72, '#39'TM614'#39', '#39'- C'#195#161'c kho'#225#186#163'n t'#198#176#198#161'ng '#196#8216#198#176#198#161'ng ti'#225 +
        #187#129'n'#39', NULL, 6346, 67, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (73, '#39'TM61'#39', '#39'                            C'#225#187#8482'ng'#39',' +
        ' NULL, 45086, 146, NULL, '#39'2'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (74, NULL, '#39'2- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i thu ng'#225#186#175'n h'#225#186#161 +
        'n'#39', NULL, 786, 76, NULL, '#39'2'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (75, '#39'TM621'#39', '#39'- Ph'#225#186#163'i thu kh'#195#161'ch h'#195#160'ng'#39', NULL, 3' +
        '46, 689, NULL, '#39'2'#39', NULL, 1, 0);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (76, '#39'TM622'#39', '#39'- Tr'#225#186#163' tr'#198#176#225#187#8250'c cho ng'#198#176#225#187#157'i b'#195#161'n'#39 +
        ', NULL, 346, 87, NULL, '#39'2'#39', 0, 1, 0);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (77, '#39'TM623'#39', '#39'- Ph'#225#186#163'i thu n'#225#187#8482'i b'#225#187#8482#39', NULL, 34,' +
        ' 6, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (78, '#39'TM624'#39', '#39'- Ph'#225#186#163'i thu theo ti'#225#186#191'n '#196#8216#225#187#8482' k'#225#186#191 +
        ' ho'#225#186#161'ch h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng'#39', NULL, 634, 7, NULL, '#39'2'#39', NU' +
        'LL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (79, NULL, '#39'- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i thu kh'#195#161'c:'#39', NUL' +
        'L, 89, 767, NULL, '#39'2'#39', NULL, 0, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (80, '#39'TM6251'#39', '#39'        + T'#225#186#161'm '#225#187#169'ng'#39', NULL, 436,' +
        ' 0, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (81, '#39'TM6252'#39', '#39'        + T'#195#160'i s'#225#186#163'n thi'#225#186#191'u ch'#225#187#157 +
        ' x'#225#187#173' l'#195#189#39', NULL, 346, 5, NULL, '#39'2'#39', NULL, 1, 0);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (82, '#39'TM6253'#39', '#39'        + K'#195#189' qu'#196#169', k'#195#189' c'#198#176#225#187#163'c ng' +
        #225#186#175'n h'#225#186#161'n'#39', NULL, 346, 67, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (83, '#39'TM6254'#39', '#39'        + Ph'#225#186#163'i thu kh'#195#161'c'#39', NULL,' +
        ' 34, 9, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (84, '#39'TM626'#39', '#39'- D'#225#187#177' ph'#195#178'ng ph'#225#186#163'i thu kh'#195#179' '#196#8216#195#178'i' +
        #39', NULL, 6346, 78, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (85, '#39'TM627'#39', '#39'- Gi'#195#161' tr'#225#187#8249' thu'#225#186#167'n c'#225#187#167'a ph'#225#186#163'i t' +
        'hu th'#198#176#198#161'ng m'#225#186#161'i v'#195#160' ph'#225#186#163'i thu kh'#195#161'c'#39', NULL, 34, 9, NULL, '#39'2'#39',' +
        ' NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (86, '#39'TM62'#39', '#39'                                    ' +
        '                 C'#225#187#8482'ng'#39', NULL, 8902, 957, NULL, '#39'2'#39', 1, NULL, N' +
        'ULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (88, NULL, '#39'3- H'#195#160'ng t'#225#187#8220'n kho'#39', NULL, 6, 68, NULL' +
        ', '#39'2'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (89, '#39'TM631'#39', '#39'- H'#195#160'ng mua '#196#8216'ang '#196#8216'i tr'#195#170'n '#196#8216#198#176#225#187#157 +
        'ng'#39', NULL, 346, 78, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (90, '#39'TM632'#39', '#39'- Nguy'#195#170'n li'#225#187#8225'u, v'#225#186#173't li'#225#187#8225'u'#39', NU' +
        'LL, 34, 56, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (91, '#39'TM633'#39', '#39'- C'#195#180'ng c'#225#187#165', d'#225#187#165'ng c'#225#187#165#39', NULL, 6' +
        ', 7, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (92, '#39'TM634'#39', '#39'- Chi ph'#195#173' SX, KD d'#225#187#376' dang'#39', NULL,' +
        ' 34, 5, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (93, '#39'TM635'#39', '#39'- Th'#195#160'nh ph'#225#186#169'm'#39', NULL, 6, 6, NULL,' +
        ' '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (94, '#39'TM636'#39', '#39'- H'#195#160'ng h'#195#179'a'#39', NULL, 34, 564, NULL,' +
        ' '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (95, '#39'TM637'#39', '#39'- H'#195#160'ng g'#225#187#173'i '#196#8216'i b'#195#161'n'#39', NULL, 6, 4' +
        '5, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (96, '#39'TM63'#39', '#39'                                    ' +
        '           C'#225#187#8482'ng gi'#195#161'  g'#225#187#8216'c h'#195#160'ng t'#225#187#8220'n kho'#39', NULL, 506, 833, ' +
        'NULL, '#39'2'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (97, '#39'TM639'#39', '#39'- D'#225#187#177' ph'#195#178'ng gi'#225#186#163'm gi'#195#161' h'#195#160'ng t'#225#187 +
        #8220'n kho'#39', NULL, 6, 65, NULL, '#39'2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (98, '#39'TM6310'#39', '#39'- Gi'#195#161' tr'#225#187#8249' thu'#225#186#167'n c'#195#179' th'#225#187#402' th'#225 +
        #187#177'c hi'#225#187#8225'n '#196#8216#198#176#225#187#163'c c'#225#187#167'a h'#195#160'ng t'#225#187#8220'n kho'#39', NULL, 34, 7, NULL, '#39 +
        '2'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (101, NULL, '#39'4- C'#195#161'c kho'#225#186#163'n thu'#225#186#191' ph'#225#186#163'i thu'#39', N' +
        'ULL, 436, 0, NULL, '#39'4'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (102, '#39'TM641'#39', '#39'         -Thu'#225#186#191' GTGT c'#195#178'n '#196#8216#198#176#225#187#163 +
        'c kh'#225#186#165'u tr'#225#187#171#39', NULL, 5, 89, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (103, '#39'TM642'#39', '#39'         - C'#195#161'c kho'#225#186#163'n thu'#225#186#191' n'#225#187 +
        #8482'p th'#225#187#171'a cho Nh'#195#160' N'#198#176#225#187#8250'c:'#39', NULL, 7, 0, NULL, '#39'4'#39', NULL, 1, NU' +
        'LL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (104, '#39'TM6421'#39', '#39'                 + Thu'#225#186#191' thu nh'#225 +
        #186#173'p doanh nghi'#225#187#8225'p'#39', NULL, 6, 908, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (105, '#39'TM6422'#39', '#39'                 + ..............' +
        '....................'#39', NULL, 87, 87, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (106, '#39'TM64'#39', '#39'                                C'#225#187 +
        #8482'ng'#39', NULL, 105, 1084, NULL, '#39'4'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (107, NULL, '#39'5- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i thu d'#195#160'i h'#225#186#161'n' +
        #39', NULL, 76, 6, NULL, '#39'4'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (108, '#39'TM651'#39', '#39'         - Ph'#225#186#163'i thu d'#195#160'i h'#225#186#161'n k' +
        'h'#195#161'ch h'#195#160'ng'#39', NULL, 59, 6578, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (109, NULL, '#39'         - Ph'#225#186#163'i thu n'#225#187#8482'i b'#225#187#8482' d'#195#160'i' +
        ' h'#225#186#161'n'#39', NULL, 76, 6, NULL, '#39'4'#39', NULL, 0, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (110, '#39'TM6521'#39', '#39'              + V'#225#187#8216'n kinh doanh ' +
        #225#187#376' c'#195#161'c '#196#8216#198#161'n v'#225#187#8249' tr'#225#187#177'c thu'#225#187#8482'c'#39', NULL, 9, 57, NULL, '#39'4'#39', NUL' +
        'L, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (111, '#39'TM6522'#39', '#39'              + Cho vay n'#225#187#8482'i b'#225#187 +
        #8482#39', NULL, 769, 7, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (112, '#39'TM6523'#39', '#39'              + Ph'#225#186#163'i thu n'#225#187#8482'i ' +
        'b'#225#187#8482' kh'#195#161'c'#39', NULL, 0, 56, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (113, '#39'TM653'#39', '#39'         - Ph'#225#186#163'i thu d'#195#160'i h'#225#186#161'n k' +
        'h'#195#161'c'#39', NULL, 5, 7, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (114, '#39'TM654'#39', '#39'         - D'#225#187#177' ph'#195#178'ng ph'#225#186#163'i thu ' +
        'd'#195#160'i h'#225#186#161'n kh'#195#179' '#196#8216#195#178'i'#39', NULL, 73, 56, NULL, '#39'4'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (115, '#39'TM655'#39', '#39'         - Gi'#195#161' tr'#225#187#8249' thu'#225#186#167'n c'#225#187#167 +
        'a c'#195#161'c kho'#225#186#163'n ph'#225#186#163'i thu d'#195#160'i h'#225#186#161'n'#39', NULL, 5, 567, NULL, '#39'4'#39', ' +
        'NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (116, '#39'TM65'#39', '#39'                                   ' +
        '                   C'#225#187#8482'ng'#39', NULL, 920, 7328, NULL, '#39'4'#39', 1, NULL,' +
        ' NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (125, NULL, '#39'9- Chi ph'#195#173' x'#195#162'y d'#225#187#177'ng c'#198#161' b'#225#186#163'n d'#225#187 +
        #376' dang:'#39', NULL, 4, 56, NULL, '#39'6'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (126, '#39'TM691'#39', '#39'    - Chi ph'#195#173' XDCB d'#225#187#376' dang'#39', NU' +
        'LL, 32, 77, NULL, '#39'6'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (127, NULL, '#39'    Trong '#196#8216#195#179': Nh'#225#187#175'ng c'#195#180'ng tr'#195#172'nh ' +
        'l'#225#187#8250'n:'#39', NULL, 5, 7, NULL, '#39'6'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (128, '#39'TM6921'#39', '#39'        + C'#195#180'ng tr'#195#172'nh'#39', NULL, 34' +
        '6, 0, NULL, '#39'6'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (129, '#39'TM6922'#39', '#39'        + C'#195#180'ng tr'#195#172'nh'#39', NULL, 45' +
        ', 0, NULL, '#39'6'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (130, '#39'TM6923'#39', '#39'        + .......................' +
        '............'#39', NULL, 756, 0, NULL, '#39'6'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (134, NULL, '#39'11- C'#195#161'c kho'#225#186#163'n '#196#8216#225#186#167'u t'#198#176' t'#195#160'i ch'#195#173 +
        'nh ng'#225#186#175'n h'#225#186#161'n, d'#195#160'i h'#225#186#161'n:'#39', NULL, 8, 8, NULL, '#39'7'#39', NULL, NULL' +
        ', NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (135, NULL, '#39'11.1- '#196#144#225#186#167'u t'#198#176' t'#195#160'i ch'#195#173'nh ng'#225#186#175'n h' +
        #225#186#161'n:'#39', NULL, 76, 5, NULL, '#39'7'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (136, '#39'TM6B11'#39', '#39'- '#196#144#225#186#167'u t'#198#176' ng'#225#186#175'n h'#225#186#161'n kh'#195#161'c'#39',' +
        ' NULL, 9, 7, NULL, '#39'7'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (137, '#39'TM6B12'#39', '#39'- Gi'#195#161' tr'#225#187#8249' thu'#225#186#167'n c'#225#187#167'a '#196#8216#225#186#167'u' +
        ' t'#198#176' t'#195#160'i ch'#195#173'nh ng'#225#186#175'n h'#225#186#161'n'#39', NULL, 780, 5, NULL, '#39'7'#39', NULL, 1' +
        ', NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (138, NULL, '#39'11.2- '#196#144#225#186#167'u t'#198#176' t'#195#160'i ch'#195#173'nh d'#195#160'i h'#225#186 +
        #161'n:'#39', NULL, 9, 65, NULL, '#39'7'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (139, '#39'TM6B21'#39', '#39'- '#196#144#225#186#167'u t'#198#176' v'#195#160'o c'#195#180'ng ty con'#39', ' +
        'NULL, 780, 235, NULL, '#39'7'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (140, '#39'TM6B21'#39', '#39'- '#196#144#225#186#167'u t'#198#176' v'#195#160'o c'#195#180'ng ty li'#195#170'n ' +
        'k'#225#186#191't'#39', NULL, 6, 5, NULL, '#39'7'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (141, '#39'TM6B23'#39', '#39'- '#196#144#225#186#167'u t'#198#176' v'#195#160'o c'#198#161' s'#225#187#376' kinh d' +
        'oanh '#196#8216#225#187#8220'ng ki'#225#187#402'm so'#195#161't'#39', NULL, 86, 34, NULL, '#39'7'#39', NULL, 1, NU' +
        'LL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (142, NULL, '#39'- '#196#144#225#186#167'u t'#198#176' d'#195#160'i h'#225#186#161'n kh'#195#161'c:'#39', NULL' +
        ', 4, 6, NULL, '#39'7'#39', NULL, 0, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (143, '#39'TM6B241'#39', '#39'       + '#196#144#225#186#167'u t'#198#176' ch'#225#187#169'ng kho'#195 +
        #161'n d'#195#160'i h'#225#186#161'n'#39', NULL, 73, 45, NULL, '#39'7'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (144, '#39'TM6B242'#39', '#39'       + Cho vay d'#195#160'i h'#225#186#161'n'#39', NU' +
        'LL, 0, 6, NULL, '#39'7'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (145, '#39'TM6B243'#39', '#39'       + '#196#144#225#186#167'u t'#198#176' d'#195#160'i h'#225#186#161'n k' +
        'h'#195#161'c'#39', NULL, 64, 4, NULL, '#39'7'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (146, '#39'TM6B25'#39', '#39'- D'#225#187#177' ph'#195#178'ng gi'#225#186#163'm gi'#195#161' ch'#225#187#169'ng' +
        ' kho'#195#161'n '#196#8216#225#186#167'u t'#198#176' d'#195#160'i h'#225#186#161'n'#39', NULL, 43, 7, NULL, '#39'7'#39', NULL, 1,' +
        ' NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (147, '#39'TM6B26'#39', '#39'- Gi'#195#161' tr'#225#187#8249' thu'#225#186#167'n c'#225#187#167'a '#196#8216#225#186#167'u' +
        ' t'#198#176' t'#195#160'i ch'#195#173'nh d'#195#160'i h'#225#186#161'n'#39', NULL, 6, 5, NULL, '#39'7'#39', NULL, 1, NU' +
        'LL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (148, '#39'TM6B'#39', '#39'                                   ' +
        '      C'#225#187#8482'ng'#39', NULL, 1847, 353, NULL, '#39'7'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (150, NULL, '#39'12- Chi ph'#195#173' tr'#225#186#163' tr'#198#176#225#187#8250'c d'#195#160'i h'#225#186#161 +
        'n'#39', NULL, 7, 7, NULL, '#39'9'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (151, '#39'TM6C1'#39', '#39'- S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm'#39', NULL, 568' +
        ', 789, NULL, '#39'9'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (152, '#39'TM6C2'#39', '#39'- T'#196#402'ng trong n'#196#402'm'#39', NULL, 76, 9, ' +
        'NULL, '#39'9'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (153, '#39'TM6C3'#39', '#39'- '#196#144#195#163' k'#225#186#191't chuy'#225#187#402'n v'#195#160'o chi ph'#195 +
        #173' SXKD trong n'#196#402'm'#39', NULL, 9, 78, NULL, '#39'9'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (154, '#39'TM6C4'#39', '#39'- Gi'#225#186#163'm kh'#195#161'c'#39', NULL, 76, 9, NULL' +
        ', '#39'9'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (155, '#39'TM6C5'#39', '#39'- S'#225#187#8216' d'#198#176' cu'#225#187#8216'i n'#196#402'm'#39', NULL, 978' +
        ', 76, NULL, '#39'9'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (158, NULL, '#39'14- C'#195#161'c kho'#225#186#163'n vay v'#195#160' n'#225#187#163' ng'#225#186#175'n ' +
        'h'#225#186#161'n'#39', NULL, 9, 68, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (159, '#39'TM6D1'#39', '#39'- Vay ng'#225#186#175'n h'#225#186#161'n'#39', NULL, 5, 7, N' +
        'ULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (160, '#39'TM6D2'#39', '#39'- Vay d'#195#160'i h'#225#186#161'n '#196#8216#225#186#191'n h'#225#186#161'n tr'#225#186 +
        #163#39', NULL, 7, 5, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (161, '#39'TM6D3'#39', '#39'- N'#225#187#163' thu'#195#170' t'#195#160'i ch'#195#173'nh '#196#8216#225#186#191'n h'#225 +
        #186#161'n tr'#225#186#163#39', NULL, 65, 46, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (162, '#39'TM6D4'#39', '#39'- Tr'#195#161'i phi'#225#186#191'u ph'#195#161't h'#195#160'nh '#196#8216#225#186#191'n' +
        ' h'#225#186#161'n tr'#225#186#163#39', NULL, 7, 45, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (163, '#39'TM6D'#39', '#39'                                   ' +
        ' C'#225#187#8482'ng'#39', NULL, 84, 103, NULL, '#39'11'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (164, NULL, '#39'15- Ph'#225#186#163'i tr'#225#186#163' ng'#198#176#225#187#157'i b'#195#161'n v'#195#160' ng' +
        #198#176#225#187#157'i mua tr'#225#186#163' ti'#225#187#129'n tr'#198#176#225#187#8250'c'#39', NULL, 6, 56, NULL, '#39'11'#39', NULL' +
        ', 0, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (165, '#39'TM6E1'#39', '#39'- Ph'#225#186#163'i tr'#225#186#163' ng'#198#176#225#187#157'i b'#195#161'n'#39', NUL' +
        'L, 457, 34, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (166, '#39'TM6E2'#39', '#39'- Ng'#198#176#225#187#157'i mua tr'#225#186#163' ti'#225#187#129'n tr'#198#176#225#187 +
        #8250'c'#39', NULL, 6, 6, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (167, '#39'TM6E'#39', '#39'                                   ' +
        'C'#225#187#8482'ng'#39', NULL, 463, 40, NULL, '#39'11'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (168, NULL, '#39'16- Thu'#225#186#191' ph'#225#186#163'i n'#225#187#8482'p Nh'#195#160' n'#198#176#225#187#8250'c'#39 +
        ', NULL, 769, 6, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (169, NULL, '#39'16.1- Thu'#225#186#191' ph'#225#186#163'i n'#225#187#8482'p Nh'#195#160' n'#198#176#225#187#8250 +
        'c'#39', NULL, 8, 54, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (170, '#39'TM6F11'#39', '#39'- Thu'#225#186#191' GTGT'#39', NULL, 0, 46, NULL' +
        ', '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (171, '#39'TM6F12'#39', '#39'- Thu'#225#186#191' Ti'#195#170'u th'#225#187#165' '#196#8216#225#186#183'c bi'#225#187#8225 +
        't'#39', NULL, 89, 7, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (172, '#39'TM6F13'#39', '#39'- Thu'#225#186#191' xu'#225#186#165't, nh'#225#186#173'p kh'#225#186#169'u'#39', ' +
        'NULL, 7, 56, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (173, '#39'TM6F14'#39', '#39'- Thu'#225#186#191' TNDN'#39', NULL, 9, 9, NULL,' +
        ' '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (174, '#39'TM6F15'#39', '#39'- Thu'#225#186#191' t'#195#160'i nguy'#195#170'n'#39', NULL, 65,' +
        ' 78, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (175, '#39'TM6F16'#39', '#39'- Thu'#225#186#191' nh'#195#160' '#196#8216#225#186#165't'#39', NULL, 7, 9' +
        ', NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (176, '#39'TM6F17'#39', '#39'- Ti'#225#187#129'n thu'#195#170' '#196#8216#225#186#165't'#39', NULL, 6, ' +
        '87, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (177, '#39'TM6F18'#39', '#39'- C'#195#161'c lo'#225#186#161'i thu'#225#186#191' kh'#195#161'c'#39', NULL' +
        ', 6, 76, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (178, NULL, '#39'16.2- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i n'#225#187#8482'p kh'#195#161'c' +
        #39', NULL, 3, 8, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (179, '#39'TM6F21'#39', '#39'- C'#195#161'c kho'#225#186#163'n ph'#195#173', l'#225#187#8225' ph'#195#173#39', ' +
        'NULL, 46, 56, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (180, '#39'TM6F22'#39', '#39'- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i n'#225#187#8482'p kh'#195#161'c' +
        #39', NULL, 54, 567, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (181, '#39'TM6F'#39', '#39'                                 C'#225 +
        #187#8482'ng'#39', NULL, 289, 991, NULL, '#39'11'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (182, NULL, '#39'17- Chi ph'#195#173' ph'#225#186#163'i tr'#225#186#163#39', NULL, 65,' +
        ' 56, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (183, '#39'TM6I1'#39', '#39'- Chi ph'#195#173' ph'#225#186#163'i tr'#225#186#163#39', NULL, 8,' +
        ' 67, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (184, '#39'TM6I2'#39', '#39'- Qu'#196#169' d'#225#187#177' ph'#195#178'ng tr'#225#187#163' c'#225#186#165'p m'#225#186 +
        #165't vi'#225#187#8225'c l'#195#160'm'#39', NULL, 76, 5, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (185, '#39'TM6I'#39', '#39'                                   ' +
        '  C'#225#187#8482'ng'#39', NULL, 84, 72, NULL, '#39'11'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (186, NULL, '#39'18- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i tr'#225#186#163', ph'#225#186#163'i' +
        ' n'#225#187#8482'p kh'#195#161'c'#39', NULL, 870, 7657, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (187, '#39'TM6J1'#39', '#39'- T'#195#160'i s'#225#186#163'n th'#225#187#171'a ch'#225#187#157' x'#225#187#173' l'#195#189 +
        #39', NULL, 98, 0, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (188, '#39'TM6J2'#39', '#39'- B'#225#186#163'o hi'#225#187#402'm y t'#225#186#191#39', NULL, 0, 8' +
        ', NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (189, '#39'TM6J3'#39', '#39'- B'#225#186#163'o hi'#225#187#402'm x'#195#163' h'#225#187#8482'i'#39', NULL, 6' +
        ', 9, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (190, '#39'TM6J4'#39', '#39'- Kinh ph'#195#173' c'#195#180'ng '#196#8216'o'#195#160'n'#39', NULL, 8' +
        '9, 87, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (191, '#39'TM6J5'#39', '#39'- Doanh thu ch'#198#176'a th'#225#187#177'c hi'#225#187#8225'n'#39', ' +
        'NULL, 5, 6, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (192, '#39'TM6J6'#39', '#39'- Qu'#196#169' qu'#225#186#163'n l'#195#189' c'#225#187#167'a c'#225#186#165'p tr'#195#170 +
        'n'#39', NULL, 7, 7, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (193, '#39'TM6J7'#39', '#39'- C'#225#187#8226' t'#225#187#169'c ph'#225#186#163'i tr'#225#186#163#39', NULL, ' +
        '5, 65, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (194, '#39'TM6J8'#39', '#39'- C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i tr'#225#186#163', ph'#225#186#163 +
        'i n'#225#187#8482'p kh'#195#161'c'#39', NULL, 745, 4, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (195, '#39'TM6J'#39', '#39'                                   ' +
        '       C'#225#187#8482'ng'#39', NULL, 955, 186, NULL, '#39'11'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (196, NULL, '#39'19- Ph'#225#186#163'i tr'#225#186#163' d'#195#160'i h'#225#186#161'n n'#225#187#8482'i b'#225#187 +
        #8482#39', NULL, 3, 5, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (197, '#39'TM6K1'#39', '#39'- Ph'#225#186#163'i tr'#225#186#163' d'#195#160'i h'#225#186#161'n n'#225#187#8482'i b'#225 +
        #187#8482' v'#225#187#129' c'#225#186#165'p v'#225#187#8216'n'#39', NULL, 56, 7, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (198, '#39'TM6K2'#39', '#39'- Vay d'#195#160'i h'#225#186#161'n n'#225#187#8482'i b'#225#187#8482#39', NULL' +
        ', 5, 6, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (199, '#39'TM6K3'#39', '#39'- Ph'#225#186#163'i tr'#225#186#163' d'#195#160'i h'#225#186#161'n n'#225#187#8482'i b'#225 +
        #187#8482' kh'#195#161'c'#39', NULL, 76, 778, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (200, '#39'TM6K'#39', '#39'                                   ' +
        '    C'#225#187#8482'ng'#39', NULL, 137, 791, NULL, '#39'11'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (201, NULL, '#39'20- C'#195#161'c kho'#225#186#163'n vay v'#195#160' n'#225#187#163' d'#195#160'i h'#225 +
        #186#161'n'#39', NULL, 89, 78, NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (202, NULL, '#39'20.1- Vay d'#195#160'i h'#225#186#161'n'#39', NULL, 79, 6, N' +
        'ULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (203, '#39'TM6L11'#39', '#39'- Vay ng'#195#162'n h'#195#160'ng'#39', NULL, 87, 678' +
        '9, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (204, '#39'TM6L12'#39', '#39'- Vay '#196#8216#225#187#8216'i t'#198#176#225#187#163'ng kh'#195#161'c'#39', NUL' +
        'L, 0, 90, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (205, NULL, '#39'20.2- N'#225#187#163' d'#195#160'i h'#225#186#161'n'#39', NULL, 987, 87' +
        ', NULL, '#39'11'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (206, '#39'TM6L21'#39', '#39'- Thu'#195#170' t'#195#160'i ch'#195#173'nh'#39', NULL, 905, ' +
        '9, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (207, '#39'TM6L22'#39', '#39'- Tr'#195#161'i phi'#225#186#191'u ph'#195#161't h'#195#160'nh'#39', NUL' +
        'L, 78, 7, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (208, '#39'TM6L23'#39', '#39'- N'#225#187#163' d'#195#160'i h'#225#186#161'n kh'#195#161'c'#39', NULL, 6' +
        '5, 68, NULL, '#39'11'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (216, NULL, '#39'21.3- C'#195#161'c giao d'#225#187#8249'ch v'#225#187#129' v'#225#187#8216'n v'#225#187 +
        #8250'i c'#195#161'c ch'#225#187#167' s'#225#187#376' h'#225#187#175'u v'#195#160' ph'#195#162'n ph'#225#187#8216'i c'#225#187#8226' t'#225#187#169'c, l'#225#187#163'i nhu'#225 +
        #186#173'n'#39', NULL, 78, 7, NULL, '#39'14'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (217, NULL, '#39'     - V'#225#187#8216'n '#196#8216#225#186#167'u t'#198#176' c'#225#187#167'a ch'#225#187#167' s' +
        #225#187#376' h'#225#187#175'u'#39', NULL, 6768, 5, NULL, '#39'14'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (218, '#39'TM6M32'#39', '#39'         + V'#225#187#8216'n g'#195#179'p '#196#8216#225#186#167'u n'#196#402'm' +
        #39', NULL, 789, 6, NULL, '#39'14'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (219, '#39'TM6M33'#39', '#39'         + V'#225#187#8216'n g'#195#179'p t'#196#402'ng trong' +
        ' n'#196#402'm'#39', NULL, 7, 4, NULL, '#39'14'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (220, '#39'TM6M34'#39', '#39'         + V'#225#187#8216'n g'#195#179'p gi'#225#186#163'm tron' +
        'g n'#196#402'm'#39', NULL, 97, 7, NULL, '#39'14'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (221, '#39'TM6M35'#39', '#39'         + V'#225#187#8216'n g'#195#179'p cu'#225#187#8216'i n'#196#402'm' +
        #39', NULL, 89, 5, NULL, '#39'14'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (222, '#39'TM6M36'#39', '#39'     - C'#225#187#8226' t'#225#187#169'c, l'#225#187#163'i nhu'#225#186#173'n ' +
        #196#8216#195#163' chia'#39', NULL, 6, 78, NULL, '#39'14'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (228, NULL, '#39'21.5- C'#225#187#8226' phi'#225#186#191'u'#39', NULL, 75, 786, N' +
        'ULL, '#39'16'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (229, '#39'TM6M51'#39', '#39'    - S'#225#187#8216' l'#198#176#225#187#163'ng c'#225#187#8226' phi'#225#186#191'u ' +
        #196#8216#198#176#225#187#163'c ph'#195#169'p ph'#195#161't h'#195#160'nh'#39', NULL, 56, 56, NULL, '#39'16'#39', NULL, 1, ' +
        'NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (230, NULL, '#39'    - S'#225#187#8216' l'#198#176#225#187#163'ng c'#225#187#8226' phi'#225#186#191'u '#196#8216#195#163 +
        ' '#196#8216#198#176#225#187#163'c ph'#195#161't h'#195#160'nh v'#195#160' g'#195#179'p v'#225#187#8216'n  '#196#8216#225#186#167'y '#196#8216#225#187#167#39', NULL, 7, 8,' +
        ' NULL, '#39'16'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (231, '#39'TM6M521'#39', '#39'         + C'#225#187#8226' phi'#225#186#191'u th'#198#176#225#187#157'n' +
        'g'#39', NULL, 56, 56, NULL, '#39'16'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (232, '#39'TM6M522'#39', '#39'         + C'#225#187#8226' phi'#225#186#191'u '#198#176'u '#196#8216#195#163 +
        'i'#39', NULL, 7, 9, NULL, '#39'16'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (233, NULL, '#39'    - S'#225#187#8216' l'#198#176#225#187#163'ng c'#225#187#8226' phi'#225#186#191'u '#196#8216#198#176 +
        #225#187#163'c mua l'#225#186#161'i'#39', NULL, 56, 76, NULL, '#39'16'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (234, '#39'TM6M531'#39', '#39'         + C'#225#187#8226' phi'#225#186#191'u th'#198#176#225#187#157'n' +
        'g'#39', NULL, 75, 678, NULL, '#39'16'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (235, '#39'TM6M532'#39', '#39'         + C'#225#187#8226' phi'#225#186#191'u '#198#176'u '#196#8216#195#163 +
        'i'#39', NULL, 786, 68, NULL, '#39'16'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (236, NULL, '#39'    - S'#225#187#8216' l'#198#176#225#187#163'ng c'#225#187#8226' phi'#225#186#191'u '#196#8216'an' +
        'g l'#198#176'u h'#195#160'nh'#39', NULL, 8, 5, NULL, '#39'16'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (237, '#39'TM6M541'#39', '#39'         + C'#225#187#8226' phi'#225#186#191'u th'#198#176#225#187#157'n' +
        'g'#39', NULL, 7, 57, NULL, '#39'16'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (238, '#39'TM6M542'#39', '#39'         + C'#225#187#8226' phi'#225#186#191'u '#198#176'u '#196#8216#195#163 +
        'i'#39', NULL, 97, 76, NULL, '#39'16'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (244, NULL, '#39'22- Ngu'#225#187#8220'n kinh ph'#195#173#39', NULL, 89, 56,' +
        ' NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (245, '#39'TM6P1'#39', '#39'    - Ngu'#225#187#8220'n kinh ph'#195#173' '#196#8216#198#176#225#187#163'c c' +
        #225#186#165'p trong n'#196#402'm'#39', NULL, 56, 7, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (246, '#39'TM6P2'#39', '#39'    - Chi s'#225#187#177' nghi'#225#187#8225'p'#39', NULL, 0,' +
        ' 75, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (247, '#39'TM6P3'#39', '#39'    - Ngu'#225#187#8220'n kinh ph'#195#173' c'#195#178'n l'#225#186#161'i' +
        ' cu'#225#187#8216'i k'#225#187#179#39', NULL, 0, 56, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (248, NULL, '#39'23- T'#195#160'i s'#225#186#163'n thu'#195#170' ngo'#195#160'i'#39', NULL, 7' +
        '6, 4, NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (249, NULL, '#39'23.1- Gi'#195#161' tr'#225#187#8249' t'#195#160'i s'#225#186#163'n thu'#195#170' ngo' +
        #195#160'i'#39', NULL, 7, 456, NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (250, '#39'TM6Q311'#39', '#39'   - TSC'#196#144' thu'#195#170' ngo'#195#160'i'#39', NULL, ' +
        '4, 7, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (251, '#39'TM6Q312'#39', '#39'   - T'#195#160'i s'#225#186#163'n kh'#195#161'c thu'#195#170' ngo'#195 +
        #160'i'#39', NULL, 76, 56, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (252, NULL, '#39'23.2- T'#225#187#8226'ng s'#225#187#8216' ti'#225#187#129'n thu'#195#170' t'#225#187#8216'i ' +
        'thi'#225#187#402'u trong t'#198#176#198#161'ng lai c'#225#187#167'a H'#225#187#163'p '#196#8216#225#187#8220'ng thu'#195#170' ho'#225#186#161't '#196#8216#225#187#8482 +
        'ng TSC'#196#144' kh'#195#180'ng h'#225#187#167'y nga'#39', NULL, 587, 8, NULL, '#39'18'#39', NULL, NULL' +
        ', NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (253, '#39'TM6Q321'#39', '#39'    - '#196#144#225#186#191'n 1 n'#196#402'm'#39', NULL, 6, 7' +
        '6, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (254, '#39'TM6Q322'#39', '#39'    - Tr'#195#170'n 1-5 n'#196#402'm'#39', NULL, 876' +
        ', 9, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (255, '#39'TM6Q323'#39', '#39'    - Tr'#195#170'n 5 n'#196#402'm'#39', NULL, 9, 87' +
        ', NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (256, NULL, '#39'24- Doanh thu'#39', NULL, 78, 769, NULL, ' +
        #39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (257, NULL, '#39'24.1- Doanh thu b'#195#161'n h'#195#160'ng v'#195#160' cung c' +
        #225#186#165'p d'#225#187#8249'ch v'#225#187#165#39', NULL, 9, 8, NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (258, NULL, '#39'    - T'#225#187#8226'ng doanh thu'#39', NULL, 78, 56' +
        ', NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (259, '#39'TM6R111'#39', '#39'         + Doanh thu b'#195#161'n h'#195#160'ng'#39 +
        ', NULL, 0, 7, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (260, '#39'TM6R112'#39', '#39'         + Doanh thu cung c'#225#186#165'p ' +
        'd'#225#187#8249'ch v'#225#187#165#39', NULL, 78, 56, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (261, NULL, '#39'    - C'#195#161'c kho'#225#186#163'n gi'#225#186#163'm tr'#225#187#171' doanh' +
        ' thu'#39', NULL, 6, 456, NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (262, '#39'TM6R121'#39', '#39'         + Chi'#225#186#191't kh'#225#186#165'u th'#198#176#198#161 +
        'ng m'#225#186#161'i'#39', NULL, 8, 6, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (263, '#39'TM6R22'#39', '#39'         + Gi'#225#186#163'm gi'#195#161' h'#195#160'ng b'#195#161'n' +
        #39', NULL, 76, 654, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (264, '#39'TM6R23'#39', '#39'         + H'#195#160'ng b'#195#161'n b'#225#187#8249' tr'#225#186#163' ' +
        'l'#225#186#161'i'#39', NULL, 8, 4, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (265, '#39'TM6R24'#39', '#39'         + Thu'#225#186#191' GTGT ph'#225#186#163'i n'#225#187 +
        #8482'p (PP tr'#225#187#177'c ti'#225#186#191'p)'#39', NULL, 769, 7, NULL, '#39'18'#39', NULL, 1, NULL)' +
        ';'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (266, '#39'TM6R25'#39', '#39'         + Thu'#225#186#191' ti'#195#170'u th'#225#187#165' '#196#8216#225 +
        #186#183'c bi'#225#187#8225't'#39', NULL, 7, 5, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (267, '#39'TM6R26'#39', '#39'         + Thu'#225#186#191' xu'#225#186#165't kh'#225#186#169'u'#39',' +
        ' NULL, 89, 0, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (268, '#39'TM6R13'#39', '#39'    - Doanh thu thu'#225#186#167'n'#39', NULL, 7' +
        ', -7, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (269, NULL, '#39'Trong '#196#8216#195#179':'#39', NULL, 8, 98, NULL, '#39'18'#39 +
        ', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (270, '#39'TM6R141'#39', '#39'         + Doanh thu thu'#225#186#167'n tra' +
        'o '#196#8216#225#187#8226'i h'#195#160'ng h'#195#179'a'#39', NULL, 8, 870, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (271, '#39'TM6R142'#39', '#39'         + Doanh thu thu'#225#186#167'n tra' +
        'o '#196#8216#225#187#8226'i d'#225#187#8249'ch v'#225#187#165#39', NULL, 56, 9, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (272, NULL, '#39'24.2- Doanh thu ho'#225#186#161't '#196#8216#225#187#8482'ng t'#195#160'i c' +
        'h'#195#173'nh'#39', NULL, 7, 87, NULL, '#39'18'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (273, '#39'TM6R21'#39', '#39'   - L'#195#163'i ti'#225#187#129'n g'#225#187#173'i, ti'#225#187#129'n ch' +
        'o vay'#39', NULL, 5, 6, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (274, '#39'TM6R22'#39', '#39'   - L'#195#163'i '#196#8216#225#186#167'u t'#198#176' tr'#195#161'i phi'#225#186#191 +
        'u, k'#225#187#179' phi'#225#186#191'u, t'#195#173'n phi'#225#186#191'u'#39', NULL, 8, 8, NULL, '#39'18'#39', NULL, 1,' +
        ' NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (275, '#39'TM6R23'#39', '#39'   - C'#225#187#8226' t'#225#187#169'c, l'#225#187#163'i nhu'#225#186#173'n '#196#8216 +
        #198#176#225#187#163'c chia'#39', NULL, 768, 6, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (276, '#39'TM6R24'#39', '#39'   - L'#195#163'i b'#195#161'n ngo'#225#186#161'i t'#225#187#8225#39', NUL' +
        'L, 67, 768, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (277, '#39'TM6R25'#39', '#39'   - L'#195#163'i, l'#225#187#8212' ch'#195#170'nh l'#225#187#8225'ch t'#225#187 +
        #183' gi'#195#161#39', NULL, 8, 8, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (278, '#39'TM6R26'#39', '#39'   - L'#195#163'i b'#195#161'n h'#195#160'ng tr'#225#186#163' ch'#225#186#173'm' +
        #39', NULL, 67, 67, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (279, '#39'TM6R27'#39', '#39'   - Doanh thu ho'#225#186#161't '#196#8216#225#187#8482'ng t'#195#160 +
        'i ch'#195#173'nh kh'#195#161'c'#39', NULL, 8, 8, NULL, '#39'18'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (285, NULL, '#39'25- Gi'#195#161' v'#225#187#8216'n h'#195#160'ng b'#195#161'n'#39', NULL, 67,' +
        ' 86, NULL, '#39'20'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (286, '#39'TM6S1'#39', '#39'    - Gi'#195#161' v'#225#187#8216'n c'#225#187#167'a th'#195#160'nh ph'#225#186 +
        #169'm '#196#8216#195#163' cung c'#225#186#165'p'#39', NULL, 5, 6, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (287, '#39'TM6S2'#39', '#39'    - Gi'#195#161' v'#225#187#8216'n c'#225#187#167'a h'#195#160'ng h'#195#179'a ' +
        #196#8216#195#163' cung c'#225#186#165'p'#39', NULL, 0, 8, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (288, '#39'TM6S3'#39', '#39'    - Gi'#195#161' v'#225#187#8216'n c'#225#187#167'a d'#225#187#8249'ch v'#225#187#165 +
        ' '#196#8216#195#163' cung c'#225#186#165'p'#39', NULL, 65, 6, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (289, '#39'TM6S'#39', '#39'                                   ' +
        '     C'#225#187#8482'ng'#39', NULL, 70, 20, NULL, '#39'20'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (290, NULL, '#39'26- Chi ph'#195#173' t'#195#160'i ch'#195#173'nh'#39', NULL, 78, ' +
        '6, NULL, '#39'20'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (291, '#39'TM6T1'#39', '#39'- Chi ph'#195#173' ho'#225#186#161't '#196#8216#225#187#8482'ng t'#195#160'i ch'#195 +
        #173'nh'#39', NULL, 6, 769, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (292, '#39'TM6T2'#39', '#39'- L'#225#187#8212' do thanh l'#195#189' c'#195#161'c kho'#225#186#163'n '#196 +
        #8216#225#186#167'u t'#198#176' ng'#225#186#175'n h'#225#186#161'n'#39', NULL, 8, 8, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (293, '#39'TM6T3'#39', '#39'- L'#225#187#8212' ph'#195#161't sinh khi b'#195#161'n ngo'#225#186#161'i' +
        ' t'#225#187#8225#39', NULL, 6, 67, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (294, '#39'TM6T'#39', '#39'                                   ' +
        '    C'#225#187#8482'ng'#39', NULL, 20, 844, NULL, '#39'20'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (295, NULL, '#39'27- Chi ph'#195#173' s'#225#186#163'n xu'#225#186#165't kinh doanh ' +
        'theo y'#225#186#191'u t'#225#187#8216#39', NULL, 7, 67, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (296, '#39'TM6U1'#39', '#39'27.1- Chi ph'#195#173' nguy'#195#170'n li'#225#187#8225'u, v'#225#186 +
        #173't li'#225#187#8225'u'#39', NULL, 5, 768, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (297, '#39'TM6U2'#39', '#39'27.2- Chi ph'#195#173' nh'#195#162'n c'#195#180'ng'#39', NULL,' +
        ' 4, 8, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (298, '#39'TM6U3'#39', '#39'27.3- Chi ph'#195#173' kh'#225#186#165'u hao t'#195#160'i s'#225#186 +
        #163'n c'#225#187#8216' '#196#8216#225#187#8249'nh'#39', NULL, 76, 6, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (299, '#39'TM6U4'#39', '#39'27.4- Chi ph'#195#173' d'#225#187#8249'ch v'#225#187#165' mua ngo' +
        #195#160'i'#39', NULL, 78, 8, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (300, '#39'TM6U5'#39', '#39'27.5- Chi ph'#195#173' kh'#195#161'c b'#225#186#177'ng ti'#225#187#129'n' +
        #39', NULL, 76, 865, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (301, '#39'TM6U'#39', '#39'                                   ' +
        '  C'#225#187#8482'ng'#39', NULL, 239, 1655, NULL, '#39'20'#39', 1, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (302, NULL, '#39'28- Thu'#225#186#191' thu nh'#225#186#173'p doanh nghi'#225#187#8225'p ' +
        'ph'#225#186#163'i n'#225#187#8482'p v'#195#160' l'#225#187#163'i nhu'#225#186#173'n sau thu'#225#186#191' trong k'#225#187#179#39', NULL, 69,' +
        ' 8, NULL, '#39'20'#39', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (303, '#39'TM6Y1'#39', '#39'    - T'#225#187#8226'ng l'#225#187#163'i nhu'#225#186#173'n k'#225#186#191' to' +
        #195#161'n tr'#198#176#225#187#8250'c thu'#225#186#191#39', NULL, 76, 65, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (304, '#39'TM6Y2'#39', '#39'    - C'#195#161'c kho'#225#186#163'n '#196#8216'i'#225#187#129'u ch'#225#187#8240'nh' +
        ' t'#196#402'ng ho'#225#186#183'c gi'#225#186#163'm l'#225#187#163'i nhu'#225#186#173'n k'#225#186#191' to'#195#161'n '#196#8216#225#187#402' x'#195#161'c '#196#8216#225#187#8249'nh' +
        ' l'#225#187#163'i nhu'#225#186#173'n ch'#225#187#8249'u thu'#225#186#191' TN'#39', NULL, 8, 7, NULL, '#39'20'#39', NULL, ' +
        '1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (305, '#39'TM6Y21'#39', '#39'    - C'#195#161'c kho'#225#186#163'n '#196#8216'i'#225#187#129'u ch'#225#187#8240'n' +
        'h t'#196#402'ng'#39', NULL, 6, 65, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (306, '#39'TM6Y22'#39', '#39'    - C'#195#161'c kho'#225#186#163'n '#196#8216'i'#225#187#129'u ch'#225#187#8240'n' +
        'h gi'#225#186#163'm'#39', NULL, 856, 567, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (307, '#39'TM6Y3'#39', '#39'    - T'#225#187#8226'ng thu nh'#225#186#173'p ch'#225#187#8249'u thu' +
        #225#186#191#39', NULL, 0, 0, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (308, '#39'TM6Y4'#39', '#39'    - Thu'#225#186#191' thu nh'#225#186#173'p doanh nghi' +
        #225#187#8225'p ph'#225#186#163'i n'#225#187#8482'p'#39', NULL, 86, 567, NULL, '#39'20'#39', NULL, 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC (ID, MANHOM, TENTHUYETMINH, ' +
        'MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, ISMIN, PHA' +
        'TSINH) VALUES (309, '#39'TM6Y5'#39', '#39'    - L'#225#187#163'i nhu'#225#186#173'n sau thu'#225#186#191' thu' +
        ' nh'#225#186#173'p doanh nghi'#225#187#8225'p'#39', NULL, 78, 67, NULL, '#39'20'#39', NULL, 1, NULL' +
        ');'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC2;'
      'commit work;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (1, '#39'TM1'#39', '#39'I- '#196#144#225#186#183'c '#196#8216'i'#225#187#402'm ho'#225#186#161't '#196#8216#225#187#8482'ng c'#225#187#167'a doanh ng' +
        'hi'#225#187#8225'p'#39', '#39'1'#39', 346, 546, NULL, '#39'1'#39', 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (2, '#39'TM11'#39', '#39'1- H'#195#172'nh th'#225#187#169'c s'#225#187#376' h'#225#187#175'u v'#225#187#8216'n'#39', '#39'11'#39', 3, 56' +
        ', NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (3, '#39'TM12'#39', '#39'2- L'#196#169'nh v'#225#187#177'c kinh doanh'#39', '#39'111'#39', 463, 5, NUL' +
        'L, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (4, '#39'TM13'#39', '#39'3- Ng'#195#160'nh ngh'#225#187#129' kinh doanh'#39', '#39'1111'#39', 3456, 7,' +
        ' NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (5, '#39'TM2'#39', '#39'II- Ni'#195#170'n '#196#8216#225#187#8482' k'#225#186#191' to'#195#161'n, '#196#8216#198#161'n v'#225#187#8249' ti'#225#187#129'n t' +
        #225#187#8225' s'#225#187#173' d'#225#187#165'ng trong k'#225#186#191' to'#195#161'n'#39', '#39'11111'#39', 34645, 65, NULL, '#39'1'#39 +
        ', 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (6, '#39'TM21'#39', '#39'1- Ni'#195#170'n '#196#8216#225#187#8482' k'#225#186#191' to'#195#161'n (b'#225#186#175't '#196#8216#225#186#167'u t'#225#187#171' n' +
        'g'#195#160'y '#226#8364#166#226#8364#166#226#8364#166#226#8364#166'.. K'#225#186#191't th'#195#186'c v'#195#160'o ng'#195#160'y '#226#8364#166#226#8364#166#226#8364#166#226#8364#166'..)'#39', '#39'11' +
        '1111'#39', 7657, 7, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (7, '#39'TM22'#39', '#39'2- '#196#144#198#161'n v'#225#187#8249' ti'#225#187#129'n t'#225#187#8225' s'#225#187#173' d'#225#187#165'ng trong k'#225 +
        #186#191' to'#195#161'n'#39', '#39'1111111'#39', 56, 465, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (8, '#39'TM3'#39', '#39'III- Ch'#225#186#191' '#196#8216#225#187#8482' k'#225#186#191' to'#195#161'n '#195#161'p d'#225#187#165'ng'#39', '#39'11111' +
        '111'#39', 756, 6, NULL, '#39'1'#39', 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (9, '#39'TM31'#39', '#39'1- Ch'#225#186#191' '#196#8216#225#187#8482' k'#225#186#191' to'#195#161'n '#195#161'p d'#225#187#165'ng'#39', '#39'111111' +
        '111'#39', 7856, 43, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (10, '#39'TM32'#39', '#39'2- H'#195#172'nh th'#225#187#169'c k'#225#186#191' to'#195#161'n '#195#161'p d'#225#187#165'ng'#39', NULL,' +
        ' 87, 5, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (12, '#39'TM4'#39', '#39'IV- Tuy'#195#170'n b'#225#187#8216' v'#225#187#129' vi'#225#187#8225'c tu'#195#162'n th'#225#187#167' Chu'#225#186#169 +
        'n m'#225#187#177'c k'#225#186#191' to'#195#161'n v'#195#160' Ch'#225#186#191' '#196#8216#225#187#8482' k'#225#186#191' to'#195#161'n Vi'#225#187#8225't Nam'#39', NULL,' +
        ' 56, 3456, NULL, '#39'1'#39', 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (13, '#39'TM5'#39', '#39'V- C'#195#161'c ch'#195#173'nh s'#195#161'ch k'#225#186#191' to'#195#161'n '#195#161'p d'#225#187#165'ng'#39', N' +
        'ULL, 76, 4, NULL, '#39'1'#39', 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (14, '#39'TM51'#39', '#39'1- Nguy'#195#170'n t'#195#161'c x'#195#161'c '#196#8216#225#187#8249'nh c'#195#161'c kho'#225#186#163'n ti'#225 +
        #187#129'n: ti'#225#187#129'n m'#225#186#183't, ti'#225#187#129'n g'#225#187#173'i ng'#195#162'n h'#195#160'ng, ti'#225#187#129'n '#196#8216'ang chuy'#225#187 +
        #402'n g'#225#187#8220'm :'#39', NULL, 8, 6, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (15, '#39'TM511'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c x'#195#161'c '#196#8216#225#187#8249'nh c'#195#161'c kho'#225#186#163'n' +
        ' t'#198#176#198#161'ng '#196#8216#198#176#198#161'ng ti'#225#187#129'n'#39', NULL, 76, 5, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (16, '#39'TM512'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c v'#195#160' ph'#198#176#198#161'ng ph'#195#161'p chuy'#225#187 +
        #402'n '#196#8216#225#187#8226'i c'#195#161'c '#196#8216#225#187#8220'ng ti'#225#187#129'n kh'#195#161'c ra '#196#8216#225#187#8220'ng ti'#225#187#129'n s'#225#187#173' d'#225#187#165'n' +
        'g trong k'#225#186#191' to'#195#161'n'#39', NULL, 8, 76, NULL, '#39'1'#39', 0, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (17, '#39'TM52'#39', '#39'2- Ch'#195#173'nh s'#195#161'ch k'#225#186#191' to'#195#161'n '#196#8216#225#187#8216'i v'#225#187#8250'i h'#195#160'ng' +
        ' t'#225#187#8220'n kho:'#39', NULL, 7, 8, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (18, '#39'TM521'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c '#196#8216#195#161'nh gi'#195#161' h'#195#160'ng t'#225#187#8220'n k' +
        'ho'#39', NULL, 3, 76, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (19, '#39'TM522'#39', '#39'   - Ph'#198#176#198#161'ng ph'#195#161'p x'#195#161'c '#196#8216#225#187#8249'nh gi'#195#161' tr'#225#187#8249' ' +
        'h'#195#160'ng t'#225#187#8220'n kho cu'#225#187#8216'i k'#225#187#179#39', NULL, 34654, 8, NULL, '#39'1'#39', NULL, N' +
        'ULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (20, '#39'TM523'#39', '#39'   - Ph'#198#176#198#161'ng ph'#195#161'p h'#225#186#161'ch to'#195#161'n h'#195#160'ng t'#225#187#8220'n' +
        ' kho (k'#195#170' khai th'#198#176#225#187#157'ng xuy'#195#170'n hay ki'#225#187#402'm k'#195#170' '#196#8216#225#187#8249'nh k'#225#187#179')'#39', N' +
        'ULL, 74, 65, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (21, '#39'TM524'#39', '#39'   - L'#225#186#173'p d'#225#187#177' ph'#195#178'ng gi'#225#186#163'm gi'#195#161' h'#195#160'ng t'#225#187 +
        #8220'n kho'#39', NULL, 6, 7, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (22, '#39'TM53'#39', '#39'3- Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n c'#195#161'c kho'#225#186#163'n ph'#225#186 +
        #163'i thu th'#198#176#198#161'ng m'#225#186#161'i v'#195#160' ph'#225#186#163'i thu kh'#195#161'c'#39', NULL, 34, 34, NULL,' +
        ' '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (23, '#39'TM531'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n'#39', NULL, 564, 6' +
        '3, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (24, '#39'TM532'#39', '#39'   - L'#225#186#173'p d'#225#187#177' ph'#195#178'ng ph'#225#186#163'i thu kh'#195#179' '#196#8216#195#178'i' +
        #39', NULL, 6, 46, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (25, '#39'TM54'#39', '#39'4- Nguy'#195#170'n t'#225#186#175'c x'#195#161'c '#196#8216#225#187#8249'nh kho'#225#186#163'n ph'#225#186#163'i ' +
        'thu, ph'#225#186#163'i tr'#225#186#163' theo ti'#225#186#191'n '#196#8216#225#187#8482' k'#225#186#191' ho'#225#186#161'ch h'#225#187#163'p '#196#8216#225#187#8220'ng x' +
        #195#162'y d'#225#187#177'ng:'#39', NULL, 54, 34, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (26, '#39'TM541'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c x'#195#161'c '#196#8216#225#187#8249'nh kho'#225#186#163'n ph'#225#186 +
        #163'i thu theo ti'#225#186#191'n '#196#8216#225#187#8482' k'#225#186#191' ho'#225#186#161'ch h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng'#39 +
        ', NULL, 675, 6, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (27, '#39'TM542'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c x'#195#161'c '#196#8216#225#187#8249'nh kho'#225#186#163'n ph'#225#186 +
        #163'i  tr'#225#186#163' theo ti'#225#186#191'n '#196#8216#225#187#8482' k'#225#186#191' ho'#225#186#161'ch h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177 +
        'ng'#39', NULL, 57, 5, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (28, '#39'TM55'#39', '#39'5- Ghi nh'#225#186#173'n v'#195#160' kh'#225#186#165'u hao TSC'#196#144':'#39', NULL, 4' +
        '5, 7, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (29, '#39'TM551'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n TSC'#196#144' h'#225#187#175'u h'#195 +
        #172'nh, TSC'#196#144' v'#195#180' h'#195#172'nh'#39', NULL, 64, 6, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (30, '#39'TM552'#39', '#39'   - Ph'#198#176#198#161'ng ph'#195#161'p kh'#225#186#165'u hao TSC'#196#144' h'#225#187#175'u h' +
        #195#172'nh, TSC'#196#144' v'#195#180' h'#195#172'nh'#39', NULL, 67, 87, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (31, '#39'TM56'#39', '#39'6- H'#225#187#163'p '#196#8216#225#187#8220'ng thu'#195#170' t'#195#160'i ch'#195#173'nh:'#39', NULL, 5' +
        ', 9, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (32, '#39'TM561'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n nguy'#195#170'n gi'#195#161' T' +
        'SC'#196#144' thu'#195#170' t'#195#160'i ch'#195#173'nh'#39', NULL, 75, 789, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (33, '#39'TM562'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c v'#195#160' ph'#198#176#198#161'ng ph'#195#161'p kh'#225#186#165'u' +
        ' hao TSC'#196#144' thu'#195#170' t'#195#160'i ch'#195#173'nh'#39', NULL, 67, 46, NULL, '#39'1'#39', NULL, NU' +
        'LL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (34, '#39'TM57'#39', '#39'7- Ghi nh'#225#186#173'n v'#195#160' kh'#225#186#165'u hao b'#225#186#165't '#196#8216#225#187#8482'ng s'#225 +
        #186#163'n '#196#8216#225#186#167'u t'#198#176':'#39', NULL, 56, 4, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (35, '#39'TM571'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n b'#225#186#165't '#196#8216#225#187#8482'ng ' +
        's'#225#186#163'n '#196#8216#225#186#167'u t'#198#176#39', NULL, 7, 3, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (36, '#39'TM572'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c v'#195#160' ph'#198#176#198#161'ng ph'#195#161'p kh'#225#186#165'u' +
        ' hao b'#225#186#165't '#196#8216#225#187#8482'ng s'#225#186#163'n '#196#8216#225#186#167'u t'#198#176#39', NULL, 6, 4, NULL, '#39'1'#39', NUL' +
        'L, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (37, '#39'TM58'#39', '#39'8- Nguy'#195#170'n t'#225#186#175'c v'#225#187#8216'n h'#195#179'a c'#195#161'c kho'#225#186#163'n chi ' +
        'ph'#195#173' '#196#8216'i vay v'#195#160' c'#195#161'c kho'#225#186#163'n chi ph'#195#173' kh'#195#161'c:'#39', NULL, 78, 5, NUL' +
        'L, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (38, '#39'TM581'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c v'#225#187#8216'n h'#195#179'a c'#195#161'c kho'#225#186#163'n c' +
        'hi ph'#195#173' '#196#8216'i vay'#39', NULL, 6, 2345, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (39, '#39'TM582'#39', '#39'    -T'#225#187#183' l'#225#187#8225' v'#225#187#8216'n h'#195#179'a chi ph'#195#173' vay '#196#8216#198#176#225 +
        #187#163'c s'#225#187#173' d'#225#187#165'ng '#196#8216#225#187#402' x'#195#161'c '#196#8216#225#187#8249'nh chi ph'#195#173' '#196#8216'i vay '#196#8216#198#176#225#187#163'c v'#225#187 +
        #8216'n h'#195#179'a trong k'#225#187#179#39', NULL, 87, 3, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (40, '#39'TM583'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c v'#225#187#8216'n h'#195#179'a c'#195#161'c kho'#225#186#163'n c' +
        'hi ph'#195#173' kh'#195#161'c:'#39', NULL, 78, 645, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (41, '#39'TM5831'#39', '#39'       + Chi ph'#195#173' tr'#225#186#163' tr'#198#176#225#187#8250'c'#39', NULL, 7,' +
        ' 7, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (42, '#39'TM5832'#39', '#39'       + Chi ph'#195#173' kh'#195#161'c'#39', NULL, 97, 65, NUL' +
        'L, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (43, '#39'TM584'#39', '#39'   - Ph'#198#176#198#161'ng ph'#195#161'p C4 ph'#195#162'n b'#225#187#8226' ch'#195#173' ph'#195#173' ' +
        'tr'#225#186#163' tr'#198#176#225#187#8250'c'#39', NULL, 645, 87, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (44, '#39'TM585'#39', '#39'   - Ph'#198#176#198#161'ng ph'#195#161'p ph'#195#162'n b'#225#187#8226' l'#225#187#163'i th'#225#186#191' t' +
        'h'#198#176#198#161'ng m'#225#186#161'i'#39', NULL, 6, 69, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (45, '#39'TM59'#39', '#39'9- Nguy'#195#170'n t'#225#186#175'c k'#225#186#191' to'#195#161'n chi ph'#195#173' nghi'#195#170'n ' +
        'c'#225#187#169'u v'#195#160' tri'#225#187#402'n khai:'#39', NULL, 546, NULL, NULL, '#39'1'#39', NULL, NULL' +
        ');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (46, '#39'TM510'#39', '#39'10- K'#225#186#191' to'#195#161'n c'#195#161'c kho'#225#186#163'n '#196#8216#225#186#167'u t'#198#176' t'#195#160'i ' +
        'ch'#195#173'nh:'#39', NULL, 546, 56, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (47, '#39'TM5101'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n c'#195#161'c kho'#225#186#163'n ' +
        #196#8216#225#186#167'u t'#198#176' v'#195#160'o c'#195#180'ng ty con, c'#195#180'ng ty li'#195#170'n k'#225#186#191't'#39', NULL, 45, 7' +
        '3, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (48, '#39'TM5102'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n c'#195#161'c kho'#225#186#163'n ' +
        #196#8216#225#186#167'u t'#198#176' ch'#225#187#169'ng kho'#195#161'n ng'#225#186#175'n h'#225#186#161'n, d'#195#160'i h'#225#186#161'n'#39', NULL, 6, 45' +
        ', NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (49, '#39'TM5103'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n c'#195#161'c kho'#225#186#163'n ' +
        #196#8216#225#186#167'u t'#198#176' ng'#225#186#175'n h'#225#186#161'n, d'#195#160'i h'#225#186#161'n kh'#195#161'c'#39', NULL, 46, 23, NULL, ' +
        #39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (50, '#39'TM5104'#39', '#39'   - Ph'#198#176#198#161'ng ph'#195#161'p l'#225#186#173'p d'#225#187#177' ph'#195#178'ng gi'#225#186#163 +
        'm gi'#195#161' '#196#8216#225#186#167'u t'#198#176' ch'#225#187#169'ng kho'#195#161'n ng'#225#186#175'n h'#225#186#161'n, d'#195#160'i h'#225#186#161'n'#39', NULL' +
        ', 4, 5, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (51, '#39'TM5A'#39', '#39'11- K'#225#186#191' to'#195#161'n c'#195#161'c ho'#225#186#161't '#196#8216#225#187#8482'ng li'#195#170'n doan' +
        'h:'#39', NULL, 64, 3, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (52, '#39'TM5A1'#39', '#39'    Nguy'#195#170'n t'#225#186#175'c k'#225#186#191' to'#195#161'n ho'#225#186#161't '#196#8216#225#187#8482'ng ' +
        'li'#195#170'n doanh d'#198#176#225#187#8250'i h'#195#172'nh th'#225#187#169'c: Ho'#225#186#161't '#196#8216#225#187#8482'ng kinh doanh '#196#8216#225#187 +
        #8220'ng ki'#225#187#402'm so'#195#161't v'#195#160' t'#195#160'i s'#225#186#163'n '#196#8216#225#187#8220'ng ki'#225#187#402'm so'#195#161't; C'#198#161' s'#225#187#376' k' +
        'inh doanh '#196#8216#225#187#8220'ng ki'#225#187#402'm so'#195#161't.'#39', NULL, 6, 46, NULL, '#39'1'#39', NULL, ' +
        'NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (53, '#39'TM5A2'#39', '#39'12- Ghi nh'#225#186#173'n c'#195#161'c kho'#225#186#163'n ph'#225#186#163'i tr'#225#186#163' th'#198 +
        #176#198#161'ng m'#225#186#161'i v'#195#160' ph'#225#186#163'i tr'#225#186#163' kh'#195#161'c'#39', NULL, 46, 45, NULL, '#39'1'#39', NU' +
        'LL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (54, '#39'TM5A3'#39', '#39'13- Ghi nh'#225#186#173'n chi ph'#195#173' ph'#225#186#163'i tr'#225#186#163', tr'#195#173'ch' +
        ' tr'#198#176#225#187#8250'c chi ph'#195#173' s'#225#187#175'a ch'#225#187#175'a l'#225#187#8250'n, chi ph'#195#173' b'#225#186#163'o h'#195#160'nh s'#225#186#163 +
        'n ph'#225#186#169'm, tr'#195#173'ch q'#197#169'y d'#225#187#177' ph'#195#178'ng tr'#225#187#163' c'#225#186#165'p m'#225#186#165't vi'#225#187#8225'c l'#195#160'm'#39 +
        ', NULL, 4, 7, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (55, '#39'TM5A4'#39', '#39'14- Ghi nh'#225#186#173'n c'#195#161'c kho'#225#186#163'n chi ph'#195#173' tr'#225#186#163' t' +
        'r'#198#176#225#187#8250'c, d'#225#187#177' ph'#195#178'ng'#39', NULL, 6, 6, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (56, '#39'TM5A5'#39', '#39'15- Ghi nh'#225#186#173'n c'#195#161'c tr'#195#161'i phi'#225#186#191'u c'#195#179' th'#225#187#402' ' +
        'chuy'#225#187#402'n '#196#8216#225#187#8226'i'#39', NULL, 54, 8, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (57, '#39'TM5A6'#39', '#39'16- Nguy'#195#170'n t'#225#186#175'c chuy'#225#187#402'n '#196#8216#225#187#8226'i ngo'#225#186#161'i t'#225 +
        #187#8225' v'#195#160' c'#195#161'c nghi'#225#187#8225'p v'#225#187#165' d'#225#187#177' ph'#195#178'ng r'#225#187#167'i ro h'#225#187#8216'i '#196#8216'o'#195#161'i.'#39', N' +
        'ULL, 645, 79, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (58, '#39'TM5A7'#39', '#39'17- Ngu'#225#187#8220'n v'#225#187#8216'n ch'#225#187#167' s'#225#187#376' h'#225#187#175'u.'#39', NULL, ' +
        '6, 5, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (59, '#39'TM5A71'#39', '#39'   - Ghi nh'#225#186#173'n v'#195#160' tr'#195#172'nh b'#195#160'y c'#225#187#8226' phi'#225#186#191 +
        'u mua l'#225#186#161'i'#39', NULL, 56, 6, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (60, '#39'TM5A72'#39', '#39'   - Ghi nh'#225#186#173'n c'#225#187#8226' t'#225#187#169'c'#39', NULL, 5, 7, NU' +
        'LL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (61, '#39'TM5A73'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c tr'#195#173'ch l'#225#186#173'p c'#195#161'c kho'#225#186#163 +
        'n d'#225#187#177' tr'#225#187#175' c'#195#161'c qu'#225#187#185' t'#225#187#171' l'#225#187#163'i nhu'#225#186#173'n sau thu'#225#186#191#39', NULL, 7,' +
        ' 34, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (62, '#39'TM5A8'#39', '#39'18- Nguy'#195#170'n t'#225#186#175'c ghi nh'#195#162'n doanh thu'#39', NULL' +
        ', 6, 6, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (63, '#39'TM5A81'#39', '#39'    Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n doanh thu b'#195#161'n' +
        ' h'#195#160'ng, doanh thu cung c'#225#186#165'p d'#225#187#8249'ch v'#225#187#165', doanh thu ho'#225#186#161't '#196#8216#225#187#8482 +
        'ng t'#195#160'i ch'#195#173'nh'#39', NULL, 6, 45, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (64, '#39'TM5A9'#39', '#39'19- Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n doanh thu, chi ' +
        'ph'#195#173' h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng'#39', NULL, 8, 756, NULL, '#39'1'#39', NULL, ' +
        'NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (65, '#39'TM5A91'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n doanh thu h'#225#187 +
        #163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng'#39', NULL, 79, 8, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (66, '#39'TM5A92'#39', '#39'   - Nguy'#195#170'n t'#225#186#175'c ghi nh'#225#186#173'n chi ph'#195#173' h'#225#187#163 +
        'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng'#39', NULL, 8, 76, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (67, '#39'TM6'#39', '#39'VI- Th'#195#180'ng tin b'#225#187#8226' sung cho c'#195#161'c kho'#225#186#163'n m'#225#187#165 +
        'c tr'#195#172'nh b'#195#160'y trong B'#225#186#163'ng c'#195#162'n '#196#8216#225#187#8216'i k'#225#186#191' to'#195#161'n v'#195#160' B'#195#161'o c'#195#161'o ' +
        'k'#225#186#191't qu'#225#186#163' ho'#225#186#39', NULL, 9, 8, NULL, '#39'1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (75, '#39'TM6B'#39', '#39'* Danh s'#195#161'ch c'#195#161'c c'#195#180'ng ty con, c'#195#180'ng ty li'#195#170 +
        'n k'#225#186#191't, li'#195#170'n doanh quan tr'#225#187#141'ng'#39', NULL, 5, 76, NULL, '#39'8'#39', NULL' +
        ', NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (68, '#39'TM631'#39', '#39'* Gi'#195#161' tr'#225#187#8249' ho'#195#160'n nh'#225#186#173'p d'#225#187#177' ph'#195#178'ng gi'#225#186#163'm' +
        ' gi'#195#161' h'#195#160'ng t'#225#187#8220'n kho trong n'#196#402'm'#39', NULL, 80, 769, NULL, '#39'3'#39', NUL' +
        'L, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (69, '#39'TM632'#39', '#39'* Gi'#195#161' tr'#225#187#8249' h'#195#160'ng t'#225#187#8220'n kho d'#195#185'ng '#196#8216#225#187#402' th'#225 +
        #186#191' ch'#225#186#165'p cho c'#195#161'c kho'#225#186#163'n n'#225#187#163#39', NULL, 67, 5, NULL, '#39'3'#39', NULL, ' +
        'NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (70, '#39'TM633'#39', '#39'* L'#195#189' do tr'#195#173'ch th'#195#170'm ho'#225#186#183'c ho'#195#160'n nh'#225#186#173'p d'#225 +
        #187#177' ph'#195#178'ng gi'#225#186#163'm gi'#195#161' h'#195#160'ng t'#225#187#8220'n kho'#39', NULL, 5, 6, NULL, '#39'3'#39', N' +
        'ULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (71, '#39'TM661'#39', '#39'* Gi'#195#161' tr'#225#187#8249' c'#195#178'n l'#225#186#161'i cu'#225#187#8216'i n'#196#402'm c'#225#187#167'a TS' +
        'C'#196#144' h'#225#187#175'u h'#195#172'nh '#196#8216#195#163' d'#195#185'ng th'#225#186#191' ch'#225#186#165'p, c'#225#186#167'm c'#225#187#8216' c'#195#161'c kho'#225#186#163'n' +
        ' vay:'#39', NULL, 7, 74, NULL, '#39'5'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (72, '#39'TM662'#39', '#39'* Nguy'#195#170'n t'#225#186#175'c TSC'#196#144' cu'#225#187#8216'i n'#196#402'm '#196#8216#195#163' kh'#225#186#165 +
        'u hao h'#225#186#191't nh'#198#176'ng v'#225#186#171'n c'#195#178'n s'#225#187#173' d'#225#187#165'ng'#39', NULL, 45, 57, NULL, ' +
        #39'5'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (73, '#39'TM663'#39', '#39'* Nguy'#195#170'n gi'#195#161' TSC'#196#144' cu'#225#187#8216'i n'#196#402'm ch'#225#187#157' thanh' +
        ' l'#195#189#39', NULL, 64, 56, NULL, '#39'5'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (74, '#39'TM664'#39', '#39'* C'#195#161'c cam k'#225#186#191't v'#225#187#129' vi'#225#187#8225'c mua, b'#195#161'n TSC'#196#144 +
        ' h'#225#187#175'u h'#195#172'nh c'#195#179' gi'#195#161' tr'#225#187#8249' l'#225#187#8250'n ch'#198#176'a th'#225#187#177'c hi'#225#187#8225'n'#39', NULL, 6,' +
        ' 8, NULL, '#39'5'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (76, '#39'TM6D'#39', '#39'13- T'#195#160'i s'#225#186#163'n thu'#225#186#191' thu nh'#225#186#173'p ho'#195#163'n l'#225#186#161'i ' +
        'v'#195#160' thu'#225#186#191' thu nh'#225#186#173'p ho'#195#163'n l'#225#186#161'i ph'#225#186#163'i tr'#225#186#163#39', NULL, 765, 897,' +
        ' NULL, '#39'10'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (77, '#39'TM6AA21'#39', '#39'* Gi'#195#161' tr'#225#187#8249' tr'#195#161'i phi'#225#186#191'u c'#195#179' th'#225#187#402' chuy'#225 +
        #187#402'n '#196#8216#225#187#8226'i'#39', NULL, 7, 976, NULL, '#39'12'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (78, '#39'TM6AA22'#39', '#39'* Th'#225#187#157'i h'#225#186#161'n thanh to'#195#161'n tr'#195#161'i phi'#225#186#191'u'#39',' +
        ' NULL, 68, 8, NULL, '#39'12'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (79, '#39'TM6AB21'#39', '#39'* Gi'#195#161' tr'#225#187#8249' tr'#195#161'i phi'#225#186#191'u '#196#8216#195#163' chuy'#225#187#402'n t' +
        'h'#195#160'nh c'#225#187#8226' phi'#225#186#191'u trong n'#196#402'm'#39', NULL, 6, 765, NULL, '#39'13'#39', NULL, ' +
        'NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (80, '#39'TM6AB4'#39', '#39'21.4- C'#225#187#8226' t'#225#187#169'c'#39', NULL, 8, 7, NULL, '#39'15'#39', ' +
        'NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (81, '#39'TM6AB41'#39', '#39'- C'#225#187#8226' t'#225#187#169'c '#196#8216#195#163' c'#195#180'ng b'#225#187#8216' sau ng'#195#160'y k'#225#186 +
        #191't th'#195#186'c ni'#195#170'n '#196#8216#225#187#8482' k'#225#186#191' to'#195#161'n:'#39', NULL, 79, 53, NULL, '#39'15'#39', NUL' +
        'L, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (82, '#39'TM6AB411'#39', '#39'        + C'#225#187#8226' t'#225#187#169'c '#196#8216#195#163' c'#195#180'ng b'#225#187#8216' tr'#195#170 +
        'n c'#225#187#8226' phi'#225#186#191'u th'#198#176#225#187#157'ng:'#39', NULL, 7, 6, NULL, '#39'15'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (83, '#39'TM6AB412'#39', '#39'        + C'#225#187#8226' t'#225#187#169'c '#196#8216#195#163' c'#195#180'ng b'#225#187#8216' tr'#195#170 +
        'n c'#225#187#8226' phi'#225#186#191'u '#198#176'u '#196#8216#195#163'i:'#39', NULL, 98, NULL, NULL, '#39'15'#39', NULL, NU' +
        'LL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (84, '#39'TM6AB413'#39', '#39'- C'#225#187#8226' t'#225#187#169'c c'#225#187#167'a c'#225#187#8226' phi'#225#186#191'u '#198#176'u '#196#8216#195#163'i' +
        ' l'#197#169'y k'#225#186#191' ch'#198#176'a '#196#8216#198#176#225#187#163'c ghi nh'#225#186#173'n:'#39', NULL, 434, 57, NULL, '#39'15' +
        #39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (86, '#39'TM6AB6'#39', '#39'21.6- Qu'#225#187#185' kh'#195#161'c thu'#225#187#8482'c v'#225#187#8216'n ch'#225#187#167' s'#225#187#376' ' +
        'h'#225#187#175'u'#39', NULL, 5, 8, NULL, '#39'17'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (87, '#39'TM6AB61'#39', '#39'- Qu'#225#187#185' h'#225#187#8212' tr'#225#187#163' v'#195#160' s'#225#186#175'p x'#225#186#191'p c'#225#187#8226' ph' +
        #225#186#167'n h'#195#179'a DNNN'#39', NULL, 45, 7, NULL, '#39'17'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (88, '#39'TM6AB7'#39', '#39'21.7- M'#225#187#165'c '#196#8216#195#173'ch tr'#195#173'ch l'#225#186#173'p qu'#225#187#185' '#196#8216#225#186#167 +
        'u t'#198#176' ph'#195#161't tri'#225#187#402'n, qu'#225#187#185' d'#225#187#177' ph'#195#178'ng t'#195#160'i ch'#195#173'nh v'#195#160' qu'#225#187#185' kh'#195 +
        #161'c thu'#225#187#8482'c v'#225#187#8216'n ch'#225#187#167' s'#225#187#376' h'#225#187#175'u'#39', NULL, 5, 987, NULL, '#39'17'#39', NU' +
        'LL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (89, '#39'TM6AB8'#39', '#39'21.8- Thu nh'#225#186#173'p v'#195#160' chi ph'#195#173', l'#195#163'i ho'#225#186#183'c ' +
        'l'#225#187#8212' '#196#8216#198#176#225#187#163'c h'#225#186#161'ch to'#195#161'n tr'#225#187#177'c ti'#225#186#191'p v'#195#160'o V'#225#187#8216'n ch'#225#187#167' s'#225#187#376' h' +
        #225#187#175'u theo qui '#196#8216#225#187#8249'nh c'#225#187#167'a c'#195#161'c chu'#225#186#169'n m'#225#187#177'c k'#225#186#191' to'#195#161'n kh'#195#161'c'#39 +
        ', NULL, 65, 6, NULL, '#39'17'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (90, '#39'TM6AE3'#39', '#39'24.3- Doanh thu h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng'#39',' +
        ' NULL, 7, 9, NULL, '#39'19'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (91, '#39'TM6AE31'#39', '#39'- Doanh thu c'#225#187#167'a h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'n' +
        'g '#196#8216#198#176#225#187#163'c ghi nh'#225#186#173'n trong k'#225#187#179#39', NULL, 68, 875, NULL, '#39'19'#39', NU' +
        'LL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (92, '#39'TM6AE32'#39', '#39'- T'#225#187#8226'ng doanh thu lu'#225#187#185' k'#225#186#191' c'#225#187#167'a h'#225#187#163'p ' +
        #196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng '#196#8216#198#176#225#187#163'c ghi nh'#225#186#173'n '#196#8216#225#186#191'n th'#225#187#157'i '#196#8216'i'#225#187#402'm l'#225 +
        #186#173'p b'#195#161'o c'#195#161'o t'#195#160'i ch'#195#173'nh'#39', NULL, 7, 8, NULL, '#39'19'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (93, '#39'TM6AE33'#39', '#39'- S'#225#187#8216' ti'#225#187#129'n c'#195#178'n ph'#225#186#163'i tr'#225#186#163' cho kh'#195#161'ch' +
        ' h'#195#160'ng li'#195#170'n quan '#196#8216#225#186#191'n h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng;'#39', NULL, 9, 7' +
        '64, NULL, '#39'19'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (94, '#39'TM6AE34'#39', '#39'- S'#225#187#8216' ti'#225#187#129'n c'#195#178'n ph'#225#186#163'i thu c'#225#187#167'a kh'#195#161'ch' +
        ' h'#195#160'ng li'#195#170'n quan '#196#8216#225#186#191'n h'#225#187#163'p '#196#8216#225#187#8220'ng x'#195#162'y d'#225#187#177'ng.'#39', NULL, 8, 7' +
        ', NULL, '#39'19'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (95, '#39'TM6AA9'#39', '#39'29- Ti'#225#187#129'n v'#195#160' c'#195#161'c kho'#225#186#163'n t'#198#176#198#161'ng '#196#8216#198#176#198#161'n' +
        'g ti'#225#187#129'n cu'#225#187#8216'i k'#225#187#179#39', NULL, 85, 65, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (96, '#39'TM6AA91'#39', '#39'29.1- C'#195#161'c giao d'#225#187#8249'ch kh'#195#180'ng b'#225#186#177'ng ti'#225#187#129 +
        'n'#39', NULL, 6, 786, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (97, '#39'TM6AA911'#39', '#39'- Mua t'#195#160'i s'#225#186#163'n b'#225#186#177'ng c'#195#161'ch nh'#225#186#173'n c'#195#161'c' +
        ' kho'#225#186#163'n n'#225#187#163' li'#195#170'n quan tr'#225#187#177'c ti'#225#186#191'p ho'#225#186#183'c th'#195#180'ng qua nghi'#225#187#8225 +
        'p v'#225#187#165' cho thu'#195#170' t'#195#160'i ch'#195#173'nh:'#39', NULL, 3, 87964, NULL, '#39'21'#39', NULL' +
        ', NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (98, '#39'TM6AA912'#39', '#39'- Mua doanh nghi'#225#187#8225'p th'#195#180'ng qua ph'#195#161't h'#195#160 +
        'nh c'#225#187#8226' phi'#225#186#191'u:'#39', NULL, 45, 78, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (99, '#39'TM6AA913'#39', '#39'- Chuy'#225#187#402'n n'#225#187#163' th'#195#160'nh v'#225#187#8216'n ch'#225#187#167' s'#225#187#376' h' +
        #225#187#175'u:'#39', NULL, 2, 678, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (100, '#39'TM6AA92'#39', '#39'29.2- Mua v'#195#160' thanh l'#195#189' c'#195#180'ng ty con ho'#225#186 +
        #183'c '#196#8216#198#161'n v'#225#187#8249' kinh doanh kh'#195#161'c trong k'#225#187#179' b'#195#161'o c'#195#161'o'#39', NULL, 452,' +
        ' 6, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (101, '#39'TM6AA921'#39', '#39'- T'#225#187#8226'ng gi'#195#161' tr'#225#187#8249' mua ho'#225#186#183'c thanh l'#195#189 +
        #39', NULL, 35, 58, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (102, '#39'TM6AA922'#39', '#39'- Ph'#225#186#167'n gi'#195#161' tr'#225#187#8249' mua ho'#225#186#183'c thanh l'#195#189 +
        ' '#196#8216#198#176#225#187#163'c thanh to'#195#161'n b'#225#186#177'ng ti'#225#187#129'n v'#195#160' c'#195#161'c kho'#225#186#163'n t'#198#176#198#161'ng '#196#8216#198 +
        #176#198#161'ng ti'#225#187#129'n'#39', NULL, 4, 45768, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (103, '#39'TM6AA923'#39', '#39'- S'#225#187#8216' ti'#225#187#129'n v'#195#160' c'#195#161'c kho'#225#186#163'n t'#198#176#198#161'ng '#196 +
        #8216#198#176#198#161'ng ti'#225#187#129'n th'#225#187#177'c c'#195#179' trong c'#195#180'ng ty con ho'#225#186#183'c '#196#8216#198#161'n v'#225#187#8249' k' +
        'inh doanh kh'#195#161'c '#196#8216#198#176#225#187#163'c mua ho'#225#186#183'c thanh l'#195#189';'#39', NULL, 65, 789, ' +
        'NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (104, '#39'TM6AA924'#39', '#39'- Ph'#225#186#167'n gi'#195#161' tr'#225#187#8249' t'#195#160'i s'#225#186#163'n v'#195#160' c'#195#180'ng' +
        ' n'#225#187#163' kh'#195#180'ng ph'#225#186#163'i l'#195#160' ti'#225#187#129'n v'#195#160' c'#195#161'c kho'#225#186#163'n t'#198#176#198#161'ng '#196#8216#198#176#198#161'ng' +
        ' ti'#225#187#129'n trong c'#195#180'ng ty con ho'#225#186#183'c '#196#8216#198#161'n v'#225#187#8249' kinh doanh kh'#195#161'c '#196#8216 +
        #198#176#225#187#163'c mua ho'#225#186#183'c thanh l'#195#189' torng k'#225#187#179'.'#39', NULL, 7, 876, NULL, '#39'2' +
        '1'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (105, '#39'TM6AA9241'#39', '#39'+ '#196#144#225#186#167'u t'#198#176' t'#195#160'i ch'#195#173'nh ng'#225#186#175'n h'#225#186#161'n'#39',' +
        ' NULL, 68, 457, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (106, '#39'TM6AA9242'#39', '#39'+ C'#195#161'c kho'#225#186#163'n ph'#225#186#163'i thu'#39', NULL, 7, 76' +
        ', NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (107, '#39'TM6AA9243'#39', '#39'+ H'#195#160'ng t'#225#187#8220'n kho'#39', NULL, 8, 8, NULL, '#39 +
        '21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (108, '#39'TM6AA9244'#39', '#39'+ T'#195#160'i s'#225#186#163'n c'#225#187#8216' '#196#8216#225#187#8249'nh'#39', NULL, 78, 6' +
        '45, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (109, '#39'TM6AA9245'#39', '#39'+ '#196#144#225#186#167'u t'#198#176' t'#195#160'i ch'#195#173'nh d'#195#160'i h'#225#186#161'n'#39', N' +
        'ULL, 6, 678, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (110, '#39'TM6AA9246'#39', '#39'+ N'#225#187#163' ng'#225#186#175'n h'#225#186#161'n'#39', NULL, 74, 6, NULL' +
        ', '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (111, '#39'TM6AA9247'#39', '#39'+ N'#225#187#163' d'#195#160'i h'#225#186#161'n'#39', NULL, 6, 89, NULL, ' +
        #39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (112, '#39'TM6AA93'#39', '#39'29.3- C'#195#161'c kho'#225#186#163'n ti'#225#187#129'n v'#195#160' t'#198#176#198#161'ng '#196#8216#198 +
        #176#198#161'ng ti'#225#187#129'n doanh nghi'#225#187#8225'p n'#225#186#175'm gi'#225#187#175' nh'#198#176'ng kh'#195#180'ng '#196#8216#198#176#225#187#163'c s' +
        #225#187#173' d'#225#187#165'ng:'#39', NULL, 4, 7, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (113, '#39'TM6AA931'#39', '#39'- C'#195#161'c kho'#225#186#163'n ti'#225#187#129'n nh'#225#186#173'n k'#195#189' qu'#225#187#185', ' +
        'k'#195#189' c'#198#176#225#187#163'c ng'#225#186#175'n h'#225#186#161'n, d'#195#160'i h'#225#186#161'n'#39', NULL, 5, 69, NULL, '#39'21'#39', ' +
        'NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (114, '#39'TM6AA932'#39', '#39'- Kinh ph'#195#173' d'#225#187#177' '#195#161'n'#39', NULL, 4, 89, NULL' +
        ', '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (115, '#39'TM7'#39', '#39'VII- Nh'#225#187#175'ng th'#195#180'ng tin kh'#195#161'c'#39', NULL, 65, 5, ' +
        'NULL, '#39'21'#39', 1, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (116, '#39'TM71'#39', '#39'1- Nh'#225#187#175'ng kho'#225#186#163'n n'#225#187#163' ng'#225#186#171'u nhi'#195#170'n, kho'#225#186 +
        #163'n cam k'#225#186#191't v'#195#160' nh'#225#187#175'ng th'#195#180'ng tin t'#195#160'i ch'#195#173'nh kh'#195#161'c'#39', NULL, 6,' +
        ' 8975, NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (117, '#39'TM72'#39', '#39'2- Th'#195#180'ng tin so s'#195#161'nh (nh'#225#187#175'ng thay '#196#8216#225#187#8226'i ' +
        'v'#225#187#129' th'#195#180'ng tin n'#196#402'm tr'#198#176#225#187#8250'c)'#39', NULL, 5, 789, NULL, '#39'21'#39', NULL,' +
        ' NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (118, '#39'TM73'#39', '#39'3- Nh'#225#187#175'ng th'#195#180'ng tin kh'#195#161'c'#39', NULL, 65, NULL' +
        ', NULL, '#39'21'#39', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC2 (ID, MANHOM, TENTHUYETMINH,' +
        ' MASO, NAMNAY, NAMTRUOC, HESO_GROUP, GROUP_ID, ISBOLD, MACHA) VA' +
        'LUES (85, '#39'TM6AB5'#39', '#39'* M'#225#187#8225'nh gi'#195#161' c'#225#187#8226' phi'#225#186#191'u'#39', NULL, 3, 6, NU' +
        'LL, '#39'17'#39', NULL, NULL);'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC10;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (2, '#39'- Quy'#225#187#129'n s'#225#187#173' d'#225#187#165'ng '#196#8216#225#186#165't'#39', 0, 0, 0, 0, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (4, '#39'- Nh'#195#160' v'#195#160' quy'#225#187#129'n s'#225#187#173' d'#225#187#165'ng '#196#8216#225#186#165't'#39', 0, 0, 0' +
        ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (1, '#39'Nguy'#195#170'n gi'#195#161' b'#225#186#165't '#196#8216#225#187#8482'gn s'#225#186#163'n '#196#8216#225#186#167'u t'#198#176#39', 0' +
        ', 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (3, '#39'- Nh'#195#160#39', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (5, '#39'...........................'#39', 0, 0, 0, 0, NULL,' +
        ' NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (6, '#39'Gi'#195#161' tr'#225#187#8249' hao m'#195#178'n l'#197#169'y k'#225#186#191#39', 0, 0, 0, 0, NUL' +
        'L, NULL, NULL, 1, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (7, '#39'- Quy'#225#187#129'n s'#225#187#173' d'#225#187#165'ng '#196#8216#225#186#165't'#39', 0, 0, 0, 0, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (8, '#39'- Nh'#195#160#39', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (9, '#39'- Nh'#195#160' v'#195#160' quy'#225#187#129'n s'#225#187#173' d'#225#187#165'ng '#196#8216#225#186#165't'#39', 0, 0, 0' +
        ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (10, '#39'...............................'#39', 0, 0, 0, 0, ' +
        'NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (11, '#39'Gi'#195#161' tr'#225#187#8249' c'#195#178'n l'#225#186#161'i B'#196#144'S '#196#8216#225#186#167'u t'#198#176#39', 0, 0, ' +
        '0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (12, '#39'- Quy'#225#187#129'n s'#225#187#173' d'#225#187#165'ng '#196#8216#225#186#165't'#39', 0, 0, 0, 0, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (13, '#39'- Nh'#195#160#39', 0, 0, 0, 0, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (14, '#39'- Nh'#195#160' v'#195#160' quy'#225#187#129'n s'#225#187#173' d'#225#187#165'ng '#196#8216#225#186#165't'#39', 0, 0, ' +
        '0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC10 (ID, KHOANMUC, SODAUNAM, T' +
        'ANGTRONGNAM, GIAMTRONGNAM, SOCUOINAM, MANHOM, MANHOMCHA, NUTLA, ' +
        'ISBOLD, SODAUNAM_CT, TANGTRONGNAM_CT, GIAMTRONGNAM_CT, SOCUOINAM' +
        '_CT) VALUES (15, '#39'.............................'#39', 0, 0, 0, 0, NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC20;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC20 (ID, KHOANMUC, TONGKHOANTT' +
        '_NN, TRATIENLAITHUE_NN, TRANOGOC_NN, TONGKHOANTT_NT, TRATIENLAIT' +
        'HUE_NT, TRANOGOC_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGKHOAN' +
        'TT_NN_CT, TONGKHOANTT_NT_CT, TRATIENLAITHUE_NN_CT, TRATIENLAITHU' +
        'E_NT_CT, TRANOGOC_NN_CT, TRANOGOC_NT_CT) VALUES (1, '#39'D'#198#176#225#187#8250'i 1 n' +
        #196#402'm'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N' +
        'ULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC20 (ID, KHOANMUC, TONGKHOANTT' +
        '_NN, TRATIENLAITHUE_NN, TRANOGOC_NN, TONGKHOANTT_NT, TRATIENLAIT' +
        'HUE_NT, TRANOGOC_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGKHOAN' +
        'TT_NN_CT, TONGKHOANTT_NT_CT, TRATIENLAITHUE_NN_CT, TRATIENLAITHU' +
        'E_NT_CT, TRANOGOC_NN_CT, TRANOGOC_NT_CT) VALUES (2, '#39'T'#225#187#171' 1-5 n'#196 +
        #402'm'#39', 4636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC20 (ID, KHOANMUC, TONGKHOANTT' +
        '_NN, TRATIENLAITHUE_NN, TRANOGOC_NN, TONGKHOANTT_NT, TRATIENLAIT' +
        'HUE_NT, TRANOGOC_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGKHOAN' +
        'TT_NN_CT, TONGKHOANTT_NT_CT, TRATIENLAITHUE_NN_CT, TRATIENLAITHU' +
        'E_NT_CT, TRANOGOC_NN_CT, TRANOGOC_NT_CT) VALUES (3, '#39'Tr'#195#170'n 5 n'#196#402 +
        'm'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL, NULL, NULL, NULL, NULL);'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC21_1;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (1, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm tr'#198#176#225#187#8250'c'#39', 0, 0, 0, 0, 0, 0' +
        ', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (6, '#39'S'#225#187#8216' d'#198#176' cu'#225#187#8216'i n'#196#402'm tr'#198#176#225#187#8250'c'#39', 0, 0, 0, 0, 0, 0' +
        ', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (7, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm nay'#39', 0, 0, 0, 0, 0, 0, 0, ' +
        '0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (12, '#39'S'#225#187#8216' d'#198#176' cu'#225#187#8216'i n'#196#402'm nay'#39', 0, 0, 0, 0, 0, 0, 0,' +
        ' 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (2, '#39'  - T'#196#402'ng v'#225#187#8216'n n'#196#402'm tr'#198#176#225#187#8250'c'#39', 0, 0, 0, 0, 0, 0' +
        ', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (9, '#39'  - T'#196#402'ng v'#225#187#8216'n n'#196#402'm nay'#39', 0, 0, 0, 0, 0, 0, 0, ' +
        '0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (3, '#39'  - L'#225#187#163'i nhu'#195#162'n t'#196#402'ng trong n'#196#402'm tr'#198#176#225#187#8250'c'#39', 0, ' +
        '0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (10, '#39'  - L'#225#187#163'i nhu'#195#162'n t'#196#402'ng trong n'#196#402'm'#39', 0, 0, 0, 0,' +
        ' 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (4, '#39'  - Chia c'#225#187#8226' t'#225#187#169'c n'#196#402'm tr'#198#176#225#187#8250'c'#39', 0, 0, 0, 0, ' +
        '0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (11, '#39'  - Chia c'#225#187#8226' t'#225#187#169'c n'#196#402'm nay'#39', 0, 0, 0, 0, 0, 0' +
        ', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (5, '#39'................'#39', 0, 0, 0, 0, 0, 0, 0, 0, 0, NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_1 (ID, KHOANMUC, VONGOP, T' +
        'HANGDUVCP, COPHIEUNGANQUI, CHENHLENHDGTS, CHENHLECHTGHD, QUIDAUT' +
        'UPHATTRIEN, QUIDUPHONGTAICHINH, QUITHUOCVSH, LOINHUANSTCHUAPP, M' +
        'ANHOM, MANHOMCHA, NUTLA, ISBOLD, VONGOP_CT, THANGDUVCP_CT, COPHI' +
        'EUNGANQUI_CT, CHENHLENHDGTS_CT, CHENHLECHTGHD_CT, QUIDAUTUPHATTR' +
        'IEN_CT, QUIDUPHONGTAICHINH_CT, QUITHUOCVSH_CT, LOINHUANSTCHUAPP_' +
        'CT) VALUES (8, '#39'T'#196#402'ng n'#196#402'm nay'#39', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL);'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC21_2;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_2 (ID, TONGSO_NN, VONCPTHU' +
        'ONG_NN, VONCPUUDAI_NN, KHOANMUC, TONGSO_NT, VONCPTHUONG_NT, VONC' +
        'PUUDAI_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGSO_NN_CT, VONCP' +
        'THUONG_NN_CT, VONCPUUDAI_NN_CT, VONCPUUDAI_NT_CT, VONCPTHUONG_NT' +
        '_CT, TONGSO_NT_CT) VALUES (1, 0, 0, 0, '#39'- V'#225#187#8216'n '#196#8216#225#186#167'u t'#198#176' c'#225#187#167'a' +
        ' Nh'#195#160' N'#198#176#225#187#8250'c'#39', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_2 (ID, TONGSO_NN, VONCPTHU' +
        'ONG_NN, VONCPUUDAI_NN, KHOANMUC, TONGSO_NT, VONCPTHUONG_NT, VONC' +
        'PUUDAI_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGSO_NN_CT, VONCP' +
        'THUONG_NN_CT, VONCPUUDAI_NN_CT, VONCPUUDAI_NT_CT, VONCPTHUONG_NT' +
        '_CT, TONGSO_NT_CT) VALUES (2, 0, 0, 0, '#39'- V'#225#187#8216'n g'#195#179'p (c'#225#187#8226' '#196#8216#195#180'n' +
        'g, th'#195#160'nh vi'#195#170'n...)'#39', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_2 (ID, TONGSO_NN, VONCPTHU' +
        'ONG_NN, VONCPUUDAI_NN, KHOANMUC, TONGSO_NT, VONCPTHUONG_NT, VONC' +
        'PUUDAI_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGSO_NN_CT, VONCP' +
        'THUONG_NN_CT, VONCPUUDAI_NN_CT, VONCPUUDAI_NT_CT, VONCPTHUONG_NT' +
        '_CT, TONGSO_NT_CT) VALUES (3, 0, 0, 0, '#39'- Th'#225#186#183'ng d'#198#176' v'#225#187#8216'n c'#225#187#8226 +
        ' ph'#225#186#167'n'#39', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_2 (ID, TONGSO_NN, VONCPTHU' +
        'ONG_NN, VONCPUUDAI_NN, KHOANMUC, TONGSO_NT, VONCPTHUONG_NT, VONC' +
        'PUUDAI_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGSO_NN_CT, VONCP' +
        'THUONG_NN_CT, VONCPUUDAI_NN_CT, VONCPUUDAI_NT_CT, VONCPTHUONG_NT' +
        '_CT, TONGSO_NT_CT) VALUES (4, 0, 0, 0, '#39'- C'#225#187#8226' phi'#225#186#191'u ng'#195#162'n q'#197#169 +
        'y'#39', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC21_2 (ID, TONGSO_NN, VONCPTHU' +
        'ONG_NN, VONCPUUDAI_NN, KHOANMUC, TONGSO_NT, VONCPTHUONG_NT, VONC' +
        'PUUDAI_NT, MANHOM, MANHOMCHA, NUTLA, ISBOLD, TONGSO_NN_CT, VONCP' +
        'THUONG_NN_CT, VONCPUUDAI_NN_CT, VONCPUUDAI_NT_CT, VONCPTHUONG_NT' +
        '_CT, TONGSO_NT_CT) VALUES (5, 0, 0, 0, '#39'C'#225#187#8482'ng'#39', 0, 0, 0, NULL, ' +
        'NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC6;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (1, '#39'Nguy'#195#170'n gi'#195#161' TSC'#196#144' h'#225#187 +
        #175'u h'#195#172'nh'#39', 0, 0, 0, 0, 0, 0, '#39'KM1'#39', NULL, NULL, 1, '#39'COPS(211,MMT' +
        'B)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,M' +
        'MTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211' +
        ',MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (2, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm'#39',' +
        ' 0, 0, 0, 0, 0, 0, '#39'KM11'#39', '#39'KM1'#39', 1, NULL, '#39'COPS(211,MMTB)+NOPS(' +
        '211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOP' +
        'S(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+N' +
        'OPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (3, '#39'  -Mua trong n'#196#402'm'#39', 0,' +
        ' 0, 0, 0, 0, 0, '#39'KM12'#39', '#39'KH1'#39', 1, 1, '#39'COPS(211,MMTB)+NOPS(211,MM' +
        'TB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,' +
        'MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(21' +
        '1,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (4, '#39'  -'#196#144#225#186#167'u t'#198#176' XDCB ho'#195 +
        #160'n th'#195#160'nh'#39', 0, 0, 0, 0, 0, 0, '#39'KM13'#39', '#39'KH1'#39', 1, NULL, '#39'COPS(211,' +
        'MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(21' +
        '1,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(' +
        '211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (5, '#39'  -T'#196#402'ng kh'#195#161'c'#39', 0, 0,' +
        ' 0, 0, 0, 0, '#39'KM14'#39', '#39'KH1'#39', 1, NULL, '#39'COPS(211,MMTB)+NOPS(211,MM' +
        'TB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,' +
        'MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(21' +
        '1,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (6, '#39'  -Chuy'#225#187#402'n sang B'#196#144'S ' +
        #196#8216#225#186#167'u t'#198#176#39', 0, 0, 0, 0, 0, 0, '#39'KM15'#39', '#39'KM1'#39', 1, NULL, '#39'COPS(211' +
        ',MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(2' +
        '11,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS' +
        '(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (7, '#39'  -Thanh l'#195#189', nh'#198#176#225#187#163'n' +
        'g b'#195#161'n'#39', 0, 0, 0, 0, 0, 0, '#39'KM16'#39', '#39'KM1'#39', 1, NULL, '#39'COPS(211,MMT' +
        'B)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,M' +
        'MTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211' +
        ',MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (8, '#39'  -Gi'#225#186#163'm kh'#195#161'c'#39', 0, 0' +
        ', 0, 0, 0, 0, '#39'KM17'#39', '#39'KM1'#39', 1, 1, '#39'COPS(211,MMTB)+NOPS(211,MMTB' +
        ')'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MM' +
        'TB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,' +
        'MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (9, '#39'Gi'#195#161' tr'#225#187#8249' hao m'#195#178'n l'#197 +
        #169'y k'#225#186#191#39', 0, 0, 0, 0, 0, 0, '#39'KM2'#39', NULL, NULL, 1, '#39'COPS(211,MMTB' +
        ')+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MM' +
        'TB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,' +
        'MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (10, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm'#39 +
        ', 0, 0, 0, 0, 0, 0, '#39'KM21'#39', '#39'KM2'#39', 1, NULL, '#39'COPS(211,MMTB)+NOPS' +
        '(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NO' +
        'PS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+' +
        'NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (11, '#39'  -Kh'#225#186#165'u hao trong n' +
        #196#402'm'#39', 0, 0, 0, 0, 0, 0, '#39'KM22'#39', '#39'KM2'#39', 1, 1, '#39'COPS(211,MMTB)+NOP' +
        'S(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+N' +
        'OPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)' +
        '+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (12, '#39'  -Chuy'#225#187#402'n sang b'#225#186#165 +
        't '#196#8216#225#187#8482'ng s'#225#186#163'n '#196#8216#225#186#167'u t'#198#176#39', 0, 0, 0, 0, 0, 0, '#39'KM23'#39', '#39'KM2'#39', 1,' +
        ' NULL, '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211' +
        ',MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(2' +
        '11,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS' +
        '(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (13, '#39'  -Thanh l'#195#189', nh'#198#176#225#187#163 +
        'ng b'#195#161'n'#39', 0, 0, 0, 0, 0, 0, '#39'KM24'#39', '#39'KM2'#39', 1, NULL, '#39'COPS(211,MM' +
        'TB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,' +
        'MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(21' +
        '1,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (14, '#39'  -Gi'#225#186#163'm kh'#195#161'c'#39', 0, ' +
        '0, 0, 0, 0, 0, '#39'KM25'#39', '#39'KM2'#39', 1, 1, '#39'COPS(211,MMTB)+NOPS(211,MMT' +
        'B)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,M' +
        'MTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211' +
        ',MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (15, '#39'Gi'#195#161' tr'#225#187#8249' c'#195#178'n l'#225#186#161'i' +
        ' c'#225#187#167'a TSC'#196#144' HH'#39', 0, 0, 0, 0, 0, 0, '#39'KM3'#39', NULL, NULL, 1, '#39'COPS(' +
        '211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COP' +
        'S(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'C' +
        'OPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (16, '#39'  -T'#195#160'i ng'#195#160'y '#196#8216#225#186#167'u ' +
        'n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, '#39'KM31'#39', '#39'KM3'#39', 1, NULL, '#39'COPS(211,MMTB)' +
        '+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMT' +
        'B)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,M' +
        'MTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC6 (ID, KHOANMUC, NHACUA, MAYM' +
        'OCTB, PTVTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA' +
        ', NUTLA, ISBOLD, NHACUA_CT, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, ' +
        'TAISANCDKHAC_CT, TONGCONG_CT) VALUES (17, '#39'  -T'#225#186#161'i ng'#195#160'y cu'#225#187#8216'i' +
        ' n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, '#39'KM32'#39', '#39'KM3'#39', 1, NULL, '#39'COPS(211,MMTB' +
        ')+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MM' +
        'TB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,' +
        'MMTB)+NOPS(211,MMTB)'#39', '#39'COPS(211,MMTB)+NOPS(211,MMTB)'#39');'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC7;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (1, '#39'Nguy'#195#170'n gi'#195#161' TSC'#196#144' thu'#195#170' TC'#39', 0, 0, 0, 0,' +
        ' 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (2, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm'#39', 0, 0, 0, 0, 0, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (3, '#39'- Thu'#195#170' t'#195#160'i ch'#195#173'nh trong n'#196#402'm'#39', 0, 0, 0,' +
        ' 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (4, '#39'- Mua l'#225#186#161'i TSC'#196#144' thu'#195#170' t'#195#160'i ch'#195#173'nh'#39', 0, ' +
        '0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL' +
        ');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (5, '#39'Tr'#225#186#163' l'#225#186#161'i TSC'#196#144' thu'#195#170' t'#195#160'i ch'#195#173'nh'#39', 0, ' +
        '0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL' +
        ');'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (6, '#39'S'#225#187#8216' d'#198#176' cu'#225#187#8216'i n'#196#402'm'#39', 0, 0, 0, 0, 0, NUL' +
        'L, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (7, '#39'Gi'#195#161' tr'#225#187#8249' hao m'#195#178'n lu'#225#187#185' k'#225#186#191#39', 0, 0, 0,' +
        ' 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (8, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167'u n'#196#402'm'#39', 0, 0, 0, 0, 0, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (9, '#39'- Kh'#225#186#165'u hao trong n'#196#402'm'#39', 0, 0, 0, 0, 0, ' +
        'NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (10, '#39'- Chuy'#225#187#402'n sang b'#225#186#165't '#196#8216#225#187#8482'ng s'#225#186#163'n '#196#8216#225#186 +
        #167'u t'#198#176#39', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (11, '#39'- Thanh l'#195#189', nh'#198#176#225#187#163'ng b'#195#161'n'#39', 0, 0, 0, 0' +
        ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (12, '#39'- Gi'#225#186#163'm kh'#195#161'c'#39', 0, 0, 0, 0, 0, NULL, NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (13, '#39'S'#225#187#8216' d'#198#176' cu'#225#187#8216'i n'#196#402'm'#39', 0, 0, 0, 0, 0, NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (14, '#39'Gi'#195#161' tr'#225#187#8249' c'#195#178'n l'#225#186#161'i c'#225#187#167'a TSC'#196#144' HH'#39', 0' +
        ', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NU' +
        'LL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (15, '#39'- T'#225#186#161'i ng'#195#160'y '#196#8216#225#186#167'u n'#196#402'm'#39', 0, 0, 0, 0, ' +
        '0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC7 (ID, KHOANMUC, MAYMOCTB, PT' +
        'VTTD, TBDCQLY, TAISANCDKHAC, TONGCONG, MANHOM, MANHOMCHA, NUTLA,' +
        ' ISBOLD, MAYMOCTB_CT, PTVTTD_CT, TBDCQLY_CT, TAISANCDKHAC_CT, TO' +
        'NGCONG_CT) VALUES (16, '#39'- T'#225#186#161'i ng'#195#160'y cu'#225#187#8216'i n'#196#402'm'#39', 0, 0, 0, 0, ' +
        '0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      ''
      'COMMIT WORK;'
      ''
      'delete from RPT_BANGTHUYETMINH_BCTC8;'
      'COMMIT WORK;'
      ''
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (1, '#39'  Nguy'#195#170'n gi'#195#161 +
        ' TSC'#196#144' v'#195#180' h'#195#172'nh'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, NULL, ' +
        'NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (2, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186#167 +
        'u n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (3, '#39'- Mua trong n'#196 +
        #402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (4, '#39'- T'#225#186#161'o ra t'#225#187 +
        #171' n'#225#187#8482'i b'#225#187#8482' doanh nghi'#225#187#8225'p'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (6, '#39'- T'#196#402'ng kh'#195#161'c'#39 +
        ', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (7, '#39'- Thanh l'#195#189', n' +
        'h'#198#176#225#187#163'ng b'#195#161'n'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (8, '#39'S'#225#187#8216' d'#198#176' cu'#225#187#8216 +
        'i n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (11, '#39'- Kh'#225#186#165'u hao ' +
        'trong n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (12, '#39'- Thanh l'#195#189', ' +
        'nh'#198#176#225#187#163'ng b'#195#161'n'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (13, '#39'- Gi'#225#186#163'm kh'#195#161 +
        'c'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (9, '#39'   Gi'#195#161' tr'#225#187#8249' ' +
        'hao m'#195#178'n lu'#225#187#185' k'#225#186#191#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (10, '#39'S'#225#187#8216' d'#198#176' '#196#8216#225#186 +
        #167'u n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (14, '#39'- S'#225#187#8216' d'#198#176' cu' +
        #225#187#8216'i n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (15, '#39'Gi'#195#161' tr'#225#187#8249' c'#195 +
        #178'n l'#225#186#161'i c'#225#187#167'a TSC'#196#144'VH'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, ' +
        'NULL, NULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (16, '#39'- T'#225#186#161'i ng'#195#160'y' +
        ' '#196#8216#225#186#167'u n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (17, '#39'- T'#225#186#161'i ng'#195#160'y' +
        ' cu'#225#187#8216'i n'#196#402'm'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL, NULL);'
      
        'INSERT INTO RPT_BANGTHUYETMINH_BCTC8 (ID, KHOANMUC, QUYENSDDAT, ' +
        'BANQUYEN, NHANHIEU, PHANMEM, TSCDVHKHAC, TONGCONG, MANHOM, MANHO' +
        'MCHA, NUTLA, ISBOLD, QUYENSDDAT_CT, BANQUYEN_CT, NHANHIEU_CT, PH' +
        'ANMEM_CT, TSCDVHKHAC_CT, TONGCONG_CT) VALUES (5, '#39'- T'#196#402'ng do h'#225#187 +
        #163'p nh'#225#186#165't kinh doanh'#39', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL, NULL, NULL);'
      ''
      'COMMIT WORK;'
      '')
    IB_Connection = MainDM.cnMain
    Left = 691
    Top = 251
  end
  object qryGetArising_TMBCTC: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'tuky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denky'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tkno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tkco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select SOPS'
      
        'from SP_TMBCTC_PS4(:tuky,:denky,:tkno,:dtno,:tkco,:dtco,:branch_' +
        'id)')
    FieldOptions = []
    Left = 808
    Top = 128
    object qryGetArising_TMBCTCSOPS: TIBOFloatField
      FieldName = 'SOPS'
    end
  end
  object qryGetBalance_TMBCTC: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SHTK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MADT'
        ParamType = ptUnknown
      end
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
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\ACCOUNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select NODK,CODK,NOPS,COPS,NOCK,COCK'
      
        'from MACRO_TMBCTC_SODUTK_NGAY(:SHTK,:MADT,:TUKY,:DENKY,:BRANCH_I' +
        'D)')
    FieldOptions = []
    Left = 752
    Top = 136
    object qryGetBalance_TMBCTCNODK: TIBOFloatField
      FieldName = 'NODK'
    end
    object qryGetBalance_TMBCTCCODK: TIBOFloatField
      FieldName = 'CODK'
    end
    object qryGetBalance_TMBCTCNOPS: TIBOFloatField
      FieldName = 'NOPS'
    end
    object qryGetBalance_TMBCTCCOPS: TIBOFloatField
      FieldName = 'COPS'
    end
    object qryGetBalance_TMBCTCNOCK: TIBOFloatField
      FieldName = 'NOCK'
    end
    object qryGetBalance_TMBCTCCOCK: TIBOFloatField
      FieldName = 'COCK'
    end
  end
  object StExpression: TStExpression
    Left = 755
    Top = 203
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 692
    Top = 282
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        29050000545046301054647844424772696457726170706572000542616E6473
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
        0E42616E64466F6E742E5374796C650B000A44617461536F75726365070F4D61
        696E444D2E64734272616E63680F46696C7465722E43726974657269610A0400
        00000000000012486561646572466F6E742E43686172736574070F4445464155
        4C545F4348415253455410486561646572466F6E742E436F6C6F72070C636C57
        696E646F775465787411486561646572466F6E742E48656967687402F50F4865
        61646572466F6E742E4E616D6506065461686F6D6110486561646572466F6E74
        2E5374796C650B000B4C6F6F6B416E644665656C07066C66466C6174094F7074
        696F6E7344420B106564676F43616E63656C4F6E457869740D6564676F43616E
        44656C6574650D6564676F43616E496E73657274116564676F43616E4E617669
        676174696F6E116564676F436F6E6669726D44656C657465126564676F4C6F61
        64416C6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F70
        74696F6E73566965770B0D6564676F4175746F57696474680D6564676F557365
        4269746D6170001350726576696577466F6E742E43686172736574070F444546
        41554C545F434841525345541150726576696577466F6E742E436F6C6F720706
        636C426C75651250726576696577466F6E742E48656967687402F51050726576
        696577466F6E742E4E616D65060D4D532053616E732053657269661150726576
        696577466F6E742E5374796C650B0000135464784442477269644D61736B436F
        6C756D6E094252414E43485F49440743617074696F6E140E0000004DC3A32063
        6869206E68C3A16E680C466F6E742E43686172736574070F44454641554C545F
        434841525345540A466F6E742E436F6C6F72070C636C57696E646F7754657874
        0B466F6E742E48656967687402F509466F6E742E4E616D6506065461686F6D61
        0A466F6E742E5374796C650B000F486561646572416C69676E6D656E74070874
        6143656E74657205576964746802560942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D6506094252414E43485F49440C43617074
        696F6E5F5554463706134D2B414F4D20636869206E682B414F452D6E68000013
        5464784442477269644D61736B436F6C756D6E0846554C4C4E414D4507436170
        74696F6E140F00000054C3AA6E20636869206E68C3A16E680F48656164657241
        6C69676E6D656E740708746143656E7465720557696474680323010942616E64
        496E646578020008526F77496E6465780200094669656C644E616D6506084655
        4C4C4E414D450C43617074696F6E5F555446370615542B414F6F2D6E20636869
        206E682B414F452D6E68000000}
    end
  end
end
