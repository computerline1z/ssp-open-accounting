object SalePriceFrm: TSalePriceFrm
  Left = 180
  Top = 129
  Width = 728
  Height = 484
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
    Width = 720
    Height = 450
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnCancel: TElPopupButton
      Left = 237
      Top = 422
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 3
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 159
      Top = 422
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 7
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 2
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 642
      Top = 422
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
      TabOrder = 5
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 564
      Top = 422
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 4
      OnClick = BitBtn4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Left = 81
      Top = 422
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
      TabOrder = 1
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 422
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 0
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPageControl1: TElPageControl
      Left = 3
      Top = 3
      Width = 626
      Height = 277
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsFlatTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabGrpPrice
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      Align = alClient
      ParentColor = False
      TabOrder = 9
      object tabItemPrice: TElTabSheet
        OnShow = tabItemPriceShow
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#225' b'#225'n h'#224'ng h'#243'a'
        Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object grdKH: TdxDBGrid
          Left = 0
          Top = 0
          Width = 622
          Height = 254
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'OBJECT_ID'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          IsImportFromXLS = True
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnKeyDown = grdKHKeyDown
          OnMouseUp = grdKHMouseUp
          DataSource = dsSalePrice
          DefaultRowHeight = 21
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          OnChangeColumn = grdKHChangeColumn
          object colMaHH: TdxDBGridPopupColumn
            Caption = 'M'#227' s'#7889
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_ID'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '#,0 d'#242'ng'
            PopupControl = PopupFrm.PnlCommonObj
            PopupFormBorderStyle = pbsSimple
            OnCloseUp = colMaHHCloseUp
            Caption_UTF7 = 'M+AOM s+HtE'
            SummaryFooterFormat_UTF7 = '#,0 d+API-ng'
          end
          object dxDBGridColumn6: TdxDBGridColumn
            Caption = 'T'#234'n h'#224'ng ho'#225
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            TabStop = False
            Width = 141
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_NAME'
            Caption_UTF7 = 'T+AOo-n h+AOA-ng ho+AOE'
          end
          object grdKHColumn4: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALEPRICENOTES'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object grdKHColGia: TdxDBGridCalcColumn
            Caption = 'Gi'#225' m'#7863'c '#273#7883'nh'
            HeaderAlignment = taCenter
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALEPRICE'
            SummaryFooterType = cstSum
            SummaryFooterFormat = '#,0'
            Caption_UTF7 = 'Gi+AOE m+Hrc-c +AREeyw-nh'
          end
          object grdKHColMin: TdxDBGridCalcColumn
            Caption = 'Th'#7845'p nh'#7845't'
            HeaderAlignment = taCenter
            Visible = False
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALE_MIN'
            SummaryFooterType = cstSum
            SummaryFooterFormat = '#,0'
            Caption_UTF7 = 'Th+HqU-p nh+HqU-t'
          end
          object grdKHColMax: TdxDBGridCalcColumn
            Caption = 'Cao nh'#7845't'
            HeaderAlignment = taCenter
            Visible = False
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALE_MAX'
            SummaryFooterType = cstSum
            SummaryFooterFormat = '#,0'
            Caption_UTF7 = 'Cao nh+HqU-t'
          end
          object grdKHPRICE_1: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 1'
            HeaderAlignment = taCenter
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_1'
            Caption_UTF7 = 'Gi+AOE 1'
          end
          object grdKHPRICE_2: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 2'
            HeaderAlignment = taCenter
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_2'
            Caption_UTF7 = 'Gi+AOE 2'
          end
          object grdKHPRICE_3: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 3'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_3'
            Caption_UTF7 = 'Gi+AOE 3'
          end
          object grdKHPRICE_4: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 4'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_4'
            Caption_UTF7 = 'Gi+AOE 4'
          end
          object grdKHPRICE_5: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 5'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_5'
            Caption_UTF7 = 'Gi+AOE 5'
          end
          object grdKHPRICE_6: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 6'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_6'
            Caption_UTF7 = 'Gi+AOE 6'
          end
          object grdKHPRICE_7: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 7'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_7'
            Caption_UTF7 = 'Gi+AOE 7'
          end
          object grdKHPRICE_8: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 8'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_8'
            Caption_UTF7 = 'Gi+AOE 8'
          end
          object grdKHPRICE_9: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 9'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_9'
            Caption_UTF7 = 'Gi+AOE 9'
          end
          object grdKHPRICE_10: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 10'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_10'
            Caption_UTF7 = 'Gi+AOE 10'
          end
          object grdKHPRICE_11: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 11'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_11'
            Caption_UTF7 = 'Gi+AOE 11'
          end
          object grdKHPRICE_12: TdxDBGridMaskColumn
            Caption = 'Gi'#225' 12'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE_12'
            Caption_UTF7 = 'Gi+AOE 12'
          end
        end
      end
      object tabCusPrice: TElTabSheet
        OnShow = tabCusPriceShow
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#225' quy '#273#7883'nh kh'#225'ch h'#224'ng'
        Visible = False
        object grdCusPrice: TdxDBGrid
          Left = 0
          Top = 0
          Width = 622
          Height = 233
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'OBJECT_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          IsImportFromXLS = True
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnKeyDown = grdCusPriceKeyDown
          OnMouseUp = grdCusPriceMouseUp
          DataSource = dsCusPrice
          DefaultRowHeight = 21
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object grdCusPriceOBJECT_ID: TdxDBGridPopupColumn
            Alignment = taLeftJustify
            Caption = 'M'#227' kh'#225'ch h'#224'ng'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_ID'
            PopupControl = PopupFrm.PnlCommonObj
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = grdCusPriceOBJECT_IDInitPopup
            Caption_UTF7 = 'M+AOM kh+AOE-ch h+AOA-ng'
          end
          object grdCusPriceOBJECT_NAME: TdxDBGridMaskColumn
            Alignment = taLeftJustify
            Caption = 'T'#234'n kh'#225'ch h'#224'ng'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_NAME'
            Caption_UTF7 = 'T+AOo-n kh+AOE-ch h+AOA-ng'
          end
          object grdCusPriceOTYPE_ID: TdxDBGridMaskColumn
            Visible = False
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTYPE_ID'
          end
          object grdCusPriceMUCGIA: TdxDBGridSpinColumn
            Caption = 'M'#7913'c gi'#225' '#225'p d'#7909'ng'
            HeaderAlignment = taCenter
            MaxLength = 1
            Width = 142
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MUCGIA'
            MinValue = -1.000000000000000000
            MaxValue = 12.000000000000000000
            ShowButtonStyle = sbAlways
            Caption_UTF7 = 'M+Huk-c gi+AOE +AOE-p d+HuU-ng'
          end
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 233
          Width = 622
          Height = 21
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvRaised
          TabOrder = 1
          LookAndFeel = dxLayoutStandardLookAndFeel1
          object ElLabel1: TElLabel
            Left = 5
            Top = 3
            Width = 530
            Height = 13
            Caption = 
              'M'#7913'c gi'#225' : (-1) '#431'u ti'#234'n ch'#7885'n m'#7913'c t'#7915' nh'#243'm, (0) m'#7913'c gi'#225' m'#7863'c '#273#7883'nh, (' +
              '1) m'#7913'c gi'#225' 1, (2) m'#7913'c gi'#225' 2, (3) m'#7913'c gi'#225' 3, ...'
            XOffset = 0
            YOffset = 0
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item1: TdxLayoutItem
              Offsets.Left = 2
              ShowCaption = False
              Control = ElLabel1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object tabGrpPrice: TElTabSheet
        OnShow = tabGrpPriceShow
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#225' quy '#273#7883'nh nh'#243'm kh'#225'ch h'#224'ng'
        object grdGrpPrice: TdxDBGrid
          Left = 0
          Top = 0
          Width = 622
          Height = 254
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'OBJGRP_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          IsImportFromXLS = True
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnKeyDown = grdGrpPriceKeyDown
          OnMouseUp = grdGrpPriceMouseUp
          DataSource = dsGrpPrice
          DefaultRowHeight = 21
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object grdGrpPriceOBJGRP_ID: TdxDBGridPopupColumn
            Caption = 'M'#227' nh'#243'm'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJGRP_ID'
            PopupControl = PopupFrm.PnlObjGrp
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = grdGrpPriceOBJGRP_IDInitPopup
            Caption_UTF7 = 'M+AOM nh+APM-m'
          end
          object grdGrpPriceOTYPE_ID: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTYPE_ID'
          end
          object grdGrpPriceOBJGRP_NAME: TdxDBGridMaskColumn
            Caption = 'T'#234'n nh'#243'm'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 483
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJGRP_NAME'
            Caption_UTF7 = 'T+AOo-n nh+APM-m'
          end
          object grdGrpPriceMUCGIA: TdxDBGridSpinColumn
            Caption = 'M'#7913'c gi'#225' '#225'p d'#7909'ng'
            HeaderAlignment = taCenter
            MaxLength = 1
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MUCGIA'
            MaxValue = 15.000000000000000000
            Caption_UTF7 = 'M+Huk-c gi+AOE +AOE-p d+HuU-ng'
          end
        end
      end
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = ElPageControl1
        ControlOptions.ShowBorder = False
      end
      object locFormGroup3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          Caption = 'BitBtn6'
          ShowCaption = False
          Control = btnIns
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          Caption = 'BitBtn5'
          ShowCaption = False
          Control = btnDel
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnPost
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
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
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 48
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 216
    Top = 86
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsSalePrice
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsSalePrice
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsSalePrice
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsSalePrice
    end
    object acCusPricePost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      DataSource = dsCusPrice
    end
    object acCusPriceCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      DataSource = dsCusPrice
    end
    object acGrpPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      DataSource = dsGrpPrice
    end
    object acGrpCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      DataSource = dsGrpPrice
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
        Caption = 'Gi'#225' b'#225'n ra '#273#432#7907'c duy'#7879't'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
  object qrySalePrice: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SALE_PRICE'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE SALE_PRICE SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = :OTYPE_ID, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   SALEPRICE = :SALEPRICE,'
      '   SALEPRICENOTES = :SALEPRICENOTES,'
      '   SALE_MIN = :SALE_MIN,'
      '   SALE_MAX = :SALE_MAX,'
      '   PRICE_1 = :PRICE_1,'
      '   PRICE_2 = :PRICE_2,'
      '   PRICE_3 = :PRICE_3,'
      '   PRICE_4 = :PRICE_4,'
      '   PRICE_5 = :PRICE_5,'
      '   PRICE_6 = :PRICE_6,'
      '   PRICE_7 = :PRICE_7,'
      '   PRICE_8 = :PRICE_8,'
      '   PRICE_9 = :PRICE_9,'
      '   PRICE_10 = :PRICE_10,'
      '   PRICE_11 = :PRICE_11,'
      '   PRICE_12 = :PRICE_12'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO SALE_PRICE('
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   SALEPRICE,'
      '   SALEPRICENOTES,'
      '   SALE_MIN,'
      '   SALE_MAX,'
      '   PRICE_1,'
      '   PRICE_2,'
      '   PRICE_3,'
      '   PRICE_4,'
      '   PRICE_5,'
      '   PRICE_6,'
      '   PRICE_7,'
      '   PRICE_8,'
      '   PRICE_9,'
      '   PRICE_10,'
      '   PRICE_11,'
      '   PRICE_12)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :PERIOD_ID,'
      '   :SALEPRICE,'
      '   :SALEPRICENOTES,'
      '   :SALE_MIN,'
      '   :SALE_MAX,'
      '   :PRICE_1,'
      '   :PRICE_2,'
      '   :PRICE_3,'
      '   :PRICE_4,'
      '   :PRICE_5,'
      '   :PRICE_6,'
      '   :PRICE_7,'
      '   :PRICE_8,'
      '   :PRICE_9,'
      '   :PRICE_10,'
      '   :PRICE_11,'
      '   :PRICE_12)')
    KeyLinks.Strings = (
      'SALE_PRICE.OBJECT_ID'
      'SALE_PRICE.OTYPE_ID'
      'PERIOD_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qrySalePriceBeforeEdit
    BeforeDelete = qrySalePriceBeforeDelete
    BeforeInsert = qrySalePriceBeforeInsert
    AfterInsert = qrySalePriceAfterInsert
    BeforePost = qrySalePriceBeforePost
    OnNewRecord = qrySalePriceNewRecord
    OnPostError = qrySalePricePostError
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , SALEPRICE'
      '     , OBJECT_NAME'
      '     , SALEPRICENOTES'
      '     , SALE_MIN'
      '     , SALE_MAX'
      '     , SALE_PRICE.OBJECT_ID'
      '     , SALE_PRICE.OTYPE_ID,'
      #9'PRICE_1,'
      #9'PRICE_2,'
      #9'PRICE_3,'
      #9'PRICE_4,'
      #9'PRICE_5,'
      #9'PRICE_6,'
      #9'PRICE_7,'
      #9'PRICE_8,'
      #9'PRICE_9,'
      #9'PRICE_10,'
      #9'PRICE_11,'
      #9'PRICE_12'
      'FROM SALE_PRICE'
      
        'JOIN OBJECT_LIST on (SALE_PRICE.OBJECT_ID = OBJECT_LIST.OBJECT_I' +
        'D'
      '  and SALE_PRICE.OTYPE_ID= OBJECT_LIST.OTYPE_ID)'
      
        'where PERIOD_ID=:PERIOD_ID and SALE_PRICE.OTYPE_ID=2 order by SA' +
        'LE_PRICE.OBJECT_ID')
    FieldOptions = []
    Left = 48
    Top = 84
    object qrySalePricePERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qrySalePriceOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qrySalePriceSALEPRICENOTES: TWideStringField
      FieldName = 'SALEPRICENOTES'
      Size = 126
    end
    object qrySalePriceSALEPRICE: TIBOFloatField
      FieldName = 'SALEPRICE'
    end
    object qrySalePriceSALE_MIN: TIBOFloatField
      FieldName = 'SALE_MIN'
    end
    object qrySalePriceSALE_MAX: TIBOFloatField
      FieldName = 'SALE_MAX'
    end
    object qrySalePriceOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qrySalePriceOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qrySalePricePRICE_1: TIBOFloatField
      FieldName = 'PRICE_1'
    end
    object qrySalePricePRICE_2: TIBOFloatField
      FieldName = 'PRICE_2'
    end
    object qrySalePricePRICE_3: TIBOFloatField
      FieldName = 'PRICE_3'
    end
    object qrySalePricePRICE_4: TIBOFloatField
      FieldName = 'PRICE_4'
    end
    object qrySalePricePRICE_5: TIBOFloatField
      FieldName = 'PRICE_5'
    end
    object qrySalePricePRICE_6: TIBOFloatField
      FieldName = 'PRICE_6'
    end
    object qrySalePricePRICE_7: TIBOFloatField
      FieldName = 'PRICE_7'
    end
    object qrySalePricePRICE_8: TIBOFloatField
      FieldName = 'PRICE_8'
    end
    object qrySalePricePRICE_9: TIBOFloatField
      FieldName = 'PRICE_9'
    end
    object qrySalePricePRICE_10: TIBOFloatField
      FieldName = 'PRICE_10'
    end
    object qrySalePricePRICE_11: TIBOFloatField
      FieldName = 'PRICE_11'
    end
    object qrySalePricePRICE_12: TIBOFloatField
      FieldName = 'PRICE_12'
    end
  end
  object dsSalePrice: TDataSource
    DataSet = qrySalePrice
    Left = 48
    Top = 117
  end
  object qryCusPrice: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_LIST'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_LIST SET'
      '   OBJECT_ID = :OBJECT_ID, /*PK*/'
      '   OTYPE_ID = 1, /*PK*/'
      '   OBJECT_NAME = :OBJECT_NAME,'
      '   MUCGIA = :MUCGIA'
      'WHERE'
      '   OBJECT_ID = :OLD_OBJECT_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_LIST('
      '   OBJECT_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   OBJECT_NAME,'
      '   MUCGIA)'
      'VALUES ('
      '   :OBJECT_ID,'
      '   1,'
      '   :OBJECT_NAME,'
      '   :MUCGIA)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryCusPriceBeforeEdit
    BeforeDelete = qryCusPriceBeforeDelete
    BeforeInsert = qryCusPriceBeforeInsert
    AfterInsert = qryCusPriceAfterInsert
    OnPostError = qryCusPricePostError
    SQL.Strings = (
      'SELECT OBJECT_ID'
      '     , OBJECT_NAME'
      '     , OTYPE_ID'
      '     , MUCGIA'
      'FROM OBJECT_LIST where OTYPE_ID=1 ORDER BY OBJECT_NAME')
    FieldOptions = []
    Left = 102
    Top = 84
    object qryCusPriceOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      Size = 30
    end
    object qryCusPriceOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryCusPriceOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryCusPriceMUCGIA: TSmallintField
      FieldName = 'MUCGIA'
    end
  end
  object dsCusPrice: TDataSource
    DataSet = qryCusPrice
    Left = 102
    Top = 117
  end
  object qryGrpPrice: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP\Ketoan\Projects\ACC_5.0\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM OBJECT_GROUP'
      'WHERE'
      '   OBJGRP_ID = :OLD_OBJGRP_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    EditSQL.Strings = (
      'UPDATE OBJECT_GROUP SET'
      '   OBJGRP_ID = :OBJGRP_ID, /*PK*/'
      '   OTYPE_ID = 1, /*PK*/'
      '   OBJGRP_NAME = :OBJGRP_NAME,'
      '   MUCGIA = :MUCGIA'
      'WHERE'
      '   OBJGRP_ID = :OLD_OBJGRP_ID AND'
      '   OTYPE_ID = :OLD_OTYPE_ID')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsList
    InsertSQL.Strings = (
      'INSERT INTO OBJECT_GROUP('
      '   OBJGRP_ID, /*PK*/'
      '   OTYPE_ID, /*PK*/'
      '   OBJGRP_NAME,'
      '   MUCGIA)'
      'VALUES ('
      '   :OBJGRP_ID,'
      '   1,'
      '   :OBJGRP_NAME,'
      '   :MUCGIA)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeEdit = qryGrpPriceBeforeEdit
    BeforeDelete = qryGrpPriceBeforeDelete
    BeforeInsert = qryGrpPriceBeforeInsert
    AfterInsert = qryGrpPriceAfterInsert
    OnPostError = qryGrpPricePostError
    SQL.Strings = (
      'SELECT OBJGRP_ID,'
      '       OTYPE_ID,'
      '       OBJGRP_NAME,'
      '       MUCGIA    '
      'FROM OBJECT_GROUP'
      'where OTYPE_ID=1')
    FieldOptions = []
    Left = 150
    Top = 84
    object qryGrpPriceOBJGRP_ID: TWideStringField
      FieldName = 'OBJGRP_ID'
      Required = True
      Size = 15
    end
    object qryGrpPriceOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryGrpPriceOBJGRP_NAME: TWideStringField
      FieldName = 'OBJGRP_NAME'
      Size = 126
    end
    object qryGrpPriceMUCGIA: TSmallintField
      FieldName = 'MUCGIA'
    end
  end
  object dsGrpPrice: TDataSource
    DataSet = qryGrpPrice
    Left = 150
    Top = 117
  end
end
