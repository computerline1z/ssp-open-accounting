object TMBCTC_36Frm: TTMBCTC_36Frm
  Left = 238
  Top = 140
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
      DataSource = srcTTDT
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        HeaderAlignment = taCenter
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1MANHOM: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object dxDBGrid1TEN: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1DIEUKIEN: TdxDBGridMaskColumn
        Caption = #272'i'#7873'u ki'#7879'n'
        HeaderAlignment = taCenter
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIEUKIEN'
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n'
      end
      object dxDBGrid1LOAICHITIEU: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAICHITIEU'
        Caption_UTF7 = 'Lo+HqE-i ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1USER_INPUT: TdxDBGridMaskColumn
        Caption = 'User input'
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USER_INPUT'
      end
      object dxDBGrid1METHOD_ID: TdxDBGridMaskColumn
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_ID'
      end
      object dxDBGrid1Column7: TdxDBGridExtLookupColumn
        Caption = 'Lo'#7841'i d'#7919' li'#7879'u'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METHOD_NAME'
        HideEditCursor = True
        PopupHeight = 120
        PopupMinHeight = 50
        PopupMinWidth = 50
        PopupWidth = 150
        OnCloseUp = dxDBGrid1Column7CloseUp
        DBGridLayout = dxDBGridLayoutList1Item1
        ImmediateDropDown = True
        ImmediatePopup = True
        Caption_UTF7 = 'Lo+HqE-i d+Hu8 li+Hsc-u'
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
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 296
    Top = 104
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        C2020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094D4554484F445F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200A44617461536F757263650716544D424354435F333646726D2E6473504D
        6574686F641044656661756C74526F7748656967687402150F46696C7465722E
        43726974657269610A04000000000000000F4F7074696F6E734265686176696F
        720B0C6564676F4175746F536F72740E6564676F447261675363726F6C6C1365
        64676F456E74657253686F77456469746F72136564676F496D6D656469617465
        456469746F720E6564676F5461625468726F7567680F6564676F566572745468
        726F75676800094F7074696F6E7344420B106564676F43616E63656C4F6E4578
        6974116564676F43616E4E617669676174696F6E116564676F436F6E6669726D
        44656C657465126564676F4C6F6164416C6C5265636F726473106564676F5573
        65426F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F417574
        6F5769647468136564676F42616E6448656164657257696474680D6564676F55
        73654269746D6170000A53686F77486561646572080013546478444247726964
        4D61736B436F6C756D6E094D4554484F445F49440743617074696F6E06024944
        0942616E64496E646578020008526F77496E6465780200094669656C644E616D
        6506094D4554484F445F49440000135464784442477269644D61736B436F6C75
        6D6E0B4D4554484F445F4E414D450743617074696F6E140400000054C3AA6E09
        42616E64496E646578020008526F77496E6465780200094669656C644E616D65
        060B4D4554484F445F4E414D450C43617074696F6E5F555446370607542B414F
        6F2D6E000000}
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
        Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u cho B'#7843'ng t'#236'nh h'#236'nh '#273#7847'u t'#432' v'#224'o '#273#417'n v'#7883' kh'#225'c'
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
      DataSource = srcTTDT
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = srcTTDT
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = srcTTDT
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = srcTTDT
    end
  end
  object srcTTDT: TDataSource
    DataSet = qryTTDT
    Left = 96
    Top = 240
  end
  object qryTTDT: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_TMBCTC_36'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_TMBCTC_36 SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   TEN = :TEN,'
      '   MASO = :MASO,'
      '   DAUKY = :DAUKY,'
      '   CUOIKY = :CUOIKY,'
      '   TANGKY = :TANGKY,'
      '   GIAMKY = :GIAMKY,'
      '   KETQUA_DAUTU = :KETQUA_DAUTU,'
      '   USER_INPUT = :USER_INPUT,'
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
      'INSERT INTO RPT_TMBCTC_36('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   TEN,'
      '   MASO,'
      '   DAUKY,'
      '   CUOIKY,'
      '   TANGKY,'
      '   GIAMKY,'
      '   KETQUA_DAUTU,'
      '   USER_INPUT,'
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
      '   :KETQUA_DAUTU,'
      '   :USER_INPUT,'
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
    BeforePost = qryTTDTBeforePost
    SQL.Strings = (
      'SELECT ID'
      '     , MANHOM'
      '     , TEN'
      '     , MASO'
      '     , DAUKY'
      '     , CUOIKY'
      '     , TANGKY'
      '     , GIAMKY'
      '     , KETQUA_DAUTU'
      '     , USER_INPUT'
      '     , STATUSFLAG'
      '     , DIEUKIEN'
      '     , DIEUKIEN_1'
      '     , DIEUKIEN_2'
      '     , DIEUKIEN_3'
      '     , DIEUKIEN_4'
      '     , DIEUKIEN_5'
      '     , LOAICHITIEU'
      '     , A.METHOD_ID'
      '     , B.METHOD_NAME'
      ''
      'FROM RPT_TMBCTC_36 A'
      'LEFT JOIN RPT_GETDATATYPE B ON (A.METHOD_ID = B.METHOD_ID)'
      'order by ID')
    FieldOptions = []
    Left = 104
    Top = 184
    object qryTTDTID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryTTDTMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 6
    end
    object qryTTDTTEN: TWideStringField
      FieldName = 'TEN'
      Size = 126
    end
    object qryTTDTMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryTTDTDAUKY: TIBOFloatField
      FieldName = 'DAUKY'
    end
    object qryTTDTCUOIKY: TIBOFloatField
      FieldName = 'CUOIKY'
    end
    object qryTTDTTANGKY: TIBOFloatField
      FieldName = 'TANGKY'
    end
    object qryTTDTGIAMKY: TIBOFloatField
      FieldName = 'GIAMKY'
    end
    object qryTTDTKETQUA_DAUTU: TIBOFloatField
      FieldName = 'KETQUA_DAUTU'
    end
    object qryTTDTUSER_INPUT: TIBOFloatField
      FieldName = 'USER_INPUT'
    end
    object qryTTDTSTATUSFLAG: TSmallintField
      FieldName = 'STATUSFLAG'
    end
    object qryTTDTDIEUKIEN: TWideStringField
      FieldName = 'DIEUKIEN'
      Size = 63
    end
    object qryTTDTDIEUKIEN_1: TWideStringField
      FieldName = 'DIEUKIEN_1'
      Size = 15
    end
    object qryTTDTDIEUKIEN_2: TWideStringField
      FieldName = 'DIEUKIEN_2'
      Size = 15
    end
    object qryTTDTDIEUKIEN_3: TWideStringField
      FieldName = 'DIEUKIEN_3'
      Size = 15
    end
    object qryTTDTDIEUKIEN_4: TWideStringField
      FieldName = 'DIEUKIEN_4'
      Size = 15
    end
    object qryTTDTDIEUKIEN_5: TWideStringField
      FieldName = 'DIEUKIEN_5'
      Size = 15
    end
    object qryTTDTLOAICHITIEU: TSmallintField
      FieldName = 'LOAICHITIEU'
    end
    object qryTTDTMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
    object qryTTDTMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 30
    end
  end
end
