object ChungtuGhisoFrm: TChungtuGhisoFrm
  Left = 209
  Top = 195
  Width = 640
  Height = 500
  HelpContext = 12
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
  DesignSize = (
    632
    466)
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 632
    Height = 466
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      632
      466)
    object btnClose: TElPopupButton
      Left = 554
      Top = 438
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 9
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 476
      Top = 438
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 8
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object grdKH: TdxDBGrid
      Left = 5
      Top = 36
      Width = 625
      Height = 132
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyDown = grdKHKeyDown
      OnMouseUp = grdKHMouseUp
      DataSource = dsVoucher
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdKHVOUCHER_ID: TdxDBGridMaskColumn
        Caption = 'S'#7889' ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VOUCHER_ID'
        SummaryFooterType = cstCount
        Caption_UTF7 = 'S+HtE ch+Huk-ng t+Hus'
      end
      object grdKHVOUCHER_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VOUCHER_DATE'
        Caption_UTF7 = 'Ng+AOA-y'
      end
      object grdKHVOUCHER_NOTE: TdxDBGridMaskColumn
        Caption = 'T'#234'n ch'#7913'ng t'#7915' ghi s'#7893
        HeaderAlignment = taCenter
        Width = 343
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VOUCHER_NOTE'
        Caption_UTF7 = 'T+AOo-n ch+Huk-ng t+Hus ghi s+HtU'
      end
      object grdKHTONGTIEN: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng ti'#7873'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TONGTIEN'
        Caption_UTF7 = 'T+HtU-ng ti+HsE-n'
      end
    end
    object grdDetail: TdxDBGrid
      Left = 5
      Top = 193
      Width = 625
      Height = 212
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KF'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = grdDetailKeyDown
      OnMouseUp = grdDetailMouseUp
      DataSource = dsDetail
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdDetailDEBIT_ACC: TdxDBGridPopupColumn
        Caption = 'TK N'#7907
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_ACC'
        SummaryFooterType = cstCount
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailNullDEBIT_ACCCloseUp
        Caption_UTF7 = 'TK N+HuM'
      end
      object grdDetailCREDIT_ACC: TdxDBGridPopupColumn
        Caption = 'TK C'#243
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_ACC'
        PopupControl = PopupFrm.PnlTK
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdDetailNullDEBIT_ACCCloseUp
        Caption_UTF7 = 'TK C+APM'
      end
      object grdDetailENTRY_SUB: TdxDBGridMaskColumn
        Caption = 'Tr'#237'ch y'#7871'u'
        HeaderAlignment = taCenter
        Width = 242
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_SUB'
        Caption_UTF7 = 'Tr+AO0-ch y+Hr8-u'
      end
      object grdDetailENTRY_VAL: TdxDBGridMaskColumn
        Caption = 'S'#7889' ti'#7873'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_VAL'
        SummaryFooterType = cstSum
        Caption_UTF7 = 'S+HtE ti+HsE-n'
      end
      object grdDetailENTRY_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 134
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object ElPopupButton2: TElPopupButton
      Left = 81
      Top = 438
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'In &ch'#7913'ng t'#7915
      TabOrder = 6
      OnClick = ElPopupButton2Click
      OnMouseUp = ElPopupButton2MouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtPrefix: TdxEdit
      Left = 100
      Top = 8
      Width = 100
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      MaxLength = 10
      StoredValues = 2
    end
    object edtSuffix: TdxEdit
      Left = 291
      Top = 8
      Width = 100
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      MaxLength = 10
      StoredValues = 2
    end
    object ElPopupButton1: TElPopupButton
      Left = 394
      Top = 6
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 2
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 159
      Top = 438
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&C'#7853'p nh'#7853't'
      TabOrder = 7
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 3
      Top = 438
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 5
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup1: TdxLayoutGroup
        Caption = #167#232'i t'#173#238'ng chi ti'#213't'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
      end
      object locFormGroup3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object locFormGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem3: TdxLayoutItem
            Caption = 'Chu'#7895'i tr'#432#7899'c k'#253' hi'#7879'u'
            Offsets.Top = 2
            Control = edtPrefix
            ControlOptions.ShowBorder = False
          end
          object locFormItem10: TdxLayoutItem
            Caption = 'Chu'#7895'i sau k'#253' hi'#7879'u'
            Offsets.Top = 2
            Control = edtSuffix
            ControlOptions.ShowBorder = False
          end
          object locFormItem11: TdxLayoutItem
            Caption = 'ElPopupButton1'
            CaptionOptions.Layout = clTop
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object lociKH: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'C'#225'c ch'#7913'ng t'#7915' ghi s'#7893
          CaptionOptions.Layout = clTop
          ShowCaption = False
          Control = grdKH
        end
        object locFormItem1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'C'#225'c b'#250't to'#225'n trong ch'#7913'ng t'#7915' ghi s'#7893' b'#234'n tr'#225'i'
          CaptionOptions.Layout = clTop
          ShowCaption = False
          Control = grdDetail
        end
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem4: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn4'
          ShowCaption = False
          Control = BitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = btnClose
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object PnlRemind: TElPanel
    Left = 100
    Top = 80
    Width = 440
    Height = 300
    Align = alNone
    MouseCapture = False
    TabOrder = 1
    Visible = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object lblLongnhau: TElLabel
      Left = 88
      Top = 272
      Width = 265
      Height = 13
      AutoSize = False
      Caption = 'C'#225'c b'#250't to'#225'n '#273#259'ng k'#253' n'#7857'm trong 1 b'#250't to'#225'n kh'#225'c'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblThieusot: TElLabel
      Left = 88
      Top = 272
      Width = 265
      Height = 13
      AutoSize = False
      Caption = 'C'#225'c b'#250't to'#225'n c'#243' ph'#225't sinh nh'#432'ng ch'#432'a '#273#432#7907'c '#273#259'ng k'#253
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object grdRemind: TdxDBGrid
      Left = 1
      Top = 1
      Width = 438
      Height = 269
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'tkno'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      TabOrder = 0
      DataSource = dsRemind
      DefaultRowHeight = 20
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object grdRemindMANHOM: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 163
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MANHOM'
        Caption_UTF7 = 'Lo+HqE-i ch+Huk-ng t+Hus'
      end
      object grdRemindTKNO: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n n'#7907
        HeaderAlignment = taCenter
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKNO'
        Caption_UTF7 = 'T+AOA-i kho+HqM-n n+HuM'
      end
      object grdRemindTKCO: TdxDBGridMaskColumn
        Caption = 'T'#224'i kho'#7843'n c'#243
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TKCO'
        Caption_UTF7 = 'T+AOA-i kho+HqM-n c+APM'
      end
    end
    object ElPopupButton5: TElPopupButton
      Left = 362
      Top = 272
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 1
      OnClick = ElPopupButton5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 3
      Top = 272
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem '#273#259'ng k'#253
      TabOrder = 2
      OnClick = ElPopupButton6Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 500
    Top = 8
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 532
    Top = 8
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsVoucher
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsVoucher
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsVoucher
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsVoucher
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
        Caption = 'C'#225'c ch'#7913'ng t'#7915' ghi s'#7893' trong k'#7923' '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 104
    Top = 56
  end
  object qryVoucher: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM CHUNGTUGHISO'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   VOUCHER_ID = :OLD_VOUCHER_ID')
    EditSQL.Strings = (
      'UPDATE CHUNGTUGHISO SET'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   VOUCHER_ID = :VOUCHER_ID, /*PK*/'
      '   VOUCHER_DATE = :VOUCHER_DATE,'
      '   VOUCHER_NOTE = :VOUCHER_NOTE,'
      '   MANHOMCTGS = :MANHOMCTGS'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   VOUCHER_ID = :OLD_VOUCHER_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO CHUNGTUGHISO('
      '   PERIOD_ID, /*PK*/'
      '   VOUCHER_ID, /*PK*/'
      '   VOUCHER_DATE,'
      '   VOUCHER_NOTE,'
      '   MANHOMCTGS)'
      'VALUES ('
      '   :PERIOD_ID,'
      '   :VOUCHER_ID,'
      '   :VOUCHER_DATE,'
      '   :VOUCHER_NOTE,'
      '   :MANHOMCTGS)')
    KeyLinks.Strings = (
      'VOUCHER_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryVoucherBeforeEdit
    BeforeDelete = qryVoucherBeforeDelete
    BeforeInsert = qryVoucherBeforeInsert
    AfterInsert = qryVoucherAfterInsert
    BeforePost = qryVoucherBeforePost
    OnNewRecord = qryVoucherNewRecord
    OnPostError = qryVoucherPostError
    SQL.Strings = (
      'SELECT m.VOUCHER_ID'
      '     , m.PERIOD_ID'
      '     , VOUCHER_DATE'
      '     , VOUCHER_NOTE'
      '     , m.VOUCHER_ID||m.PERIOD_ID KF'
      '     , MANHOMCTGS'
      '     , sum(ENTRY_VAL) TONGTIEN'
      'FROM CHUNGTUGHISO m'
      'LEFT JOIN CTCHUNGTUGHISO d on (m.VOUCHER_ID=d.VOUCHER_ID'
      '       and m.PERIOD_ID= d.PERIOD_ID) '
      'where m.PERIOD_ID=:KYHT'
      'group by m.VOUCHER_ID'
      '     , m.PERIOD_ID'
      '     , VOUCHER_DATE'
      '     , VOUCHER_NOTE'
      '     , MANHOMCTGS'
      'order by m.VOUCHER_ID')
    FieldOptions = []
    Left = 52
    Top = 92
    object qryVoucherVOUCHER_ID: TWideStringField
      FieldName = 'VOUCHER_ID'
      Required = True
      Size = 30
    end
    object qryVoucherPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryVoucherVOUCHER_DATE: TDateField
      FieldName = 'VOUCHER_DATE'
      Required = True
    end
    object qryVoucherVOUCHER_NOTE: TWideStringField
      FieldName = 'VOUCHER_NOTE'
      Size = 255
    end
    object qryVoucherKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 36
    end
    object qryVoucherMANHOMCTGS: TWideStringField
      FieldName = 'MANHOMCTGS'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qryVoucherTONGTIEN: TIBOFloatField
      FieldName = 'TONGTIEN'
      ReadOnly = True
    end
  end
  object dsVoucher: TDataSource
    DataSet = qryVoucher
    Left = 52
    Top = 135
  end
  object qryDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'VOUCHER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'KYHT'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM CTCHUNGTUGHISO'
      'WHERE'
      '   CREDIT_ACC = :OLD_CREDIT_ACC AND'
      '   DEBIT_ACC = :OLD_DEBIT_ACC AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   VOUCHER_ID = :OLD_VOUCHER_ID')
    EditSQL.Strings = (
      'UPDATE CTCHUNGTUGHISO SET'
      '   CREDIT_ACC = :CREDIT_ACC, /*PK*/'
      '   DEBIT_ACC = :DEBIT_ACC, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   VOUCHER_ID = :VOUCHER_ID, /*PK*/'
      '   ENTRY_SUB = :ENTRY_SUB,'
      '   ENTRY_VAL = :ENTRY_VAL,'
      '   ENTRY_NOTE = :ENTRY_NOTE'
      'WHERE'
      '   CREDIT_ACC = :OLD_CREDIT_ACC AND'
      '   DEBIT_ACC = :OLD_DEBIT_ACC AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   VOUCHER_ID = :OLD_VOUCHER_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO CTCHUNGTUGHISO('
      '   CREDIT_ACC, /*PK*/'
      '   DEBIT_ACC, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   VOUCHER_ID, /*PK*/'
      '   ENTRY_SUB,'
      '   ENTRY_VAL,'
      '   ENTRY_NOTE)'
      'VALUES ('
      '   :CREDIT_ACC,'
      '   :DEBIT_ACC,'
      '   :PERIOD_ID,'
      '   :VOUCHER_ID,'
      '   :ENTRY_SUB,'
      '   :ENTRY_VAL,'
      '   :ENTRY_NOTE)')
    KeyLinks.Strings = (
      'DEBIT_ACC'
      'CREDIT_ACC'
      'PERIOD_ID'
      'VOUCHER_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsVoucher
    SQL.Strings = (
      'SELECT DEBIT_ACC'
      '     , CREDIT_ACC'
      '     , PERIOD_ID'
      '     , ENTRY_SUB'
      '     , ENTRY_VAL'
      '     , ENTRY_NOTE'
      '     , VOUCHER_ID     '
      '     , DEBIT_ACC||CREDIT_ACC||PERIOD_ID||VOUCHER_ID KF'
      'FROM CTCHUNGTUGHISO'
      'where VOUCHER_ID=:VOUCHER_ID'
      '     and PERIOD_ID=:KYHT')
    FieldOptions = []
    Left = 572
    Top = 316
    object qryDetailDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryDetailCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryDetailPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryDetailENTRY_SUB: TWideStringField
      FieldName = 'ENTRY_SUB'
      Size = 255
    end
    object qryDetailENTRY_VAL: TIBOFloatField
      FieldName = 'ENTRY_VAL'
    end
    object qryDetailENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryDetailVOUCHER_ID: TWideStringField
      FieldName = 'VOUCHER_ID'
      Required = True
      Size = 30
    end
    object qryDetailKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 66
    end
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 572
    Top = 359
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
    Left = 20
    Top = 360
  end
  object rptReport: TppReport
    AutoStop = False
    DataPipeline = dplDetail
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
    Left = 48
    Top = 360
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplDetail'
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
  object dplDetail: TppDBPipeline
    DataSource = dsDetail
    SkipWhenNoRecords = False
    UserName = 'dplDetail'
    Left = 68
    Top = 360
    object dplDocReportppField1: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dplDocReportppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dplDocReportppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dplDocReportppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dplDocReportppField5: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object dplDocReportppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dplDocReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object dplDocReportppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object dplDocReportppField9: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object dplDocReportppField10: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object dplDocReportppField11: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object dplDocReportppField12: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object dplDocReportppField13: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object dplDocReportppField14: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object dplDocReportppField15: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object dplDocReportppField16: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object dplDocReportppField17: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object dplMaster: TppDBPipeline
    DataSource = dsVoucher
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    SkipWhenNoRecords = False
    UserName = 'dplMaster'
    Left = 68
    Top = 320
    object ppField1: TppField
      FieldAlias = 'DOC_ID'
      FieldName = 'DOC_ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDOC_TYPE'
      FieldName = 'PDOC_TYPE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCTYPE_ID'
      FieldName = 'DOCTYPE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOAIDOITUONG'
      FieldName = 'LOAIDOITUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'DOC_DATE'
      FieldName = 'DOC_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOC_TOTAL'
      FieldName = 'DOC_TOTAL'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE_ID'
      FieldName = 'TEMPLATE_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIOD_ID'
      FieldName = 'PERIOD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'DOC_PERSON'
      FieldName = 'DOC_PERSON'
      FieldLength = 126
      DisplayWidth = 126
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'DOC_PERSONADDR'
      FieldName = 'DOC_PERSONADDR'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'DOC_VOUCHER'
      FieldName = 'DOC_VOUCHER'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'DOC_NOTES'
      FieldName = 'DOC_NOTES'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'WAREHOUSE_ID'
      FieldName = 'WAREHOUSE_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'ITEM_ID'
      FieldName = 'ITEM_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'MADOITUONG'
      FieldName = 'MADOITUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'OBJECT_NAME'
      FieldName = 'OBJECT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'NGUOILAP'
      FieldName = 'NGUOILAP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object qryRemind: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'KYHT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERFIX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUFFIX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'tkno')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryVoucherBeforeEdit
    BeforeDelete = qryVoucherBeforeDelete
    BeforeInsert = qryVoucherBeforeInsert
    AfterInsert = qryVoucherAfterInsert
    BeforePost = qryVoucherBeforePost
    OnNewRecord = qryVoucherNewRecord
    OnPostError = qryVoucherPostError
    SQL.Strings = (
      
        'select colongnhau,tkno,tkco,manhom from SP_PS_CTGS(:KYHT,:NGAY,:' +
        'PERFIX,:SUFFIX,:BRANCH_ID)')
    FieldOptions = []
    Left = 276
    Top = 252
    object qryRemindCOLONGNHAU: TSmallintField
      FieldName = 'COLONGNHAU'
    end
    object qryRemindTKNO: TWideStringField
      FieldName = 'TKNO'
      Size = 15
    end
    object qryRemindTKCO: TWideStringField
      FieldName = 'TKCO'
      Size = 15
    end
    object qryRemindMANHOM: TWideStringField
      FieldName = 'MANHOM'
      Size = 30
    end
  end
  object dsRemind: TDataSource
    DataSet = qryRemind
    Left = 276
    Top = 295
  end
end
