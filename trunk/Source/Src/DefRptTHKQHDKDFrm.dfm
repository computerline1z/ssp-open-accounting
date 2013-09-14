object FrmDefRptTHKQHD: TFrmDefRptTHKQHD
  Left = 236
  Top = 149
  Width = 641
  Height = 465
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
    Width = 633
    Height = 431
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      633
      431)
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
      DataSource = dsDefTongHopKQKD
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1ID: TdxDBGridColumn
        Caption = 'STT'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1CHITIEU: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7881' ti'#234'u'
        HeaderAlignment = taCenter
        TabStop = False
        Width = 294
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHITIEU'
        Caption_UTF7 = 'T+AOo-n ch+Hsk ti+AOo-u'
      end
      object dxDBGrid1MASO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        TabStop = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1THANG_1: TdxDBGridColumn
        Caption = 'K'#7923' tr'#432#7899'c'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYTRUOC'
        Caption_UTF7 = 'K+HvM tr+AbAe2w-c'
      end
      object dxDBGrid1THANG_2: TdxDBGridColumn
        Caption = 'K'#7923' n'#224'y'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KYNAY'
        Caption_UTF7 = 'K+HvM n+AOA-y'
      end
      object dxDBGrid1LUYKE: TdxDBGridColumn
        Caption = 'L'#361'y k'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LUYKE'
        Caption_UTF7 = 'L+AWk-y k+Hr8'
      end
      object dxDBGrid1LOAICHITIEU: TdxDBGridColumn
        Caption = 'Lo'#7841'i'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAICHITIEU'
        Caption_UTF7 = 'Lo+HqE-i'
      end
      object dxDBGrid1THANG_3: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1THANG_4: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1THANG_5: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column14: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column15: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column16: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
    end
    object btnDefine: TElPopupButton
      Left = 3
      Top = 403
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7883'n&h ngh'#297'a'
      TabOrder = 1
      OnClick = btnDefineClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 479
      Top = 403
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
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 555
      Top = 403
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
        Caption = 
          #272#7883'nh ngh'#297'a d'#7919' li'#7879'u b'#7843'ng T'#7893'ng h'#7907'p k'#7871't qu'#7843' ho'#7841't '#273#7897'ng kinh doanh ph' +
          #7847'n I'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 576
    Top = 304
  end
  object qrDefTongHopKQKD: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM RPT_TONGHOP_KETQUAHDKD'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE RPT_TONGHOP_KETQUAHDKD SET'
      '   ID = :ID, /*PK*/'
      '   CHITIEU = :CHITIEU,'
      '   MASO = :MASO,'
      '   THANG_1 = :THANG_1,'
      '   THANG_2 = :THANG_2,'
      '   THANG_3 = :THANG_3,'
      '   THANG_4 = :THANG_4,'
      '   THANG_5 = :THANG_5,'
      '   THANG_6 = :THANG_6,'
      '   THANG_7 = :THANG_7,'
      '   THANG_8 = :THANG_8,'
      '   THANG_9 = :THANG_9,'
      '   THANG_10 = :THANG_10,'
      '   THANG_11 = :THANG_11,'
      '   THANG_12 = :THANG_12,'
      '   LUYKE = :LUYKE,'
      '   LOAICHITIEU = :LOAICHITIEU'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO RPT_TONGHOP_KETQUAHDKD('
      '   ID, /*PK*/'
      '   CHITIEU,'
      '   MASO,'
      '   THANG_1,'
      '   THANG_2,'
      '   THANG_3,'
      '   THANG_4,'
      '   THANG_5,'
      '   THANG_6,'
      '   THANG_7,'
      '   THANG_8,'
      '   THANG_9,'
      '   THANG_10,'
      '   THANG_11,'
      '   THANG_12,'
      '   LUYKE,'
      '   LOAICHITIEU)'
      'VALUES ('
      '   :ID,'
      '   :CHITIEU,'
      '   :MASO,'
      '   :THANG_1,'
      '   :THANG_2,'
      '   :THANG_3,'
      '   :THANG_4,'
      '   :THANG_5,'
      '   :THANG_6,'
      '   :THANG_7,'
      '   :THANG_8,'
      '   :THANG_9,'
      '   :THANG_10,'
      '   :THANG_11,'
      '   :THANG_12,'
      '   :LUYKE,'
      '   :LOAICHITIEU)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ID'
      '     , CHITIEU'
      '     , MASO'
      '     , THANG_1'
      '     , THANG_2'
      '     , THANG_3'
      '     , THANG_4'
      '     , THANG_5'
      '     , THANG_6'
      '     , THANG_7'
      '     , THANG_8'
      '     , THANG_9'
      '     , THANG_10'
      '     , THANG_11'
      '     , THANG_12'
      '     , LUYKE'
      '     , LOAICHITIEU'
      'FROM RPT_TONGHOP_KETQUAHDKD'
      'ORDER BY ID')
    FieldOptions = []
    Left = 66
    Top = 48
  end
  object dsDefTongHopKQKD: TDataSource
    DataSet = qrDefTongHopKQKD
    Left = 96
    Top = 48
  end
end
