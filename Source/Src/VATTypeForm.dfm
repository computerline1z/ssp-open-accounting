object VATTypeFrm: TVATTypeFrm
  Left = 285
  Top = 210
  Width = 495
  Height = 362
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
    Width = 487
    Height = 328
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      487
      328)
    object btnCancel: TElPopupButton
      Left = 237
      Top = 300
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
      TabOrder = 4
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 159
      Top = 300
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
      TabOrder = 3
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 409
      Top = 300
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
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 331
      Top = 300
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
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 300
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
      TabOrder = 2
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 300
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
      TabOrder = 1
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 8
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'VAT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsInvType
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHVAT_ID: TdxDBGridColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_ID'
      end
      object grdKHVAT_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i thu'#7871' GTGT '
        HeaderAlignment = taCenter
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i thu+Hr8 GTGT '
      end
      object grdKHVAT_PER: TdxDBGridCalcColumn
        Caption = '% GTGT'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_PER'
      end
      object grdKHOTHER_ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_ID'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object grdKHMETHOD_NAME: TdxDBGridExtLookupColumn
        Caption = 'C'#225'ch t'#237'nh'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_NAME'
        OnCloseUp = grdKHMETHOD_NAMECloseUp
        DBGridLayout = dxDBGridLayoutList1Item1
        Caption_UTF7 = 'C+AOE-ch t+AO0-nh'
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
      object lociKH: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid4'
        ShowCaption = False
        Control = grdKH
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
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
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
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
    Left = 368
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 420
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsInvType
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsInvType
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsInvType
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsInvType
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
        Caption = 'B'#7843'ng k'#234' c'#225'c lo'#7841'i  thu'#7871' GTGT'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
  object qryInvType: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM VAT_LIST'
      'WHERE'
      '   VAT_ID = :OLD_VAT_ID')
    EditSQL.Strings = (
      'UPDATE VAT_LIST SET'
      '   VAT_ID = :VAT_ID, /*PK*/'
      '   VAT_NAME = :VAT_NAME,'
      '   VAT_PER = :VAT_PER,'
      '   OTHER_ID = :OTHER_ID,'
      '   METHOD_ID = :METHOD_ID'
      'WHERE'
      '   VAT_ID = :OLD_VAT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO VAT_LIST('
      '   VAT_ID, /*PK*/'
      '   VAT_NAME,'
      '   VAT_PER,'
      '   OTHER_ID,'
      '   METHOD_ID)'
      'VALUES ('
      '   :VAT_ID,'
      '   :VAT_NAME,'
      '   :VAT_PER,'
      '   :OTHER_ID,'
      '   :METHOD_ID)')
    KeyLinks.Strings = (
      'VAT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryInvTypeBeforeEdit
    BeforeDelete = qryInvTypeBeforeDelete
    BeforeInsert = qryInvTypeBeforeInsert
    AfterInsert = qryInvTypeAfterInsert
    BeforePost = qryInvTypeBeforePost
    OnNewRecord = qryInvTypeNewRecord
    OnPostError = qryInvTypePostError
    OnDeleteError = qryInvTypeDeleteError
    SQL.Strings = (
      'SELECT VAT_ID'
      '     , VAT_NAME'
      '     , VAT_PER'
      '     , OTHER_ID'
      '     , VAT_LIST.METHOD_ID'
      '     , METHOD_NAME  '
      'FROM VAT_LIST'
      
        'LEFT JOIN RPT_GETDATATYPE on (VAT_LIST.METHOD_ID= RPT_GETDATATYP' +
        'E.METHOD_ID)'
      'order by VAT_ID')
    FieldOptions = []
    Left = 48
    Top = 84
    object qryInvTypeVAT_ID: TSmallintField
      FieldName = 'VAT_ID'
      Required = True
    end
    object qryInvTypeVAT_NAME: TWideStringField
      FieldName = 'VAT_NAME'
      Size = 126
    end
    object qryInvTypeVAT_PER: TIBOFloatField
      FieldName = 'VAT_PER'
    end
    object qryInvTypeOTHER_ID: TWideStringField
      FieldName = 'OTHER_ID'
      Size = 15
    end
    object qryInvTypeMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
    object qryInvTypeMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
  end
  object dsInvType: TDataSource
    DataSet = qryInvType
    Left = 48
    Top = 111
  end
  object qryPMethod: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'METHOD_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT METHOD_ID'
      '     , METHOD_NAME'
      'FROM RPT_GETDATATYPE'
      'where METHOD_ID>=10 and  METHOD_ID<=11')
    FieldOptions = []
    Left = 189
    Top = 112
    object qryPMethodMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
      Required = True
    end
    object qryPMethodMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
  end
  object dsPMethod: TDataSource
    DataSet = qryPMethod
    Left = 189
    Top = 152
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 296
    Top = 104
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        39020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094D4554484F445F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200A44617461536F7572636507145641545479706546726D2E6473504D6574
        686F641044656661756C74526F7748656967687402150F46696C7465722E4372
        6974657269610A04000000000000000F4F7074696F6E734265686176696F720B
        0C6564676F4175746F536F72740E6564676F447261675363726F6C6C13656467
        6F456E74657253686F77456469746F72136564676F496D6D6564696174654564
        69746F720E6564676F5461625468726F7567680F6564676F566572745468726F
        75676800094F7074696F6E7344420B106564676F43616E63656C4F6E45786974
        116564676F43616E4E617669676174696F6E116564676F436F6E6669726D4465
        6C657465126564676F4C6F6164416C6C5265636F726473106564676F55736542
        6F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F4175746F57
        69647468136564676F42616E6448656164657257696474680D6564676F557365
        4269746D6170000A53686F7748656164657208000F546478444247726964436F
        6C756D6E07436F6C756D6E310942616E64496E646578020008526F77496E6465
        780200094669656C644E616D65060B4D4554484F445F4E414D45000000}
    end
  end
end
