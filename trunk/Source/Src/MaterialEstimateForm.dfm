object MaterialEstimateFrm: TMaterialEstimateFrm
  Left = 197
  Top = 118
  Width = 700
  Height = 514
  ActiveControl = ElPageControl1
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 692
    Height = 480
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object ElPageControl1: TElPageControl
      Left = 10
      Top = 94
      Width = 655
      Height = 375
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = ElTabSheet1
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'Tahoma'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 15
      object ElTabSheet1: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'Chi ti'#7871't d'#7921' to'#225'n NVL'
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 0
          Width = 651
          Height = 352
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MATERIAL_PRO_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          OnMouseUp = dxDBGrid2MouseUp
          DataSource = dsMaterialNormEstimate
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid2OBJECT_ID: TdxDBGridPopupColumn
            Caption = 'Ph'#226'n x'#432#7903'ng'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_ID'
            PopupControl = PopupFrm.PnlCommonObj
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid2OBJECT_IDCloseUp
            Caption_UTF7 = 'Ph+AOI-n x+AbAe3w-ng'
          end
          object dxDBGrid2FACTOR_ID: TdxDBGridPopupColumn
            Caption = 'Th'#224'nh ph'#7849'm'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FACTOR_ID'
            PopupControl = PopupFrm.PnlCommonObj
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid2FACTOR_IDCloseUp
            Caption_UTF7 = 'Th+AOA-nh ph+Hqk-m'
          end
          object dxDBGrid2MATERIAL_ID: TdxDBGridPopupColumn
            Caption = 'Nguy'#234'n v'#7853't li'#7879'u'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MATERIAL_ID'
            PopupControl = PopupFrm.PnlCommonObj
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = dxDBGrid2MATERIAL_IDCloseUp
            Caption_UTF7 = 'Nguy+AOo-n v+Hq0-t li+Hsc-u'
          end
          object dxDBGrid2AMOUNT_ESTIMATE: TdxDBGridCalcColumn
            Caption = 'S'#7889' l'#432#7907'ng NVL'
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AMOUNT_ESTIMATE'
            Caption_UTF7 = 'S+HtE l+AbAe4w-ng NVL'
          end
        end
      end
      object ElTabSheet2: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'T'#7893'ng h'#7907'p d'#7921' to'#225'n NVL'
        Visible = False
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 651
          Height = 352
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MATERIAL_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          OnMouseUp = dxDBGrid1MouseUp
          DataSource = DataSource1
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid1MATERIAL_ID: TdxDBGridMaskColumn
            Caption = 'Nguy'#234'n v'#7853't li'#7879'u'
            HeaderAlignment = taCenter
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MATERIAL_ID'
            Caption_UTF7 = 'Nguy+AOo-n v+Hq0-t li+Hsc-u'
          end
          object dxDBGrid1AMOUNT_ESTIMATE: TdxDBGridMaskColumn
            Caption = 'S'#7889' l'#432#7907'ng NVL'
            HeaderAlignment = taCenter
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AMOUNT_ESTIMATE'
            Caption_UTF7 = 'S+HtE l+AbAe4w-ng NVL'
          end
          object dxDBGrid1AMOUNT_INVENTORY: TdxDBGridMaskColumn
            Caption = 'S'#7889' l'#432#7907'ng t'#7891'n'
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AMOUNT_INVENTORY'
            Caption_UTF7 = 'S+HtE l+AbAe4w-ng t+HtM-n'
          end
          object dxDBGrid1AMOUNT_DIFFERENCE: TdxDBGridMaskColumn
            Caption = 'Ch'#234'nh l'#7879'ch'
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AMOUNT_DIFFERENCE'
            Caption_UTF7 = 'Ch+AOo-nh l+Hsc-ch'
          end
        end
      end
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 126
      Top = 55
      Width = 115
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnEnter = dxPopupEdit1Enter
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit1CloseUp
    end
    object dxPopupEdit2: TdxPopupEdit
      Left = 126
      Top = 28
      Width = 115
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = dxPopupEdit2Enter
      OnExit = dxPopupEdit2Exit
      OnChange = dxPopupEdit2Change
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxPopupEdit2CloseUp
    end
    object dxCalcEdit1: TdxCalcEdit
      Left = 368
      Top = 55
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Text = '0'
      PopupBorder = pbFrame3D
    end
    object ElPopupButton1: TElPopupButton
      Left = 595
      Top = 28
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Ph'#225't sinh'
      TabOrder = 4
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 172
      Top = 445
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
      TabOrder = 7
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 10
      Top = 445
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
      TabOrder = 5
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 91
      Top = 445
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'EDIT'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&S'#7917'a'
      TabOrder = 6
      Action = acEdit
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 253
      Top = 445
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
      TabOrder = 8
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 334
      Top = 445
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng L'#432'u'
      TabOrder = 9
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 415
      Top = 445
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &Excel'
      TabOrder = 10
      OnClick = ElPopupButton7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 607
      Top = 445
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 11
      OnClick = ElPopupButton8Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxEdit1: TdxEdit
      Left = 368
      Top = 28
      Width = 233
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Th'#244'ng tin chung'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group6: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item2: TdxLayoutItem
              Caption = #272#7889'i t'#432#7907'ng gi'#225' th'#224'nh '
              Control = dxPopupEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = ' T'#234'n '#273#7889'i t'#432#7907'ng'
              Control = dxEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item3: TdxLayoutItem
              Caption = 'Th'#224'nh ph'#7849'm'
              Control = dxPopupEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              Caption = ' S'#7889' l'#432#7907'ng c'#7847'n s'#7843'n xu'#7845't  '
              Control = dxCalcEdit1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = ElPageControl1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Caption = 'ElPopupButton6'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Caption = 'ElPopupButton7'
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton8'
          ShowCaption = False
          Control = ElPopupButton8
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qryMaterialEstimate: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'KYHT'
        ParamType = ptInput
        Value = 24105
      end
      item
        DataType = ftWideString
        Name = 'object_id'
        ParamType = ptInput
        Value = 'SX BT'
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM MATERIAL_PROJECT'
      'WHERE'
      '   BEGIN_PERIOD_ID = :OLD_BEGIN_PERIOD_ID AND'
      '   MATERIAL_PRO_ID = :OLD_MATERIAL_PRO_ID')
    EditSQL.Strings = (
      'UPDATE MATERIAL_PROJECT SET'
      '   BEGIN_PERIOD_ID = :BEGIN_PERIOD_ID, /*PK*/'
      '   MATERIAL_PRO_ID = :MATERIAL_PRO_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   FACTOR_ID = :FACTOR_ID,'
      '   FTYPE_ID = :FTYPE_ID,'
      '   MATERIAL_ID = :MATERIAL_ID,'
      '   MTYPE_ID = :MTYPE_ID,'
      '   AMOUNT_ESTIMATE = :AMOUNT_ESTIMATE,'
      '   AMOUNT_ARISE = :AMOUNT_ARISE,'
      '   PRICE_ESTIMATE = :PRICE_ESTIMATE,'
      '   VALUE_ESTIMATE = :VALUE_ESTIMATE'
      'WHERE'
      '   BEGIN_PERIOD_ID = :OLD_BEGIN_PERIOD_ID AND'
      '   MATERIAL_PRO_ID = :OLD_MATERIAL_PRO_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO MATERIAL_PROJECT('
      '   BEGIN_PERIOD_ID, /*PK*/'
      '   MATERIAL_PRO_ID, /*PK*/'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   FACTOR_ID,'
      '   FTYPE_ID,'
      '   MATERIAL_ID,'
      '   MTYPE_ID,'
      '   AMOUNT_ESTIMATE,'
      '   AMOUNT_ARISE,'
      '   PRICE_ESTIMATE,'
      '   VALUE_ESTIMATE)'
      'VALUES ('
      '   :BEGIN_PERIOD_ID,'
      '   :MATERIAL_PRO_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :FACTOR_ID,'
      '   :FTYPE_ID,'
      '   :MATERIAL_ID,'
      '   :MTYPE_ID,'
      '   :AMOUNT_ESTIMATE,'
      '   :AMOUNT_ARISE,'
      '   :PRICE_ESTIMATE,'
      '   :VALUE_ESTIMATE)')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryMaterialEstimateBeforeEdit
    BeforeDelete = qryMaterialEstimateBeforeDelete
    BeforeInsert = qryMaterialEstimateBeforeInsert
    AfterInsert = qryMaterialEstimateAfterInsert
    AfterOpen = qryMaterialEstimateAfterOpen
    BeforePost = qryMaterialEstimateBeforePost
    OnNewRecord = qryMaterialEstimateNewRecord
    OnPostError = qryMaterialEstimatePostError
    SQL.Strings = (
      'SELECT'
      'BEGIN_PERIOD_ID'
      ',MATERIAL_PRO_ID'
      ',OBJECT_ID'
      ',OTYPE_ID'
      ',FACTOR_ID'
      ',FTYPE_ID'
      ',MATERIAL_ID'
      ',MTYPE_ID'
      ',AMOUNT_ESTIMATE'
      ',AMOUNT_ARISE'
      ',PRICE_ESTIMATE'
      ',VALUE_ESTIMATE'
      'FROM material_project'
      'WHERE BEGIN_PERIOD_ID = :KYHT and object_id = :object_id'
      'order by  MATERIAL_ID'
      ''
      '')
    FieldOptions = []
    Left = 204
    Top = 196
    object qryMaterialEstimateBEGIN_PERIOD_ID: TSmallintField
      FieldName = 'BEGIN_PERIOD_ID'
      Required = True
    end
    object qryMaterialEstimateMATERIAL_PRO_ID: TSmallintField
      FieldName = 'MATERIAL_PRO_ID'
      Required = True
    end
    object qryMaterialEstimateOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryMaterialEstimateOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryMaterialEstimateFACTOR_ID: TWideStringField
      FieldName = 'FACTOR_ID'
      Size = 30
    end
    object qryMaterialEstimateFTYPE_ID: TSmallintField
      FieldName = 'FTYPE_ID'
    end
    object qryMaterialEstimateMATERIAL_ID: TWideStringField
      FieldName = 'MATERIAL_ID'
      Required = True
      Size = 30
    end
    object qryMaterialEstimateMTYPE_ID: TSmallintField
      FieldName = 'MTYPE_ID'
      Required = True
    end
    object qryMaterialEstimateAMOUNT_ESTIMATE: TIBOFloatField
      FieldName = 'AMOUNT_ESTIMATE'
      DisplayFormat = '###,###,###.##'
    end
    object qryMaterialEstimateAMOUNT_ARISE: TIBOFloatField
      FieldName = 'AMOUNT_ARISE'
    end
    object qryMaterialEstimatePRICE_ESTIMATE: TIBOFloatField
      FieldName = 'PRICE_ESTIMATE'
    end
    object qryMaterialEstimateVALUE_ESTIMATE: TIBOFloatField
      FieldName = 'VALUE_ESTIMATE'
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
        Caption = 'D'#7921' to'#225'n nguy'#234'n v'#7853't li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 256
    Top = 208
  end
  object ActionList1: TActionList
    Left = 276
    Top = 208
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsMaterialNormEstimate
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsMaterialNormEstimate
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsMaterialNormEstimate
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsMaterialNormEstimate
    end
    object acEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = '&S?a'
      Hint = 'EDIT'
      DataSource = dsMaterialNormEstimate
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 308
    Top = 208
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object dsMaterialNormEstimate: TDataSource
    DataSet = qryMaterialEstimate
    Left = 204
    Top = 223
  end
  object qryMaterialEstimate_Sum: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'kyht'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    RecordCountAccurate = True
    BeforeOpen = qryMaterialEstimate_SumBeforeOpen
    SQL.Strings = (
      'SELECT KYHT_OUT BEGIN_PERIOD_ID,'
      '    MANVL MATERIAL_ID,'
      '    SLNVLDM AMOUNT_ESTIMATE,'
      '    V_COUNT_INVEN AMOUNT_INVENTORY,'
      '    V_COUNT_DIFFERENCE AMOUNT_DIFFERENCE'
      'FROM SP_DUTOANNVL_SUMMARY(:kyht,:branch_id)')
    FieldOptions = []
    Left = 114
    Top = 202
    object qryMaterialEstimate_SumBEGIN_PERIOD_ID: TSmallintField
      FieldName = 'BEGIN_PERIOD_ID'
    end
    object qryMaterialEstimate_SumMATERIAL_ID: TStringField
      FieldName = 'MATERIAL_ID'
      Size = 30
    end
    object qryMaterialEstimate_SumAMOUNT_ESTIMATE: TIBOFloatField
      FieldName = 'AMOUNT_ESTIMATE'
      DisplayFormat = '###,###,###.##'
    end
    object qryMaterialEstimate_SumAMOUNT_INVENTORY: TIBOFloatField
      FieldName = 'AMOUNT_INVENTORY'
      DisplayFormat = '###,###,###.##'
    end
    object qryMaterialEstimate_SumAMOUNT_DIFFERENCE: TIBOFloatField
      FieldName = 'AMOUNT_DIFFERENCE'
      DisplayFormat = '###,###,###.##'
    end
  end
  object DataSource1: TDataSource
    DataSet = qryMaterialEstimate_Sum
    Left = 154
    Top = 242
  end
end
