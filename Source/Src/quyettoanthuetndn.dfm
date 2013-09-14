object frmQuyettoanthueTNDN: TfrmQuyettoanthueTNDN
  Left = 179
  Top = 149
  Width = 696
  Height = 480
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
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      688
      446)
    object grdQuyettoanthueTNDN: TdxDBGrid
      Left = 3
      Top = 3
      Width = 597
      Height = 368
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyDown = grdQuyettoanthueTNDNKeyDown
      OnMouseUp = grdQuyettoanthueTNDNMouseUp
      DataSource = dsQTTTNDN
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdQuyettoanthueTNDNID: TdxDBGridColumn
        Caption = 'STT'
        HeaderAlignment = taCenter
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object grdQuyettoanthueTNDNMANHOM: TdxDBGridColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object grdQuyettoanthueTNDNP_MANHOM: TdxDBGridPopupColumn
        Caption = 'M'#227' nh'#243'm cha'
        HeaderAlignment = taCenter
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'P_MANHOM'
        Caption_UTF7 = 'M+AOM nh+APM-m cha'
      end
      object grdQuyettoanthueTNDNTEN: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 324
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN'
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
      object grdQuyettoanthueTNDNMASO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object grdQuyettoanthueTNDNGIATRI: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        TabStop = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GIATRI'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdQuyettoanthueTNDNNOTES: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Visible = False
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 418
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
    object btnDel: TElPopupButton
      Left = 79
      Top = 418
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
      Top = 418
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
      Top = 418
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
      Left = 534
      Top = 418
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
      Left = 610
      Top = 418
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
    object ElPopupButton1: TElPopupButton
      Left = 458
      Top = 418
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&'#272#7883'nh ngh'#297'a'
      TabOrder = 5
      Action = acDinhnghia
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
        Control = grdQuyettoanthueTNDN
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = btnIns
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = btnDel
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
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          ShowCaption = False
          Control = ElPopupButton1
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
    Left = 364
    Top = 164
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Export')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 228
    Top = 68
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton8: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = dxBarButton8
        Visible = True
      end
      item
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end>
    UseOwnFont = True
    Left = 264
    Top = 68
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'T'#7901' khai t'#7921' quy'#7871't to'#225'n thu'#7871' thu nh'#7853'p doanh nghi'#7879'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 72
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
    end
    object acDinhnghia: TAction
      Caption = 'Dinhnghia'
      OnExecute = acDinhnghiaExecute
    end
  end
  object qryQTTTNDN: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_QUYETTOANTHUETNDN'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_QUYETTOANTHUETNDN SET'
      '   ID = :ID, /*PK*/'
      '   MANHOM = :MANHOM,'
      '   P_MANHOM = :P_MANHOM,'
      '   MASO = :MASO,'
      '   TEN = :TEN,'
      '   GIATRI = :GIATRI,'
      '   NOTES = :NOTES'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_QUYETTOANTHUETNDN('
      '   ID, /*PK*/'
      '   MANHOM,'
      '   P_MANHOM,'
      '   MASO,'
      '   TEN,'
      '   GIATRI,'
      '   NOTES)'
      'VALUES ('
      '   :ID,'
      '   :MANHOM,'
      '   :P_MANHOM,'
      '   :MASO,'
      '   :TEN,'
      '   :GIATRI,'
      '   :NOTES)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterInsert = qryQTTTNDNAfterInsert
    BeforePost = qryQTTTNDNBeforePost
    SQL.Strings = (
      'select id, manhom, p_manhom, maso, ten, giatri, notes'
      'from rpt_quyettoanthuetndn'
      'order by id')
    FieldOptions = []
    Left = 153
    Top = 139
    object qryQTTTNDNID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryQTTTNDNMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 6
    end
    object qryQTTTNDNMASO: TWideStringField
      FieldName = 'MASO'
      Size = 6
    end
    object qryQTTTNDNTEN: TWideStringField
      FieldName = 'TEN'
      Size = 126
    end
    object qryQTTTNDNGIATRI: TIBOFloatField
      FieldName = 'GIATRI'
    end
    object qryQTTTNDNP_MANHOM: TWideStringField
      FieldName = 'P_MANHOM'
      Size = 6
    end
    object qryQTTTNDNNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 255
    end
  end
  object dsQTTTNDN: TDataSource
    DataSet = qryQTTTNDN
    Left = 153
    Top = 166
  end
end
