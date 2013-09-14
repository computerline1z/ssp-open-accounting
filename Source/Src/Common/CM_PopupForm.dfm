object CM_PopupFrm: TCM_PopupFrm
  Left = 193
  Top = 199
  Width = 828
  Height = 529
  Caption = 'Common Popup Control'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxlcObjGroup: TdxLayoutControl
    Left = 40
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    object ElPopupButton1: TElPopupButton
      Left = 215
      Top = 215
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 2
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 134
      Top = 215
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 0
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxtlObjGroup: TdxDBTreeList
      Left = 12
      Top = 12
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OBJGRP_ID'
      ParentField = 'P_OBJGRP_ID'
      BorderStyle = bsNone
      TabOrder = 1
      OnDblClick = dxtlObjGroupDblClick
      OnEnter = dxtlObjGroupEnter
      OnKeyDown = dxtlObjGroupKeyDown
      DataSource = MainDM.dsPObjGrp
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxtlObjGroupOBJGRP_ID: TdxDBTreeListColumn
        Alignment = taCenter
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_ID'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object dxtlObjGroupOBJGRP_NAME: TdxDBTreeListColumn
        Alignment = taCenter
        Caption = 'T'#234'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 192
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBJGRP_NAME'
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
    end
    object ElPopupButton2: TElPopupButton
      Left = 10
      Top = 215
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 3
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxlcObjGroupGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcObjGroupItem4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxtlObjGroup
      end
      object dxlcObjGroupGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcObjGroupItem2: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcObjGroupItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcObjGroupItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
