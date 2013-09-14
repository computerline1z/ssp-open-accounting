object BeginInstockFrm: TBeginInstockFrm
  Left = 288
  Top = 149
  BorderStyle = bsDialog
  Caption = 'T'#229'n kho ban '#174#199'u'
  ClientHeight = 386
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'SaigonSoft   '
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 590
    Height = 386
    Align = alClient
    TabOrder = 0
    LookAndFeel = dxLayoutStandardLookAndFeel1
    DesignSize = (
      590
      386)
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 36
      Width = 579
      Height = 313
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 2
      DefaultRowHeight = 21
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      ShowNewItemRow = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'M'#183' h'#181'ng ho'#184
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 124
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'T'#170'n h'#181'ng ho'#184
        HeaderAlignment = taCenter
        Width = 226
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = 'S'#232' l'#173#238'ng t'#229'n'
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 0
        RowIndex = 0
      end
      object dxDBGrid1Column4: TdxDBGridSpinColumn
        Caption = 'Gi'#184' tr'#222' t'#229'n'
        Width = 119
        BandIndex = 0
        RowIndex = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 84
      Top = 357
      Width = 75
      Height = 25
      Caption = '&Kh'#171'ng'
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 3
      Top = 357
      Width = 75
      Height = 25
      Caption = '&L'#173'u'
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 511
      Top = 357
      Width = 75
      Height = 25
      Caption = #167#227'&ng'
      ModalResult = 2
      TabOrder = 6
    end
    object BitBtn4: TBitBtn
      Left = 430
      Top = 357
      Width = 75
      Height = 25
      Caption = '&Gi'#243'p'
      TabOrder = 5
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 53
      Top = 7
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Text = 'dxPopupEdit1'
    end
    object dxPopupEdit2: TdxPopupEdit
      Left = 242
      Top = 7
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Text = 'dxPopupEdit2'
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
        object locFormItem9: TdxLayoutItem
          Caption = 'Kho h'#181'ng'
          Offsets.Top = 4
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          Caption = 'T'#181'i kho'#182'n'
          Offsets.Left = 10
          Offsets.Top = 4
          Control = dxPopupEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem1: TdxLayoutItem
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
      end
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem6: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
        object locFormItem2: TdxLayoutItem
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
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
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
