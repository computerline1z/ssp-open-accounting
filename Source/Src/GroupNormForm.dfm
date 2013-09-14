object GroupNormFrm: TGroupNormFrm
  Left = 178
  Top = 189
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
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJGRP_ID'
      ShowSummaryFooter = True
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
      DataSource = dsGroupNorm
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      OnEditing = grdKHEditing
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHOBJGRP_ID: TdxDBGridPopupColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
        SummaryFooterType = cstCount
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHOBJGRP_IDCloseUp
        OnInitPopup = grdKHOBJGRP_IDInitPopup
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object grdKHMALOAI: TdxDBGridPopupColumn
        Caption = 'M'#227' SP'
        HeaderAlignment = taCenter
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MALOAI'
        Caption_UTF7 = 'M+AOM SP'
      end
      object grdKHOBJGRP_NAME: TdxDBGridColumn
        Caption = 'T'#234'n th'#224'nh ph'#7849'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 228
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_NAME'
        Caption_UTF7 = 'T+AOo-n th+AOA-nh ph+Hqk-m'
      end
      object grdKHNORM_VALUE: TdxDBGridCalcColumn
        Caption = 'Gi'#225' tr'#7883' '#273#7883'nh m'#7913'c'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NORM_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss +AREeyw-nh m+Huk-c'
      end
      object grdKHMAPX: TdxDBGridPopupColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAPX'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdKHMAPXCloseUp
        GroupIndex = 0
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
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
      DataSource = dsGroupNorm
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 16469
      DataSource = dsGroupNorm
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsGroupNorm
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsGroupNorm
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
        Caption = #272#7883'nh m'#7913'c chi ph'#237' theo nh'#243'm th'#224'nh ph'#7849'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryGroupNorm: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOAICHIPHI'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM LABOURGRP_NORM'
      'WHERE'
      '   LOAICHIPHI = :OLD_LOAICHIPHI AND'
      '   MAPX = :OLD_MAPX AND'
      '   OBJGRP_ID = :OLD_OBJGRP_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE LABOURGRP_NORM SET'
      '   LOAICHIPHI = :LOAICHIPHI, /*PK*/'
      '   MAPX = :MAPX, /*PK*/'
      '   OBJGRP_ID = :OBJGRP_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID,'
      '   MALOAI = :MALOAI,'
      '   NORM_VALUE = :NORM_VALUE'
      'WHERE'
      '   LOAICHIPHI = :OLD_LOAICHIPHI AND'
      '   MAPX = :OLD_MAPX AND'
      '   OBJGRP_ID = :OLD_OBJGRP_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO LABOURGRP_NORM('
      '   LOAICHIPHI, /*PK*/'
      '   MAPX, /*PK*/'
      '   OBJGRP_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   OTYPE_ID,'
      '   MALOAI,'
      '   NORM_VALUE)'
      'VALUES ('
      '   :LOAICHIPHI,'
      '   :MAPX,'
      '   :OBJGRP_ID,'
      '   :PERIOD_ID,'
      '   :OTYPE_ID,'
      '   :MALOAI,'
      '   :NORM_VALUE)')
    KeyLinks.Strings = (
      'LOAICHIPHI'
      'PERIOD_ID'
      'OBJGRP_ID'
      'MAPX')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryGroupNormBeforeEdit
    BeforeDelete = qryGroupNormBeforeDelete
    BeforeInsert = qryGroupNormBeforeInsert
    AfterInsert = qryGroupNormAfterInsert
    BeforePost = qryGroupNormBeforePost
    OnNewRecord = qryGroupNormNewRecord
    OnPostError = qryGroupNormPostError
    SQL.Strings = (
      'SELECT LOAICHIPHI'
      '     , PERIOD_ID'
      '     , LABOURGRP_NORM.OBJGRP_ID'
      '     , LABOURGRP_NORM.OTYPE_ID'
      '     , MAPX'
      '     , MALOAI'
      '     , NORM_VALUE'
      '     , OBJGRP_NAME'
      'FROM LABOURGRP_NORM'
      
        'JOIN OBJECT_GROUP on (LABOURGRP_NORM.OBJGRP_ID = OBJECT_GROUP.OB' +
        'JGRP_ID'
      '       and LABOURGRP_NORM.OTYPE_ID = OBJECT_GROUP.OTYPE_ID)'
      'where PERIOD_ID=:PERIOD_ID and LABOURGRP_NORM.OTYPE_ID=2 '
      'and MALOAI=6 and LOAICHIPHI=:LOAICHIPHI')
    FieldOptions = []
    Left = 326
    Top = 244
    object qryGroupNormLOAICHIPHI: TSmallintField
      FieldName = 'LOAICHIPHI'
      Required = True
    end
    object qryGroupNormPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryGroupNormOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Required = True
      OnChange = qryGroupNormOBJGRP_IDChange
      Size = 30
    end
    object qryGroupNormOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryGroupNormMAPX: TWideStringField
      FieldName = 'MAPX'
      Required = True
      Size = 30
    end
    object qryGroupNormMALOAI: TSmallintField
      FieldName = 'MALOAI'
      Required = True
    end
    object qryGroupNormNORM_VALUE: TIBOFloatField
      FieldName = 'NORM_VALUE'
    end
    object qryGroupNormOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
  end
  object dsGroupNorm: TDataSource
    DataSet = qryGroupNorm
    Left = 326
    Top = 287
  end
end
