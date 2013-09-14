object LoaiTCFrm: TLoaiTCFrm
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
      KeyField = 'INTERFACE_ID'
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
      object dbgDmLoaiNXINTERFACE_ID: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTERFACE_ID'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dbgDmLoaiNXINTERFACE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i phi'#7871'u thu chi'
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTERFACE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i phi+Hr8-u thu chi'
      end
      object dbgDmLoaiNXDOCTYPE_NAME: TdxDBGridPopupColumn
        Caption = 'T'#234'n ch'#7913'ng t'#7915' b'#234'n k'#7871' to'#225'n'
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTYPE_NAME'
        PopupControl = PopupFrm.Pnl_DocType
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = dbgDmLoaiNXDOCTYPE_NAMECloseUp
        Caption_UTF7 = 'T+AOo-n ch+Huk-ng t+Hus b+AOo-n k+Hr8 to+AOE-n'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 3
      Top = 418
      Width = 65
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
      Left = 69
      Top = 418
      Width = 65
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
      Left = 461
      Top = 418
      Width = 65
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
      Left = 527
      Top = 418
      Width = 65
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
      Left = 593
      Top = 418
      Width = 65
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
      'DELETE FROM INTERFACE_TYPE'
      'WHERE'
      '   INTERFACE_ID = :OLD_INTERFACE_ID')
    EditSQL.Strings = (
      'UPDATE INTERFACE_TYPE SET'
      '   INTERFACE_ID = :INTERFACE_ID, /*PK*/'
      '   INTERFACE_NAME = :INTERFACE_NAME,'
      '   DOCTYPE_ID = :DOCTYPE_ID'
      'WHERE'
      '   INTERFACE_ID = :OLD_INTERFACE_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO INTERFACE_TYPE('
      '   INTERFACE_ID, /*PK*/'
      '   INTERFACE_NAME,'
      '   DOCTYPE_ID)'
      'VALUES ('
      '   :INTERFACE_ID,'
      '   :INTERFACE_NAME,'
      '   :DOCTYPE_ID)')
    KeyLinks.Strings = (
      'INTERFACE_ID')
    Unicode = True
    RecordCountAccurate = True
    OnPostError = qrDmLoaiNXPostError
    OnDeleteError = qrDmLoaiNXDeleteError
    SQL.Strings = (
      'SELECT INTERFACE_ID'
      '     , INTERFACE_NAME'
      '     , INTERFACE_TYPE.DOCTYPE_ID'
      '     , DOCTYPE_NAME'
      'FROM INTERFACE_TYPE'
      
        'LEFT JOIN DOC_TYPE on (INTERFACE_TYPE.DOCTYPE_ID= DOC_TYPE.DOCTY' +
        'PE_ID)')
    FieldOptions = []
    Left = 48
    Top = 40
    object qrDmLoaiNXINTERFACE_ID: TIntegerField
      FieldName = 'INTERFACE_ID'
      Required = True
    end
    object qrDmLoaiNXINTERFACE_NAME: TWideStringField
      FieldName = 'INTERFACE_NAME'
      Size = 126
    end
    object qrDmLoaiNXDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
    end
    object qrDmLoaiNXDOCTYPE_NAME: TWideStringField
      FieldName = 'DOCTYPE_NAME'
      Size = 126
    end
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
        Caption = 'Ph'#226'n lo'#7841'i ch'#7913'ng t'#7915' thu chi'
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
