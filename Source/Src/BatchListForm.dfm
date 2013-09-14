object BatchListFrm: TBatchListFrm
  Left = 137
  Top = 93
  Width = 796
  Height = 583
  HelpContext = 5
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
    Width = 788
    Height = 549
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      788
      549)
    object btnCancel: TElPopupButton
      Left = 233
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 4
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 158
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 3
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 710
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 635
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 1
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdBatchList: TdxDBGrid
      Left = 5
      Top = 5
      Width = 641
      Height = 355
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung'
          Width = 246
        end
        item
          Caption = 'Th'#244'ng c'#242'n l'#7841'i '#273#7847'u k'#7923
          Width = 269
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'BATCH_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = grdBatchListKeyDown
      OnMouseUp = grdBatchListMouseUp
      BandColor = clHotLight
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWhite
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsBatchList
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      ShowBands = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdBatchListBATCH_ID: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#244
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BATCH_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 L'#244
        Caption_UTF7 = 'S+HtE l+APQ'
        SummaryFooterFormat_UTF7 = '#,0 L+APQ'
      end
      object grdBatchListMASO_HH: TdxDBGridPopupColumn
        Caption = 'M'#227' h'#224'ng'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO_HH'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdBatchListMASO_HHCloseUp
        Caption_UTF7 = 'M+AOM h+AOA-ng'
      end
      object grdBatchListOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n h'#224'ng h'#243'a'
        HeaderAlignment = taCenter
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng h+APM-a'
      end
      object grdBatchListTGSDCL: TdxDBGridMaskColumn
        Caption = 'TGSD (th'#225'ng)'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TGSDCL'
        Caption_UTF7 = 'TGSD (th+AOE-ng)'
      end
      object grdBatchListSLBANDAU: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SLBANDAU'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdBatchListGTBANDAU: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 1
        RowIndex = 0
        FieldName = 'GTBANDAU'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
      object grdBatchListBATCH_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BATCH_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object ElPopupButton2: TElPopupButton
      Left = 78
      Top = 521
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 2
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
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
        Control = grdBatchList
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locInsert: TdxLayoutItem
          Caption = 'BitBtn6'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locDelete: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locSave: TdxLayoutItem
          Caption = 'BitBtn2'
          Offsets.Left = 5
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object locCancel: TdxLayoutItem
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
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 392
    Top = 336
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 394
    Top = 368
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsBatchList
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBatchList
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBatchList
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsBatchList
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
          'C'#225'c l'#244' c'#244'ng c'#7909' d'#7909'ng c'#7909' d'#249'ng '#273#7875' cho thu'#234'  (Bao g'#7891'm d'#7909'ng c'#7909' trong ' +
          'kho+'#273'ang cho thu'#234') '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 96
  end
  object qryBatchList: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM BEGIN_BATCH'
      'WHERE'
      '   BATCH_ID = :OLD_BATCH_ID')
    EditSQL.Strings = (
      'UPDATE BEGIN_BATCH SET'
      '   BATCH_ID = :BATCH_ID, /*PK*/'
      '   TGSDCL = :TGSDCL,'
      '   SLBANDAU = :SLBANDAU,'
      '   GTBANDAU = :GTBANDAU,'
      '   MASO_HH = :MASO_HH,'
      '   LOAI_HH = :LOAI_HH,'
      '   BATCH_NOTE = :BATCH_NOTE'
      'WHERE'
      '   BATCH_ID = :OLD_BATCH_ID')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO BEGIN_BATCH('
      '   BATCH_ID, /*PK*/'
      '   TGSDCL,'
      '   SLBANDAU,'
      '   GTBANDAU,'
      '   MASO_HH,'
      '   LOAI_HH,'
      '   BATCH_NOTE)'
      'VALUES ('
      '   :BATCH_ID,'
      '   :TGSDCL,'
      '   :SLBANDAU,'
      '   :GTBANDAU,'
      '   :MASO_HH,'
      '   :LOAI_HH,'
      '   :BATCH_NOTE)')
    KeyLinks.Strings = (
      'BATCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBatchListBeforeEdit
    BeforeDelete = qryBatchListBeforeDelete
    BeforeInsert = qryBatchListBeforeInsert
    AfterInsert = qryBatchListAfterInsert
    BeforePost = qryBatchListBeforePost
    OnNewRecord = qryBatchListNewRecord
    OnPostError = qryBatchListPostError
    SQL.Strings = (
      'SELECT BATCH_ID'
      '     , TGSDCL'
      '     , SLBANDAU'
      '     , GTBANDAU'
      '     , MASO_HH'
      '     , LOAI_HH'
      '     , OBJECT_NAME'
      '     , SUBINFO_2'
      '     , BATCH_NOTE'
      'FROM BEGIN_BATCH'
      'JOIN OBJECT_LIST on (BEGIN_BATCH.MASO_HH=OBJECT_LIST.OBJECT_ID '
      
        'and BEGIN_BATCH.LOAI_HH=OBJECT_LIST.OTYPE_ID and OBJECT_LIST.OTY' +
        'PE_ID=2)'
      'order by BATCH_ID')
    FieldOptions = []
    Left = 168
    Top = 148
    object qryBatchListBATCH_ID: TIntegerField
      FieldName = 'BATCH_ID'
      Required = True
    end
    object qryBatchListSLBANDAU: TIBOFloatField
      FieldName = 'SLBANDAU'
    end
    object qryBatchListGTBANDAU: TIBOFloatField
      FieldName = 'GTBANDAU'
    end
    object qryBatchListMASO_HH: TWideStringField
      FieldName = 'MASO_HH'
      Size = 30
    end
    object qryBatchListLOAI_HH: TSmallintField
      FieldName = 'LOAI_HH'
    end
    object qryBatchListOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryBatchListSUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryBatchListBATCH_NOTE: TWideStringField
      FieldName = 'BATCH_NOTE'
      Size = 255
    end
    object qryBatchListTGSDCL: TSmallintField
      FieldName = 'TGSDCL'
    end
  end
  object dsBatchList: TDataSource
    DataSet = qryBatchList
    Left = 168
    Top = 177
  end
end
