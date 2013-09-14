object HeSoDoiHangFrm: THeSoDoiHangFrm
  Left = 219
  Top = 94
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
    object btnCancel: TElPopupButton
      Left = 246
      Top = 453
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
      TabOrder = 4
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 165
      Top = 453
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
      TabOrder = 3
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
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
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 542
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
      TabOrder = 5
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 84
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 11
      Width = 669
      Height = 387
      Bands = <
        item
          Caption = 'H'#224'ng xu'#7845't ra'
          Width = 249
        end
        item
          Caption = 'H'#224'ng nh'#7853'p v'#224'o'
          Width = 246
        end
        item
          Caption = 'H'#7879' s'#7889' qui '#273#7893'i'
          Width = 184
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsHESO
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHTUMAHANG: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889' '
        HeaderAlignment = taCenter
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TUMAHANG'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHTUMAHANGCloseUp
        Caption_UTF7 = 'M+AOM s+HtE '
      end
      object grdKHTENTUHANG: TdxDBGridColumn
        Caption = 'T'#234'n m'#7863't h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENTUHANG'
        Caption_UTF7 = 'T+AOo-n m+Hrc-t h+AOA-ng'
      end
      object grdKHDENMAHANG: TdxDBGridPopupColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DENMAHANG'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHTUMAHANGCloseUp
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object grdKHTENDENHANG: TdxDBGridColumn
        Caption = 'T'#234'n m'#7863't h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 136
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TENDENHANG'
        Caption_UTF7 = 'T+AOo-n m+Hrc-t h+AOA-ng'
      end
      object grdKHHESOQUIDOI: TdxDBGridCalcColumn
        Caption = 'Gi'#225' nh'#7853'p v'#224'o/ Gi'#225' xu'#7845't ra'
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 2
        RowIndex = 0
        FieldName = 'HESOQUIDOI'
        Caption_UTF7 = 'Gi+AOE nh+Hq0-p v+AOA-o/ Gi+AOE xu+HqU-t ra'
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
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
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          Caption = 'BitBtn6'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
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
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 420
    Top = 80
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsHESO
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 16469
      DataSource = dsHESO
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsHESO
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsHESO
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
        Caption = 'B'#7843'ng k'#234' h'#7879' s'#7889' '#273#7893'i h'#224'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryHESO: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HESODOIHANG'
      'WHERE'
      '   DENMAHANG = :OLD_DENMAHANG AND'
      '   LOAIDENHANG = :OLD_LOAIDENHANG AND'
      '   LOAITUHANG = :OLD_LOAITUHANG AND'
      '   TUMAHANG = :OLD_TUMAHANG')
    EditSQL.Strings = (
      'UPDATE HESODOIHANG SET'
      '   DENMAHANG = :DENMAHANG, /*PK*/'
      '   LOAIDENHANG = :LOAIDENHANG, /*PK*/'
      '   LOAITUHANG = :LOAITUHANG, /*PK*/'
      '   TUMAHANG = :TUMAHANG, /*PK*/'
      '   HESOQUIDOI = :HESOQUIDOI'
      'WHERE'
      '   DENMAHANG = :OLD_DENMAHANG AND'
      '   LOAIDENHANG = :OLD_LOAIDENHANG AND'
      '   LOAITUHANG = :OLD_LOAITUHANG AND'
      '   TUMAHANG = :OLD_TUMAHANG')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO HESODOIHANG('
      '   DENMAHANG, /*PK*/'
      '   LOAIDENHANG, /*PK*/'
      '   LOAITUHANG, /*PK*/'
      '   TUMAHANG, /*PK*/'
      '   HESOQUIDOI)'
      'VALUES ('
      '   :DENMAHANG,'
      '   :LOAIDENHANG,'
      '   :LOAITUHANG,'
      '   :TUMAHANG,'
      '   :HESOQUIDOI)')
    KeyLinks.Strings = (
      'TUMAHANG'
      'LOAITUHANG'
      'DENMAHANG'
      'LOAIDENHANG')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryHESOBeforeEdit
    BeforeDelete = qryHESOBeforeDelete
    BeforeInsert = qryHESOBeforeInsert
    AfterInsert = qryHESOAfterInsert
    BeforePost = qryHESOBeforePost
    OnNewRecord = qryHESONewRecord
    OnPostError = qryHESOPostError
    SQL.Strings = (
      'SELECT TUMAHANG'
      '     , LOAITUHANG'
      '     , DENMAHANG'
      '     , LOAIDENHANG'
      '     , HESOQUIDOI,TUMAHANG||DENMAHANG KF'
      '     , TUHANG.OBJECT_NAME TENTUHANG'
      '     , DENHANG.OBJECT_NAME TENDENHANG'
      'FROM HESODOIHANG'
      
        'JOIN OBJECT_LIST TUHANG on (TUHANG.OBJECT_ID=TUMAHANG and TUHANG' +
        '.OTYPE_ID=2 and LOAITUHANG=2)'
      
        'JOIN OBJECT_LIST DENHANG on (DENHANG.OBJECT_ID=DENMAHANG and DEN' +
        'HANG.OTYPE_ID=2 and LOAIDENHANG=2)')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryHESOTUMAHANG: TWideStringField
      FieldName = 'TUMAHANG'
      Required = True
      OnChange = qryHESOTUMAHANGChange
      Size = 30
    end
    object qryHESOLOAITUHANG: TSmallintField
      FieldName = 'LOAITUHANG'
      Required = True
    end
    object qryHESODENMAHANG: TWideStringField
      FieldName = 'DENMAHANG'
      Required = True
      OnChange = qryHESODENMAHANGChange
      Size = 30
    end
    object qryHESOLOAIDENHANG: TSmallintField
      FieldName = 'LOAIDENHANG'
      Required = True
    end
    object qryHESOHESOQUIDOI: TIBOFloatField
      FieldName = 'HESOQUIDOI'
    end
    object qryHESOTENTUHANG: TWideStringField
      FieldName = 'TENTUHANG'
      Size = 126
    end
    object qryHESOTENDENHANG: TWideStringField
      FieldName = 'TENDENHANG'
      Size = 126
    end
    object qryHESOKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 60
    end
  end
  object dsHESO: TDataSource
    DataSet = qryHESO
    Left = 326
    Top = 287
  end
end
