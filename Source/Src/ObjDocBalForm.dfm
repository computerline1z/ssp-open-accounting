object ObjDocBalFrm: TObjDocBalFrm
  Left = 128
  Top = 88
  Width = 800
  Height = 600
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
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 792
    Height = 566
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnHelp: TElPopupButton
      Left = 1
      Top = 540
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 7
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 716
      Top = 540
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 10
      OnClick = btnCloseClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 47
      Width = 250
      Height = 130
      Bands = <
        item
          Caption = 'Th'#244'ng tin phi'#7871'u'
          Width = 389
        end
        item
          Caption = 'Th'#244'ng tin h'#243'a '#273#417'n'
          Width = 202
        end
        item
          Caption = 'Gi'#225' tr'#7883
          Visible = False
          Width = 30
        end
        item
          Caption = 'S'#7889' d'#432' '
          Width = 167
        end
        item
          Width = 30
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SOPHIEU'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsPDocBal
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      ShowBands = True
      object dxDBGrid1SOPHIEU: TdxDBGridColumn
        Caption = 'S'#7889' phi'#7871'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHIEU'
        SummaryFooterType = cstCount
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object dxDBGrid1NGAYLAP: TdxDBGridColumn
        Caption = 'Ng'#224'y l'#7853'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYLAP'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object dxDBGrid1NOIDUNG: TdxDBGridColumn
        Caption = 'N'#7897'i dung'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 260
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOIDUNG'
        Caption_UTF7 = 'N+Htk-i dung'
      end
      object dxDBGrid1SOSERI: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'S'#7889' s'#234'ri'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SOSERI'
        Caption_UTF7 = 'S+HtE s+AOo-ri'
      end
      object dxDBGrid1SOHD: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'S'#7889' H'#272
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SOHD'
        Caption_UTF7 = 'S+HtE H+ARA'
      end
      object dxDBGrid1SODUNO: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'S'#7889' d'#432' n'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SODUNO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ###'
        Caption_UTF7 = 'S+HtE d+AbA n+HuM'
      end
      object dxDBGrid1NOCK: TdxDBGridColumn
        Caption = 'S'#7889' d'#432' n'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 3
        RowIndex = 0
        FieldName = 'NOCK'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE d+AbA n+HuM'
      end
      object dxDBGrid1TENHANG: TdxDBGridColumn
        Caption = 'T'#234'n m'#7863't h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 121
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TENHANG'
        Caption_UTF7 = 'T+AOo-n m+Hrc-t h+AOA-ng'
      end
      object dxDBGrid1COCK: TdxDBGridColumn
        Caption = 'S'#7889' d'#432' c'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 3
        RowIndex = 0
        FieldName = 'COCK'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE d+AbA c+APM'
      end
      object dxDBGrid1TIENHANG: TdxDBGridCalcColumn
        Caption = 'Ti'#7873'n h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 78
        BandIndex = 2
        RowIndex = 0
        FieldName = 'TIENHANG'
        Caption_UTF7 = 'Ti+HsE-n h+AOA-ng'
      end
      object dxDBGrid1NGAYHD: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 33
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NGAYHD'
        Caption_UTF7 = 'Ng+AOA-y'
      end
      object dxDBGrid1TIENTHUE: TdxDBGridCalcColumn
        Caption = 'Ti'#7873'n thu'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TIENTHUE'
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8'
      end
      object dxDBGrid1SODUCO: TdxDBGridMaskColumn
        Caption = 'S'#7889' d'#432' c'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 74
        BandIndex = 3
        RowIndex = 0
        FieldName = 'SODUCO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ###'
        Caption_UTF7 = 'S+HtE d+AbA c+APM'
      end
      object dxDBGrid1CHECK_FIELD: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'X'
        HeaderAlignment = taCenter
        Width = 23
        BandIndex = 4
        RowIndex = 0
        OnChange = dxDBGrid1CHECK_FIELDChange
        FieldName = 'CHECK_FIELD'
        ShowNullFieldStyle = nsGrayedChecked
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object btnSelect: TElPopupButton
      Left = 640
      Top = 540
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 9
      OnClick = btnSelectClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 77
      Top = 540
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem phi'#7871'u'
      TabOrder = 8
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxCalcEdit1: TdxCalcEdit
      Left = 82
      Top = 1
      Width = 111
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = dxCalcEdit1Enter
      OnExit = dxCalcEdit1Exit
      Alignment = taRightJustify
      Text = '0'
      PopupBorder = pbFrame3D
      StoredValues = 1
    end
    object ElPopupButton2: TElPopupButton
      Left = 194
      Top = 1
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#7921'c hi'#7879'n'
      TabOrder = 2
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbFIFO: TElRadioButton
      Left = 270
      Top = 1
      Width = 179
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = '&FIFO: Ph'#225't sinh tr'#432#7899'c tr'#7843' tr'#432#7899'c'
      TabOrder = 3
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbLIFO: TElRadioButton
      Left = 450
      Top = 1
      Width = 162
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = '&LIFO: Ph'#225't sinh sau tr'#7843' tr'#432#7899'c'
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object txtTongtien: TdxMaskEdit
      Left = 82
      Top = 23
      Width = 111
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taRightJustify
      IgnoreMaskBlank = False
      StoredValues = 1
    end
    object ElCheckBox1: TElCheckBox
      Left = 270
      Top = 27
      Width = 130
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Chi ti'#7871't t'#7915'ng m'#7863't h'#224'ng'
      TabOrder = 4
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = []
            Caption = 'Tr'#7843' theo s'#7889' ti'#7873'n '
            Control = dxCalcEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#7893'ng ti'#7873'n TT'
            Control = txtTongtien
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            Caption = 'ElRadioButton1'
            ShowCaption = False
            Control = rbFIFO
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Caption = 'ElCheckBox1'
            ShowCaption = False
            Visible = False
            Control = ElCheckBox1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          Caption = 'ElRadioButton2'
          ShowCaption = False
          Control = rbLIFO
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn7'
          ShowCaption = False
          Control = btnHelp
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnSelect
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn8'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 236
    Top = 164
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
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
        Caption = 'Chi ti'#7871't s'#7889' d'#432' c'#7911'a m'#7897't '#273#7889'i t'#432#7907'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 320
    Top = 232
  end
  object dsPDocBal: TDataSource
    DataSet = dxMemData1
    Left = 361
    Top = 167
  end
end
