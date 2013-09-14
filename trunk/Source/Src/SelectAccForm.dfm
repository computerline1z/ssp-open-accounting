object SelectAccFrm: TSelectAccFrm
  Left = 276
  Top = 102
  HelpContext = 4
  BorderStyle = bsDialog
  ClientHeight = 421
  ClientWidth = 498
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
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 498
    Height = 421
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object BitBtn1: TElPopupButton
      Left = 341
      Top = 395
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 1
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 422
      Top = 395
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 2
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBTreeList1: TdxDBTreeList
      Left = 3
      Top = 3
      Width = 250
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Account_ID'
      ParentField = 'PAccount_ID'
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxDBTreeList1DblClick
      OnKeyDown = dxDBTreeList1KeyDown
      DataSource = dsPSubAcc
      DefaultRowHeight = 21
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1ACCOUNT_ID: TdxDBTreeListMaskColumn
        Caption = 'S'#7889' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        Caption_UTF7 = 'S+HtE hi+Hsc-u'
      end
      object dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 278
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
      end
      object dxDBTreeList1ACC_MAP_ID: TdxDBTreeListColumn
        Caption = 'T'#224'i kho'#7843'n Mapping'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACC_MAP_ID'
        Caption_UTF7 = 'T+AOA-i kho+HqM-n Mapping'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Control = dxDBTreeList1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item15: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 224
    Top = 392
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 4
      Offsets.ControlOffsetVert = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object dsPSubAcc: TDataSource
    DataSet = qryPSubAcc
    Left = 82
    Top = 112
  end
  object qryPSubAcc: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ACCOUNT_ID'
        ParamType = ptInput
      end>
    DatabaseName = '127.0.0.1:F:\Project\GHD\demo.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'ACCOUNT_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACCOUNT_ID'
      '     , PACCOUNT_ID'
      '     , ACCOUNT_NAME'
      '     , OTYPE_ID'
      '     , ACCOUNT_TAG'
      '     , ISMIN'
      '     , ACC_MAP_ID'
      'FROM Account_list where ACCOUNT_ID starting with :ACCOUNT_ID'
      'order by account_id')
    FieldOptions = []
    Left = 82
    Top = 80
    object qryPSubAccACCOUNT_TAG: TSmallintField
      FieldName = 'ACCOUNT_TAG'
    end
    object qryPSubAccOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryPSubAccACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryPSubAccPACCOUNT_ID: TWideStringField
      FieldName = 'PACCOUNT_ID'
      Size = 15
    end
    object qryPSubAccACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryPSubAccISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryPSubAccACC_MAP_ID: TWideStringField
      FieldName = 'ACC_MAP_ID'
      Size = 15
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
        Caption = 'Ch'#7885'n ti'#7875'u kho'#7843'n nh'#7887' nh'#7845't'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
end
