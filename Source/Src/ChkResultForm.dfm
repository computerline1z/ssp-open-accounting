object ChkResultFrm: TChkResultFrm
  Left = 75
  Top = 74
  Width = 831
  Height = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdChkResult: TdxDBGrid
    Left = 0
    Top = 0
    Width = 823
    Height = 505
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'REPORT_ID'
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryType = cstCount
          end>
        Name = 'grdReportSummaryGroup2'
      end>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnDblClick = grdChkResultDblClick
    DataSource = dsChkReport
    DefaultRowHeight = 20
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoRowAutoHeight, edgoUseBitmap]
    ShowRowFooter = True
    object grdChkResultRecId: TdxDBGridColumn
      Visible = False
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RecId'
    end
    object grdChkResultOrderF: TdxDBGridColumn
      Caption = 'STT'
      HeaderAlignment = taCenter
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ORDER_FIELD'
    end
    object grdChkResultReportName: TdxDBGridMaskColumn
      Caption = 'T'#234'n b'#225'o c'#225'o'
      HeaderAlignment = taCenter
      Width = 170
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REPORT_NAME'
      Caption_UTF7 = 'T+AOo-n b+AOE-o c+AOE-o'
    end
    object grdChkResultSQLSelect: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'C'#226'u ch'#237'nh'
      HeaderAlignment = taCenter
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SQLSELECT'
      Caption_UTF7 = 'C+AOI-u ch+AO0-nh'
    end
    object grdChkResultSQLSub1: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'C'#226'u ph'#7909' 1'
      HeaderAlignment = taCenter
      Width = 83
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SQLSUB_1'
      Caption_UTF7 = 'C+AOI-u ph+HuU 1'
    end
    object grdChkResultSQLSub2: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'C'#226'u ph'#7909' 2'
      HeaderAlignment = taCenter
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SQLSUB_2'
      Caption_UTF7 = 'C+AOI-u ph+HuU 2'
    end
    object grdChkResultSQLSub3: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'C'#226'u ph'#7909' 3'
      HeaderAlignment = taCenter
      Width = 83
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SQLSUB_3'
      Caption_UTF7 = 'C+AOI-u ph+HuU 3'
    end
    object grdChkResultTemplatePath: TdxDBGridMaskColumn
      Caption = 'M'#7851'u Vi'#7879't'
      HeaderAlignment = taCenter
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FILETEMPLATE'
      Caption_UTF7 = 'M+Hqs-u Vi+Hsc-t'
    end
    object grdChkResultTemplateEng: TdxDBGridColumn
      Caption = 'M'#7851'u kh'#225'c'
      HeaderAlignment = taCenter
      Width = 56
      BandIndex = 0
      RowIndex = 0
      Caption_UTF7 = 'M+Hqs-u kh+AOE-c'
    end
    object grdChkResultNhom: TdxDBGridColumn
      Caption = 'T'#234'n nh'#243'm'
      HeaderAlignment = taCenter
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TENNHOM'
      Caption_UTF7 = 'T+AOo-n nh+APM-m'
    end
    object grdChkResultReportID: TdxDBGridMaskColumn
      Caption = 'REPORT_ID'
      HeaderAlignment = taCenter
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Report_ID'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 505
    Width = 823
    Height = 29
    Align = alBottom
    TabOrder = 5
    object ElPopupButton3: TElPopupButton
      Left = 727
      Top = 1
      Width = 95
      Height = 27
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh n'#224'y l'#7841'i'
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 1
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB
        6868693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC7
        6A6D693334FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
        5BF9C5C69A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D0
        727569333442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
        5EF9C5C69A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8
        888A693334B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
        D4F9C5C69A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC
        7F80693334FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E3
        8889693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF
        9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB
        8F90693334FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FF
        FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
        6666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 0
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object bmReport: TdxBarManager
    AutoDockColor = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default'
      'Control')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockColor = clBtnFace
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = False
    Left = 352
    Top = 56
    DockControlHeights = (
      0
      0
      0
      0)
    object bbtnPreview: TdxBarButton
      Tag = 126
      Caption = 'Xem tr'#432#7899'c khi in'
      Category = 0
      Hint = 'Xem tr'#432#7899'c khi in'
      Visible = ivAlways
      ImageIndex = 16
      ShortCut = 16472
    end
    object dxBarButton4: TdxBarButton
      Tag = 129
      Caption = 'Xu'#7845't ra Excel'
      Category = 0
      Hint = 'Xu'#7845't ra Excel'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 16453
    end
    object bbtnDesign: TdxBarButton
      Tag = 130
      Caption = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      Category = 0
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 115
    end
    object bbtnSeeDetail: TdxBarButton
      Caption = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      Category = 0
      Hint = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      Visible = ivAlways
    end
    object bbtnDirectPrint: TdxBarButton
      Caption = 'Xu'#7845't ra m'#225'y in'
      Category = 0
      Hint = 'Xu'#7845't ra m'#225'y in'
      Visible = ivAlways
      ShortCut = 16464
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Bung ra h'#7871't (xem h'#7871't)'
      Category = 1
      Hint = 'Bung ra h'#7871't (xem h'#7871't)'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Thu g'#7885'n l'#7841'i h'#7871't '
      Category = 1
      Hint = 'Thu g'#7885'n l'#7841'i h'#7871't '
      Visible = ivAlways
    end
    object bbtnCompare1: TdxBarButton
      Caption = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 1'
      Category = 0
      Hint = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 1'
      Visible = ivAlways
    end
    object bbtnCompare2: TdxBarButton
      Caption = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 2'
      Category = 0
      Hint = 'So s'#225'nh s'#7889' li'#7879'u d'#7841'ng 2'
      Visible = ivAlways
    end
  end
  object pmExport: TdxBarPopupMenu
    BarManager = bmReport
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = bbtnSeeDetail
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnPreview
        Visible = True
      end
      item
        Item = bbtnDirectPrint
        Visible = True
      end
      item
        Item = bbtnDesign
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnCompare1
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnCompare2
        Visible = True
      end>
    UseOwnFont = True
    Left = 384
    Top = 56
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
        Caption = 'K'#7871't qu'#7843' ki'#7875'm tra'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 456
    Top = 60
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 422
    Top = 58
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object qryChkreport: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 523
    Top = 57
  end
  object memChkReport: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'ReportID'
    Left = 494
    Top = 59
  end
  object dsChkReport: TDataSource
    DataSet = memChkReport
    Left = 494
    Top = 88
  end
end
