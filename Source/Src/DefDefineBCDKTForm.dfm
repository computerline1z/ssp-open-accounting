object frmDefDefineBCDKT: TfrmDefDefineBCDKT
  Left = 186
  Top = 180
  Width = 661
  Height = 431
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
    Width = 653
    Height = 397
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      653
      397)
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
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'STT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1MANHOM: TdxDBGridMaskColumn
        Caption = 'Nh'#243'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object dxDBGrid1TEN: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1DAUNAM: TdxDBGridMaskColumn
        Caption = #272#7847'u n'#259'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DAUNAM'
        Caption_UTF7 = '+ARAepw-u n+AQM-m'
      end
      object dxDBGrid1CUOIKY: TdxDBGridMaskColumn
        Caption = 'Cu'#7889'i k'#7923
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUOIKY'
        Caption_UTF7 = 'Cu+HtE-i k+HvM'
      end
      object dxDBGrid1HESO_GROUP: TdxDBGridMaskColumn
        Caption = 'H'#7879' s'#7889' group'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HESO_GROUP'
        Caption_UTF7 = 'H+Hsc s+HtE group'
      end
      object dxDBGrid1ISMIN: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISMIN'
      end
      object dxDBGrid1THUYETMINH: TdxDBGridMaskColumn
        Caption = 'Thuy'#7871't minh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 165
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUYETMINH'
        Caption_UTF7 = 'Thuy+Hr8-t minh'
      end
      object dxDBGrid1DKTK: TdxDBGridMaskColumn
        Caption = #272'i'#7873'u ki'#7879'n t'#224'i kho'#7843'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 156
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DKTK'
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n t+AOA-i kho+HqM-n'
      end
      object dxDBGrid1HESO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'H'#7879' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HESO'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1METHOD_ID: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_ID'
      end
      object dxDBGrid1METHOD_NAME: TdxDBGridMaskColumn
        Caption = #272'i'#7873'u ki'#7879'n d'#7919' li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_NAME'
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n d+Hu8 li+Hsc-u'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 369
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
      Top = 369
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
      Top = 369
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
      Top = 369
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
      Left = 509
      Top = 369
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
      Left = 580
      Top = 369
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
            Visible = False
            Control = TntBitBtn1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem3: TdxLayoutItem
            ShowCaption = False
            Visible = False
            Control = TntBitBtn2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem4: TdxLayoutItem
            Offsets.Left = 10
            ShowCaption = False
            Visible = False
            Control = TntBitBtn3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Visible = False
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
      '192.168.9.148:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\acc' +
      'ounting.GDB'
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
        18020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094D4554484F445F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C201044656661756C74526F7748656967687402150F46696C7465722E437269
        74657269610A04000000000000000F4F7074696F6E734265686176696F720B0C
        6564676F4175746F536F72740E6564676F447261675363726F6C6C136564676F
        456E74657253686F77456469746F72136564676F496D6D656469617465456469
        746F720E6564676F5461625468726F7567680F6564676F566572745468726F75
        676800094F7074696F6E7344420B106564676F43616E63656C4F6E4578697411
        6564676F43616E4E617669676174696F6E116564676F436F6E6669726D44656C
        657465126564676F4C6F6164416C6C5265636F726473106564676F557365426F
        6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F4175746F5769
        647468136564676F42616E6448656164657257696474680D6564676F55736542
        69746D6170000A53686F7748656164657208000F546478444247726964436F6C
        756D6E07436F6C756D6E310942616E64496E646578020008526F77496E646578
        0200094669656C644E616D65060B4D4554484F445F4E414D45000000}
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
    DataSet = qryDefDkBCDKT
    Left = 61
    Top = 96
  end
  object qryDefDkBCDKT: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    DatabaseName = 
      '192.168.9.148:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\acc' +
      'ounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_BANGCANDOI_DK'
      'WHERE'
      '   DKTK = :OLD_DKTK AND'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_BANGCANDOI_DK SET'
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
      'INSERT INTO RPT_BANGCANDOI_DK('
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
    BeforeEdit = qryDefDkBCDKTBeforeEdit
    BeforeDelete = qryDefDkBCDKTBeforeDelete
    BeforeInsert = qryDefDkBCDKTBeforeInsert
    AfterInsert = qryDefDkBCDKTAfterInsert
    BeforePost = qryDefDkBCDKTBeforePost
    OnNewRecord = qryDefDkBCDKTNewRecord
    OnPostError = qryDefDkBCDKTPostError
    SQL.Strings = (
      'SELECT A.ID'
      '     , A.TEN'
      '     , A.MASO'
      '     , A.DAUNAM'
      '     , A.CUOIKY'
      '     , A.HESO_GROUP'
      '     , A.MANHOM'
      '     , A.ISMIN'
      '     , A.THUYETMINH'
      '     , B.DKTK'
      '     , B.HESO'
      '     , B.METHOD_ID'
      '     , C.METHOD_NAME'
      'FROM RPT_BANGCANDOI A'
      'LEFT JOIN RPT_BANGCANDOI_DK B ON A.ID = B.ID'
      'LEFT JOIN RPT_GETDATATYPE C on B.METHOD_ID = C.METHOD_ID'
      'where A.ID = :ID'
      'order by B.DKTK')
    FieldOptions = []
    Left = 53
    Top = 96
    object qryDefDkBCDKTID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryDefDkBCDKTTEN: TWideStringField
      FieldName = 'TEN'
      Size = 126
    end
    object qryDefDkBCDKTMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryDefDkBCDKTDAUNAM: TIBOFloatField
      FieldName = 'DAUNAM'
    end
    object qryDefDkBCDKTCUOIKY: TIBOFloatField
      FieldName = 'CUOIKY'
    end
    object qryDefDkBCDKTHESO_GROUP: TIBOFloatField
      FieldName = 'HESO_GROUP'
    end
    object qryDefDkBCDKTMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 6
    end
    object qryDefDkBCDKTISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryDefDkBCDKTTHUYETMINH: TWideStringField
      FieldName = 'THUYETMINH'
      Size = 15
    end
    object qryDefDkBCDKTDKTK: TWideStringField
      FieldName = 'DKTK'
      Size = 15
    end
    object qryDefDkBCDKTHESO: TIBOFloatField
      FieldName = 'HESO'
    end
    object qryDefDkBCDKTMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
    object qryDefDkBCDKTMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
  end
end
