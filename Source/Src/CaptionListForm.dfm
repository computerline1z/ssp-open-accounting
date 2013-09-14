object CaptionListFrm: TCaptionListFrm
  Left = 405
  Top = 9
  Width = 700
  Height = 505
  HelpContext = 10
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
    Width = 692
    Height = 471
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      692
      471)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 388
      Height = 236
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'CONTROL_NAME'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      BandColor = clInactiveBorder
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsCap
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1CAPTION_DEF: TdxDBGridColumn
        Caption = 'M'#7863'c '#273#7883'nh'
        HeaderAlignment = taCenter
        Visible = False
        Width = 255
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_DEF'
        Caption_UTF7 = 'M+Hrc-c +AREeyw-nh'
      end
      object dxDBGrid1CONTROL_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n control'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTROL_NAME'
        Caption_UTF7 = 'T+AOo-n control'
      end
      object dxDBGrid1CAPTION_VN: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Ti'#234'u '#273#7873' Ti'#7871'ng Vi'#7879't'
        HeaderAlignment = taCenter
        Width = 255
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_VN'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ Ti+Hr8-ng Vi+Hsc-t'
      end
      object dxDBGrid1CAPTION_ENG: TdxDBGridMaskColumn
        Caption = 'Enghlish Title'
        HeaderAlignment = taCenter
        Width = 286
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_ENG'
      end
      object dxDBGrid1CAPTION_VISIBLE: TdxDBGridCheckColumn
        Caption = 'V'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_VISIBLE'
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dxDBGrid1FORM_NAME: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORM_NAME'
      end
    end
    object btnReFresh: TElPopupButton
      Left = 3
      Top = 443
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&'#272#7885'c l'#7841'i'
      TabOrder = 1
      OnClick = btnReFreshClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 538
      Top = 443
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 4
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 614
      Top = 443
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
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDelete: TElPopupButton
      Left = 79
      Top = 443
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
      OnClick = btnDeleteClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnApply: TElPopupButton
      Left = 175
      Top = 443
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&'#193'p d'#7909'ng'
      TabOrder = 3
      OnClick = btnApplyClick
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
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnReFresh
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locDel: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = btnDelete
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 20
          ShowCaption = False
          Control = btnApply
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 44
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
        Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883' tr'#234'n giao di'#7879'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'Excel Files|*.xls'
    Left = 184
    Top = 72
  end
  object qryCap: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FORM_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '192.168.9.148:D:\SSP Projects\KETOAN\KETOAN-ADVANCED\DB-TEST\acc' +
      'ounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM CAPTION_LIST'
      'WHERE'
      '   CONTROL_NAME = :OLD_CONTROL_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME')
    EditSQL.Strings = (
      'UPDATE CAPTION_LIST SET'
      '   CONTROL_NAME = :CONTROL_NAME, /*PK*/'
      '   FORM_NAME = :FORM_NAME, /*PK*/'
      '   CAPTION_VN = :CAPTION_VN,'
      '   CAPTION_ENG = :CAPTION_ENG,'
      '   CAPTION_VISIBLE = :CAPTION_VISIBLE,'
      '   CAPTION_DEF = :CAPTION_DEF'
      'WHERE'
      '   CONTROL_NAME = :OLD_CONTROL_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO CAPTION_LIST('
      '   CONTROL_NAME, /*PK*/'
      '   FORM_NAME, /*PK*/'
      '   CAPTION_VN,'
      '   CAPTION_ENG,'
      '   CAPTION_VISIBLE,'
      '   CAPTION_DEF)'
      'VALUES ('
      '   :CONTROL_NAME,'
      '   :FORM_NAME,'
      '   :CAPTION_VN,'
      '   :CAPTION_ENG,'
      '   :CAPTION_VISIBLE,'
      '   :CAPTION_DEF)')
    KeyLinks.Strings = (
      'FORM_NAME'
      'CONTROL_NAME')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryCapBeforeEdit
    BeforeDelete = qryCapBeforeDelete
    AfterDelete = qryCapAfterDelete
    AfterPost = qryCapAfterPost
    SQL.Strings = (
      'SELECT FORM_NAME'
      '     , CONTROL_NAME'
      '     , CAPTION_VN'
      '     , CAPTION_ENG'
      '     , CAPTION_VISIBLE'
      '     , CAPTION_DEF'
      'FROM CAPTION_LIST '
      'where FORM_NAME=:FORM_NAME order by CAPTION_VN')
    FieldOptions = []
    Left = 88
    Top = 78
    object qryCapFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 30
    end
    object qryCapCONTROL_NAME: TWideStringField
      FieldName = 'CONTROL_NAME'
      Required = True
      Size = 63
    end
    object qryCapCAPTION_VISIBLE: TSmallintField
      FieldName = 'CAPTION_VISIBLE'
    end
    object qryCapCAPTION_VN: TWideStringField
      FieldName = 'CAPTION_VN'
      Size = 1533
    end
    object qryCapCAPTION_ENG: TWideStringField
      FieldName = 'CAPTION_ENG'
      Size = 255
    end
    object qryCapCAPTION_DEF: TWideStringField
      FieldName = 'CAPTION_DEF'
      Size = 1533
    end
  end
  object dsCap: TDataSource
    DataSet = qryCap
    Left = 88
    Top = 112
  end
end
