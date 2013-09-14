object CHITIETPBSPFrm: TCHITIETPBSPFrm
  Left = 193
  Top = 124
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
    DesignSize = (
      701
      481)
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
      TabOrder = 3
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
      TabOrder = 2
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 28
      Width = 669
      Height = 387
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'grdKHGTPHANBO'
              SummaryField = 'GTPHANBO'
              SummaryFormat = '#.0'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdKHMASOSP'
              SummaryField = 'MASOSP'
              SummaryType = cstCount
            end>
          Name = 'grdKHSummaryGroup2'
        end>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsHESO
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowRowFooter = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHSHTK: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTK'
        Caption_UTF7 = 'T+AOA-i kho+HqM-n'
      end
      object grdKHMASOSP: TdxDBGridMaskColumn
        Caption = 'S'#7843'n ph'#7849'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASOSP'
        SummaryFooterType = cstCount
        Caption_UTF7 = 'S+HqM-n ph+Hqk-m'
      end
      object grdKHOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n s'#7843'n ph'#7849'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 231
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n s+HqM-n ph+Hqk-m'
      end
      object grdKHACCOUNT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n chi ph'#237
        HeaderAlignment = taCenter
        Width = 334
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n chi ph+AO0'
      end
      object grdKHSUBINFO_1: TdxDBGridMaskColumn
        Caption = 'Qui c'#225'ch'
        HeaderAlignment = taCenter
        Visible = False
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_1'
        Caption_UTF7 = 'Qui c+AOE-ch'
      end
      object grdKHSUBINFO_2: TdxDBGridMaskColumn
        Caption = #272#417'n v'#7883' t'#237'nh'
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_2'
        Caption_UTF7 = '+ARABoQ-n v+Hss t+AO0-nh'
      end
      object grdKHGTPHANBO: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883' ph'#226'n b'#7893
        HeaderAlignment = taCenter
        Width = 223
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GTPHANBO'
        SummaryFooterType = cstSum
        SummaryType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss ph+AOI-n b+HtU'
      end
      object grdKHSANPHAM: TdxDBGridMaskColumn
        Caption = 'S'#7843'n ph'#7849'm'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SANPHAM'
        GroupIndex = 0
        Caption_UTF7 = 'S+HqM-n ph+Hqk-m'
      end
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 103
      Top = 3
      Width = 139
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = dxDBPopupEdit1Enter
      DataField = 'OBJECT_ID'
      DataSource = MainDM.dsPComObj
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
    end
    object dxDBEdit1: TdxDBEdit
      Left = 314
      Top = 3
      Width = 477
      Cursor = crIBeam
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'OBJECT_NAME'
      DataSource = MainDM.dsPComObj
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem1: TdxLayoutItem
          Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh'
          Control = dxDBPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
      end
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
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
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
        Caption = 'Chi ti'#7871't chi ph'#237' gi'#225' th'#224'nh nh'#243'm theo chi ph'#237
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryHESO: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'OBJECT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'PERIOD_ID'
      'MAPX'
      'SHTK'
      'MASOSP')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    DataSource = MainDM.dsPComObj
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , MAPX'
      '     , MALOAI'
      '     , SHTK'
      '     , MASOSP'
      '     , LOAISP'
      '     , GTPHANBO'
      '     , MASOSP ||'#39' ('#39'||OBJECT_NAME||'#39')'#39' SANPHAM'
      '     , OBJECT_NAME'
      '     , SUBINFO_1'
      '     , SUBINFO_2'
      '     , PERIOD_ID||MAPX||SHTK||MASOSP KF'
      '     , ACCOUNT_NAME'
      'FROM CHITIET_PHANBO'
      'JOIN OBJECT_LIST on (MASOSP=OBJECT_ID and OTYPE_ID=2)'
      'JOIN ACCOUNT_LIST on (SHTK=ACCOUNT_ID)'
      'where MAPX=:OBJECT_ID and PERIOD_ID=:PERIOD_ID'
      'order by SHTK,MASOSP')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryHESOPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryHESOMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryHESOMALOAI: TSmallintField
      FieldName = 'MALOAI'
      Required = True
    end
    object qryHESOSHTK: TWideStringField
      FieldName = 'SHTK'
      Required = True
      Size = 15
    end
    object qryHESOMASOSP: TWideStringField
      FieldName = 'MASOSP'
      Required = True
      Size = 30
    end
    object qryHESOLOAISP: TSmallintField
      FieldName = 'LOAISP'
      Required = True
    end
    object qryHESOGTPHANBO: TIBOFloatField
      FieldName = 'GTPHANBO'
    end
    object qryHESOOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryHESOSUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryHESOSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryHESOKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 81
    end
    object qryHESOACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryHESOSANPHAM: TWideStringField
      FieldName = 'SANPHAM'
      ReadOnly = True
      Size = 159
    end
  end
  object dsHESO: TDataSource
    DataSet = qryHESO
    Left = 326
    Top = 287
  end
end
