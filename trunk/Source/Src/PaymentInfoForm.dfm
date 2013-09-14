object PaymentInfoFrm: TPaymentInfoFrm
  Left = 119
  Top = 177
  Width = 818
  Height = 557
  HelpContext = 21
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
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 810
    Height = 523
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 31
      Width = 584
      Height = 120
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DOC_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnDblClick = dxDBGrid1DblClick
      OnKeyDown = dxDBGrid1KeyDown
      OnMouseUp = dxDBGrid1MouseUp
      DataSource = dsPayment
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGrid1DOC_ID: TdxDBGridMaskColumn
        Caption = 'S'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_ID'
        Caption_UTF7 = 'S+HtE phi+Hr8-u'
      end
      object dxDBGrid1DOC_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_DATE'
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object dxDBGrid1NGAYGHISO: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ghi s'#7893
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYGHISO'
        Caption_UTF7 = 'Ng+AOA-y ghi s+HtU'
      end
      object dxDBGrid1DOC_NOTES: TdxDBGridMaskColumn
        Caption = 'N'#7897'i dung'
        HeaderAlignment = taCenter
        Visible = False
        Width = 3481
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_NOTES'
        Caption_UTF7 = 'N+Htk-i dung'
      end
      object dxDBGrid1CREDIT_ACC: TdxDBGridMaskColumn
        Caption = 'Tk C'#243
        HeaderAlignment = taCenter
        Visible = False
        Width = 215
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_ACC'
        Caption_UTF7 = 'Tk C+APM'
      end
      object dxDBGrid1CREDIT_OBJ: TdxDBGridMaskColumn
        Caption = #272'T C'#243
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_OBJ'
        Caption_UTF7 = '+ARA-T C+APM'
      end
      object dxDBGrid1CREDIT_DETAIL: TdxDBGridMaskColumn
        Caption = 'YT C'#243
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDIT_DETAIL'
        Caption_UTF7 = 'YT C+APM'
      end
      object dxDBGrid1DEBIT_ACC: TdxDBGridMaskColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_ACC'
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1DEBIT_DETAIL: TdxDBGridMaskColumn
        Caption = 'YT N'#7907
        HeaderAlignment = taCenter
        Visible = False
        Width = 240
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_DETAIL'
        Caption_UTF7 = 'YT N+HuM'
      end
      object dxDBGrid1DEBIT_OBJ: TdxDBGridMaskColumn
        Caption = #272'T N'#7907
        HeaderAlignment = taCenter
        Visible = False
        Width = 240
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEBIT_OBJ'
        Caption_UTF7 = '+ARA-T N+HuM'
      end
      object dxDBGrid1ENTRY_AMOUNT: TdxDBGridMaskColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 142
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_AMOUNT'
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object dxDBGrid1ENTRY_NOTE: TdxDBGridMaskColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Visible = False
        Width = 3481
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dxDBGrid1ENTRY_PRICE: TdxDBGridMaskColumn
        Caption = #272#417'n gi'#225
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_PRICE'
        Caption_UTF7 = '+ARABoQ-n gi+AOE'
      end
      object dxDBGrid1CURRENCY_ID: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_ID'
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object dxDBGrid1TYGIANT: TdxDBGridMaskColumn
        Caption = 'T'#7927' gi'#225
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYGIANT'
        Caption_UTF7 = 'T+Hvc gi+AOE'
      end
      object dxDBGrid1ENTRY_VALUE: TdxDBGridMaskColumn
        Caption = 'Th'#224'nh ti'#7873'n'
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRY_VALUE'
        Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
      end
    end
    object btnSendData: TElPopupButton
      Left = 362
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&G'#7917'i'
      Enabled = False
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSendDataClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 286
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = TntBitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dedtDenngay: TdxDateEdit
      Left = 189
      Top = 3
      Width = 96
      TabOrder = 1
      Alignment = taCenter
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object dedtTuNgay: TdxDateEdit
      Left = 45
      Top = 3
      Width = 96
      TabOrder = 0
      Alignment = taCenter
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 5
    end
    object btnDetail: TElPopupButton
      Left = 732
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem &phi'#7871'u'
      Enabled = False
      TabOrder = 5
      OnClick = btnDetailClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem6: TdxLayoutItem
          Caption = 'T'#7915' ng'#224'y'
          Control = dedtTuNgay
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = #273#7871'n ng'#224'y'
          Control = dedtDenngay
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = '&Xem'
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'TntBitBtn1'
          ShowCaption = False
          Control = btnSendData
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnDetail
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 
          'TK Gi'#225' v'#7889'n : L'#224' t'#224'i kho'#7843'n n'#7907' khi xu'#7845't h'#224'ng v'#7853'n chuy'#7875'n b'#7883' m'#7845't, ha' +
          'y kh'#225'ch h'#224'ng thu'#234' b'#7883' h'#432' h'#7887'ng m'#7845't m'#225't'
        CaptionOptions.AlignVert = tavBottom
        CaptionOptions.Layout = clBottom
        ShowCaption = False
        Control = dxDBGrid1
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 332
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
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
        Caption = 'Th'#244'ng tin thanh to'#225'n c'#244'ng n'#7907' 131'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 168
  end
  object qryPayment: TIBOQuery
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
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\Projects\MayHai\DB\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    KeyLinks.Strings = (
      'documents.DOC_ID'
      'documents.PERIOD_ID'
      'ENTRY_ID')
    KeyLinksAutoDefine = False
    ReadOnly = True
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select documents.doc_id,documents.period_id,doc_date,ngayghiso,d' +
        'oc_notes,'
      'credit_acc,credit_detail,credit_obj,currency_id,'
      'debit_acc,debit_detail,debit_obj,'
      'entry_amount,entry_id,entry_note,entry_price,entry_value,tygiant'
      'from documents, full_entrys'
      
        'where documents.doc_id= full_entrys.doc_id and documents.period_' +
        'id= full_entrys.period_id'
      'and doc_date between :tungay and :denngay'
      
        'and credit_acc starting with '#39'131'#39' order by doc_date,credit_obj,' +
        'credit_detail')
    FieldOptions = []
    Left = 75
    Top = 64
    object qryPaymentDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryPaymentPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryPaymentDOC_DATE: TDateField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object qryPaymentNGAYGHISO: TDateTimeField
      FieldName = 'NGAYGHISO'
    end
    object qryPaymentDOC_NOTES: TWideStringField
      FieldName = 'DOC_NOTES'
      Size = 255
    end
    object qryPaymentCREDIT_ACC: TWideStringField
      FieldName = 'CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryPaymentCREDIT_DETAIL: TWideStringField
      FieldName = 'CREDIT_DETAIL'
      Size = 30
    end
    object qryPaymentCREDIT_OBJ: TWideStringField
      FieldName = 'CREDIT_OBJ'
      Size = 30
    end
    object qryPaymentCURRENCY_ID: TWideStringField
      FieldName = 'CURRENCY_ID'
      Size = 6
    end
    object qryPaymentDEBIT_ACC: TWideStringField
      FieldName = 'DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryPaymentDEBIT_DETAIL: TWideStringField
      FieldName = 'DEBIT_DETAIL'
      Size = 30
    end
    object qryPaymentDEBIT_OBJ: TWideStringField
      FieldName = 'DEBIT_OBJ'
      Size = 30
    end
    object qryPaymentENTRY_AMOUNT: TIBOFloatField
      FieldName = 'ENTRY_AMOUNT'
    end
    object qryPaymentENTRY_ID: TSmallintField
      FieldName = 'ENTRY_ID'
      Required = True
    end
    object qryPaymentENTRY_NOTE: TWideStringField
      FieldName = 'ENTRY_NOTE'
      Size = 255
    end
    object qryPaymentENTRY_PRICE: TIBOFloatField
      FieldName = 'ENTRY_PRICE'
    end
    object qryPaymentENTRY_VALUE: TIBOFloatField
      FieldName = 'ENTRY_VALUE'
    end
    object qryPaymentTYGIANT: TIBOFloatField
      FieldName = 'TYGIANT'
    end
  end
  object dsPayment: TDataSource
    DataSet = qryPayment
    Left = 75
    Top = 101
  end
end
