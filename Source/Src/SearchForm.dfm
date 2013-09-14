object SearchFrm: TSearchFrm
  Left = 244
  Top = 89
  Width = 697
  Height = 573
  HelpContext = 25
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
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 689
    Height = 539
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object BitBtn1: TElPopupButton
      Left = 537
      Top = 99
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#7921'c hi'#7879'n t'#236'm ki'#7871'm'
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&T'#236'm ki'#7871'm'
      TabOrder = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtTK: TdxEdit
      Left = 71
      Top = 5
      Width = 620
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      CharCase = ecUpperCase
    end
    object ppKH: TdxPopupEdit
      Left = 540
      Top = 29
      Width = 188
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      OnEnter = ppKHEnter
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = ppKHCloseUp
    end
    object edtKeyWord_2: TdxEdit
      Left = 327
      Top = 53
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
    end
    object edtKeyWord_1: TdxEdit
      Left = 71
      Top = 53
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
    end
    object grdResult: TdxDBGrid
      Left = 3
      Top = 127
      Width = 683
      Height = 373
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SOPHIEU'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 13
      OnDblClick = grdResultDblClick
      OnEnter = grdResultEnter
      OnExit = grdResultExit
      OnKeyDown = grdResultKeyDown
      OnMouseUp = grdResultMouseUp
      DataSource = dsSearchResult
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      object grdResultColumn1: TdxDBGridColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHIEU'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0 Phi'#7871'u'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
        SummaryFooterFormat_UTF7 = '#,0 Phi+Hr8-u'
      end
      object grdResultColumn2: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYLAP'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object grdResultColumn3: TdxDBGridCalcColumn
        Caption = 'S'#7889' ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TONGTIEN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '### ### ### ### ###'
        Caption_UTF7 = 'S+HtE ti+HsE-n'
      end
      object grdResultColumn4: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDT'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng'
      end
      object grdResultColumn5: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NDPHIEU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdResultBRANCH_ID: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = #272#417'n v'#7883
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object grdResultBRANCH_NAME: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'T'#234'n '#273#417'n v'#7883
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss'
      end
    end
    object edtTKNo: TdxEdit
      Left = 71
      Top = 29
      Width = 122
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
    end
    object edtTKCo: TdxEdit
      Left = 327
      Top = 29
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
    end
    object dedtTungay: TdxDateEdit
      Left = 71
      Top = 77
      Width = 123
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Alignment = taCenter
      PopupBorder = pbFrame3D
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dedtDenngay: TdxDateEdit
      Left = 327
      Top = 77
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Alignment = taCenter
      PopupBorder = pbFrame3D
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dxCalcEdit1: TdxCalcEdit
      Left = 540
      Top = 53
      Width = 130
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      OnEnter = dxCalcEdit1Enter
      OnExit = dxCalcEdit1Exit
      Alignment = taRightJustify
      Text = '0'
      PopupBorder = pbFrame3D
      StoredValues = 1
    end
    object dxCalcEdit2: TdxCalcEdit
      Left = 540
      Top = 77
      Width = 129
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      OnEnter = dxCalcEdit2Enter
      OnExit = dxCalcEdit2Exit
      Alignment = taRightJustify
      Text = '0'
      PopupBorder = pbFrame3D
      StoredValues = 1
    end
    object ElPopupButton1: TElPopupButton
      Left = 613
      Top = 99
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Xem chi ti'#7871't tr'#234'n phi'#7871'u'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem chi ti'#7871't'
      TabOrder = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtdocid: TdxEdit
      Left = 109
      Top = 99
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object lcgSearchNormal: TdxLayoutGroup
        Offsets.Top = 2
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object lcgSearchSQL: TdxLayoutItem
          Caption = #272'i'#7873'u ki'#7879'n SQL'
          Offsets.Top = 2
          Control = edtTK
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group8: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group7: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item12: TdxLayoutItem
              Caption = 'T'#224'i kho'#7843'n N'#7907
              Offsets.Top = 2
              Control = edtTKNo
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item20: TdxLayoutItem
              Caption = 'C'#243' t'#7915' kh'#243'a '
              Offsets.Top = 2
              Control = edtKeyWord_1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item13: TdxLayoutItem
              Caption = 'T'#236'm t'#7915' ng'#224'y'
              Offsets.Top = 2
              Control = dedtTungay
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'S'#7889' phi'#7871'u c'#243' m'#7863't chu'#7895'i'
              Control = edtdocid
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Group12: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = ' V'#224' T'#224'i kho'#7843'n C'#243' '
                Offsets.Top = 2
                Control = edtTKCo
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item19: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'V'#192
                CaptionOptions.AlignHorz = taCenter
                LookAndFeel = dxLayoutStandardLookAndFeel2
                Offsets.Top = 2
                OnCaptionClick = dxLayoutControl1Item19CaptionClick
                Control = edtKeyWord_2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item27: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = ' '#273#7871'n ng'#224'y'
                CaptionOptions.AlignHorz = taCenter
                Offsets.Top = 2
                Control = dedtDenngay
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group9: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item18: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = ' M'#227' kh'#225'ch h'#224'ng '
                Offsets.Top = 2
                Control = ppKH
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item10: TdxLayoutItem
                Caption = ' S'#7889' ti'#7873'n l'#7899'n h'#417'n'
                Offsets.Top = 2
                Control = dxCalcEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item17: TdxLayoutItem
                Caption = ' S'#7889' ti'#7873'n nh'#7887' h'#417'n'
                Offsets.Top = 2
                Control = dxCalcEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Group1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'BitBtn1'
                  ShowCaption = False
                  Control = BitBtn1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton1'
                  ShowCaption = False
                  Control = ElPopupButton1
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object dxLayoutControl1Item16: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = grdResult
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 544
    Top = 304
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.ItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
    object dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Times New Roman'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.HotTrack = True
      ItemOptions.CaptionOptions.HotTrackStyles = [htsHandPoint]
      ItemOptions.CaptionOptions.TextColor = clBlue
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.ItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object qrySearchResult: TIBOQuery
    Params = <
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
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\ACCOUNTING.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'SOPHIEU'
      'KYHT')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select distinct SOPHIEU,KYHT,NGAYLAP,NDPHIEU,MADT,TENDT,SUBINFO,' +
        'TONGTIEN,BRANCH_ID,BRANCH_NAME'
      'from sp_for_search (:tungay,:denngay,:username,:branch_id) ')
    FieldOptions = []
    Left = 510
    Top = 306
    object qrySearchResultSOPHIEU: TWideStringField
      FieldName = 'SOPHIEU'
      Size = 30
    end
    object qrySearchResultKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qrySearchResultNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
    end
    object qrySearchResultTONGTIEN: TIBOFloatField
      FieldName = 'TONGTIEN'
    end
    object qrySearchResultMADT: TWideStringField
      FieldName = 'MADT'
      Size = 30
    end
    object qrySearchResultNDPHIEU: TWideStringField
      FieldName = 'NDPHIEU'
      Size = 255
    end
    object qrySearchResultTENDT: TWideStringField
      FieldName = 'TENDT'
      Size = 126
    end
    object qrySearchResultSUBINFO: TWideStringField
      FieldName = 'SUBINFO'
      Size = 126
    end
    object qrySearchResultBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 18
    end
    object qrySearchResultBRANCH_NAME: TWideStringField
      FieldName = 'BRANCH_NAME'
      Size = 90
    end
  end
  object dsSearchResult: TDataSource
    DataSet = qrySearchResult
    Left = 480
    Top = 312
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Export')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 204
    Top = 268
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton8: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &Excel'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin Excel'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &HTML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin HTML'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Xu'#7845't ra t'#7853'p tin &XML'
      Category = 0
      Hint = 'Xu'#202't ra t'#203'p tin XML'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Category = 0
      Hint = 'Cho ph'#233'p l'#7885'c d'#7919' li'#7879'u'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Xem chi ti'#7871't phi'#7871'u n'#224'y'
      Category = 0
      Hint = 'Xem chi ti'#7871't phi'#7871'u n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
  end
  object pmAsset: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton8
        Visible = True
      end
      item
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
    Left = 232
    Top = 268
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
        Caption = 'T'#236'm ki'#7871'm ch'#7913'ng t'#7915
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
end
