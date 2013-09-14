object DocFullFrm: TDocFullFrm
  Left = 374
  Top = 228
  Width = 732
  Height = 514
  HelpContext = 35
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locFrm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 724
    Height = 480
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBEdit1: TdxDBEdit
      Left = 63
      Top = 21
      Width = 114
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = dxDBEdit1Enter
      DataField = 'DOC_ID'
      DataSource = dsDocument
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 225
      Top = 21
      Width = 88
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      OnEnter = dxDBEdit1Enter
      Alignment = taCenter
      DataField = 'DOC_DATE'
      DataSource = dsDocument
      PopupBorder = pbFrame3D
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object btnIns: TElPopupButton
      Left = 1
      Top = 454
      Width = 92
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm phi'#7871'u m'#7899'i (Ctrl+N)'
      DrawDefaultFrame = False
      PopupPlace = ppRight
      DisableAutoPopup = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseArrow = True
      OnArrowClick = btnInsArrowClick
      UseXPThemes = True
      Caption = '&Th'#234'm phi'#7871'u'
      TabOrder = 37
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 97
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a phi'#7871'u n'#224'y'
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a phi'#7871'u'
      TabOrder = 38
      ParentShowHint = False
      ShowHint = True
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 178
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i th'#244'ng tin '#273'ang nh'#7853'p (Ctrl+S)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 43
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn5: TElPopupButton
      Left = 254
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Kh'#244'ng l'#432'u nh'#432'ng th'#244'ng tin '#273#227' thay '#273#7893'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 44
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn7: TElPopupButton
      Left = 572
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Hi'#7875'n th'#7883' th'#244'ng tin tr'#7907' gi'#250'p'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 41
      ParentShowHint = False
      ShowHint = True
      OnClick = BitBtn7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn8: TElPopupButton
      Left = 648
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#243'ng m'#224'n h'#236'nh '#273'ang nh'#7853'p li'#7879'u l'#7841'i'
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 42
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit3: TdxDBEdit
      Left = 366
      Top = 21
      Width = 90
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnEnter = dxDBEdit1Enter
      Alignment = taLeftJustify
      DataField = 'DOC_VOUCHER'
      DataSource = dsDocument
      StoredValues = 1
    end
    object dxDBEdit5: TdxDBEdit
      Left = 225
      Top = 92
      Width = 256
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 15
      OnEnter = dxDBEdit1Enter
      DataField = 'DOC_PERSONADDR'
      DataSource = dsDocument
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 63
      Top = 44
      Width = 114
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      OnEnter = dxDBPopupEdit1Enter
      OnExit = dxDBPopupEdit1Exit
      DataField = 'WAREHOUSE_ID'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlWare
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit1CloseUp
    end
    object btnPrint: TElPopupButton
      Left = 568
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem tr'#432#7899'c khi in (F3)'
      DrawDefaultFrame = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
        D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
        3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
        97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
        DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
        B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
        99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
        978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
        BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
        A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
        EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
        CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
        B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
        F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
        DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
        C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
        9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
        E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
        70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
        EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
        86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
        A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphBottom
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 31
      ParentShowHint = False
      ShowHint = True
      Action = acIn
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pmDT: TdxDBPopupEdit
      Left = 63
      Top = 68
      Width = 114
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      OnEnter = pmDTEnter
      DataField = 'MADOITUONG'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pmDTCloseUp
      OnInitPopup = pmDTInitPopup
    end
    object dxDBEdit8: TdxDBEdit
      Left = 63
      Top = 92
      Width = 114
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 14
      OnEnter = dxDBEdit1Enter
      DataField = 'DOC_PERSON'
      DataSource = dsDocument
    end
    object dxDBMemo1: TdxDBMemo
      Left = 63
      Top = 116
      Width = 458
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 16
      OnKeyDown = dxDBMemo1KeyDown
      DataField = 'DOC_NOTES'
      DataSource = dsDocument
      Height = 47
    end
    object grdDetail: TdxDBGrid
      Left = 3
      Top = 204
      Width = 766
      Height = 323
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ENTRY_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      IsImportFromXLS = True
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 22
      OnEnter = grdDetailEnter
      OnKeyDown = grdDetailKeyDown
      OnMouseUp = grdDetailMouseUp
      DataSource = dsDocEntry
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      RegistryPath = 'Software\SSP\AccV10\Document'
      OnEditing = grdDetailEditing
      object grdDetailENTRY_ID1: TdxDBGridColumn
        Caption = 'Stt'
        DisableCustomizing = True
        Sorted = csUp
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_ID'
      end
      object grdDetailENTRY_ID: TdxDBGridMaskColumn
        Caption = 'Stt'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Sizing = False
        TabStop = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'ENTRY_ID'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0'
        DisableFilter = True
      end
      object grdDetailACTICLE_ID: TdxDBGridPopupColumn
        Caption = 'H'#7841'n m'#7909'c'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_ID'
        PopupControl = PopupFrm.PnlItem
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailACTICLE_IDCloseUp
        Caption_UTF7 = 'H+HqE-n m+HuU-c'
      end
      object grdDetailDEBIT_ACC: TdxDBGridPopupColumn
        Caption = 'TK n'#7907
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_ACCCloseUp
        OnInitPopup = grdDetailDEBIT_ACCInitPopup
        Caption_UTF7 = 'TK n+HuM'
      end
      object grdDetailDEBIT_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' n'#7907
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_OBJCloseUp
        OnInitPopup = grdDetailDEBIT_OBJInitPopup
        Caption_UTF7 = 'M+AOM n+HuM'
      end
      object grdDetailSUBNO_1: TdxDBGridMaskColumn
        Caption = 'Qui c'#225'ch '#272'T n'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBNO_1'
        Caption_UTF7 = 'Qui c+AOE-ch +ARA-T n+HuM'
      end
      object grdDetailSUBNO_2: TdxDBGridMaskColumn
        Caption = #272'VT '#272'T n'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBNO_2'
        Caption_UTF7 = '+ARA-VT +ARA-T n+HuM'
      end
      object grdDetailTENDTNO: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng n'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDTNO'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng n+HuM'
      end
      object grdDetailDEBIT_DETAIL: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889' n'#7907' 1'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DETAIL'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_DETAILCloseUp
        OnInitPopup = grdDetailDEBIT_DETAILInitPopup
        Caption_UTF7 = 'Y+Hr8-u t+HtE n+HuM 1'
      end
      object grdDetailDEBIT_DETAIL_1: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889' n'#7907' 2'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DETAIL_1'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_DETAIL_1CloseUp
        OnInitPopup = grdDetailDEBIT_DETAIL_1InitPopup
        Caption_UTF7 = 'Y+Hr8-u t+HtE n+HuM 2'
      end
      object grdDetailCREDIT_ACC: TdxDBGridPopupColumn
        Caption = 'TK c'#243
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_ACCCloseUp
        OnInitPopup = grdDetailCREDIT_ACCInitPopup
        Caption_UTF7 = 'TK c+APM'
      end
      object grdDetailCREDIT_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' c'#243
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailCREDIT_OBJCloseUp
        OnInitPopup = grdDetailCREDIT_OBJInitPopup
        Caption_UTF7 = 'M+AOM c+APM'
      end
      object grdDetailTENDTCO: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng c'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDTCO'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng c+APM'
      end
      object grdDetailSUBCO_1: TdxDBGridMaskColumn
        Caption = 'Qui c'#225'ch '#272'T c'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBCO_1'
        Caption_UTF7 = 'Qui c+AOE-ch +ARA-T c+APM'
      end
      object grdDetailSUBCO_2: TdxDBGridMaskColumn
        Caption = #272'VT '#272'T c'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBCO_2'
        Caption_UTF7 = '+ARA-VT +ARA-T c+APM'
      end
      object grdDetailCREDIT_DETAIL: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889' c'#243' 1'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DETAIL'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailCREDIT_DETAILCloseUp
        OnInitPopup = grdDetailCREDIT_DETAILInitPopup
        Caption_UTF7 = 'Y+Hr8-u t+HtE c+APM 1'
      end
      object grdDetailCREDIT_DETAIL_1: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889' c'#243' 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DETAIL_1'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailCREDIT_DETAIL_1CloseUp
        OnInitPopup = grdDetailCREDIT_DETAIL_1InitPopup
        Caption_UTF7 = 'Y+Hr8-u t+HtE c+APM 2'
      end
      object grdDetailENTRY_AMOUNT: TdxDBGridCalcColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_AMOUNT'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdDetailDISCOUNT_SCALE: TdxDBGridColumn
        Caption = '% Gi'#7843'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISCOUNT_SCALE'
        Caption_UTF7 = '% Gi+HqM-m'
      end
      object grdDetailORIGIN_PRICE: TdxDBGridCalcColumn
        Caption = 'Nguy'#234'n gi'#225
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGIN_PRICE'
        Caption_UTF7 = 'Nguy+AOo-n gi+AOE'
      end
      object grdDetailENTRY_PRICE_VAT: TdxDBGridCalcColumn
        Caption = #272'G thu'#7871
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_PRICE_VAT'
        Caption_UTF7 = '+ARA-G thu+Hr8'
      end
      object grdDetailENTRY_PRICE: TdxDBGridCalcColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_PRICE'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object grdDetailNGUYENTE: TdxDBGridColumn
        Caption = 'Nguy'#234'n t'#7879
        HeaderAlignment = taCenter
        TabStop = False
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGUYENTE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Nguy+AOo-n t+Hsc'
      end
      object grdDetailCURRENCY_ID: TdxDBGridPopupColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_ID'
        PopupControl = PopupFrm.grdNgoaite
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailCURRENCY_IDCloseUp
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object grdDetailTYGIANT: TdxDBGridExtLookupColumn
        Caption = 'T'#7927' gi'#225
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYGIANT'
        OnCloseUp = grdDetailTYGIANTCloseUp
        OnInitPopup = grdDetailTYGIANTInitPopup
        DBGridLayout = dxDBGridLayoutList1Item1
        Caption_UTF7 = 'T+Hvc gi+AOE'
      end
      object grdDetailENTRY_VALUE: TdxDBGridCalcColumn
        Caption = 'S'#7889' ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        OnChange = grdDetailENTRY_VALUEChange
        FieldName = 'ENTRY_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE ti+HsE-n'
      end
      object grdDetailPAYFOR_DOC: TdxDBGridColumn
        Caption = 'Tr'#7843' cho phi'#7871'u'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAYFOR_DOC'
        Caption_UTF7 = 'Tr+HqM cho phi+Hr8-u'
      end
      object grdDetailDISCOUNT_VALUE: TdxDBGridColumn
        Caption = 'Gi'#225' tr'#7883' gi'#7843'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISCOUNT_VALUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Gi+AOE tr+Hss gi+HqM-m'
      end
      object grdDetailVAT_PERCENT: TdxDBGridColumn
        Caption = 'T'#7927' l'#7879
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_PERCENT'
        Caption_UTF7 = 'T+Hvc l+Hsc'
      end
      object grdDetailENTRY_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdDetailINVENTORY_AMOUNT: TdxDBGridMaskColumn
        Caption = 'T'#7891'n kho'
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVENTORY_AMOUNT'
        Caption_UTF7 = 'T+HtM-n kho'
      end
      object grdDetailINVOICE_ID: TdxDBGridExtLookupColumn
        Caption = 'H'#243'a '#273#417'n'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_ID'
        OnInitPopup = grdDetailINVOICE_IDInitPopup
        DBGridLayout = dppInvoice
        PickListField = 'ENTRY_ID'
        Caption_UTF7 = 'H+APM-a +AREBoQ-n'
      end
      object grdDetailColumn30: TdxDBGridColumn
        Caption = 'S'#7889' ti'#7873'n g'#7889'c'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGIN_VALUE'
        Caption_UTF7 = 'S+HtE ti+HsE-n g+HtE-c'
      end
      object grdDetailPTTHUENK: TdxDBGridCalcColumn
        Caption = 'PT Thu'#7871' nh'#7853'p k h'#7849'u'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PTTHUENK'
        Caption_UTF7 = 'PT Thu+Hr8 nh+Hq0-p k h+Hqk-u'
      end
      object grdDetailENTRY_QUANTITY: TdxDBGridMaskColumn
        Caption = 'S'#7889' con'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_QUANTITY'
        Caption_UTF7 = 'S+HtE con'
      end
      object grdDetailVAT_ID: TdxDBGridPopupColumn
        Caption = 'VAT'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_ID'
        PopupControl = PopupFrm.pnlVATList
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailVAT_IDCloseUp
        OnInitPopup = grdDetailVAT_IDInitPopup
      end
      object grdDetailORIGIN_VALUE: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGIN_VALUE'
      end
      object grdDetailIS_NOTLOGICAL: TdxDBGridCheckColumn
        Caption = 'Ch'#7913'ng t'#7915' h'#7907'p l'#7879
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IS_NOTLOGICAL'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Ch+Huk-ng t+Hus h+HuM-p l+Hsc'
      end
      object grdDetailJRNL_ENTRY: TdxDBGridColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JRNL_ENTRY'
      end
    end
    object btnInvoice: TElPopupButton
      Left = 330
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'C'#225'c h'#243'a '#273#417'n t'#224'i ch'#237'nh li'#234'n quan'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&H'#243'a '#273#417'n'
      TabOrder = 39
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInvoiceClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPSPXK: TElPopupButton
      Left = 406
      Top = 454
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Xem/ Ph'#225't sinh ra phi'#7871'u xu'#7845't kho theo gi'#225' v'#7889'n'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&PS PXK'
      TabOrder = 40
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPSPXKClick
      OnMouseUp = btnPSPXKMouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBPopupEdit3: TdxDBPopupEdit
      Left = 225
      Top = 44
      Width = 88
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      OnEnter = dxDBPopupEdit3Enter
      OnExit = dxDBPopupEdit3Exit
      DataField = 'TO_WAREHOUSE'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlWare
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit3CloseUp
    end
    object ElPopupButton3: TElPopupButton
      Left = 594
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'In tr'#7921'c ti'#7871'p ra m'#225'y in (Ctrl+P)'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000717171FF5F5F5FFF717171FF717171FF0000
        00000000000000000000717171FF000000000000000000000000000000000000
        000000000000BFBFBFFF383838FF959595FFDADADAFFD5D5D5FF545454FF7171
        71FF717171FF878787FF7C7C7CFF717171FF0000000000000000000000008E8E
        8EFF282828FF7D7D7DFFDADADAFFE9E9E9FFDBDBDBFFDBDBDBFFA4A4A4FF4646
        46FF8A8A8AFFF9F9F9FFF0F0F0FF666666FF717171FF000000008E8E8EFF6060
        60FFCDCDCDFFFEFEFEFFEDEDEDFFDCDCDCFFE8E8E8FFD9D9D9FFAFAFAFFFE3E3
        E3FFFFFFFFFFF7F7F7FFF0F0F0FFE8E8E8FF5A5A5AFF595959FF5B5B5BFFFDFD
        FDFFFFFFFFFFF2F2F2FFE7E7E7FFECECECFFF6F6F6FFDADADAFF5C5C5CFFCECE
        CEFFFFFFFFFFFDFDFDFFF3F3F3FFF3F3F3FFE5E5E5FF464646FF626262FFFFFF
        FFFFFFFFFFFFF5F5F5FFF2F2F2FFFEFEFEFFFFFFFFFFA5A5A5FF2A2A2AFF3030
        30FFD4D4D4FFFFFFFFFFFEFEFEFFFFFFFFFFBBBBBBFF353535FF2C2C2CFFA9A9
        A9FFFFFFFFFFF9F9F9FFFEFEFEFFFFFFFFFFC4C4C4FF8B8B8BFF717171FF2B2B
        2BFF303030FFDDDDDDFFFFFFFFFF9B9B9BFF292929FF00000000000000002A2A
        2AFF9C9C9CFFDADADAFFDBDBDBFFAFAFAFFFA9A9A9FFA7A7A7FF9B9B9BFF7B7B
        7BFF272727FF2F2F2FFF8E8E8EFF757575FF2E2E2EFF00000000000000000000
        0000363636FF7E7E7EFF505050FF707070FFAAAAAAFFBABABAFFA5A5A5FFA7A7
        A7FF858585FF1C1C1CFF343434FFCDCDCDFF656565FF00000000000000000000
        00003F3F3FFFD3D3D3FFA3A3A3FF454545FF7C7C7CFFB1B1B1FFBDBDBDFFA3A3
        A3FFB8B8B8FF767676FF999999FFE7E7E7FF595959FF00000000000000006E6E
        6EFF626262FFEDEDEDFFFFFFFFFF909090FF494949FF838383FFBBBBBBFFBFBF
        BFFFA0A0A0FFA8A8A8FFF2F2F2FFCACACAFF333333FF00000000000000003131
        31FF787878FFEEEEEEFFEEEEEEFFFDFDFDFF7F7F7FFF4D4D4DFF858585FFB2B2
        B2FFA3A3A3FFE9E9E9FFFFFFFFFF737373FF8E8E8EFF0000000000000000AAAA
        AAFF373737FF9C9C9CFFEFEFEFFFFDFDFDFF8D8D8DFF333333FF6E6E6EFFABAB
        ABFFF5F5F5FFFFFFFFFFA3A3A3FF545454FF0000000000000000000000000000
        0000AAAAAAFF353535FFA9A9A9FFF6F6F6FF515151FF4D4D4DFFCCCCCCFFFCFC
        FCFFF7F7F7FF939393FF545454FF000000000000000000000000000000000000
        0000000000005F5F5FFF404040FF989898FF383838FFAAAAAAFF585858FF7D7D
        7DFF4D4D4DFF9B9B9BFF00000000000000000000000000000000000000000000
        000000000000000000005F5F5FFF313131FFBABABAFF00000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphBottom
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 32
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 646
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'S'#7917'a l'#7841'i m'#7851'u phi'#7871'u in'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00BA69
        336BB9642FBCBA6530EDB9652FF7B9652FF7B9652FF7B9642FF7B9642EF7B864
        2DF7B8642DF7B8632DF7B8632DEFB6612BBDB6612D63FFFFFF00FFFFFF00BB68
        32DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
        EBFFFAF2EAFFFCF7F3FFFCF8F4FDFEFEFDF0B65F29D5FFFFFF00FFFFFF00BE70
        37F5F5EBDFFEFDBE67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC
        62FFFBBB60FFFCBD5FFFFCBB61FFFDFBF8FDB8632CF3FFFFFF00FFFFFF00C077
        3BF7F7EDE3FFFDC16DFF174156FF2A6086FF4B88BBFF6F9EB2FFE3C999FFFFD6
        94FFFFD593FFFFD492FFFBBD64FFFBF7F4FFBA6630F7FFFFFF00FFFFFF00C37B
        3FF7F7F0E6FFF8B354FF2D6581FF93C7F9FF90C9F9FF4084C9FF2567A5FFD2A7
        64FFF7B150FFF7B14EFFF7B14EFFFCF9F5FFBE6E35F7FFFFFF00FFFFFF00C47F
        41F7F8F1E8FFFEE5D5FF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478B
        C1FFDAD2CDFFFBE0C9FFFBE1C8FFFDFAF7FFC0753AF7FFFFFF00FFFFFF00C481
        44F7F8F2EBFFFEE7D6FFA5B5BEFF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0
        EDFF509AD9FFE1D6CDFFFBE1C9FFFBF7F2FFC47B3EF7FFFFFF00FFFFFF00C583
        46F7F9F3ECFFFEE8D6FFFEE8D7FFB2C5CCFF75B8D6FFC1F6FDFF62DFF7FF5CE2
        F8FF78D3F0FF4897DAFFE2D5C8FFFAF2EAFFC57F41F7FFFFFF00FFFFFF00C587
        48F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFAFC5CCFF76CBE7FFC7F7FDFF5DDC
        F5FF59E1F7FF7AD4F1FF4A98DBFFD2DFE9FFC58144F7FFFFFF00FFFFFF00C587
        49F7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFBCD6D5FF78D3EEFFC7F7
        FDFF5EDCF5FF5AE2F7FF79D6F2FF50A0E0FFAC845FF9FFFFFF00FFFFFF00C588
        4AF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7CD4
        EEFFC3F6FDFF6BDDF6FF6CCAEDFF62A2D7FF6398C8FE5091CA26FFFFFF00C588
        4AF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECD
        C9FF80D5EEFFB1E3F9FF8ABFE7FFADD3F6FFC3E0FCFF659ED3F7FFFFFF00C588
        4BF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6
        B9FFAEE3F1FF76BDE7FFB3D2F0FFE5F3FFFFABD2EFFF478BC7E8FFFFFF00C487
        4AEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6
        B7FFFFFBF8FFB5CBC1FF57A4D8FF84B0DBFF459CD0FF2A94D15EFFFFFF00C384
        48C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
        ECFFF2E6D7FFE2B17CFFDB9364F5B2673A07FFFFFF00FFFFFF00FFFFFF00C07C
        4360C88A4CBBC88B4EEEC88B4EF6C88B4EF7C88B4EF7C88C4EF7C98B4EF7C78A
        4EF7C4884AD4C3753A91B2673B06FFFFFF00FFFFFF00FFFFFF00}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphTop
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 34
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnFirst: TElPopupButton
      Left = 457
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'V'#7873' phi'#7871'u '#273#7847'u ti'#234'n (Ctrl+Home)'
      DrawDefaultFrame = False
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0000000848284C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0848284000000C0C0C000C0C0C0C0C0C0
        000000848284C0C0C0C0C0C0C0C0C0C0C0C0848284000000000000000000C0C0
        C000C0C0C0C0C0C0000000848284C0C0C0C0C0C0848284000000000000000000
        000000000000C0C0C000C0C0C0C0C0C000000084828484828400000000000000
        0000000000000000000000000000C0C0C000C0C0C0C0C0C0000000848284C0C0
        C0C0C0C0848284000000000000000000000000000000C0C0C000C0C0C0C0C0C0
        000000848284C0C0C0C0C0C0C0C0C0C0C0C0848284000000000000000000C0C0
        C000C0C0C0C0C0C0000000848284C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        848284000000C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 27
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFirstClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnBack: TElPopupButton
      Left = 483
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'V'#7873' phi'#7871'u tr'#432#7899'c phi'#7871'u n'#224'y  (Ctrl+PageUp)'
      DrawDefaultFrame = False
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0848284000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0848284000000000000000000C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0848284000000000000000000000000000000C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C084828400000000000000000000000000000000
        0000000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C08482840000
        00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0848284000000000000000000C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0848284000000C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 28
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBackClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnNext: TElPopupButton
      Left = 509
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'V'#7873' phi'#7871'u sau phi'#7871'u n'#224'y  (Ctrl+Page Down)'
      DrawDefaultFrame = False
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C00000008482
        84C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0000000000000000000848284C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0000000000000000000000000000000848284C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C000000000000000000000000000
        0000000000000000848284C0C0C0C0C0C000C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000848284C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0000000000000000000848284C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0000000848284C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 29
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNextClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnLast: TElPopupButton
      Left = 535
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'V'#7873' phi'#7871'u cu'#7889'i c'#249'ng  (Ctrl+End)'
      DrawDefaultFrame = False
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0000000848284C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0848284000000C0C0C000C0C0C0C0C0C0
        000000000000000000848284C0C0C0C0C0C0C0C0C0C0C0C0848284000000C0C0
        C000C0C0C0C0C0C0000000000000000000000000000000848284C0C0C0C0C0C0
        848284000000C0C0C000C0C0C0C0C0C000000000000000000000000000000000
        0000000000848284848284000000C0C0C000C0C0C0C0C0C00000000000000000
        00000000000000848284C0C0C0C0C0C0848284000000C0C0C000C0C0C0C0C0C0
        000000000000000000848284C0C0C0C0C0C0C0C0C0C0C0C0848284000000C0C0
        C000C0C0C0C0C0C0000000848284C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        848284000000C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = btnLastClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBDateEdit2: TdxDBDateEdit
      Left = 633
      Top = 66
      Width = 78
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 13
      Alignment = taCenter
      DataField = 'PAY_DATE'
      DataSource = dsDocument
      PopupBorder = pbFrame3D
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dxDBPopupEdit4: TdxDBPopupEdit
      Left = 366
      Top = 44
      Width = 91
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      OnEnter = dxDBPopupEdit4Enter
      OnExit = dxDBPopupEdit4Exit
      DataField = 'WORK_NAME'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlWork
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit4CloseUp
    end
    object dxDBDateEdit3: TdxDBDateEdit
      Left = 517
      Top = 21
      Width = 82
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Alignment = taCenter
      DataField = 'VOUCHER_DATE'
      DataSource = dsDocument
      PopupBorder = pbFrame3D
      UseEditMask = True
      StoredValues = 5
    end
    object dxDBPopupEdit2: TdxDBPopupEdit
      Left = 63
      Top = 178
      Width = 106
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 17
      OnEnter = dxDBPopupEdit2Enter
      DataField = 'MASODT'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit2CloseUp
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 288
      Top = 178
      Width = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 18
      DataField = 'DOC_AMOUNT'
      DataSource = dsDocument
      OnValidate = dxDBCalcEdit1Validate
      PopupBorder = pbFrame3D
    end
    object ElPopupButton5: TElPopupButton
      Left = 648
      Top = 176
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ph'#225't sinh theo '#273#7883'nh m'#7913'c chi ph'#237' nguy'#234'n v'#7853't li'#7879'u'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 21
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pedtTKCO: TdxPopupEdit
      Left = 573
      Top = 178
      Width = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 20
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtTKNOCloseUp
      OnInitPopup = pedtTKCOInitPopup
    end
    object pedtTKNO: TdxPopupEdit
      Left = 431
      Top = 178
      Width = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 19
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtTKNOCloseUp
      OnInitPopup = pedtTKNOInitPopup
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 79
      Top = 429
      Width = 432
      Style.ButtonStyle = bts3D
      TabOrder = 26
      AutoSize = False
      Caption = 
        'Phi'#7871'u n'#224'y '#273'ang ch'#7901' duy'#7879't ho'#7863'c ki'#7875'm tra l'#7841'i (Ch'#432'a c'#7853'p nh'#7853't v'#224'o s'#7893 +
        ' s'#225'ch k'#7871' to'#225'n)'
      DataField = 'DOCUMENT_TAG'
      DataSource = dsDocument
      ValueChecked = '1'
      ValueUnchecked = '0'
      Height = 21
    end
    object ElPopupButton2: TElPopupButton
      Left = 27
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm d'#242'ng '#273#7883'nh kho'#7843'n m'#7899'i '#7903' cu'#7889'i'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F8640FF359A55FF349A55FF349A54FF349A
        54FF16853AFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000E772FFFB2F7CDFFB2F7CDFFB2F7CDFFB2F7
        CDFF0E772FFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000E7730FFB2F7CDFF38EB7EFF38EB7EFFB2F7
        CDFF0E772FFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000F7730FFB2F7CDFF38EB7EFF38EB7EFFB2F7
        CDFF0E772FFF0000000000000000000000000000000000000000000000001685
        3AFF107731FF0F7731FF0F7731FF0E8434FFB2F7CDFF38EB7EFF38EB7EFFB2F7
        CDFF178439FF0E7730FF0E772FFF0E772FFF16853AFF0000000000000000399A
        58FFB2F7CDFFB2F7CDFFB2F7CDFFB2F7CDFFB2F7CDFF38EB7EFF38EB7EFFB2F7
        CDFFB2F7CDFFB2F7CDFFB2F7CDFFB2F7CDFF359A56FF0000000000000000399A
        58FFB2F7CDFF38EB7EFF38EB7EFF38EB7EFF38EB7EFF38EB7EFF38EB7EFF38EB
        7EFF38EB7EFF38EB7EFF38EB7EFFB2F7CDFF369A56FF0000000000000000399A
        58FFB2F7CDFF38EB7EFF38EB7EFF38EB7EFF38EB7EFF38EB7EFF38EB7EFF38EB
        7EFF38EB7EFF38EB7EFF38EB7EFFB2F7CDFF369A57FF0000000000000000399A
        58FFB2F7CDFFB2F7CDFFB2F7CDFFB2F7CDFFB2F7CDFF38EB7EFF38EB7EFFB2F7
        CDFFB2F7CDFFB2F7CDFFB2F7CDFFB2F7CDFF379A57FF00000000000000001F86
        40FF107731FF107731FF107731FF19843BFFB2F7CDFF38EB7EFF38EB7EFFB2F7
        CDFF0F8434FF0F7731FF0F7731FF0F7730FF16853AFF00000000000000000000
        0000000000000000000000000000107731FFB2F7CDFF3EEC82FF39EB7EFFB2F7
        CDFF107731FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000107731FFB2F7CDFF5CF195FF4FEF8DFFB2F7
        CDFF107731FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000107731FFB2F7CDFFB2F7CDFFB2F7CDFFB2F7
        CDFF107731FF0000000000000000000000000000000000000000000000000000
        000000000000000000000000000016853AFF399A58FF399A58FF399A58FF399A
        58FF1F8640FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 53
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a d'#242'ng '#273#7883'nh kho'#7843'n hi'#7879'n h'#224'nh'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009597
        C6FF1F258CFF1F258CFF1F258CFF1F258CFF1F258CFF1F258CFF1F258CFF1F25
        8CFF1F258CFF1F258CFF1F258CFF1F258CFF8E90C4FF00000000000000001F25
        8CFF85A9FCFF85A9FCFF85A9FCFF85A9FCFF85A9FCFF85A9FCFF85A9FCFF85A9
        FCFF85A9FCFF85A9FCFF85A9FCFF85A9FCFF1F258CFF00000000000000001F25
        8CFF85A9FCFF1F51F4FF1C4CF2FF1A47EFFF1842EDFF163DEAFF1339E8FF1236
        E6FF1235E6FF1235E6FF1235E6FF85A9FCFF1F258CFF00000000000000001F25
        8CFF85A9FCFF245BFAFF2157F7FF1F52F5FF1D4DF2FF1B48F0FF1843EDFF163E
        EBFF1439E8FF1236E6FF1235E6FF85A9FCFF1F258CFF00000000000000001F25
        8CFF85A9FCFF6C8EE7FF6C8CE6FF6B8AE5FF6A88E4FF6885E3FF6582E2FF617D
        E0FF5C78DFFF5873DEFF536EDDFF85A9FCFF1F258CFF00000000000000009698
        C7FF1F258CFF1F258CFF1F258CFF1F258CFF1F258CFF1F258CFF1F258CFF1F25
        8CFF1F258CFF1F258CFF1F258CFF1F258CFF9597C6FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 25
      ParentShowHint = False
      ShowHint = True
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHistory: TElPopupButton
      Left = 698
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem nh'#7853't k'#253' thay '#273#7893'i phi'#7871'u n'#224'y'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000084170910811307607C0D059F770703BF730201BF7200
        009F720000607200001000000000000000000000000000000000000000000000
        0000000000008D230D50881D0BEFA24E3EFFCFA296FFDEC0BAFFDCBDB7FFCA9B
        90FF953D36FF720000EF72000050000000000000000000000000000000000000
        0000952D119F9E4025FFE2BD9DFFFFF5DCFFFFF9EAFFD29F86FFC48C7DFFFFF7
        E4FFFFF3D6FFDBB295FF831D17FF7200008F0000000000000000000000009D37
        1550A54826FFF6DCACFFFEEEC8FFFFF3D6FFFFF6E1FFF8E6CFFFF4E1CBFFFFF5
        DDFFFFF2D1FFFEECC1FFF3D6A5FF831C14FF7200005000000000A5421910A13D
        17EFE2B47DFFFBE4AEFFFDEABEFFFFF0CBFFFFF3D4FFFFF4D9FFFFF3D8FFFFF2
        D1FFFEEEC7FFFDE8B8FFFBE1A8FFD7A472FF720000EF72000010A8471B60BA67
        35FFF8D994FFFAE0A4FFFCE5B1FFFDEABDFFFEEDC5FFFFEFC9FFFFEEC8FFFEEC
        C3FFFDE8B9FFFBE3ACFFF9DD9EFFF7D78EFF933420FF72000060AD4C1D9FDA9E
        5BFFFDDB93FFFEDE9DFFFEE1A5FFFDE4ADFFEDD8A9FFAD9F7FFFDAC89EFFF2DD
        ABFFF1DAA3FFF5D99BFFF8D892FFF6D383FFC3804AFF7200009FB1511FBFE5B0
        66FFCB895AFFEEC999FFFFE8B5FFFFE9B9FF504939FF9F9F9FFF000000FF0000
        00FF000000FFEACB87FFEDC278FFBE7643FFD39750FF720000BFB55621BFE5B1
        65FFD89E6EFFF1D4ADFFFFEFC9FFFFF0CCFF70695AFF606060FF000000FF796A
        47FFB69C63FFF5D17FFFEEC06BFFC9813EFFD29347FF730100BFB85B239FDC9E
        4FFFFFEFC9FFFFF1CFFFFFF2D3FFFFF3D5FFFFF3D6FFFFF2D4FF605B50FF0E0D
        0AFFB5A37BFFF5D286FFF2C665FFF1C25BFFC37B34FF7706029FBB5F2460CA7A
        2FFFFDEBC1FFFFF3D7FFFFF4DBFFFFF5DEFFFFF5DEFFFFF5DCFFFFF4D9FF605B
        50FF0E0D0BFFB7A989FFFDE2A6FFF8D17CFF9A3A16FF7B0B0460BD622510BC60
        25EFE6B368FFFFF5DDFFFFF7E2FFFFF8E5FFFFF8E6FFFFF7E4FFFFF6E0FFFFF4
        DAFF605B50FF6D6656FFFFE9BAFFDBA35FFF821508EF7E0F061000000000BE63
        2650C26A27FFF4D495FFFFF9E9FFFFFAEDFFFFFAEEFFF1DFD0FFEED9C9FFFFF6
        DFFFFFF3D8FFFFF1D0FFF2CD89FF963211FF861A0A5000000000000000000000
        0000BE63269FC16926FFE4B166FFFCF2DBFFFFFDF6FFD7A588FFC8917CFFFFF7
        E2FFFEF0CFFFDFAC6DFF9E3B14FF8E250E9F0000000000000000000000000000
        000000000000BD612550BA5E24EFC36E22FFDA9F57FFE4B77CFFE3B478FFD596
        4EFFB75E1AFF9B3514EF972F1250000000000000000000000000000000000000
        00000000000000000000BB5F2410B95B2360B456219FB1511FBFAC4B1DBFA846
        1B9FA33F18609F3B161000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 36
      ParentShowHint = False
      ShowHint = True
      OnClick = btnHistoryClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 1
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#232'n th'#234'm v'#224'o 1 d'#242'ng ngay v'#7883' tr'#237' hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF8548FFFF4848FFFF4848FFFF4848FFFF48
        48FFFF8548FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D90000FFFFCDB4FFFFCDB4FFFFCDB4FFFFCD
        B4FFD90000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D90000FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFD90000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D90000FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFD90000FF000000000000000000000000000000000000000000000000FF85
        48FFD90000FFD90000FFD90000FF9B0000FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFFF8548FFD90000FFD90000FFD90000FFFF8548FF0000000000000000FF48
        48FFFFCDB4FFFFCDB4FFFFCDB4FFFFCDB4FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFFFCDB4FFFFCDB4FFFFCDB4FFFFCDB4FFFF4848FF0000000000000000FF48
        48FFFFCDB4FFFF6D24FFFF6D24FFFF6D24FFFF6D24FFFF6D24FFFF6D24FFFF6D
        24FFFF6D24FFFF6D24FFFF6D24FFFFCDB4FFFF4848FF0000000000000000FF48
        48FFFFCDB4FFFF6D24FFFF6D24FFFF6D24FFFF6D24FFFF6D24FFFF6D24FFFF6D
        24FFFF6D24FFFF6D24FFFF6D24FFFFCDB4FFFF4848FF0000000000000000FF48
        48FFFFCDB4FFFFCDB4FFFFCDB4FFFFCDB4FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFFFCDB4FFFFCDB4FFFFCDB4FFFFCDB4FFFF4848FF0000000000000000FF85
        48FFD90000FFD90000FFD90000FF9B0000FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFD90000FFD90000FFD90000FFD90000FFFF8548FF00000000000000000000
        0000000000000000000000000000D90000FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFD90000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D90000FFFFCDB4FFFF6D24FFFF6D24FFFFCD
        B4FFD90000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D90000FFFFCDB4FFFFCDB4FFFFCDB4FFFFCD
        B4FFD90000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D90000FFFF4848FFFF4848FFFF4848FFFF48
        48FFFF8548FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 23
      ParentShowHint = False
      ShowHint = True
      Action = acInsDetail
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit2: TdxDBEdit
      Left = 225
      Top = 68
      Width = 328
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      DataField = 'TENKH'
      DataSource = dsDocument
      ReadOnly = True
      StoredValues = 64
    end
    object btnTemplate: TElPopupButton
      Left = 672
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#7885'n m'#7851'u in'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000939393FF939393FF939393FF939393FF939393FF939393FF939393FF9393
        93FF939393FF939393FF939393FF939393FF0000000000000000000000000000
        0000939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF939393FF0000000000000000000000000000
        0000939393FF00750CFF00750CFFEEEEEEFFEDEDEDFFECECECFFEBEBEBFFEAEA
        EAFFE9E9E9FFE8E8E8FFFFFFFFFF939393FF0000000000000000000000000000
        000000750CFFD3FFE9FF8EFDB4FF00750CFFEFEFEFFFEEEEEEFFEDEDEDFFECEC
        ECFFEBEBEBFFEAEAEAFFFFFFFFFF939393FF0000000000000000000000000075
        0CFFD3FFE9FF41EF7DFF58EF8BFF8EF9B2FF00750CFFF0F0F0FFEFEFEFFFEEEE
        EEFFEDEDEDFFECECECFFFFFFFFFF939393FF000000000000000000750CFFD3FF
        E9FF7FFFAEFF76BD8CFF00750CFF6FF79EFF84F2A9FF00750CFFF1F1F1FFF0F0
        F0FFEFEFEFFFEEEEEEFFFFFFFFFF939393FF000000000000000050795DFF0075
        0CFFA7DBB7FF00750CFFF6F6F6FF00750CFF88FDB0FF8BF4AFFF00750CFFF1F1
        F1FFF1F1F1FFF0F0F0FFFFFFFFFF939393FF0000000000000000000000000014
        00FF00750CFFFFFFFFFFF8F8F8FFF2F2F2FF00750CFFD3FFE9FF00750CFFE7EC
        E8FFF2F2F2FFF1F1F1FFFFFFFFFF939393FF0000000000000000000000000000
        0000939393FFFFFFFFFFFAFAFAFFF9F9F9FFF2F2F2FF00750CFFC5C5C5FFF5F5
        F5FFF4F4F4FFF3F3F3FFF5F5F5FF939393FF0000000000000000000000000000
        0000939393FFFFFFFFFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8F8FF9393
        93FF939393FF939393FF939393FF939393FF0000000000000000000000000000
        0000939393FFFFFFFFFFFDFDFDFFFCFCFCFFFBFBFBFFFAFAFAFFFAFAFAFF9393
        93FFE1E1E1FFE1E1E1FFB5B5B5FF939393FF0000000000000000000000000000
        0000939393FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFBFBFF9393
        93FFE1E1E1FFB5B5B5FF939393FF000000000000000000000000000000000000
        0000939393FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFF9393
        93FFB5B5B5FF939393FF00000000000000000000000000000000000000000000
        0000939393FF939393FF939393FF939393FF939393FF939393FF939393FF9393
        93FF939393FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphRight
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 35
      ParentShowHint = False
      ShowHint = True
      OnClick = btnTemplateClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pedtBranch: TdxDBExtLookupEdit
      Left = 633
      Top = 21
      Width = 78
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      DataField = 'BRANCH_ID'
      DataSource = dsDocument
      OnCloseUp = pedtBranchCloseUp
      OnInitPopup = pedtBranchInitPopup
      DBGridLayout = dxDBGridLayout1
      PickListField = 'BRANCH_ID'
    end
    object btnPrintBatch: TElPopupButton
      Left = 620
      Top = 427
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'In li'#234'n t'#7909'c nhi'#7873'u ch'#7913'ng t'#7915' (Ctrl+P)'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000C89460FDCA9764FFCA9664FFCA9664FFCA9664FFCA9663FFC996
        63FFC99663FFCA9764FFC89360FD000000000000000000000000626262995C5C
        5CD2575757FFC79460FFF9F7F6FFF9F1ECFFF9F1EBFFF8F0E9FFF7EDE6FFF4EA
        E1FFF2E8DEFFFAF8F6FFC79360FF232323FF222222D12222227A696969FDA6A6
        A6FFB4B4B4FF808080FFAEABA9FFC4BFBCFFC4BFBCFFC4BFBCFFC4BFBCFFC4BF
        BCFFC4BFBCFFACA9A7FF2B2B2BFFB4B4B4FF9A9A9AFF222222FF6F6F6FFFB4B4
        B4FFB4B4B4FF949494FF808080FF808080FF787878FF6D6D6DFF606060FF5151
        51FF424242FF414141FF6D6D6DFFB4B4B4FFB4B4B4FF242424FF747474FFBABA
        BAFFBABABAFF8C8C8CFFD4D4D4FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
        B8FFB8B8B8FFD3D3D3FF828282FFBABABAFFBABABAFF292929FF797979FFD7D7
        D7FFD7D7D7FF969696FFD8D8D8FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
        BEFFBEBEBEFFD7D7D7FF8D8D8DFFD7D7D7FFD7D7D7FF3E3E3EFF7D7D7DFFF9F9
        F9FFF9F9F9FFAAAAAAFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
        CBFFCBCBCBFFDFDFDFFFA2A2A2FFF9F9F9FFF9F9F9FF606060FF808080F9FCFC
        FCFFFCFCFCFFCBCBCBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFF2F2F2FFC5C5C5FFFCFCFCFFFCFCFCFF6F6F6FFE808080D2D2D2
        D2FFE8E8E8FF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C
        7CFF7C7C7CFF7C7C7CFF7C7C7CFFE8E8E8FFC3C3C3FF555555DC808080459999
        99FFCCCCCCFFC06E36FFE4E0DBFFF8F5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F6FFC27139FFC2C2C2FF737373FF46464645000000008080
        8063808080F3BD652EFFF8F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8F6F5FFBB5E29FF585858F35252526300000000000000000000
        000080808009BD6831FFF8F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F5F3FFC1723CFFBE773FFF5F5F5F090000000000000000000000000000
        000000000000BF6D35FFBE6932FFBA5D29FFBA5D29FFBA5D29FFBA5D29FFBA5D
        29FFBD662FFFE2B5838DBD6B35FF000000000000000000000000000000000000
        000080808009BF6D35FFF2DFCBFFF0D9BFFFF0D9BFFFF0D9BFFFF0D9BFFFF0D9
        BFFFF2DFC8FFF0D9BFFFBC6A34FF5F5F5F090000000000000000000000000000
        000000000000BE6B33FFF2DFCAFFF0D9BFFFF0D9BFFFF0D9BFFFF0D9BFFFF1DD
        C7FFEAC7A2FFC55D2FFF00000000000000000000000000000000000000000000
        000000000000C07C4360BE632CD4BD612BFFBF6730FFBF6730FFC06730FFBE6D
        35FFB43B0BDC0000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Layout = blGlyphBottom
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 33
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPrintBatchClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtTygia: TdxDBEdit
      Left = 633
      Top = 44
      Width = 78
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      CharCase = ecUpperCase
      DataField = 'TYGIA'
      DataSource = dsDocument
    end
    object edtNgoaite: TdxDBPopupEdit
      Left = 519
      Top = 44
      Width = 82
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      OnKeyDown = edtNgoaiteKeyDown
      DataField = 'CURRENCY_ID'
      DataSource = dsDocument
      PopupControl = PopupFrm.grdNgoaite
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = edtNgoaiteCloseUp
    end
    object is_import: TdxDBCheckEdit
      Left = 505
      Top = 66
      Width = 89
      Style.ButtonStyle = bts3D
      TabOrder = 12
      Alignment = taRightJustify
      Caption = 'D'#7919' li'#7879'u import'
      DataField = 'is_ghd_import'
      DataSource = dsDocument
      ValueChecked = '1'
      ValueUnchecked = '0'
      StoredValues = 1
    end
    object locFrmGroup_Root: TdxLayoutGroup
      AutoAligns = [aaVertical]
      AlignHorz = ahClient
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFrmGroup6: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        ShowBorder = False
        object locFrmGroup1: TdxLayoutGroup
          Caption = 'Th'#244'ng tin chung'
          UseIndent = False
          object locFrmGroup2: TdxLayoutGroup
            ShowCaption = False
            ShowBorder = False
            object locFrmGroup5: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'New Group'
              ShowBorder = False
              UseIndent = False
              object locFrmGroup8: TdxLayoutGroup
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locFrmGroup20: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object locFrmItem1: TdxLayoutItem
                    AutoAligns = []
                    Caption = 'S'#7889' phi'#7871'u'
                    Offsets.Top = 2
                    Control = dxDBEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object locFrmItem2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = ' Ng'#224'y l'#7853'p'
                    Offsets.Top = 2
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object locFrmItem15: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ch'#7913'ng t'#7915
                    Offsets.Top = 2
                    Control = dxDBEdit3
                    ControlOptions.ShowBorder = False
                  end
                end
                object locFrmItem18: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'Ng'#224'y    '
                  Offsets.Top = 2
                  Control = dxDBDateEdit3
                  ControlOptions.ShowBorder = False
                end
                object locFrmItem11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = #272#417'n v'#7883
                  Offsets.Top = 2
                  Control = pedtBranch
                  ControlOptions.ShowBorder = False
                end
              end
              object locFrmGroup3: TdxLayoutGroup
                ShowCaption = False
                ShowBorder = False
                object locFrmGroup14: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object locFrmGroup7: TdxLayoutGroup
                    Caption = 'Warehouse'
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locWare: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Kho h'#224'ng '
                      Offsets.Top = 2
                      Control = dxDBPopupEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object locToWare: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = #273#7871'n kho'
                      Offsets.Top = 2
                      Control = dxDBPopupEdit3
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmWork: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'C'#244'ng tr'#236'nh'
                      Offsets.Top = 2
                      Control = dxDBPopupEdit4
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmItem32: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      Caption = 'Ti'#7873'n t'#7879
                      Offsets.Top = 2
                      Control = edtNgoaite
                      ControlOptions.ShowBorder = False
                    end
                    object locTygia: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      Caption = 'T'#7927' gi'#225
                      Offsets.Top = 2
                      Control = edtTygia
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locFrmGroup13: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locFrmDT: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'M'#227' s'#7889' '
                      Offsets.Top = 2
                      Control = pmDT
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmItem31: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'T'#234'n'
                      Offsets.Top = 2
                      Control = dxDBEdit2
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmItem13: TdxLayoutItem
                      Caption = 'dxDBCheckEdit2'
                      ShowCaption = False
                      Control = is_import
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmItem3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      Caption = 'H'#7841'n tr'#7843
                      Control = dxDBDateEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object locFrmGroup16: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object locFrmGroup19: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locFrmHT: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'H'#7885' t'#234'n'
                      Offsets.Top = 2
                      Control = dxDBEdit8
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmDC: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = #272#7883'a ch'#7881
                      Offsets.Top = 2
                      Control = dxDBEdit5
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locFrmItem9: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'N'#7897'i dung'
                    Offsets.Top = 2
                    Control = dxDBMemo1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
        object locFrmMiddle: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFrmItem21: TdxLayoutItem
            AutoAligns = []
            AlignVert = avCenter
            Caption = 'Th'#224'nh ph'#7849'm'
            Offsets.Left = 1
            Control = dxDBPopupEdit2
            ControlOptions.ShowBorder = False
          end
          object locFrmItem22: TdxLayoutItem
            AutoAligns = []
            AlignVert = avCenter
            Caption = ' S'#7889' l'#432#7907'ng c'#7847'n s'#7843'n xu'#7845't  '
            Control = dxDBCalcEdit1
            ControlOptions.ShowBorder = False
          end
          object locFrmItem25: TdxLayoutItem
            AutoAligns = []
            AlignVert = avCenter
            Caption = ' T'#224'i kho'#7843'n n'#7907'  '
            Control = pedtTKNO
            ControlOptions.ShowBorder = False
          end
          object locFrmItem24: TdxLayoutItem
            AutoAligns = []
            AlignVert = avCenter
            Caption = ' T'#224'i kho'#7843'n c'#243'  '
            Control = pedtTKCO
            ControlOptions.ShowBorder = False
          end
          object locFrmItem23: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton5'
            ShowCaption = False
            Control = ElPopupButton5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object locFrmItem6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'grdDetail'
          ShowCaption = False
          Control = grdDetail
        end
        object locFrmGroup15: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFrmItem30: TdxLayoutItem
            Caption = 'ElPopupButton7'
            ShowCaption = False
            Control = ElPopupButton7
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem27: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem28: TdxLayoutItem
            Caption = 'ElPopupButton6'
            ShowCaption = False
            Control = ElPopupButton6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem26: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avCenter
            Caption = 'dxDBCheckEdit1'
            ShowCaption = False
            Control = dxDBCheckEdit1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFirst: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton5'
            Offsets.Left = 10
            ShowCaption = False
            Control = btnFirst
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locBack: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton6'
            ShowCaption = False
            Control = btnBack
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locNext: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton7'
            ShowCaption = False
            Control = btnNext
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locEnd: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton8'
            Offsets.Right = 5
            ShowCaption = False
            Control = btnLast
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem10: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'BitBtn1'
            Offsets.Left = 2
            ShowCaption = False
            Control = btnPrint
            ControlOptions.ShowBorder = False
          end
          object locFrmItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem12: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = btnPrintBatch
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton4'
            ShowCaption = False
            Control = ElPopupButton4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem7: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = btnTemplate
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem29: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton7'
            ShowCaption = False
            Control = btnHistory
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object locFrmGroup9: TdxLayoutGroup
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
      end
      object locFrmGroup4: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'New Group'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locbtnIns: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFrmItem14: TdxLayoutItem
          Caption = 'BitBtn2'
          Offsets.Left = 3
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
        object locFrmItem16: TdxLayoutItem
          Caption = 'BitBtn4'
          Offsets.Left = 5
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFrmItem17: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = BitBtn5
          ControlOptions.ShowBorder = False
        end
        object locFrmItem8: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnInvoice
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFrmBtnPSPXK: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = btnPSPXK
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFrmItem19: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn7'
          ShowCaption = False
          Control = BitBtn7
          ControlOptions.ShowBorder = False
        end
        object locFrmItem20: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn8'
          ShowCaption = False
          Control = BitBtn8
          ControlOptions.ShowBorder = False
        end
      end
    end
    object locFrmGroup11: TdxLayoutGroup
      AutoAligns = [aaVertical]
      AlignHorz = ahClient
      Offsets.Left = 2
      ShowCaption = False
      ShowBorder = False
      UseIndent = False
      object locFrmGroup12: TdxLayoutGroup
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
      end
      object locFrmGroup10: TdxLayoutGroup
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 204
    Top = 301
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ActionList1: TActionList
    Left = 508
    Top = 248
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsDocument
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsDocument
    end
    object acPost: TAction
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Enabled = False
      ShortCut = 16467
      OnExecute = acPostExecute
    end
    object acCancel: TAction
      Category = 'Dataset'
      Caption = '&Kh'#171'ng l'#173'u'
      Enabled = False
      OnExecute = acCancelExecute
    end
    object acEntryDetail: TAction
      Caption = 'Xem &ho'#184' '#174#172'n'
      ShortCut = 16452
    end
    object acDelDetail: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184' d'#223'ng n'#181'y                      Ctrl + Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsDocEntry
    end
    object acNewTSCD: TAction
      Caption = 'acNewTSCD'
    end
    object acIn: TAction
      Caption = '&In phi'#213'u'
      ShortCut = 114
      OnExecute = acInExecute
    end
    object acDesign: TAction
      Caption = 'S'#246'a &m'#201'u'
      ShortCut = 115
      OnExecute = acDesignExecute
    end
    object acSetbeforePrint: TAction
      Caption = 'acSetbeforePrint'
      OnExecute = acSetbeforePrintExecute
    end
    object acAfterSelect: TAction
      Category = 'Detail'
      Caption = 'acAfterSelect'
    end
    object acEditTSCD: TAction
      Caption = 'acEditTSCD'
    end
    object acXulyTK: TAction
      Caption = 'acXulyTK'
    end
    object acSetPriceDef: TAction
      Category = 'Detail'
      Caption = 'acSetPriceDef'
      OnExecute = acSetPriceDefExecute
    end
    object acPrintDirect: TAction
      Caption = 'acPrintDirect'
      ShortCut = 16464
      OnExecute = acPrintDirectExecute
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsDocEntry
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsDocEntry
    end
    object acInsDetail: TAction
      Category = 'Detail'
      Caption = 'acInsDetail'
      ShortCut = 45
      OnExecute = acInsDetailExecute
    end
    object acF6: TAction
      Caption = 'acF6'
      OnExecute = acF6Execute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default'
      'BtnGenDocs'
      'Template')
    Categories.ItemsVisibles = (
      255
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 236
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Caption = 'Th'#234'm d'#242'ng m'#7899'i                              Insert'
      Category = 0
      Hint = 'Th'#234'm d'#242'ng m'#7899'i'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Action = acDelDetail
      Caption = 'X'#243'a d'#242'ng n'#224'y                      Ctrl + Delete'
      Category = 0
      Hint = 'X'#243'a d'#242'ng hi'#7879'n t'#7841'i'
      Visible = ivAlways
    end
    object bbtnGenDoc: TdxBarButton
      Caption = 'Ph'#225't sinh phi'#7871'u nh'#7853'p CPMH, thu'#7871' NK...'
      Category = 0
      Hint = 
        'Ph'#225't sinh phi'#7871'u nh'#7853'p chi ph'#237' mua h'#224'ng, thu'#7871' nh'#7853'p kh'#7849'u, thu'#7871' ti'#234'u' +
        ' th'#7909'...'
      Visible = ivAlways
      OnClick = bbtnGenDocClick
    end
    object dxBarButton4: TdxBarButton
      Action = acPrintDirect
      Caption = 'In tr'#7921'c ti'#7871'p ra m'#225'y in'
      Category = 0
      Hint = 'In tr'#7921'c ti'#7871'p ra m'#225'y in'
      Visible = ivAlways
    end
    object bbtnPSTheoDM: TdxBarButton
      Caption = 'Ph'#225't sinh theo '#273#7883'nh m'#7913'c nguy'#234'n li'#7879'u'
      Category = 0
      Hint = 'Ph'#225't sinh theo '#273#7883'nh m'#7913'c nguy'#234'n li'#7879'u'
      Visible = ivAlways
      OnClick = bbtnPSTheoDMClick
    end
    object bbtnHTNT: TdxBarButton
      Caption = 'H'#7841'ch to'#225'n b'#7857'ng ngo'#7841'i t'#7879
      Category = 0
      Hint = 'H'#7841'ch to'#225'n b'#7857'ng ngo'#7841'i t'#7879
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnHTNTClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Ch'#7885'n th'#234'm c'#225'c kh'#225'c c'#7897't b'#7883' gi'#7845'u'
      Category = 0
      Hint = 'Ch'#7885'n th'#234'm c'#225'c kh'#225'c c'#7897't b'#7883' gi'#7845'u'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object bbtnPSTraBaohiem: TdxBarButton
      Caption = 'Ph'#225't sinh b'#250't to'#225'n thanh to'#225'n nh'#224' B'#7843'o hi'#7875'm'
      Category = 0
      Hint = 'Ph'#225't sinh b'#250't to'#225'n thanh to'#225'n nh'#224' B'#7843'o hi'#7875'm'
      Visible = ivNever
    end
    object bbtnCopy: TdxBarButton
      Caption = 'Ph'#225't sinh phi'#7871'u m'#7899'i gi'#7889'ng y phi'#7871'u c'#361
      Category = 1
      Hint = 'Ph'#225't sinh phi'#7871'u m'#7899'i gi'#7889'ng y phi'#7871'u c'#361
      Visible = ivAlways
      OnClick = bbtnCopyClick
    end
    object bbtnPSHangKM: TdxBarButton
      Caption = 'Ph'#225't sinh h'#224'ng khuy'#7871'n m'#227'i tr'#234'n phi'#7871'u n'#224'y'
      Category = 1
      Enabled = False
      Hint = 'Ph'#225't sinh h'#224'ng khuy'#7871'n m'#227'i tr'#234'n phi'#7871'u n'#224'y'
      Visible = ivAlways
      OnClick = bbtnPSHangKMClick
    end
    object bbtnPSHangKMMoi: TdxBarButton
      Caption = 'Ph'#225't sinh h'#224'ng khuy'#7871'n m'#227'i tr'#234'n phi'#7871'u m'#7899'i'
      Category = 1
      Enabled = False
      Hint = 'Ph'#225't sinh h'#224'ng khuy'#7871'n m'#227'i tr'#234'n phi'#7871'u m'#7899'i'
      Visible = ivAlways
      OnClick = bbtnPSHangKMMoiClick
    end
    object bbtnThuNhaBH: TdxBarButton
      Caption = 'Ph'#225't sinh b'#250't to'#225'n thu ti'#7873'n nh'#224' b'#7843'o hi'#7875'm'
      Category = 1
      Hint = 'Ph'#225't sinh b'#250't to'#225'n thu ti'#7873'n nh'#224' b'#7843'o hi'#7875'm'
      Visible = ivNever
    end
    object bbtnPSBTXGV: TdxBarButton
      Caption = 'Ph'#225't sinh b'#250't to'#225'n xu'#7845't kho t'#7921' '#273#7897'ng'
      Category = 0
      Hint = 'Ph'#225't sinh b'#250't to'#225'n xu'#7845't kho t'#7921' '#273#7897'ng'
      Visible = ivAlways
      OnClick = bbtnPSBTXGVClick
    end
    object bbtnPSPXGV: TdxBarButton
      Caption = 'Ph'#225't sinh phi'#7871'u xu'#7845't kho gi'#225' v'#7889'n t'#7921' '#273#7897'ng'
      Category = 0
      Hint = 'Ph'#225't sinh phi'#7871'u xu'#7845't kho gi'#225' v'#7889'n t'#7921' '#273#7897'ng'
      Visible = ivAlways
      OnClick = bbtnPSPXGVClick
    end
    object bbtnXemPXK: TdxBarButton
      Caption = 'Xem l'#7841'i phi'#7871'u xu'#7845't kho gi'#225' v'#7889'n t'#7921' '#273#7897'ng'
      Category = 0
      Hint = 'Xem l'#7841'i phi'#7871'u xu'#7845't kho gi'#225' v'#7889'n t'#7921' '#273#7897'ng'
      Visible = ivAlways
      OnClick = bbtnXemPXKClick
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Ph'#225't sinh phi'#7871'u thu ti'#7873'n cho ch'#7913'ng t'#7915' n'#224'y'
      Category = 0
      Hint = 'Ph'#225't sinh phi'#7871'u thu ti'#7873'n cho ch'#7913'ng t'#7915' n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Ph'#225't sinh phi'#7871'u chi ti'#7873'n cho ch'#7913'ng t'#7915' n'#224'y'
      Category = 0
      Hint = 'Ph'#225't sinh phi'#7871'u chi ti'#7873'n cho ch'#7913'ng t'#7915' n'#224'y'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object bbtnOutDetail: TdxBarButton
      Caption = 'Th'#244'ng tin chi ti'#7871't c'#225'c l'#244' h'#224'ng xu'#7845't ra'
      Category = 0
      Hint = 'Th'#244'ng tin chi ti'#7871't c'#225'c l'#244' h'#224'ng xu'#7845't ra'
      Visible = ivAlways
      ShortCut = 16452
      OnClick = bbtnOutDetailClick
    end
    object bbtnOutAll: TdxBarButton
      Caption = 'Ph'#225't sinh gi'#225' xu'#7845't kho theo ph'#432#417'ng ph'#225'p '#273#259'ng k'#253
      Category = 0
      Hint = 'Ph'#225't sinh gi'#225' xu'#7845't kho theo ph'#432#417'ng ph'#225'p '#273#259'ng k'#253
      Visible = ivAlways
      OnClick = bbtnOutAllClick
    end
    object btnPSPNHBTL: TdxBarButton
      Caption = 'Ph'#225't sinh phi'#7871'u nh'#7853'p kho h'#224'ng b'#7883' tr'#7843' l'#7841'i'
      Category = 0
      Hint = 'Ph'#225't sinh phi'#7871'u nh'#7853'p kho h'#224'ng b'#7883' tr'#7843' l'#7841'i'
      Visible = ivAlways
      OnClick = btnPSPNHBTLClick
    end
    object bbtnPhieuDK: TdxBarButton
      Caption = 'M'#7851'u phi'#7871'u '#273#259'ng k'#253
      Category = 2
      Hint = 'M'#7851'u phi'#7871'u '#273#259'ng k'#253
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnPhieuDKClick
    end
    object bbtnPhieuNC: TdxBarButton
      Caption = 'M'#7851'u phi'#7871'u n'#7907' c'#243
      Category = 2
      Hint = 'M'#7851'u phi'#7871'u n'#7907' c'#243
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbtnPhieuNCClick
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Ph'#225't sinh b'#250't to'#225'n thu'#7871' nh'#7853'p kh'#7849'u'
      Category = 0
      Hint = 'Ph'#225't sinh b'#250't to'#225'n thu'#7871' nh'#7853'p kh'#7849'u'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
  end
  object pmEntry: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnGenDoc
        Visible = True
      end
      item
        Item = bbtnPSTheoDM
        Visible = True
      end
      item
        Item = dxBarButton7
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        Item = bbtnHTNT
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnOutAll
        Visible = True
      end>
    UseOwnFont = False
    Left = 272
    Top = 240
  end
  object dplDocReport: TppDBPipeline
    DataSource = dsDocument
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    SkipWhenNoRecords = False
    UserName = 'dplDocReport'
    Left = 444
    Top = 280
    object dplDocReportppField1: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 0
    end
    object dplDocReportppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dplDocReportppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dplDocReportppField4: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object dplDocReportppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dplDocReportppField6: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 5
    end
    object dplDocReportppField7: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 6
    end
    object dplDocReportppField8: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 7
    end
    object dplDocReportppField9: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 8
    end
    object dplDocReportppField10: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object dplDocReportppField11: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object dplDocReportppField12: TppField
      FieldAlias = 'TO_WAREHOUSE'
      FieldName = 'TO_WAREHOUSE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object dplDocReportppField13: TppField
      FieldAlias = 'PAY_DATE'
      FieldName = 'PAY_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 12
    end
    object dplDocReportppField14: TppField
      FieldAlias = 'VOUCHER_DATE'
      FieldName = 'VOUCHER_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 13
    end
    object dplDocReportppField15: TppField
      FieldAlias = 'LASTMODIFY'
      FieldName = 'LASTMODIFY'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object dplDocReportppField16: TppField
      FieldAlias = 'DIACHIKH'
      FieldName = 'DIACHIKH'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object dplDocReportppField17: TppField
      FieldAlias = 'MASOTHUE'
      FieldName = 'MASOTHUE'
      FieldLength = 63
      DisplayWidth = 63
      Position = 16
    end
    object dplDocReportppField18: TppField
      FieldAlias = 'TENKH'
      FieldName = 'TENKH'
      FieldLength = 126
      DisplayWidth = 126
      Position = 17
    end
    object dplDocReportppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object dplDocReportppField20: TppField
      FieldAlias = 'WORK_NAME'
      FieldName = 'WORK_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 19
    end
    object dplDocReportppField21: TppField
      FieldAlias = 'MASODT'
      FieldName = 'MASODT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 20
    end
    object dplDocReportppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAI_DT'
      FieldName = 'LOAI_DT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object dplDocReportppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_AMOUNT'
      FieldName = 'DOC_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object dplDocReportppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENT_TAG'
      FieldName = 'DOCUMENT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object dplDocReportppField25: TppField
      FieldAlias = 'WORK_ID'
      FieldName = 'WORK_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 24
    end
    object dplDocReportppField26: TppField
      FieldAlias = 'BRANCH_ID'
      FieldName = 'BRANCH_ID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object dplDocReportppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE'
      FieldName = 'TEMPLATE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object dplDocReportppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIA'
      FieldName = 'TYGIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object dplDocReportppField29: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 28
    end
  end
  object dplDocEntry: TppDBPipeline
    DataSource = dsDocEntry
    SkipWhenNoRecords = False
    UserName = 'dplDocEntry'
    Left = 472
    Top = 280
    object dplDocEntryppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_VALUE'
      FieldName = 'DEBIT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object dplDocEntryppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_VALUE'
      FieldName = 'CREDIT_VALUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object dplDocEntryppField3: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 2
    end
    object dplDocEntryppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dplDocEntryppField5: TppField
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object dplDocEntryppField6: TppField
      FieldAlias = 'ACCOUNT_ID'
      FieldName = 'ACCOUNT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object dplDocEntryppField7: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object dplDocEntryppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dplDocEntryppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dplDocEntryppField10: TppField
      FieldAlias = 'MAKHOHANG'
      FieldName = 'MAKHOHANG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object dplDocEntryppField11: TppField
      FieldAlias = 'OBJECT_ID'
      FieldName = 'OBJECT_ID'
      FieldLength = 31
      DisplayWidth = 31
      Position = 10
    end
    object dplDocEntryppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTYPE_ID'
      FieldName = 'OTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object dplDocEntryppField13: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 127
      DisplayWidth = 127
      Position = 12
    end
    object dplDocEntryppField14: TppField
      FieldAlias = 'SUBINFO_2'
      FieldName = 'SUBINFO_2'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object dplDocEntryppField15: TppField
      FieldAlias = 'SUBINFO_1'
      FieldName = 'SUBINFO_1'
      FieldLength = 127
      DisplayWidth = 127
      Position = 14
    end
    object dplDocEntryppField16: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object dplDocEntryppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROCESS_FLAG'
      FieldName = 'PROCESS_FLAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object dplDocEntryppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACCOUNT_TAG'
      FieldName = 'ACCOUNT_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object dplDocEntryppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAITK'
      FieldName = 'LOAITK'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object dplDocEntryppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'HASAMOUNT'
      FieldName = 'HASAMOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object dplDocEntryppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
  end
  object dsgReport: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 388
    Top = 280
  end
  object rptDocReport: TppReport
    AutoStop = False
    DataPipeline = dplDocReport
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
    Left = 416
    Top = 280
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplDocReport'
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
        Caption = 'Nh'#7853'p ch'#7913'ng t'#7915
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 96
    Top = 208
  end
  object qryDocument: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM DOCUMENTS'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE DOCUMENTS SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   DOC_ID = :DOC_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   DOCTYPE_ID = :DOCTYPE_ID,'
      '   DOC_DATE = :DOC_DATE,'
      '   DOC_PERSON = :DOC_PERSON,'
      '   DOC_PERSONADDR = :DOC_PERSONADDR,'
      '   DOC_VOUCHER = :DOC_VOUCHER,'
      '   DOC_NOTES = :DOC_NOTES,'
      '   WAREHOUSE_ID = :WAREHOUSE_ID,'
      '   MADOITUONG = :MADOITUONG,'
      '   LOAIDOITUONG = :LOAIDOITUONG,'
      '   LASTMODIFY = :LASTMODIFY,'
      '   TO_WAREHOUSE = :TO_WAREHOUSE,'
      '   PAY_DATE = :PAY_DATE,'
      '   WORK_ID = :WORK_ID,'
      '   VOUCHER_DATE = :VOUCHER_DATE,'
      '   TEMPLATE_ID = :TEMPLATE_ID,'
      '   MASODT = :MASODT,'
      '   LOAI_DT = :LOAI_DT,'
      '   DOC_AMOUNT = :DOC_AMOUNT,'
      '   DOCUMENT_TAG = :DOCUMENT_TAG,'
      '   TEMPLATE = :TEMPLATE,'
      '   TYGIA = :TYGIA,'
      '   CURRENCY_ID = :CURRENCY_ID,'
      '   IS_GHD_IMPORT = :IS_GHD_IMPORT'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO DOCUMENTS('
      '   BRANCH_ID, /*PK*/'
      '   DOC_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   DOCTYPE_ID,'
      '   DOC_DATE,'
      '   DOC_PERSON,'
      '   DOC_PERSONADDR,'
      '   DOC_VOUCHER,'
      '   DOC_NOTES,'
      '   WAREHOUSE_ID,'
      '   MADOITUONG,'
      '   LOAIDOITUONG,'
      '   LASTMODIFY,'
      '   TO_WAREHOUSE,'
      '   PAY_DATE,'
      '   WORK_ID,'
      '   VOUCHER_DATE,'
      '   TEMPLATE_ID,'
      '   MASODT,'
      '   LOAI_DT,'
      '   DOC_AMOUNT,'
      '   DOCUMENT_TAG,'
      '   TEMPLATE,'
      '   TYGIA,'
      '   CURRENCY_ID,'
      '   IS_GHD_IMPORT)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :DOC_ID,'
      '   :PERIOD_ID,'
      '   :DOCTYPE_ID,'
      '   :DOC_DATE,'
      '   :DOC_PERSON,'
      '   :DOC_PERSONADDR,'
      '   :DOC_VOUCHER,'
      '   :DOC_NOTES,'
      '   :WAREHOUSE_ID,'
      '   :MADOITUONG,'
      '   :LOAIDOITUONG,'
      '   :LASTMODIFY,'
      '   :TO_WAREHOUSE,'
      '   :PAY_DATE,'
      '   :WORK_ID,'
      '   :VOUCHER_DATE,'
      '   :TEMPLATE_ID,'
      '   :MASODT,'
      '   :LOAI_DT,'
      '   :DOC_AMOUNT,'
      '   :DOCUMENT_TAG,'
      '   :TEMPLATE,'
      '   :TYGIA,'
      '   :CURRENCY_ID,'
      '   :IS_GHD_IMPORT)')
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID'
      'BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryDocumentAfterCancel
    BeforeEdit = qryDocumentBeforeEdit
    AfterEdit = qryDocumentAfterEdit
    BeforeDelete = qryDocumentBeforeDelete
    AfterDelete = qryDocumentAfterDelete
    BeforeInsert = qryDocumentBeforeInsert
    AfterInsert = qryDocumentAfterInsert
    AfterOpen = qryDocumentAfterOpen
    BeforePost = qryDocumentBeforePost
    AfterPost = qryDocumentAfterPost
    OnNewRecord = qryDocumentNewRecord
    OnPostError = qryDocumentPostError
    OnDeleteError = qryDocumentDeleteError
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , PERIOD_ID'
      '     , DOCTYPE_ID'
      '     , DOC_DATE'
      '     , DOC_PERSON'
      '     , DOC_PERSONADDR'
      '     , DOC_VOUCHER'
      '     , DOC_NOTES'
      '     , WAREHOUSE_ID'
      '     , MADOITUONG'
      '     , LOAIDOITUONG'
      '     , lastmodify'
      '     , TO_WAREHOUSE'
      '     , PAY_DATE'
      '     , DOCUMENTS.WORK_ID'
      '     , VOUCHER_DATE'
      '     , OBJECT_LIST.SUBINFO_1 DIACHIKH'
      '     , OBJECT_LIST.SUBINFO_2 MASOTHUE'
      '     , OBJECT_LIST.OBJECT_NAME TENKH'
      '     , TEMPLATE_ID'
      '     , WORK_NAME'
      '     , MASODT'
      '     , LOAI_DT'
      '     , DOC_AMOUNT'
      '     , DOCUMENT_TAG'
      '     , BRANCH_ID'
      '     , TEMPLATE'
      '     , TYGIA'
      '     , CURRENCY_ID'
      '     , IS_GHD_IMPORT'
      'FROM DOCUMENTS'
      
        'LEFT JOIN OBJECT_LIST on (DOCUMENTS.MADOITUONG=OBJECT_LIST.OBJEC' +
        'T_ID '
      'and DOCUMENTS.LOAIDOITUONG=OBJECT_LIST.OTYPE_ID)'
      'LEFT JOIN WORK_LIST ON (WORK_LIST.WORK_ID = DOCUMENTS.WORK_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and DOC_ID=:DOC_ID and BRANCH_ID = :B' +
        'RANCH_ID')
    FieldOptions = []
    Left = 32
    Top = 238
    object qryDocumentDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      OnChange = qryDocumentDOC_IDChange
      Size = 30
    end
    object qryDocumentDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
    end
    object qryDocumentLOAIDOITUONG: TSmallintField
      FieldName = 'LOAIDOITUONG'
    end
    object qryDocumentDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
      Required = True
      OnChange = qryDocumentDOC_DATEChange
    end
    object qryDocumentPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryDocumentDOC_PERSON: TWideStringField
      FieldName = 'DOC_PERSON'
      Size = 126
    end
    object qryDocumentDOC_PERSONADDR: TWideStringField
      FieldName = 'DOC_PERSONADDR'
      Size = 126
    end
    object qryDocumentDOC_VOUCHER: TWideStringField
      FieldName = 'DOC_VOUCHER'
      Size = 126
    end
    object qryDocumentDOC_NOTES: TWideStringField
      FieldName = 'DOC_NOTES'
      Size = 255
    end
    object qryDocumentWAREHOUSE_ID: TWideStringField
      FieldName = 'WAREHOUSE_ID'
      OnChange = qryDocumentWAREHOUSE_IDChange
      Size = 15
    end
    object qryDocumentMADOITUONG: TWideStringField
      FieldName = 'MADOITUONG'
      OnChange = qryDocumentMADOITUONGChange
      Size = 30
    end
    object qryDocumentTO_WAREHOUSE: TWideStringField
      FieldName = 'TO_WAREHOUSE'
      Size = 15
    end
    object qryDocumentPAY_DATE: TDateField
      FieldName = 'PAY_DATE'
    end
    object qryDocumentVOUCHER_DATE: TDateField
      FieldName = 'VOUCHER_DATE'
    end
    object qryDocumentLASTMODIFY: TWideStringField
      FieldName = 'LASTMODIFY'
      Size = 15
    end
    object qryDocumentDIACHIKH: TWideStringField
      FieldName = 'DIACHIKH'
      Size = 126
    end
    object qryDocumentMASOTHUE: TWideStringField
      FieldName = 'MASOTHUE'
      Size = 63
    end
    object qryDocumentTENKH: TWideStringField
      FieldName = 'TENKH'
      Size = 126
    end
    object qryDocumentTEMPLATE_ID: TIntegerField
      FieldName = 'TEMPLATE_ID'
    end
    object qryDocumentWORK_NAME: TWideStringField
      FieldName = 'WORK_NAME'
      Size = 126
    end
    object qryDocumentMASODT: TWideStringField
      FieldName = 'MASODT'
      Size = 30
    end
    object qryDocumentLOAI_DT: TSmallintField
      FieldName = 'LOAI_DT'
    end
    object qryDocumentDOC_AMOUNT: TIBOFloatField
      FieldName = 'DOC_AMOUNT'
    end
    object qryDocumentDOCUMENT_TAG: TSmallintField
      FieldName = 'DOCUMENT_TAG'
    end
    object qryDocumentWORK_ID: TWideStringField
      FieldName = 'WORK_ID'
      Size = 15
    end
    object qryDocumentBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryDocumentTEMPLATE: TSmallintField
      FieldName = 'TEMPLATE'
    end
    object qryDocumentTYGIA: TIBOFloatField
      FieldName = 'TYGIA'
      OnChange = qryDocumentTYGIAChange
    end
    object qryDocumentCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      OnChange = qryDocumentCURRENCY_IDChange
      Size = 6
    end
    object qryDocumentIS_GHD_IMPORT: TSmallintField
      FieldName = 'IS_GHD_IMPORT'
    end
  end
  object dsDocument: TDataSource
    DataSet = qryDocument
    Left = 31
    Top = 267
  end
  object qryDocEntry: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DOC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM FULL_ENTRYS'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE FULL_ENTRYS SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   DOC_ID = :DOC_ID, /*PK*/'
      '   ENTRY_ID = :ENTRY_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   DEBIT_ACC = :DEBIT_ACC,'
      '   CREDIT_ACC = :CREDIT_ACC,'
      '   DEBIT_OBJ = :DEBIT_OBJ,'
      '   DEBIT_TYPE = :DEBIT_TYPE,'
      '   CREDIT_OBJ = :CREDIT_OBJ,'
      '   CREDIT_TYPE = :CREDIT_TYPE,'
      '   ENTRY_AMOUNT = :ENTRY_AMOUNT,'
      '   ENTRY_PRICE = :ENTRY_PRICE,'
      '   ENTRY_VALUE = :ENTRY_VALUE,'
      '   TYGIANT = :TYGIANT,'
      '   ENTRY_NOTE = :ENTRY_NOTE,'
      '   NGUOINHAP = :NGUOINHAP,'
      '   CURRENCY_ID = :CURRENCY_ID,'
      '   VAT_PERCENT = :VAT_PERCENT,'
      '   DEBIT_DETAIL = :DEBIT_DETAIL,'
      '   DEBIT_DTYPE = :DEBIT_DTYPE,'
      '   CREDIT_DETAIL = :CREDIT_DETAIL,'
      '   CREDIT_DTYPE = :CREDIT_DTYPE,'
      '   ACTICLE_ID = :ACTICLE_ID,'
      '   PAYFOR_DOC = :PAYFOR_DOC,'
      '   PAYFOR_PERIOD = :PAYFOR_PERIOD,'
      '   DISCOUNT_SCALE = :DISCOUNT_SCALE,'
      '   DISCOUNT_VALUE = :DISCOUNT_VALUE,'
      '   INVOICE_ID = :INVOICE_ID,'
      '   APP_UPDATE = :APP_UPDATE,'
      '   ORIGIN_PRICE = :ORIGIN_PRICE,'
      '   DEBIT_DETAIL_1 = :DEBIT_DETAIL_1,'
      '   DEBIT_DTYPE_1 = :DEBIT_DTYPE_1,'
      '   CREDIT_DETAIL_1 = :CREDIT_DETAIL_1,'
      '   CREDIT_DTYPE_1 = :CREDIT_DTYPE_1,'
      '   UNIT_ID = :UNIT_ID,'
      '   UNIT_AMOUNT = :UNIT_AMOUNT,'
      '   ENTRY_QUANTITY = :ENTRY_QUANTITY,'
      '   PTTHUENK = :PTTHUENK,'
      '   VAT_ID = :VAT_ID,'
      '   ENTRY_PRICE_VAT=:ENTRY_PRICE_VAT,'
      '   INVENTORY_AMOUNT = :INVENTORY_AMOUNT,'
      '   IS_NOTLOGICAL = :IS_NOTLOGICAL,'
      '   JRNL_ENTRY = :JRNL_ENTRY'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO FULL_ENTRYS('
      '   BRANCH_ID, /*PK*/'
      '   DOC_ID, /*PK*/'
      '   ENTRY_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   DEBIT_ACC,'
      '   CREDIT_ACC,'
      '   DEBIT_OBJ,'
      '   DEBIT_TYPE,'
      '   CREDIT_OBJ,'
      '   CREDIT_TYPE,'
      '   ENTRY_AMOUNT,'
      '   ENTRY_PRICE,'
      '   ENTRY_VALUE,'
      '   TYGIANT,'
      '   ENTRY_NOTE,'
      '   NGUOINHAP,'
      '   CURRENCY_ID,'
      '   VAT_PERCENT,'
      '   DEBIT_DETAIL,'
      '   DEBIT_DTYPE,'
      '   CREDIT_DETAIL,'
      '   CREDIT_DTYPE,'
      '   ACTICLE_ID,'
      '   PAYFOR_DOC,'
      '   PAYFOR_PERIOD,'
      '   DISCOUNT_SCALE,'
      '   DISCOUNT_VALUE,'
      '   INVOICE_ID,'
      '   APP_UPDATE,'
      '   ORIGIN_PRICE,'
      '   DEBIT_DETAIL_1,'
      '   DEBIT_DTYPE_1,'
      '   CREDIT_DETAIL_1,'
      '   CREDIT_DTYPE_1,'
      '   UNIT_ID,'
      '   UNIT_AMOUNT,'
      '   ENTRY_QUANTITY,'
      '   PTTHUENK,'
      '   VAT_ID,'
      '   ENTRY_PRICE_VAT,'
      '   INVENTORY_AMOUNT,'
      '   IS_NOTLOGICAL,'
      '   JRNL_ENTRY)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :DOC_ID,'
      '   :ENTRY_ID,'
      '   :PERIOD_ID,'
      '   :DEBIT_ACC,'
      '   :CREDIT_ACC,'
      '   :DEBIT_OBJ,'
      '   :DEBIT_TYPE,'
      '   :CREDIT_OBJ,'
      '   :CREDIT_TYPE,'
      '   :ENTRY_AMOUNT,'
      '   :ENTRY_PRICE,'
      '   :ENTRY_VALUE,'
      '   :TYGIANT,'
      '   :ENTRY_NOTE,'
      '   :NGUOINHAP,'
      '   :CURRENCY_ID,'
      '   :VAT_PERCENT,'
      '   :DEBIT_DETAIL,'
      '   :DEBIT_DTYPE,'
      '   :CREDIT_DETAIL,'
      '   :CREDIT_DTYPE,'
      '   :ACTICLE_ID,'
      '   :PAYFOR_DOC,'
      '   :PAYFOR_PERIOD,'
      '   :DISCOUNT_SCALE,'
      '   :DISCOUNT_VALUE,'
      '   :INVOICE_ID,'
      '   :APP_UPDATE,'
      '   :ORIGIN_PRICE,'
      '   :DEBIT_DETAIL_1,'
      '   :DEBIT_DTYPE_1,'
      '   :CREDIT_DETAIL_1,'
      '   :CREDIT_DTYPE_1,'
      '   :UNIT_ID,'
      '   :UNIT_AMOUNT,'
      '   :ENTRY_QUANTITY,'
      '   :PTTHUENK,'
      '   :VAT_ID,'
      '   :ENTRY_PRICE_VAT,'
      '   :INVENTORY_AMOUNT,'
      '   :IS_NOTLOGICAL,'
      '   :JRNL_ENTRY)')
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryDocEntryAfterCancel
    BeforeEdit = qryDocEntryBeforeEdit
    AfterEdit = qryDocEntryAfterEdit
    BeforeDelete = qryDocEntryBeforeDelete
    AfterDelete = qryDocEntryAfterDelete
    BeforeInsert = qryDocEntryBeforeInsert
    AfterInsert = qryDocEntryAfterInsert
    BeforePost = qryDocEntryBeforePost
    AfterPost = qryDocEntryAfterPost
    OnCalcFields = qryDocEntryCalcFields
    OnNewRecord = qryDocEntryNewRecord
    OnPostError = qryDocEntryPostError
    OnDeleteError = qryDocEntryDeleteError
    DataSource = dsDocument
    SQL.Strings = (
      'SELECT DOC_ID'
      '     , ENTRY_ID'
      '     , PERIOD_ID'
      '     , DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , DEBIT_OBJ'
      '     , DEBIT_TYPE'
      '     , CREDIT_OBJ'
      '     , CREDIT_TYPE'
      '     , ENTRY_AMOUNT'
      '     , ENTRY_PRICE'
      '     , ENTRY_VALUE'
      '     , TYGIANT'
      '     , ENTRY_NOTE'
      '     , NGUOINHAP'
      '     , CURRENCY_ID'
      '     , DTNO.OBJECT_NAME TENDTNO'
      '     , DTNO.SUBINFO_1   SUBNO_1'
      '     , DTNO.SUBINFO_2   SUBNO_2'
      '     , DTCO.OBJECT_NAME TENDTCO'
      '     , DTCO.SUBINFO_1   SUBCO_1'
      '     , DTCO.SUBINFO_2   SUBCO_2'
      '     , YTNO.OBJECT_NAME TENYTNO'
      '     , YTNO.SUBINFO_1   YSUBNO_1'
      '     , YTNO.SUBINFO_2   YSUBNO_2'
      '     , YTCO.OBJECT_NAME TENYTCO'
      '     , YTCO.SUBINFO_1   YSUBCO_1'
      '     , YTCO.SUBINFO_2   YSUBCO_2'
      '     , YTNO2.OBJECT_NAME TENYTNO2'
      '     , YTNO2.SUBINFO_1   Y2SUBNO_1'
      '     , YTNO2.SUBINFO_2   Y2SUBNO_2'
      '     , YTCO2.OBJECT_NAME TENYTCO2'
      '     , YTCO2.SUBINFO_1   Y2SUBCO_1'
      '     , YTCO2.SUBINFO_2   Y2SUBCO_2'
      '     , VAT_PERCENT'
      '     , DEBIT_DETAIL'
      '     , DEBIT_DTYPE'
      '     , CREDIT_DETAIL'
      '     , CREDIT_DTYPE'
      '     , ACTICLE_ID'
      '     , PAYFOR_DOC'
      '     , PAYFOR_PERIOD     '
      '     , DISCOUNT_SCALE'
      '     , DISCOUNT_VALUE'
      '     , MASTER_TAG'
      '     , MASTER_DATE'
      '     , MASTER_WARE'
      '     , MASTER_TOWARE'
      '     , INVOICE_ID'
      '     , APP_UPDATE'
      '     , ORIGIN_PRICE'
      '     , DEBIT_DETAIL_1'
      '     , DEBIT_DTYPE_1'
      '     , CREDIT_DETAIL_1'
      '     , CREDIT_DTYPE_1'
      '     , UNIT_ID'
      '     , UNIT_AMOUNT'
      '     , BRANCH_ID'
      '     , ENTRY_QUANTITY'
      '     , PTTHUENK'
      '     , FULL_ENTRYS.VAT_ID'
      '     , VAT_LIST.METHOD_ID'
      '     , ENTRY_PRICE_VAT'
      '     , INVENTORY_AMOUNT'
      '     , IS_NOTLOGICAL'
      '     , JRNL_ENTRY'
      'FROM FULL_ENTRYS'
      
        'LEFT JOIN OBJECT_LIST DTNO on (DTNO.OBJECT_ID = FULL_ENTRYS.DEBI' +
        'T_OBJ and DTNO.OTYPE_ID  = FULL_ENTRYS.DEBIT_TYPE)'
      
        'LEFT JOIN OBJECT_LIST DTCO on (DTCO.OBJECT_ID = FULL_ENTRYS.CRED' +
        'IT_OBJ and DTCO.OTYPE_ID = FULL_ENTRYS.CREDIT_TYPE)'
      
        'LEFT JOIN OBJECT_LIST YTNO on (YTNO.OBJECT_ID = FULL_ENTRYS.DEBI' +
        'T_DETAIL and YTNO.OTYPE_ID  = FULL_ENTRYS.DEBIT_DTYPE)'
      
        'LEFT JOIN OBJECT_LIST YTCO on (YTCO.OBJECT_ID = FULL_ENTRYS.CRED' +
        'IT_DETAIL and YTCO.OTYPE_ID = FULL_ENTRYS.CREDIT_DTYPE)'
      
        'LEFT JOIN OBJECT_LIST YTNO2 on (YTNO2.OBJECT_ID = FULL_ENTRYS.DE' +
        'BIT_DETAIL_1 and YTNO2.OTYPE_ID  = FULL_ENTRYS.DEBIT_DTYPE_1)'
      
        'LEFT JOIN OBJECT_LIST YTCO2 on (YTCO2.OBJECT_ID = FULL_ENTRYS.CR' +
        'EDIT_DETAIL_1 and YTCO2.OTYPE_ID = FULL_ENTRYS.CREDIT_DTYPE_1)'
      'LEFT JOIN VAT_LIST on FULL_ENTRYS.VAT_ID = VAT_LIST.VAT_ID'
      
        'where DOC_ID = :DOC_ID and PERIOD_ID = :PERIOD_ID and BRANCH_ID ' +
        '= :BRANCH_ID'
      'Order by ENTRY_ID')
    FieldOptions = []
    Left = 64
    Top = 240
    object qryDocEntryDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryDocEntryENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
      Required = True
    end
    object qryDocEntryPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryDocEntryDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Required = True
      OnChange = qryDocEntryDEBIT_ACCChange
      Size = 15
    end
    object qryDocEntryCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
      OnChange = qryDocEntryCREDIT_ACCChange
      Size = 15
    end
    object qryDocEntryDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      OnChange = qryDocEntryDEBIT_OBJChange
      Size = 30
    end
    object qryDocEntryDEBIT_TYPE: TSmallintField
      FieldName = 'DEBIT_TYPE'
    end
    object qryDocEntryCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      OnChange = qryDocEntryCREDIT_OBJChange
      Size = 30
    end
    object qryDocEntryCREDIT_TYPE: TSmallintField
      FieldName = 'CREDIT_TYPE'
    end
    object qryDocEntryENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
      OnChange = qryDocEntryENTRY_AMOUNTChange
    end
    object qryDocEntryENTRY_PRICE: TIBOFloatField
      FieldName = 'ENTRY_PRICE'
      OnChange = qryDocEntryENTRY_PRICEChange
    end
    object qryDocEntryENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
      OnChange = qryDocEntryENTRY_VALUEChange
    end
    object qryDocEntryTYGIANT: TIBOFloatField
      FieldName = 'TYGIANT'
      OnChange = qryDocEntryTYGIANTChange
    end
    object qryDocEntryENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 126
    end
    object qryDocEntryNGUOINHAP: TWideStringField
      FieldName = 'NGUOINHAP'
      Size = 15
    end
    object qryDocEntryCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      OnChange = qryDocEntryCURRENCY_IDChange
      Size = 6
    end
    object qryDocEntryTENDTNO: TWideStringField
      FieldName = 'TENDTNO'
      Size = 126
    end
    object qryDocEntrySUBNO_1: TWideStringField
      FieldName = 'SUBNO_1'
      Size = 126
    end
    object qryDocEntrySUBNO_2: TWideStringField
      FieldName = 'SUBNO_2'
      Size = 63
    end
    object qryDocEntryTENDTCO: TWideStringField
      FieldName = 'TENDTCO'
      Size = 126
    end
    object qryDocEntrySUBCO_1: TWideStringField
      FieldName = 'SUBCO_1'
      Size = 126
    end
    object qryDocEntrySUBCO_2: TWideStringField
      FieldName = 'SUBCO_2'
      Size = 63
    end
    object qryDocEntryVAT_PERCENT: TIBOFloatField
      FieldName = 'VAT_PERCENT'
      OnChange = qryDocEntryVAT_PERCENTChange
    end
    object qryDocEntryDEBIT_DETAIL: TWideStringField
      FieldName = 'DEBIT_DETAIL'
      OnChange = qryDocEntryDEBIT_DETAILChange
      Size = 30
    end
    object qryDocEntryDEBIT_DTYPE: TSmallintField
      FieldName = 'DEBIT_DTYPE'
    end
    object qryDocEntryCREDIT_DETAIL: TWideStringField
      FieldName = 'CREDIT_DETAIL'
      OnChange = qryDocEntryCREDIT_DETAILChange
      Size = 30
    end
    object qryDocEntryCREDIT_DTYPE: TSmallintField
      FieldName = 'CREDIT_DTYPE'
    end
    object qryDocEntryACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 30
    end
    object qryDocEntryPAYFOR_DOC: TWideStringField
      FieldName = 'PAYFOR_DOC'
      Size = 30
    end
    object qryDocEntryPAYFOR_PERIOD: TSmallintField
      FieldName = 'PAYFOR_PERIOD'
    end
    object qryDocEntryDISCOUNT_SCALE: TIBOFloatField
      FieldName = 'DISCOUNT_SCALE'
      OnChange = qryDocEntryDISCOUNT_SCALEChange
    end
    object qryDocEntryDISCOUNT_VALUE: TIBOFloatField
      FieldName = 'DISCOUNT_VALUE'
      OnChange = qryDocEntryDISCOUNT_VALUEChange
    end
    object qryDocEntryMASTER_TAG: TSmallintField
      FieldName = 'MASTER_TAG'
    end
    object qryDocEntryMASTER_DATE: TDateField
      FieldName = 'MASTER_DATE'
    end
    object qryDocEntryMASTER_WARE: TWideStringField
      FieldName = 'MASTER_WARE'
      Size = 15
    end
    object qryDocEntryMASTER_TOWARE: TWideStringField
      FieldName = 'MASTER_TOWARE'
      Size = 15
    end
    object qryDocEntryINVOICE_ID: TSmallintField
      FieldName = 'INVOICE_ID'
    end
    object qryDocEntryAPP_UPDATE: TSmallintField
      FieldName = 'APP_UPDATE'
    end
    object qryDocEntryORIGIN_PRICE: TIBOFloatField
      FieldName = 'ORIGIN_PRICE'
      OnChange = qryDocEntryORIGIN_PRICEChange
    end
    object qryDocEntryNGUYENTE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NGUYENTE'
      ReadOnly = True
      Calculated = True
    end
    object qryDocEntryORIGIN_VALUE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ORIGIN_VALUE'
      ReadOnly = True
      Calculated = True
    end
    object qryDocEntryDEBIT_DETAIL_1: TWideStringField
      FieldName = 'DEBIT_DETAIL_1'
      OnChange = qryDocEntryDEBIT_DETAIL_1Change
      Size = 30
    end
    object qryDocEntryDEBIT_DTYPE_1: TSmallintField
      FieldName = 'DEBIT_DTYPE_1'
    end
    object qryDocEntryCREDIT_DETAIL_1: TWideStringField
      FieldName = 'CREDIT_DETAIL_1'
      OnChange = qryDocEntryCREDIT_DETAIL_1Change
      Size = 30
    end
    object qryDocEntryCREDIT_DTYPE_1: TSmallintField
      FieldName = 'CREDIT_DTYPE_1'
    end
    object qryDocEntryBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryDocEntryUNIT_ID: TWideStringField
      FieldName = 'UNIT_ID'
      Size = 15
    end
    object qryDocEntryUNIT_AMOUNT: TIBOFloatField
      FieldName = 'UNIT_AMOUNT'
    end
    object qryDocEntryPTTHUENK: TIBOFloatField
      FieldName = 'PTTHUENK'
      OnChange = qryDocEntryPTTHUENKChange
    end
    object qryDocEntryENTRY_QUANTITY: TIBOFloatField
      FieldName = 'ENTRY_QUANTITY'
    end
    object qryDocEntryTENYTNO: TWideStringField
      FieldName = 'TENYTNO'
      Size = 126
    end
    object qryDocEntryYSUBNO_1: TWideStringField
      FieldName = 'YSUBNO_1'
      Size = 126
    end
    object qryDocEntryYSUBNO_2: TWideStringField
      FieldName = 'YSUBNO_2'
      Size = 63
    end
    object qryDocEntryTENYTCO: TWideStringField
      FieldName = 'TENYTCO'
      Size = 126
    end
    object qryDocEntryYSUBCO_1: TWideStringField
      FieldName = 'YSUBCO_1'
      Size = 126
    end
    object qryDocEntryYSUBCO_2: TWideStringField
      FieldName = 'YSUBCO_2'
      Size = 63
    end
    object qryDocEntryTENYTNO2: TWideStringField
      FieldName = 'TENYTNO2'
      Size = 126
    end
    object qryDocEntryY2SUBNO_1: TWideStringField
      FieldName = 'Y2SUBNO_1'
      Size = 126
    end
    object qryDocEntryY2SUBNO_2: TWideStringField
      FieldName = 'Y2SUBNO_2'
      Size = 63
    end
    object qryDocEntryTENYTCO2: TWideStringField
      FieldName = 'TENYTCO2'
      Size = 126
    end
    object qryDocEntryY2SUBCO_1: TWideStringField
      FieldName = 'Y2SUBCO_1'
      Size = 126
    end
    object qryDocEntryY2SUBCO_2: TWideStringField
      FieldName = 'Y2SUBCO_2'
      Size = 63
    end
    object qryDocEntryVAT_ID: TSmallintField
      FieldName = 'VAT_ID'
      OnChange = qryDocEntryVAT_IDChange
    end
    object qryDocEntryMETHOD_ID: TSmallintField
      FieldName = 'METHOD_ID'
    end
    object qryDocEntryENTRY_PRICE_VAT: TIBOFloatField
      FieldName = 'ENTRY_PRICE_VAT'
      OnChange = qryDocEntryENTRY_PRICE_VATChange
    end
    object qryDocEntryINVENTORY_AMOUNT: TIBOFloatField
      FieldName = 'INVENTORY_AMOUNT'
      ReadOnly = True
    end
    object qryDocEntryIS_NOTLOGICAL: TSmallintField
      FieldName = 'IS_NOTLOGICAL'
    end
    object qryDocEntryJRNL_ENTRY: TIBOFloatField
      FieldName = 'JRNL_ENTRY'
    end
  end
  object dsDocEntry: TDataSource
    DataSet = qryDocEntry
    Left = 64
    Top = 267
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 344
    Top = 208
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        D1040000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060A54494D455F504F494E540D53
        756D6D61727947726F7570730E001053756D6D617279536570617261746F7206
        022C200C466F6E742E43686172736574070C414E53495F434841525345540A46
        6F6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E486569
        67687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E537479
        6C650B000A506172656E74466F6E74081042616E64466F6E742E436861727365
        74070F44454641554C545F434841525345540E42616E64466F6E742E436F6C6F
        72070C636C57696E646F77546578740F42616E64466F6E742E48656967687402
        F50D42616E64466F6E742E4E616D65060D4D532053616E732053657269660E42
        616E64466F6E742E5374796C650B000A44617461536F75726365070F4D61696E
        444D2E64735054794769611044656661756C74526F7748656967687402130F46
        696C7465722E43726974657269610A040000000000000012486561646572466F
        6E742E43686172736574070C414E53495F434841525345541048656164657246
        6F6E742E436F6C6F72070C636C57696E646F775465787411486561646572466F
        6E742E48656967687402F50F486561646572466F6E742E4E616D650606546168
        6F6D6110486561646572466F6E742E5374796C650B00094F7074696F6E734442
        0B106564676F43616E63656C4F6E457869740D6564676F43616E44656C657465
        0D6564676F43616E496E73657274116564676F43616E4E617669676174696F6E
        116564676F436F6E6669726D44656C657465126564676F4C6F6164416C6C5265
        636F726473106564676F557365426F6F6B6D61726B73000B4F7074696F6E7356
        6965770B0D6564676F4175746F5769647468136564676F42616E644865616465
        7257696474680D6564676F5573654269746D6170001350726576696577466F6E
        742E43686172736574070F44454641554C545F43484152534554115072657669
        6577466F6E742E436F6C6F720706636C426C75651250726576696577466F6E74
        2E48656967687402F51050726576696577466F6E742E4E616D65060D4D532053
        616E732053657269661150726576696577466F6E742E5374796C650B00001354
        647844424772696444617465436F6C756D6E0A54494D455F504F494E54074361
        7074696F6E140E0000005468E1BB9D6920C49169E1BB836D0F48656164657241
        6C69676E6D656E740708746143656E74657205576964746803D7000942616E64
        496E646578020008526F77496E6465780200094669656C644E616D65060A5449
        4D455F504F494E540C43617074696F6E5F55544637061554682B4874302D6920
        2B4152452D692B48734D2D6D0000135464784442477269644D61736B436F6C75
        6D6E0C45584348414E4745524154450743617074696F6E140900000054E1BBB7
        206769C3A10F486561646572416C69676E6D656E740708746143656E74657205
        576964746803A7000942616E64496E646578020008526F77496E646578020009
        4669656C644E616D65060C45584348414E4745524154450C43617074696F6E5F
        55544637060C542B4876632067692B414F45000000}
    end
    object dppInvoice: TdxDBGridLayout
      Data = {
        FF050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C640608454E5452595F49440D53756D
        6D61727947726F7570730E001053756D6D617279536570617261746F7206022C
        200C466F6E742E43686172736574070C414E53495F434841525345540A466F6E
        742E436F6C6F72070C636C57696E646F77546578740B466F6E742E4865696768
        7402F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C65
        0B000A506172656E74466F6E74081042616E64466F6E742E4368617273657407
        0F44454641554C545F434841525345540E42616E64466F6E742E436F6C6F7207
        0C636C57696E646F77546578740F42616E64466F6E742E48656967687402F50D
        42616E64466F6E742E4E616D65060D4D532053616E732053657269660E42616E
        64466F6E742E5374796C650B000A44617461536F7572636507144D61696E444D
        2E6473496E766F6963654C6973741044656661756C74526F7748656967687402
        150F46696C7465722E43726974657269610A0400000000000000124865616465
        72466F6E742E43686172736574070C414E53495F434841525345541048656164
        6572466F6E742E436F6C6F72070C636C57696E646F7754657874114865616465
        72466F6E742E48656967687402F50F486561646572466F6E742E4E616D650606
        5461686F6D6110486561646572466F6E742E5374796C650B00094F7074696F6E
        7344420B106564676F43616E63656C4F6E457869740D6564676F43616E44656C
        6574650D6564676F43616E496E73657274116564676F43616E4E617669676174
        696F6E116564676F436F6E6669726D44656C657465126564676F4C6F6164416C
        6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F7074696F
        6E73566965770B0D6564676F4175746F5769647468136564676F42616E644865
        6164657257696474680D6564676F5573654269746D6170001350726576696577
        466F6E742E43686172736574070F44454641554C545F43484152534554115072
        6576696577466F6E742E436F6C6F720706636C426C7565125072657669657746
        6F6E742E48656967687402F51050726576696577466F6E742E4E616D65060D4D
        532053616E732053657269661150726576696577466F6E742E5374796C650B00
        00135464784442477269644D61736B436F6C756D6E08454E5452595F49440743
        617074696F6E06035374740F486561646572416C69676E6D656E740708746143
        656E74657205576964746802190942616E64496E646578020008526F77496E64
        65780200094669656C644E616D650608454E5452595F49440000135464784442
        477269644D61736B436F6C756D6E0A494E564F4943455F4E4F0743617074696F
        6E140F00000053E1BB912068C3B36120C491C6A16E0F486561646572416C6967
        6E6D656E740708746143656E7465720942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D65060A494E564F4943455F4E4F0C436170
        74696F6E5F555446370617532B48744520682B41504D2D61202B415245426F51
        2D6E0000135464784442477269644D61736B436F6C756D6E0C4E4F545441585F
        56414C55450743617074696F6E141800000053E1BB91207469E1BB816E206368
        C6B06120746875E1BABF0F486561646572416C69676E6D656E74070874614365
        6E7465720942616E64496E646578020008526F77496E6465780200094669656C
        644E616D65060C4E4F545441585F56414C55450C43617074696F6E5F55544637
        061F532B4874452074692B4873452D6E2063682B4162412D61207468752B4872
        380000135464784442477269644D61736B436F6C756D6E095441585F56414C55
        450743617074696F6E140D0000005469E1BB816E20746875E1BABF0F48656164
        6572416C69676E6D656E740708746143656E7465720942616E64496E64657802
        0008526F77496E6465780200094669656C644E616D6506095441585F56414C55
        450C43617074696F6E5F55544637061054692B4873452D6E207468752B487238
        000000}
    end
  end
  object qryEntryGrp: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
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
    DatabaseName = 'D:\Design\Acc Full\db\ACCOUNTING.GDB'
    KeyLinks.Strings = (
      'DEBIT_ACC'
      'CREDIT_ACC')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDocument
    SQL.Strings = (
      'SELECT DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , sum(ENTRY_PRICE) SOTIENNT '
      '     , sum(ENTRY_VALUE) SOTIEN'
      'FROM FULL_ENTRYS'
      
        'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID and BRANCH_ID = :B' +
        'RANCH_ID'
      'group by DEBIT_ACC, CREDIT_ACC')
    FieldOptions = []
    Left = 574
    Top = 252
    object qryEntryGrpDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qryEntryGrpCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qryEntryGrpSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
      ReadOnly = True
    end
    object qryEntryGrpSOTIENNT: TIBOFloatField
      FieldName = 'SOTIENNT'
      ReadOnly = True
    end
  end
  object dsEntryGrp: TDataSource
    DataSet = qryEntryGrp
    Left = 574
    Top = 288
  end
  object dplEntryGrp: TppDBPipeline
    DataSource = dsEntryGrp
    SkipWhenNoRecords = False
    UserName = 'dplEntryGrp'
    Left = 512
    Top = 280
  end
  object qryHesoDH: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Design\Acc Full\db\ACCOUNTING.GDB'
    KeyLinks.Strings = (
      'TUMAHANG'
      'DENMAHANG')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TUMAHANG,DENMAHANG'
      '     , HESOQUIDOI'
      'FROM HESODOIHANG')
    FieldOptions = []
    Left = 662
    Top = 252
    object qryHesoDHHESOQUIDOI: TIBOFloatField
      FieldName = 'HESOQUIDOI'
    end
    object qryHesoDHTUMAHANG: TWideStringField
      FieldName = 'TUMAHANG'
      Required = True
      Size = 30
    end
    object qryHesoDHDENMAHANG: TWideStringField
      FieldName = 'DENMAHANG'
      Required = True
      Size = 30
    end
  end
  object dsEntryGrpObj: TDataSource
    DataSet = qryEntryGrpObj
    Left = 614
    Top = 288
  end
  object qryEntryGrpObj: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
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
    DatabaseName = 'D:\Design\Acc Full\db\ACCOUNTING.GDB'
    KeyLinks.Strings = (
      'DEBIT_ACC'
      'CREDIT_ACC'
      'DEBIT_OBJ'
      'CREDIT_OBJ')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDocument
    SQL.Strings = (
      
        'select doc_id, period_id,debit_acc,debit_obj,credit_acc,credit_o' +
        'bj,'
      'sum(entry_value) SOTIEN'
      'from full_entrys '
      
        'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID and BRANCH_ID = :B' +
        'RANCH_ID'
      
        'group by doc_id, period_id,debit_acc,debit_obj,credit_acc,credit' +
        '_obj')
    FieldOptions = []
    Left = 614
    Top = 252
    object qryEntryGrpObjDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryEntryGrpObjPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      ReadOnly = True
      Required = True
    end
    object qryEntryGrpObjDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qryEntryGrpObjDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      ReadOnly = True
      Size = 30
    end
    object qryEntryGrpObjCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qryEntryGrpObjCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      ReadOnly = True
      Size = 30
    end
    object qryEntryGrpObjSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
      ReadOnly = True
    end
  end
  object dplEntryGrpObj: TppDBPipeline
    DataSource = dsEntryGrpObj
    SkipWhenNoRecords = False
    UserName = 'dplEntryGrpObj'
    Left = 616
    Top = 320
  end
  object qryGiayTT: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'sptt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kytt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ngaytt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'masonv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shtktu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Design\Acc Full\db\ACCOUNTING.GDB'
    KeyLinks.Strings = (
      'sophieu')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryGiayTTBeforeOpen
    DataSource = dsDocument
    SQL.Strings = (
      
        'select SOPHIEU,NGAYLAP,SOTIEN,SODUDAUKY,SOCHIKYNAY,SOTTKYNAY,SOT' +
        'UCONLAI,SOQUATU,tkdu,TONGSOTU'
      
        'from sp_bc_giaytttamung(:sptt,:kytt,:ngaytt,:masonv,:shtktu,:bra' +
        'nch_id)')
    FieldOptions = []
    Left = 238
    Top = 300
    object qryGiayTTSOPHIEU: TWideStringField
      FieldName = 'SOPHIEU'
      Size = 30
    end
    object qryGiayTTNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
    end
    object qryGiayTTSOTIEN: TIBOFloatField
      FieldName = 'SOTIEN'
    end
    object qryGiayTTSODUDAUKY: TIBOFloatField
      FieldName = 'SODUDAUKY'
    end
    object qryGiayTTSOCHIKYNAY: TIBOFloatField
      FieldName = 'SOCHIKYNAY'
    end
    object qryGiayTTSOTTKYNAY: TIBOFloatField
      FieldName = 'SOTTKYNAY'
    end
    object qryGiayTTSOTUCONLAI: TIBOFloatField
      FieldName = 'SOTUCONLAI'
    end
    object qryGiayTTSOQUATU: TIBOFloatField
      FieldName = 'SOQUATU'
    end
    object qryGiayTTTKDU: TWideStringField
      FieldName = 'TKDU'
      Size = 15
    end
    object qryGiayTTTONGSOTU: TIBOFloatField
      FieldName = 'TONGSOTU'
    end
  end
  object dsGiayTT: TDataSource
    DataSet = qryGiayTT
    Left = 238
    Top = 331
  end
  object dplGiayTT: TppDBPipeline
    DataSource = dsGiayTT
    SkipWhenNoRecords = False
    UserName = 'dplGiayTT'
    Left = 238
    Top = 362
  end
  object pmBtnGenDocs: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbtnCopy
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton5
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnPSBTXGV
        Visible = True
      end
      item
        Item = bbtnPSPXGV
        Visible = True
      end
      item
        Item = bbtnXemPXK
        Visible = True
      end
      item
        Item = btnPSPNHBTL
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnPSTheoDM
        Visible = True
      end
      item
        Item = bbtnGenDoc
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnPSHangKM
        Visible = True
      end
      item
        Item = bbtnPSHangKMMoi
        Visible = True
      end>
    UseOwnFont = False
    Left = 300
    Top = 240
  end
  object qryPriceKH: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAKH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAHH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\My Project\Accounting\Full Accounting 23-12-BC Thong tu 23\db' +
      '\ACCOUNTING.GDB'
    EditSQL.Strings = (
      '')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDocEntry
    SQL.Strings = (
      'SELECT DONGIA_OUT FROM SP_GET_PRICEKH(:MAKH,:MAHH,:PERIOD_ID)')
    FieldOptions = []
    Left = 31
    Top = 300
    object qryPriceKHDONGIA_OUT: TIBOFloatField
      FieldName = 'DONGIA_OUT'
    end
  end
  object dsPriceKH: TDataSource
    Left = 30
    Top = 330
  end
  object qryDefaultUnit: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAHH'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDocEntry
    SQL.Strings = (
      'SELECT DEFAULT_UNIT_OUT '
      'FROM SP_GET_DEFAULT_UNIT(:MAHH)')
    FieldOptions = []
    Left = 103
    Top = 299
    object qryDefaultUnitDEFAULT_UNIT_OUT: TWideStringField
      FieldName = 'DEFAULT_UNIT_OUT'
      Size = 63
    end
  end
  object dsDefaultUnit: TDataSource
    DataSet = qryDefaultUnit
    Left = 102
    Top = 329
  end
  object qryUnit_Scale: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FROM_UNIT_IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_UNIT_IN'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select scale_out from sp_get_unit_scale(:FROM_UNIT_IN,:TO_UNIT_I' +
        'N)')
    FieldOptions = []
    Left = 136
    Top = 300
    object qryUnit_ScaleSCALE_OUT: TIBOFloatField
      FieldName = 'SCALE_OUT'
    end
  end
  object dsUnit_Scale: TDataSource
    DataSet = qryUnit_Scale
    Left = 136
    Top = 331
  end
  object qryInTachThue: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DOC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    OnFilterRecord = qryInTachThueFilterRecord
    DataSource = dsDocument
    SQL.Strings = (
      'select  DOC_ID,'
      '        ENTRY_ID'
      '     , PERIOD_ID'
      '     , DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , DEBIT_OBJ'
      '     , DEBIT_TYPE'
      '     , CREDIT_OBJ'
      '     , CREDIT_TYPE'
      '     , ENTRY_AMOUNT'
      '     , ENTRY_PRICE'
      '     , ENTRY_VALUE'
      '     , TYGIANT'
      '     , ENTRY_NOTE'
      '     , NGUOINHAP'
      '     , CURRENCY_ID'
      '     , TENDTNO'
      '     ,  SUBNO_1'
      '     ,  SUBNO_2'
      '     , TENDTCO'
      '     ,  SUBCO_1'
      '     ,  SUBCO_2'
      '     , VAT_PERCENT'
      '     , DEBIT_DETAIL'
      '     , DEBIT_DTYPE'
      '     , CREDIT_DETAIL'
      '     , CREDIT_DTYPE'
      '     , ACTICLE_ID'
      '     , PAYFOR_DOC'
      '     , PAYFOR_PERIOD'
      '     , DISCOUNT_SCALE'
      '     , DISCOUNT_VALUE'
      '     , MASTER_TAG'
      '     , MASTER_DATE'
      '     , MASTER_WARE'
      '     , MASTER_TOWARE'
      '     , INVOICE_ID'
      '     , APP_UPDATE'
      '     , ORIGIN_PRICE'
      '     , TONGTIEN_OUT TONGTIEN'
      '     , SL_OUT SL'
      '     , TONGTIEN_CK'
      '     , TONGTIENTHUE '
      '     , UNIT_AMOUNT '
      '     , TONGPTTHUE'
      '     , ENTRY_QUANTITY'
      '     , PTTHUENK'
      '     , TENYTNO ,'
      '       YSUBNO_1 ,'
      '       YSUBNO_2 ,'
      '       TENYTCO ,'
      '       YSUBCO_1 ,'
      '       YSUBCO_2 ,'
      '       TENYTNO2 ,'
      '       Y2SUBNO_1 ,'
      '       Y2SUBNO_2 ,'
      '       TENYTCO2 ,'
      '       Y2SUBCO_1 ,'
      '       Y2SUBCO_2,'
      '       TONGTIEN_OUT,'
      'SUBNO_3 ,'
      '    SUBNO_4 ,'
      '    SUBNO_5 ,'
      'SUBcO_3 ,'
      '    SUBcO_4 ,'
      '    SUBcO_5 ,'
      'YSUBNO_3 ,'
      '    YSUBNO_4 ,'
      '    YSUBNO_5 ,'
      'YSUBCO_3 ,'
      '    YSUBCO_4 ,'
      '    YSUBCO_5 ,'
      ' Y2SUBNO_3 ,'
      '    Y2SUBNO_4 ,'
      '    Y2SUBNO_5 ,'
      'Y2SUBCO_3 ,'
      '    Y2SUBCO_4 ,'
      '    Y2SUBCO_5  '
      'FROM SP_INPHIEU_TACHTHUE(:DOC_ID,:PERIOD_ID,:BRANCH_ID)')
    FieldOptions = []
    Left = 170
    Top = 300
    object qryInTachThueDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Size = 90
    end
    object qryInTachThueENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
    end
    object qryInTachThuePERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
    end
    object qryInTachThueDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Size = 135
    end
    object qryInTachThueCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Size = 135
    end
    object qryInTachThueDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Size = 405
    end
    object qryInTachThueDEBIT_TYPE: TSmallintField
      FieldName = 'DEBIT_TYPE'
    end
    object qryInTachThueCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      Size = 405
    end
    object qryInTachThueCREDIT_TYPE: TSmallintField
      FieldName = 'CREDIT_TYPE'
    end
    object qryInTachThueENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryInTachThueENTRY_PRICE: TIBOFloatField
      FieldName = 'ENTRY_PRICE'
    end
    object qryInTachThueENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryInTachThueTYGIANT: TIBOFloatField
      FieldName = 'TYGIANT'
    end
    object qryInTachThueENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 765
    end
    object qryInTachThueNGUOINHAP: TWideStringField
      FieldName = 'NGUOINHAP'
      Size = 45
    end
    object qryInTachThueCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 63
    end
    object qryInTachThueTENDTNO: TWideStringField
      FieldName = 'TENDTNO'
      Size = 405
    end
    object qryInTachThueSUBNO_1: TWideStringField
      FieldName = 'SUBNO_1'
      Size = 405
    end
    object qryInTachThueSUBNO_2: TWideStringField
      FieldName = 'SUBNO_2'
      Size = 405
    end
    object qryInTachThueTENDTCO: TWideStringField
      FieldName = 'TENDTCO'
      Size = 405
    end
    object qryInTachThueSUBCO_1: TWideStringField
      FieldName = 'SUBCO_1'
      Size = 405
    end
    object qryInTachThueSUBCO_2: TWideStringField
      FieldName = 'SUBCO_2'
      Size = 405
    end
    object qryInTachThueVAT_PERCENT: TIBOFloatField
      FieldName = 'VAT_PERCENT'
    end
    object qryInTachThueDEBIT_DETAIL: TWideStringField
      FieldName = 'DEBIT_DETAIL'
      Size = 135
    end
    object qryInTachThueDEBIT_DTYPE: TSmallintField
      FieldName = 'DEBIT_DTYPE'
    end
    object qryInTachThueCREDIT_DETAIL: TWideStringField
      FieldName = 'CREDIT_DETAIL'
      Size = 135
    end
    object qryInTachThueCREDIT_DTYPE: TSmallintField
      FieldName = 'CREDIT_DTYPE'
    end
    object qryInTachThueACTICLE_ID: TWideStringField
      FieldName = 'ACTICLE_ID'
      Size = 135
    end
    object qryInTachThuePAYFOR_DOC: TWideStringField
      FieldName = 'PAYFOR_DOC'
      Size = 135
    end
    object qryInTachThuePAYFOR_PERIOD: TSmallintField
      FieldName = 'PAYFOR_PERIOD'
    end
    object qryInTachThueDISCOUNT_SCALE: TIBOFloatField
      FieldName = 'DISCOUNT_SCALE'
    end
    object qryInTachThueDISCOUNT_VALUE: TIBOFloatField
      FieldName = 'DISCOUNT_VALUE'
    end
    object qryInTachThueMASTER_TAG: TSmallintField
      FieldName = 'MASTER_TAG'
    end
    object qryInTachThueMASTER_DATE: TDateField
      FieldName = 'MASTER_DATE'
    end
    object qryInTachThueMASTER_WARE: TWideStringField
      FieldName = 'MASTER_WARE'
      Size = 63
    end
    object qryInTachThueMASTER_TOWARE: TWideStringField
      FieldName = 'MASTER_TOWARE'
      Size = 63
    end
    object qryInTachThueINVOICE_ID: TSmallintField
      FieldName = 'INVOICE_ID'
    end
    object qryInTachThueAPP_UPDATE: TSmallintField
      FieldName = 'APP_UPDATE'
    end
    object qryInTachThueORIGIN_PRICE: TIBOFloatField
      FieldName = 'ORIGIN_PRICE'
    end
    object qryInTachThueTONGTIEN: TIBOFloatField
      FieldName = 'TONGTIEN'
    end
    object qryInTachThueSL: TIBOFloatField
      FieldName = 'SL'
    end
    object qryInTachThueTONGTIEN_CK: TIBOFloatField
      FieldName = 'TONGTIEN_CK'
    end
    object qryInTachThueTONGTIENTHUE: TIBOFloatField
      FieldName = 'TONGTIENTHUE'
    end
    object qryInTachThueUNIT_AMOUNT: TIBOFloatField
      FieldName = 'UNIT_AMOUNT'
    end
    object qryInTachThueTONGPTTHUE: TIBOFloatField
      FieldName = 'TONGPTTHUE'
    end
    object qryInTachThuePTTHUENK: TIBOFloatField
      FieldName = 'PTTHUENK'
    end
    object qryInTachThueENTRY_QUANTITY: TIBOFloatField
      FieldName = 'ENTRY_QUANTITY'
    end
    object qryInTachThueTENYTNO: TWideStringField
      FieldName = 'TENYTNO'
      Size = 120
    end
    object qryInTachThueYSUBNO_1: TWideStringField
      FieldName = 'YSUBNO_1'
      Size = 90
    end
    object qryInTachThueYSUBNO_2: TWideStringField
      FieldName = 'YSUBNO_2'
      Size = 90
    end
    object qryInTachThueTENYTCO: TWideStringField
      FieldName = 'TENYTCO'
      Size = 120
    end
    object qryInTachThueYSUBCO_1: TWideStringField
      FieldName = 'YSUBCO_1'
      Size = 90
    end
    object qryInTachThueYSUBCO_2: TWideStringField
      FieldName = 'YSUBCO_2'
      Size = 90
    end
    object qryInTachThueTENYTNO2: TWideStringField
      FieldName = 'TENYTNO2'
      Size = 120
    end
    object qryInTachThueY2SUBNO_1: TWideStringField
      FieldName = 'Y2SUBNO_1'
      Size = 90
    end
    object qryInTachThueY2SUBNO_2: TWideStringField
      FieldName = 'Y2SUBNO_2'
      Size = 90
    end
    object qryInTachThueTENYTCO2: TWideStringField
      FieldName = 'TENYTCO2'
      Size = 120
    end
    object qryInTachThueY2SUBCO_1: TWideStringField
      FieldName = 'Y2SUBCO_1'
      Size = 90
    end
    object qryInTachThueY2SUBCO_2: TWideStringField
      FieldName = 'Y2SUBCO_2'
      Size = 90
    end
    object qryInTachThueTONGTIEN_OUT: TIBOFloatField
      FieldName = 'TONGTIEN_OUT'
    end
    object qryInTachThueSUBNO_3: TWideStringField
      FieldName = 'SUBNO_3'
      Size = 126
    end
    object qryInTachThueSUBNO_4: TWideStringField
      FieldName = 'SUBNO_4'
      Size = 126
    end
    object qryInTachThueSUBNO_5: TWideStringField
      FieldName = 'SUBNO_5'
      Size = 126
    end
    object qryInTachThueSUBCO_3: TWideStringField
      FieldName = 'SUBCO_3'
      Size = 126
    end
    object qryInTachThueSUBCO_4: TWideStringField
      FieldName = 'SUBCO_4'
      Size = 126
    end
    object qryInTachThueSUBCO_5: TWideStringField
      FieldName = 'SUBCO_5'
      Size = 126
    end
    object qryInTachThueYSUBNO_3: TWideStringField
      FieldName = 'YSUBNO_3'
      Size = 126
    end
    object qryInTachThueYSUBNO_4: TWideStringField
      FieldName = 'YSUBNO_4'
      Size = 126
    end
    object qryInTachThueYSUBNO_5: TWideStringField
      FieldName = 'YSUBNO_5'
      Size = 126
    end
    object qryInTachThueYSUBCO_3: TWideStringField
      FieldName = 'YSUBCO_3'
      Size = 126
    end
    object qryInTachThueYSUBCO_4: TWideStringField
      FieldName = 'YSUBCO_4'
      Size = 126
    end
    object qryInTachThueYSUBCO_5: TWideStringField
      FieldName = 'YSUBCO_5'
      Size = 126
    end
    object qryInTachThueY2SUBNO_3: TWideStringField
      FieldName = 'Y2SUBNO_3'
      Size = 126
    end
    object qryInTachThueY2SUBNO_4: TWideStringField
      FieldName = 'Y2SUBNO_4'
      Size = 126
    end
    object qryInTachThueY2SUBNO_5: TWideStringField
      FieldName = 'Y2SUBNO_5'
      Size = 126
    end
    object qryInTachThueY2SUBCO_3: TWideStringField
      FieldName = 'Y2SUBCO_3'
      Size = 126
    end
    object qryInTachThueY2SUBCO_4: TWideStringField
      FieldName = 'Y2SUBCO_4'
      Size = 126
    end
    object qryInTachThueY2SUBCO_5: TWideStringField
      FieldName = 'Y2SUBCO_5'
      Size = 126
    end
  end
  object dsInTachThue: TDataSource
    DataSet = qryInTachThue
    Left = 170
    Top = 330
  end
  object pmTemplate: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbtnPhieuDK
        Visible = True
      end
      item
        Item = bbtnPhieuNC
        Visible = True
      end>
    UseOwnFont = False
    Left = 330
    Top = 240
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 734
    Top = 148
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        01060000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406094252414E43485F49440D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200C466F6E742E43686172736574070F44454641554C545F43484152534554
        0A466F6E742E436F6C6F72070C636C57696E646F77546578740B466F6E742E48
        656967687402F509466F6E742E4E616D6506065461686F6D610A466F6E742E53
        74796C650B000A506172656E74466F6E74081042616E64466F6E742E43686172
        736574070F44454641554C545F434841525345540E42616E64466F6E742E436F
        6C6F72070C636C57696E646F77546578740F42616E64466F6E742E4865696768
        7402F50D42616E64466F6E742E4E616D65060D4D532053616E73205365726966
        0E42616E64466F6E742E5374796C650B000A44617461536F75726365070F4D61
        696E444D2E64734272616E63680F46696C7465722E43726974657269610A0400
        00000000000012486561646572466F6E742E43686172736574070F4445464155
        4C545F4348415253455410486561646572466F6E742E436F6C6F72070C636C57
        696E646F775465787411486561646572466F6E742E48656967687402F50F4865
        61646572466F6E742E4E616D6506065461686F6D6110486561646572466F6E74
        2E5374796C650B000B4C6F6F6B416E644665656C07066C66466C6174094F7074
        696F6E7344420B106564676F43616E63656C4F6E457869740D6564676F43616E
        44656C6574650D6564676F43616E496E73657274116564676F43616E4E617669
        676174696F6E116564676F436F6E6669726D44656C657465126564676F4C6F61
        64416C6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F70
        74696F6E73566965770B0D6564676F4175746F57696474680D6564676F557365
        4269746D6170001350726576696577466F6E742E43686172736574070F444546
        41554C545F434841525345541150726576696577466F6E742E436F6C6F720706
        636C426C75651250726576696577466F6E742E48656967687402F51050726576
        696577466F6E742E4E616D65060D4D532053616E732053657269661150726576
        696577466F6E742E5374796C650B0000135464784442477269644D61736B436F
        6C756D6E094252414E43485F49440743617074696F6E140E0000004DC3A320C4
        91C6A16E2076E1BB8B0C466F6E742E43686172736574070F44454641554C545F
        434841525345540A466F6E742E436F6C6F72070C636C57696E646F7754657874
        0B466F6E742E48656967687402F509466F6E742E4E616D6506065461686F6D61
        0A466F6E742E5374796C650B000F486561646572416C69676E6D656E74070874
        6143656E74657205576964746802560942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D6506094252414E43485F49440C43617074
        696F6E5F5554463706154D2B414F4D202B415245426F512D6E20762B48737300
        00135464784442477269644D61736B436F6C756D6E0846554C4C4E414D450743
        617074696F6E141E00000054C3AA6E20C491C6A16E2076E1BB8B2028C491E1BA
        A77920C491E1BBA7290F486561646572416C69676E6D656E740708746143656E
        7465720756697369626C65080557696474680323010942616E64496E64657802
        0008526F77496E6465780200094669656C644E616D65060846554C4C4E414D45
        0C43617074696F6E5F55544637062B542B414F6F2D6E202B415245426F512D6E
        20762B48737320282B4152456570772D79202B41524565357729000013546478
        4442477269644D61736B436F6C756D6E0953484F52544E414D45074361707469
        6F6E140F00000054C3AA6E20C491C6A16E2076E1BB8B0F486561646572416C69
        676E6D656E740708746143656E7465720942616E64496E646578020008526F77
        496E6465780200094669656C644E616D65060953484F52544E414D450C436170
        74696F6E5F555446370617542B414F6F2D6E202B415245426F512D6E20762B48
        7373000000}
    end
  end
  object qryComBranch: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM COMPANY_FILE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    EditSQL.Strings = (
      'UPDATE COMPANY_FILE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   FULLNAME = :FULLNAME,'
      '   SHORTNAME = :SHORTNAME,'
      '   ISMIN = :ISMIN,'
      '   PBRANCH_ID = :PBRANCH_ID,'
      '   COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO COMPANY_FILE('
      '   BRANCH_ID, /*PK*/'
      '   FULLNAME,'
      '   SHORTNAME,'
      '   ISMIN,'
      '   PBRANCH_ID)'
      'VALUES ('
      '   :BRANCH_ID,'
      '   :FULLNAME,'
      '   :SHORTNAME,'
      '   :ISMIN,'
      '   :PBRANCH_ID)')
    KeyLinks.Strings = (
      'COMPANY_FILE.BRANCH_ID')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT BRANCH_ID'
      '     , FULLNAME'
      '     , SHORTNAME'
      '     , ISMIN'
      '     , PBRANCH_ID'
      '     , COMPANY_ID'
      'FROM COMPANY_FILE '
      'WHERE BRANCH_ID STARTING WITH :BRANCH_ID AND ISMIN =1'
      'order by BRANCH_ID')
    FieldOptions = []
    Left = 762
    Top = 136
    object qryComBranchBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryComBranchFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryComBranchSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 63
    end
    object qryComBranchISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryComBranchPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 6
    end
    object qryComBranchCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
      Required = True
    end
  end
  object dsComBranch: TDataSource
    DataSet = qryComBranch
    Left = 762
    Top = 148
  end
  object qryCheckBal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'shtk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'denngay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'branch_id'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'benno')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select benno,benco from macro_sodutktaingay(:shtk,:denngay,0,:br' +
        'anch_id)')
    FieldOptions = []
    Left = 272
    Top = 300
    object qryCheckBalBENNO: TIBOFloatField
      FieldName = 'BENNO'
    end
    object qryCheckBalBENCO: TIBOFloatField
      FieldName = 'BENCO'
    end
  end
  object qryBenNo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
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
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryBenNoBeforeOpen
    SQL.Strings = (
      'select  DEBIT_ACC, sum(ENTRY_VALUE) ENTRY_VALUE'
      'FROM FULL_ENTRYS'
      
        'where DOC_ID = :DOC_ID and PERIOD_ID = :PERIOD_ID and BRANCH_ID ' +
        '= :BRANCH_ID '
      'group by DEBIT_ACC'
      'Order by DEBIT_ACC'
      '')
    FieldOptions = []
    Left = 308
    Top = 300
    object qryBenNoDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object qryBenNoENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
      ReadOnly = True
    end
  end
  object qryBenCo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
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
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryBenCoBeforeOpen
    SQL.Strings = (
      'select  CREDIT_ACC, sum(ENTRY_VALUE) ENTRY_VALUE'
      'FROM FULL_ENTRYS'
      
        'where DOC_ID = :DOC_ID and PERIOD_ID = :PERIOD_ID and BRANCH_ID ' +
        '= :BRANCH_ID'
      'group by CREDIT_ACC'
      'Order by CREDIT_ACC'
      '')
    FieldOptions = []
    Left = 348
    Top = 300
    object IBOFloatField1: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
      ReadOnly = True
    end
    object qryBenCoCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      ReadOnly = True
      Required = True
      Size = 5
    end
  end
  object dsBenCo: TDataSource
    DataSet = qryBenCo
    Left = 348
    Top = 328
  end
  object dsBenNo: TDataSource
    DataSet = qryBenNo
    Left = 308
    Top = 328
  end
  object dplBenNo: TppDBPipeline
    DataSource = dsBenNo
    UserName = 'dplBenNo'
    Left = 307
    Top = 358
    object ppField1: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'DEBIT_ACC'
      FieldName = 'DEBIT_ACC'
      FieldLength = 135
      DisplayWidth = 135
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'CREDIT_ACC'
      FieldName = 'CREDIT_ACC'
      FieldLength = 135
      DisplayWidth = 135
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'DEBIT_OBJ'
      FieldName = 'DEBIT_OBJ'
      FieldLength = 405
      DisplayWidth = 405
      Position = 5
    end
    object ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_TYPE'
      FieldName = 'DEBIT_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'CREDIT_OBJ'
      FieldName = 'CREDIT_OBJ'
      FieldLength = 405
      DisplayWidth = 405
      Position = 7
    end
    object ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_TYPE'
      FieldName = 'CREDIT_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_VALUE'
      FieldName = 'ENTRY_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 765
      DisplayWidth = 765
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'NGUOINHAP'
      FieldName = 'NGUOINHAP'
      FieldLength = 45
      DisplayWidth = 45
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 63
      DisplayWidth = 63
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'TENDTNO'
      FieldName = 'TENDTNO'
      FieldLength = 405
      DisplayWidth = 405
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'SUBNO_1'
      FieldName = 'SUBNO_1'
      FieldLength = 405
      DisplayWidth = 405
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'SUBNO_2'
      FieldName = 'SUBNO_2'
      FieldLength = 405
      DisplayWidth = 405
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'TENDTCO'
      FieldName = 'TENDTCO'
      FieldLength = 405
      DisplayWidth = 405
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'SUBCO_1'
      FieldName = 'SUBCO_1'
      FieldLength = 405
      DisplayWidth = 405
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'SUBCO_2'
      FieldName = 'SUBCO_2'
      FieldLength = 405
      DisplayWidth = 405
      Position = 21
    end
    object ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAT_PERCENT'
      FieldName = 'VAT_PERCENT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'DEBIT_DETAIL'
      FieldName = 'DEBIT_DETAIL'
      FieldLength = 135
      DisplayWidth = 135
      Position = 23
    end
    object ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_DTYPE'
      FieldName = 'DEBIT_DTYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'CREDIT_DETAIL'
      FieldName = 'CREDIT_DETAIL'
      FieldLength = 135
      DisplayWidth = 135
      Position = 25
    end
    object ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_DTYPE'
      FieldName = 'CREDIT_DTYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'ACTICLE_ID'
      FieldName = 'ACTICLE_ID'
      FieldLength = 135
      DisplayWidth = 135
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'PAYFOR_DOC'
      FieldName = 'PAYFOR_DOC'
      FieldLength = 135
      DisplayWidth = 135
      Position = 28
    end
    object ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAYFOR_PERIOD'
      FieldName = 'PAYFOR_PERIOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_ID'
      FieldName = 'BUDGET_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT_SCALE'
      FieldName = 'DISCOUNT_SCALE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT_VALUE'
      FieldName = 'DISCOUNT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'MASTER_TAG'
      FieldName = 'MASTER_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'MASTER_DATE'
      FieldName = 'MASTER_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 34
    end
    object ppField36: TppField
      FieldAlias = 'MASTER_WARE'
      FieldName = 'MASTER_WARE'
      FieldLength = 63
      DisplayWidth = 63
      Position = 35
    end
    object ppField37: TppField
      FieldAlias = 'MASTER_TOWARE'
      FieldName = 'MASTER_TOWARE'
      FieldLength = 63
      DisplayWidth = 63
      Position = 36
    end
    object ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_ID'
      FieldName = 'INVOICE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'APP_UPDATE'
      FieldName = 'APP_UPDATE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORIGIN_PRICE'
      FieldName = 'ORIGIN_PRICE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGTIEN'
      FieldName = 'TONGTIEN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'SL'
      FieldName = 'SL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGTIEN_CK'
      FieldName = 'TONGTIEN_CK'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGTIENTHUE'
      FieldName = 'TONGTIENTHUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNIT_AMOUNT'
      FieldName = 'UNIT_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGPTTHUE'
      FieldName = 'TONGPTTHUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object ppField47: TppField
      FieldAlias = 'FIELD2'
      FieldName = 'FIELD2'
      FieldLength = 90
      DisplayWidth = 90
      Position = 46
    end
  end
  object dplBenCo: TppDBPipeline
    DataSource = dsBenCo
    UserName = 'dplBenCo'
    Left = 348
    Top = 358
    object ppField48: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_ID'
      FieldName = 'ENTRY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField51: TppField
      FieldAlias = 'DEBIT_ACC'
      FieldName = 'DEBIT_ACC'
      FieldLength = 135
      DisplayWidth = 135
      Position = 3
    end
    object ppField52: TppField
      FieldAlias = 'CREDIT_ACC'
      FieldName = 'CREDIT_ACC'
      FieldLength = 135
      DisplayWidth = 135
      Position = 4
    end
    object ppField53: TppField
      FieldAlias = 'DEBIT_OBJ'
      FieldName = 'DEBIT_OBJ'
      FieldLength = 405
      DisplayWidth = 405
      Position = 5
    end
    object ppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_TYPE'
      FieldName = 'DEBIT_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField55: TppField
      FieldAlias = 'CREDIT_OBJ'
      FieldName = 'CREDIT_OBJ'
      FieldLength = 405
      DisplayWidth = 405
      Position = 7
    end
    object ppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_TYPE'
      FieldName = 'CREDIT_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_AMOUNT'
      FieldName = 'ENTRY_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_PRICE'
      FieldName = 'ENTRY_PRICE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRY_VALUE'
      FieldName = 'ENTRY_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'TYGIANT'
      FieldName = 'TYGIANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppField61: TppField
      FieldAlias = 'ENTRY_NOTE'
      FieldName = 'ENTRY_NOTE'
      FieldLength = 765
      DisplayWidth = 765
      Position = 13
    end
    object ppField62: TppField
      FieldAlias = 'NGUOINHAP'
      FieldName = 'NGUOINHAP'
      FieldLength = 45
      DisplayWidth = 45
      Position = 14
    end
    object ppField63: TppField
      FieldAlias = 'CURRENCY_ID'
      FieldName = 'CURRENCY_ID'
      FieldLength = 63
      DisplayWidth = 63
      Position = 15
    end
    object ppField64: TppField
      FieldAlias = 'TENDTNO'
      FieldName = 'TENDTNO'
      FieldLength = 405
      DisplayWidth = 405
      Position = 16
    end
    object ppField65: TppField
      FieldAlias = 'SUBNO_1'
      FieldName = 'SUBNO_1'
      FieldLength = 405
      DisplayWidth = 405
      Position = 17
    end
    object ppField66: TppField
      FieldAlias = 'SUBNO_2'
      FieldName = 'SUBNO_2'
      FieldLength = 405
      DisplayWidth = 405
      Position = 18
    end
    object ppField67: TppField
      FieldAlias = 'TENDTCO'
      FieldName = 'TENDTCO'
      FieldLength = 405
      DisplayWidth = 405
      Position = 19
    end
    object ppField68: TppField
      FieldAlias = 'SUBCO_1'
      FieldName = 'SUBCO_1'
      FieldLength = 405
      DisplayWidth = 405
      Position = 20
    end
    object ppField69: TppField
      FieldAlias = 'SUBCO_2'
      FieldName = 'SUBCO_2'
      FieldLength = 405
      DisplayWidth = 405
      Position = 21
    end
    object ppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAT_PERCENT'
      FieldName = 'VAT_PERCENT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppField71: TppField
      FieldAlias = 'DEBIT_DETAIL'
      FieldName = 'DEBIT_DETAIL'
      FieldLength = 135
      DisplayWidth = 135
      Position = 23
    end
    object ppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT_DTYPE'
      FieldName = 'DEBIT_DTYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppField73: TppField
      FieldAlias = 'CREDIT_DETAIL'
      FieldName = 'CREDIT_DETAIL'
      FieldLength = 135
      DisplayWidth = 135
      Position = 25
    end
    object ppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT_DTYPE'
      FieldName = 'CREDIT_DTYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppField75: TppField
      FieldAlias = 'ACTICLE_ID'
      FieldName = 'ACTICLE_ID'
      FieldLength = 135
      DisplayWidth = 135
      Position = 27
    end
    object ppField76: TppField
      FieldAlias = 'PAYFOR_DOC'
      FieldName = 'PAYFOR_DOC'
      FieldLength = 135
      DisplayWidth = 135
      Position = 28
    end
    object ppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAYFOR_PERIOD'
      FieldName = 'PAYFOR_PERIOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUDGET_ID'
      FieldName = 'BUDGET_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT_SCALE'
      FieldName = 'DISCOUNT_SCALE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISCOUNT_VALUE'
      FieldName = 'DISCOUNT_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'MASTER_TAG'
      FieldName = 'MASTER_TAG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField82: TppField
      FieldAlias = 'MASTER_DATE'
      FieldName = 'MASTER_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 34
    end
    object ppField83: TppField
      FieldAlias = 'MASTER_WARE'
      FieldName = 'MASTER_WARE'
      FieldLength = 63
      DisplayWidth = 63
      Position = 35
    end
    object ppField84: TppField
      FieldAlias = 'MASTER_TOWARE'
      FieldName = 'MASTER_TOWARE'
      FieldLength = 63
      DisplayWidth = 63
      Position = 36
    end
    object ppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_ID'
      FieldName = 'INVOICE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'APP_UPDATE'
      FieldName = 'APP_UPDATE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORIGIN_PRICE'
      FieldName = 'ORIGIN_PRICE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGTIEN'
      FieldName = 'TONGTIEN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'SL'
      FieldName = 'SL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object ppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGTIEN_CK'
      FieldName = 'TONGTIEN_CK'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object ppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGTIENTHUE'
      FieldName = 'TONGTIENTHUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object ppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNIT_AMOUNT'
      FieldName = 'UNIT_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'TONGPTTHUE'
      FieldName = 'TONGPTTHUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object ppField94: TppField
      FieldAlias = 'FIELD2'
      FieldName = 'FIELD2'
      FieldLength = 90
      DisplayWidth = 90
      Position = 46
    end
  end
  object dplInGop: TppDBPipeline
    DataSource = dsInGop
    UserName = 'dplInGop'
    Left = 64
    Top = 358
  end
  object dsInGop: TDataSource
    DataSet = qryInGop
    Left = 64
    Top = 329
  end
  object qryInGop: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DOCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryInGopBeforeOpen
    SQL.Strings = (
      
        'select  maso,tenhh,dvt,quicach,soluong,dongiant,nguyente,dongiav' +
        'nd,thanhtien'
      ' from SP_INGOP(:DOCID,:PERIOD,:BRANCH_ID)')
    FieldOptions = []
    Left = 64
    Top = 300
    object qryInGopMASO: TWideStringField
      FieldName = 'MASO'
      Size = 10
    end
    object qryInGopTENHH: TWideStringField
      FieldName = 'TENHH'
      Size = 42
    end
    object qryInGopDVT: TWideStringField
      FieldName = 'DVT'
      Size = 42
    end
    object qryInGopQUICACH: TWideStringField
      FieldName = 'QUICACH'
      Size = 42
    end
    object qryInGopSOLUONG: TIBOFloatField
      FieldName = 'SOLUONG'
    end
    object qryInGopDONGIANT: TIBOFloatField
      FieldName = 'DONGIANT'
    end
    object qryInGopNGUYENTE: TIBOFloatField
      FieldName = 'NGUYENTE'
    end
    object qryInGopDONGIAVND: TIBOFloatField
      FieldName = 'DONGIAVND'
    end
    object qryInGopTHANHTIEN: TIBOFloatField
      FieldName = 'THANHTIEN'
    end
  end
  object dplIntachThue: TppDBPipeline
    DataSource = dsInTachThue
    UserName = 'dplIntachThue'
    Left = 168
    Top = 360
  end
  object IB_Events1: TIB_Events
    AlertOnRegister = True
    Interval = 100
    IB_Connection = MainDM.cnMain
    Events.Strings = (
      'Refresh')
    Passive = False
    OnEventAlert = IB_Events1EventAlert
    Left = 64
    Top = 392
  end
  object IBOQuery1: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'loaiphieu'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD\CapNhatKhachhang\20090915\accounting_20' +
      '09_2010.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PDOC_TYPE'
      'FROM DOC_TYPE'
      'where DOCTYPE_ID=:loaiphieu')
    FieldOptions = []
    Left = 206
    Top = 396
  end
end
