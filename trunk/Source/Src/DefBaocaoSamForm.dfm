object DefBaocaoSamFrm: TDefBaocaoSamFrm
  Left = 160
  Top = 110
  Width = 741
  Height = 531
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
    Width = 733
    Height = 497
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      733
      497)
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
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsDefBaocaoSam
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridColumn
        Caption = 'STT'
        HeaderAlignment = taCenter
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1CHITIEU: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        Width = 501
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHITIEU'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1LOAILUUCHUYEN: TdxDBGridMaskColumn
        Caption = 'Flag'
        HeaderAlignment = taCenter
        Visible = False
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAILUUCHUYEN'
      end
      object dxDBGrid1THUYETMINH: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Thuy'#7871't minh'
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUYETMINH'
        Caption_UTF7 = 'Thuy+Hr8-t minh'
      end
      object dxDBGrid1KYTRUOC: TdxDBGridColumn
        Caption = 'K'#7923' tr'#432#7899'c'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYTRUOC'
        Caption_UTF7 = 'K+HvM tr+AbAe2w-c'
      end
      object dxDBGrid1KYNAY: TdxDBGridColumn
        Caption = 'K'#7923' n'#224'y'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYNAY'
        Caption_UTF7 = 'K+HvM n+AOA-y'
      end
      object dxDBGrid1MASONHOM: TdxDBGridColumn
        Caption = 'Nh'#243'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASONHOM'
        Caption_UTF7 = 'Nh+APM-m'
      end
      object dxDBGrid1BRANCH_ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'BRANCH'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
      end
    end
    object btnDefine: TElPopupButton
      Left = 3
      Top = 469
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7883'n&h ngh'#297'a'
      Enabled = False
      TabOrder = 8
      OnClick = btnDefineClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 579
      Top = 469
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 6
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 655
      Top = 469
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
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object popBranch: TdxPopupEdit
      Left = 112
      Top = 471
      Width = 57
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      ReadOnly = False
      PopupControl = PopupFrm.pnlBranch
      PopupFormBorderStyle = pbsSimple
      StoredValues = 64
    end
    object BitBtn4: TElPopupButton
      Left = 246
      Top = 469
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i th'#244'ng tin '#273'ang nh'#7853'p (Ctrl+S)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn5: TElPopupButton
      Left = 322
      Top = 469
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Kh'#244'ng l'#432'u nh'#432'ng th'#244'ng tin '#273#227' thay '#273#7893'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 398
      Top = 469
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a phi'#7871'u n'#224'y'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 170
      Top = 469
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i th'#244'ng tin '#273'ang nh'#7853'p (Ctrl+S)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      Action = DataSetInsert1
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
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = btnDefine
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = #272#417'n v'#7883
          Visible = False
          Control = popBranch
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          ShowCaption = False
          Control = BitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          ShowCaption = False
          Control = BitBtn2
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
        Caption = #272#7883'nh ngh'#297'a b'#225'o c'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryDefBaocaoSam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM sam_rpt_baocao '
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE sam_rpt_baocao SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   KYNAY = :KYNAY,'
      '   KYTRUOC = :KYTRUOC,'
      '   STATUSFLAG = :STATUSFLAG,'
      '   LOAILUUCHUYEN = :LOAILUUCHUYEN,'
      '   MASONHOM = :MASONHOM,'
      '   THUYETMINH = :THUYETMINH'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO sam_rpt_baocao('
      '   BRANCH_ID, /*PK*/'
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   KYNAY,'
      '   KYTRUOC,'
      '   STATUSFLAG,'
      '   LOAILUUCHUYEN,'
      '   MASONHOM,'
      '   THUYETMINH)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :KYNAY,'
      '   :KYTRUOC,'
      '   :STATUSFLAG,'
      '   :LOAILUUCHUYEN,'
      '   :MASONHOM,'
      '   :THUYETMINH)')
    KeyLinks.Strings = (
      'ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDefBaocaoSamNewRecord
    SQL.Strings = (
      'SELECT ID'
      '     , CHITIEU'
      '     , MASO'
      '     , KYNAY'
      '     , KYTRUOC'
      '     , STATUSFLAG'
      '     , LOAILUUCHUYEN'
      '     , MASONHOM'
      '     , THUYETMINH'
      '     , BRANCH_ID'
      'FROM sam_rpt_baocao WHERE BRANCH_ID = :BRANCH_ID'
      'order by id')
    FieldOptions = []
    Left = 139
    Top = 50
    object qryDefBaocaoSamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryDefBaocaoSamSTATUSFLAG: TSmallintField
      FieldName = 'STATUSFLAG'
    end
    object qryDefBaocaoSamLOAILUUCHUYEN: TSmallintField
      FieldName = 'LOAILUUCHUYEN'
    end
    object qryDefBaocaoSamCHITIEU: TWideStringField
      FieldName = 'CHITIEU'
      Size = 126
    end
    object qryDefBaocaoSamMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryDefBaocaoSamKYNAY: TIBOFloatField
      FieldName = 'KYNAY'
    end
    object qryDefBaocaoSamKYTRUOC: TIBOFloatField
      FieldName = 'KYTRUOC'
    end
    object qryDefBaocaoSamMASONHOM: TSmallintField
      FieldName = 'MASONHOM'
    end
    object qryDefBaocaoSamTHUYETMINH: TWideStringField
      FieldName = 'THUYETMINH'
      Size = 15
    end
    object qryDefBaocaoSamBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsDefBaocaoSam: TDataSource
    DataSet = qryDefBaocaoSam
    Left = 141
    Top = 68
  end
  object ActionList1: TActionList
    Left = 208
    Top = 64
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsDefBaocaoSam
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsDefBaocaoSam
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsDefBaocaoSam
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsDefBaocaoSam
    end
  end
end
