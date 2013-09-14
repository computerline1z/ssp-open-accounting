object TMBCTC_35Frm: TTMBCTC_35Frm
  Left = 251
  Top = 167
  Width = 716
  Height = 509
  HelpContext = 15
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
    Width = 708
    Height = 475
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      708
      475)
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
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      DataSource = srcTGNV
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1MANHOM: TdxDBGridMaskColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object dxDBGrid1TEN: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 272
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1DAUKY: TdxDBGridMaskColumn
        Caption = #272#7847'u k'#7923
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DAUKY'
        Caption_UTF7 = '+ARAepw-u k+HvM'
      end
      object dxDBGrid1CUOIKY: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUOIKY'
      end
      object dxDBGrid1TANGKY: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TANGKY'
      end
      object dxDBGrid1GIAMKY: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GIAMKY'
      end
      object dxDBGrid1STATUSFLAG: TdxDBGridMaskColumn
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUSFLAG'
      end
      object dxDBGrid1DIEUKIEN: TdxDBGridMaskColumn
        Caption = #272'i'#7873'u ki'#7879'n'
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN'
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n'
      end
      object dxDBGrid1DIEUKIEN_1: TdxDBGridMaskColumn
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN_1'
      end
      object dxDBGrid1DIEUKIEN_2: TdxDBGridMaskColumn
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN_2'
      end
      object dxDBGrid1DIEUKIEN_3: TdxDBGridMaskColumn
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN_3'
      end
      object dxDBGrid1DIEUKIEN_4: TdxDBGridMaskColumn
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN_4'
      end
      object dxDBGrid1DIEUKIEN_5: TdxDBGridMaskColumn
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN_5'
      end
      object dxDBGrid1LOAICHITIEU: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAICHITIEU'
        Caption_UTF7 = 'Lo+HqE-i ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1Column7: TdxDBGridExtLookupColumn
        Caption = 'Lo'#7841'i d'#7919' li'#7879'u'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_NAME'
        HideEditCursor = True
        PopupHeight = 120
        PopupMinHeight = 50
        PopupMinWidth = 50
        PopupWidth = 150
        OnCloseUp = dxDBGrid1Column7CloseUp
        DBGridLayout = dxDBGridLayout1
        ImmediateDropDown = True
        ImmediatePopup = True
        Caption_UTF7 = 'Lo+HqE-i d+Hu8 li+Hsc-u'
      end
      object dxDBGrid1METHOD_ID: TdxDBGridMaskColumn
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_ID'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 447
      Width = 75
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
      Left = 79
      Top = 447
      Width = 75
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
      Left = 165
      Top = 447
      Width = 75
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
      Left = 241
      Top = 447
      Width = 75
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
      Left = 554
      Top = 447
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
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 630
      Top = 447
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
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup1: TdxLayoutGroup
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
        Caption = 
          #272#7883'nh ngh'#297'a d'#7919' li'#7879'u cho B'#7843'ng t'#236'nh h'#236'nh t'#259'ng gi'#7843'm ngu'#7891'n v'#7889'n ch'#7911' s'#7903 +
          ' h'#7919'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = srcTGNV
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = srcTGNV
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = srcTGNV
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = srcTGNV
    end
  end
  object srcTGNV: TDataSource
    DataSet = qryTGNV
    Left = 96
    Top = 240
  end
  object qryTGNV: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_TMBCTC_35'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_TMBCTC_35 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TEN = :TEN,'
      '   MASO = :MASO,'
      '   DAUKY = :DAUKY,'
      '   CUOIKY = :CUOIKY,'
      '   TANGKY = :TANGKY,'
      '   GIAMKY = :GIAMKY,'
      '   STATUSFLAG = :STATUSFLAG,'
      '   DIEUKIEN = :DIEUKIEN,'
      '   DIEUKIEN_1 = :DIEUKIEN_1,'
      '   DIEUKIEN_2 = :DIEUKIEN_2,'
      '   DIEUKIEN_3 = :DIEUKIEN_3,'
      '   DIEUKIEN_4 = :DIEUKIEN_4,'
      '   DIEUKIEN_5 = :DIEUKIEN_5,'
      '   LOAICHITIEU = :LOAICHITIEU,'
      '   METHOD_ID = :METHOD_ID'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_TMBCTC_35('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TEN,'
      '   MASO,'
      '   DAUKY,'
      '   CUOIKY,'
      '   TANGKY,'
      '   GIAMKY,'
      '   STATUSFLAG,'
      '   DIEUKIEN,'
      '   DIEUKIEN_1,'
      '   DIEUKIEN_2,'
      '   DIEUKIEN_3,'
      '   DIEUKIEN_4,'
      '   DIEUKIEN_5,'
      '   LOAICHITIEU,'
      '   METHOD_ID)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :TEN,'
      '   :MASO,'
      '   :DAUKY,'
      '   :CUOIKY,'
      '   :TANGKY,'
      '   :GIAMKY,'
      '   :STATUSFLAG,'
      '   :DIEUKIEN,'
      '   :DIEUKIEN_1,'
      '   :DIEUKIEN_2,'
      '   :DIEUKIEN_3,'
      '   :DIEUKIEN_4,'
      '   :DIEUKIEN_5,'
      '   :LOAICHITIEU,'
      '   :METHOD_ID)')
    KeyLinks.Strings = (
      'ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryTGNVBeforePost
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TEN'
      '     , MASO'
      '     , DAUKY'
      '     , CUOIKY'
      '     , TANGKY'
      '     , GIAMKY'
      '     , STATUSFLAG'
      '     , DIEUKIEN'
      '     , DIEUKIEN_1'
      '     , DIEUKIEN_2'
      '     , DIEUKIEN_3'
      '     , DIEUKIEN_4'
      '     , DIEUKIEN_5'
      '     , LOAICHITIEU'
      '     , RPT_TMBCTC_35.METHOD_ID'
      '     , RPT_GETDATATYPE.METHOD_NAME'
      'FROM RPT_TMBCTC_35'
      
        'LEFT JOIN RPT_GETDATATYPE on (RPT_TMBCTC_35.METHOD_ID=  RPT_GETD' +
        'ATATYPE.METHOD_ID)'
      'order by ID')
    FieldOptions = []
    Left = 144
    Top = 112
    object qryTGNVID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryTGNVMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 6
    end
    object qryTGNVTEN: TWideStringField
      FieldName = 'TEN'
      Size = 126
    end
    object qryTGNVMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryTGNVDAUKY: TIBOFloatField
      FieldName = 'DAUKY'
    end
    object qryTGNVCUOIKY: TIBOFloatField
      FieldName = 'CUOIKY'
    end
    object qryTGNVTANGKY: TIBOFloatField
      FieldName = 'TANGKY'
    end
    object qryTGNVGIAMKY: TIBOFloatField
      FieldName = 'GIAMKY'
    end
    object qryTGNVSTATUSFLAG: TSmallintField
      FieldName = 'STATUSFLAG'
    end
    object qryTGNVDIEUKIEN: TWideStringField
      FieldName = 'DIEUKIEN'
      Size = 63
    end
    object qryTGNVDIEUKIEN_1: TWideStringField
      FieldName = 'DIEUKIEN_1'
      Size = 15
    end
    object qryTGNVDIEUKIEN_2: TWideStringField
      FieldName = 'DIEUKIEN_2'
      Size = 15
    end
    object qryTGNVDIEUKIEN_3: TWideStringField
      FieldName = 'DIEUKIEN_3'
      Size = 15
    end
    object qryTGNVDIEUKIEN_4: TWideStringField
      FieldName = 'DIEUKIEN_4'
      Size = 15
    end
    object qryTGNVDIEUKIEN_5: TWideStringField
      FieldName = 'DIEUKIEN_5'
      Size = 15
    end
    object qryTGNVLOAICHITIEU: TSmallintField
      FieldName = 'LOAICHITIEU'
    end
    object qryTGNVMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
    object qryTGNVMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 344
    Top = 96
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        E8010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E7402010D53756D6D61727947726F7570730E001053756D6D6172
        79536570617261746F7206022C200A44617461536F757263650716544D424354
        435F333546726D2E6473504D6574686F640F46696C7465722E43726974657269
        610A04000000000000000B4C6F6F6B416E644665656C070B6C66556C74726146
        6C61740B4F7074696F6E73566965770B0D6564676F4175746F57696474681365
        64676F42616E6448656164657257696474680D6564676F5573654269746D6170
        0000135464784442477269644D61736B436F6C756D6E094D4554484F445F4944
        0743617074696F6E14040000004DC3A3200942616E64496E646578020008526F
        77496E6465780200094669656C644E616D6506094D4554484F445F49440C4361
        7074696F6E5F5554463706064D2B414F4D200000135464784442477269644D61
        736B436F6C756D6E0B4D4554484F445F4E414D450743617074696F6E14040000
        0054C3AA6E0942616E64496E646578020008526F77496E646578020009466965
        6C644E616D65060B4D4554484F445F4E414D450C43617074696F6E5F55544637
        0607542B414F6F2D6E000000}
    end
  end
end
