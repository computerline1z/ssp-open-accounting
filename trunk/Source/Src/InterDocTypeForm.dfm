object InterDocTypeFrm: TInterDocTypeFrm
  Left = 253
  Top = 179
  Width = 614
  Height = 435
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -1
    Left = 0
    Top = 0
    Width = 606
    Height = 401
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dbtlInterDocType: TdxDBTreeList
      Left = 5
      Top = 27
      Width = 682
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'INTERTYPE_ID'
      ParentField = 'PINTERTYPE_ID'
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      OnKeyDown = dbtlInterDocTypeKeyDown
      OnMouseUp = dbtlInterDocTypeMouseUp
      DataSource = dsInterDocType
      DefaultRowHeight = 19
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoEnterThrough, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dbtlInterDocTypeColumn5: TdxDBTreeListColumn
        Caption = 'M'#227
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTERTYPE_ID'
        Caption_UTF7 = 'M+AOM'
      end
      object dbtlInterDocTypeColumn1: TdxDBTreeListColumn
        Caption = 'T'#234'n lo'#7841'i ch'#7913'ng t'#7915' ngu'#7891'n'
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTERTYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i ch+Huk-ng t+Hus ngu+HtM-n'
      end
      object dbtlInterDocTypeColumn6: TdxDBTreeListPopupColumn
        Caption = 'Lo'#7841'i ch'#7913'ng t'#7915' K'#7871' to'#225'n'
        HeaderAlignment = taCenter
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        PopupControl = PopupFrm.Pnl_DocType
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbtlInterDocTypeColumn6CloseUp
        Caption_UTF7 = 'Lo+HqE-i ch+Huk-ng t+Hus K+Hr8 to+AOE-n'
      end
      object dbtlInterDocTypeColumn2: TdxDBTreeListPopupColumn
        Caption = 'T'#224'i kho'#7843'n c'#243
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbtlInterDocTypeColumn2CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n c+APM'
      end
      object dbtlInterDocTypeColumn3: TdxDBTreeListPopupColumn
        Caption = 'T'#224'i kho'#7843'n n'#7907
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbtlInterDocTypeColumn3CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n n+HuM'
      end
      object dbtlInterDocTypeColumn4: TdxDBTreeListPopupColumn
        Caption = 'T'#224'i kho'#7843'n VAT'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKVAT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbtlInterDocTypeColumn4CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n VAT'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 373
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
      TabOrder = 2
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 373
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
      TabOrder = 3
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 452
      Top = 373
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Tr'#7907' gi'#250'p'
      TabOrder = 4
      Action = acHelp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 528
      Top = 373
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 5
      Action = acClose
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBExtLookupEdit1: TdxDBExtLookupEdit
      Left = 74
      Top = 3
      Width = 223
      TabOrder = 0
      DataField = 'SUBSYSTEM_NAME'
      DataSource = dsSubSystem
      ImmediateDropDown = True
      PopupFormBorderStyle = pbsSimple
      PopupWidth = 590
      OnInitPopup = dxDBExtLookupEdit1InitPopup
      DBGridLayout = dxDBGridLayoutList1Item1
      PickListField = 'SUBSYSTEM_NAME'
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaVertical]
        Caption = ' T'#234'n ph'#226'n h'#7879'  '
        Control = dxDBExtLookupEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        LookAndFeel = dxLayoutStandardLookAndFeel1
        Control = dbtlInterDocType
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 5
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton2'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton4'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton5'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 412
    Top = 164
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryInterDocType: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEM_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM INTER_DOCTYPE'
      'WHERE'
      '   INTERTYPE_ID = :OLD_INTERTYPE_ID AND'
      '   SUBSYSTEM_ID = :OLD_SUBSYSTEM_ID')
    EditSQL.Strings = (
      'UPDATE INTER_DOCTYPE SET'
      '   INTERTYPE_ID = :INTERTYPE_ID, /*PK*/'
      '   SUBSYSTEM_ID = :SUBSYSTEM_ID, /*PK*/'
      '   PINTERTYPE_ID = :PINTERTYPE_ID,'
      '   INTERTYPE_NAME = :INTERTYPE_NAME,'
      '   TKCO = :TKCO,'
      '   TKNO = :TKNO,'
      '   TKVAT = :TKVAT,'
      '   DOCTYPE_ID = :DOCTYPE_ID'
      'WHERE'
      '   INTERTYPE_ID = :OLD_INTERTYPE_ID AND'
      '   SUBSYSTEM_ID = :OLD_SUBSYSTEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO INTER_DOCTYPE('
      '   INTERTYPE_ID, /*PK*/'
      '   SUBSYSTEM_ID, /*PK*/'
      '   PINTERTYPE_ID,'
      '   INTERTYPE_NAME,'
      '   TKCO,'
      '   TKNO,'
      '   TKVAT,'
      '   DOCTYPE_ID)'
      'VALUES ('
      '   :INTERTYPE_ID,'
      '   :SUBSYSTEM_ID,'
      '   :PINTERTYPE_ID,'
      '   :INTERTYPE_NAME,'
      '   :TKCO,'
      '   :TKNO,'
      '   :TKVAT,'
      '   :DOCTYPE_ID)')
    KeyLinks.Strings = (
      'SUBSYSTEM_ID'
      'INTERTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterInsert = qryInterDocTypeAfterInsert
    OnPostError = qryInterDocTypePostError
    OnDeleteError = qryInterDocTypeDeleteError
    DataSource = dsSubSystem
    SQL.Strings = (
      'SELECT SUBSYSTEM_ID'
      '     , INTERTYPE_ID'
      '     , PINTERTYPE_ID'
      '     , INTERTYPE_NAME'
      '     , INTER_DOCTYPE.TKCO'
      '     , INTER_DOCTYPE.TKNO'
      '     , INTER_DOCTYPE.TKVAT'
      '     , INTER_DOCTYPE.DOCTYPE_ID'
      '     , DOCTYPE_NAME'
      'FROM INTER_DOCTYPE'
      
        'LEFT JOIN DOC_TYPE on (INTER_DOCTYPE.DOCTYPE_ID= DOC_TYPE.DOCTYP' +
        'E_ID)'
      'where SUBSYSTEM_ID=:SUBSYSTEM_ID')
    FieldOptions = []
    Left = 48
    Top = 40
    object qryInterDocTypeSUBSYSTEM_ID: TSmallintField
      FieldName = 'SUBSYSTEM_ID'
      Required = True
    end
    object qryInterDocTypeINTERTYPE_ID: TSmallintField
      FieldName = 'INTERTYPE_ID'
      Required = True
    end
    object qryInterDocTypePINTERTYPE_ID: TSmallintField
      FieldName = 'PINTERTYPE_ID'
      Required = True
    end
    object qryInterDocTypeINTERTYPE_NAME: TWideStringField
      FieldName = 'INTERTYPE_NAME'
      Required = True
      Size = 126
    end
    object qryInterDocTypeTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryInterDocTypeTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryInterDocTypeTKVAT: TWideStringField
      FieldName = 'TKVAT'
      Size = 15
    end
    object qryInterDocTypeDOCTYPE_ID: TSmallintField
      FieldName = 'DOCTYPE_ID'
    end
    object qryInterDocTypeDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
  end
  object dsInterDocType: TDataSource
    DataSet = qryInterDocType
    Left = 48
    Top = 72
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
        Caption = 'C'#225'c lo'#7841'i ch'#7913'ng t'#7915' t'#7915' c'#225'c ph'#226'n h'#7879' kh'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 48
    Top = 120
  end
  object ActionList1: TActionList
    Left = 376
    Top = 160
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object acHelp: TAction
      Caption = 'acHelp'
    end
    object acClose: TAction
      Caption = 'acClose'
      OnExecute = acCloseExecute
    end
  end
  object qrySubSystem: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    EditSQL.Strings = (
      'UPDATE SUBSYSTEM SET'
      '   SUBSYSTEM_ID = :SUBSYSTEM_ID, /*PK*/'
      '   SUBSYSTEM_NAME = :SUBSYSTEM_NAME'
      'WHERE'
      '   SUBSYSTEM_ID = :OLD_SUBSYSTEM_ID')
    IB_Connection = MainDM.cnMain
    KeyLinks.Strings = (
      'SUBSYSTEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterInsert = qryInterDocTypeAfterInsert
    OnPostError = qryInterDocTypePostError
    OnDeleteError = qryInterDocTypeDeleteError
    SQL.Strings = (
      'SELECT SUBSYSTEM_ID'
      '     , SUBSYSTEM_NAME'
      'FROM SUBSYSTEM')
    FieldOptions = []
    Left = 320
    Top = 32
    object qrySubSystemSUBSYSTEM_ID: TIntegerField
      FieldName = 'SUBSYSTEM_ID'
      Required = True
    end
    object qrySubSystemSUBSYSTEM_NAME: TWideStringField
      FieldName = 'SUBSYSTEM_NAME'
      Required = True
      Size = 126
    end
  end
  object dsSubSystem: TDataSource
    DataSet = qrySubSystem
    Left = 320
    Top = 64
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 208
    Top = 112
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        F4010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060C53554253595354454D5F4944
        0D53756D6D61727947726F7570730E001053756D6D617279536570617261746F
        7206022C200A44617461536F75726365071B496E746572446F63547970654672
        6D2E647353756253797374656D1044656661756C74526F774865696768740213
        0F46696C7465722E43726974657269610A0400000000000000094F7074696F6E
        7344420B106564676F43616E63656C4F6E457869740D6564676F43616E44656C
        6574650D6564676F43616E496E73657274116564676F43616E4E617669676174
        696F6E116564676F436F6E6669726D44656C657465126564676F4C6F6164416C
        6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F7074696F
        6E73566965770B0D6564676F4175746F5769647468136564676F42616E644865
        6164657257696474680D6564676F5573654269746D6170000A53686F77486561
        64657208000F546478444247726964436F6C756D6E0E53554253595354454D5F
        4E414D450942616E64496E646578020008526F77496E6465780200094669656C
        644E616D65060E53554253595354454D5F4E414D45000000}
    end
  end
end
