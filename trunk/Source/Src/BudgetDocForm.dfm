object BudgetDocFrm: TBudgetDocFrm
  Left = 128
  Top = 126
  Width = 795
  Height = 535
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
  OnActivate = FormActivate
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
    Width = 787
    Height = 501
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnClose: TElPopupButton
      Left = 709
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCloseClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPanel1: TElPanel
      Left = 3
      Top = 3
      Width = 781
      Height = 467
      Align = alNone
      MouseCapture = False
      TabOrder = 0
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter1: TSplitter
        Left = 221
        Top = 1
        Width = 5
        Height = 465
      end
      object dxDBTreeList1: TdxDBTreeList
        Left = 1
        Top = 1
        Width = 220
        Height = 465
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'BUDGET_NO'
        ParentField = 'PBUDGET_NO'
        Align = alLeft
        BorderStyle = bsNone
        TabOrder = 0
        OnKeyDown = dxDBTreeList1KeyDown
        DataSource = dsBudget
        DefaultRowHeight = 21
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
        OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
        OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
        TreeLineColor = clGrayText
        OnChangeNode = dxDBTreeList1ChangeNode
        object dxDBTreeList1BUDGET_NAME: TdxDBTreeListMaskColumn
          Caption = #272'i'#7873'u kho'#7843'n, ng'#226'n s'#225'ch'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 166
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BUDGET_NAME'
          Caption_UTF7 = '+ARA-i+HsE-u kho+HqM-n, ng+AOI-n s+AOE-ch'
        end
        object dxDBTreeList1ACCOUNT_ID: TdxDBTreeListPopupColumn
          Caption = 'SHTK'
          HeaderAlignment = taCenter
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ACCOUNT_ID'
          PopupControl = PopupFrm.PnlTK
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = dxDBTreeList1ACCOUNT_IDCloseUp
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 226
        Top = 1
        Width = 554
        Height = 465
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SOPHIEU'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 1
        OnDblClick = dxDBGrid1DblClick
        OnMouseUp = dxDBGrid1MouseUp
        DataSource = dsDoc
        DefaultRowHeight = 19
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        OnCustomDrawCell = dxDBGrid1CustomDrawCell
        object dxDBGrid1SOPHIEU: TdxDBGridMaskColumn
          Caption = 'S'#7889' phi'#7871'u'
          HeaderAlignment = taCenter
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOPHIEU'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '#,0 phi'#7871'u'
          Caption_UTF7 = 'S+HtE phi+Hr8-u'
          SummaryFooterFormat_UTF7 = '#,0 phi+Hr8-u'
        end
        object dxDBGrid1NGAYLAP: TdxDBGridDateColumn
          Caption = 'Ng'#224'y l'#7853'p'
          HeaderAlignment = taCenter
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NGAYLAP'
          Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
        end
        object dxDBGrid1SOTIEN: TdxDBGridMaskColumn
          Caption = 'S'#7889' ti'#7873'n'
          HeaderAlignment = taCenter
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOTIEN'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,0;-#,0'
          Caption_UTF7 = 'S+HtE ti+HsE-n'
        end
        object dxDBGrid1SOTIENKT: TdxDBGridMaskColumn
          Caption = 'S'#7889' ti'#7873'n trong KT'
          HeaderAlignment = taCenter
          Visible = False
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOTIENKT'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,0;-#,0'
          Caption_UTF7 = 'S+HtE ti+HsE-n trong KT'
        end
        object dxDBGrid1SOTIENCL: TdxDBGridMaskColumn
          Caption = 'Ch'#234'nh l'#7879'ch'
          HeaderAlignment = taCenter
          Visible = False
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOTIENCL'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,0;-#,0'
          Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch'
        end
        object dxDBGrid1GHICHU: TdxDBGridMaskColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GHICHU'
          Caption_UTF7 = 'Ghi ch+APo'
        end
        object dxDBGrid1CHUNGTU: TdxDBGridMaskColumn
          Caption = 'Ch'#7913'ng t'#7915' g'#7889'c'
          HeaderAlignment = taCenter
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHUNGTU'
          Caption_UTF7 = 'Ch+Huk-ng t+Hus g+HtE-c'
        end
        object dxDBGrid1NGUOINHAN_NOP: TdxDBGridMaskColumn
          Caption = 'H'#7885' t'#234'n'
          HeaderAlignment = taCenter
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NGUOINHAN_NOP'
          Caption_UTF7 = 'H+Hs0 t+AOo-n'
        end
        object dxDBGrid1DIACHI: TdxDBGridMaskColumn
          Caption = #272#7883'a ch'#7881
          HeaderAlignment = taCenter
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIACHI'
          Caption_UTF7 = '+ARAeyw-a ch+Hsk'
        end
        object dxDBGrid1KH_NV_PB: TdxDBGridMaskColumn
          Caption = #272#7889'i t'#432#7907'ng'
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KH_NV_PB'
          Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
        end
        object dxDBGrid1TAIKHOAN_NH: TdxDBGridMaskColumn
          Caption = 'TK Ng'#226'n h'#224'ng'
          HeaderAlignment = taCenter
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAIKHOAN_NH'
          Caption_UTF7 = 'TK Ng+AOI-n h+AOA-ng'
        end
        object dxDBGrid1MATIENTE: TdxDBGridMaskColumn
          Caption = 'Ti'#7873'n t'#7879
          HeaderAlignment = taCenter
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MATIENTE'
          Caption_UTF7 = 'Ti+HsE-n t+Hsc'
        end
        object dxDBGrid1TYGIA: TdxDBGridMaskColumn
          Caption = 'T'#7927' gi'#225
          HeaderAlignment = taCenter
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TYGIA'
          Caption_UTF7 = 'T+Hvc gi+AOE'
        end
        object dxDBGrid1SOTIENNGOAITE: TdxDBGridMaskColumn
          Caption = 'Ti'#7873'n ngo'#7841'i t'#7879
          HeaderAlignment = taCenter
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOTIENNGOAITE'
          Caption_UTF7 = 'Ti+HsE-n ngo+HqE-i t+Hsc'
        end
        object dxDBGrid1STATUS_FLAG: TdxDBGridMaskColumn
          Caption = 'TT'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATUS_FLAG'
        end
      end
    end
    object btnXemCT: TElPopupButton
      Left = 3
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem phi'#7871'u'
      TabOrder = 1
      OnClick = btnXemCTClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbFilter: TElRadioButton
      Left = 81
      Top = 477
      Width = 296
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Hi'#7875'n th'#7883' c'#225'c phi'#7871'u t'#432#417'ng '#7913'ng v'#7899'i '#273'i'#7873'u kho'#7843'n b'#234'n tr'#225'i'
      TabOrder = 2
      OnClick = rbFilterClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElRadioButton2: TElRadioButton
      Left = 380
      Top = 477
      Width = 213
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Hi'#7875'n th'#7883' t'#7845't c'#7843' c'#225'c phi'#7871'u trong th'#225'ng'
      TabOrder = 3
      OnClick = ElRadioButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 631
      Top = 473
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 4
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = ElPanel1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = btnXemCT
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'ElRadioButton1'
          ShowCaption = False
          Control = rbFilter
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'ElRadioButton2'
          ShowCaption = False
          Control = ElRadioButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
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
    Left = 280
    Top = 128
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryBudget: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    EditSQL.Strings = (
      'UPDATE BUDGET_TREE SET'
      '   BUDGET_NO = :BUDGET_NO, /*PK*/'
      '   PBUDGET_NO = :PBUDGET_NO,'
      '   BUDGET_NAME = :BUDGET_NAME,'
      '   ACCOUNT_ID = :ACCOUNT_ID'
      'WHERE'
      '   BUDGET_NO = :OLD_BUDGET_NO')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'BUDGET_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBudgetBeforeEdit
    BeforePost = qryBudgetBeforePost
    OnPostError = qryBudgetPostError
    SQL.Strings = (
      'SELECT BUDGET_NO'
      '     , PBUDGET_NO'
      '     , BUDGET_NAME'
      '     , ACCOUNT_ID'
      '     , DIRECTION'
      'FROM BUDGET_TREE')
    FieldOptions = []
    Left = 158
    Top = 112
    object qryBudgetBUDGET_NO: TIntegerField
      FieldName = 'BUDGET_NO'
      Required = True
    end
    object qryBudgetPBUDGET_NO: TIntegerField
      FieldName = 'PBUDGET_NO'
    end
    object qryBudgetBUDGET_NAME: TWideStringField
      FieldName = 'BUDGET_NAME'
      Required = True
      Size = 126
    end
    object qryBudgetACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 15
    end
    object qryBudgetDIRECTION: TSmallintField
      FieldName = 'DIRECTION'
    end
  end
  object dsBudget: TDataSource
    DataSet = qryBudget
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
        Caption = 'T'#236'nh h'#236'nh thu chi ng'#226'n s'#225'ch t'#7915' B'#7897' ph'#226'n t'#224'i ch'#237'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryDoc: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'tungay'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'denngay'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    EditSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'SOPHIEU')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBudgetBeforeEdit
    BeforePost = qryBudgetBeforePost
    OnFilterRecord = qryDocFilterRecord
    OnPostError = qryBudgetPostError
    SQL.Strings = (
      'SELECT SOPHIEU'
      '     , NGAYLAP'
      '     , CHUNGTU'
      '     , NGUOINHAN_NOP'
      '     , DIACHI'
      '     , MADIEUKHOAN'
      '     , KH_NV_PB'
      '     , TAIKHOAN_NH'
      '     , MATIENTE'
      '     , TYGIA'
      '     , SOTIENNGOAITE'
      '     , SOTIEN,SOTIENKT,SOTIENCL'
      '     , LOAIPHIEU'
      '     , GHICHU'
      '     , PHANHE'
      '     , STATUS_FLAG'
      '     , OTYPE_ID'
      'FROM SP_INTERFACE(:tungay,:denngay)'
      ' order by NGAYLAP')
    FieldOptions = []
    Left = 326
    Top = 128
    object qryDocSOPHIEU: TWideStringField
      FieldName = 'SOPHIEU'
      Required = True
      Size = 30
    end
    object qryDocNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
      Required = True
    end
    object qryDocCHUNGTU: TWideStringField
      FieldName = 'CHUNGTU'
      Size = 126
    end
    object qryDocNGUOINHAN_NOP: TWideStringField
      FieldName = 'NGUOINHAN_NOP'
      Size = 126
    end
    object qryDocDIACHI: TWideStringField
      FieldName = 'DIACHI'
      Size = 126
    end
    object qryDocMADIEUKHOAN: TIntegerField
      FieldName = 'MADIEUKHOAN'
    end
    object qryDocKH_NV_PB: TWideStringField
      FieldName = 'KH_NV_PB'
      Size = 30
    end
    object qryDocTAIKHOAN_NH: TWideStringField
      FieldName = 'TAIKHOAN_NH'
      Size = 30
    end
    object qryDocMATIENTE: TWideStringField
      FieldName = 'MATIENTE'
      Size = 6
    end
    object qryDocTYGIA: TIBOFloatField
      FieldName = 'TYGIA'
    end
    object qryDocSOTIENNGOAITE: TIBOFloatField
      FieldName = 'SOTIENNGOAITE'
    end
    object qryDocSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
    end
    object qryDocLOAIPHIEU: TSmallintField
      FieldName = 'LOAIPHIEU'
    end
    object qryDocGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 255
    end
    object qryDocPHANHE: TSmallintField
      FieldName = 'PHANHE'
    end
    object qryDocSTATUS_FLAG: TSmallintField
      FieldName = 'STATUS_FLAG'
    end
    object qryDocOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryDocSOTIENKT: TIBOFloatField
      FieldName = 'SOTIENKT'
    end
    object qryDocSOTIENCL: TIBOFloatField
      FieldName = 'SOTIENCL'
    end
  end
  object dsDoc: TDataSource
    DataSet = qryDoc
    Left = 326
    Top = 156
  end
end
