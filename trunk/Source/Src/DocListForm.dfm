object DocListFrm: TDocListFrm
  Left = 325
  Top = 147
  Width = 733
  Height = 513
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
    Width = 725
    Height = 479
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnIns: TElPopupButton
      Left = 1
      Top = 453
      Width = 88
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem chi ti'#7871't'
      TabOrder = 1
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHelp: TElPopupButton
      Left = 573
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
      TabOrder = 6
      OnClick = btnHelpClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 649
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 7
      OnClick = btnCloseClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOC_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = MainDM.dsDocListAnyWhere
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object dxDBGrid1DOC_ID: TdxDBGridMaskColumn
        Caption = 'S'#7889' phi'#7871'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 Phi'#7871'u'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
        SummaryFooterFormat_UTF7 = '#,0 Phi+Hr8-u'
      end
      object dxDBGrid1DOC_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y l'#7853'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_DATE'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid1_KH: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object dxDBGrid1DOC_TOTAL: TdxDBGridCalcColumn
        Caption = 'T'#7893'ng ti'#7873'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'T+HtU-ng ti+HsE-n'
      end
      object dxDBGrid1DOC_PERSON: TdxDBGridMaskColumn
        Caption = 'H'#7885' t'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_PERSON'
        Caption_UTF7 = 'H+Hs0 t+AOo-n'
      end
      object colLoaiKhonghople: TdxDBGridColumn
        Caption = 'Lo'#7841'i kh'#244'ng h'#7907'p l'#7879
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_VOUCHER'
        Caption_UTF7 = 'Lo+HqE-i kh+APQ-ng h+HuM-p l+Hsc'
      end
      object dxDBGrid1DOC_NOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dxDBGrid1BRANCH_ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = #272#417'n v'#7883
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
        GroupIndex = 0
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
    end
    object BitBtn1: TElPopupButton
      Left = 110
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &Excel'
      TabOrder = 2
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 186
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &HTML'
      TabOrder = 3
      OnClick = BitBtn2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 262
      Top = 453
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xu'#7845't &XML'
      TabOrder = 4
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkAutoHeight: TdxCheckEdit
      Left = 338
      Top = 457
      Width = 233
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Caption = '&Chi'#7873'u cao t'#7921' '#273#7897'ng'
      OnChange = chkAutoHeightChange
      State = cbsChecked
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object lciIns: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'BitBtn1'
          Offsets.Left = 20
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avBottom
          Caption = 'dxCheckEdit1'
          ShowCaption = False
          Control = chkAutoHeight
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn7'
          ShowCaption = False
          Control = btnHelp
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
    Left = 340
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 312
    Top = 68
    object acExcel: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra Excel'
      OnExecute = acExcelExecute
    end
    object acHTML: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra trang web'
      OnExecute = acHTMLExecute
    end
    object acXML: TAction
      Category = 'Export'
      Caption = 'Xu'#202't ra file XML'
      OnExecute = acXMLExecute
    end
  end
  object DlgSave: TSaveDialog
    Filter = 
      'Excel Files (*.xls)|*.xls|HTML Files (*.htm, *.html)|*.html; *.h' +
      'tm |XML Files (*.xml)|*.xml'
    Left = 356
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
        Caption = 'Danh s'#225'ch ch'#7913'ng t'#7915
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
end
