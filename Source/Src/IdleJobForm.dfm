object IdleJobfrm: TIdleJobfrm
  Left = 157
  Top = 35
  Width = 773
  Height = 547
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 765
    Height = 513
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      765
      513)
    object pedtBranch: TdxDBExtLookupEdit
      Left = 668
      Top = 3
      Width = 94
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      DataField = 'BRANCH_ID'
      DataSource = dsComBranch
      OnCloseUp = pedtBranchCloseUp
      DBGridLayout = dxDBGridLayout1
      PickListField = 'BRANCH_ID'
    end
    object grdAllocate: TdxDBGrid
      Left = 5
      Top = 27
      Width = 682
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'TABLE_ID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'grdAllocateD1'
              SummaryField = 'D1'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD2'
              SummaryField = 'D2'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD3'
              SummaryField = 'D3'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD4'
              SummaryField = 'D4'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD5'
              SummaryField = 'D5'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD6'
              SummaryField = 'D6'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD7'
              SummaryField = 'D8'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD8'
              SummaryField = 'D9'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD9'
              SummaryField = 'D9'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD10'
              SummaryField = 'D10'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD11'
              SummaryField = 'D11'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD12'
              SummaryField = 'D12'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD13'
              SummaryField = 'D13'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD14'
              SummaryField = 'D14'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD15'
              SummaryField = 'D15'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD16'
              SummaryField = 'D16'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD17'
              SummaryField = 'D17'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD18'
              SummaryField = 'D18'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD19'
              SummaryField = 'D19'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD20'
              SummaryField = 'D20'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD21'
              SummaryField = 'D21'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD22'
              SummaryField = 'D22'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD23'
              SummaryField = 'D23'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD24'
              SummaryField = 'D24'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD25'
              SummaryField = 'D25'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD26'
              SummaryField = 'D26'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD27'
              SummaryField = 'D27'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD28'
              SummaryField = 'D28'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD29'
              SummaryField = 'D29'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD30'
              SummaryField = 'D30'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateD31'
              SummaryField = 'D31'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end
            item
              ColumnName = 'grdAllocateTONGCONG'
              SummaryField = 'TONGCONG'
              SummaryFormat = '0.#'
              SummaryType = cstSum
            end>
          Name = 'grdAllocateSummaryGroup2'
        end>
      SummarySeparator = ', '
      IsImportFromXLS = True
      BorderStyle = bsNone
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      OnEnter = grdAllocateEnter
      OnKeyDown = grdAllocateKeyDown
      OnMouseUp = grdAllocateMouseUp
      DataSource = dsHeso
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowRowFooter = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object grdAllocateTABLE_ID: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'STT'
        HeaderAlignment = taCenter
        MinWidth = 0
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TABLE_ID'
      end
      object grdAllocateOBJECT_ID: TdxDBGridPopupColumn
        Caption = 'M'#227' KH'
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_ID'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateOBJECT_IDCloseUp
        OnInitPopup = grdAllocateOBJECT_IDInitPopup
        Caption_UTF7 = 'M+AOM KH'
      end
      object grdAllocateOBJECT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n KH'
        HeaderAlignment = taCenter
        Visible = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJECT_NAME'
        Caption_UTF7 = 'T+AOo-n KH'
      end
      object grdAllocateTO_FACTOR: TdxDBGridPopupColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_FACTOR'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateTO_FACTORCloseUp
        OnInitPopup = grdAllocateTO_FACTORInitPopup
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object grdAllocateTO_FACTOR_2: TdxDBGridPopupColumn
        Caption = 'M'#227' c'#244'ng vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_FACTOR_2'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateTO_FACTOR_2CloseUp
        OnInitPopup = grdAllocateTO_FACTOR_2InitPopup
        Caption_UTF7 = 'M+AOM c+APQ-ng vi+Hsc-c'
      end
      object grdAllocateFNAME: TdxDBGridMaskColumn
        Caption = 'Nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FNAME'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
      end
      object grdAllocateTO_FACTOR_3: TdxDBGridPopupColumn
        Caption = 'M'#227' chi ph'#237
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_FACTOR_3'
        PopupControl = PopupFrm.PnlCommonObj
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = grdAllocateTO_FACTOR_3CloseUp
        OnInitPopup = grdAllocateTO_FACTOR_3InitPopup
        Caption_UTF7 = 'M+AOM chi ph+AO0'
      end
      object grdAllocateNOTES: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTES'
      end
      object grdAllocateTONGCONG: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng c'#7897'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TONGCONG'
        SummaryFooterType = cstSum
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
        Caption_UTF7 = 'T+HtU-ng c+Htk-ng'
      end
      object grdAllocateD1: TdxDBGridColumn
        Caption = '1'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D1'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryField = '0.#'
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD2: TdxDBGridMaskColumn
        Caption = '2'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD3: TdxDBGridMaskColumn
        Caption = '3'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D3'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD4: TdxDBGridMaskColumn
        Caption = '4'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D4'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD5: TdxDBGridMaskColumn
        Caption = '5'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D5'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD6: TdxDBGridMaskColumn
        Caption = '6'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D6'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD7: TdxDBGridMaskColumn
        Caption = '7'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D7'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD8: TdxDBGridMaskColumn
        Caption = '8'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D8'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD9: TdxDBGridMaskColumn
        Caption = '9'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D9'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD10: TdxDBGridMaskColumn
        Caption = '10'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D10'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD11: TdxDBGridMaskColumn
        Caption = '11'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D11'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD12: TdxDBGridMaskColumn
        Caption = '12'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D12'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD13: TdxDBGridMaskColumn
        Caption = '13'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D13'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD14: TdxDBGridMaskColumn
        Caption = '14'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D14'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD15: TdxDBGridMaskColumn
        Caption = '15'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D15'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD16: TdxDBGridMaskColumn
        Caption = '16'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D16'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD17: TdxDBGridMaskColumn
        Caption = '17'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D17'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD18: TdxDBGridMaskColumn
        Caption = '18'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D18'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD19: TdxDBGridMaskColumn
        Caption = '19'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D19'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD20: TdxDBGridMaskColumn
        Caption = '20'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D20'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD21: TdxDBGridMaskColumn
        Caption = '21'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D21'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD22: TdxDBGridMaskColumn
        Caption = '22'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D22'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD23: TdxDBGridMaskColumn
        Caption = '23'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D23'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD24: TdxDBGridMaskColumn
        Caption = '24'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D24'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD25: TdxDBGridMaskColumn
        Caption = '25'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D25'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD26: TdxDBGridMaskColumn
        Caption = '26'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D26'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD27: TdxDBGridMaskColumn
        Caption = '27'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D27'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD28: TdxDBGridMaskColumn
        Caption = '28'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D28'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD29: TdxDBGridMaskColumn
        Caption = '29'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D29'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD30: TdxDBGridMaskColumn
        Caption = '30'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D30'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateD31: TdxDBGridMaskColumn
        Caption = '31'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'D31'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0.#'
        SummaryType = cstSum
        SummaryFormat = '0.#'
        SummaryGroupName = 'grdAllocateSummaryGroup2'
      end
      object grdAllocateBRANCH_ID: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BRANCH_ID'
      end
    end
    object TntBitBtn1: TElPopupButton
      Left = 3
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 5
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn2: TElPopupButton
      Left = 79
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 6
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn3: TElPopupButton
      Left = 165
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 7
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn4: TElPopupButton
      Left = 241
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 8
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn5: TElPopupButton
      Left = 611
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 10
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntBitBtn6: TElPopupButton
      Left = 687
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 11
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object popObjGrp: TdxPopupEdit
      Left = 235
      Top = 3
      Width = 96
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      OnEnter = popObjGrpEnter
      OnChange = popObjGrpChange
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = popObjGrpCloseUp
    end
    object pedtKH: TdxPopupEdit
      Left = 61
      Top = 3
      Width = 96
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = pedtKHEnter
      OnChange = pedtKHChange
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = pedtKHCloseUp
    end
    object chkExpand: TdxCheckEdit
      Left = 332
      Top = 3
      Width = 173
      Color = clBtnFace
      ParentColor = False
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Caption = 'Bung to'#224'n b'#7897' d'#7919' li'#7879'u'
      StyleController = InterfaceDM.chkStyleController
      OnChange = chkExpandChange
    end
    object ElPopupButton1: TElPopupButton
      Left = 327
      Top = 485
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&C'#7853'p nh'#7853't CP'
      TabOrder = 9
      OnClick = ElPopupButton1Click
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
        object locFormItem9: TdxLayoutItem
          Caption = 'Kh'#225'ch h'#224'ng'
          Control = pedtKH
          ControlOptions.ShowBorder = False
        end
        object locFormItem10: TdxLayoutItem
          Caption = 'Nh'#243'm c'#244'ng vi'#7879'c'
          Control = popObjGrp
          ControlOptions.ShowBorder = False
        end
        object locFormItem11: TdxLayoutItem
          ShowCaption = False
          Control = chkExpand
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = #272#417'n v'#7883
          Control = pedtBranch
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = grdAllocate
      end
      object locFormGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem3: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = TntBitBtn3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          ShowCaption = False
          Control = TntBitBtn4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem12: TdxLayoutItem
          Offsets.Left = 10
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = TntBitBtn6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
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
        Caption = 'Timesheet'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 40
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 52
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      DataSource = dsHeso
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsHeso
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsHeso
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsHeso
    end
  end
  object qryHeso: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'PERIOD_ID_IN'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BRANCH_ID_IN'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM WORK_IDLE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   TABLE_ID = :OLD_TABLE_ID')
    EditSQL.Strings = (
      'UPDATE WORK_IDLE SET'
      ''
      '   TABLE_ID = :TABLE_ID, /*PK*/'
      '   OBJECT_ID = :OBJECT_ID,'
      '   OTYPE_ID = :OTYPE_ID,'
      '   TO_FACTOR = :TO_FACTOR,'
      '   TO_FACTOR_2 = :TO_FACTOR_2,'
      '   TO_FACTOR_3 = :TO_FACTOR_3,'
      '   TO_FACTYPE = :TO_FACTYPE,'
      '   TO_FACTYPE_2 = :TO_FACTYPE_2,'
      '   TO_FACTYPE_3 = :TO_FACTYPE_3,'
      '   BRANCH_ID = :BRANCH_ID,'
      '   D1 = :D1,'
      '   D2 = :D2,'
      '   D3 = :D3,'
      '   D4 = :D4,'
      '   D5 = :D5,'
      '   D6 = :D6,'
      '   D7 = :D7,'
      '   D8 = :D8,'
      '   D9 = :D9,'
      '   D10 = :D10,'
      '   D11 = :D11,'
      '   D12 = :D12,'
      '   D13 = :D13,'
      '   D14 = :D14,'
      '   D15 = :D15,'
      '   D16 = :D16,'
      '   D17 = :D17,'
      '   D18 = :D18,'
      '   D19 = :D19,'
      '   D20 = :D20,'
      '   D21 = :D21,'
      '   D22 = :D22,'
      '   D23 = :D23,'
      '   D24 = :D24,'
      '   D25 = :D25,'
      '   D26 = :D26,'
      '   D27 = :D27,'
      '   D28 = :D28,'
      '   D29 = :D29,'
      '   D30 = :D30,'
      '   D31 = :D31,'
      '   NOTES = :NOTES'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID AND'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   TABLE_ID = :OLD_TABLE_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO WORK_IDLE('
      '   PERIOD_ID, /*PK*/'
      '   TABLE_ID, /*PK*/'
      '   OBJECT_ID,'
      '   OTYPE_ID,'
      '   TO_FACTOR,'
      '   TO_FACTOR_2,'
      '   TO_FACTOR_3,'
      '   TO_FACTYPE,'
      '   TO_FACTYPE_2,'
      '   TO_FACTYPE_3,'
      '   BRANCH_ID,'
      '   D1,'
      '   D2,'
      '   D3,'
      '   D4,'
      '   D5,'
      '   D6,'
      '   D7,'
      '   D8,'
      '   D9,'
      '   D10,'
      '   D11,'
      '   D12,'
      '   D13,'
      '   D14,'
      '   D15,'
      '   D16,'
      '   D17,'
      '   D18,'
      '   D19,'
      '   D20,'
      '   D21,'
      '   D22,'
      '   D23,'
      '   D24,'
      '   D25,'
      '   D26,'
      '   D27,'
      '   D28,'
      '   D29,'
      '   D30,'
      '   D31,'
      '   NOTES)'
      'VALUES ('
      '   :PERIOD_ID,'
      '   :TABLE_ID,'
      '   :OBJECT_ID,'
      '   :OTYPE_ID,'
      '   :TO_FACTOR,'
      '   :TO_FACTOR_2,'
      '   :TO_FACTOR_3,'
      '   :TO_FACTYPE,'
      '   :TO_FACTYPE_2,'
      '   :TO_FACTYPE_3,'
      '   :BRANCH_ID,'
      '   :D1,'
      '   :D2,'
      '   :D3,'
      '   :D4,'
      '   :D5,'
      '   :D6,'
      '   :D7,'
      '   :D8,'
      '   :D9,'
      '   :D10,'
      '   :D11,'
      '   :D12,'
      '   :D13,'
      '   :D14,'
      '   :D15,'
      '   :D16,'
      '   :D17,'
      '   :D18,'
      '   :D19,'
      '   :D20,'
      '   :D21,'
      '   :D22,'
      '   :D23,'
      '   :D24,'
      '   :D25,'
      '   :D26,'
      '   :D27,'
      '   :D28,'
      '   :D29,'
      '   :D30,'
      '   :D31,'
      '   :NOTES)')
    KeyLinks.Strings = (
      'TABLE_ID'
      'PERIOD_ID'
      'BRANCH_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeInsert = qryHesoBeforeInsert
    BeforeOpen = qryHesoBeforeOpen
    AfterOpen = qryHesoAfterOpen
    BeforePost = qryHesoBeforePost
    OnCalcFields = qryHesoCalcFields
    OnFilterRecord = qryHesoFilterRecord
    OnNewRecord = qryHesoNewRecord
    OnPostError = qryHesoPostError
    SQL.Strings = (
      'SELECT w.OBJECT_ID'
      '     , w.OTYPE_ID'
      '     , o.object_name'
      '     , TO_FACTOR'
      '     , TO_FACTOR_2'
      '     , TO_FACTYPE'
      '     , TO_FACTYPE_2'
      '     , TO_FACTOR_3'
      '     , TO_FACTYPE_3'
      '     , BRANCH_ID'
      '     , o4.object_name FName'
      '     , o4.object_value Luong'
      '     , table_id'
      '     , PERIOD_ID'
      ',D1'
      ',D2'
      ',D3'
      ',D4'
      ',D5'
      ',D6'
      ',D7'
      ',D8'
      ',D9'
      ',D10'
      ',D11'
      ',D12'
      ',D13'
      ',D14'
      ',D15'
      ',D16'
      ',D17'
      ',D18'
      ',D19'
      ',D20'
      ',D21'
      ',D22'
      ',D23'
      ',D24'
      ',D25'
      ',D26'
      ',D27'
      ',D28'
      ',D29'
      ',D30'
      ',D31'
      ',NOTES'
      ',TONGCONG'
      ',NHOMCV'
      'FROM  SP_GET_TIMESHEET(:PERIOD_ID_IN,:BRANCH_ID_IN) w'
      
        'LEFT JOIN OBJECT_LIST O on (w.OBJECT_ID=O.OBJECT_ID and w.OTYPE_' +
        'ID= O.OTYPE_ID)'
      
        'LEFT JOIN OBJECT_LIST O4 on (w.TO_FACTOR  = O4.OBJECT_ID and w.T' +
        'O_FACTYPE = O4.OTYPE_ID)'
      'order by w.table_id')
    FieldOptions = []
    Left = 173
    Top = 94
    object qryHesoOBJECT_ID: TWideStringField
      FieldName = 'OBJECT_ID'
      Required = True
      OnChange = qryHesoOBJECT_IDChange
      Size = 30
    end
    object qryHesoOTYPE_ID: TSmallintField
      FieldName = 'OTYPE_ID'
      Required = True
    end
    object qryHesoOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryHesoTO_FACTOR: TWideStringField
      FieldName = 'TO_FACTOR'
      Required = True
      OnChange = qryHesoTO_FACTORChange
      Size = 30
    end
    object qryHesoTO_FACTYPE: TSmallintField
      FieldName = 'TO_FACTYPE'
      Required = True
    end
    object qryHesoFNAME: TWideStringField
      FieldName = 'FNAME'
      Size = 126
    end
    object qryHesoBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryHesoTO_FACTOR_2: TWideStringField
      FieldName = 'TO_FACTOR_2'
      Required = True
      Size = 30
    end
    object qryHesoTO_FACTYPE_2: TSmallintField
      FieldName = 'TO_FACTYPE_2'
      Required = True
    end
    object qryHesoTABLE_ID: TSmallintField
      FieldName = 'TABLE_ID'
      Required = True
    end
    object qryHesoPERIOD_ID: TSmallintField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryHesoD1: TIBOFloatField
      FieldName = 'D1'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD2: TIBOFloatField
      FieldName = 'D2'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD3: TIBOFloatField
      FieldName = 'D3'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD4: TIBOFloatField
      FieldName = 'D4'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD5: TIBOFloatField
      FieldName = 'D5'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD6: TIBOFloatField
      FieldName = 'D6'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD7: TIBOFloatField
      FieldName = 'D7'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD8: TIBOFloatField
      FieldName = 'D8'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD9: TIBOFloatField
      FieldName = 'D9'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD10: TIBOFloatField
      FieldName = 'D10'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD11: TIBOFloatField
      FieldName = 'D11'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD12: TIBOFloatField
      FieldName = 'D12'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD13: TIBOFloatField
      FieldName = 'D13'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD14: TIBOFloatField
      FieldName = 'D14'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD15: TIBOFloatField
      FieldName = 'D15'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD16: TIBOFloatField
      FieldName = 'D16'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD17: TIBOFloatField
      FieldName = 'D17'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD18: TIBOFloatField
      FieldName = 'D18'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD19: TIBOFloatField
      FieldName = 'D19'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD20: TIBOFloatField
      FieldName = 'D20'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD21: TIBOFloatField
      FieldName = 'D21'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD22: TIBOFloatField
      FieldName = 'D22'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD23: TIBOFloatField
      FieldName = 'D23'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD24: TIBOFloatField
      FieldName = 'D24'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD25: TIBOFloatField
      FieldName = 'D25'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD26: TIBOFloatField
      FieldName = 'D26'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD27: TIBOFloatField
      FieldName = 'D27'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD28: TIBOFloatField
      FieldName = 'D28'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD29: TIBOFloatField
      FieldName = 'D29'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD30: TIBOFloatField
      FieldName = 'D30'
      MaxValue = 24.000000000000000000
    end
    object qryHesoD31: TIBOFloatField
      FieldName = 'D31'
      MaxValue = 24.000000000000000000
    end
    object qryHesoNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 189
    end
    object qryHesoTONGCONG: TIBOFloatField
      FieldKind = fkCalculated
      FieldName = 'TONGCONG'
      ReadOnly = True
      Calculated = True
    end
    object qryHesoNHOMCV: TWideStringField
      FieldName = 'NHOMCV'
      Size = 45
    end
    object qryHesoTO_FACTOR_3: TWideStringField
      FieldName = 'TO_FACTOR_3'
      Required = True
      Size = 93
    end
    object qryHesoTO_FACTYPE_3: TSmallintField
      FieldName = 'TO_FACTYPE_3'
    end
    object qryHesoLUONG: TIBOFloatField
      FieldName = 'LUONG'
    end
  end
  object dsHeso: TDataSource
    DataSet = qryHeso
    Left = 173
    Top = 152
  end
  object qryComBranch: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
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
    BeforeOpen = qryComBranchBeforeOpen
    AfterOpen = qryComBranchAfterOpen
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
    Left = 610
    Top = 120
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
    Left = 610
    Top = 140
  end
  object dxDBGridLayoutList2: TdxDBGridLayoutList
    Left = 582
    Top = 140
    object dxDBGridLayout1: TdxDBGridLayout
      Data = {
        09060000545046301054647844424772696457726170706572000542616E6473
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
        0E42616E64466F6E742E5374796C650B000A44617461536F7572636507174175
        746F5261746546726D2E6473436F6D4272616E63680F46696C7465722E437269
        74657269610A040000000000000012486561646572466F6E742E436861727365
        74070F44454641554C545F4348415253455410486561646572466F6E742E436F
        6C6F72070C636C57696E646F775465787411486561646572466F6E742E486569
        67687402F50F486561646572466F6E742E4E616D6506065461686F6D61104865
        61646572466F6E742E5374796C650B000B4C6F6F6B416E644665656C07066C66
        466C6174094F7074696F6E7344420B106564676F43616E63656C4F6E45786974
        0D6564676F43616E44656C6574650D6564676F43616E496E7365727411656467
        6F43616E4E617669676174696F6E116564676F436F6E6669726D44656C657465
        126564676F4C6F6164416C6C5265636F726473106564676F557365426F6F6B6D
        61726B73000B4F7074696F6E73566965770B0D6564676F4175746F5769647468
        0D6564676F5573654269746D6170001350726576696577466F6E742E43686172
        736574070F44454641554C545F434841525345541150726576696577466F6E74
        2E436F6C6F720706636C426C75651250726576696577466F6E742E4865696768
        7402F51050726576696577466F6E742E4E616D65060D4D532053616E73205365
        7269661150726576696577466F6E742E5374796C650B00001354647844424772
        69644D61736B436F6C756D6E094252414E43485F49440743617074696F6E140E
        0000004DC3A320C491C6A16E2076E1BB8B0C466F6E742E43686172736574070F
        44454641554C545F434841525345540A466F6E742E436F6C6F72070C636C5769
        6E646F77546578740B466F6E742E48656967687402F509466F6E742E4E616D65
        06065461686F6D610A466F6E742E5374796C650B000F486561646572416C6967
        6E6D656E740708746143656E74657205576964746802560942616E64496E6465
        78020008526F77496E6465780200094669656C644E616D6506094252414E4348
        5F49440C43617074696F6E5F5554463706154D2B414F4D202B415245426F512D
        6E20762B4873730000135464784442477269644D61736B436F6C756D6E084655
        4C4C4E414D450743617074696F6E141E00000054C3AA6E20C491C6A16E2076E1
        BB8B2028C491E1BAA77920C491E1BBA7290F486561646572416C69676E6D656E
        740708746143656E7465720756697369626C6508055769647468032301094261
        6E64496E646578020008526F77496E6465780200094669656C644E616D650608
        46554C4C4E414D450C43617074696F6E5F55544637062B542B414F6F2D6E202B
        415245426F512D6E20762B48737320282B4152456570772D79202B4152456535
        77290000135464784442477269644D61736B436F6C756D6E0953484F52544E41
        4D450743617074696F6E140F00000054C3AA6E20C491C6A16E2076E1BB8B0F48
        6561646572416C69676E6D656E740708746143656E7465720942616E64496E64
        6578020008526F77496E6465780200094669656C644E616D65060953484F5254
        4E414D450C43617074696F6E5F555446370617542B414F6F2D6E202B41524542
        6F512D6E20762B487373000000}
    end
  end
  object qryId: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'period_id'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    IB_Connection = MainDM.cnMain
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select max(table_id) A from tln_costdeclare where period_id = :p' +
        'eriod_id')
    FieldOptions = []
    Left = 228
    Top = 96
    object qryIdA: TSmallintField
      FieldName = 'A'
      ReadOnly = True
    end
  end
end
