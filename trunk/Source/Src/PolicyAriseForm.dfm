object PolicyAriseFrm: TPolicyAriseFrm
  Left = 125
  Top = 154
  Width = 780
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
    Width = 772
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
          Caption = 'Th'#244'ng tin chung v'#7873' h'#7907'p '#273#7891'ng'
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
      TabOrder = 3
      OnKeyDown = grdObjKeyDown
      OnMouseUp = grdObjMouseUp
      DataSource = dsPolicy
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      RegistryPath = 'Software\SSP\Baohiem\PolicyArise'
      object grdObjPOLICY_NO: TdxDBGridMaskColumn
        Caption = 'S'#7889' h'#7907'p '#273#7891'ng B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POLICY_NO'
        Caption_UTF7 = 'S+HtE h+HuM-p +AREe0w-ng B+HqM-o hi+HsM-m'
      end
      object grdObjENDORSEMENT: TdxDBGridMaskColumn
        Caption = 'Endorsement'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDORSEMENT'
      end
      object grdObjOBJECT_ID: TdxDBGridMaskColumn
        Caption = 'Debit/Credit Note'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
      end
      object grdObjOBJECT_NAME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
      end
      object grdObjOTHER_NAME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTHER_NAME'
      end
      object grdObjSUBINFO_1: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_1'
      end
      object grdObjSUBINFO_2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBINFO_2'
      end
      object grdObjOBJECT_NOTES: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NOTES'
      end
      object grdObjMAKH: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAKH'
      end
      object grdObjOBJECT_STATUS: TdxDBGridCheckColumn
        Caption = #272#227' ho'#224'n t'#7845't'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_STATUS'
        ValueChecked = '-1'
        ValueUnchecked = '1'
        Caption_UTF7 = '+ARAA4w ho+AOA-n t+HqU-t'
      end
      object grdObjOBJGRP_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
        Caption_UTF7 = 'M+AOM lo+HqE-i B+HqM-o hi+HsM-m'
      end
      object grdObjLOAIBH: TdxDBGridMaskColumn
        Caption = 'T'#234'n lo'#7841'i B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAIBH'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i B+HqM-o hi+HsM-m'
      end
      object grdObjCREATE_DATE: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREATE_DATE'
      end
      object grdObjINVOICE_SERI: TdxDBGridMaskColumn
        Caption = 'S'#7889' S'#234'ri'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_SERI'
        Caption_UTF7 = 'S+HtE S+AOo-ri'
      end
      object grdObjINVOICE_NO: TdxDBGridMaskColumn
        Caption = 'S'#7889' h'#243'a '#273#417'n'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_NO'
        Caption_UTF7 = 'S+HtE h+APM-a +AREBoQ-n'
      end
      object grdObjINVOICE_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#243'a '#273#417'n'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_DATE'
        Caption_UTF7 = 'Ng+AOA-y h+APM-a +AREBoQ-n'
      end
      object grdObjINVOICE_RECEIVE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y nh'#7853'n h'#243'a '#273#417'n'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_RECEIVE'
        Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n h+APM-a +AREBoQ-n'
      end
      object grdObjINVOICE_SEND: TdxDBGridDateColumn
        Caption = 'Ng'#224'y g'#7917'i h'#243'a '#273#417'n'
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE_SEND'
        Caption_UTF7 = 'Ng+AOA-y g+Hu0-i h+APM-a +AREBoQ-n'
      end
      object grdObjCUSTOMER_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889' kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMER_ID'
        Caption_UTF7 = 'M+AOM s+HtE kh+AOE-ch h+AOA-ng'
      end
      object grdObjCUSTOMER_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMER_NAME'
        Caption_UTF7 = 'T+AOo-n kh+AOE-ch h+AOA-ng'
      end
      object grdObjCUSTOMER_ADDR: TdxDBGridMaskColumn
        Caption = #272#7883'a ch'#7881' kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMER_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk kh+AOE-ch h+AOA-ng'
      end
      object grdObjCUSTOMER_TAXCODE: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889' thu'#7871' kh'#225'ch h'#224'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMER_TAXCODE'
        Caption_UTF7 = 'M+AOM s+HtE thu+Hr8 kh+AOE-ch h+AOA-ng'
      end
      object grdObjINSURER_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889' nh'#224' B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSURER_ID'
        Caption_UTF7 = 'M+AOM s+HtE nh+AOA B+HqM-o hi+HsM-m'
      end
      object grdObjINSURER_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n Cty B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSURER_NAME'
        Caption_UTF7 = 'T+AOo-n Cty B+HqM-o hi+HsM-m'
      end
      object grdObjINSURER_ADDR: TdxDBGridMaskColumn
        Caption = #272#7883'a ch'#7881' Cty B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSURER_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk Cty B+HqM-o hi+HsM-m'
      end
      object grdObjINSURER_EMAIL: TdxDBGridMaskColumn
        Caption = 'Email Cty B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSURER_EMAIL'
        Caption_UTF7 = 'Email Cty B+HqM-o hi+HsM-m'
      end
      object grdObjINSURER_TAXCODE: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889' thu'#7871' Cty B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSURER_TAXCODE'
        Caption_UTF7 = 'M+AOM s+HtE thu+Hr8 Cty B+HqM-o hi+HsM-m'
      end
      object grdObjPREMIUM: TdxDBGridMaskColumn
        Caption = 'S'#7889' ti'#7873'n B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PREMIUM'
        Caption_UTF7 = 'S+HtE ti+HsE-n B+HqM-o hi+HsM-m'
      end
      object grdObjTAX_VALUE: TdxDBGridMaskColumn
        Caption = 'Ti'#7873'n thu'#7871' B'#7843'o hi'#7875'm'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAX_VALUE'
        Caption_UTF7 = 'Ti+HsE-n thu+Hr8 B+HqM-o hi+HsM-m'
      end
      object grdObjTOTALNT: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng c'#7897'ng theo ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALNT'
        Caption_UTF7 = 'T+HtU-ng c+Htk-ng theo ngo+HqE-i t+Hsc'
      end
      object grdObjTIENTE: TdxDBGridMaskColumn
        Caption = 'T'#234'n ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIENTE'
        Caption_UTF7 = 'T+AOo-n ti+HsE-n t+Hsc'
      end
      object grdObjTYGIAHT: TdxDBGridMaskColumn
        Caption = 'T'#7927' gi'#225
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYGIAHT'
        Caption_UTF7 = 'T+Hvc gi+AOE'
      end
      object grdObjTOTALVND: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng c'#7897'ng theo VND'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALVND'
        Caption_UTF7 = 'T+HtU-ng c+Htk-ng theo VND'
      end
      object grdObjPTHOAHONG: TdxDBGridMaskColumn
        Caption = '% Hoa h'#7891'ng'
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PTHOAHONG'
        Caption_UTF7 = '% Hoa h+HtM-ng'
      end
      object grdObjHOAHONGNT: TdxDBGridMaskColumn
        Caption = 'Hoa h'#7891'ng theo ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOAHONGNT'
        Caption_UTF7 = 'Hoa h+HtM-ng theo ngo+HqE-i t+Hsc'
      end
      object grdObjHOAHONGVND: TdxDBGridMaskColumn
        Caption = 'Hoa h'#7891'ng (VND)'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOAHONGVND'
        Caption_UTF7 = 'Hoa h+HtM-ng (VND)'
      end
      object grdObjPTTHUE: TdxDBGridMaskColumn
        Caption = '% VAT'
        HeaderAlignment = taCenter
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PTTHUE'
      end
      object grdObjTIENTHUENT: TdxDBGridMaskColumn
        Caption = 'Thu'#7871' VAT ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIENTHUENT'
        Caption_UTF7 = 'Thu+Hr8 VAT ngo+HqE-i t+Hsc'
      end
      object grdObjTIENTHUEVND: TdxDBGridMaskColumn
        Caption = 'Thu'#7871' VAT VND'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIENTHUEVND'
        Caption_UTF7 = 'Thu+Hr8 VAT VND'
      end
      object grdObjPTTHUENT: TdxDBGridMaskColumn
        Caption = '% thu'#7871' nh'#224' th'#7847'u'
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PTTHUENT'
        Caption_UTF7 = '% thu+Hr8 nh+AOA th+Hqc-u'
      end
      object grdObjTHUENT_NT: TdxDBGridMaskColumn
        Caption = 'Thu'#7871' nh'#224' th'#7847'u ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUENT_NT'
        Caption_UTF7 = 'Thu+Hr8 nh+AOA th+Hqc-u ngo+HqE-i t+Hsc'
      end
      object grdObjTHUENT_VND: TdxDBGridMaskColumn
        Caption = 'Thu'#7871' nh'#224' th'#7847'u VND'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUENT_VND'
        Caption_UTF7 = 'Thu+Hr8 nh+AOA th+Hqc-u VND'
      end
      object grdObjDATRA_NT: TdxDBGridMaskColumn
        Caption = #272#227' tr'#7843' theo ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATRA_NT'
        Caption_UTF7 = '+ARAA4w tr+HqM theo ngo+HqE-i t+Hsc'
      end
      object grdObjDATRA_VN: TdxDBGridMaskColumn
        Caption = #272#227' tr'#7843' VND'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATRA_VN'
        Caption_UTF7 = '+ARAA4w tr+HqM VND'
      end
      object grdObjCONLAI_NT: TdxDBGridMaskColumn
        Caption = 'C'#242'n l'#7841'i ngo'#7841'i t'#7879
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONLAI_NT'
        Caption_UTF7 = 'C+API-n l+HqE-i ngo+HqE-i t+Hsc'
      end
      object grdObjCONLAI_VN: TdxDBGridMaskColumn
        Caption = 'C'#242'n l'#7841'i (VND)'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONLAI_VN'
        Caption_UTF7 = 'C+API-n l+HqE-i (VND)'
      end
      object grdObjSPTHU: TdxDBGridMaskColumn
        Caption = 'S'#7889' ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SPTHU'
        Caption_UTF7 = 'S+HtE ch+Huk-ng t+Hus'
      end
      object grdObjNGAYTHU: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ch'#7913'ng t'#7915
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYTHU'
        Caption_UTF7 = 'Ng+AOA-y ch+Huk-ng t+Hus'
      end
      object grdObjBRANCH_ID: TdxDBGridMaskColumn
        Caption = 'M'#227' chi nh'#225'nh'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
        Caption_UTF7 = 'M+AOM chi nh+AOE-nh'
      end
      object grdObjSHTKPTRA: TdxDBGridMaskColumn
        Caption = 'SHTK'
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHTKPTRA'
      end
    end
    object TntBitBtn5: TElPopupButton
      Left = 628
      Top = 518
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 5
      OnClick = TntBitBtn5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 699
      Top = 518
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 3
      Top = 518
      Width = 70
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L&i'#234'n quan'
      TabOrder = 4
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object deditDenngay: TdxDateEdit
      Left = 212
      Top = 6
      Width = 117
      TabOrder = 1
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object deditTuNgay: TdxDateEdit
      Left = 45
      Top = 6
      Width = 117
      TabOrder = 0
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object ElPopupButton3: TElPopupButton
      Left = 330
      Top = 3
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Li'#7879'&t k'#234
      TabOrder = 2
      OnClick = ElPopupButton3Click
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
        object locFormItem9: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
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
    Top = 68
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
    Top = 96
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
      end>
    DatabaseName = 'D:\Projects\Baohiem\DB\DB.GDB'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMDIChild
    KeyLinks.Strings = (
      'OBJECT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from sp_policy(:tungay,:denngay)')
    FieldOptions = []
    Left = 142
    Top = 100
    object qryPolicyOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Size = 30
    end
    object qryPolicyOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
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
      Size = 255
    end
    object qryPolicyOBJECT_STATUS: TSmallintField
      FieldName = 'OBJECT_STATUS'
    end
    object qryPolicyOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
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
    object qryPolicyINVOICE_SERI: TWideStringField
      FieldName = 'INVOICE_SERI'
      Size = 30
    end
    object qryPolicyINVOICE_NO: TWideStringField
      FieldName = 'INVOICE_NO'
      Size = 30
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
    object qryPolicyCUSTOMER_ID: TWideStringField
      FieldName = 'CUSTOMER_ID'
      Size = 30
    end
    object qryPolicyINSURER_ID: TWideStringField
      FieldName = 'INSURER_ID'
      Size = 30
    end
    object qryPolicyPREMIUM: TIBOFloatField
      FieldName = 'PREMIUM'
    end
    object qryPolicyTAX_VALUE: TIBOFloatField
      FieldName = 'TAX_VALUE'
    end
    object qryPolicyTOTALNT: TIBOFloatField
      FieldName = 'TOTALNT'
    end
    object qryPolicyTIENTE: TWideStringField
      FieldName = 'TIENTE'
      Size = 15
    end
    object qryPolicyTYGIAHT: TIBOFloatField
      FieldName = 'TYGIAHT'
    end
    object qryPolicyTOTALVND: TIBOFloatField
      FieldName = 'TOTALVND'
    end
    object qryPolicyPTHOAHONG: TIBOFloatField
      FieldName = 'PTHOAHONG'
    end
    object qryPolicyHOAHONGNT: TIBOFloatField
      FieldName = 'HOAHONGNT'
    end
    object qryPolicyHOAHONGVND: TIBOFloatField
      FieldName = 'HOAHONGVND'
    end
    object qryPolicyPTTHUE: TSmallintField
      FieldName = 'PTTHUE'
    end
    object qryPolicyTIENTHUENT: TIBOFloatField
      FieldName = 'TIENTHUENT'
    end
    object qryPolicyTIENTHUEVND: TIBOFloatField
      FieldName = 'TIENTHUEVND'
    end
    object qryPolicyPTTHUENT: TIBOFloatField
      FieldName = 'PTTHUENT'
    end
    object qryPolicyTHUENT_NT: TIBOFloatField
      FieldName = 'THUENT_NT'
    end
    object qryPolicyTHUENT_VND: TIBOFloatField
      FieldName = 'THUENT_VND'
    end
    object qryPolicyDATRA_NT: TIBOFloatField
      FieldName = 'DATRA_NT'
    end
    object qryPolicyDATRA_VN: TIBOFloatField
      FieldName = 'DATRA_VN'
    end
    object qryPolicyCONLAI_NT: TIBOFloatField
      FieldName = 'CONLAI_NT'
    end
    object qryPolicyCONLAI_VN: TIBOFloatField
      FieldName = 'CONLAI_VN'
    end
    object qryPolicySPTHU: TWideStringField
      FieldName = 'SPTHU'
      Size = 30
    end
    object qryPolicyNGAYTHU: TDateField
      FieldName = 'NGAYTHU'
    end
    object qryPolicyKYHTTHU: TSmallintField
      FieldName = 'KYHTTHU'
    end
    object qryPolicyBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Size = 30
    end
    object qryPolicyPOLICY_NO: TWideStringField
      FieldName = 'POLICY_NO'
      Size = 30
    end
    object qryPolicyENDORSEMENT: TWideStringField
      FieldName = 'ENDORSEMENT'
      Size = 30
    end
    object qryPolicyLOAIBH: TWideStringField
      FieldName = 'LOAIBH'
      Size = 126
    end
    object qryPolicySHTKPTRA: TWideStringField
      FieldName = 'SHTKPTRA'
      Size = 15
    end
    object qryPolicyINSURER_TYPE: TSmallintField
      FieldName = 'INSURER_TYPE'
    end
    object qryPolicyINSURER_NAME: TWideStringField
      FieldName = 'INSURER_NAME'
      Size = 126
    end
    object qryPolicyINSURER_ADDR: TWideStringField
      FieldName = 'INSURER_ADDR'
      Size = 126
    end
    object qryPolicyINSURER_EMAIL: TWideStringField
      FieldName = 'INSURER_EMAIL'
      Size = 126
    end
    object qryPolicyINSURER_TAXCODE: TWideStringField
      FieldName = 'INSURER_TAXCODE'
      Size = 63
    end
    object qryPolicyCUSTOMER_TYPE: TSmallintField
      FieldName = 'CUSTOMER_TYPE'
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
  end
  object dsPolicy: TDataSource
    DataSet = qryPolicy
    Left = 158
    Top = 99
  end
  object IpSmtpClient1: TIpSmtpClient
    Message.ContentTransferEncoding = em7Bit
    XMailer = 'Internet Professional v1.14'
    DebugLog.BufferSize = 65536
    DebugLog.WriteMode = wmOverwrite
    DebugLog.Enabled = False
    DebugLog.FileName = 'debug.log'
    EventLog.DateTimeFormat = 'yyyy.mm.dd hh:nn:ss'
    EventLog.Enabled = False
    EventLog.FileName = 'event.log'
    IdleTimeout = 0
    TimerInterval = 500
    Left = 456
    Top = 80
  end
end
