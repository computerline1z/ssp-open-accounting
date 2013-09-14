object ParamArisingFrm: TParamArisingFrm
  Left = 188
  Top = 198
  Width = 717
  Height = 536
  HelpContext = 17
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
  DesignSize = (
    709
    502)
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 709
    Height = 502
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnAdd: TElPopupButton
      Left = 3
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 7
      OnClick = btnAddClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 145
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 9
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 226
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 10
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 297
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 11
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 565
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 13
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 636
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 14
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDefine: TElPopupButton
      Left = 368
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7883'n&h ngh'#297'a'
      TabOrder = 12
      OnClick = btnDefineClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBTreeList1: TdxDBTreeList
      Left = 5
      Top = 31
      Width = 560
      Height = 333
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PARAM_ID'
      ParentField = 'PPARAM_ID'
      BorderStyle = bsNone
      DragMode = dmAutomatic
      TabOrder = 6
      OnKeyDown = dxDBTreeList1KeyDown
      OnMouseUp = dxDBTreeList1MouseUp
      DataSource = dsParam
      DefaultRowHeight = 19
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoEnterThrough, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = dxDBTreeList1ChangeNode
      object dxDBTreeList1PARAM_ID: TdxDBTreeListMaskColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBTreeList1PARAM_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n tham s'#7889
        HeaderAlignment = taCenter
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NAME'
        Caption_UTF7 = 'T+AOo-n tham s+HtE'
      end
      object dxDBTreeList1PPARAM_ID: TdxDBTreeListMaskColumn
        Caption = 'M'#227' cha'
        HeaderAlignment = taCenter
        Visible = False
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPARAM_ID'
        Caption_UTF7 = 'M+AOM cha'
      end
      object dxDBTreeList1PARAM_COEFFICIENT: TdxDBTreeListCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_COEFFICIENT'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBTreeList1PARAM_PREVALUE: TdxDBTreeListColumn
        Caption = 'K'#7923' tr'#432#7899'c'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_PREVALUE'
        Caption_UTF7 = 'K+HvM tr+AbAe2w-c'
      end
      object dxDBTreeList1PARAM_VALUE: TdxDBTreeListMaskColumn
        Caption = 'K'#7923' n'#224'y'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_VALUE'
        Caption_UTF7 = 'K+HvM n+AOA-y'
      end
      object dxDBTreeList1PARAM_PROGRESS: TdxDBTreeListMaskColumn
        Caption = 'L'#361'y k'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_PROGRESS'
        Caption_UTF7 = 'L+AWk-y k+Hr8'
      end
    end
    object btnAddChild: TElPopupButton
      Left = 74
      Top = 474
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm &con'
      TabOrder = 8
      OnClick = btnAddChildClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object spnFromMonth: TdxSpinEdit
      Left = 49
      Top = 5
      Width = 40
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Alignment = taCenter
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnFromYear: TdxSpinEdit
      Left = 96
      Top = 5
      Width = 52
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      MaxValue = 2500.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object spnToMonth: TdxSpinEdit
      Left = 207
      Top = 5
      Width = 40
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Alignment = taCenter
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object spnToYear: TdxSpinEdit
      Left = 254
      Top = 5
      Width = 52
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Alignment = taCenter
      MaxValue = 2500.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object btnExecute: TElPopupButton
      Left = 307
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T'#237'nh gi'#225' tr'#7883
      TabOrder = 4
      OnClick = btnExecuteClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnReport: TElPopupButton
      Left = 388
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      IsSwitch = True
      UseXPThemes = True
      Caption = '&B'#225'o c'#225'o'
      TabOrder = 5
      OnClick = btnReportClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem10: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'T'#7915' th'#225'ng'
          Control = spnFromMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem12: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = '/'
          Control = spnFromYear
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = #272#7871'n th'#225'ng'
          Offsets.Left = 5
          Control = spnToMonth
          ControlOptions.ShowBorder = False
        end
        object locFormItem13: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = '/'
          Control = spnToYear
          ControlOptions.ShowBorder = False
        end
        object locFormItem14: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btnExecute
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem15: TdxLayoutItem
          Caption = 'ElPopupButton2'
          Offsets.Left = 5
          ShowCaption = False
          Control = btnReport
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem9: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = dxDBTreeList1
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          ShowCaption = False
          Control = btnAdd
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = btnAddChild
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnDefine
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object pnlPopup: TElPanel
    Left = 126
    Top = 108
    Width = 449
    Height = 281
    Align = alNone
    MouseCapture = False
    TabOrder = 1
    Visible = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object dxLayoutControl1: TdxLayoutControl
      Tag = -2
      Left = 1
      Top = 1
      Width = 447
      Height = 279
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dxLayoutStandardLookAndFeel1
      object grdPopup: TdxDBGrid
        Left = 5
        Top = 5
        Width = 250
        Height = 129
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'REPORT_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        BorderStyle = bsNone
        TabOrder = 0
        OnKeyDown = grdPopupKeyDown
        DataSource = dsAReports
        DefaultRowHeight = 19
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object grdPopupREPORT_ID: TdxDBGridColumn
          Caption = 'M'#227' s'#7889
          HeaderAlignment = taCenter
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REPORT_ID'
          Caption_UTF7 = 'M+AOM s+HtE'
        end
        object grdPopupREPORT_NAME: TdxDBGridMaskColumn
          Caption = 'T'#234'n b'#225'o c'#225'o'
          HeaderAlignment = taCenter
          Width = 269
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REPORT_NAME'
          Caption_UTF7 = 'T+AOo-n b+AOE-o c+AOE-o'
        end
        object grdPopupREPORT_TEMPLATE: TdxDBGridMaskColumn
          Caption = 'T'#234'n t'#7853'p tin m'#7851'u'
          HeaderAlignment = taCenter
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REPORT_TEMPLATE'
          Caption_UTF7 = 'T+AOo-n t+Hq0-p tin m+Hqs-u'
        end
      end
      object btnAddReport: TElPopupButton
        Left = 3
        Top = 251
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&Th'#234'm'
        TabOrder = 1
        OnClick = btnAddReportClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnPrint: TElPopupButton
        Left = 217
        Top = 251
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&In'
        TabOrder = 2
        OnClick = btnPrintClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object btnDesign: TElPopupButton
        Left = 293
        Top = 251
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = '&M'#7851'u'
        TabOrder = 3
        OnClick = btnDesignClick
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object ElPopupButton7: TElPopupButton
        Left = 369
        Top = 251
        Width = 75
        Height = 25
        Cursor = crDefault
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        Caption = #272#243'&ng'
        TabOrder = 4
        OnClick = ElPopupButton7Click
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object dxCalcEdit1: TdxCalcEdit
        Left = 109
        Top = 253
        Width = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = xbs3D
        Style.ButtonStyle = bts3D
        TabOrder = 8
        Alignment = taRightJustify
        Text = '1'
        PopupBorder = pbFrame3D
        StoredValues = 1
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = grdPopup
        end
        object dxLayoutGroup2: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'ElPopupButton4'
            ShowCaption = False
            Control = btnAddReport
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = 'T'#7927' l'#7879
            Offsets.Left = 5
            Control = dxCalcEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton5'
            ShowCaption = False
            Control = btnPrint
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton6'
            ShowCaption = False
            Control = btnDesign
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton7'
            ShowCaption = False
            Control = ElPopupButton7
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
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
        Caption = 'C'#225'c tham s'#7889' d'#7921'a tr'#234'n s'#7889' ph'#225't sinh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryParam: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM PARAM_ARSING'
      'WHERE'
      '   PARAM_ID = :OLD_PARAM_ID')
    EditSQL.Strings = (
      'UPDATE PARAM_ARSING SET'
      '   PARAM_ID = :PARAM_ID, /*PK*/'
      '   PARAM_NAME = :PARAM_NAME,'
      '   PPARAM_ID = :PPARAM_ID,'
      '   PARAM_VALUE = :PARAM_VALUE,'
      '   PARAM_PROGRESS = :PARAM_PROGRESS,'
      '   PARAM_PREVALUE = :PARAM_PREVALUE,'
      '   PARAM_COEFFICIENT = :PARAM_COEFFICIENT'
      'WHERE'
      '   PARAM_ID = :OLD_PARAM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO PARAM_ARSING('
      '   PARAM_ID, /*PK*/'
      '   PARAM_NAME,'
      '   PPARAM_ID,'
      '   PARAM_VALUE,'
      '   PARAM_PROGRESS,'
      '   PARAM_PREVALUE,'
      '   PARAM_COEFFICIENT)'
      'VALUES ('
      '   :PARAM_ID,'
      '   :PARAM_NAME,'
      '   :PPARAM_ID,'
      '   :PARAM_VALUE,'
      '   :PARAM_PROGRESS,'
      '   :PARAM_PREVALUE,'
      '   :PARAM_COEFFICIENT)')
    KeyLinks.Strings = (
      'PARAM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeCancel = qryParamBeforeCancel
    BeforeEdit = qryParamBeforeEdit
    BeforeDelete = qryParamBeforeDelete
    BeforeInsert = qryParamBeforeInsert
    AfterInsert = qryParamAfterInsert
    BeforePost = qryParamBeforePost
    OnNewRecord = qryParamNewRecord
    OnPostError = qryParamPostError
    OnDeleteError = qryParamDeleteError
    SQL.Strings = (
      'SELECT PARAM_ID'
      '     , PARAM_NAME'
      '     , PPARAM_ID'
      '     , PARAM_VALUE'
      '     , PARAM_PROGRESS'
      '     , PARAM_PREVALUE'
      '     , PARAM_COEFFICIENT'
      'FROM PARAM_ARSING'
      'order by PARAM_ID')
    FieldOptions = []
    Left = 163
    Top = 52
    object qryParamPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
      Required = True
    end
    object qryParamPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 126
    end
    object qryParamPPARAM_ID: TIntegerField
      FieldName = 'PPARAM_ID'
    end
    object qryParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
    object qryParamPARAM_PROGRESS: TIBOFloatField
      FieldName = 'PARAM_PROGRESS'
    end
    object qryParamPARAM_PREVALUE: TIBOFloatField
      FieldName = 'PARAM_PREVALUE'
    end
    object qryParamPARAM_COEFFICIENT: TIBOFloatField
      FieldName = 'PARAM_COEFFICIENT'
    end
  end
  object dsParam: TDataSource
    DataSet = qryParam
    Left = 163
    Top = 99
  end
  object ActionList1: TActionList
    Left = 384
    Top = 112
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsParam
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsParam
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsParam
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsParam
    end
  end
  object rptPrm: TppReport
    AutoStop = False
    DataPipeline = FinStardardFrm.pplFinStandard
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Ch?ng t? k? to'#225'n'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    Left = 264
    Top = 208
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'pplFinStandard'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object dsnRptPrm: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptPrm
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 296
    Top = 208
  end
  object qryAReports: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM PRMARSING_REPORTS'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE PRMARSING_REPORTS SET'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_NAME = :REPORT_NAME,'
      '   REPORT_TEMPLATE = :REPORT_TEMPLATE'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO PRMARSING_REPORTS('
      '   REPORT_ID, /*PK*/'
      '   REPORT_NAME,'
      '   REPORT_TEMPLATE)'
      'VALUES ('
      '   :REPORT_ID,'
      '   :REPORT_NAME,'
      '   :REPORT_TEMPLATE)')
    KeyLinks.Strings = (
      'REPORT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeCancel = qryAReportsBeforeCancel
    BeforeEdit = qryAReportsBeforeEdit
    BeforeDelete = qryAReportsBeforeDelete
    BeforeInsert = qryAReportsBeforeInsert
    AfterInsert = qryAReportsAfterInsert
    OnNewRecord = qryAReportsNewRecord
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_NAME'
      '     , REPORT_TEMPLATE'
      'FROM PRMARSING_REPORTS'
      'order by REPORT_ID')
    FieldOptions = []
    Left = 329
    Top = 193
    object qryAReportsREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object qryAReportsREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 126
    end
    object qryAReportsREPORT_TEMPLATE: TWideStringField
      FieldName = 'REPORT_TEMPLATE'
      Size = 30
    end
  end
  object dsAReports: TDataSource
    DataSet = qryAReports
    Left = 331
    Top = 227
  end
end
