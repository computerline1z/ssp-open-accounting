object AnalystFrm: TAnalystFrm
  Tag = 120
  Left = 302
  Top = 50
  Width = 978
  Height = 720
  HelpContext = 32
  BorderWidth = 2
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TntShape1: TTntShape
    Left = 0
    Top = 0
    Width = 966
    Height = 1
    Align = alTop
    Pen.Color = clGray
  end
  object Splitter1: TSplitter
    Left = 545
    Top = 1
    Height = 681
    Align = alRight
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 1
    Width = 545
    Height = 681
    Align = alClient
    BevelOuter = bvSpace
    TabOrder = 0
    object ElPageControl1: TElPageControl
      Left = 1
      Top = 1
      Width = 543
      Height = 26
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      OnChange = ElPageControl1Change
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabHeight = 25
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
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
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object ElTabSheet1: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = '&1.T'#224'i ch'#237'nh'
      end
      object ElTabSheet2: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = '&2.Qu'#7843'n tr'#7883
        Visible = False
      end
      object ElTabSheet3: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = '&3.S'#7893' s'#225'ch'
        Visible = False
      end
      object ElTabSheet4: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = '&4.Kh'#225'c'
        Visible = False
      end
    end
    object TreeReport: TdxDBGrid
      Left = 1
      Top = 27
      Width = 543
      Height = 653
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'REPORT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 1
      OnDblClick = TreeReportDblClick
      OnKeyDown = TreeReportKeyDown
      OnMouseUp = TreeReportMouseUp
      DataSource = dsListReport
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowHeader = False
      OnChangeNode = TreeReportChangeNode
      object TreeReportORDER: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDER_FIELD'
      end
      object TreeReportCOLNAME: TdxDBGridColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_NAME'
      end
      object TreeReportENGLISH_NAME: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENGLISH_NAME'
      end
      object TreeReportTENNHOM: TdxDBGridColumn
        Caption = 'Nh'#243'm'
        Sorted = csUp
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENNHOM'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+APM-m'
      end
      object TreeReportRPT_STATUS: TdxDBGridCheckColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RPT_STATUS'
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object TreeReportENGGROUP: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENGGROUP'
      end
    end
  end
  object PnlRight: TElPanel
    Left = 548
    Top = 1
    Width = 418
    Height = 681
    Align = alRight
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MouseCapture = False
    ParentColor = True
    ParentFont = False
    TabOrder = 5
    TabStop = False
    Caption = ' '
    Constraints.MinWidth = 418
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object PnlDieukien: TPanel
      Left = 0
      Top = 130
      Width = 418
      Height = 407
      Align = alTop
      BevelInner = bvLowered
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object PnlBeginText: TPanel
        Left = 2
        Top = 86
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object LblBeginText: TElLabel
          Left = 10
          Top = 6
          Width = 171
          Height = 19
          AutoSize = False
          Caption = 'B'#7855't '#273#7847'u v'#7899'i :'
          FocusControl = edtBeginText
        end
        object edtBeginText: TdxEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          MaxLength = 50
          StoredValues = 2
        end
      end
      object PnlDocType: TPanel
        Left = 2
        Top = 111
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object pedtDocType: TdxDBPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          DataField = 'DOCTYPE_NAME'
          DataSource = MainDM.dsPDocType
          PopupControl = PopupFrm.Pnl_DocType
          PopupFormBorderStyle = pbsSimple
        end
        object chkDocType: TdxCheckEdit
          Left = 5
          Top = 2
          Width = 153
          TabOrder = 1
          Caption = 'Lo'#7841'i ch'#7913'ng t'#7915' :'
          OnChange = chkDocTypeChange
          State = cbsChecked
        end
      end
      object PnlTaikhoan: TPanel
        Left = 2
        Top = 36
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object LblSHTK: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 168
          Height = 16
          AutoSize = False
          Caption = 'S'#7889' hi'#7879'u t'#224'i kho'#7843'n :'
        end
        object pedtSHTK: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          OnExit = pedtSHTKExit
          PopupControl = PopupFrm.PnlTK
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = pedtSHTKCloseUp
          OnInitPopup = pedtSHTKInitPopup
        end
      end
      object PnlCommon: TPanel
        Left = 2
        Top = 260
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object LblChung: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'M'#227' s'#7889' kho h'#224'ng :'
        end
        object popCommon: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popCommonCloseUp
        end
      end
      object PnlObj: TPanel
        Left = 2
        Top = 185
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object LblObj: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'M'#227' s'#7889' '#273#7889'i t'#432#7907'ng :'
        end
        object pedtObj: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          OnEnter = pedtObjEnter
          OnChange = pedtObjChange
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = pedtObjCloseUp
        end
      end
      object PnlObjGrp: TPanel
        Left = 2
        Top = 136
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object ElLabel3: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'Nh'#243'm '#273#7889'i t'#432#7907'ng :'
        end
        object popObjGrp: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popObjGrpCloseUp
          OnInitPopup = popObjGrpInitPopup
        end
      end
      object PnlTuoino: TPanel
        Left = 2
        Top = 335
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 7
        object ElLabel4: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 159
          Height = 16
          AutoSize = False
          Caption = 'C'#244'ng n'#7907' v'#432#7907't qu'#225' s'#7889' ng'#224'y :'
        end
        object spnTuoino: TdxSpinEdit
          Left = 180
          Top = 3
          Width = 220
          TabOrder = 0
          Alignment = taRightJustify
          MaxValue = 1000.000000000000000000
          MinValue = -1000.000000000000000000
          Value = -1000.000000000000000000
          StoredValues = 49
        end
      end
      object PnlPhanloaiCN: TPanel
        Left = 2
        Top = 360
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 8
        object ElLabel5: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 111
          Height = 16
          AutoSize = False
          Caption = #272#7897' tu'#7893'i nh'#7887' nh'#7845't'
        end
        object ElLabel6: TElLabel
          Tag = 123
          Left = 166
          Top = 6
          Width = 111
          Height = 16
          AutoSize = False
          Caption = 'Gi'#225' tr'#7883' 1 '#273'o'#7841'n'
        end
        object ElLabel7: TElLabel
          Tag = 123
          Left = 294
          Top = 6
          Width = 51
          Height = 16
          AutoSize = False
          Caption = 'S'#7889' '#273'o'#7841'n'
        end
        object spnTuoinoNN: TdxSpinEdit
          Left = 106
          Top = 3
          Width = 57
          TabOrder = 0
          Alignment = taRightJustify
          MaxValue = 1000.000000000000000000
          MinValue = -1000.000000000000000000
          Value = -1000.000000000000000000
          StoredValues = 49
        end
        object spnKhoangCach: TdxSpinEdit
          Left = 243
          Top = 3
          Width = 47
          TabOrder = 1
          Alignment = taRightJustify
          MaxValue = 100.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 49
        end
        object spnSoDoan: TdxSpinEdit
          Left = 351
          Top = 3
          Width = 49
          TabOrder = 2
          Alignment = taRightJustify
          MaxValue = 10.000000000000000000
          MinValue = 2.000000000000000000
          Value = 2.000000000000000000
          StoredValues = 49
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 414
        Height = 9
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 9
      end
      object PnlObjType: TPanel
        Left = 2
        Top = 61
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object ElLabel8: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 159
          Height = 16
          AutoSize = False
          Caption = 'Lo'#7841'i '#273#7889'i t'#432#7907'ng :'
        end
        object boxLOAIDT: TdxDBExtLookupEdit
          Left = 180
          Top = 3
          Width = 220
          TabOrder = 0
          OnEnter = boxLOAIDTEnter
          DataField = 'SHORT_NAME'
          DataSource = MainDM.dsObjType
          DBGridLayout = dxDBGridLayoutList1Item1
        end
      end
      object pnlMAYT: TPanel
        Left = 2
        Top = 210
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 10
        object lblMAYT: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'M'#227' s'#7889' y'#7871'u t'#7889' :'
        end
        object pedtMAYT: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          OnEnter = pedtMAYTEnter
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = pedtMAYTCloseUp
        end
      end
      object pnlMAYT2: TPanel
        Left = 2
        Top = 235
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 11
        object lblMAYT2: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'M'#227' s'#7889' y'#7871'u t'#7889' 2 :'
        end
        object pedtMAYT2: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          OnEnter = pedtMAYT2Enter
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = pedtMAYT2CloseUp
        end
      end
      object pnlBranch: TPanel
        Left = 2
        Top = 11
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 12
        object lblBranch: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = #272#417'n v'#7883
        end
        object popBranch: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          ReadOnly = True
          HideEditCursor = True
          PopupControl = PopupFrm.pnlBranch
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popBranchCloseUp
          StoredValues = 64
        end
      end
      object pnlBPSudung: TPanel
        Left = 2
        Top = 310
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 13
        object lblBPSudung: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'B'#7897' ph'#7853'n s'#7917' d'#7909'ng'
        end
        object popBPSudung: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          OnEnter = popBPSudungEnter
          PopupControl = PopupFrm.PnlCommonObj
          PopupFormBorderStyle = pbsSimple
        end
      end
      object pnlBudget: TPanel
        Left = 2
        Top = 285
        Width = 414
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 14
        object lblBudget: TElLabel
          Tag = 123
          Left = 10
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'H'#7841'n m'#7913'c, ng'#226'n s'#225'ch'
        end
        object popBudget: TdxPopupEdit
          Left = 180
          Top = 3
          Width = 220
          Cursor = crIBeam
          TabOrder = 0
          OnEnter = popBudgetEnter
          PopupControl = PopupFrm.TreeItem
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popBudgetCloseUp
        end
      end
      object pnlLOAITONGHOP: TPanel
        Left = 2
        Top = 161
        Width = 414
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 15
        Visible = False
        object lblloaitonghop: TElLabel
          Left = 8
          Top = 8
          Width = 281
          Height = 13
          AutoSize = False
          Caption = 'lblloaitonghop'
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ElPopupButton1: TElPopupButton
          Left = 312
          Top = 0
          Width = 89
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Lo'#7841'i t'#7893'ng h'#7907'p'
          TabOrder = 0
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 34
      Width = 418
      Height = 96
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object ElLabel2: TElLabel
        Tag = 122
        Left = 282
        Top = 40
        Width = 22
        Height = 13
        AutoSize = False
        Caption = #273#7871'n'
        FocusControl = dedtToDate
      end
      object ElLabel1: TElLabel
        Tag = 122
        Left = 282
        Top = 68
        Width = 22
        Height = 13
        AutoSize = False
        Caption = #273#7871'n'
        FocusControl = dedtToDate
      end
      object lblTo: TElLabel
        Tag = 122
        Left = 282
        Top = 13
        Width = 22
        Height = 13
        AutoSize = False
        Caption = #273#7871'n'
        FocusControl = dedtToDate
      end
      object btnThang: TElGraphicButton
        Left = 145
        Top = 6
        Width = 25
        Height = 25
        Cursor = crDefault
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D69D
          71F1D3986DFFD19567FFCE9162FFCB8D5DFFC9895AFFC78655FFC28351FFC283
          51FFC28351FFC28351FFC28351FFC28351FFBA7641E70000000000000000D7A0
          74FFF8F2EDFFF7F0EAFFF6EDE6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2
          D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFC4895CFF0000000000000000D9A3
          79FFF9F3EEFFEBD2BDFFFFFFFFFFEBD3BEFFFFFFFFFFEBD3BFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFC58B5EFF0000000000000000DDA7
          7DFFF9F3EFFFEBD0B9FFEBD0BAFFEACDB4FFEACDB4FFEACDB4FFEBD1BCFFEACD
          B4FFEACDB4FFEACDB4FFEACDB4FFF0E2D8FFC5895BFF0000000000000000DFA9
          81FFF9F3EFFFEACEB6FFFFFFFFFFEACDB4FFFFFFFFFFEACDB4FFFFFFFFFFEACF
          B9FFFFFFFFFFEACDB4FFFFFFFFFFF0E2D8FFC88C5EFF0000000000000000E1AD
          86FFFAF4F0FFEACBB1FFEACCB2FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACD
          B4FFEACDB4FFEACDB4FFE8C8ADFFF0E2D8FFC38553FF0000000000000000E3B0
          8BFFFAF6F1FFEAC9ADFFFFFFFFFFEAC9AFFFFFFFFFFFE9CBB2FFFFFFFFFFEACD
          B4FFFFFFFFFFEACDB4FFFFFFFFFFF0E2D8FFC58554FF0000000000000000E5B3
          8EFFFAF6F2FFE9C5A9FFE9C5ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFEACD
          B4FFEACDB4FFEACDB4FFE8CCB4FFF0E2D8FFC88958FF0000000000000000E7B6
          93FFFBF7F4FFFFFFFFFFFFFFFFFFE8C3A8FFFFFFFFFFE9C5A9FFFFFFFFFFE8C7
          ABFFFFFFFFFFE8C8AFFFFFFFFFFFF7F1EBFFCB8E5EFF0000000000000000E9B9
          97FFFBF7F4FF64A3FFFF63A2FFFF61A1FFFF60A0FFFF5E9EFFFF5B9CFFFF5999
          FFFF5697FFFF5394FFFF5193FFFFFBF7F4FFCE9263FF0000000000000000EBBC
          9AFFFBF7F4FF63A3FFFF78BCFFFF74BAFFFF70B8FFFF6CB7FFFF67B2FFFF60AF
          FFFF59AAFFFF53A6FFFF3A7CFFFFFBF7F4FFD19669FF0000000000000000ECBE
          9DFFFBF7F4FF64A3FFFF63A2FFFF5F9FFFFF5C9DFFFF5798FFFF5395FFFF4C8F
          FFFF468AFFFF4183FFFF3C7EFFFFFBF7F4FFD49A6EFF0000000000000000EEC0
          A0FDFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
          F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD79F73FF0000000000000000EFC1
          A2BEEFC0A1FCEDBF9EFFEBBD9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B1
          8BFFE2AE87FFE0AB83FFDDA87FFFDCA47CFFDAA279F400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        NumGlyphs = 1
        ShadowFollowsColor = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        UseXPThemes = False
        OnClick = btnThangClick
        DockOrientation = doNoOrient
      end
      object btnQuy: TElGraphicButton
        Left = 145
        Top = 35
        Width = 25
        Height = 25
        Cursor = crDefault
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D69D
          71F1D3986DFFD19567FFCE9162FFCB8D5DFFC9895AFFC78655FFC28351FFC283
          51FFC28351FFC28351FFC28351FFC28351FFBA7641E70000000000000000D7A0
          74FFF8F2EDFFF7F0EAFFF6EDE6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2
          D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFC4895CFF0000000000000000D9A3
          79FFF9F3EEFFEBD2BDFFFFFFFFFFEBD3BEFFFFFFFFFFEBD3BFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFC58B5EFF0000000000000000DDA7
          7DFFF9F3EFFFEBD0B9FFEBD0BAFFEACDB4FFEACDB4FFEACDB4FFEBD1BCFFEACD
          B4FFEACDB4FFEACDB4FFEACDB4FFF0E2D8FFC5895BFF0000000000000000DFA9
          81FFF9F3EFFFEACEB6FFFFFFFFFFEACDB4FFFFFFFFFFEACDB4FFFFFFFFFFEACF
          B9FFFFFFFFFFEACDB4FFFFFFFFFFF0E2D8FFC88C5EFF0000000000000000E1AD
          86FFFAF4F0FFEACBB1FFEACCB2FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACD
          B4FFEACDB4FFEACDB4FFE8C8ADFFF0E2D8FFC38553FF0000000000000000E3B0
          8BFFFAF6F1FFEAC9ADFFFFFFFFFFEAC9AFFFFFFFFFFFE9CBB2FFFFFFFFFFEACD
          B4FFFFFFFFFFEACDB4FFFFFFFFFFF0E2D8FFC58554FF0000000000000000E5B3
          8EFFFAF6F2FFE9C5A9FFE9C5ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFEACD
          B4FFEACDB4FFEACDB4FFE8CCB4FFF0E2D8FFC88958FF0000000000000000E7B6
          93FFFBF7F4FFFFFFFFFFFFFFFFFFE8C3A8FFFFFFFFFFE9C5A9FFFFFFFFFFE8C7
          ABFFFFFFFFFFE8C8AFFFFFFFFFFFF7F1EBFFCB8E5EFF0000000000000000E9B9
          97FFFBF7F4FF64A3FFFF63A2FFFF61A1FFFF60A0FFFF5E9EFFFF5B9CFFFF5999
          FFFF5697FFFF5394FFFF5193FFFFFBF7F4FFCE9263FF0000000000000000EBBC
          9AFFFBF7F4FF63A3FFFF78BCFFFF74BAFFFF70B8FFFF6CB7FFFF67B2FFFF60AF
          FFFF59AAFFFF53A6FFFF3A7CFFFFFBF7F4FFD19669FF0000000000000000ECBE
          9DFFFBF7F4FF64A3FFFF63A2FFFF5F9FFFFF5C9DFFFF5798FFFF5395FFFF4C8F
          FFFF468AFFFF4183FFFF3C7EFFFFFBF7F4FFD49A6EFF0000000000000000EEC0
          A0FDFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
          F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD79F73FF0000000000000000EFC1
          A2BEEFC0A1FCEDBF9EFFEBBD9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B1
          8BFFE2AE87FFE0AB83FFDDA87FFFDCA47CFFDAA279F400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        NumGlyphs = 1
        ShadowFollowsColor = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        UseXPThemes = False
        OnClick = btnQuyClick
        DockOrientation = doNoOrient
      end
      object btnNgay: TElGraphicButton
        Left = 145
        Top = 63
        Width = 25
        Height = 25
        Cursor = crDefault
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D69D
          71F1D3986DFFD19567FFCE9162FFCB8D5DFFC9895AFFC78655FFC28351FFC283
          51FFC28351FFC28351FFC28351FFC28351FFBA7641E70000000000000000D7A0
          74FFF8F2EDFFF7F0EAFFF6EDE6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2
          D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFC4895CFF0000000000000000D9A3
          79FFF9F3EEFFEBD2BDFFFFFFFFFFEBD3BEFFFFFFFFFFEBD3BFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFC58B5EFF0000000000000000DDA7
          7DFFF9F3EFFFEBD0B9FFEBD0BAFFEACDB4FFEACDB4FFEACDB4FFEBD1BCFFEACD
          B4FFEACDB4FFEACDB4FFEACDB4FFF0E2D8FFC5895BFF0000000000000000DFA9
          81FFF9F3EFFFEACEB6FFFFFFFFFFEACDB4FFFFFFFFFFEACDB4FFFFFFFFFFEACF
          B9FFFFFFFFFFEACDB4FFFFFFFFFFF0E2D8FFC88C5EFF0000000000000000E1AD
          86FFFAF4F0FFEACBB1FFEACCB2FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACD
          B4FFEACDB4FFEACDB4FFE8C8ADFFF0E2D8FFC38553FF0000000000000000E3B0
          8BFFFAF6F1FFEAC9ADFFFFFFFFFFEAC9AFFFFFFFFFFFE9CBB2FFFFFFFFFFEACD
          B4FFFFFFFFFFEACDB4FFFFFFFFFFF0E2D8FFC58554FF0000000000000000E5B3
          8EFFFAF6F2FFE9C5A9FFE9C5ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFEACD
          B4FFEACDB4FFEACDB4FFE8CCB4FFF0E2D8FFC88958FF0000000000000000E7B6
          93FFFBF7F4FFFFFFFFFFFFFFFFFFE8C3A8FFFFFFFFFFE9C5A9FFFFFFFFFFE8C7
          ABFFFFFFFFFFE8C8AFFFFFFFFFFFF7F1EBFFCB8E5EFF0000000000000000E9B9
          97FFFBF7F4FF64A3FFFF63A2FFFF61A1FFFF60A0FFFF5E9EFFFF5B9CFFFF5999
          FFFF5697FFFF5394FFFF5193FFFFFBF7F4FFCE9263FF0000000000000000EBBC
          9AFFFBF7F4FF63A3FFFF78BCFFFF74BAFFFF70B8FFFF6CB7FFFF67B2FFFF60AF
          FFFF59AAFFFF53A6FFFF3A7CFFFFFBF7F4FFD19669FF0000000000000000ECBE
          9DFFFBF7F4FF64A3FFFF63A2FFFF5F9FFFFF5C9DFFFF5798FFFF5395FFFF4C8F
          FFFF468AFFFF4183FFFF3C7EFFFFFBF7F4FFD49A6EFF0000000000000000EEC0
          A0FDFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
          F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD79F73FF0000000000000000EFC1
          A2BEEFC0A1FCEDBF9EFFEBBD9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B1
          8BFFE2AE87FFE0AB83FFDDA87FFFDCA47CFFDAA279F400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        NumGlyphs = 1
        ShadowFollowsColor = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        UseXPThemes = False
        OnClick = btnNgayClick
        DockOrientation = doNoOrient
      end
      object rbMonth: TElRadioButton
        Left = 12
        Top = 11
        Width = 112
        Height = 17
        Cursor = crDefault
        Checked = True
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Xem theo &th'#225'ng'
        TabStop = False
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = rbMonthClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbQuarter: TElRadioButton
        Left = 12
        Top = 40
        Width = 100
        Height = 17
        Cursor = crDefault
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'X&em theo q&u'#253
        TabStop = False
        TabOrder = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = rbQuarterClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object rbDate: TElRadioButton
        Left = 12
        Top = 68
        Width = 107
        Height = 17
        Cursor = crDefault
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        Caption = 'Xem theo &ng'#224'y'
        TabStop = False
        TabOrder = 10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = rbDateClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object dedtFromDate: TdxDateEdit
        Left = 185
        Top = 65
        Width = 90
        Cursor = crIBeam
        Enabled = False
        TabOrder = 11
        Alignment = taCenter
        Date = -700000.000000000000000000
        DateButtons = [btnToday]
        UseEditMask = True
        StoredValues = 5
      end
      object spnFromQuarter: TdxSpinEdit
        Left = 185
        Top = 38
        Width = 37
        Cursor = crIBeam
        Enabled = False
        TabOrder = 6
        Alignment = taCenter
        MaxValue = 4.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        StoredValues = 49
      end
      object spnFromYearQ: TdxSpinEdit
        Left = 223
        Top = 38
        Width = 52
        Cursor = crIBeam
        Enabled = False
        TabOrder = 7
        Alignment = taCenter
        MaxValue = 2700.000000000000000000
        MinValue = 1990.000000000000000000
        Value = 1990.000000000000000000
        StoredValues = 49
      end
      object spnFromYear: TdxSpinEdit
        Left = 223
        Top = 11
        Width = 52
        Cursor = crIBeam
        TabOrder = 2
        Alignment = taCenter
        MaxValue = 2700.000000000000000000
        MinValue = 1990.000000000000000000
        Value = 1990.000000000000000000
        StoredValues = 49
      end
      object spnFromMonth: TdxSpinEdit
        Left = 185
        Top = 11
        Width = 37
        Cursor = crIBeam
        TabOrder = 1
        Alignment = taCenter
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        StoredValues = 49
      end
      object spnToMonth: TdxSpinEdit
        Left = 313
        Top = 11
        Width = 36
        Cursor = crIBeam
        TabOrder = 3
        Alignment = taCenter
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        StoredValues = 49
      end
      object spnToYear: TdxSpinEdit
        Left = 350
        Top = 11
        Width = 52
        Cursor = crIBeam
        TabOrder = 4
        Alignment = taCenter
        MaxValue = 2700.000000000000000000
        MinValue = 1990.000000000000000000
        Value = 1990.000000000000000000
        StoredValues = 49
      end
      object spnToYearQ: TdxSpinEdit
        Left = 350
        Top = 38
        Width = 52
        Cursor = crIBeam
        Enabled = False
        TabOrder = 9
        Alignment = taCenter
        MaxValue = 2700.000000000000000000
        MinValue = 1990.000000000000000000
        Value = 1990.000000000000000000
        StoredValues = 49
      end
      object spnToQuarter: TdxSpinEdit
        Left = 313
        Top = 38
        Width = 36
        Cursor = crIBeam
        Enabled = False
        TabOrder = 8
        Alignment = taCenter
        MaxValue = 4.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        StoredValues = 49
      end
      object dedtToDate: TdxDateEdit
        Left = 313
        Top = 65
        Width = 90
        Cursor = crIBeam
        Enabled = False
        TabOrder = 12
        Alignment = taCenter
        Date = -700000.000000000000000000
        DateButtons = [btnToday]
        UseEditMask = True
        StoredValues = 5
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 655
      Width = 418
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object btnReadToGrid: TElPopupButton
        Left = 9
        Top = 1
        Width = 95
        Height = 25
        Cursor = crDefault
        Hint = #272#7885'c d'#7919' li'#7879'u l'#234'n danh s'#225'ch '
        DrawDefaultFrame = False
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000552E
          019F795735FF795735FF795735FF795735FF795735FF795735FF795735FF7957
          35FF795735FF795735FF795735FF795735FF795735FF00000000CB791BBCFDC8
          7CFFF8C47CFFFCCA81FFFBCA84FFFCCB87FFFED08EFFFDD092FFFED59AFFFED8
          A0FFFEDAA5FFFEDEADFFFEE1B1FFFEECBCFFA16C2DE7787878FFE6972EE1CED1
          D8FFDCDDDEFFC5C8C9FFD8DADBFFD6D7D8FFCACBCEFFDDE0E2FFCBCED1FFD3D6
          DBFFDADCE2FFC5CAD0FFDDE1E8FFDAE2EEFFC99549F8787878FFDB902DDAE4E9
          F1FFFEFEFEFFDADBDCFFF8F8FBFFF5F6F7FFDEDEE0FFFEFEFEFFE4E1DEFFFDF5
          EEFFFEFEF8FFDDDAD6FFFEFEFEFFF0F2F7FFBC883FF5787878FFDC922FDACACE
          D5FFDCDCDEFFC2C2C2FFD5D5D5FFD2D2D3FFC3C3C4FFE0DCDAFFAEC2D6FFD2D2
          D2FFD2D2D2FFA0B8D6FFE0DCDAFFD3D7DCFFBC883EF5787878FFDC9430DAD8DD
          E4FFF1F1F2FFD0D0D0FFEBEBEBFFE8E8E8FFD3D3D3FFF5F3F0FFD2D2D2FFEBEB
          ECFFF8F6F2FFD2D2D2FFF3F2EEFFE3E6EBFFBC873BF5787878FFDC9532DADBE0
          E7FFF2F3F3FFD2D2D2FFEBEBECFFEBEBECFFD7D7D8FFF9F6F3FFD2D2D2FFEBEB
          ECFFF8F6F2FFD2D2D2FFF8F6F2FFE6E8EDFFBC8639F5787878FFDD9635DAC8CC
          D5FFD8DADBFFBFBFC1FFD2D2D2FFD0D0D1FFC2C2C2FFDEDAD7FFAAC2D3FFD2D2
          D2FFD2D2D2FF9AB8D3FFDCD7D6FFD1D2D7FFBC8638F5787878FFDD9636DAE4E9
          F2FFFEFEFEFFDBDBDCFFF7F7F8FFF5F6F6FFDDDEE1FFFEFEFEFFE4E1E0FFFEF2
          EEFFFEFCF8FFDDDAD7FFFEFEFEFFEEF1F6FFBB8436F5787878FFE09A3ADAD0D7
          E2FFE0E2E8FFC9CACFFFDADCE0FFD8DADDFFCACCCFFFE0E1E3FFCBCCD0FFD6D7
          DAFFDBDCDEFFC5C8C9FFDDDEE0FFD8DBDEFFBD8436F5787878FFF0A747DAF1E0
          C8FFEDCB9DFFEECC9EFFEDCA99FFEDC896FFEEC892FFECC38EFFEDC38DFFECC2
          8BFFECC188FFEDC187FFEBBC81FFF2CC97FFCE8D38F5787878FFF3A541DAF2A6
          22FFE79602FFE89806FFE99908FFE99A0AFFE99B0CFFE99B0EFFEB9D10FFEB9E
          13FFEC9E15FFEC9F18FFECA01BFFF8A622FFD18321F6787878FFFCAE46E1E89A
          1CFFDA8500FFDC8800FFDD8A00FFDD8B00FFDD8C00FFDE8C00FFDE8E01FFDE8F
          01FFE09001FFE09101FFDE9101FFEE9B0CFFD88A26F9787878FFE48B2EA6FED6
          85FFFEBF5FFFFEC15FFFFEBF5EFFFEBF5CFFFEBE5AFFFEBD59FFFEBC57FFFEBC
          55FFFEBB53FFFEBB52FFFEBA4EFFFEC461FFB06C21BE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = #272#7885'c l'#234'n &l'#432#7899'i'
        TabOrder = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = btnReadToGridClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnPreview: TElPopupButton
        Left = 111
        Top = 1
        Width = 95
        Height = 25
        Cursor = crDefault
        Hint = 'Xem tr'#432#7899'c khi in'
        ImageIndex = 16
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
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Xem tr'#432#7899'c in'
        TabOrder = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = btnPreviewClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnDirectPrint: TElPopupButton
        Left = 213
        Top = 1
        Width = 95
        Height = 25
        Cursor = crDefault
        Hint = 'In ra m'#225'y in (Ctrl+P)'
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
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&In tr'#7921'c ti'#7871'p'
        TabOrder = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDirectPrintClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnDesign: TElPopupButton
        Left = 316
        Top = 1
        Width = 95
        Height = 25
        Cursor = crDefault
        Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
        ImageIndex = 6
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
        NumGlyphs = 1
        UseXPThemes = True
        Caption = 'S'#7917'a l'#7841'i &m'#7851'u'
        TabOrder = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = acDesignerExecute
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 537
      Width = 418
      Height = 118
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 3
      Visible = False
      object Panel2: TPanel
        Left = 208
        Top = 2
        Width = 208
        Height = 32
        BevelOuter = bvNone
        TabOrder = 0
        object ElLabel9: TElLabel
          Tag = 123
          Left = 8
          Top = 6
          Width = 41
          Height = 16
          AutoSize = False
          Caption = 'English'
        end
        object dxDBEdit7: TdxDBEdit
          Left = 48
          Top = 4
          Width = 155
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          DataField = 'ENGGROUP'
          DataSource = dsListReport
        end
      end
      object Panel7: TPanel
        Left = 6
        Top = 2
        Width = 210
        Height = 28
        BevelOuter = bvNone
        TabOrder = 1
        object ElLabel10: TElLabel
          Tag = 123
          Left = 2
          Top = 6
          Width = 150
          Height = 16
          AutoSize = False
          Caption = 'Nh'#243'm TV'
        end
        object dxDBEdit2: TdxDBEdit
          Left = 49
          Top = 4
          Width = 156
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          DataField = 'TENNHOM'
          DataSource = dsListReport
        end
      end
      object dxDBMemo1: TdxDBMemo
        Left = 2
        Top = 32
        Width = 414
        TabOrder = 2
        DataField = 'WHERESQLDETAIL'
        DataSource = dsListReport
        Height = 49
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 418
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        418
        34)
      object dxDBEdit1: TdxDBEdit
        Left = 10
        Top = 5
        Width = 400
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Alignment = taCenter
        DataField = 'REPORT_NAME'
        DataSource = dsListReport
        ReadOnly = True
        StoredValues = 65
      end
    end
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 40
    Top = 272
    StyleName = 'XP Style'
    object acPreview: TAction
      Category = 'Report'
      Caption = 'Xem tr'#173#237'c khi in'
      ImageIndex = 16
      ShortCut = 16472
      OnExecute = acPreviewExecute
    end
    object acDesigner: TAction
      Category = 'Report'
      Caption = 'Thi'#213't k'#213' l'#185'i m'#201'u'
      ImageIndex = 6
      OnExecute = acDesignerExecute
    end
    object acSubProcess: TAction
      Caption = 'Cac thuc hien phu'
      OnExecute = acSubProcessExecute
    end
    object acAfterPerform: TAction
      Caption = 'C'#184'c th'#249'c hi'#214'n ph'#244' sau'
    end
    object acExeBefore: TAction
      Category = 'Report'
      Caption = 'C'#184'c th'#249'c hi'#214'n tr'#173#237'c'
    end
    object acSeeDetail: TAction
      Caption = 'Xem chi ti'#213't tr'#170'n phi'#213'u'
    end
    object acChangeNode: TAction
      Caption = 'acChangeNode'
      OnExecute = acChangeNodeExecute
    end
    object acPrintDirect: TAction
      Category = 'Execute'
      Caption = 'acPrintDirect'
      ShortCut = 16464
      OnExecute = acPrintDirectExecute
    end
    object acLoadToGrid: TAction
      Category = 'Execute'
      Caption = 'acLoadToGrid'
    end
    object acPreviewDirect: TAction
      Category = 'Execute'
      Caption = 'acPreviewDirect'
    end
    object acPreviewFromGrid: TAction
      Category = 'Execute'
      Caption = 'acPreviewFromGrid'
    end
    object acDesignFromGrid: TAction
      Category = 'Execute'
      Caption = 'acDesignFromGrid'
    end
    object acCompare1: TAction
      Category = 'Report'
      Caption = 'acCompare1'
      OnExecute = acCompare1Execute
    end
    object acCompare2: TAction
      Category = 'Report'
      Caption = 'acCompare2'
    end
    object acSetButtonsStatus: TAction
      Caption = 'acSetButtonsStatus'
      OnExecute = acSetButtonsStatusExecute
    end
  end
  object bmReport: TdxBarManager
    AutoDockColor = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default'
      'Thang'
      'Quy'
      'Ngay')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    DockColor = clBtnFace
    Images = ImageList1
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = False
    Left = 64
    Top = 272
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton11: TdxBarButton
      Caption = 'Thay '#273#7893'i t'#234'n b'#225'o c'#225'o F2'
      Category = 0
      Hint = 'Thay '#273#7893'i t'#234'n b'#225'o c'#225'o   F2'
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Hi'#7875'n th'#7883' c'#7897't th'#7913' t'#7921' s'#7855'p x'#7871'p'
      Category = 0
      Hint = 'Hi'#7875'n th'#7883' c'#7897't th'#7913' t'#7921' s'#7855'p x'#7871'p'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxBarButton12Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #272#7885'c d'#7919' li'#7879'u l'#234'n l'#432#7899'i'
      Category = 0
      Hint = #272#7885'c d'#7919' li'#7879'u l'#234'n l'#432#7899'i'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000552E
        019F795735FF795735FF795735FF795735FF795735FF795735FF795735FF7957
        35FF795735FF795735FF795735FF795735FF795735FF00000000CB791BBCFDC8
        7CFFF8C47CFFFCCA81FFFBCA84FFFCCB87FFFED08EFFFDD092FFFED59AFFFED8
        A0FFFEDAA5FFFEDEADFFFEE1B1FFFEECBCFFA16C2DE7787878FFE6972EE1CED1
        D8FFDCDDDEFFC5C8C9FFD8DADBFFD6D7D8FFCACBCEFFDDE0E2FFCBCED1FFD3D6
        DBFFDADCE2FFC5CAD0FFDDE1E8FFDAE2EEFFC99549F8787878FFDB902DDAE4E9
        F1FFFEFEFEFFDADBDCFFF8F8FBFFF5F6F7FFDEDEE0FFFEFEFEFFE4E1DEFFFDF5
        EEFFFEFEF8FFDDDAD6FFFEFEFEFFF0F2F7FFBC883FF5787878FFDC922FDACACE
        D5FFDCDCDEFFC2C2C2FFD5D5D5FFD2D2D3FFC3C3C4FFE0DCDAFFAEC2D6FFD2D2
        D2FFD2D2D2FFA0B8D6FFE0DCDAFFD3D7DCFFBC883EF5787878FFDC9430DAD8DD
        E4FFF1F1F2FFD0D0D0FFEBEBEBFFE8E8E8FFD3D3D3FFF5F3F0FFD2D2D2FFEBEB
        ECFFF8F6F2FFD2D2D2FFF3F2EEFFE3E6EBFFBC873BF5787878FFDC9532DADBE0
        E7FFF2F3F3FFD2D2D2FFEBEBECFFEBEBECFFD7D7D8FFF9F6F3FFD2D2D2FFEBEB
        ECFFF8F6F2FFD2D2D2FFF8F6F2FFE6E8EDFFBC8639F5787878FFDD9635DAC8CC
        D5FFD8DADBFFBFBFC1FFD2D2D2FFD0D0D1FFC2C2C2FFDEDAD7FFAAC2D3FFD2D2
        D2FFD2D2D2FF9AB8D3FFDCD7D6FFD1D2D7FFBC8638F5787878FFDD9636DAE4E9
        F2FFFEFEFEFFDBDBDCFFF7F7F8FFF5F6F6FFDDDEE1FFFEFEFEFFE4E1E0FFFEF2
        EEFFFEFCF8FFDDDAD7FFFEFEFEFFEEF1F6FFBB8436F5787878FFE09A3ADAD0D7
        E2FFE0E2E8FFC9CACFFFDADCE0FFD8DADDFFCACCCFFFE0E1E3FFCBCCD0FFD6D7
        DAFFDBDCDEFFC5C8C9FFDDDEE0FFD8DBDEFFBD8436F5787878FFF0A747DAF1E0
        C8FFEDCB9DFFEECC9EFFEDCA99FFEDC896FFEEC892FFECC38EFFEDC38DFFECC2
        8BFFECC188FFEDC187FFEBBC81FFF2CC97FFCE8D38F5787878FFF3A541DAF2A6
        22FFE79602FFE89806FFE99908FFE99A0AFFE99B0CFFE99B0EFFEB9D10FFEB9E
        13FFEC9E15FFEC9F18FFECA01BFFF8A622FFD18321F6787878FFFCAE46E1E89A
        1CFFDA8500FFDC8800FFDD8A00FFDD8B00FFDD8C00FFDE8C00FFDE8E01FFDE8F
        01FFE09001FFE09101FFDE9101FFEE9B0CFFD88A26F9787878FFE48B2EA6FED6
        85FFFEBF5FFFFEC15FFFFEBF5EFFFEBF5CFFFEBE5AFFFEBD59FFFEBC57FFFEBC
        55FFFEBB53FFFEBB52FFFEBA4EFFFEC461FFB06C21BE00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton1Click
    end
    object bbtnPreview: TdxBarButton
      Caption = 'Xem tr'#432#7899'c khi in'
      Category = 0
      Hint = 'Xem tr'#432#7899'c khi in'
      Visible = ivAlways
      Glyph.Data = {
        66060000424D6606000000000000360000002800000017000000160000000100
        1800000000003006000000000000000000000000000000000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEF4D4D4D4D4D4DDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEF4D4D4D4D4D4D4D4D
        4DDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DA6A6A6
        4D4D4D4D4D4DDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6D3D3D3D3
        D3D3A6A6A64D4D4DA6A6A6DEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6
        A6D3D3D3D3D3D3FFFF4DA6A6A6A6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4D4D4DD3D3D3D3D3D3D3D3D3D3D3D3A6A6A6D3D3D34D4D4DDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF4D4D4DD3D3D3FFFF4DD3D3D3D3D3D3A6A6A6D3D3D3
        4D4D4DDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6FFFF4DFFFF4DD3
        D3D3A6A6A6A6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D
        4DA6A6A6D3D3D3D3D3D3A6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D
        4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4D4D4DD3D3D34D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000}
      OnClick = bbtnPreviewClick
    end
    object bbtnDirectPrint: TdxBarButton
      Caption = 'Tr'#7921'c ti'#7871'p ra m'#225'y in'
      Category = 0
      Hint = 'Tr'#7921'c ti'#7871'p ra m'#225'y in'
      Visible = ivAlways
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
      OnClick = bbtnDirectPrintClick
    end
    object bbtnDesign: TdxBarButton
      Caption = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      Category = 0
      Enabled = False
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      Visible = ivAlways
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
      OnClick = bbtnDesignClick
    end
    object bbtnDefReport: TdxBarButton
      Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u b'#225'o c'#225'o'
      Category = 0
      Hint = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u b'#225'o c'#225'o'
      Visible = ivAlways
      OnClick = bbtnDefReportClick
    end
    object dxBarButton5: TdxBarButton
      Caption = 'C'#225'c th'#244'ng s'#7889' li'#234'n quan b'#225'o c'#225'o'
      Category = 0
      Hint = 'C'#225'c th'#244'ng s'#7889' li'#234'n quan b'#225'o c'#225'o'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Xu'#7845't danh s'#225'ch ra Excel'
      Category = 0
      Hint = 'Xu'#7845't danh s'#225'ch ra Excel'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object bbtnAddReport: TdxBarButton
      Caption = 'Th'#234'm b'#225'o c'#225'o ho'#224'n to'#224'n m'#7899'i'
      Category = 0
      Hint = 'Th'#234'm b'#225'o c'#225'o ho'#224'n to'#224'n m'#7899'i'
      Visible = ivAlways
      OnClick = bbtnAddReportClick
    end
    object bbtnDelReport: TdxBarButton
      Caption = 'X'#243'a b'#7887' b'#225'o c'#225'o n'#224'y'
      Category = 0
      Hint = 'X'#243'a b'#7887' b'#225'o c'#225'o n'#224'y'
      Visible = ivAlways
      OnClick = bbtnDelReportClick
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Th'#234'm b'#225'o c'#225'o gi'#7889'ng b'#225'o c'#225'o n'#224'y'
      Category = 0
      Hint = 'Th'#234'm b'#225'o c'#225'o gi'#7889'ng b'#225'o c'#225'o n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Trong th'#225'ng n'#224'y'
      Category = 1
      Hint = 'Trong th'#225'ng n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Trong th'#225'ng tr'#432#7899'c'
      Category = 1
      Hint = 'Trong th'#225'ng tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Th'#225'ng n'#224'y n'#259'm tr'#432#7899'c'
      Category = 1
      Hint = 'Th'#225'ng n'#224'y n'#259'm tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Qu'#253' n'#224'y'
      Category = 2
      Hint = 'Qu'#253' n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Qu'#253' tr'#432#7899'c'
      Category = 2
      Hint = 'Qu'#253' tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Qu'#253' n'#224'y n'#259'm tr'#432#7899'c'
      Category = 2
      Hint = 'Qu'#253' n'#224'y n'#259'm tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Ng'#224'y h'#244'm nay'
      Category = 3
      Hint = 'Ng'#224'y h'#244'm nay'
      Visible = ivAlways
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Ng'#224'y h'#244'm qua'
      Category = 3
      Hint = 'Ng'#224'y h'#244'm qua'
      Visible = ivAlways
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Tu'#7847'n n'#224'y'
      Category = 3
      Hint = 'Tu'#7847'n n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = 'Tu'#7847'n tr'#432#7899'c'
      Category = 3
      Hint = 'Tu'#7847'n tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = 'Trong n'#259'm nay'
      Category = 1
      Hint = 'Trong n'#259'm nay'
      Visible = ivAlways
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Trong n'#259'm tr'#432#7899'c'
      Category = 1
      Hint = 'Trong n'#259'm tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = 'Th'#225'ng n'#224'y'
      Category = 3
      Hint = 'Th'#225'ng n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Th'#225'ng tr'#432#7899'c'
      Category = 3
      Hint = 'Th'#225'ng tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = 'N'#259'm n'#224'y'
      Category = 3
      Hint = 'N'#259'm n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = 'N'#259'm tr'#432#7899'c'
      Category = 3
      Hint = 'N'#259'm tr'#432#7899'c'
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object bbtnCheckallReport: TdxBarButton
      Caption = 'Ki'#7875'm tra b'#225'o c'#225'o trong nh'#243'm'
      Category = 0
      Hint = 'Ki'#7875'm tra b'#225'o c'#225'o trong nh'#243'm'
      Visible = ivNever
      OnClick = bbtnCheckallReportClick
    end
    object btnCheckReport: TdxBarButton
      Caption = 'Ki'#7875'm tra b'#225'o c'#225'o n'#224'y'
      Category = 0
      Hint = 'Ki'#7875'm tra b'#225'o c'#225'o n'#224'y'
      Visible = ivNever
      OnClick = btnCheckReportClick
    end
    object bbtnSEtDefaultAll: TdxBarButton
      Caption = 'L'#7853'p m'#7863'c '#273#7883'nh t'#7845't c'#7843' c'#225'c b'#225'o c'#225'o'
      Category = 0
      Hint = 'L'#7853'p m'#7863'c '#273#7883'nh t'#7845't c'#7843' c'#225'c b'#225'o c'#225'o'
      Visible = ivNever
      OnClick = bbtnSEtDefaultAllClick
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 64
    Top = 304
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ImageList1: TImageList
    BlendColor = clBtnFace
    BkColor = 13160660
    Left = 120
    Top = 272
    Bitmap = {
      494C010104000900040010001000D4D0C800FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4000000000000000000C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40000000000FFFF00000000
      0000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400DEEDEF00DEEDEF00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D4004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D00C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40000000000FFFF00008484
      000000000000C8D0D400C8D0D400C8D0D400C8D0D400DEEDEF004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00DEED
      EF00DEEDEF004D4D4D00DEEDEF00C8D0D400C8D0D400C8D0D4004D4D4D00D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D3004D4D
      4D004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D004D4D
      4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D00DEED
      EF004D4D4D004D4D4D00DEEDEF00C8D0D400C8D0D4004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D00D3D3D3004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4004DFFFF00A6A6
      A6004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D004D4D4D004D4D4D00A6A6
      A6004D4D4D004D4D4D00DEEDEF00C8D0D400C8D0D4004D4D4D00D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D3004DFFFF004DFFFF004DFFFF00D3D3D300D3D3
      D3004D4D4D004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00C8D0D4004D4D4D004DFF
      FF00A6A6A6004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D40000000000C8D0D40084848400848484008484840000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D4004D4D4D00A6A6A600D3D3D300A6A6A6004D4D
      4D00A6A6A600DEEDEF00DEEDEF00C8D0D400C8D0D4004D4D4D00D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300A6A6A600A6A6A600A6A6A600D3D3D300D3D3
      D300D3D3D3004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00C8D0D4004D4D4D004DFF
      FF00D3D3D3004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400000000000000000084848400848484008484840000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D4004D4D4D00D3D3D300D3D3D300D3D3D300A6A6A600D3D3
      D3004D4D4D00DEEDEF00DEEDEF00C8D0D400C8D0D4004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D00D3D3D300D3D3D3004D4D4D00C8D0D400C8D0D400C8D0D4004D4D4D00FFFF
      FF00A6A6A600FFFFFF00D3D3D300FFFFFF004D4D4D00C8D0D400C8D0D4004D4D
      4D004DFFFF00A6A6A600C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400000000008484000000000000848484008484840000000000FFFF00008484
      84008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D4004D4D4D00D3D3D300FFFF4D00D3D3D300A6A6A600D3D3
      D3004D4D4D00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D4004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00D3D3
      D300D3D3D3004D4D4D004D4D4D00C8D0D400C8D0D400C8D0D4004D4D4D00FFFF
      FF00A6A6A600FFFFFF00FFFFFF00FFFFFF004D4D4D00FFFFFF00FFFFFF004D4D
      4D004D4D4D004D4DA6004D4D4D00C8D0D400C8D0D40000000000000000000000
      000000000000FFFF000084840000000000008484840000000000FFFF00000000
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D4004D4D4D00A6A6A600FFFF4D00FFFF4D00A6A6A600A6A6
      A6004D4D4D00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D4004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D00D3D3D3004D4D4D00C8D0D400C8D0D400C8D0D4004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00FFFFFF00FFFFFF004D4D
      4D004D4D4D004D4D4D00C8D0D400C8D0D40000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000848400000000000000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D4004D4D4D00A6A6A600D3D3D300A6A6A6004D4D
      4D00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400FFFFFF004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00FFFFFF004D4D
      4D004D4D4D004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400A64D4D00A64D
      4D00A64D4D00A64D4D00A64D4D00A64D4D00A64D4D00FFFFFF00FFFFFF004D4D
      4D00C8D0D400C8D0D400C8D0D400C8D0D40000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000848400008484840000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D40000000000FFFF000084840000848484008484840000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D004D4D4D004D4D4D00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D4004D4D4D00FFFFFF004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D00FFFF
      FF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400A64D4D00A64D4D00A64D4D00A64D4D00A64D4D00A64D
      4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400000000008484000084848400848484008484840000000000FFFF00008484
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D00D3D3D300DEEDEF00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D4004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400A64D4D00A64D4D00A64D4D00A64D4D00A64D4D00A64D
      4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D40000000000C8D0D4008484840084848400848484008484840000000000FFFF
      00008484000000000000C8D0D400C8D0D400C8D0D400DEEDEF00C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D4004D4D4D004D4D4D00DEEDEF00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D4004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D40084848400848484008484840084848400848484000000
      0000FFFF000000000000C8D0D400C8D0D400C8D0D400DEEDEF00DEEDEF00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEEDEF00DEED
      EF00DEEDEF00DEEDEF00DEEDEF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D40000000000000000000000000000000000000000000000
      00000000000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF9FFFFFFFFFFFFFFF8F8001
      E00FFFDFFF878001C007FFCFFF83BFC18003FFC7FF83BF018003C043F403BE01
      8003C043F003BC018001C063F003BC01C001C0018003BC01E001C0030003BE01
      F003C00F0003BFC1F00FFC0FF003BF01F00FFC0FF003BF01F007FC0FF403BF01
      F807FFFFFC038001FFFFFFFFFC03FFFF00000000000000000000000000000000
      000000000000}
  end
  object dsListReport: TDataSource
    DataSet = qryListReport
    Left = 121
    Top = 332
  end
  object DlgSave: TSaveDialog
    Filter = 
      'Excel Files (*.xls)|*.xls|HTML Files (*.htm, *.html)|*.html; *.h' +
      'tm |XML Files (*.xml)|*.xml'
    Left = 36
    Top = 304
  end
  object qryListReport: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYSREPORT'
      '  WHERE (REPORT_ID = :OLD_REPORT_ID)')
    EditSQL.Strings = (
      'UPDATE SYSREPORT'
      '  SET LOAIBAOCAO = :LOAIBAOCAO,'
      '      ORDER_FIELD = :ORDER_FIELD,'
      '      REPORT_NAME = :REPORT_NAME,'
      '      ENGLISH_NAME = :ENGLISH_NAME,'
      '      KEYFIELD = :KEYFIELD,'
      '      SQLSELECT = :SQLSELECT,'
      '      ENGTEMPLATE = :ENGTEMPLATE,'
      '      FILETEMPLATE = :FILETEMPLATE,'
      '      COLUMNCOUNT = :COLUMNCOUNT,'
      '      SQLSUB_1 = :SQLSUB_1,'
      '      SQLSUB_2 = :SQLSUB_2,'
      '      SQLSUB_3 = :SQLSUB_3,'
      '      CONDITIONTYPE = :CONDITIONTYPE,'
      '      WHERESQLDETAIL = :WHERESQLDETAIL,'
      '      ALLOW_SORT = :ALLOW_SORT,'
      '      OTHERCONDITION = :OTHERCONDITION,'
      '      LOAIDOITUONG = :LOAIDOITUONG,'
      '      LOAITAIKHOAN = :LOAITAIKHOAN,'
      '      BEGINTEXTNAME = :BEGINTEXTNAME,'
      '      LOAIDTKHAC = :LOAIDTKHAC,'
      '      RPT_STATUS = :RPT_STATUS,'
      '      TENNHOM = :TENNHOM,'
      '      DOCID_FN = :DOCID_FN,'
      '      PERIOD_FN = :PERIOD_FN,'
      '      BEGINTEXT = :BEGINTEXT,'
      '      BRANCH_FN = :BRANCH_FN,'
      '      ENGGROUP = :ENGGROUP '
      '  WHERE (REPORT_ID = :OLD_REPORT_ID)')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsReport
    InsertSQL.Strings = (
      'INSERT INTO SYSREPORT ('
      '    REPORT_ID,'
      '    LOAIBAOCAO,'
      '    ORDER_FIELD,'
      '    REPORT_NAME,'
      '    ENGLISH_NAME,'
      '    KEYFIELD,'
      '    SQLSELECT,'
      '    ENGTEMPLATE,'
      '    FILETEMPLATE,'
      '    COLUMNCOUNT,'
      '    SQLSUB_1,'
      '    SQLSUB_2,'
      '    SQLSUB_3,'
      '    CONDITIONTYPE,'
      '    WHERESQLDETAIL,'
      '    ALLOW_SORT,'
      '    OTHERCONDITION,'
      '    LOAIDOITUONG,'
      '    LOAITAIKHOAN,'
      '    BEGINTEXTNAME,'
      '    LOAIDTKHAC,'
      '    TENNHOM,'
      '    RPT_STATUS,'
      '    DOCID_FN,'
      '    PERIOD_FN,'
      '    BEGINTEXT,'
      '    BRANCH_FN,'
      '    ENGGROUP )'
      '  VALUES ('
      '    :REPORT_ID,'
      '    :LOAIBAOCAO,'
      '    :ORDER_FIELD,'
      '    :REPORT_NAME,'
      '    :ENGLISH_NAME,'
      '    :KEYFIELD,'
      '    :SQLSELECT,'
      '    :ENGTEMPLATE,'
      '    :FILETEMPLATE,'
      '    :COLUMNCOUNT,'
      '    :SQLSUB_1,'
      '    :SQLSUB_2,'
      '    :SQLSUB_3,'
      '    :CONDITIONTYPE,'
      '    :WHERESQLDETAIL,'
      '    :ALLOW_SORT,'
      '    :OTHERCONDITION,'
      '    :LOAIDOITUONG,'
      '    :LOAITAIKHOAN,'
      '    :BEGINTEXTNAME,'
      '    :LOAIDTKHAC,'
      '    :TENNHOM,'
      '    :RPT_STATUS,'
      '    :DOCID_FN,'
      '    :PERIOD_FN,'
      '    :BEGINTEXT,'
      '    :BRANCH_FN,'
      '    :ENGGROUP '
      ')')
    KeyLinks.Strings = (
      'REPORT_ID')
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryListReportAfterCancel
    BeforeEdit = qryListReportBeforeEdit
    BeforeDelete = qryListReportBeforeDelete
    BeforeInsert = qryListReportBeforeInsert
    BeforeOpen = qryListReportBeforeOpen
    AfterPost = qryListReportAfterPost
    OnFilterRecord = qryListReportFilterRecord
    OnNewRecord = qryListReportNewRecord
    OnPostError = qryListReportPostError
    SQL.Strings = (
      
        'select REPORT_ID, REPORT_NAME, SQLSELECT, FILETEMPLATE,COLUMNCOU' +
        'NT '
      '     , SQLSUB_1'
      '     , SQLSUB_2'
      '     , SQLSUB_3'
      '     , KEYFIELD'
      '     , CONDITIONTYPE'
      '     , WHERESQLDETAIL'
      '     , LOAIBAOCAO'
      '     , ORDER_FIELD,ENGLISH_NAME'
      '     , allow_sort,begintextname'
      '     , OTHERCONDITION,LOAIDOITUONG,LOAITAIKHOAN'
      '     , LOAIDTKHAC,TENNHOM'
      '     , ENGTEMPLATE,RPT_STATUS,DOCID_FN,PERIOD_FN'
      '     , BEGINTEXT'
      '     , BRANCH_FN'
      '     , ENGGROUP'
      'from SP_GETRIGHT_REPORT(:USERNAME,:GROUP_ID,:BRANCH_ID)'
      'ORDER BY ORDER_FIELD')
    FieldOptions = []
    Left = 120
    Top = 304
    object qryListReportREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object qryListReportCOLUMNCOUNT: TSmallintField
      FieldName = 'COLUMNCOUNT'
    end
    object qryListReportCONDITIONTYPE: TSmallintField
      FieldName = 'CONDITIONTYPE'
    end
    object qryListReportLOAIBAOCAO: TSmallintField
      FieldName = 'LOAIBAOCAO'
    end
    object qryListReportORDER_FIELD: TIntegerField
      FieldName = 'ORDER_FIELD'
    end
    object qryListReportSQLSELECT: TWideStringField
      FieldName = 'SQLSELECT'
      Size = 6144
    end
    object qryListReportSQLSUB_1: TWideStringField
      FieldName = 'SQLSUB_1'
      Size = 6144
    end
    object qryListReportSQLSUB_2: TWideStringField
      FieldName = 'SQLSUB_2'
      Size = 6144
    end
    object qryListReportSQLSUB_3: TWideStringField
      FieldName = 'SQLSUB_3'
      Size = 6144
    end
    object qryListReportWHERESQLDETAIL: TWideStringField
      FieldName = 'WHERESQLDETAIL'
      Size = 6144
    end
    object qryListReportALLOW_SORT: TSmallintField
      FieldName = 'ALLOW_SORT'
    end
    object qryListReportREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 381
    end
    object qryListReportKEYFIELD: TWideStringField
      FieldName = 'KEYFIELD'
      Size = 93
    end
    object qryListReportOTHERCONDITION: TSmallintField
      FieldName = 'OTHERCONDITION'
    end
    object qryListReportLOAIDOITUONG: TSmallintField
      FieldName = 'LOAIDOITUONG'
    end
    object qryListReportLOAITAIKHOAN: TSmallintField
      FieldName = 'LOAITAIKHOAN'
    end
    object qryListReportLOAIDTKHAC: TSmallintField
      FieldName = 'LOAIDTKHAC'
    end
    object qryListReportENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryListReportBEGINTEXTNAME: TWideStringField
      FieldName = 'BEGINTEXTNAME'
      Size = 126
    end
    object qryListReportENGTEMPLATE: TWideStringField
      FieldName = 'ENGTEMPLATE'
      Size = 63
    end
    object qryListReportRPT_STATUS: TSmallintField
      FieldName = 'RPT_STATUS'
    end
    object qryListReportTENNHOM: TWideStringField
      FieldName = 'TENNHOM'
      Size = 63
    end
    object qryListReportDOCID_FN: TWideStringField
      FieldName = 'DOCID_FN'
      Size = 15
    end
    object qryListReportPERIOD_FN: TWideStringField
      FieldName = 'PERIOD_FN'
      Size = 15
    end
    object qryListReportBEGINTEXT: TWideStringField
      FieldName = 'BEGINTEXT'
      Size = 93
    end
    object qryListReportBRANCH_FN: TWideStringField
      FieldName = 'BRANCH_FN'
      Size = 93
    end
    object qryListReportENGGROUP: TWideStringField
      FieldName = 'ENGGROUP'
      Size = 189
    end
    object qryListReportFILETEMPLATE: TWideStringField
      FieldName = 'FILETEMPLATE'
      Size = 30
    end
  end
  object qryReportCaption: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM REPORT_CAPTION'
      'WHERE'
      '   COLUMN_ID = :OLD_COLUMN_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE REPORT_CAPTION SET'
      '   COLUMN_ID = :COLUMN_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   COLUMN_CAPTION = :COLUMN_CAPTION,'
      '   ENGLISH_CAPTION = :ENGLISH_CAPTION,'
      '   COLUMN_WIDTH = :COLUMN_WIDTH,'
      '   COLUMN_GROUP = :COLUMN_GROUP,'
      '   COLUMN_FORMAT = :COLUMN_FORMAT'
      'WHERE'
      '   COLUMN_ID = :OLD_COLUMN_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsReport
    InsertSQL.Strings = (
      'INSERT INTO REPORT_CAPTION('
      '   COLUMN_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   COLUMN_CAPTION,'
      '   ENGLISH_CAPTION,'
      '   COLUMN_WIDTH,'
      '   COLUMN_GROUP,'
      '   COLUMN_FORMAT)'
      'VALUES ('
      '   :COLUMN_ID,'
      '   :REPORT_ID,'
      '   :COLUMN_CAPTION,'
      '   :ENGLISH_CAPTION,'
      '   :COLUMN_WIDTH,'
      '   :COLUMN_GROUP,'
      '   :COLUMN_FORMAT)')
    KeyLinks.Strings = (
      'REPORT_ID'
      'COLUMN_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryReportCaptionBeforeDelete
    AfterInsert = qryReportCaptionAfterInsert
    OnNewRecord = qryReportCaptionNewRecord
    OnPostError = qryReportCaptionPostError
    DataSource = dsListReport
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , COLUMN_ID'
      '     , COLUMN_CAPTION, ENGLISH_CAPTION'
      '     , COLUMN_WIDTH'
      '     , COLUMN_GROUP'
      '     , COLUMN_FORMAT'
      'FROM REPORT_CAPTION '
      'where REPORT_ID=:REPORT_ID'
      'order by COLUMN_ID')
    FieldOptions = []
    Left = 92
    Top = 304
    object qryReportCaptionREPORT_ID: TSmallintField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object qryReportCaptionCOLUMN_ID: TSmallintField
      FieldName = 'COLUMN_ID'
      Required = True
    end
    object qryReportCaptionCOLUMN_CAPTION: TWideStringField
      FieldName = 'COLUMN_CAPTION'
      Size = 30
    end
    object qryReportCaptionCOLUMN_WIDTH: TSmallintField
      FieldName = 'COLUMN_WIDTH'
    end
    object qryReportCaptionCOLUMN_GROUP: TSmallintField
      FieldName = 'COLUMN_GROUP'
    end
    object qryReportCaptionCOLUMN_FORMAT: TWideStringField
      FieldName = 'COLUMN_FORMAT'
      Size = 6
    end
    object qryReportCaptionENGLISH_CAPTION: TWideStringField
      FieldName = 'ENGLISH_CAPTION'
      Size = 30
    end
  end
  object pmTree: TdxBarPopupMenu
    BarManager = bmReport
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = bbtnPreview
        Visible = True
      end
      item
        Item = bbtnDesign
        Visible = True
      end
      item
        Item = bbtnDirectPrint
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton12
        Visible = True
      end
      item
        Item = dxBarButton11
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnDefReport
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnAddReport
        Visible = True
      end
      item
        Item = dxBarButton7
        Visible = True
      end
      item
        Item = bbtnDelReport
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton6
        Visible = True
      end
      item
        BeginGroup = True
        Item = btnCheckReport
        Visible = True
      end
      item
        Item = bbtnCheckallReport
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnSEtDefaultAll
        Visible = True
      end>
    UseOwnFont = True
    Left = 92
    Top = 272
  end
  object dplReport: TppDBPipeline
    DataSource = MainDM.dsReport
    UserName = 'dplReport'
    Left = 52
    Top = 100
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
    Left = 108
    Top = 208
  end
  object dplSub_1: TppDBPipeline
    DataSource = MainDM.dsSub_1
    SkipWhenNoRecords = False
    UserName = 'dplSub_1'
    Left = 116
    Top = 107
    MasterDataPipelineName = 'dplReport'
  end
  object dplSub_2: TppDBPipeline
    DataSource = MainDM.dsSub_2
    SkipWhenNoRecords = False
    UserName = 'dplSub_2'
    Left = 187
    Top = 109
    object dplSub_2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_10'
      FieldName = 'ITEM3_10'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object dplSub_2ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_10'
      FieldName = 'ITEM4_10'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object dplSub_2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_10'
      FieldName = 'ITEM5_10'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object dplSub_2ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_10'
      FieldName = 'ITEM6_10'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object dplSub_2ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_10'
      FieldName = 'ITEM7_10'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object dplSub_2ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_10'
      FieldName = 'ITEM8_10'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dplSub_2ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_11'
      FieldName = 'ITEM3_11'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object dplSub_2ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_11'
      FieldName = 'ITEM4_11'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dplSub_2ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_11'
      FieldName = 'ITEM5_11'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dplSub_2ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_11'
      FieldName = 'ITEM6_11'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dplSub_2ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_11'
      FieldName = 'ITEM7_11'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dplSub_2ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_11'
      FieldName = 'ITEM8_11'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object dplSub_2ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_12'
      FieldName = 'ITEM3_12'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object dplSub_2ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_12'
      FieldName = 'ITEM4_12'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object dplSub_2ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_12'
      FieldName = 'ITEM5_12'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object dplSub_2ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_12'
      FieldName = 'ITEM6_12'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object dplSub_2ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_12'
      FieldName = 'ITEM7_12'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object dplSub_2ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_12'
      FieldName = 'ITEM8_12'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object dplSub_2ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_13'
      FieldName = 'ITEM3_13'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object dplSub_2ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_13'
      FieldName = 'ITEM4_13'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object dplSub_2ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_13'
      FieldName = 'ITEM5_13'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object dplSub_2ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_13'
      FieldName = 'ITEM6_13'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object dplSub_2ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_13'
      FieldName = 'ITEM7_13'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object dplSub_2ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_13'
      FieldName = 'ITEM8_13'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object dplSub_2ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_14'
      FieldName = 'ITEM3_14'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object dplSub_2ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_14'
      FieldName = 'ITEM4_14'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object dplSub_2ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_14'
      FieldName = 'ITEM5_14'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object dplSub_2ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_14'
      FieldName = 'ITEM6_14'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object dplSub_2ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_14'
      FieldName = 'ITEM7_14'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object dplSub_2ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_14'
      FieldName = 'ITEM8_14'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object dplSub_2ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_15'
      FieldName = 'ITEM3_15'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object dplSub_2ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_15'
      FieldName = 'ITEM4_15'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object dplSub_2ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_15'
      FieldName = 'ITEM5_15'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object dplSub_2ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_15'
      FieldName = 'ITEM6_15'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object dplSub_2ppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_15'
      FieldName = 'ITEM7_15'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object dplSub_2ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_15'
      FieldName = 'ITEM8_15'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object dplSub_2ppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_16'
      FieldName = 'ITEM3_16'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object dplSub_2ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_16'
      FieldName = 'ITEM4_16'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object dplSub_2ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_16'
      FieldName = 'ITEM5_16'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object dplSub_2ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_16'
      FieldName = 'ITEM6_16'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object dplSub_2ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_16'
      FieldName = 'ITEM7_16'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object dplSub_2ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_16'
      FieldName = 'ITEM8_16'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object dplSub_2ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_17'
      FieldName = 'ITEM3_17'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object dplSub_2ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_17'
      FieldName = 'ITEM4_17'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object dplSub_2ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_17'
      FieldName = 'ITEM5_17'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object dplSub_2ppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_17'
      FieldName = 'ITEM6_17'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object dplSub_2ppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_17'
      FieldName = 'ITEM7_17'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object dplSub_2ppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_17'
      FieldName = 'ITEM8_17'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object dplSub_2ppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_18'
      FieldName = 'ITEM3_18'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object dplSub_2ppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_18'
      FieldName = 'ITEM4_18'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object dplSub_2ppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_18'
      FieldName = 'ITEM5_18'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 50
    end
    object dplSub_2ppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_18'
      FieldName = 'ITEM6_18'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 51
    end
    object dplSub_2ppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_18'
      FieldName = 'ITEM7_18'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 52
    end
    object dplSub_2ppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_18'
      FieldName = 'ITEM8_18'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 53
    end
    object dplSub_2ppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_19'
      FieldName = 'ITEM3_19'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object dplSub_2ppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_19'
      FieldName = 'ITEM4_19'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object dplSub_2ppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_19'
      FieldName = 'ITEM5_19'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object dplSub_2ppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_19'
      FieldName = 'ITEM6_19'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 57
    end
    object dplSub_2ppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_19'
      FieldName = 'ITEM7_19'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 58
    end
    object dplSub_2ppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_19'
      FieldName = 'ITEM8_19'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 59
    end
    object dplSub_2ppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_30'
      FieldName = 'ITEM3_30'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 60
    end
    object dplSub_2ppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_30'
      FieldName = 'ITEM4_30'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object dplSub_2ppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_30'
      FieldName = 'ITEM5_30'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object dplSub_2ppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_30'
      FieldName = 'ITEM6_30'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object dplSub_2ppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_30'
      FieldName = 'ITEM7_30'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 64
    end
    object dplSub_2ppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_30'
      FieldName = 'ITEM8_30'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 65
    end
    object dplSub_2ppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_33'
      FieldName = 'ITEM3_33'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 66
    end
    object dplSub_2ppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_33'
      FieldName = 'ITEM4_33'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 67
    end
    object dplSub_2ppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_33'
      FieldName = 'ITEM5_33'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 68
    end
    object dplSub_2ppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_33'
      FieldName = 'ITEM6_33'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 69
    end
    object dplSub_2ppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_33'
      FieldName = 'ITEM7_33'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object dplSub_2ppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_33'
      FieldName = 'ITEM8_33'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 71
    end
    object dplSub_2ppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM3_40'
      FieldName = 'ITEM3_40'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object dplSub_2ppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM4_40'
      FieldName = 'ITEM4_40'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 73
    end
    object dplSub_2ppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM5_40'
      FieldName = 'ITEM5_40'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 74
    end
    object dplSub_2ppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM6_40'
      FieldName = 'ITEM6_40'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object dplSub_2ppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM7_40'
      FieldName = 'ITEM7_40'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 76
    end
    object dplSub_2ppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM8_40'
      FieldName = 'ITEM8_40'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 77
    end
  end
  object dplSub_3: TppDBPipeline
    DataSource = MainDM.dsSub3
    UserName = 'dplSub_3'
    Left = 240
    Top = 103
  end
  object rptReport: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\My Project\Accounting\Acc Enterprise 5.0\Bin\Templates\ToKhai' +
      'ThueGTGT-2005-07-22.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 184
    Top = 216
    Version = '7.0'
    mmColumnWidth = 0
    object ppHeaderBand51: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppDetailBand51: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 275167
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 14737632
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 5292
        mmTop = 188119
        mmWidth = 183621
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 14737632
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 5292
        mmTop = 126207
        mmWidth = 183621
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14737632
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 5292
        mmTop = 83344
        mmWidth = 183621
        BandType = 4
      end
      object ppLine952: TppLine
        UserName = 'Line25'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 151607
        mmLeft = 5027
        mmTop = 60590
        mmWidth = 3175
        BandType = 4
      end
      object ppLabel977: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'M'#7851'u s'#7889' : 01/GTGT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 2646
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel980: TppLabel
        UserName = 'Label23'
        Caption = 'C'#7896'NG HO'#192' X'#195' H'#7896'I CH'#7910' NGH'#296'A VI'#7878'T NAM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 4498
        mmWidth = 70644
        BandType = 4
      end
      object ppLabel981: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = #272#7897'c l'#7853'p - T'#7921' do - H'#7841'nh ph'#250'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 70644
        mmTop = 9525
        mmWidth = 50800
        BandType = 4
      end
      object ppLine953: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 70644
        mmTop = 14817
        mmWidth = 50536
        BandType = 4
      end
      object ppLabel982: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'T'#7900' KHAI THU'#7870' GI'#193' TR'#7882' GIA T'#258'NG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 61119
        mmTop = 17727
        mmWidth = 74877
        BandType = 4
      end
      object ppLabel983: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = '(D'#249'ng cho c'#417' s'#7903' t'#237'nh thu'#7871' GTGT theo ph'#432#417'ng ph'#225'p kh'#7845'u tr'#7915')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 50536
        mmTop = 29369
        mmWidth = 96309
        BandType = 4
      end
      object ppLabel984: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = '[03] T'#234'n c'#417' s'#7903' kinh doanh:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 40746
        mmWidth = 35719
        BandType = 4
      end
      object ppLabel985: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = '[04] '#272#7883'a ch'#7881' tr'#7909' s'#7903':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 45508
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel986: TppLabel
        UserName = 'Label30'
        Caption = '[02] M'#227' s'#7889' thu'#7871' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 35983
        mmWidth = 22225
        BandType = 4
      end
      object ppLine957: TppLine
        UserName = 'Line27'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 132292
        mmLeft = 109802
        mmTop = 60854
        mmWidth = 2646
        BandType = 4
      end
      object ppLine958: TppLine
        UserName = 'Line28'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 152136
        mmLeft = 149754
        mmTop = 60590
        mmWidth = 3704
        BandType = 4
      end
      object ppLine959: TppLine
        UserName = 'Line29'
        Pen.Width = 2
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 152136
        mmLeft = 190500
        mmTop = 60590
        mmWidth = 4498
        BandType = 4
      end
      object ppLine960: TppLine
        UserName = 'Line30'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 68792
        mmWidth = 189707
        BandType = 4
      end
      object ppLabel1031: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = 'Ng'#224'y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 124090
        mmTop = 227542
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel1032: TppLabel
        UserName = 'Label603'
        Caption = #272#7841'i di'#7879'n theo ph'#225'p lu'#7853't c'#7911'a c'#417' s'#7903' kinh doanh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 116417
        mmTop = 232040
        mmWidth = 67998
        BandType = 4
      end
      object ppLabel1035: TppLabel
        UserName = 'Label324'
        AutoSize = False
        Caption = 'th'#225'ng'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141288
        mmTop = 227542
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel1036: TppLabel
        UserName = 'Label328'
        AutoSize = False
        Caption = 'n'#259'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 158486
        mmTop = 227542
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText1008: TppDBText
        UserName = 'DBText1008'
        DataField = 'FULLNAME'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 3704
        mmLeft = 42598
        mmTop = 40746
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText1009: TppDBText
        UserName = 'DBText1009'
        DataField = 'ADDRESS'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 3704
        mmLeft = 32808
        mmTop = 45508
        mmWidth = 53975
        BandType = 4
      end
      object ppDBText1010: TppDBText
        UserName = 'DBText10101'
        DataField = 'TAXCODE'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 35983
        mmWidth = 31221
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'lblworkday'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 132292
        mmTop = 227542
        mmWidth = 8467
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'lblworkmonth'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 150548
        mmTop = 227542
        mmWidth = 7673
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'lblworkyear'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 166952
        mmTop = 227542
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'lblthoigian'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 24342
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = '[01] K'#7923' k'#234' khai:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 68527
        mmTop = 24342
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label1'
        Caption = '[07] '#272'i'#7879'n tho'#7841'i:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 50271
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        DataField = 'TELPHONE'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 50271
        mmWidth = 59267
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label2'
        Caption = '[05] Qu'#7853'n/huy'#7879'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87577
        mmTop = 45773
        mmWidth = 22754
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Qu'#7853'n 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 45773
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label4'
        Caption = '[08] Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87577
        mmTop = 50271
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        DataField = 'FAXNUMBER'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 3704
        mmLeft = 100542
        mmTop = 50271
        mmWidth = 36777
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label5'
        Caption = '[06] T'#7881'nh/Th'#224'nh ph'#7889':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 138642
        mmTop = 45773
        mmWidth = 27781
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'TP HCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 167746
        mmTop = 45508
        mmWidth = 23548
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label22'
        Caption = '[09] Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 138642
        mmTop = 50271
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText6'
        DataField = 'EMAL'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 50271
        mmWidth = 37306
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 15346
        mmLeft = 6350
        mmTop = 6879
        mmWidth = 33867
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label31'
        Caption = 'Ng'#224'y n'#7897'p t'#7901' khai:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4149
        mmLeft = 10319
        mmTop = 8731
        mmWidth = 25315
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label6'
        Caption = 'PS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 56092
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PS'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 11377
        mmTop = 56092
        mmWidth = 31221
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label7'
        Caption = #272#417'n v'#7883' ti'#7873'n: '#272#7891'ng Vi'#7879't Nam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 153194
        mmTop = 56092
        mmWidth = 36513
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line301'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1323
        mmLeft = 5027
        mmTop = 73819
        mmWidth = 189442
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label9'
        Caption = 'Kh'#244'ng ph'#225't sinh ho'#7841't '#273#7897'ng mua, b'#225'n trong k'#7923
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 69586
        mmWidth = 66411
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label10'
        Caption = '[10]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 69586
        mmWidth = 5292
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 109802
        mmTop = 154782
        mmWidth = 84931
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Thu'#7871' GTGT c'#242'n '#273#432#7907'c kh'#7845'u tr'#7915' k'#7923' tr'#432#7899'c chuy'#7875'n sang:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 74348
        mmWidth = 73554
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 152136
        mmLeft = 188384
        mmTop = 60590
        mmWidth = 2117
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'GI'#193' TR'#7882' HHDV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 112713
        mmTop = 61383
        mmWidth = 34660
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label43'
        Caption = 'KS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 189177
        mmTop = 62971
        mmWidth = 4763
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line21'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 54504
        mmLeft = 5027
        mmTop = 218282
        mmWidth = 2381
        BandType = 4
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Lines.WideStrings = (
          
            'T'#244'i cam '#273'oan s'#7889' li'#7879'u k'#234' khai tr'#234'n l'#224' '#273#250'ng s'#7921' th'#7853't v'#224' t'#7921' ch'#7883'u tr'#225 +
            'ch nhi'#7879'm tr'#432#7899'c ph'#225'p lu'#7853't v'#7873' nh'#7919'ng s'#7889' li'#7879'u '#273#227' k'#234' khai.')
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 106627
        mmTop = 219075
        mmWidth = 84931
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine27: TppLine
        UserName = 'Line26'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 217753
        mmWidth = 190236
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line32'
        Pen.Width = 2
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 55033
        mmLeft = 190765
        mmTop = 218017
        mmWidth = 4498
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line33'
        Pen.Width = 2
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 5556
        mmTop = 271198
        mmWidth = 189707
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line34'
        Pen.Width = 0
        Position = lpLeft
        Weight = 0.250000000000000000
        mmHeight = 55033
        mmLeft = 103188
        mmTop = 217753
        mmWidth = 1852
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label48'
        Caption = 'PH'#7846'N D'#192'NH CHO C'#416' QUAN THU'#7870
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 219075
        mmWidth = 56092
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 
          'H'#224'ng h'#243'a d'#7883'ch v'#7909' mua v'#224'o trong k'#7923' ([12]=[14]+[16];[13]=[15]+[17]' +
          ')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 88636
        mmWidth = 92075
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909' mua v'#224'o trong n'#432#7899'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 93398
        mmWidth = 71702
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909' nh'#7853'p kh'#7849'u'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 98161
        mmWidth = 67469
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Caption = #272'i'#7873'u ch'#7881'nh thu'#7871' GTGT c'#7911'a HHDV mua v'#224'o c'#225'c k'#7923' tr'#432#7899'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 102923
        mmWidth = 81756
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Caption = #272'i'#7873'u ch'#7881'nh t'#259'ng'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 107686
        mmWidth = 71967
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = #272'i'#7873'u ch'#7881'nh gi'#7843'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 112448
        mmWidth = 71967
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Caption = 'T'#7893'ng s'#7889' thu'#7871' GTGT c'#7911'a HHDV mua v'#224'o ([22]=[13]+[19]-[21])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 117211
        mmWidth = 86784
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'Label66'
        AutoSize = False
        Caption = ' H'#224'ng h'#243'a, d'#7883'ch v'#7909' b'#225'n ra trong k'#7923' ([24]=[26]+[27]; [25]=[28])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 131498
        mmWidth = 87842
        BandType = 4
      end
      object ppLabel61: TppLabel
        UserName = 'Label68'
        AutoSize = False
        Caption = 'H'#224'ng h'#243'a d'#7883'ch v'#7909' b'#225'n ra kh'#244'ng ch'#7883'u thu'#7871' GTGT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 136261
        mmWidth = 75671
        BandType = 4
      end
      object ppLabel62: TppLabel
        UserName = 'Label69'
        AutoSize = False
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909' b'#225'n ra ch'#7883'u thu'#7871' su'#7845't 0%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 150548
        mmWidth = 66411
        BandType = 4
      end
      object ppLabel63: TppLabel
        UserName = 'Label70'
        AutoSize = False
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909' b'#225'n ra ch'#7883'u thu'#7871' su'#7845't 5%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 155311
        mmWidth = 66411
        BandType = 4
      end
      object ppLabel64: TppLabel
        UserName = 'Label701'
        AutoSize = False
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909' b'#225'n ra ch'#7883'u thu'#7871' su'#7845't 10%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 159809
        mmWidth = 66675
        BandType = 4
      end
      object ppLabel65: TppLabel
        UserName = 'Label71'
        AutoSize = False
        Caption = #272'i'#7873'u ch'#7881'nh thu'#7871' GTGT c'#7911'a HHDV b'#225'n ra c'#225'c k'#7923' tr'#432#7899'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 164836
        mmWidth = 77523
        BandType = 4
      end
      object ppLabel66: TppLabel
        UserName = 'Label72'
        AutoSize = False
        Caption = 'Thu'#7871' GTGT ph'#7843'i n'#7897'p trong k'#7923' ([40]=[39]-[23]-[11])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 193411
        mmWidth = 73025
        BandType = 4
      end
      object ppLabel67: TppLabel
        UserName = 'Label73'
        AutoSize = False
        Caption = 'Thu'#7871' GTGT ch'#432'a kh'#7845'u tr'#7915' h'#7871't k'#7923' n'#224'y ([41]=[39]+[23]-[11])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 198173
        mmWidth = 82815
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Caption = 'Thu'#7871' GTGT '#273#7873' ngh'#7883' ho'#224'n k'#7923' n'#224'y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 202936
        mmWidth = 68263
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Caption = 'Thu'#7871' GTGT c'#242'n '#273#432#7907'c kh'#7845'u tr'#7915' chuy'#7875'n k'#7923' sau ([43]=[41]-[42])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 207698
        mmWidth = 88106
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label81'
        AutoSize = False
        Caption = '....../........./................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 8996
        mmTop = 14552
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText3'
        DataField = 'DT10'
        DataPipeline = dplSub_1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 130704
        mmTop = 69850
        mmWidth = 3969
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line35'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 151607
        mmLeft = 12171
        mmTop = 60854
        mmWidth = 3175
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line302'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 60590
        mmWidth = 189971
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label83'
        Caption = 'STT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 62971
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label84'
        Caption = 'CH'#7880' TI'#202'U'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 62971
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label85'
        Caption = '(Ch'#432'a c'#243' thu'#7871' GTGT)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 65352
        mmWidth = 28194
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label86'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 69586
        mmWidth = 3969
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line36'
        Weight = 1.000000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 83344
        mmWidth = 189442
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label87'
        Caption = 'K'#234' khai thu'#7871' GTGT ph'#7843'i n'#7897'p Ng'#226'n s'#225'ch nh'#224' n'#432#7899'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 79111
        mmWidth = 73554
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line37'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1323
        mmLeft = 5292
        mmTop = 78581
        mmWidth = 189442
        BandType = 4
      end
      object ppLabel83: TppLabel
        UserName = 'Label88'
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909'(HHDV) mua v'#224'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 83873
        mmWidth = 48154
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = 'T'#7893'ng s'#7889' thu'#7871' GTGT '#273#432#7907'c kh'#7845'u tr'#7915' k'#7923' n'#224'y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 121973
        mmWidth = 86784
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label61'
        Caption = 'H'#224'ng h'#243'a, d'#7883'ch v'#7909' b'#225'n ra'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 126736
        mmWidth = 34131
        BandType = 4
      end
      object ppLabel60: TppLabel
        UserName = 'Label67'
        Caption = 
          'H'#224'ng h'#243'a, d'#7883'ch v'#7909' b'#225'n ra ch'#7883'u thu'#7871' GTGT ([27]=[29]+[30]+[32]; [2' +
          '8]=[31]+[33])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 20902
        mmTop = 141288
        mmWidth = 59796
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = #272'i'#7873'u ch'#7881'nh t'#259'ng'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 169598
        mmWidth = 54769
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = #272'i'#7873'u ch'#7881'nh gi'#7843'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 174361
        mmWidth = 54504
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 
          'T'#7893'ng doanh thu v'#224' thu'#7871' GTGT c'#7911'a HHDV b'#225'n ra    ([38]=[24]+[34]-[' +
          '36]; [39]=[25]+[35]-[37])'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 16140
        mmTop = 179388
        mmWidth = 79904
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label32'
        Caption = 'K'#253' t'#234'n, '#273#243'ng d'#7845'u (ghi r'#245' h'#7885' t'#234'n ch'#7913'c v'#7909')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3344
        mmLeft = 126995
        mmTop = 236538
        mmWidth = 46313
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label33'
        Caption = 'X'#225'c '#273#7883'nh ngh'#297'a v'#7909' GTGT ph'#7843'i n'#7897'p trong k'#7923
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 188648
        mmWidth = 59267
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1852
        mmLeft = 109802
        mmTop = 97631
        mmWidth = 84667
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 102394
        mmWidth = 189442
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 110067
        mmTop = 111919
        mmWidth = 84667
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 116681
        mmWidth = 189442
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 1.000000000000000000
        mmHeight = 1852
        mmLeft = 5027
        mmTop = 126207
        mmWidth = 189442
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 130969
        mmWidth = 189442
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1058
        mmLeft = 5027
        mmTop = 121444
        mmWidth = 189442
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 135732
        mmWidth = 189442
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 140494
        mmWidth = 189442
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1323
        mmLeft = 110331
        mmTop = 159544
        mmWidth = 84402
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 164307
        mmWidth = 189442
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 109802
        mmTop = 173832
        mmWidth = 84667
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 178594
        mmWidth = 189442
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line3'
        Weight = 1.000000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 188119
        mmWidth = 189442
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 192882
        mmWidth = 189442
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Pen.Width = 2
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 210609
        mmWidth = 189971
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1058
        mmLeft = 5292
        mmTop = 92869
        mmWidth = 189707
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 107156
        mmWidth = 189971
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line31'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 150019
        mmWidth = 189707
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line38'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5292
        mmTop = 88106
        mmWidth = 189442
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line39'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2117
        mmLeft = 5556
        mmTop = 169069
        mmWidth = 189442
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line202'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1323
        mmLeft = 5292
        mmTop = 197644
        mmWidth = 189442
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line13'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1323
        mmLeft = 5292
        mmTop = 202407
        mmWidth = 189442
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line40'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1323
        mmLeft = 5027
        mmTop = 207169
        mmWidth = 189442
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label34'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7678
        mmTop = 74348
        mmWidth = 2371
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label35'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7408
        mmTop = 79111
        mmWidth = 2540
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label36'
        Caption = 'I'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7938
        mmTop = 83608
        mmWidth = 1355
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label37'
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7938
        mmTop = 88636
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label38'
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 93398
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label39'
        Caption = 'b'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7890
        mmTop = 98161
        mmWidth = 1947
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label40'
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 102923
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label401'
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 107421
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label42'
        Caption = 'b'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7890
        mmTop = 112184
        mmWidth = 1947
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label44'
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 117211
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label45'
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 121973
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label46'
        Caption = 'II'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7509
        mmTop = 126736
        mmWidth = 2709
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label47'
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 131498
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label49'
        Caption = '1.1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 6641
        mmTop = 136261
        mmWidth = 4445
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label50'
        Caption = '1.2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 6641
        mmTop = 143140
        mmWidth = 4445
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label501'
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 150548
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label51'
        Caption = 'b'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7890
        mmTop = 155311
        mmWidth = 1947
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label56'
        Caption = 'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 8080
        mmTop = 159544
        mmWidth = 1566
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label58'
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 164571
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label59'
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 169334
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label60'
        Caption = 'b'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7890
        mmTop = 174361
        mmWidth = 1947
        BandType = 4
      end
      object ppLabel68: TppLabel
        UserName = 'Label601'
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 181505
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label74'
        Caption = 'III'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 6832
        mmTop = 188648
        mmWidth = 4064
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label75'
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 193411
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label78'
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 7974
        mmTop = 198173
        mmWidth = 1778
        BandType = 4
      end
      object ppLabel74: TppLabel
        UserName = 'Label79'
        Caption = '2.1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 6641
        mmTop = 202936
        mmWidth = 4445
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label80'
        Caption = '2.2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 6641
        mmTop = 207698
        mmWidth = 4445
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label101'
        Caption = '[11]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 74348
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel84: TppLabel
        UserName = 'Label102'
        Caption = '[12]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 88636
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel85: TppLabel
        UserName = 'Label82'
        Caption = '[14]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 93398
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel86: TppLabel
        UserName = 'Label89'
        Caption = '[16]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 98161
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel87: TppLabel
        UserName = 'Label90'
        Caption = '[18]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 107686
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel88: TppLabel
        UserName = 'Label901'
        Caption = '[20]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 112448
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel89: TppLabel
        UserName = 'Label91'
        Caption = '[13]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 88636
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label92'
        Caption = '[15]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 93398
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel91: TppLabel
        UserName = 'Label93'
        Caption = '[17]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 98161
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label94'
        Caption = '[19]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 107686
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel93: TppLabel
        UserName = 'Label95'
        Caption = '[21]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 112448
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label96'
        Caption = '[22]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 117211
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel95: TppLabel
        UserName = 'Label97'
        Caption = '[23]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 121973
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label98'
        Caption = '[24]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 131498
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label99'
        Caption = '[26]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 136261
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel98: TppLabel
        UserName = 'Label100'
        Caption = '[27]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 145786
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label1001'
        Caption = '[29]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 150548
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label103'
        Caption = '[30]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 155311
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel101: TppLabel
        UserName = 'Label104'
        Caption = '[32]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 160073
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel102: TppLabel
        UserName = 'Label105'
        Caption = '[34]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 169598
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel103: TppLabel
        UserName = 'Label106'
        Caption = '[36]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 174361
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel104: TppLabel
        UserName = 'Label107'
        Caption = '[38]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 111390
        mmTop = 183357
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel105: TppLabel
        UserName = 'Label108'
        Caption = '[25]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 131498
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel106: TppLabel
        UserName = 'Label109'
        Caption = '[28]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 145786
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label110'
        Caption = '[31]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 155311
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label1101'
        Caption = '[33]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 151342
        mmTop = 160073
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel109: TppLabel
        UserName = 'Label111'
        Caption = '[35]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 151342
        mmTop = 169598
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel110: TppLabel
        UserName = 'Label112'
        Caption = '[37]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 151342
        mmTop = 174361
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel111: TppLabel
        UserName = 'Label113'
        Caption = '[39]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 151342
        mmTop = 183357
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel112: TppLabel
        UserName = 'Label114'
        Caption = '[40]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 193411
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel113: TppLabel
        UserName = 'Label115'
        Caption = '[41]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 198173
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel114: TppLabel
        UserName = 'Label116'
        Caption = '[42]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 202936
        mmWidth = 5419
        BandType = 4
      end
      object ppLabel115: TppLabel
        UserName = 'Label117'
        Caption = '[43]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 151342
        mmTop = 207698
        mmWidth = 5419
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 97631
        mmWidth = 7144
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 111654
        mmWidth = 7144
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line41'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 1588
        mmLeft = 5027
        mmTop = 154782
        mmWidth = 7144
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line42'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2381
        mmLeft = 5027
        mmTop = 159544
        mmWidth = 7144
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line43'
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2381
        mmLeft = 5027
        mmTop = 173832
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label15'
        Caption = 'Thu'#7871' GTGT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 62971
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'DIRECTOR'
        DataPipeline = MainDM.dplHSCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dplHSCT'
        mmHeight = 0
        mmLeft = 147373
        mmTop = 265378
        mmWidth = 0
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'VAT33'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 160073
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'VAT35'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 169598
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'VAT37'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 174361
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'VAT39'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 183357
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'DT38'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 183357
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'DT34'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 169598
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'DT36'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 174361
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'VAT40'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 193411
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'VAT41'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 198173
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'VAT42'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 202936
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'VAT43'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 207698
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'VAT11'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 74348
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DT12'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 88636
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'VAT13'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 88636
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DT14'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 93398
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DT16'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 98161
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'DT18'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 107686
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'DT20'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 112448
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'DT24'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 131498
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'DT26'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 136261
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'DT27'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 145786
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'DT29'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 150548
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'DT30'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 155311
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'DT32'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 160073
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'VAT15'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 93398
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'VAT17'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 98161
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'VAT19'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 107686
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'VAT21'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 112448
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'VAT22'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 117211
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'VAT23'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 121973
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'VAT25'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 131498
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'VAT28'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 145786
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'VAT31'
        DataPipeline = dplSub_1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dplSub_1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 155311
        mmWidth = 30427
        BandType = 4
      end
    end
    object ppFooterBand46: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
        Caption = 'H'#7879' th'#7889'ng b'#225'o c'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 216
    Top = 221
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        24050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060A53484F52545F4E414D450D53
        756D6D61727947726F7570730E001053756D6D617279536570617261746F7206
        022C200C466F6E742E43686172736574070C414E53495F434841525345540A46
        6F6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E486569
        67687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E537479
        6C650B000A506172656E74466F6E74081042616E64466F6E742E436861727365
        74070F44454641554C545F434841525345540E42616E64466F6E742E436F6C6F
        72070C636C57696E646F77546578740F42616E64466F6E742E48656967687402
        F50D42616E64466F6E742E4E616D65060D4D532053616E732053657269660E42
        616E64466F6E742E5374796C650B000A44617461536F7572636507104D61696E
        444D2E64734F626A547970651044656661756C74526F7748656967687402130F
        46696C7465722E43726974657269610A04000000000000001248656164657246
        6F6E742E43686172736574070C414E53495F4348415253455410486561646572
        466F6E742E436F6C6F72070C636C57696E646F77546578741148656164657246
        6F6E742E48656967687402F50F486561646572466F6E742E4E616D6506065461
        686F6D6110486561646572466F6E742E5374796C650B000B4C6F6F6B416E6446
        65656C07066C66466C6174094F7074696F6E7344420B106564676F43616E6365
        6C4F6E457869740D6564676F43616E44656C6574650D6564676F43616E496E73
        657274116564676F43616E4E617669676174696F6E116564676F436F6E666972
        6D44656C657465126564676F4C6F6164416C6C5265636F726473106564676F55
        7365426F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F4175
        746F5769647468136564676F42616E6448656164657257696474680D6564676F
        5573654269746D6170001350726576696577466F6E742E43686172736574070F
        44454641554C545F434841525345541150726576696577466F6E742E436F6C6F
        720706636C426C75651250726576696577466F6E742E48656967687402F51050
        726576696577466F6E742E4E616D65060D4D532053616E732053657269661150
        726576696577466F6E742E5374796C650B0000135464784442477269644D6173
        6B436F6C756D6E0A53484F52545F4E414D450743617074696F6E141400000054
        C3AA6E20C491E1BB91692074C6B0E1BBA36E670F486561646572416C69676E6D
        656E740708746143656E7465720557696474680391000942616E64496E646578
        020008526F77496E6465780200094669656C644E616D65060A53484F52545F4E
        414D450C43617074696F6E5F55544637061D542B414F6F2D6E202B4152456530
        512D6920742B4162416534772D6E670000135464784442477269644D61736B43
        6F6C756D6E0A4F545950455F4E414D450743617074696F6E141F0000004DC3B4
        2074E1BAA3206C6FE1BAA16920C491E1BB91692074C6B0E1BBA36E670F486561
        646572416C69676E6D656E740708746143656E74657205576964746803ED0009
        42616E64496E646578020008526F77496E6465780200094669656C644E616D65
        060A4F545950455F4E414D450C43617074696F6E5F55544637062A4D2B415051
        20742B48714D206C6F2B4871452D69202B4152456530512D6920742B41624165
        34772D6E67000000}
    end
  end
  object dsRptCaption: TDataSource
    DataSet = qryReportCaption
    Left = 94
    Top = 332
  end
  object qryBanana: TIBOQuery
    Params = <>
    RecordCountAccurate = True
    FieldOptions = []
    Left = 202
    Top = 304
  end
  object qryGetTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ngayht'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tungay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denngay'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select fromdate,todate,workingdate from sp_bc_get_time(:ngayht,:' +
        'tungay,:denngay)')
    FieldOptions = []
    Left = 176
    Top = 304
    object qryGetTimeFROMDATE: TDateField
      FieldName = 'FROMDATE'
    end
    object qryGetTimeTODATE: TDateField
      FieldName = 'TODATE'
    end
    object qryGetTimeWORKINGDATE: TDateField
      FieldName = 'WORKINGDATE'
    end
  end
  object dsGetTime: TDataSource
    DataSet = qryGetTime
    Left = 176
    Top = 333
  end
  object dplGetTime: TppDBPipeline
    DataSource = dsGetTime
    UserName = 'dplGetTime'
    Left = 248
    Top = 393
    object dplGetTimeppField1: TppField
      FieldAlias = 'FROMDATE'
      FieldName = 'FROMDATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object dplGetTimeppField2: TppField
      FieldAlias = 'TODATE'
      FieldName = 'TODATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object dplGetTimeppField3: TppField
      FieldAlias = 'WORKINGDATE'
      FieldName = 'WORKINGDATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 2.15'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    Left = 120
    Top = 73
  end
  object popThang: TdxBarPopupMenu
    BarManager = bmReport
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end
      item
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton17
        Visible = True
      end
      item
        Item = dxBarButton18
        Visible = True
      end>
    UseOwnFont = True
    Left = 332
    Top = 40
  end
  object popNgay: TdxBarPopupMenu
    BarManager = bmReport
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = dxBarButton13
        Visible = True
      end
      item
        Item = dxBarButton14
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton15
        Visible = True
      end
      item
        Item = dxBarButton16
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton19
        Visible = True
      end
      item
        Item = dxBarButton20
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton21
        Visible = True
      end
      item
        Item = dxBarButton22
        Visible = True
      end>
    UseOwnFont = True
    Left = 332
    Top = 128
  end
  object popQuy: TdxBarPopupMenu
    BarManager = bmReport
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
    Left = 332
    Top = 88
  end
  object qryGetMaxID: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsReport
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select max(REPORT_ID)'
      'from SYSREPORT')
    FieldOptions = []
    Left = 148
    Top = 304
    object qryGetMaxIDMAX: TSmallintField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object dsListDefaultSysReport: TDataSource
    DataSet = qryListDefaultSysReport
    Left = 36
    Top = 362
  end
  object qryListDefaultSysReport: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DEFAULT_SYSREPORT'
      '  WHERE (REPORT_ID = :OLD_REPORT_ID)')
    EditSQL.Strings = (
      'UPDATE DEFAULT_SYSREPORT'
      '  SET LOAIBAOCAO = :LOAIBAOCAO,'
      '      ORDER_FIELD = :ORDER_FIELD,'
      '      REPORT_NAME = :REPORT_NAME,'
      '      ENGLISH_NAME = :ENGLISH_NAME,'
      '      KEYFIELD = :KEYFIELD,'
      '      SQLSELECT = :SQLSELECT,'
      '      ENGTEMPLATE = :ENGTEMPLATE,'
      '      FILETEMPLATE = :FILETEMPLATE,'
      '      COLUMNCOUNT = :COLUMNCOUNT,'
      '      SQLSUB_1 = :SQLSUB_1,'
      '      SQLSUB_2 = :SQLSUB_2,'
      '      SQLSUB_3 = :SQLSUB_3,'
      '      CONDITIONTYPE = :CONDITIONTYPE,'
      '      WHERESQLDETAIL = :WHERESQLDETAIL,'
      '      ALLOW_SORT = :ALLOW_SORT,'
      '      OTHERCONDITION = :OTHERCONDITION,'
      '      LOAIDOITUONG = :LOAIDOITUONG,'
      '      LOAITAIKHOAN = :LOAITAIKHOAN,'
      '      BEGINTEXTNAME = :BEGINTEXTNAME,'
      '      LOAIDTKHAC = :LOAIDTKHAC,'
      '      RPT_STATUS = :RPT_STATUS,'
      '      TENNHOM = :TENNHOM,'
      '      DOCID_FN = :DOCID_FN,'
      '      PERIOD_FN = :PERIOD_FN,'
      '      BRANCH_FN = :BRANCH_FN,'
      '      ENGGROUP = :ENGGROUP'
      '  WHERE (REPORT_ID = :OLD_REPORT_ID)')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsReport
    InsertSQL.Strings = (
      'INSERT INTO DEFAULT_SYSREPORT ('
      '    REPORT_ID,'
      '    LOAIBAOCAO,'
      '    ORDER_FIELD,'
      '    REPORT_NAME,'
      '    ENGLISH_NAME,'
      '    KEYFIELD,'
      '    SQLSELECT,'
      '    ENGTEMPLATE,'
      '    FILETEMPLATE,'
      '    COLUMNCOUNT,'
      '    SQLSUB_1,'
      '    SQLSUB_2,'
      '    SQLSUB_3,'
      '    CONDITIONTYPE,'
      '    WHERESQLDETAIL,'
      '    ALLOW_SORT,'
      '    OTHERCONDITION,'
      '    LOAIDOITUONG,'
      '    LOAITAIKHOAN,'
      '    BEGINTEXTNAME,'
      '    LOAIDTKHAC,'
      '    TENNHOM,'
      '    RPT_STATUS,'
      '    DOCID_FN,'
      '    PERIOD_FN,'
      '    BRANCH_FN ,'
      '    ENGGROUP )'
      '  VALUES ('
      '    :REPORT_ID,'
      '    :LOAIBAOCAO,'
      '    :ORDER_FIELD,'
      '    :REPORT_NAME,'
      '    :ENGLISH_NAME,'
      '    :KEYFIELD,'
      '    :SQLSELECT,'
      '    :ENGTEMPLATE,'
      '    :FILETEMPLATE,'
      '    :COLUMNCOUNT,'
      '    :SQLSUB_1,'
      '    :SQLSUB_2,'
      '    :SQLSUB_3,'
      '    :CONDITIONTYPE,'
      '    :WHERESQLDETAIL,'
      '    :ALLOW_SORT,'
      '    :OTHERCONDITION,'
      '    :LOAIDOITUONG,'
      '    :LOAITAIKHOAN,'
      '    :BEGINTEXTNAME,'
      '    :LOAIDTKHAC,'
      '    :TENNHOM,'
      '    :RPT_STATUS,'
      '    :DOCID_FN,'
      '    :PERIOD_FN,'
      '    :BRANCH_FN ,'
      '    :ENGGROUP)')
    KeyLinks.Strings = (
      'REPORT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select REPORT_ID, REPORT_NAME, SQLSELECT, FILETEMPLATE,COLUMNCOU' +
        'NT '
      '     , SQLSUB_1'
      '     , SQLSUB_2'
      '     , SQLSUB_3'
      '     , KEYFIELD'
      '     , CONDITIONTYPE'
      '     , WHERESQLDETAIL'
      '     , LOAIBAOCAO'
      '     , ORDER_FIELD, ENGLISH_NAME'
      '     , allow_sort, begintextname'
      '     , OTHERCONDITION, LOAIDOITUONG, LOAITAIKHOAN'
      '     , LOAIDTKHAC, TENNHOM'
      '     , ENGTEMPLATE, RPT_STATUS, DOCID_FN, PERIOD_FN,BRANCH_FN'
      '     , ENGGROUP'
      'from SP_GETRIGHT_DEFAULT_SYSREPORT (:USERNAME,'#39#39',:BRANCH_ID)'
      'where REPORT_ID = :REPORT_ID'
      'ORDER BY ORDER_FIELD')
    FieldOptions = []
    Left = 35
    Top = 334
    object qryListDefaultSysReportREPORT_ID: TSmallintField
      FieldName = 'REPORT_ID'
    end
    object qryListDefaultSysReportREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 126
    end
    object qryListDefaultSysReportSQLSELECT: TWideStringField
      FieldName = 'SQLSELECT'
      Size = 6144
    end
    object qryListDefaultSysReportFILETEMPLATE: TWideStringField
      FieldName = 'FILETEMPLATE'
      Size = 30
    end
    object qryListDefaultSysReportCOLUMNCOUNT: TSmallintField
      FieldName = 'COLUMNCOUNT'
    end
    object qryListDefaultSysReportSQLSUB_1: TWideStringField
      FieldName = 'SQLSUB_1'
      Size = 6144
    end
    object qryListDefaultSysReportSQLSUB_2: TWideStringField
      FieldName = 'SQLSUB_2'
      Size = 6144
    end
    object qryListDefaultSysReportSQLSUB_3: TWideStringField
      FieldName = 'SQLSUB_3'
      Size = 6144
    end
    object qryListDefaultSysReportKEYFIELD: TWideStringField
      FieldName = 'KEYFIELD'
      Size = 30
    end
    object qryListDefaultSysReportCONDITIONTYPE: TSmallintField
      FieldName = 'CONDITIONTYPE'
    end
    object qryListDefaultSysReportWHERESQLDETAIL: TWideStringField
      FieldName = 'WHERESQLDETAIL'
      Size = 6144
    end
    object qryListDefaultSysReportLOAIBAOCAO: TSmallintField
      FieldName = 'LOAIBAOCAO'
    end
    object qryListDefaultSysReportORDER_FIELD: TIntegerField
      FieldName = 'ORDER_FIELD'
    end
    object qryListDefaultSysReportENGLISH_NAME: TWideStringField
      FieldName = 'ENGLISH_NAME'
      Size = 126
    end
    object qryListDefaultSysReportALLOW_SORT: TSmallintField
      FieldName = 'ALLOW_SORT'
    end
    object qryListDefaultSysReportBEGINTEXTNAME: TWideStringField
      FieldName = 'BEGINTEXTNAME'
      Size = 126
    end
    object qryListDefaultSysReportOTHERCONDITION: TSmallintField
      FieldName = 'OTHERCONDITION'
    end
    object qryListDefaultSysReportLOAIDOITUONG: TSmallintField
      FieldName = 'LOAIDOITUONG'
    end
    object qryListDefaultSysReportLOAITAIKHOAN: TSmallintField
      FieldName = 'LOAITAIKHOAN'
    end
    object qryListDefaultSysReportLOAIDTKHAC: TSmallintField
      FieldName = 'LOAIDTKHAC'
    end
    object qryListDefaultSysReportTENNHOM: TWideStringField
      FieldName = 'TENNHOM'
      Size = 63
    end
    object qryListDefaultSysReportENGTEMPLATE: TWideStringField
      FieldName = 'ENGTEMPLATE'
      Size = 63
    end
    object qryListDefaultSysReportRPT_STATUS: TSmallintField
      FieldName = 'RPT_STATUS'
    end
    object qryListDefaultSysReportDOCID_FN: TWideStringField
      FieldName = 'DOCID_FN'
      Size = 15
    end
    object qryListDefaultSysReportPERIOD_FN: TWideStringField
      FieldName = 'PERIOD_FN'
      Size = 15
    end
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 266
    Top = 222
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        2D050000545046301054647844424772696457726170706572000542616E6473
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
        6C756D6E094252414E43485F49440743617074696F6E140E0000004DC3A320C4
        91C6A16E2076E1BB8B0C466F6E742E43686172736574070F44454641554C545F
        434841525345540A466F6E742E436F6C6F72070C636C57696E646F7754657874
        0B466F6E742E48656967687402F509466F6E742E4E616D6506065461686F6D61
        0A466F6E742E5374796C650B000F486561646572416C69676E6D656E74070874
        6143656E74657205576964746802560942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D6506094252414E43485F49440C43617074
        696F6E5F5554463706154D2B414F4D202B415245426F512D6E20762B48737300
        00135464784442477269644D61736B436F6C756D6E0846554C4C4E414D450743
        617074696F6E140F00000054C3AA6E20C491C6A16E2076E1BB8B0F4865616465
        72416C69676E6D656E740708746143656E746572055769647468032301094261
        6E64496E646578020008526F77496E6465780200094669656C644E616D650608
        46554C4C4E414D450C43617074696F6E5F555446370617542B414F6F2D6E202B
        415245426F512D6E20762B487373000000}
    end
  end
end
