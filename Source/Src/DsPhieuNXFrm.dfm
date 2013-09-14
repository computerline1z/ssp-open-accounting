object FrmDsPhieuNX: TFrmDsPhieuNX
  Left = 134
  Top = 117
  Width = 780
  Height = 551
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
    Left = 214
    Top = 32
    Height = 485
  end
  object Panel1: TPanel
    Left = 217
    Top = 32
    Width = 555
    Height = 485
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 0
      Top = 268
      Width = 555
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object dbgPhieuBH: TdxDBGrid
      Left = 0
      Top = 0
      Width = 555
      Height = 268
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
      DataSource = dsDsPhieuNX
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      object dbgPhieuBHColumn1: TdxDBGridColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHIEU'
        SummaryFooterType = cstCount
        SummaryFooterField = 'SOPHIEU'
        SummaryType = cstCount
        SummaryField = 'SOPHIEU'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object dbgPhieuBHColumn2: TdxDBGridDateColumn
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYLAP'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object dbgPhieuBHColumn8: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object dbgPhieuBHColumn3: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i giao d'#7883'ch'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGUOIGIAODICH'
        Caption_UTF7 = 'Ng+AbAe3Q-i giao d+Hss-ch'
      end
      object dbgPhieuBHColumn5: TdxDBGridColumn
        Caption = 'Kho'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KHO'
      end
      object dbgPhieuBHColumn7: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dbgCTPhieuBH: TdxDBGrid
      Left = 0
      Top = 271
      Width = 555
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
        Width = 96
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
        Caption = 'T'#234'n h'#224'ng h'#243'a'
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-ng h+APM-a'
      end
      object dbgCTPhieuBHColumn2: TdxDBGridColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOLUONG'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object dbgCTPhieuBHColumn3: TdxDBGridColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DONGIA'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object dbgCTPhieuBHColumn4: TdxDBGridColumn
        Caption = 'T'#7881' gi'#225
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIGIA'
        Caption_UTF7 = 'T+Hsk gi+AOE'
      end
      object dbgCTPhieuBHColumn5: TdxDBGridColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIENTE'
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object dbgCTPhieuBHColumn6: TdxDBGridColumn
        Caption = 'Th'#224'nh ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 91
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
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT'
      end
      object dbgCTPhieuBHColumn9: TdxDBGridColumn
        Caption = 'Ti'#7873'n VAT'
        HeaderAlignment = taCenter
        Width = 90
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
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHICHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
  end
  object dbgDmLoaiNX: TdxDBGrid
    Left = 0
    Top = 32
    Width = 214
    Height = 485
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ID_INO'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alLeft
    TabOrder = 1
    OnMouseUp = dbgDmLoaiNXMouseUp
    DataSource = dsDmLoaiNX
    DefaultRowHeight = 21
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dbgDmLoaiNXColumn1: TdxDBGridColumn
      Caption = 'Lo'#7841'i nh'#7853'p xu'#7845't'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NAME_INO'
      Caption_UTF7 = 'Lo+HqE-i nh+Hq0-p xu+HqU-t'
    end
  end
  object ElPanel1: TElPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    MouseCapture = False
    TabOrder = 6
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object ElPanel2: TElPanel
      Left = 0
      Top = 0
      Width = 396
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      MouseCapture = False
      TabOrder = 0
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
        Top = 6
        Width = 52
        Height = 20
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
        Left = 55
        Top = 4
        Width = 106
        Style.BorderStyle = xbsFlat
        TabOrder = 1
        Alignment = taCenter
        ReadOnly = False
        Date = -700000.000000000000000000
        StoredValues = 65
      end
      object dxDateEdit2: TdxDateEdit
        Left = 221
        Top = 4
        Width = 106
        Style.BorderStyle = xbsFlat
        TabOrder = 2
        Alignment = taCenter
        ReadOnly = False
        Date = -700000.000000000000000000
        StoredValues = 65
      end
    end
  end
  object qrDsPhieuNX: TIBOQuery
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
        Name = 'ID_INO'
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
    DataSource = dsDmLoaiNX
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
      'and loaiphieu = 2 /* phieu xuat kho*/'
      'and LOAINHAPXUAT=:ID_INO')
    FieldOptions = []
    Left = 232
    Top = 88
  end
  object dsDsPhieuNX: TDataSource
    DataSet = qrDsPhieuNX
    Left = 232
    Top = 120
  end
  object qrCTPhieuNX: TIBOQuery
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
    DataSource = dsDsPhieuNX
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
      'where inter_detail.sophieu = :sophieu'
      '')
    FieldOptions = []
    Left = 232
    Top = 352
  end
  object dsCTPhieuBH: TDataSource
    DataSet = qrCTPhieuNX
    Left = 232
    Top = 384
  end
  object ActionList1: TActionList
    Left = 404
    Top = 246
    object acChangeDate: TAction
      Caption = 'acChangeDate'
      OnExecute = acChangeDateExecute
    end
    object acKeToan: TAction
      Caption = 'acKeToan'
    end
    object acCT: TAction
      Caption = 'acCT'
      OnExecute = acCTExecute
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
        Caption = 'Danh s'#225'ch phi'#7871'u nh'#7853'p xu'#7845't kho'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 248
  end
  object qrDmLoaiNX: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'ID_INO')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ID_INO'
      '     , NAME_INO'
      '     , DIRECTION_INO'
      '     , ISSYSTEM_INO'
      '     , TKNO'
      '     , TKCO'
      '     , TKVAT'
      'FROM INOUT_FROM')
    FieldOptions = []
    Left = 40
    Top = 128
  end
  object dsDmLoaiNX: TDataSource
    DataSet = qrDmLoaiNX
    Left = 40
    Top = 160
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
