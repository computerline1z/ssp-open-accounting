object InvoiceFrm: TInvoiceFrm
  Left = 189
  Top = 67
  Width = 733
  Height = 539
  HelpContext = 4
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
    Height = 505
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object edtTenKH: TdxDBEdit
      Left = 365
      Top = 39
      Width = 196
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'CUSNAME'
      DataSource = MainDM.dsInvoiceList
    end
    object edtDCKH: TdxDBEdit
      Left = 365
      Top = 63
      Width = 120
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      DataField = 'CUSADDR'
      DataSource = MainDM.dsInvoiceList
    end
    object edtMSThue: TdxDBEdit
      Left = 565
      Top = 63
      Width = 114
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'CUSTAXCODE'
      DataSource = MainDM.dsInvoiceList
    end
    object edtTenHHDV: TdxDBEdit
      Left = 98
      Top = 135
      Width = 478
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      DataField = 'ITEM_NAME'
      DataSource = MainDM.dsInvoiceList
    end
    object edtSeri: TdxDBEdit
      Left = 98
      Top = 163
      Width = 78
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      CharCase = ecUpperCase
      DataField = 'SERIAL_NO'
      DataSource = MainDM.dsInvoiceList
    end
    object edtHoadon: TdxDBEdit
      Left = 179
      Top = 163
      Width = 79
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 12
      DataField = 'INVOICE_NO'
      DataSource = MainDM.dsInvoiceList
    end
    object BitBtn1: TElPopupButton
      Left = 571
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7845'p nh'#7853'n'
      TabOrder = 28
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 649
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 29
      OnClick = BitBtn2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 1
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabStop = False
      TabOrder = 36
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtNgayHD: TdxDBDateEdit
      Left = 98
      Top = 187
      Width = 160
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 13
      Alignment = taCenter
      DataField = 'INVOICE_DATE'
      DataSource = MainDM.dsInvoiceList
      PopupBorder = pbFrame3D
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object pedtMaKH: TdxDBPopupEdit
      Left = 98
      Top = 39
      Width = 160
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnExit = pedtMaKHExit
      DataField = 'OBJECT_ID'
      DataSource = MainDM.dsInvoiceList
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtMaKHCloseUp
    end
    object edtSTChuathue: TdxDBCalcEdit
      Left = 256
      Top = 455
      Width = 88
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 22
      DataField = 'NOTTAX_VALUE'
      DataSource = MainDM.dsInvoiceList
      OnValidate = edtSTChuathueValidate
      PopupBorder = pbFrame3D
    end
    object edtVATValue: TdxDBCalcEdit
      Left = 503
      Top = 455
      Width = 98
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 23
      DataField = 'TAX_VALUE'
      DataSource = MainDM.dsInvoiceList
      OnValidate = edtVATValueValidate
      PopupBorder = pbFrame3D
    end
    object dxDBEdit1: TdxDBEdit
      Left = 365
      Top = 163
      Width = 196
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 14
      CharCase = ecUpperCase
      DataField = 'MAUSO'
      DataSource = MainDM.dsInvoiceList
    end
    object btnPrint: TElPopupButton
      Left = 79
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'In h'#243'a '#273#417'n thu'#7871' GTGT '#273#7847'u ra'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In'
      TabStop = False
      TabOrder = 37
      OnClick = btnPrintClick
      OnMouseUp = btnPrintMouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbMV: TElRadioButton
      Left = 13
      Top = 19
      Width = 131
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'H'#243'a '#273#417'n &mua v'#224'o'
      TabStop = False
      TabOrder = 31
      OnClick = rbMVClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbMVNK: TElRadioButton
      Left = 10000
      Top = 10000
      Width = 150
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Mua v'#224'o &h'#224'ng nh'#7853'p kh'#7849'u'
      TabStop = False
      TabOrder = 33
      Visible = False
      OnClick = rbMVNKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbBR: TElRadioButton
      Left = 177
      Top = 19
      Width = 149
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'H'#243'a '#273#417'n &b'#225'n ra'
      TabStop = False
      TabOrder = 34
      OnClick = rbBRClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 3
      Top = 269
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DETAIL_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      OnEnter = dxDBGrid1Enter
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = dsItems
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -13
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      object dxDBGrid1DETAIL_ID: TdxDBGridColumn
        Caption = 'Stt'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_ID'
        SummaryFooterType = cstCount
      end
      object dxDBGrid1DETAIL_NAME: TdxDBGridColumn
        Caption = 'T'#234'n chi ti'#7871't'
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_NAME'
        Caption_UTF7 = 'T+AOo-n chi ti+Hr8-t'
      end
      object dxDBGrid1DETAIL_DVT: TdxDBGridColumn
        Caption = #272'VT'
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_DVT'
        Caption_UTF7 = '+ARA-VT'
      end
      object dxDBGrid1DETAIL_PERCENT: TdxDBGridExtLookupColumn
        Caption = '%'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_PERCENT'
        OnCloseUp = dxDBGrid1DETAIL_PERCENTCloseUp
        OnInitPopup = dxDBGrid1DETAIL_PERCENTInitPopup
        DBGridLayout = dxDBGridLayoutList1Item1
      end
      object dxDBGrid1DETAIL_AMOUNT_EXT: TdxDBGridCalcColumn
        Caption = 'SL kh'#225'c'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_AMOUNT_EXT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'SL kh+AOE-c'
      end
      object dxDBGrid1DETAIL_AMOUNT: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object dxDBGrid1DETAIL_PRICE_VAT: TdxDBGridCalcColumn
        Caption = #272'G c'#243' thu'#7871
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_PRICE_VAT'
        Caption_UTF7 = '+ARA-G c+APM thu+Hr8'
      end
      object dxDBGrid1DETAIL_PRICE: TdxDBGridCalcColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_PRICE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object dxDBGrid1DETAIL_VALUE: TdxDBGridCalcColumn
        Caption = 'Th'#224'nh ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
      end
      object dxDBGrid1DETAIL_VAT: TdxDBGridCalcColumn
        Caption = 'Ti'#7873'n thu'#7871
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_VAT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8'
      end
      object dxDBGrid1DETAIL_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETAIL_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 157
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'In h'#243'a '#273#417'n thu'#7871' GTGT '#273#7847'u ra'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In g'#7897'p'
      TabStop = False
      TabOrder = 40
      OnClick = ElPopupButton1Click
      OnMouseUp = ElPopupButton1MouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 235
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'In danh s'#225'ch '#273#237'nh k'#232'm'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Danh s'#225'ch'
      TabOrder = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton2Click
      OnMouseUp = ElPopupButton2MouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbMVTSCD: TElRadioButton
      Left = 10000
      Top = 10000
      Width = 140
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Mua v'#224'o &T'#224'i s'#7843'n c'#7889' '#273#7883'nh'
      TabStop = False
      TabOrder = 32
      Visible = False
      OnClick = rbMVTSCDClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 91
      Top = 455
      Width = 94
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 21
      DataField = 'INVTYPE_ID'
      DataSource = MainDM.dsInvoiceList
      PopupControl = PopupFrm.PnlInvType
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit1CloseUp
    end
    object dxDBMemo1: TdxDBMemo
      Left = 98
      Top = 211
      Width = 614
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 18
      DataField = 'INVOICE_NOTE'
      DataSource = MainDM.dsInvoiceList
      Height = 21
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 637
      Top = 455
      Width = 87
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 24
      DataField = 'FEE_VALUE'
      DataSource = MainDM.dsInvoiceList
      PopupBorder = pbFrame3D
    end
    object ElPopupButton3: TElPopupButton
      Left = 313
      Top = 479
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i ho'#225' '#273#417'n n'#224'y v'#224' th'#234'm h'#243'a '#273#417'n m'#7899'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm m'#7899'i'
      TabOrder = 26
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit2: TdxDBEdit
      Left = 682
      Top = 187
      Width = 30
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 30
      DataField = 'INVOICE_VAT'
      DataSource = MainDM.dsInvoiceList
    end
    object dxDBExtLookupEdit1: TdxDBExtLookupEdit
      Left = 365
      Top = 187
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 17
      OnKeyDown = dxDBExtLookupEdit1KeyDown
      OnKeyPress = dxDBExtLookupEdit1KeyPress
      DataField = 'VAT_NAME'
      DataSource = MainDM.dsInvoiceList
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBExtLookupEdit1CloseUp
      OnInitPopup = dxDBExtLookupEdit1InitPopup
      DBGridLayout = dxDBGridLayoutList1Item1
      PickListField = 'VAT_NAME'
    end
    object dxDBEdit3: TdxDBEdit
      Left = 98
      Top = 111
      Width = 160
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 8
      DataField = 'PXKVCNB'
      DataSource = MainDM.dsInvoiceList
    end
    object dxDBEdit4: TdxDBEdit
      Left = 98
      Top = 87
      Width = 160
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 5
      DataField = 'BANKACC'
      DataSource = MainDM.dsInvoiceList
    end
    object dxDBEdit5: TdxDBEdit
      Left = 365
      Top = 87
      Width = 120
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 6
      DataField = 'CONTRACTNO'
      DataSource = MainDM.dsInvoiceList
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 565
      Top = 87
      Width = 92
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 7
      Alignment = taCenter
      DataField = 'DUEDATE'
      DataSource = MainDM.dsInvoiceList
      PopupBorder = pbFrame3D
      UseEditMask = True
      StoredValues = 5
    end
    object dxDBPickEdit1: TdxDBPickEdit
      Left = 365
      Top = 111
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 9
      DataField = 'PAYMENTMETHOD'
      DataSource = MainDM.dsInvoiceList
      DropDownRows = 10
      PopupBorder = pbFrame3D
    end
    object dxDBEdit6: TdxDBEdit
      Left = 98
      Top = 63
      Width = 160
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtNone
      TabOrder = 2
      DataField = 'PERSONNAME'
      DataSource = MainDM.dsInvoiceList
    end
    object dxDBEdit7: TdxDBEdit
      Left = 633
      Top = 163
      Width = 79
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 16
      CharCase = ecUpperCase
      DataField = 'TYGIA'
      DataSource = MainDM.dsInvoiceList
      OnChange = dxDBEdit7Change
    end
    object dxDBPopupEdit2: TdxDBPopupEdit
      Left = 537
      Top = 163
      Width = 62
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 15
      DataField = 'CURRENCY_ID'
      DataSource = MainDM.dsInvoiceList
      PopupControl = PopupFrm.grdNgoaite
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit2CloseUp
    end
    object chkDetailtoNote: TElCheckBox
      Left = 13
      Top = 235
      Width = 278
      Height = 17
      Cursor = crDefault
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'T'#7921' '#273#7897'ng c'#7853'p nh'#7853't chi ti'#7871't h'#243'a '#273#417'n v'#224'o n'#7897'i dung phi'#7871'u'
      TabOrder = 19
      OnClick = chkDetailtoNoteClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 391
      Top = 479
      Width = 24
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      DrawDefaultFrame = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFA15A6292494E92494E92494E92494E92494E92
        494E92494E92494E92494E92494EA25959D89585B35683FF00FFFF00FF92494E
        FEBEA3FAB092E8977CFBF7F8FBF7F8FBF7F8FBF7F8FBF7F8FBF7F8F6A381FCB5
        97FEBEA392494EFF00FFFF00FF92494EFDB9A1F2A68CDB8A74FBF7F8D58673D7
        9A8EF1E6E7F1E6E7F1E6E7E79378F5AC93FDB9A192494EFF00FFFF00FF92494E
        FCB49EEA9B86CE7D6DFBF7F8C97A6CD2978EEDDFE1EDDFE1EDDFE1D8836FF0A4
        8EFCB49E92494EFF00FFFF00FF92494EFAAF9BE19180C26F65FBF7F8FBF7F8FB
        F7F8ECDDDFECDDDFECDDDFC97365EA9B89FAAF9B92494EFF00FFFF00FF92494E
        F9AC9BE8988AC97365C97365C97365C97365C97365C97365C97365C97365ED9D
        8DF9AA9992494EFF00FFFF00FF92494EF9AFA1F9AFA1F9AFA1F9AFA1F9AFA1F9
        AFA1F9AFA1F9AFA1F9AFA1F9AFA1DF9289F8A59692494EFF00FFFF00FF92494E
        F8B2A8F9AFA19F60659F60659F60659F60659F60659F60659F60659F6065DF92
        89F7A49892494EFF00FFFF00FF92494EF8B7AF9F6065FDFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFDFCFCFDFCFC9F6065F6A9A092494EFF00FFFF00FF92494E
        F8BCB79F6065FDFCFCE0B6BBE0B6BBE0B6BBE0B6BBE0B6BBE0B6BBF5ECEE9F60
        65F6A9A392494EFF00FFFF00FF92494EF8C2BF9F6065FDFCFCF1E6E7F1E6E7F1
        E6E7F1E6E7F1E6E7F1E6E7F1E6E79F6065F5A9A592494EFF00FFFF00FF92494E
        F8C8C69F6065FDFCFCE3BEC2E3BEC2E3BEC2E3BEC2E3BEC2E3BEC2EDDFE19F60
        65F5ACA992494EFF00FFFF00FFB36279F8C8C79F6065FDFCFCE8D3D6E8D3D6E8
        D3D6E8D3D6E8D3D6E8D3D6ECDDDF9F6065EAA2A2B35684FF00FFFF00FFD23FBA
        92494E92494E9F60659F60659F60659F60659F60659F60659F60659F60659249
        4E92494ED52ABBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 27
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        object dxLayoutControl1Group9: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item12: TdxLayoutItem
            Caption = 'ElRadioButton1'
            ShowCaption = False
            Control = rbMV
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item20: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'ElRadioButton3'
            Offsets.Left = 30
            ShowCaption = False
            Control = rbBR
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group10: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = []
            Caption = 'M'#227' kh'#225'ch h'#224'ng'
            Control = pedtMaKH
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#234'n kh'#225'ch h'#224'ng'
            Control = edtTenKH
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxLayoutControl1Group4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item33: TdxLayoutItem
              Caption = 'T'#234'n ng'#432#7901'i mua'
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = #272#7883'a ch'#7881' kh'#225'ch h'#224'ng'
              Control = edtDCKH
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'M'#227' s'#7889' thu'#7871
              Control = edtMSThue
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group13: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item29: TdxLayoutItem
              Caption = 'S'#7889' t'#224'i kho'#7843'n'
              Control = dxDBEdit4
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item30: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'S'#7889' h'#7907'p '#273#7891'ng'
              Control = dxDBEdit5
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item31: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'H'#7841'n thanh to'#225'n'
              Control = dxDBDateEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group14: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item28: TdxLayoutItem
              Caption = 'PXKVCNB'
              Control = dxDBEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item32: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'H'#236'nh th'#7913'c thanh to'#225'n'
              Control = dxDBPickEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'T'#234'n m'#7863't h'#224'ng'
            Control = edtTenHHDV
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group8: TdxLayoutGroup
            AutoAligns = [aaVertical]
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group5: TdxLayoutGroup
              Offsets.Top = 4
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item9: TdxLayoutItem
                Caption = 'S'#7889' Seri - H'#243'a '#273#417'n'
                Control = edtSeri
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item10: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Control = edtHoadon
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Ng'#224'y h'#243'a '#273#417'n'
              Control = edtNgayHD
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group16: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'M'#7851'u h'#243'a '#273#417'n '
                Offsets.Top = 4
                Control = dxDBEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item36: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
                Caption = 'Ngo'#7841'i t'#7879
                Control = dxDBPopupEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item35: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
                Caption = 'T'#7927' gi'#225
                Control = dxDBEdit7
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group12: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item18: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Lo'#7841'i thu'#7871' GTGT'
                Control = dxDBExtLookupEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item27: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = '%'
                Control = dxDBEdit2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object dxLayoutControl1Item24: TdxLayoutItem
          Caption = 'Ghi ch'#250
          Control = dxDBMemo1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item37: TdxLayoutItem
          Caption = 'ElCheckBox1'
          ShowCaption = False
          Control = chkDetailtoNote
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locGrid: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object dxLayoutControl1Group7: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item23: TdxLayoutItem
          Caption = 'Ph'#226'n lo'#7841'i h'#243'a '#273#417'n '
          Control = dxDBPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'S'#7889' tr'#432#7899'c thu'#7871
          Control = edtSTChuathue
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'Ti'#7873'n thu'#7871
          Control = edtVATValue
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item25: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'L'#7879' ph'#237' '
          Control = dxDBCalcEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group11: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item17: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = btnPrint
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item21: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item26: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item34: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Caption = 'ElRadioButton2'
      ShowCaption = False
      Control = rbMVNK
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Caption = 'ElRadioButton1'
      ShowCaption = False
      Control = rbMVTSCD
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 120
    Top = 65528
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
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
        Caption = 'Th'#244'ng tin h'#243'a '#273#417'n GTGT'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object dsgReportInv: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptInvoice
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 414
    Top = 136
  end
  object dplInvoice: TppDBPipeline
    DataSource = MainDM.dsInvoiceList
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    SkipWhenNoRecords = False
    UserName = 'dplInvoice'
    Left = 464
    Top = 136
    object dplInvoiceppField1: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dplInvoiceppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dplInvoiceppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dplInvoiceppField4: TppField
      FieldAlias = 'SERIAL_NO'
      FieldName = 'SERIAL_NO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object dplInvoiceppField5: TppField
      FieldAlias = 'INVOICE_NO'
      FieldName = 'INVOICE_NO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object dplInvoiceppField6: TppField
      FieldAlias = 'INVOICE_DATE'
      FieldName = 'INVOICE_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object dplInvoiceppField7: TppField
      FieldAlias = 'CUSNAME'
      FieldName = 'CUSNAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 6
    end
    object dplInvoiceppField8: TppField
      FieldAlias = 'CUSADDR'
      FieldName = 'CUSADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 7
    end
    object dplInvoiceppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTTAX_VALUE'
      FieldName = 'NOTTAX_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dplInvoiceppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX_VALUE'
      FieldName = 'TAX_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dplInvoiceppField11: TppField
      FieldAlias = 'MAUSO'
      FieldName = 'MAUSO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 10
    end
    object dplInvoiceppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_AMOUNT'
      FieldName = 'ITEM_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object dplInvoiceppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIHD'
      FieldName = 'LOAIHD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object dplInvoiceppField14: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object dplInvoiceppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object dplInvoiceppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGCONG'
      FieldName = 'TONGCONG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object dplInvoiceppField17: TppField
      FieldAlias = 'CUSTAXCODE'
      FieldName = 'CUSTAXCODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 16
    end
    object dplInvoiceppField18: TppField
      FieldAlias = 'INVTYPE_ID'
      FieldName = 'INVTYPE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 17
    end
    object dplInvoiceppField19: TppField
      FieldAlias = 'INVOICE_NOTE'
      FieldName = 'INVOICE_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 18
    end
    object dplInvoiceppField20: TppField
      FieldAlias = 'ITEM_NAME'
      FieldName = 'ITEM_NAME'
      FieldLength = 255
      DisplayWidth = 255
      Position = 19
    end
    object dplInvoiceppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEE_VALUE'
      FieldName = 'FEE_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object dplInvoiceppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONGTATCA'
      FieldName = 'CONGTATCA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object dplInvoiceppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_VAT'
      FieldName = 'INVOICE_VAT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object dplInvoiceppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAT_ID'
      FieldName = 'VAT_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object dplInvoiceppField25: TppField
      FieldAlias = 'VAT_NAME'
      FieldName = 'VAT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 24
    end
    object dplInvoiceppField26: TppField
      FieldAlias = 'BANKACC'
      FieldName = 'BANKACC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 25
    end
    object dplInvoiceppField27: TppField
      FieldAlias = 'CONTRACTNO'
      FieldName = 'CONTRACTNO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 26
    end
    object dplInvoiceppField28: TppField
      FieldAlias = 'PXKVCNB'
      FieldName = 'PXKVCNB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 27
    end
    object dplInvoiceppField29: TppField
      FieldAlias = 'DUEDATE'
      FieldName = 'DUEDATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 28
    end
    object dplInvoiceppField30: TppField
      FieldAlias = 'PAYMENTMETHOD'
      FieldName = 'PAYMENTMETHOD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 29
    end
    object dplInvoiceppField31: TppField
      FieldAlias = 'PERSONNAME'
      FieldName = 'PERSONNAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 30
    end
    object dplInvoiceppField32: TppField
      FieldAlias = 'BRANCH_ID'
      FieldName = 'BRANCH_ID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 31
    end
    object dplInvoiceppField33: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 32
    end
    object dplInvoiceppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIA'
      FieldName = 'TYGIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object dplInvoiceppField35: TppField
      FieldAlias = 'OTHER_ID'
      FieldName = 'OTHER_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
  end
  object rptInvoice: TppReport
    AutoStop = False
    DataPipeline = dplInvoice
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
    Left = 440
    Top = 120
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplInvoice'
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
  object dplItems: TppDBPipeline
    DataSource = dsItems
    SkipWhenNoRecords = False
    UserName = 'dplItems'
    Left = 272
    Top = 360
    object ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTTAX_VALUE'
      FieldName = 'NOTTAX_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'INVOICE_DATE'
      FieldName = 'INVOICE_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_VAT'
      FieldName = 'INVOICE_VAT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX_VALUE'
      FieldName = 'TAX_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'CUSTOMER_ID'
      FieldName = 'CUSTOMER_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'SERIAL_NO'
      FieldName = 'SERIAL_NO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'INVOICE_NO'
      FieldName = 'INVOICE_NO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'CUSNAME'
      FieldName = 'CUSNAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'CUSTAXCODE'
      FieldName = 'CUSTAXCODE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'CUSADDR'
      FieldName = 'CUSADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'ITEM_NAME'
      FieldName = 'ITEM_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'MAUSO'
      FieldName = 'MAUSO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM_AMOUNT'
      FieldName = 'ITEM_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
  end
  object qryItems: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENTRY_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM INVOICE_DETAIL'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DETAIL_ID = :OLD_DETAIL_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE INVOICE_DETAIL SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   DETAIL_ID = :DETAIL_ID, /*PK*/'
      '   DOC_ID = :DOC_ID, /*PK*/'
      '   ENTRY_ID = :ENTRY_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   DETAIL_NAME = :DETAIL_NAME,'
      '   DETAIL_DVT = :DETAIL_DVT,'
      '   DETAIL_AMOUNT = :DETAIL_AMOUNT,'
      '   DETAIL_PRICE = :DETAIL_PRICE,'
      '   DETAIL_VALUE = :DETAIL_VALUE,'
      '   DETAIL_NOTE = :DETAIL_NOTE,'
      '   DETAIL_VAT = :DETAIL_VAT,'
      '   DETAIL_PRICE_VAT = :DETAIL_PRICE_VAT,'
      '   DETAIL_AMOUNT_EXT = :DETAIL_AMOUNT_EXT,'
      '   DETAIL_PERCENT = :DETAIL_PERCENT,'
      '   METHOD_ID = :METHOD_ID'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DETAIL_ID = :OLD_DETAIL_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO INVOICE_DETAIL('
      '   BRANCH_ID, /*PK*/'
      '   DETAIL_ID, /*PK*/'
      '   DOC_ID, /*PK*/'
      '   ENTRY_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   DETAIL_NAME,'
      '   DETAIL_DVT,'
      '   DETAIL_AMOUNT,'
      '   DETAIL_PRICE,'
      '   DETAIL_VALUE,'
      '   DETAIL_NOTE,'
      '   DETAIL_VAT,'
      '   DETAIL_PRICE_VAT,'
      '   DETAIL_AMOUNT_EXT,'
      '   DETAIL_PERCENT,'
      '   METHOD_ID)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :DETAIL_ID,'
      '   :DOC_ID,'
      '   :ENTRY_ID,'
      '   :PERIOD_ID,'
      '   :DETAIL_NAME,'
      '   :DETAIL_DVT,'
      '   :DETAIL_AMOUNT,'
      '   :DETAIL_PRICE,'
      '   :DETAIL_VALUE,'
      '   :DETAIL_NOTE,'
      '   :DETAIL_VAT,'
      '   :DETAIL_PRICE_VAT,'
      '   :DETAIL_AMOUNT_EXT,'
      '   :DETAIL_PERCENT,'
      '   :METHOD_ID)')
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID'
      'DETAIL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryItemsBeforeEdit
    BeforeDelete = qryItemsBeforeDelete
    AfterDelete = qryItemsAfterDelete
    AfterInsert = qryItemsAfterInsert
    BeforePost = qryItemsBeforePost
    AfterPost = qryItemsAfterPost
    OnNewRecord = qryItemsNewRecord
    OnPostError = qryItemsPostError
    DataSource = MainDM.dsInvoiceList
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , ENTRY_ID'
      '     , PERIOD_ID'
      '     , DETAIL_ID'
      '     , DETAIL_NAME'
      '     , DETAIL_DVT'
      '     , DETAIL_AMOUNT'
      '     , DETAIL_PRICE'
      '     , DETAIL_VALUE'
      '     , DETAIL_NOTE'
      '     , DETAIL_VAT'
      '     , BRANCH_ID'
      '     , DETAIL_PRICE_VAT'
      '     , DETAIL_AMOUNT_EXT'
      '     , DETAIL_PERCENT'
      '     , METHOD_ID'
      'FROM INVOICE_DETAIL'
      
        'where DOC_ID=:DOC_ID and ENTRY_ID=:ENTRY_ID and PERIOD_ID=:PERIO' +
        'D_ID and BRANCH_ID =:BRANCH_ID'
      'order by DETAIL_ID')
    FieldOptions = []
    Left = 308
    Top = 358
    object qryItemsDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryItemsENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
      Required = True
    end
    object qryItemsPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryItemsDETAIL_ID: TSmallintField
      FieldName = 'DETAIL_ID'
      Required = True
    end
    object qryItemsDETAIL_DVT: TWideStringField
      FieldName = 'DETAIL_DVT'
      Size = 15
    end
    object qryItemsDETAIL_AMOUNT: TIBOFloatField
      FieldName = 'DETAIL_AMOUNT'
      OnChange = qryItemsDETAIL_AMOUNTChange
    end
    object qryItemsDETAIL_PRICE: TIBOFloatField
      FieldName = 'DETAIL_PRICE'
      OnChange = qryItemsDETAIL_PRICEChange
    end
    object qryItemsDETAIL_VALUE: TIBOFloatField
      FieldName = 'DETAIL_VALUE'
      OnChange = qryItemsDETAIL_VALUEChange
    end
    object qryItemsDETAIL_NAME: TWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 255
    end
    object qryItemsDETAIL_NOTE: TWideStringField
      FieldName = 'DETAIL_NOTE'
      Size = 255
    end
    object qryItemsDETAIL_VAT: TIBOFloatField
      FieldName = 'DETAIL_VAT'
    end
    object qryItemsBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryItemsDETAIL_PRICE_VAT: TIBOFloatField
      FieldName = 'DETAIL_PRICE_VAT'
      OnChange = qryItemsDETAIL_PRICE_VATChange
    end
    object qryItemsDETAIL_AMOUNT_EXT: TIBOFloatField
      FieldName = 'DETAIL_AMOUNT_EXT'
      OnChange = qryItemsDETAIL_AMOUNTChange
    end
    object qryItemsDETAIL_PERCENT: TIBOFloatField
      FieldName = 'DETAIL_PERCENT'
    end
    object qryItemsMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
      OnChange = qryItemsMETHOD_IDChange
    end
  end
  object dsItems: TDataSource
    DataSet = qryItems
    Left = 340
    Top = 360
  end
  object qryPVATType: TIBOQuery
    Params = <>
    DatabaseName = 'F:\Project\GHD\accounting_2009_2010.GDB'
    DeleteSQL.Strings = (
      '')
    Filtered = True
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'VAT_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT VAT_ID'
      '     , VAT_NAME'
      '     , VAT_PER'
      '     , OTHER_ID'
      '     , METHOD_ID'
      'FROM VAT_LIST'
      'order by VAT_ID')
    FieldOptions = []
    Left = 429
    Top = 251
    object qryPVATTypeVAT_ID: TSmallintField
      FieldName = 'VAT_ID'
      Required = True
    end
    object qryPVATTypeVAT_NAME: TWideStringField
      FieldName = 'VAT_NAME'
      Size = 126
    end
    object qryPVATTypeVAT_PER: TIBOFloatField
      FieldName = 'VAT_PER'
    end
    object qryPVATTypeOTHER_ID: TWideStringField
      FieldName = 'OTHER_ID'
      Size = 15
    end
    object qryPVATTypeMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
  end
  object dsPVATType: TDataSource
    DataSet = qryPVATType
    Left = 429
    Top = 291
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 336
    Top = 232
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        DA050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406065641545F49440D53756D6D61
        727947726F7570730E001053756D6D617279536570617261746F7206022C200C
        466F6E742E43686172736574070C414E53495F434841525345540A466F6E742E
        436F6C6F72070C636C57696E646F77546578740B466F6E742E48656967687402
        F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B00
        0A506172656E74466F6E74081042616E64466F6E742E43686172736574070F44
        454641554C545F434841525345540E42616E64466F6E742E436F6C6F72070C63
        6C57696E646F77546578740F42616E64466F6E742E48656967687402F50D4261
        6E64466F6E742E4E616D65060D4D532053616E732053657269660E42616E6446
        6F6E742E5374796C650B000A44617461536F757263650715496E766F69636546
        726D2E647350564154547970651044656661756C74526F774865696768740214
        0F46696C7465722E43726974657269610A040000000000000012486561646572
        466F6E742E43686172736574070C414E53495F43484152534554104865616465
        72466F6E742E436F6C6F72070C636C57696E646F775465787411486561646572
        466F6E742E48656967687402F50F486561646572466F6E742E4E616D65060654
        61686F6D6110486561646572466F6E742E5374796C650B00094F7074696F6E73
        44420B106564676F43616E63656C4F6E457869740D6564676F43616E44656C65
        74650D6564676F43616E496E73657274116564676F43616E4E61766967617469
        6F6E116564676F436F6E6669726D44656C657465126564676F4C6F6164416C6C
        5265636F726473106564676F557365426F6F6B6D61726B73000B4F7074696F6E
        73566965770B0D6564676F4175746F5769647468136564676F42616E64486561
        64657257696474680D6564676F5573654269746D617000135072657669657746
        6F6E742E43686172736574070F44454641554C545F4348415253455411507265
        76696577466F6E742E436F6C6F720706636C426C75651250726576696577466F
        6E742E48656967687402F51050726576696577466F6E742E4E616D65060D4D53
        2053616E732053657269661150726576696577466F6E742E5374796C650B0000
        0F546478444247726964436F6C756D6E065641545F49440743617074696F6E06
        035374740F486561646572416C69676E6D656E740708746143656E7465720756
        697369626C6508055769647468021E0942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D6506065641545F494400000F5464784442
        47726964436F6C756D6E085641545F4E414D450743617074696F6E1417000000
        54C3AA6E206C6FE1BAA16920746875E1BABF20475447540F486561646572416C
        69676E6D656E740708746143656E74657205576964746803F7000942616E6449
        6E646578020008526F77496E6465780200094669656C644E616D650608564154
        5F4E414D450C43617074696F6E5F55544637061D542B414F6F2D6E206C6F2B48
        71452D69207468752B487238204754475400000F546478444247726964436F6C
        756D6E075641545F5045520743617074696F6E06062520475447540F48656164
        6572416C69676E6D656E740708746143656E7465720557696474680242094261
        6E64496E646578020008526F77496E6465780200094669656C644E616D650607
        5641545F5045520000135464784442477269644D61736B436F6C756D6E084F54
        4845525F494409416C69676E6D656E740708746143656E746572074361707469
        6F6E140A0000004BC3BD206869E1BB87750F486561646572416C69676E6D656E
        740708746143656E74657205576964746802450942616E64496E646578020008
        526F77496E6465780200094669656C644E616D6506084F544845525F49440C43
        617074696F6E5F55544637060E4B2B4150302068692B4873632D75000000}
    end
  end
  object qryDebitNote: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INSURER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PTHH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOAIHH'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\Project\GHD\accounting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'DEBITNOTE')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *     '
      'FROM SP_POLICY_COM(:DOC_ID,:KYHT,:INSURER,:PTHH,:LOAIHH)'
      '')
    FieldOptions = []
    Left = 80
    Top = 314
    object qryDebitNoteITEMNOTE: TWideStringField
      FieldName = 'ITEMNOTE'
      Size = 255
    end
    object qryDebitNoteDEBITNOTE: TWideStringField
      FieldName = 'DEBITNOTE'
      Size = 30
    end
    object qryDebitNoteCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 6
    end
    object qryDebitNoteTYGIAHT: TIBOFloatField
      FieldName = 'TYGIAHT'
    end
    object qryDebitNoteCOM_VALUENT: TIBOFloatField
      FieldName = 'COM_VALUENT'
    end
    object qryDebitNoteCOM_VALUEVN: TIBOFloatField
      FieldName = 'COM_VALUEVN'
    end
    object qryDebitNoteVAT_VALUENT: TIBOFloatField
      FieldName = 'VAT_VALUENT'
    end
    object qryDebitNoteVAT_VALUEVN: TIBOFloatField
      FieldName = 'VAT_VALUEVN'
    end
  end
  object rptInvoice2: TppReport
    AutoStop = False
    DataPipeline = dplInvoice
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
    Left = 512
    Top = 126
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplInvoice'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ActionList1: TActionList
    Left = 306
    Top = 234
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsItems
    end
  end
end
