object BeginGoodObjFrm: TBeginGoodObjFrm
  Tag = 25
  Left = 284
  Top = 178
  Width = 615
  Height = 439
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
    Width = 607
    Height = 405
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      607
      405)
    object btnCancel: TElPopupButton
      Tag = 22
      Left = 246
      Top = 377
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 5
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Tag = 21
      Left = 165
      Top = 377
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 4
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Tag = 24
      Left = 529
      Top = 377
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
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Tag = 23
      Left = 448
      Top = 377
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
      TabOrder = 6
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 89
      Top = 3
      Width = 143
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnExit = dxDBPopupEdit1Exit
      DataField = 'ACCOUNT_ID'
      DataSource = MainDM.dsPAcc
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
    end
    object dxDBEdit1: TdxDBEdit
      Left = 238
      Top = 3
      Width = 354
      Cursor = crIBeam
      Color = clHighlightText
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 8
      DataField = 'ACCOUNT_NAME'
      DataSource = MainDM.dsPAcc
      ReadOnly = True
      StoredValues = 64
    end
    object btnIns: TElPopupButton
      Tag = 19
      Left = 3
      Top = 377
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Insert'
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 2
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdObj: TdxDBGrid
      Left = 5
      Top = 32
      Width = 669
      Height = 140
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = grdObjKeyDown
      OnMouseUp = grdObjMouseUp
      DataSource = dsBeginObj
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnEditing = grdObjEditing
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdObjOBJECT_ID: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889
        HeaderAlignment = taCenter
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjOBJECT_IDCloseUp
        Caption_UTF7 = 'Y+Hr8-u t+HtE'
      end
      object grdObjGOODS_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' h'#224'ng'
        HeaderAlignment = taCenter
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GOODS_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjOBJECT_IDCloseUp
        Caption_UTF7 = 'M+AOM h+AOA-ng'
      end
      object grdObjBEGIN_AMOUNT: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_AMOUNT'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdObjBEGIN_VALUE: TdxDBGridMaskColumn
        Caption = 'Gi'#225' tr'#7883
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BEGIN_VALUE'
        Caption_UTF7 = 'Gi+AOE tr+Hss'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 84
      Top = 377
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Transparent = True
      UseXPThemes = True
      Caption = '&Xo'#225
      TabOrder = 3
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
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
        object locFormItem9: TdxLayoutItem
          Tag = 1
          Caption = 'S'#7889' hi'#7879'u t'#224'i kho'#7843'n'
          Control = dxDBPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object lociKH: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid4'
        ShowCaption = False
        Control = grdObj
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
        object locFormItem1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
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
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 48
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
      DataSource = dsBeginObj
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsBeginObj
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsBeginObj
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsBeginObj
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
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'H'#224'ng t'#7891'n ban '#273#7847'u theo y'#7871'u t'#7889' '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 96
  end
  object qryBeginObj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM INSTOCK_OBJ'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   GOODS_OBJ = :OLD_GOODS_OBJ AND'
      '   GOODS_TYPE = :OLD_GOODS_TYPE AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE INSTOCK_OBJ SET'
      '   ACCOUNT_ID = :ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   GOODS_OBJ = :GOODS_OBJ, /*PK*/'
      '   GOODS_TYPE = :GOODS_TYPE, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   BEGIN_AMOUNT = :BEGIN_AMOUNT,'
      '   BEGIN_VALUE = :BEGIN_VALUE'
      'WHERE'
      '   ACCOUNT_ID = :OLD_ACCOUNT_ID AND'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   GOODS_OBJ = :OLD_GOODS_OBJ AND'
      '   GOODS_TYPE = :OLD_GOODS_TYPE AND'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO INSTOCK_OBJ('
      '   ACCOUNT_ID, /*PK*/'
      '   BRANCH_ID, /*PK*/'
      '   GOODS_OBJ, /*PK*/'
      '   GOODS_TYPE, /*PK*/'
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   BEGIN_AMOUNT,'
      '   BEGIN_VALUE)'
      'VALUES ('
      '   :ACCOUNT_ID,'
      '   :BRANCH_ID,'
      '   :GOODS_OBJ,'
      '   :GOODS_TYPE,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :BEGIN_AMOUNT,'
      '   :BEGIN_VALUE)')
    KeyLinks.Strings = (
      'GOODS_OBJ'
      'GOODS_TYPE'
      'OBJECT_ID'
      'OTYPE_ID'
      'ACCOUNT_ID'
      'PERIOD_ID')
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryBeginObjBeforeEdit
    BeforeDelete = qryBeginObjBeforeDelete
    BeforeInsert = qryBeginObjBeforeInsert
    AfterInsert = qryBeginObjAfterInsert
    BeforePost = qryBeginObjBeforePost
    OnNewRecord = qryBeginObjNewRecord
    OnPostError = qryBeginObjPostError
    DataSource = MainDM.dsPAcc
    SQL.Strings = (
      'SELECT GOODS_OBJ'
      '     , GOODS_TYPE'
      '     , OBJECT_ID'
      '     , OTYPE_ID'
      '     , ACCOUNT_ID'
      '     , PERIOD_ID'
      '     , BEGIN_AMOUNT'
      '     , BEGIN_VALUE'
      '     , BRANCH_ID'
      'FROM INSTOCK_OBJ'
      
        'where PERIOD_ID=:PERIOD_ID and BRANCH_ID = :BRANCH_ID and ACCOUN' +
        'T_ID=:ACCOUNT_ID')
    FieldOptions = []
    Left = 229
    Top = 164
    object qryBeginObjGOODS_OBJ: TWideStringField
      FieldName = 'GOODS_OBJ'
      Required = True
      Size = 30
    end
    object qryBeginObjGOODS_TYPE: TSmallintField
      FieldName = 'GOODS_TYPE'
      Required = True
    end
    object qryBeginObjOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryBeginObjOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryBeginObjACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Required = True
      Size = 15
    end
    object qryBeginObjPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryBeginObjBEGIN_AMOUNT: TIBOFloatField
      FieldName = 'BEGIN_AMOUNT'
    end
    object qryBeginObjBEGIN_VALUE: TIBOFloatField
      FieldName = 'BEGIN_VALUE'
    end
    object qryBeginObjBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsBeginObj: TDataSource
    DataSet = qryBeginObj
    Left = 229
    Top = 209
  end
end
