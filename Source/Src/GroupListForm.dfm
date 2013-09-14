object GroupListFrm: TGroupListFrm
  Left = 321
  Top = 289
  HelpContext = 18
  BorderStyle = bsDialog
  ClientHeight = 264
  ClientWidth = 441
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
    Width = 441
    Height = 264
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      441
      264)
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
      KeyField = 'GROUP_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 3
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      DataSource = dsGroup
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = '    M'#227' nh'#243'm'
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_ID'
        Caption_UTF7 = '    M+AOM nh+APM-m'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = '    T'#234'n nh'#243'm'
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NAME'
        Caption_UTF7 = '    T+AOo-n nh+APM-m'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = '     Ghi ch'#250' '
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NOTES'
        Caption_UTF7 = '     Ghi ch+APo '
      end
    end
    object btnCancel: TElPopupButton
      Left = 363
      Top = 236
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 2
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 287
      Top = 236
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#259'ng &nh'#7853'p'
      TabOrder = 1
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxCheckEdit1: TdxCheckEdit
      Left = 3
      Top = 236
      Width = 254
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnClick = dxCheckEdit1Click
      Caption = #272#259'ng nh'#7853'p v'#7899'i &t'#7845't c'#7843' quy'#7873'n b'#7841'n c'#243
      State = cbsChecked
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
        Offsets.Top = 5
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem4: TdxLayoutItem
          Caption = 'dxCheckEdit1'
          ShowCaption = False
          Control = dxCheckEdit1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntBitBtn2'
          ShowCaption = False
          Control = btnOK
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntBitBtn1'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 4
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryGroup: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\Projects\Accounting\SSP Accounting Professional 4.1 A\db\ACCO' +
      'UNTING.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      '')
    KeyLinks.Strings = (
      'GROUP_LIST.GROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT GROUP_LIST.GROUP_ID'
      '     , GROUP_NAME'
      '     , GROUP_NOTES'
      '     , USER_NAME'
      'FROM GROUP_LIST'
      'JOIN USER_GROUP on (GROUP_LIST.GROUP_ID = USER_GROUP.GROUP_ID)'
      'where USER_NAME=:USER_NAME'
      'order by GROUP_LIST.GROUP_ID')
    FieldOptions = []
    Left = 126
    Top = 94
    object qryGroupGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 15
    end
    object qryGroupGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 126
    end
    object qryGroupGROUP_NOTES: TWideStringField
      FieldName = 'GROUP_NOTES'
      Size = 126
    end
    object qryGroupUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
  end
  object dsGroup: TDataSource
    DataSet = qryGroup
    Left = 126
    Top = 116
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
        Caption = 'Danh s'#225'ch c'#225'c nh'#243'm quy'#7873'n c'#7911'a b'#7841'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
