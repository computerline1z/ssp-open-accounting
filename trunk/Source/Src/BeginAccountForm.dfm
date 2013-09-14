object BeginAccountFrm: TBeginAccountFrm
  Tag = 90
  Left = 148
  Top = 60
  Width = 738
  Height = 543
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
    Width = 730
    Height = 509
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBTreeList2: TdxDBTreeList
      Left = 2
      Top = 3
      Width = 486
      Height = 462
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
      TabOrder = 0
      OnKeyDown = dxDBTreeList2KeyDown
      DataSource = dsAccLst
      DefaultRowHeight = 20
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoEnterThrough, etoHorzThrough, etoImmediateEditor, etoTabThrough, etoVertThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoUseBitmap, etoUseImageIndexForSelected]
      ShowFooter = True
      ShowGrid = True
      TreeLineColor = clGrayText
      OnCollapsing = dxDBTreeList2Collapsing
      OnCustomDrawCell = dxDBTreeList2CustomDrawCell
      OnEditing = dxDBTreeList2Editing
      object dxDBTreeList2Column2: TdxDBTreeListColumn
        Tag = 91
        Caption = 'S'#7889' hi'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 231
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 t'#224'i kho'#7843'n'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
        SummaryFooterFormat_UTF7 = '#,0 t+AOA-i kho+HqM-n'
      end
      object dxDBTreeList2Column3: TdxDBTreeListColumn
        Tag = 92
        Caption = '  T'#234'n t'#224'i kho'#7843'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 249
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        SummaryFooterType = cstCount
        SummaryFooterFormat = 'T'#7893'ng s'#7889' d'#432' c'#225'c t'#224'i kho'#7843'n trong b'#7843'ng :'
        Caption_UTF7 = '  T+AOo-n t+AOA-i kho+HqM-n'
        SummaryFooterFormat_UTF7 = 'T+HtU-ng s+HtE d+AbA c+AOE-c t+AOA-i kho+HqM-n trong b+HqM-ng :'
      end
      object dxDBTreeList2BEGIN_DEBIT: TdxDBTreeListCalcColumn
        Caption = 'B'#234'n n'#7907
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_DEBIT'
        SummaryFooterType = cstSum
        SummaryFooterField = 'DEBIT'
        Caption_UTF7 = 'B+AOo-n n+HuM'
      end
      object dxDBTreeList2BEGIN_CREDIT: TdxDBTreeListCalcColumn
        Caption = 'B'#234'n c'#243
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_CREDIT'
        SummaryFooterType = cstSum
        SummaryFooterField = 'CREDIT'
        Caption_UTF7 = 'B+AOo-n c+APM'
      end
      object dxDBTreeList2Column6: TdxDBTreeListColumn
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTYPE_ID'
      end
      object dxDBTreeList2Column7: TdxDBTreeListColumn
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISMIN'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 75
      Top = 484
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 2
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 0
      Top = 484
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 1
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 580
      Top = 484
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 655
      Top = 484
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkHasObj: TdxCheckEdit
      Left = 150
      Top = 488
      Width = 219
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      OnClick = chkHasChildClick
      Caption = 'Hi'#7879'n m'#224'u ph'#226'n bi'#7879't c'#225'c TK c'#243' &chi ti'#7871't'
      State = cbsChecked
    end
    object chkHasChild: TdxCheckEdit
      Left = 369
      Top = 488
      Width = 192
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      OnClick = chkHasChildClick
      Caption = 'Hi'#7879'n m'#224'u ph'#226'n bi'#7879't c'#225'c TK c'#243' c&on'
      State = cbsChecked
    end
    object dxLayoutGroup1: TdxLayoutGroup
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
          Offsets.Top = 1
          ShowCaption = False
          Control = dxDBTreeList2
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          Offsets.Top = 2
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl2Item2: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item5: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Caption = 'dxCheckEdit1'
            ShowCaption = False
            Control = chkHasObj
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Caption = 'dxCheckEdit2'
            ShowCaption = False
            Control = chkHasChild
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton4'
            ShowCaption = False
            Control = ElPopupButton4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 16
    Top = 40
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object qryAccLst: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      '')
    EditSQL.Strings = (
      
        'execute procedure SP_CAPNHATSODUDK(:ACCOUNT_ID,:KYHT,:BEGIN_DEBI' +
        'T,:BEGIN_CREDIT,:BRANCH_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'ACCOUNT_ID'
      'BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryAccLstBeforeEdit
    AfterPost = qryAccLstAfterPost
    SQL.Strings = (
      'select ACCOUNT_ID,'
      '    KYHT,'
      '    PACCOUNT_ID,'
      '    ACCOUNT_NAME,'
      '    OTYPE_ID,'
      '    ISMIN,'
      '    BEGIN_DEBIT,'
      '    BEGIN_CREDIT,'
      '    DEBIT,'
      '    CREDIT,'
      '    BRANCH_ID,'
      '    BALANCE_TYPE'
      'FROM SP_BEGINACCOUNT(:PERIOD_ID,:BRANCH_ID) '
      'order by account_id')
    FieldOptions = []
    Left = 176
    Top = 76
    object qryAccLstACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 15
    end
    object qryAccLstKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryAccLstPACCOUNT_ID: TWideStringField
      FieldName = 'PACCOUNT_ID'
      Size = 15
    end
    object qryAccLstACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryAccLstOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryAccLstISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryAccLstBEGIN_DEBIT: TIBOFloatField
      FieldName = 'BEGIN_DEBIT'
    end
    object qryAccLstBEGIN_CREDIT: TIBOFloatField
      FieldName = 'BEGIN_CREDIT'
    end
    object qryAccLstDEBIT: TIBOFloatField
      FieldName = 'DEBIT'
    end
    object qryAccLstCREDIT: TIBOFloatField
      FieldName = 'CREDIT'
    end
    object qryAccLstBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
    object qryAccLstBALANCE_TYPE: TSmallintField
      FieldName = 'BALANCE_TYPE'
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
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsAccLst
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
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
        Caption = 'S'#7889' d'#432' t'#224'i kho'#7843'n ban '#273#7847'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 40
  end
end
