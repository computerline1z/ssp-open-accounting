object TAPHOPCHIPHIFrm: TTAPHOPCHIPHIFrm
  Left = 216
  Top = 177
  Width = 709
  Height = 515
  HelpContext = 12
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
    Width = 701
    Height = 481
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnClose: TElPopupButton
      Left = 623
      Top = 453
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
      TabOrder = 4
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 547
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 3
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 79
      Top = 453
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
      TabOrder = 2
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 3
      Top = 453
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
      TabOrder = 1
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBTreeList1: TdxDBTreeList
      Left = 5
      Top = 6
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACCOUNT_ID'
      ParentField = 'PACCOUNT_ID'
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      OnMouseUp = dxDBTreeList1MouseUp
      DataSource = dsHESO
      DefaultRowHeight = 19
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoEnterThrough, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnEditing = dxDBTreeList1Editing
      object dxDBTreeList1DISPLAY_ID: TdxDBTreeListMaskColumn
        Caption = 'M'#227' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISPLAY_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBTreeList1ACCOUNT_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n chi ph'#237
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 287
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n chi ph+AO0'
      end
      object dxDBTreeList1PHATSINH: TdxDBTreeListMaskColumn
        Caption = 'S'#7889' ph'#225't sinh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 134
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PHATSINH'
        Caption_UTF7 = 'S+HtE ph+AOE-t sinh'
      end
      object dxDBTreeList1DDCUOIKY: TdxDBTreeListMaskColumn
        Caption = 'S'#7889' d'#7903' dang'
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DDCUOIKY'
        Caption_UTF7 = 'S+HtE d+Ht8 dang'
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup1: TdxLayoutGroup
        Caption = #167#232'i t'#173#238'ng chi ti'#213't'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
      end
      object locFormItem3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxDBTreeList1
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = btnPost
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          ShowCaption = False
          Control = btnCancel
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
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 388
    Top = 80
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
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
        Caption = 'T'#7853'p h'#7907'p chi ph'#237' v'#7873' gi'#225' th'#224'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryHESO: TIBOQuery
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
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM TAPHOP_CHIPHI'
      
        '  WHERE (ACCOUNT_ID = :OLD_ACCOUNT_ID) AND (PERIOD_ID = :OLD_PER' +
        'IOD_ID)')
    EditSQL.Strings = (
      'UPDATE TAPHOP_CHIPHI'
      '  SET PHATSINH = :PHATSINH,'
      '      DDCUOIKY = :DDCUOIKY'
      
        '  WHERE (ACCOUNT_ID = :OLD_ACCOUNT_ID) AND (PERIOD_ID = :OLD_PER' +
        'IOD_ID)')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO TAPHOP_CHIPHI ('
      '    ACCOUNT_ID,'
      '    PERIOD_ID,'
      '    PHATSINH,'
      '    DDCUOIKY)'
      '  VALUES ('
      '    :ACCOUNT_ID,'
      '    :PERIOD_ID,'
      '    :PHATSINH,'
      '    :DDCUOIKY)')
    KeyLinks.Strings = (
      'ACCOUNT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryHESOBeforeEdit
    SQL.Strings = (
      'SELECT *'
      'FROM SP_KC_LAYTAPHOPCP(:KYHT,:BRANCH_ID)'
      '')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryHESOACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 63
    end
    object qryHESODISPLAY_ID: TWideStringField
      FieldName = 'DISPLAY_ID'
      Size = 63
    end
    object qryHESOATYPE: TSmallintField
      FieldName = 'ATYPE'
    end
    object qryHESOPACCOUNT_ID: TWideStringField
      FieldName = 'PACCOUNT_ID'
      Size = 63
    end
    object qryHESOACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryHESOPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryHESOPHATSINH: TIBOFloatField
      FieldName = 'PHATSINH'
    end
    object qryHESODDCUOIKY: TIBOFloatField
      FieldName = 'DDCUOIKY'
    end
  end
  object dsHESO: TDataSource
    DataSet = qryHESO
    Left = 326
    Top = 287
  end
  object ActionList1: TActionList
    Left = 420
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsHESO
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 16469
      DataSource = dsHESO
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsHESO
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsHESO
    end
  end
end
