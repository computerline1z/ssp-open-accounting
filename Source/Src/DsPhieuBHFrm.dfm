object FrmDsPhieuBH: TFrmDsPhieuBH
  Left = 176
  Top = 56
  Width = 799
  Height = 557
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 29
    Width = 4
    Height = 494
  end
  object Panel1: TPanel
    Left = 189
    Top = 29
    Width = 602
    Height = 494
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 0
      Top = 276
      Width = 602
      Height = 4
      Cursor = crVSplit
      Align = alBottom
    end
    object dbgPhieuBH: TdxDBGrid
      Left = 0
      Top = 0
      Width = 602
      Height = 276
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SOPHIEU'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnDblClick = dbgPhieuBHDblClick
      OnKeyDown = dbgPhieuBHKeyDown
      OnMouseUp = dbgPhieuBHMouseUp
      DataSource = dsDsPhieuBH
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      object dbgPhieuBHColumn1: TdxDBGridColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHIEU'
        SummaryFooterType = cstCount
        SummaryFooterField = 'SOPHIEU'
        SummaryType = cstCount
        SummaryField = 'SOPHIEU'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object dbgPhieuBHColumn2: TdxDBGridColumn
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYLAP'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object dbgPhieuBHColumn8: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object dbgPhieuBHColumn3: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i giao d'#7883'ch'
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGUOIGIAODICH'
        Caption_UTF7 = 'Ng+AbAe3Q-i giao d+Hss-ch'
      end
      object dbgPhieuBHColumn5: TdxDBGridColumn
        Caption = 'Kho'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KHO'
      end
      object dbgPhieuBHColumn7: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dbgCTPhieuBH: TdxDBGrid
      Left = 0
      Top = 280
      Width = 602
      Height = 214
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KEYFIELD'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 1
      OnMouseUp = dbgCTPhieuBHMouseUp
      DataSource = dsCTPhieuBH
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      object dbgCTPhieuBHColumn1: TdxDBGridColumn
        Caption = 'M'#227' h'#224'ng h'#243'a'
        HeaderAlignment = taCenter
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_HANGHOA'
        SummaryFooterType = cstCount
        SummaryFooterField = 'MA_HANGHOA'
        SummaryType = cstCount
        SummaryField = 'MA_HANGHOA'
        Caption_UTF7 = 'M+AOM h+AOA-ng h+APM-a'
      end
      object dbgCTPhieuBHColumn10: TdxDBGridColumn
        Caption = 'T'#234'n h'#224'ng ho'#225
        HeaderAlignment = taCenter
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng ho+AOE'
      end
      object dbgCTPhieuBHColumn2: TdxDBGridColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOLUONG'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object dbgCTPhieuBHColumn3: TdxDBGridColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DONGIA'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object dbgCTPhieuBHColumn4: TdxDBGridColumn
        Caption = 'T'#7881' gi'#225
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIGIA'
        Caption_UTF7 = 'T+Hsk gi+AOE'
      end
      object dbgCTPhieuBHColumn5: TdxDBGridColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIENTE'
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object dbgCTPhieuBHColumn6: TdxDBGridColumn
        Caption = 'Th'#224'nh ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THANHTIEN'
        SummaryFooterType = cstSum
        SummaryFooterField = 'THANHTIEN'
        SummaryType = cstSum
        SummaryField = 'THANHTIEN'
        Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
      end
      object dbgCTPhieuBHColumn8: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT'
      end
      object dbgCTPhieuBHColumn9: TdxDBGridColumn
        Caption = 'Ti'#7873'n VAT'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEN_VAT'
        SummaryFooterType = cstSum
        SummaryFooterField = 'TIEN_VAT'
        SummaryType = cstSum
        SummaryField = 'TIEN_VAT'
        Caption_UTF7 = 'Ti+HsE-n VAT'
      end
      object dbgCTPhieuBHColumn7: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
  end
  object dbgLoaiBH: TdxDBTreeList
    Left = 0
    Top = 29
    Width = 185
    Height = 494
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'DOCTYPE_ID'
    ParentField = 'P_DOCTYPE_ID'
    Align = alLeft
    TabOrder = 1
    OnKeyDown = dbgLoaiBHKeyDown
    DataSource = dsDmLoaiBH
    DefaultRowHeight = 21
    LookAndFeel = lfFlat
    OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
    OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
    TreeLineColor = clGrayText
    object dxDBTreeList1Column1: TdxDBTreeListColumn
      Caption = 'Lo'#7841'i b'#225'n h'#224'ng'
      HeaderAlignment = taCenter
      Width = 231
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DOCTYPE_NAME'
      Caption_UTF7 = 'Lo+HqE-i b+AOE-n h+AOA-ng'
    end
  end
  object ElPanel2: TElPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    MouseCapture = False
    TabOrder = 6
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object ElLabel2: TElLabel
      Left = 169
      Top = 9
      Width = 47
      Height = 13
      Caption = #272#7871'n ng'#224'y'
    end
    object ElLabel1: TElLabel
      Left = 10
      Top = 9
      Width = 40
      Height = 13
      Caption = 'T'#7915' ng'#224'y'
    end
    object ElPopupButton1: TElPopupButton
      Left = 338
      Top = 1
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 0
      Color = clBtnFace
      ParentColor = False
      Action = acChangeDate
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDateEdit1: TdxDateEdit
      Left = 56
      Top = 5
      Width = 106
      Style.BorderStyle = xbsFlat
      TabOrder = 1
      Alignment = taCenter
      ReadOnly = False
      Date = -700000.000000000000000000
      StoredValues = 65
    end
    object dxDateEdit2: TdxDateEdit
      Left = 220
      Top = 5
      Width = 106
      Style.BorderStyle = xbsFlat
      TabOrder = 2
      Alignment = taCenter
      ReadOnly = False
      Date = -700000.000000000000000000
      StoredValues = 65
    end
  end
  object qrDsPhieuBH: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ngay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tungay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denngay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCTYPE_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'sophieu')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDmLoaiBH
    SQL.Strings = (
      'SELECT A.sophieu'
      '     , A.NGAYLAP'
      '     , A.NGUOIGIAODICH'
      '     , A.DIACHI'
      '     , A.LOAINHAPXUAT'
      '     , A.STATUS_FLAG'
      '     , A.VAT'
      '     , A.KHO'
      '     , A.DIRECTION'
      '     , A.NV'
      '     , A.PB'
      '     , A.TO_WAR'
      '     , A.KH'
      '     , A.LOAIPHIEU'
      '     , A.GHICHU'
      '     , A.madoituong'
      '     , A.loaidoituong'
      '     , object_list.object_name'
      'FROM INTER_MASTER A'
      
        'left join object_list on (A.madoituong = object_list.object_id) ' +
        'and (A.loaidoituong = object_list.otype_id)'
      
        'where ((:ngay = 0) or ((:ngay = 1) and (cast(A.ngaylap as Date) ' +
        'between :tungay and :denngay))'
      
        '                  or ((:ngay = 2) and (cast(A.ngaylap as Date) >' +
        '= :tungay))'
      
        '                  or ((:ngay = 3) and (cast(A.ngaylap as date) <' +
        '= :denngay)))'
      'and loaiphieu = 1 /* 1= phieu ban hang  */'
      'and LOAIBANHANG=:DOCTYPE_ID')
    FieldOptions = []
    Left = 232
    Top = 88
  end
  object dsDsPhieuBH: TDataSource
    DataSet = qrDsPhieuBH
    Left = 232
    Top = 120
  end
  object qrDmLoaiBH: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'DOCTYPE_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT A.DOCTYPE_ID'
      '     , A.DOCTYPE_NAME     '
      '     , A.P_DOCTYPE_ID'
      '     , A.DOCGROUP'
      '     , TKCO'
      '     , TKNO'
      '     , TKVAT'
      'FROM DOCTYPE A')
    FieldOptions = []
    Left = 120
    Top = 88
  end
  object dsDmLoaiBH: TDataSource
    DataSet = qrDmLoaiBH
    Left = 120
    Top = 120
  end
  object qrCTPhieuBH: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'sophieu'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'inter_detail.SOPHIEU'
      'inter_detail.ID_DETAIL')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDsPhieuBH
    SQL.Strings = (
      'select'
      '      inter_detail.SOPHIEU,'
      '      inter_detail.ID_DETAIL,'
      '      inter_detail.MA_HANGHOA,'
      '      inter_detail.SOLUONG,'
      '      inter_detail.DONGIA,'
      '      inter_detail.TIENTE,'
      '      inter_detail.TIGIA,'
      '      inter_detail.THANHTIEN,'
      '      inter_detail.GHICHU,'
      '      inter_detail.VAT,'
      '      inter_detail.TIEN_VAT,'
      '      inter_detail.SOPHIEU||inter_detail.ID_DETAIL as KEYFIELD,'
      '      inter_detail.OTYPE_ID,'
      '      object_list.object_name'
      'from inter_detail'
      
        'left join object_list on (inter_detail.ma_hanghoa =  object_list' +
        '.object_id) and (inter_detail.otype_id = object_list.otype_id)'
      'where inter_detail.sophieu = :sophieu')
    FieldOptions = []
    Left = 208
    Top = 344
  end
  object dsCTPhieuBH: TDataSource
    DataSet = qrCTPhieuBH
    Left = 208
    Top = 376
  end
  object ActionList1: TActionList
    Left = 548
    Top = 166
    object acChangeDate: TAction
      Caption = 'acChangeDate'
      OnExecute = acChangeDateExecute
    end
    object acKeToan: TAction
      Caption = 'acKeToan'
    end
    object acCTPhieu: TAction
      Caption = 'acCTPhieu'
      OnExecute = acCTPhieuExecute
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
        Caption = 'Danh s'#225'ch phi'#7871'u b'#225'n h'#224'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 292
    Top = 246
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acKeToan
      Caption = #272#432'a v'#224'o k'#7871' to'#225'n'
      Category = 0
      Hint = #272#432'a v'#224'o k'#7871' to'#225'n'
      Visible = ivAlways
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
    Left = 332
    Top = 246
  end
end
