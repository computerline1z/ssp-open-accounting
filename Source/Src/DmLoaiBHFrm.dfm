object FrmDmLoaiBH: TFrmDmLoaiBH
  Left = 170
  Top = 267
  Width = 650
  Height = 454
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
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
    Width = 642
    Height = 420
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBTreeList1: TdxDBTreeList
      Left = 3
      Top = 3
      Width = 250
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOCTYPE_ID'
      ParentField = 'P_DOCTYPE_ID'
      TabOrder = 0
      OnKeyDown = dxDBTreeList1KeyDown
      DataSource = dsDmLoaiBH
      DefaultRowHeight = 21
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoRowAutoHeight, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList1Column1: TdxDBTreeListColumn
        Caption = 'M'#227
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_ID'
        Caption_UTF7 = 'M+AOM'
      end
      object dxDBTreeList1Column5: TdxDBTreeListColumn
        Caption = 'T'#234'n lo'#7841'i b'#225'n h'#224'ng'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i b+AOE-n h+AOA-ng'
      end
      object dxDBTreeList1Column6: TdxDBTreeListPopupColumn
        Caption = 'Lo'#7841'i ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_TYPE_NAME'
        PopupControl = PopupFrm.Pnl_DocType
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column6CloseUp
        Caption_UTF7 = 'Lo+HqE-i ch+Huk-ng t+Hus'
      end
      object dxDBTreeList1Column2: TdxDBTreeListPopupColumn
        Caption = 'T'#224'i kho'#7843'n c'#243
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column2CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n c+APM'
      end
      object dxDBTreeList1Column3: TdxDBTreeListPopupColumn
        Caption = 'T'#224'i kho'#7843'n n'#7907
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column3CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n n+HuM'
      end
      object dxDBTreeList1Column4: TdxDBTreeListPopupColumn
        Caption = 'T'#224'i kho'#7843'n VAT'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKVAT'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dxDBTreeList1Column4CloseUp
        Caption_UTF7 = 'T+AOA-i kho+HqM-n VAT'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 564
      Top = 392
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
    object ElPopupButton2: TElPopupButton
      Left = 79
      Top = 392
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
      Left = 488
      Top = 392
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
    object ElPopupButton4: TElPopupButton
      Left = 3
      Top = 392
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
    object ElPopupButton5: TElPopupButton
      Left = 412
      Top = 392
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        LookAndFeel = dxLayoutStandardLookAndFeel1
        Control = dxDBTreeList1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Offsets.Top = 5
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'ElPopupButton4'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton4
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
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton5'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Visible = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          LookAndFeel = dxLayoutStandardLookAndFeel1
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 412
    Top = 44
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qrDmLoaiBH: TIBOQuery
    Params = <>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM DOCTYPE'
      'WHERE'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID')
    EditSQL.Strings = (
      'UPDATE DOCTYPE SET'
      '   DOCTYPE_ID = :DOCTYPE_ID, /*PK*/'
      '   DOCTYPE_NAME = :DOCTYPE_NAME,'
      '   P_DOCTYPE_ID = :P_DOCTYPE_ID,'
      '   DIRECTION = :DIRECTION,'
      '   DOCGROUP = :DOCGROUP,'
      '   TKCO = :TKCO,'
      '   TKNO = :TKNO,'
      '   TKVAT = :TKVAT,'
      '   DOC_TYPE_ID = :DOC_TYPE_ID'
      'WHERE'
      '   DOCTYPE_ID = :OLD_DOCTYPE_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO DOCTYPE('
      '   DOCTYPE_ID, /*PK*/'
      '   DOCTYPE_NAME,'
      '   P_DOCTYPE_ID,'
      '   DIRECTION,'
      '   DOCGROUP,'
      '   TKCO,'
      '   TKNO,'
      '   TKVAT,'
      '   DOC_TYPE_ID)'
      'VALUES ('
      '   :DOCTYPE_ID,'
      '   :DOCTYPE_NAME,'
      '   :P_DOCTYPE_ID,'
      '   :DIRECTION,'
      '   :DOCGROUP,'
      '   :TKCO,'
      '   :TKNO,'
      '   :TKVAT,'
      '   :DOC_TYPE_ID)')
    Unicode = True
    RecordCountAccurate = True
    AfterInsert = qrDmLoaiBHAfterInsert
    OnPostError = qrDmLoaiBHPostError
    OnDeleteError = qrDmLoaiBHDeleteError
    SQL.Strings = (
      'SELECT A.DOCTYPE_ID'
      '     , A.DOCTYPE_NAME    '
      '     , A.P_DOCTYPE_ID     '
      '     , A.DIRECTION   '
      '     , A.DOCGROUP'
      '     , A.TKCO'
      '     , A.TKNO'
      '     , A.TKVAT'
      '     , A.DOC_TYPE_ID'
      '     , DOC_TYPE.DOCTYPE_NAME DOC_TYPE_NAME'
      'FROM DOCTYPE A'
      'left join DOC_TYPE on (A.DOC_TYPE_ID = DOC_TYPE.DOCTYPE_ID)')
    FieldOptions = []
    Left = 48
    Top = 40
  end
  object dsDmLoaiBH: TDataSource
    DataSet = qrDmLoaiBH
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
        Caption = 'Danh m'#7909'c lo'#7841'i b'#225'n h'#224'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
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
      OnExecute = DataSetPost1Execute
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
