object FrmDmLoaiNX: TFrmDmLoaiNX
  Left = 253
  Top = 151
  Width = 669
  Height = 480
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
    Width = 661
    Height = 446
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dbgDmLoaiNX: TdxDBGrid
      Left = 5
      Top = 5
      Width = 682
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID_INO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyDown = dbgDmLoaiNXKeyDown
      OnMouseUp = dbgDmLoaiNXMouseUp
      DataSource = dsDmLoaiNX
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object dbgDmLoaiNXColumn5: TdxDBGridColumn
        Caption = 'M'#227
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID_INO'
        Caption_UTF7 = 'M+AOM'
      end
      object dbgDmLoaiNXColumn1: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i nh'#7853'p xu'#7845't kho'
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NAME_INO'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i nh+Hq0-p xu+HqU-t kho'
      end
      object dbgDmLoaiNXColumn6: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        PopupControl = PopupFrm.Pnl_DocType
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbgDmLoaiNXColumn6CloseUp
        Caption_UTF7 = 'Lo+HqE-i ch+Huk-ng t+Hus'
      end
      object dbgDmLoaiNXColumn2: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n c'#243
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbgDmLoaiNXColumn2CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n c+APM'
      end
      object dbgDmLoaiNXColumn3: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n n'#7907
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbgDmLoaiNXColumn3CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n n+HuM'
      end
      object dbgDmLoaiNXColumn4: TdxDBGridPopupColumn
        Caption = 'T'#224'i kho'#7843'n VAT'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKVAT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbgDmLoaiNXColumn4CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n VAT'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 418
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
      TabOrder = 1
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 418
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
      TabOrder = 2
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 431
      Top = 418
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 3
      Action = acSelect
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 507
      Top = 418
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
      Left = 583
      Top = 418
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        LookAndFeel = dxLayoutStandardLookAndFeel1
        Control = dbgDmLoaiNX
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
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Visible = False
          Control = ElPopupButton3
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
  object qrDmLoaiNX: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM INOUT_FROM'
      'WHERE'
      '   ID_INO = :OLD_ID_INO')
    EditSQL.Strings = (
      'UPDATE INOUT_FROM SET'
      '   ID_INO = :ID_INO, /*PK*/'
      '   NAME_INO = :NAME_INO,'
      '   DIRECTION_INO = :DIRECTION_INO,'
      '   ISSYSTEM_INO = :ISSYSTEM_INO,'
      '   TKNO = :TKNO,'
      '   TKCO = :TKCO,'
      '   TKVAT = :TKVAT,'
      '   DOCTYPE_ID = :DOCTYPE_ID'
      'WHERE'
      '   ID_INO = :OLD_ID_INO')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO INOUT_FROM('
      '   ID_INO, /*PK*/'
      '   NAME_INO,'
      '   DIRECTION_INO,'
      '   ISSYSTEM_INO,'
      '   TKNO,'
      '   TKCO,'
      '   TKVAT,'
      '   DOCTYPE_ID)'
      'VALUES ('
      '   :ID_INO,'
      '   :NAME_INO,'
      '   :DIRECTION_INO,'
      '   :ISSYSTEM_INO,'
      '   :TKNO,'
      '   :TKCO,'
      '   :TKVAT,'
      '   :DOCTYPE_ID)')
    Unicode = True
    RecordCountAccurate = True
    AfterInsert = qrDmLoaiNXAfterInsert
    OnPostError = qrDmLoaiNXPostError
    OnDeleteError = qrDmLoaiNXDeleteError
    SQL.Strings = (
      'SELECT A.ID_INO'
      '     , A.NAME_INO'
      '     , A.DIRECTION_INO'
      '     , A.ISSYSTEM_INO'
      '     , A.TKNO'
      '     , A.TKCO'
      '     , A.TKVAT'
      '     , A.DOCTYPE_ID'
      '     , DOC_TYPE.DOCTYPE_NAME'
      'FROM INOUT_FROM A'
      'left join DOC_TYPE on (A.DOCTYPE_ID = DOC_TYPE.DOCTYPE_ID)')
    FieldOptions = []
    Left = 48
    Top = 40
  end
  object dsDmLoaiNX: TDataSource
    DataSet = qrDmLoaiNX
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
        Caption = 'Danh m'#7909'c lo'#7841'i nh'#7853'p xu'#7845't kho'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 48
    Top = 120
  end
  object ActionList1: TActionList
    Left = 376
    Top = 160
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
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
    object acSelect: TAction
      Caption = 'acSelect'
    end
    object acHelp: TAction
      Caption = 'acHelp'
    end
    object acClose: TAction
      Caption = 'acClose'
      OnExecute = acCloseExecute
    end
  end
end
