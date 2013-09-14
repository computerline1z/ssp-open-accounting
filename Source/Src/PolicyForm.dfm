object PolicyFrm: TPolicyFrm
  Left = 162
  Top = 92
  Width = 862
  Height = 580
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
    Width = 854
    Height = 546
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object grdObj: TdxDBGrid
      Left = 5
      Top = 31
      Width = 688
      Height = 408
      Bands = <
        item
          Caption = 'Th'#244'ng tin ch'#237'nh'
          Fixed = bfLeft
        end
        item
          Caption = 'Th'#244'ng tin chung v'#7873' h'#7907'p '#273#7891'ng'
          Width = 1385
        end
        item
          Caption = 'Th'#244'ng tin kh'#225'c'
        end
        item
          Caption = 'Th'#244'ng tin c'#225'c gi'#225' tr'#7883
        end
        item
          Caption = 'Th'#244'ng tin v'#7873' h'#243'a '#273#417'n'
        end
        item
          Caption = 'C'#225'c th'#244'ng tin v'#7873' s'#7889' ph'#7843'i thu'
          Width = 444
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'OBJECT_ID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'POLICY_VALUE'
              SummaryFormat = '#,0.##;-#,0.##'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdObj_ID'
              SummaryField = 'OBJECT_ID'
              SummaryFormat = '#,0;-#,0 H'#7907'p '#273#7891'ng'
              SummaryType = cstCount
            end>
          Name = 'grdObjSummaryGroup2'
        end>
      SummarySeparator = ', '
      IsImportFromXLS = True
      Align = alClient
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
      OnKeyDown = grdObjKeyDown
      OnMouseUp = grdObjMouseUp
      DataSource = dsPolicy
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      RegistryPath = 'Software\SSP\Baohiem\Policy'
      ShowBands = True
      OnChangeColumn = grdObjChangeColumn
      OnChangeNode = grdObjChangeNode
      OnEditing = grdObjEditing
      object grdObjDEBT_LEN: TdxDBGridCheckColumn
        Caption = '+'
        HeaderAlignment = taCenter
        Sizing = False
        Width = 20
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CHECKED'
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object grdObj_ID: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Debit/Credit Note'
        CharCase = ecUpperCase
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
      end
      object grdObjCREATE_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y l'#7853'p'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CREATE_DATE'
        DateButtons = [btnToday]
        UseEditMask = True
        Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
      end
      object grdObjCUSTOMER_ID: TdxDBGridPopupColumn
        Caption = 'Customer'
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CUSTOMER_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjCUSTOMER_IDCloseUp
      end
      object grdObjCUSTOMER_NAME: TdxDBGridColumn
        Caption = 'T'#234'n kh'#225'ch h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 81
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CUSTOMER_NAME'
        Caption_UTF7 = 'T+AOo-n kh+AOE-ch h+AOA-ng'
      end
      object grdObjCUSTOMER_ADDR: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' kh'#225'ch h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 76
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CUSTOMER_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk kh+AOE-ch h+AOA-ng'
      end
      object grdObjCUSTOMER_TAXCODE: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' thu'#7871' kh'#225'ch h'#224'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 57
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CUSTOMER_TAXCODE'
        Caption_UTF7 = 'M+AOM s+HtE thu+Hr8 kh+AOE-ch h+AOA-ng'
      end
      object grdObjINSURER_ID: TdxDBGridPopupColumn
        Caption = 'Insurer'
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 1
        RowIndex = 0
        FieldName = 'INSURER_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjINSURER_IDCloseUp
      end
      object grdObjINSURER_NAME: TdxDBGridColumn
        Caption = 'T'#234'n nh'#224' cung c'#7845'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 81
        BandIndex = 1
        RowIndex = 0
        FieldName = 'INSURER_NAME'
        Caption_UTF7 = 'T+AOo-n nh+AOA cung c+HqU-p'
      end
      object grdObjINSURER_ADDR: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' nh'#224' cung c'#7845'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 76
        BandIndex = 1
        RowIndex = 0
        FieldName = 'INSURER_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk nh+AOA cung c+HqU-p'
      end
      object grdObjINSURER_TAXCODE: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' thu'#7871' nh'#224' cung c'#7845'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 57
        BandIndex = 1
        RowIndex = 0
        FieldName = 'INSURER_TAXCODE'
        Caption_UTF7 = 'M+AOM s+HtE thu+Hr8 nh+AOA cung c+HqU-p'
      end
      object grdObj_Other: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Other Name'
        CharCase = ecUpperCase
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'OTHER_NAME'
      end
      object grdObj_Name: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Name'
        CharCase = ecUpperCase
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 2
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '#,0'
      end
      object grdObj_Note: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 2
        RowIndex = 0
        FieldName = 'OBJECT_NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object grdObjGrp: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i BH'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 1
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjGrpCloseUp
        OnInitPopup = grdObjGrpInitPopup
        Caption_UTF7 = 'Lo+HqE-i BH'
      end
      object grdObjBRANCH_ID: TdxDBGridPopupColumn
        Caption = 'Branch'
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BRANCH_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjBRANCH_IDCloseUp
      end
      object grdObjMAKH: TdxDBGridPopupColumn
        Caption = #272#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 2
        RowIndex = 0
        FieldName = 'MAKH'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjMAKHCloseUp
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object grdObj_Sub1: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Sub 1'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 4
        RowIndex = 0
        FieldName = 'SUBINFO_1'
      end
      object grdObj_Sub2: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Sub 2'
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 4
        RowIndex = 0
        FieldName = 'SUBINFO_2'
      end
      object grdObjPRIMIUM: TdxDBGridCalcColumn
        Caption = 'Ti'#7873'n b'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 3
        RowIndex = 0
        FieldName = 'PREMIUM'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Ti+HsE-n b+HqM-o hi+HsM-m'
      end
      object grdObjTAX_VALUE: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n thu'#7871
        HeaderAlignment = taCenter
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TAX_VALUE'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8'
      end
      object grdObjPTTHUENT: TdxDBGridMaskColumn
        Caption = '% thu'#7871' nh'#224' th'#7847'u'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 3
        RowIndex = 0
        FieldName = 'PTTHUENT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = '% thu+Hr8 nh+AOA th+Hqc-u'
      end
      object grdObjTHUENT_NT: TdxDBGridMaskColumn
        Caption = 'Thu'#7871' nh'#224' th'#7847'u ngo'#7841'i t'#7879
        Color = clInfoBk
        HeaderAlignment = taCenter
        TabStop = False
        Width = 131
        BandIndex = 3
        RowIndex = 0
        FieldName = 'THUENT_NT'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Thu+Hr8 nh+AOA th+Hqc-u ngo+HqE-i t+Hsc'
      end
      object grdObjTHUENT_VND: TdxDBGridMaskColumn
        Caption = 'Thu'#7871' nh'#224' th'#7847'u VND'
        Color = clInfoBk
        HeaderAlignment = taCenter
        TabStop = False
        Width = 114
        BandIndex = 3
        RowIndex = 0
        FieldName = 'THUENT_VND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Thu+Hr8 nh+AOA th+Hqc-u VND'
      end
      object grdObjTOTALNT: TdxDBGridColumn
        Caption = 'T'#7893'ng c'#7897'ng'
        Color = clInfoBk
        HeaderAlignment = taCenter
        TabStop = False
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TOTALNT'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
      end
      object grdObjTIENTE: TdxDBGridPopupColumn
        Caption = 'Ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 49
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TIENTE'
        PopupControl = PopupFrm.grdNgoaite
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdObjTIENTECloseUp
        Caption_UTF7 = 'Ti+HsE-n t+Hsc'
      end
      object grdObjTYGIAHT: TdxDBGridColumn
        Caption = 'T'#7927' gi'#225
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TYGIAHT'
        Caption_UTF7 = 'T+Hvc gi+AOE'
      end
      object grdObjTOTALVND: TdxDBGridColumn
        Caption = 'Th'#224'nh ti'#7873'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TOTALVND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
      end
      object grdObjPTHOAHONG: TdxDBGridMaskColumn
        Caption = '% Hoa h'#7891'ng'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'PTHOAHONG'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = '% Hoa h+HtM-ng'
      end
      object grdObjHOAHONGNT: TdxDBGridColumn
        Caption = 'Hoa h'#7891'ng ngo'#7841'i t'#7879
        Color = clInfoBk
        HeaderAlignment = taCenter
        TabStop = False
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'HOAHONGNT'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Hoa h+HtM-ng ngo+HqE-i t+Hsc'
      end
      object grdObjHOAHONGVND: TdxDBGridColumn
        Caption = 'Hoa h'#7891'ng VND'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 74
        BandIndex = 3
        RowIndex = 0
        FieldName = 'HOAHONGVND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Hoa h+HtM-ng VND'
      end
      object grdObjPTTHUE: TdxDBGridMaskColumn
        Caption = '% Thu'#7871
        HeaderAlignment = taCenter
        BandIndex = 3
        RowIndex = 0
        FieldName = 'PTTHUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = '% Thu+Hr8'
      end
      object grdObjTIENTHUENT: TdxDBGridColumn
        Caption = 'Ti'#7873'n thu'#7871' ngo'#7841'i t'#7879
        Color = clInfoBk
        HeaderAlignment = taCenter
        TabStop = False
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TIENTHUENT'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8 ngo+HqE-i t+Hsc'
      end
      object grdObjTIENTHUEVND: TdxDBGridColumn
        Caption = 'Ti'#7873'n thu'#7871' VND'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 72
        BandIndex = 3
        RowIndex = 0
        FieldName = 'TIENTHUEVND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8 VND'
      end
      object grdObjINVOICE_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y '
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 4
        RowIndex = 0
        FieldName = 'INVOICE_DATE'
        UseEditMask = True
        Caption_UTF7 = 'Ng+AOA-y '
      end
      object grdObjINVOICE_RECEIVE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y nh'#7853'n'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 4
        RowIndex = 0
        FieldName = 'INVOICE_RECEIVE'
        UseEditMask = True
        Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n'
      end
      object grdObjINVOICE_SEND: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y g'#7917'i'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 4
        RowIndex = 0
        FieldName = 'INVOICE_SEND'
        UseEditMask = True
        Caption_UTF7 = 'Ng+AOA-y g+Hu0-i'
      end
      object grdObjOBJECT_STATUS: TdxDBGridCheckColumn
        Caption = 'Ho'#224'n t'#7845't'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 60
        BandIndex = 2
        RowIndex = 0
        FieldName = 'OBJECT_STATUS'
        ValueChecked = '-1'
        ValueUnchecked = '1'
        Caption_UTF7 = 'Ho+AOA-n t+HqU-t'
      end
      object grdObjSPTHU: TdxDBGridMaskColumn
        Caption = 'Ch'#7913'ng t'#7915' thu'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SPTHU'
        Caption_UTF7 = 'Ch+Huk-ng t+Hus thu'
      end
      object grdObjDATRA_NT: TdxDBGridMaskColumn
        Caption = 'S'#7889' '#273#227' tr'#7843' ngo'#7841'i t'#7879
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 70
        BandIndex = 3
        RowIndex = 0
        FieldName = 'DATRA_NT'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE +AREA4w tr+HqM ngo+HqE-i t+Hsc'
      end
      object grdObjDATRA_VN: TdxDBGridMaskColumn
        Caption = 'S'#7889' '#273#227' tr'#7843' VN'#272
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'DATRA_VN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'S+HtE +AREA4w tr+HqM VN+ARA'
      end
      object grdObjCONLAI_NT: TdxDBGridMaskColumn
        Caption = 'C'#242'n l'#7841'i theo ngo'#7841'i t'#7879
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CONLAI_NT'
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'C+API-n l+HqE-i theo ngo+HqE-i t+Hsc'
      end
      object grdObjCONLAI_VN: TdxDBGridMaskColumn
        Caption = 'C'#242'n l'#7841'i VND'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CONLAI_VN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+API-n l+HqE-i VND'
      end
      object grdObj_SUB3: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_3'
      end
      object grdObj_SUB4: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_4'
      end
      object grdObj_SUB5: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_5'
      end
      object grdObj_SUB6: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SUBINFO_6'
      end
      object grdObjNGAYTHU: TdxDBGridDateColumn
        Caption = 'Ng'#224'y thu'
        HeaderAlignment = taCenter
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NGAYTHU'
        Caption_UTF7 = 'Ng+AOA-y thu'
      end
      object grdObjINPUT_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y nh'#7853'p'
        DisableEditor = True
        HeaderAlignment = taRightJustify
        BandIndex = 1
        RowIndex = 0
        FieldName = 'INPUT_DATE'
        Caption_UTF7 = 'Ng+AOA-y nh+Hq0-p'
      end
      object grdObjPHAITHUNT: TdxDBGridColumn
        Caption = 'Nguy'#234'n t'#7879
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 5
        RowIndex = 0
        FieldName = 'PHAITHUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'Nguy+AOo-n t+Hsc'
      end
      object grdObjTYGIA: TdxDBGridColumn
        Caption = 'T'#7927' gi'#225
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 5
        RowIndex = 0
        FieldName = 'TYGIA'
        Caption_UTF7 = 'T+Hvc gi+AOE'
      end
      object grdObjPHAITHUVND: TdxDBGridColumn
        Caption = 'VND'
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 5
        RowIndex = 0
        FieldName = 'PHAITHUVND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
      end
      object grdObjDATHUNT: TdxDBGridColumn
        Caption = #272#227' thu (ngt'#7879')'
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 5
        RowIndex = 0
        FieldName = 'DATHUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = '+ARAA4w thu (ngt+Hsc)'
      end
      object grdObjDATHUVND: TdxDBGridColumn
        Caption = #272#227' thu (VND)'
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 5
        RowIndex = 0
        FieldName = 'DATHUVND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = '+ARAA4w thu (VND)'
      end
      object grdObjCONTHUNT: TdxDBGridColumn
        Caption = 'C'#242'n l'#7841'i (ng.t'#7879')'
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 5
        RowIndex = 0
        FieldName = 'CONTHUNT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0.##;-#,0.##'
        Caption_UTF7 = 'C+API-n l+HqE-i (ng.t+Hsc)'
      end
      object grdObjCONTHUVND: TdxDBGridColumn
        Caption = 'C'#242'n l'#7841'i (VND)'
        Color = clAqua
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 5
        RowIndex = 0
        FieldName = 'CONTHUVND'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,0;-#,0'
        Caption_UTF7 = 'C+API-n l+HqE-i (VND)'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 8
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 69
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 9
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 206
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 11
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 272
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 12
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 720
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 16
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 786
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 17
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 358
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      Hint = 'Left: Payment via GS, Right : Direct Payment'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Phi'#7871'u thu'
      TabOrder = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton1Click
      OnMouseUp = ElPopupButton1MouseUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 424
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L&i'#234'n quan'
      TabOrder = 14
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object deditDenngay: TdxDateEdit
      Left = 183
      Top = 6
      Width = 88
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      PopupBorder = pbFrame3D
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object deditTuNgay: TdxDateEdit
      Left = 45
      Top = 6
      Width = 88
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Alignment = taCenter
      PopupBorder = pbFrame3D
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object ElPopupButton3: TElPopupButton
      Left = 272
      Top = 3
      Width = 89
      Height = 25
      Cursor = crDefault
      Hint = 'Li'#7879't k'#234' nh'#7919'ng h'#7907'p '#273#7891'ng hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272'ang &th'#7921'c hi'#7879'n'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkInv: TdxCheckEdit
      Left = 633
      Top = 3
      Width = 117
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Caption = 'Th'#244'ng tin &h'#243'a '#273#417'n'
      OnChange = chkInvChange
    end
    object chkInfo: TdxCheckEdit
      Left = 751
      Top = 3
      Width = 100
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Caption = 'Th'#244'ng tin kh'#225'&c'
      OnChange = chkInfoChange
    end
    object btnSendMail: TElPopupButton
      Left = 490
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&G'#7917'i email'
      Enabled = False
      TabOrder = 18
      OnClick = btnSendMailClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 367
      Top = 3
      Width = 89
      Height = 25
      Cursor = crDefault
      Hint = 'Li'#7879't k'#234' nh'#7919'ng h'#7907'p '#273#7891'ng '#273#227' ho'#224'n t'#7845't'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#227' &ho'#224'n t'#7845't'
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 457
      Top = 3
      Width = 89
      Height = 25
      Cursor = crDefault
      Hint = 'Li'#7879't k'#234' t'#7845't c'#7843' h'#7907'p '#273#7891'ng'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Li'#7879't k'#234' to'#224'n &b'#7897
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ElPopupButton5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 135
      Top = 518
      Width = 65
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&S'#7917'a'
      TabOrder = 10
      OnClick = ElPopupButton7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 556
      Top = 518
      Width = 83
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseArrow = True
      OnArrowClick = ElPopupButton8ArrowClick
      UseXPThemes = True
      Caption = '&In ho'#225' '#273#417'n'
      TabOrder = 15
      OnClick = ElPopupButton8Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem10: TdxLayoutItem
            Caption = 'T'#7915' ng'#224'y'
            Offsets.Top = 3
            Control = deditTuNgay
            ControlOptions.ShowBorder = False
          end
          object locFormItem1: TdxLayoutItem
            Caption = #272#7871'n ng'#224'y'
            Offsets.Top = 3
            Control = deditDenngay
            ControlOptions.ShowBorder = False
          end
        end
        object locFormItem11: TdxLayoutItem
          Caption = 'ElPopupButton3'
          CaptionOptions.Layout = clBottom
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem15: TdxLayoutItem
          Caption = 'ElPopupButton4'
          CaptionOptions.Layout = clBottom
          Offsets.Left = 5
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem16: TdxLayoutItem
          Caption = 'ElPopupButton5'
          CaptionOptions.Layout = clBottom
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem12: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'dxCheckEdit1'
          CaptionOptions.Layout = clBottom
          ShowCaption = False
          Control = chkInv
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem13: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'dxCheckEdit1'
          CaptionOptions.Layout = clBottom
          ShowCaption = False
          Control = chkInfo
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object locFormGrd: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = grdObj
      end
      object locFormGroup1: TdxLayoutGroup
        Offsets.Top = 7
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.ShowBorder = False
        end
        object locFormItem18: TdxLayoutItem
          Caption = 'ElPopupButton7'
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Offsets.Left = 5
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 20
          ShowCaption = False
          Control = ElPopupButton1
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
        object locFormItem14: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = btnSendMail
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem19: TdxLayoutItem
          Caption = 'ElPopupButton8'
          ShowCaption = False
          Control = ElPopupButton8
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 376
    Top = 108
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 168
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsert'
      DataSource = dsPolicy
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsPolicy
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsPolicy
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsPolicy
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
        Caption = 'Danh s'#225'ch c'#225'c h'#7907'p '#273#7891'ng B'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 216
    Top = 112
  end
  object qryPolicy: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'tungay'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'denngay'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'user_id'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PolicyFlag'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Project\SSP_ACC_HOABINHCo\db\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_LIST'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_LIST SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   OBJGRP_ID = :OBJGRP_ID,'
      '   OACCOUNT_ID = :OACCOUNT_ID,'
      '   OBJECT_NAME = :OBJECT_NAME,'
      '   OTHER_NAME = :OTHER_NAME,'
      '   SUBINFO_1 = :SUBINFO_1,'
      '   SUBINFO_2 = :SUBINFO_2,'
      '   SUBINFO_3 = :SUBINFO_3,'
      '   SUBINFO_4 = :SUBINFO_4,'
      '   SUBINFO_5 = :SUBINFO_5,'
      '   SUBINFO_6 = :SUBINFO_6,'
      '   CREATE_DATE = :CREATE_DATE,'
      '   OBJECT_VALUE = :OBJECT_VALUE,'
      '   OBJECT_NOTES = :OBJECT_NOTES,'
      '   OBJECT_STATUS = :OBJECT_STATUS,'
      '   DEBT_LEN = :DEBT_LEN,'
      '   MAKH = :MAKH,'
      '   LOAIKH = :LOAIKH,'
      '   LASTUSER_MODIFY = :LASTUSER_MODIFY'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMDIChild
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_LIST('
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   OBJGRP_ID,'
      '   OACCOUNT_ID,'
      '   OBJECT_NAME,'
      '   OTHER_NAME,'
      '   SUBINFO_1,'
      '   SUBINFO_2,'
      '   SUBINFO_3,'
      '   SUBINFO_4,'
      '   SUBINFO_5,'
      '   SUBINFO_6,'
      '   CREATE_DATE,'
      '   OBJECT_VALUE,'
      '   OBJECT_NOTES,'
      '   OBJECT_STATUS,'
      '   DEBT_LEN,'
      '   MAKH,'
      '   LOAIKH,LASTUSER_MODIFY)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :OBJGRP_ID,'
      '   :OACCOUNT_ID,'
      '   :OBJECT_NAME,'
      '   :OTHER_NAME,'
      '   :SUBINFO_1,'
      '   :SUBINFO_2,'
      '   :SUBINFO_3,'
      '   :SUBINFO_4,'
      '   :SUBINFO_5,'
      '   :SUBINFO_6,'
      '   :CREATE_DATE,'
      '   :OBJECT_VALUE,'
      '   :OBJECT_NOTES,'
      '   :OBJECT_STATUS,'
      '   :DEBT_LEN,'
      '   :MAKH,'
      '   :LOAIKH,:LASTUSER_MODIFY)')
    KeyLinks.Strings = (
      'OBJECT_ID'
      'OTYPE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterCancel = qryPolicyAfterCancel
    BeforeEdit = qryPolicyBeforeEdit
    BeforeDelete = qryPolicyBeforeDelete
    AfterDelete = qryPolicyAfterDelete
    BeforeInsert = qryPolicyBeforeInsert
    AfterInsert = qryPolicyAfterInsert
    BeforePost = qryPolicyBeforePost
    AfterPost = qryPolicyAfterPost
    OnNewRecord = qryPolicyNewRecord
    OnPostError = qryPolicyPostError
    OnDeleteError = qryPolicyDeleteError
    SQL.Strings = (
      
        'SELECT * FROM SP_POLICY(:tungay,:denngay,:user_id,0,:PolicyFlag)' +
        ' '
      'order by INSURER_ID, CREATE_DATE desc')
    FieldOptions = []
    Left = 158
    Top = 80
    object qryPolicyOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPolicyOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryPolicyOTHER_NAME: TWideStringField
      FieldName = 'OTHER_NAME'
      Size = 126
    end
    object qryPolicySUBINFO_1: TWideStringField
      FieldName = 'SUBINFO_1'
      Size = 126
    end
    object qryPolicySUBINFO_2: TWideStringField
      FieldName = 'SUBINFO_2'
      Size = 63
    end
    object qryPolicyOBJECT_NOTES: TWideStringField
      FieldName = 'OBJECT_NOTES'
      Size = 126
    end
    object qryPolicyOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      OnChange = qryPolicyOBJGRP_IDChange
      Size = 15
    end
    object qryPolicyOACCOUNT_ID: TWideStringField
      FieldName = 'OACCOUNT_ID'
      Size = 15
    end
    object qryPolicyDEBT_LEN: TSmallintField
      FieldName = 'DEBT_LEN'
    end
    object qryPolicyMAKH: TWideStringField
      FieldName = 'MAKH'
      OnChange = qryPolicyMAKHChange
      Size = 30
    end
    object qryPolicyLOAIKH: TSmallintField
      FieldName = 'LOAIKH'
    end
    object qryPolicyCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
    end
    object qryPolicyPOLICY_ID: TWideStringField
      FieldName = 'POLICY_ID'
      Size = 30
    end
    object qryPolicyPOLICY_TYPE: TSmallintField
      FieldName = 'POLICY_TYPE'
    end
    object qryPolicyINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
    end
    object qryPolicyINVOICE_RECEIVE: TDateField
      FieldName = 'INVOICE_RECEIVE'
    end
    object qryPolicyINVOICE_SEND: TDateField
      FieldName = 'INVOICE_SEND'
    end
    object qryPolicyPTHOAHONG: TIBOFloatField
      FieldName = 'PTHOAHONG'
      OnChange = qryPolicyPTHOAHONGChange
    end
    object qryPolicyTIENTE: TWideStringField
      FieldName = 'TIENTE'
      OnChange = qryPolicyTIENTEChange
      Size = 6
    end
    object qryPolicyTYGIAHT: TIBOFloatField
      FieldName = 'TYGIAHT'
    end
    object qryPolicyCUSTOMER_ID: TWideStringField
      FieldName = 'CUSTOMER_ID'
      OnChange = qryPolicyCUSTOMER_IDChange
      Size = 30
    end
    object qryPolicyCUSTOMER_TYPE: TSmallintField
      FieldName = 'CUSTOMER_TYPE'
    end
    object qryPolicyINSURER_ID: TWideStringField
      FieldName = 'INSURER_ID'
      Required = True
      OnChange = qryPolicyINSURER_IDChange
      Size = 30
    end
    object qryPolicyINSURER_TYPE: TSmallintField
      FieldName = 'INSURER_TYPE'
      Required = True
    end
    object qryPolicyPREMIUM: TIBOFloatField
      FieldName = 'PREMIUM'
      OnChange = qryPolicyPREMIUMChange
    end
    object qryPolicyTAX_VALUE: TIBOFloatField
      Tag = 3
      FieldName = 'TAX_VALUE'
      OnChange = qryPolicyTAX_VALUEChange
    end
    object qryPolicyPTTHUE: TSmallintField
      FieldName = 'PTTHUE'
      OnChange = qryPolicyPTTHUEChange
    end
    object qryPolicyBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      OnChange = qryPolicyBRANCH_IDChange
      Size = 30
    end
    object qryPolicyTOTALVND: TIBOFloatField
      FieldName = 'TOTALVND'
    end
    object qryPolicyTOTALNT: TIBOFloatField
      Tag = 3
      FieldName = 'TOTALNT'
      OnChange = qryPolicyTOTALNTChange
    end
    object qryPolicyHOAHONGNT: TIBOFloatField
      Tag = 3
      FieldName = 'HOAHONGNT'
      OnChange = qryPolicyHOAHONGNTChange
    end
    object qryPolicyHOAHONGVND: TIBOFloatField
      FieldName = 'HOAHONGVND'
    end
    object qryPolicyTIENTHUENT: TIBOFloatField
      Tag = 3
      FieldName = 'TIENTHUENT'
      OnChange = qryPolicyTIENTHUENTChange
    end
    object qryPolicyTIENTHUEVND: TIBOFloatField
      FieldName = 'TIENTHUEVND'
    end
    object qryPolicyPTTHUENT: TIBOFloatField
      FieldName = 'PTTHUENT'
      OnChange = qryPolicyPTTHUENTChange
    end
    object qryPolicyTHUENT_NT: TIBOFloatField
      Tag = 3
      FieldName = 'THUENT_NT'
      OnChange = qryPolicyTHUENT_NTChange
    end
    object qryPolicyTHUENT_VND: TIBOFloatField
      FieldName = 'THUENT_VND'
    end
    object qryPolicyDATRA_NT: TIBOFloatField
      Tag = 3
      FieldName = 'DATRA_NT'
    end
    object qryPolicyDATRA_VN: TIBOFloatField
      FieldName = 'DATRA_VN'
    end
    object qryPolicyCONLAI_VN: TIBOFloatField
      Tag = 2
      FieldName = 'CONLAI_VN'
    end
    object qryPolicyCONLAI_NT: TIBOFloatField
      Tag = 3
      FieldName = 'CONLAI_NT'
    end
    object qryPolicyLOAIBH: TWideStringField
      FieldName = 'LOAIBH'
      Size = 126
    end
    object qryPolicySHTKPTRA: TWideStringField
      FieldName = 'SHTKPTRA'
      Size = 15
    end
    object qryPolicyINSURER_NAME: TWideStringField
      FieldName = 'INSURER_NAME'
      Size = 126
    end
    object qryPolicyINSURER_ADDR: TWideStringField
      FieldName = 'INSURER_ADDR'
      Size = 126
    end
    object qryPolicyINSURER_TAXCODE: TWideStringField
      FieldName = 'INSURER_TAXCODE'
      Size = 63
    end
    object qryPolicyCUSTOMER_NAME: TWideStringField
      FieldName = 'CUSTOMER_NAME'
      Size = 126
    end
    object qryPolicyCUSTOMER_ADDR: TWideStringField
      FieldName = 'CUSTOMER_ADDR'
      Size = 126
    end
    object qryPolicyCUSTOMER_TAXCODE: TWideStringField
      FieldName = 'CUSTOMER_TAXCODE'
      Size = 63
    end
    object qryPolicyOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryPolicyOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
    end
    object qryPolicyINSURER_EMAIL: TWideStringField
      FieldName = 'INSURER_EMAIL'
      Size = 126
    end
    object qryPolicySOTIEN_NT: TIBOFloatField
      Tag = 3
      FieldName = 'SOTIEN_NT'
    end
    object qryPolicySOTIEN_VN: TIBOFloatField
      FieldName = 'SOTIEN_VN'
    end
    object qryPolicyKYHT: TSmallintField
      FieldName = 'KYHT'
    end
    object qryPolicyCUSTOMER_EMAIL: TWideStringField
      FieldName = 'CUSTOMER_EMAIL'
      Size = 126
    end
    object qryPolicyCUSTOMER_SUB2: TWideStringField
      FieldName = 'CUSTOMER_SUB2'
      Size = 126
    end
    object qryPolicyCUSTOMER_SUB3: TWideStringField
      FieldName = 'CUSTOMER_SUB3'
      Size = 126
    end
    object qryPolicyCUSTOMER_SUB4: TWideStringField
      FieldName = 'CUSTOMER_SUB4'
      Size = 126
    end
    object qryPolicyCUSTOMER_SUB5: TWideStringField
      FieldName = 'CUSTOMER_SUB5'
      Size = 126
    end
    object qryPolicyCUSTOMER_SUB6: TWideStringField
      FieldName = 'CUSTOMER_SUB6'
      Size = 126
    end
    object qryPolicyINSURER_SUB3: TWideStringField
      FieldName = 'INSURER_SUB3'
      Size = 126
    end
    object qryPolicySUBINFO_3: TWideStringField
      FieldName = 'SUBINFO_3'
      Size = 126
    end
    object qryPolicySUBINFO_4: TWideStringField
      FieldName = 'SUBINFO_4'
      Size = 63
    end
    object qryPolicySUBINFO_5: TWideStringField
      FieldName = 'SUBINFO_5'
      Size = 126
    end
    object qryPolicySUBINFO_6: TWideStringField
      FieldName = 'SUBINFO_6'
      Size = 63
    end
    object qryPolicyOBJECT_VALUE: TIBOFloatField
      FieldName = 'OBJECT_VALUE'
    end
    object qryPolicyLASTUSER_MODIFY: TWideStringField
      FieldName = 'LASTUSER_MODIFY'
      Size = 15
    end
    object qryPolicyNGAYTHU: TDateField
      FieldName = 'NGAYTHU'
    end
    object qryPolicySPTHU: TWideStringField
      FieldName = 'SPTHU'
      Size = 255
    end
    object qryPolicyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object qryPolicyPHAITHUNT: TIBOFloatField
      FieldName = 'PHAITHUNT'
    end
    object qryPolicyPHAITHUVND: TIBOFloatField
      FieldName = 'PHAITHUVND'
    end
    object qryPolicyDATHUNT: TIBOFloatField
      FieldName = 'DATHUNT'
    end
    object qryPolicyDATHUVND: TIBOFloatField
      FieldName = 'DATHUVND'
    end
    object qryPolicyCONTHUNT: TIBOFloatField
      FieldName = 'CONTHUNT'
    end
    object qryPolicyCONTHUVND: TIBOFloatField
      FieldName = 'CONTHUVND'
    end
    object qryPolicyTYGIA: TIBOFloatField
      FieldName = 'TYGIA'
    end
    object qryPolicyCHECKED: TSmallintField
      FieldName = 'CHECKED'
    end
  end
  object dsPolicy: TDataSource
    DataSet = qryPolicy
    Left = 158
    Top = 99
  end
  object qrySubPolicy: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Project\SSP_ACC_HOABINHCo\db\Db.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM POLICY'
      'WHERE'
      '   POLICY_ID = :OLD_POLICY_ID AND'
      '   POLICY_TYPE = :OLD_POLICY_TYPE')
    EditSQL.Strings = (
      'UPDATE POLICY SET'
      '   POLICY_ID = :POLICY_ID, /*PK*/'
      '   POLICY_TYPE = :POLICY_TYPE, /*PK*/'
      '   INVOICE_DATE = :INVOICE_DATE,'
      '   INVOICE_RECEIVE = :INVOICE_RECEIVE,'
      '   INVOICE_SEND = :INVOICE_SEND,'
      '   PREMIUM = :PREMIUM,'
      '   TAX_VALUE = :TAX_VALUE,'
      '   TOTALNT = :TOTALNT,'
      '   TIENTE = :TIENTE,'
      '   PTHOAHONG = :PTHOAHONG,'
      '   HOAHONGNT = :HOAHONGNT,'
      '   PTTHUE = :PTTHUE,'
      '   TIENTHUENT = :TIENTHUENT,'
      '   PTTHUENT = :PTTHUENT,'
      '   THUENT_NT = :THUENT_NT,'
      '   CUSTOMER_ID = :CUSTOMER_ID,'
      '   CUSTOMER_TYPE = :CUSTOMER_TYPE,'
      '   INSURER_ID = :INSURER_ID,'
      '   INSURER_TYPE = :INSURER_TYPE,'
      '   BRANCH_ID = :BRANCH_ID,'
      '   BRANCH_TYPE = :BRANCH_TYPE,'
      '   INPUT_DATE = :INPUT_DATE'
      'WHERE'
      '   POLICY_ID = :OLD_POLICY_ID AND'
      '   POLICY_TYPE = :OLD_POLICY_TYPE')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMDIChild
    InsertSQL.Strings = (
      'INSERT INTO POLICY('
      '   POLICY_ID, /*PK*/'
      '   POLICY_TYPE, /*PK*/'
      '   INVOICE_DATE,'
      '   INVOICE_RECEIVE,'
      '   INVOICE_SEND,'
      '   PREMIUM,'
      '   TAX_VALUE,'
      '   TOTALNT,'
      '   TIENTE,'
      '   PTHOAHONG,'
      '   HOAHONGNT,'
      '   PTTHUE,'
      '   TIENTHUENT,'
      '   PTTHUENT,'
      '   THUENT_NT,'
      '   CUSTOMER_ID,'
      '   CUSTOMER_TYPE,'
      '   INSURER_ID,'
      '   INSURER_TYPE,'
      '   BRANCH_ID,'
      '   BRANCH_TYPE,'
      '   INPUT_DATE)'
      'VALUES ('
      '   :POLICY_ID,'
      '   :POLICY_TYPE,'
      '   :INVOICE_DATE,'
      '   :INVOICE_RECEIVE,'
      '   :INVOICE_SEND,'
      '   :PREMIUM,'
      '   :TAX_VALUE,'
      '   :TOTALNT,'
      '   :TIENTE,'
      '   :PTHOAHONG,'
      '   :HOAHONGNT,'
      '   :PTTHUE,'
      '   :TIENTHUENT,'
      '   :PTTHUENT,'
      '   :THUENT_NT,'
      '   :CUSTOMER_ID,'
      '   :CUSTOMER_TYPE,'
      '   :INSURER_ID,'
      '   :INSURER_TYPE,'
      '   :BRANCH_ID,'
      '   :BRANCH_TYPE,'
      '   :INPUT_DATE)')
    KeyLinks.Strings = (
      'POLICY_ID'
      'POLICY_TYPE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnPostError = qrySubPolicyPostError
    DataSource = dsPolicy
    SQL.Strings = (
      'SELECT POLICY_ID'
      '     , POLICY_TYPE'
      '     , INVOICE_DATE'
      '     , INVOICE_RECEIVE'
      '     , INVOICE_SEND'
      '     , PREMIUM'
      '     , TAX_VALUE'
      '     , TOTALNT'
      '     , TIENTE'
      '     , PTHOAHONG'
      '     , HOAHONGNT'
      '     , PTTHUE'
      '     , TIENTHUENT'
      '     , PTTHUENT'
      '     , THUENT_NT'
      '     , CUSTOMER_ID'
      '     , CUSTOMER_TYPE'
      '     , INSURER_ID'
      '     , INSURER_TYPE'
      '     , BRANCH_ID'
      '     , BRANCH_TYPE'
      '     , INPUT_DATE'
      'FROM POLICY where POLICY_ID=:OBJECT_ID and POLICY_TYPE=8')
    FieldOptions = []
    Left = 214
    Top = 84
    object qrySubPolicyPOLICY_ID: TWideStringField
      FieldName = 'POLICY_ID'
      Required = True
      Size = 30
    end
    object qrySubPolicyPOLICY_TYPE: TSmallintField
      FieldName = 'POLICY_TYPE'
      Required = True
    end
    object qrySubPolicyINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
    end
    object qrySubPolicyINVOICE_RECEIVE: TDateField
      FieldName = 'INVOICE_RECEIVE'
    end
    object qrySubPolicyINVOICE_SEND: TDateField
      FieldName = 'INVOICE_SEND'
    end
    object qrySubPolicyPREMIUM: TIBOFloatField
      FieldName = 'PREMIUM'
    end
    object qrySubPolicyTAX_VALUE: TIBOFloatField
      FieldName = 'TAX_VALUE'
    end
    object qrySubPolicyTOTALNT: TIBOFloatField
      FieldName = 'TOTALNT'
    end
    object qrySubPolicyTIENTE: TWideStringField
      FieldName = 'TIENTE'
      Size = 6
    end
    object qrySubPolicyPTHOAHONG: TIBOFloatField
      FieldName = 'PTHOAHONG'
    end
    object qrySubPolicyHOAHONGNT: TIBOFloatField
      FieldName = 'HOAHONGNT'
    end
    object qrySubPolicyPTTHUE: TSmallintField
      FieldName = 'PTTHUE'
    end
    object qrySubPolicyTIENTHUENT: TIBOFloatField
      FieldName = 'TIENTHUENT'
    end
    object qrySubPolicyPTTHUENT: TIBOFloatField
      FieldName = 'PTTHUENT'
    end
    object qrySubPolicyTHUENT_NT: TIBOFloatField
      FieldName = 'THUENT_NT'
    end
    object qrySubPolicyCUSTOMER_ID: TWideStringField
      FieldName = 'CUSTOMER_ID'
      Size = 30
    end
    object qrySubPolicyCUSTOMER_TYPE: TSmallintField
      FieldName = 'CUSTOMER_TYPE'
    end
    object qrySubPolicyINSURER_ID: TWideStringField
      FieldName = 'INSURER_ID'
      Required = True
      Size = 30
    end
    object qrySubPolicyINSURER_TYPE: TSmallintField
      FieldName = 'INSURER_TYPE'
      Required = True
    end
    object qrySubPolicyBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 30
    end
    object qrySubPolicyBRANCH_TYPE: TSmallintField
      FieldName = 'BRANCH_TYPE'
    end
    object qrySubPolicyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
  end
  object dbpPolicy: TppDBPipeline
    DataSource = dsPolicy
    UserName = 'dbpPolicy'
    Left = 113
    Top = 108
  end
  object dsgPolicy: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ReportPolicy
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 88
    Top = 115
  end
  object ReportPolicy: TppReport
    AutoStop = False
    DataPipeline = dbpPolicy
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 56
    Top = 112
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbpPolicy'
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
  object dplHoadon: TppDBPipeline
    DataSource = dsPolicy
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'dplHoadon'
    Left = 529
    Top = 268
  end
  object rptHoadon: TppReport
    AutoStop = False
    DataPipeline = dplHoadon
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 528
    Top = 304
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'dplHoadon'
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
  object DsgHoaDon: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptHoadon
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 568
    Top = 315
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbtnInHD
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton7
        Visible = True
      end
      item
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
    Left = 472
    Top = 368
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
      'Print')
    Categories.ItemsVisibles = (
      255
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 436
    Top = 368
    DockControlHeights = (
      0
      0
      0
      0)
    object bbtnInHD: TdxBarButton
      Caption = 'In h'#243'a '#273#417'n 1 debit note'
      Category = 1
      Hint = 'In h'#243'a '#273#417'n 1 debit note'
      Visible = ivAlways
      OnClick = bbtnInHDClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'In h'#243'a '#273#417'n g'#7897'p'
      Category = 1
      Hint = 'In h'#243'a '#273#417'n g'#7897'p'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'In nh'#227'n kh'#225'ch h'#224'ng'
      Category = 1
      Hint = 'In nh'#227'n kh'#225'ch h'#224'ng'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'S'#7917'a m'#7851'u in h'#243'a '#273#417'n'
      Category = 1
      Hint = 'S'#7917'a m'#7851'u in h'#243'a '#273#417'n'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'S'#7917'a m'#7851'u in g'#7897'p'
      Category = 1
      Hint = 'S'#7917'a m'#7851'u in g'#7897'p'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'S'#7917'a m'#7851'u nh'#227'n kh'#225'ch h'#224'ng'
      Category = 1
      Hint = 'S'#7917'a m'#7851'u nh'#227'n kh'#225'ch h'#224'ng'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Nh'#7853'p g'#7897'p nhi'#7873'u debit note'
      Category = 1
      Hint = 'Nh'#7853'p g'#7897'p nhi'#7873'u debit note'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'S'#7917'a h'#224'ng lo'#7841't h'#243'a '#273#417'n'
      Category = 1
      Hint = 'S'#7917'a h'#224'ng lo'#7841't h'#243'a '#273#417'n'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
  object qryUpdChk: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'policy_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'user_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'checked'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Project\SSP_ACC_HOABINHCo\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMDIChild
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsPolicy
    SQL.Strings = (
      
        'execute procedure sp_policy_upp_chk(:policy_id,:user_id,:checked' +
        ')')
    FieldOptions = []
    Left = 262
    Top = 92
  end
  object IBOStoredProc1: TIBOStoredProc
    Params = <
      item
        DataType = ftString
        Name = 'POLICY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CHECKED'
        ParamType = ptInput
      end>
    StoredProcHasDML = True
    StoredProcName = 'sp_policy_upp_chk'
    DatabaseName = 'D:\Project\SSP_ACC_HOABINHCo\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    Left = 304
    Top = 104
  end
end
