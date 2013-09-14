object DocTempFrm: TDocTempFrm
  Left = 92
  Top = 64
  Width = 814
  Height = 568
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
    Width = 806
    Height = 534
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object edtSOPHIEU: TdxDBEdit
      Left = 63
      Top = 19
      Width = 100
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'DOC_ID'
      DataSource = dsDocument
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 211
      Top = 19
      Width = 161
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
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
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm phi'#7871'u m'#7899'i (Ctrl+N)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 14
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInsClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 93
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a phi'#7871'u n'#224'y'
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 16
      ParentShowHint = False
      ShowHint = True
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 164
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      Hint = 'L'#432'u l'#7841'i th'#244'ng tin '#273'ang nh'#7853'p (Ctrl+S)'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 24
      ParentShowHint = False
      ShowHint = True
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn5: TElPopupButton
      Left = 230
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      Hint = 'Kh'#244'ng l'#432'u nh'#432'ng th'#244'ng tin '#273#227' thay '#273#7893'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 25
      ParentShowHint = False
      ShowHint = True
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn7: TElPopupButton
      Left = 674
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      Hint = 'Hi'#7875'n th'#7883' th'#244'ng tin tr'#7907' gi'#250'p'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 22
      ParentShowHint = False
      ShowHint = True
      OnClick = BitBtn7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn8: TElPopupButton
      Left = 740
      Top = 508
      Width = 65
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
      TabOrder = 23
      ParentShowHint = False
      ShowHint = True
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit3: TdxDBEdit
      Left = 63
      Top = 67
      Width = 100
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      DataField = 'DOC_VOUCHER'
      DataSource = dsDocument
    end
    object dxDBEdit5: TdxDBEdit
      Left = 412
      Top = 67
      Width = 306
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      DataField = 'DOC_PERSONADDR'
      DataSource = dsDocument
    end
    object popKhoHang: TdxDBPopupEdit
      Left = 63
      Top = 42
      Width = 100
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnExit = popKhoHangExit
      DataField = 'WAREHOUSE_ID'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlWare
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = popKhoHangCloseUp
    end
    object btnPrint: TElPopupButton
      Left = 430
      Top = 508
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
      TabOrder = 19
      ParentShowHint = False
      ShowHint = True
      Action = acIn
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object popDT: TdxDBPopupEdit
      Left = 412
      Top = 41
      Width = 99
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      OnEnter = popDTEnter
      DataField = 'MADOITUONG'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = popDTCloseUp
    end
    object dxDBEdit8: TdxDBEdit
      Left = 595
      Top = 43
      Width = 217
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      DataField = 'DOC_PERSON'
      DataSource = dsDocument
    end
    object dxDBMemo1: TdxDBMemo
      Left = 63
      Top = 91
      Width = 704
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 12
      DataField = 'DOC_NOTES'
      DataSource = dsDocument
      Height = 40
    end
    object grdDetail: TdxDBGrid
      Left = 3
      Top = 146
      Width = 688
      Height = 254
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
      TabOrder = 13
      OnEnter = grdDetailEnter
      OnKeyDown = grdDetailKeyDown
      OnMouseUp = grdDetailMouseUp
      DataSource = dsDocEntry
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      OnEditing = grdDetailEditing
      object grdDetailDEBIT_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' chi ti'#7871't'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_OBJCloseUp
        OnInitPopup = grdDetailDEBIT_OBJInitPopup
        Caption_UTF7 = 'M+AOM chi ti+Hr8-t'
      end
      object grdDetailTENDTNO: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng chi ti'#7871't'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDTNO'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng chi ti+Hr8-t'
      end
      object grdDetailSUBNO_2: TdxDBGridMaskColumn
        Caption = #272'VT'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBNO_2'
        Caption_UTF7 = '+ARA-VT'
      end
      object grdDetailDEBIT_DETAIL: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DETAIL'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailDEBIT_DETAILCloseUp
        Caption_UTF7 = 'Y+Hr8-u t+HtE'
      end
      object grdDetailCREDIT_OBJ: TdxDBGridPopupColumn
        Caption = 'M'#227' chi ti'#7871't'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_OBJ'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailCREDIT_OBJCloseUp
        OnInitPopup = grdDetailCREDIT_OBJInitPopup
        Caption_UTF7 = 'M+AOM chi ti+Hr8-t'
      end
      object grdDetailTENDTCO: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7889'i t'#432#7907'ng chi ti'#7871't'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TENDTCO'
        Caption_UTF7 = 'T+AOo-n +AREe0Q-i t+AbAe4w-ng chi ti+Hr8-t'
      end
      object grdDetailSUBCO_2: TdxDBGridMaskColumn
        Caption = #272'VT'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBCO_2'
        Caption_UTF7 = '+ARA-VT'
      end
      object grdDetailCREDIT_DETAIL: TdxDBGridPopupColumn
        Caption = 'Y'#7871'u t'#7889
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DETAIL'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailCREDIT_DETAILCloseUp
        Caption_UTF7 = 'Y+Hr8-u t+HtE'
      end
      object grdDetailVAT_PERCENT: TdxDBGridSpinColumn
        Caption = '% GTGT'
        HeaderAlignment = taCenter
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VAT_PERCENT'
      end
      object grdDetailENTRY_AMOUNT: TdxDBGridColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_AMOUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object grdDetailENTRY_PRICE: TdxDBGridCalcColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_PRICE'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object grdDetailCURRENCY_ID: TdxDBGridPopupColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
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
        Width = 49
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
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_VALUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE ti+HsE-n'
      end
      object grdDetailTIENTHUE: TdxDBGridColumn
        Caption = 'Ti'#7873'n thu'#7871
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIENTHUE'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8'
      end
      object grdDetailENTRY_NOTE: TdxDBGridColumn
        Caption = 'N'#7897'i dung'
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'N+Htk-i dung'
      end
      object grdDetailACTICLE_ID: TdxDBGridPopupColumn
        Caption = 'H'#7841'n m'#7909'c'
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTICLE_ID'
        PopupControl = PopupFrm.PnlItem
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailACTICLE_IDCloseUp
        Caption_UTF7 = 'H+HqE-n m+HuU-c'
      end
    end
    object btnCopy: TElPopupButton
      Left = 67
      Top = 508
      Width = 22
      Height = 25
      Cursor = crDefault
      Hint = 'Ph'#225't sinh m'#7897't phi'#7871'u gi'#7889'ng y nh'#432' phi'#7871'u hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      Glyph.Data = {
        A6020000424DA60200000000000036000000280000000F0000000D0000000100
        18000000000070020000C40E0000C40E00000000000000000000D6DBDED6DBDE
        D6DBDED6DBDED6DBDED6DBDEA54D4AA54D4AA54D4AA54D4AA54D4AA54D4AA54D
        4AA54D4AA54D4A000000D6DBDED6DBDED6DBDED6DBDED6DBDED6DBDEA54D4AFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA54D4A000000D6DBDED6DBDE
        D6DBDED6DBDED6DBDED6DBDEA54D4AFFFFFF4A4D4A4A4D4A4A4D4A4A4D4A4A4D
        4AFFFFFFA54D4A0000004A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AA54D4AFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA54D4A0000004A4D4AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA54D4AFFFFFF4A4D4A4A4D4A4A4D4A4A4D4A4A4D
        4AFFFFFFA54D4A0000004A4D4AFFFFFF4A4D4A4A4D4A4A4D4A4A4D4AA54D4AFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA54D4A0000004A4D4AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA54D4AFFFFFF4A4D4A4A4D4AFFFFFFA54D4AA54D
        4AA54D4AA54D4A0000004A4D4AFFFFFF4A4D4A4A4D4A4A4D4A4A4D4AA54D4AFF
        FFFFFFFFFFFFFFFFFFFFFFA54D4AFFFFFFA54D4AD6DBDE0000004A4D4AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA54D4AFFFFFFFFFFFFFFFFFFFFFFFFA54D4AA54D
        4AD6DBDED6DBDE0000004A4D4AFFFFFF4A4D4A4A4D4AFFFFFF4A4D4AA54D4AA5
        4D4AA54D4AA54D4AA54D4AA54D4AD6DBDED6DBDED6DBDE0000004A4D4AFFFFFF
        FFFFFFFFFFFFFFFFFF4A4D4AFFFFFF4A4D4AD6DBDED6DBDED6DBDED6DBDED6DB
        DED6DBDED6DBDE0000004A4D4AFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AD6
        DBDED6DBDED6DBDED6DBDED6DBDED6DBDED6DBDED6DBDE0000004A4D4A4A4D4A
        4A4D4A4A4D4A4A4D4A4A4D4AD6DBDED6DBDED6DBDED6DBDED6DBDED6DBDED6DB
        DED6DBDED6DBDE000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 15
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCopyClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 296
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&H'#243'a '#273#417'n'
      TabOrder = 17
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 362
      Top = 508
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&PS PXK'
      TabOrder = 18
      OnClick = ElPopupButton2Click
      OnMouseUp = ElPopupButton2MouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object popDenKho: TdxDBPopupEdit
      Left = 211
      Top = 42
      Width = 23
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      OnExit = popDenKhoExit
      DataField = 'TO_WAREHOUSE'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlWare
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = popDenKhoCloseUp
    end
    object ElPopupButton3: TElPopupButton
      Left = 456
      Top = 508
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
      TabOrder = 20
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 482
      Top = 508
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'S'#7917'a l'#7841'i m'#7851'u phi'#7871'u in (F4)'
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
      TabOrder = 21
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBDateEdit2: TdxDBDateEdit
      Left = 595
      Top = 19
      Width = 95
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Alignment = taCenter
      DataField = 'PAY_DATE'
      DataSource = dsDocument
      PopupBorder = pbFrame3D
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 317
      Top = 42
      Width = 23
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      OnExit = dxDBPopupEdit1Exit
      DataField = 'WORK_NAME'
      DataSource = dsDocument
      PopupControl = PopupFrm.PnlWork
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit1CloseUp
    end
    object dxDBDateEdit3: TdxDBDateEdit
      Left = 211
      Top = 66
      Width = 161
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Alignment = taCenter
      DataField = 'VOUCHER_DATE'
      DataSource = dsDocument
      PopupBorder = pbFrame3D
      UseEditMask = True
      StoredValues = 5
    end
    object dxDBEdit1: TdxDBEdit
      Left = 412
      Top = 19
      Width = 99
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      DataField = 'BRANCH_ID'
      DataSource = dsDocument
    end
    object locFrmGroup_Root: TdxLayoutGroup
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
            object locFrmGroup7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locFrmGroup5: TdxLayoutGroup
                AutoAligns = [aaVertical]
                Caption = 'New Group'
                ShowBorder = False
                UseIndent = False
                object locFrmGroup8: TdxLayoutGroup
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object locFrmItem1: TdxLayoutItem
                    AutoAligns = []
                    AlignVert = avCenter
                    Caption = 'S'#7889' phi'#7871'u'
                    Control = edtSOPHIEU
                    ControlOptions.ShowBorder = False
                  end
                  object locFrmItem2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = ' Ng'#224'y l'#7853'p'
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object locFrmGroup3: TdxLayoutGroup
                  ShowCaption = False
                  ShowBorder = False
                  object locFrmGroup13: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locWare: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Kho h'#224'ng '
                      Offsets.Top = 2
                      Control = popKhoHang
                      ControlOptions.ShowBorder = False
                    end
                    object locToWare: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = ' '#273#7871'n kho'
                      Offsets.Top = 2
                      Control = popDenKho
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmWork: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'C'#244'ng tr'#236'nh'
                      Offsets.Top = 2
                      Control = dxDBPopupEdit1
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locFrmGroup14: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locCT: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Ch'#7913'ng t'#7915
                      Offsets.Top = 3
                      Control = dxDBEdit3
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmItem7: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'Ng'#224'y'
                      CaptionOptions.AlignHorz = taCenter
                      Offsets.Top = 2
                      Control = dxDBDateEdit3
                      ControlOptions.ShowBorder = False
                    end
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
                  ShowBorder = False
                  object locFrmGroup16: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locBranch: TdxLayoutItem
                      Caption = #272#417'n v'#7883
                      Control = dxDBEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object locNgayTT: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'Ng'#224'y thanh to'#225'n'
                      Control = dxDBDateEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locFrmGroup15: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object locFrmDT: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'M'#227' s'#7889
                      Control = popDT
                      ControlOptions.ShowBorder = False
                    end
                    object locFrmHT: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'H'#7885' t'#234'n'
                      Offsets.Top = 2
                      Control = dxDBEdit8
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object locFrmDC: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = #272#7883'a ch'#7881' '
                    Offsets.Top = 2
                    Control = dxDBEdit5
                    ControlOptions.ShowBorder = False
                  end
                end
                object locFrmGroup10: TdxLayoutGroup
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  UseIndent = False
                end
              end
            end
            object locFrmItem9: TdxLayoutItem
              Caption = 'N'#7897'i dung'
              Offsets.Top = 2
              Control = dxDBMemo1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object locFrmItem6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'grdDetail'
          ShowCaption = False
          Control = grdDetail
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
        Offsets.Top = 5
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
        object locBtnCopy: TdxLayoutItem
          Caption = 'TntBitBtn1'
          ShowCaption = False
          Control = btnCopy
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
        object locFrmInvoice: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFrmBtnPSPXK: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFrmItem10: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn1'
          Offsets.Left = 2
          ShowCaption = False
          Control = btnPrint
          ControlOptions.ShowBorder = False
        end
        object locFrmItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFrmItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
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
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 228
    Top = 296
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
    object acVAT: TAction
      Caption = 'acVAT'
      OnExecute = acVATExecute
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
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
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
      Caption = 'Ph'#225't sinh nguy'#234'n li'#7879'u theo '#273#7883'nh m'#7913'c'
      Category = 0
      Hint = 'Ph'#225't sinh nguy'#234'n li'#7879'u theo '#273#7883'nh m'#7913'c'
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
        Item = bbtnPSTheoDM
        Visible = True
      end
      item
        Item = bbtnGenDoc
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbtnHTNT
        Visible = True
      end
      item
        Item = dxBarButton3
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
    Left = 396
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
    Left = 424
    Top = 280
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplDocReport'
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
      end
      item
        ActiveColor = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        OwnerStyle = False
        Layout = blGlyphLeft
        Align = taRightJustify
      end>
    Left = 96
    Top = 208
  end
  object qryDocument: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\AOANH.GDB'
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
      '   TEMPLATE_ID = :TEMPLATE_ID,'
      '   WAREHOUSE_ID = :WAREHOUSE_ID,'
      '   MADOITUONG = :MADOITUONG,'
      '   LOAIDOITUONG = :LOAIDOITUONG,'
      '   LASTMODIFY = :LASTMODIFY,'
      '   TO_WAREHOUSE = :TO_WAREHOUSE,'
      '   PAY_DATE = :PAY_DATE,'
      '   WORK_ID = :WORK_ID,'
      '   VOUCHER_DATE = :VOUCHER_DATE,'
      '   DOCUMENT_TAG = :DOCUMENT_TAG'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
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
      '   TEMPLATE_ID,'
      '   WAREHOUSE_ID,'
      '   MADOITUONG,'
      '   LOAIDOITUONG,'
      '   LASTMODIFY,'
      '   TO_WAREHOUSE,'
      '   PAY_DATE,'
      '   WORK_ID,'
      '   VOUCHER_DATE,'
      '   DOCUMENT_TAG)'
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
      '   :TEMPLATE_ID,'
      '   :WAREHOUSE_ID,'
      '   :MADOITUONG,'
      '   :LOAIDOITUONG,'
      '   :LASTMODIFY,'
      '   :TO_WAREHOUSE,'
      '   :PAY_DATE,'
      '   :WORK_ID,'
      '   :VOUCHER_DATE,'
      '   :DOCUMENT_TAG)')
    KeyLinks.Strings = (
      'DOC_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryDocumentAfterCancel
    BeforeEdit = qryDocumentBeforeEdit
    AfterEdit = qryDocumentAfterEdit
    BeforeDelete = qryDocumentBeforeDelete
    AfterDelete = qryDocumentAfterDelete
    BeforeInsert = qryDocumentBeforeInsert
    AfterInsert = qryDocumentAfterInsert
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
      '     , TEMPLATE_ID '
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
      '     , WORK_NAME'
      '     , DOCUMENT_TAG'
      '     , BRANCH_ID'
      'FROM DOCUMENTS'
      
        'LEFT JOIN OBJECT_LIST on (DOCUMENTS.MADOITUONG=OBJECT_LIST.OBJEC' +
        'T_ID '
      'and DOCUMENTS.LOAIDOITUONG=OBJECT_LIST.OTYPE_ID)'
      'LEFT JOIN WORK_LIST on (WORK_LIST.WORK_ID =DOCUMENTS.WORK_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and DOC_ID=:DOC_ID and BRANCH_ID =:BR' +
        'ANCH_ID')
    FieldOptions = []
    Left = 12
    Top = 204
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
    object qryDocumentTEMPLATE_ID: TIntegerField
      FieldName = 'TEMPLATE_ID'
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
    object qryDocumentWORK_NAME: TWideStringField
      FieldName = 'WORK_NAME'
      Size = 126
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
      ReadOnly = True
      Required = True
      Size = 6
    end
  end
  object dsDocument: TDataSource
    DataSet = qryDocument
    Left = 12
    Top = 240
  end
  object qryDocEntry: TIBOQuery
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
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\AOANH.GDB'
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
      '   '
      '   MASTER_DATE = :MASTER_DATE'
      '  '
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
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
      '   MASTER_TAG,'
      '   MASTER_DATE,'
      '   MASTER_WARE,'
      '   MASTER_TOWARE)'
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
      '   :MASTER_TAG,'
      '   :MASTER_DATE,'
      '   :MASTER_WARE,'
      '   :MASTER_TOWARE)')
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID')
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
      '     , VAT_PERCENT'
      '     , DEBIT_DETAIL'
      '     , DEBIT_DTYPE'
      '     , CREDIT_DETAIL'
      '     , CREDIT_DTYPE'
      '     , ACTICLE_ID'
      '     , MASTER_TAG'
      '     , MASTER_DATE'
      '     , MASTER_WARE'
      '     , MASTER_TOWARE'
      '     , BRANCH_ID'
      'FROM FULL_ENTRYS'
      
        'LEFT JOIN OBJECT_LIST DTNO on (DTNO.OBJECT_ID=FULL_ENTRYS.DEBIT_' +
        'OBJ and DTNO.OTYPE_ID=FULL_ENTRYS.DEBIT_TYPE)'
      
        'LEFT JOIN OBJECT_LIST DTCO on (DTCO.OBJECT_ID=FULL_ENTRYS.CREDIT' +
        '_OBJ and DTCO.OTYPE_ID=FULL_ENTRYS.CREDIT_TYPE)'
      'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID and ENTRY_ID<>0'
      'Order by ENTRY_ID')
    FieldOptions = []
    Left = 54
    Top = 204
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
      Size = 15
    end
    object qryDocEntryCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
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
    object qryDocEntryTIENTHUE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIENTHUE'
      Calculated = True
    end
    object qryDocEntryVAT_PERCENT: TIBOFloatField
      FieldName = 'VAT_PERCENT'
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
    object qryDocEntryBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
  end
  object dsDocEntry: TDataSource
    DataSet = qryDocEntry
    Left = 54
    Top = 240
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 344
    Top = 208
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        C3040000545046301054647844424772696457726170706572000542616E6473
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
        444D2E64735054794769610F46696C7465722E43726974657269610A04000000
        0000000012486561646572466F6E742E43686172736574070C414E53495F4348
        415253455410486561646572466F6E742E436F6C6F72070C636C57696E646F77
        5465787411486561646572466F6E742E48656967687402F50F48656164657246
        6F6E742E4E616D6506065461686F6D6110486561646572466F6E742E5374796C
        650B00094F7074696F6E7344420B106564676F43616E63656C4F6E457869740D
        6564676F43616E44656C6574650D6564676F43616E496E73657274116564676F
        43616E4E617669676174696F6E116564676F436F6E6669726D44656C65746512
        6564676F4C6F6164416C6C5265636F726473106564676F557365426F6F6B6D61
        726B73000B4F7074696F6E73566965770B0D6564676F4175746F576964746813
        6564676F42616E6448656164657257696474680D6564676F5573654269746D61
        70001350726576696577466F6E742E43686172736574070F44454641554C545F
        434841525345541150726576696577466F6E742E436F6C6F720706636C426C75
        651250726576696577466F6E742E48656967687402F51050726576696577466F
        6E742E4E616D65060D4D532053616E732053657269661150726576696577466F
        6E742E5374796C650B00001354647844424772696444617465436F6C756D6E0A
        54494D455F504F494E540743617074696F6E140E0000005468E1BB9D6920C491
        69E1BB836D0F486561646572416C69676E6D656E740708746143656E74657205
        576964746803D7000942616E64496E646578020008526F77496E646578020009
        4669656C644E616D65060A54494D455F504F494E540C43617074696F6E5F5554
        4637061554682B4874302D69202B4152452D692B48734D2D6D00001354647844
        42477269644D61736B436F6C756D6E0C45584348414E47455241544507436170
        74696F6E140A000000C490C6A16E206769C3A10F486561646572416C69676E6D
        656E740708746143656E74657205576964746803A7000942616E64496E646578
        020008526F77496E6465780200094669656C644E616D65060C45584348414E47
        45524154450C43617074696F6E5F5554463706102B415241426F512D6E206769
        2B414F45000000}
    end
  end
  object qryVAT: TIBOQuery
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
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\AOANH.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM FULL_ENTRYS'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE FULL_ENTRYS SET'
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
      '   VAT_PERCENT = :VAT_PERCENT'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   ENTRY_ID = :OLD_ENTRY_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO FULL_ENTRYS('
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
      '   VAT_PERCENT)'
      'VALUES ('
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
      '   :VAT_PERCENT)')
    KeyLinks.Strings = (
      'DOC_ID'
      'ENTRY_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryVATNewRecord
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
      '     , VAT_PERCENT'
      'FROM FULL_ENTRYS'
      'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID and ENTRY_ID=0')
    FieldOptions = []
    Left = 126
    Top = 204
    object qryVATDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryVATENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
      Required = True
    end
    object qryVATPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryVATDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryVATCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryVATDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Size = 30
    end
    object qryVATDEBIT_TYPE: TSmallintField
      FieldName = 'DEBIT_TYPE'
    end
    object qryVATCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      Size = 30
    end
    object qryVATCREDIT_TYPE: TSmallintField
      FieldName = 'CREDIT_TYPE'
    end
    object qryVATENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryVATENTRY_PRICE: TIBOFloatField
      FieldName = 'ENTRY_PRICE'
    end
    object qryVATENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryVATTYGIANT: TIBOFloatField
      FieldName = 'TYGIANT'
    end
    object qryVATENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryVATNGUOINHAP: TWideStringField
      FieldName = 'NGUOINHAP'
      Size = 15
    end
    object qryVATCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 6
    end
    object qryVATVAT_PERCENT: TIBOFloatField
      FieldName = 'VAT_PERCENT'
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
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Enterprise 5.0\db\AOANH.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
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
      '     , sum(ENTRY_VALUE) SOTIEN'
      'FROM FULL_ENTRYS'
      'where DOC_ID=:DOC_ID and PERIOD_ID=:PERIOD_ID'
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
end
