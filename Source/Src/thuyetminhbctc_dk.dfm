object frmThuyetminhbctc_dk: TfrmThuyetminhbctc_dk
  Left = 217
  Top = 219
  Width = 456
  Height = 308
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
    Width = 448
    Height = 274
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      448
      274)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DKTK'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsDefDkBCDKT
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1DKTK: TdxDBGridPopupColumn
        Caption = #272'i'#7873'u ki'#7879'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DKTK'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBGrid1DKTKCloseUp
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n t+AOA-i kho+HqM-n'
      end
      object dxDBGrid1HESO: TdxDBGridMaskColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HESO'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1METHOD_NAME: TdxDBGridExtLookupColumn
        Caption = #272'i'#7873'u ki'#7879'n d'#7919' li'#7879'u'
        HeaderAlignment = taCenter
        Width = 229
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_NAME'
        OnCloseUp = dxDBGrid1METHOD_NAMECloseUp
        DBGridLayout = dxDBGridLayoutList1Item1
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n d+Hu8 li+Hsc-u'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 246
      Width = 70
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
    object TntBitBtn2: TElPopupButton
      Left = 74
      Top = 246
      Width = 70
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
    object TntBitBtn3: TElPopupButton
      Left = 155
      Top = 246
      Width = 70
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
    object TntBitBtn4: TElPopupButton
      Left = 226
      Top = 246
      Width = 70
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
    object TntBitBtn5: TElPopupButton
      Left = 304
      Top = 246
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 375
      Top = 246
      Width = 70
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
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem2: TdxLayoutItem
            ShowCaption = False
            Control = TntBitBtn1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem3: TdxLayoutItem
            ShowCaption = False
            Control = TntBitBtn2
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
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
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
    Left = 580
    Top = 340
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryPMethod: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
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
      'FROM RPT_GETDATATYPE')
    FieldOptions = []
    Left = 181
    Top = 124
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
        4B020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094D4554484F445F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200A44617461536F75726365071E66726D5468757965746D696E6862637463
        5F646B2E6473504D6574686F641044656661756C74526F774865696768740215
        0F46696C7465722E43726974657269610A04000000000000000F4F7074696F6E
        734265686176696F720B0C6564676F4175746F536F72740E6564676F44726167
        5363726F6C6C136564676F456E74657253686F77456469746F72136564676F49
        6D6D656469617465456469746F720E6564676F5461625468726F7567680F6564
        676F566572745468726F75676800094F7074696F6E7344420B106564676F4361
        6E63656C4F6E45786974116564676F43616E4E617669676174696F6E11656467
        6F436F6E6669726D44656C657465126564676F4C6F6164416C6C5265636F7264
        73106564676F557365426F6F6B6D61726B73000B4F7074696F6E73566965770B
        0D6564676F4175746F5769647468136564676F42616E64486561646572576964
        74680D6564676F5573654269746D6170000A53686F7748656164657208001354
        64784442477269644D61736B436F6C756D6E0B4D4554484F445F4E414D450942
        616E64496E646578020008526F77496E6465780200094669656C644E616D6506
        0B4D4554484F445F4E414D45000000}
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
        Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 152
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsDefDkBCDKT
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsDefDkBCDKT
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsDefDkBCDKT
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsDefDkBCDKT
    end
  end
  object dsDefDkBCDKT: TDataSource
    DataSet = qry
    Left = 61
    Top = 96
  end
  object qry: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGTHUYETMINH_BCTC_DK'
      'WHERE'
      '   DKTK = :OLD_DKTK AND'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGTHUYETMINH_BCTC_DK SET'
      '   DKTK = :DKTK, /*PK*/'
      '   ID = :ID, /*PK*/'
      '   HESO = :HESO,'
      '   METHOD_ID = :METHOD_ID'
      'WHERE'
      '   DKTK = :OLD_DKTK AND'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO RPT_BANGTHUYETMINH_BCTC_DK('
      '   DKTK, /*PK*/'
      '   ID, /*PK*/'
      '   HESO,'
      '   METHOD_ID)'
      'VALUES ('
      '   :DKTK,'
      '   :ID,'
      '   :HESO,'
      '   :METHOD_ID)')
    KeyLinks.Strings = (
      'ID'
      'DKTK')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryBeforeDelete
    AfterInsert = qryAfterInsert
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    OnPostError = qryPostError
    OnDeleteError = qryDeleteError
    DataSource = ThuyetminhBCTCFrm.dsNoidung2
    SQL.Strings = (
      'SELECT A.ID'
      '     , A.DKTK'
      '     , A.HESO'
      '     , A.METHOD_ID'
      '     , B.method_name'
      'FROM RPT_BANGTHUYETMINH_BCTC_DK A'
      'LEFT JOIN RPT_GETDATATYPE B on'
      '(A.METHOD_ID= B.METHOD_ID)'
      'where ID=:ID'
      'order by DKTK')
    FieldOptions = []
    Left = 53
    Top = 96
    object qryID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryDKTK: TWideStringField
      FieldName = 'DKTK'
      Required = True
      Size = 15
    end
    object qryMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
      Required = True
    end
    object qryMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Required = True
      Size = 30
    end
    object qryHESO: TIBOFloatField
      FieldName = 'HESO'
    end
  end
end
