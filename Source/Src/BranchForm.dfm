object BranchFrm: TBranchFrm
  Left = 232
  Top = 189
  Width = 613
  Height = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 336
    Width = 605
    Height = 80
    Align = alBottom
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = InterfaceDM.StyleStandard
    object btnOK: TElPopupButton
      Left = 523
      Top = 51
      Width = 79
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      Flat = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabStop = False
      TabOrder = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSkipClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnAdd: TElPopupButton
      Tag = 113
      Left = 77
      Top = 51
      Width = 71
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm t'#224'i kho'#7843'n m'#7899'i ngang h'#224'ng v'#7899'i t'#224'i kho'#7843'n hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
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
      Caption = '&Th'#234'm'
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnAddChild: TElPopupButton
      Tag = 114
      Left = 3
      Top = 51
      Width = 71
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm ti'#7875'u kho'#7843'n con c'#7911'a t'#224'i kho'#7843'n hi'#7879'n t'#7841'i'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm &con'
      TabOrder = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddChildClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDel: TElPopupButton
      Tag = 115
      Left = 151
      Top = 51
      Width = 71
      Height = 25
      Cursor = crDefault
      Hint = 'Delete'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
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
      Caption = '&X'#243'a'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Tag = 116
      Left = 225
      Top = 51
      Width = 71
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      DrawDefaultFrame = False
      Default = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000061616111737373FF7E7E7EFF7E7E7EFF737373FF707070FF7070
        70FF707070FF707070FF707070FF737373FF737373FF00000000000000000000
        00000C0C0C117E7E7EE3707070FFFFFFFFFF949495FF949495FFE5E5E5FFE4E4
        E4FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000006161
        61117E7E7EE3F2F2F2FF707070FFFFFFFFFF949495FF949495FFDCDCDCFFDBDB
        DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000007373
        73FFF2F2F2FFE9E9E9FF707070FFFFFFFFFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9
        E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FFB4B4B4FF787878FF787878FF707070FF707070FF707070FF7070
        70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FFB4B4B4FFB4B4B4FFB5B5B6FFB5B5B5FFB4B4B5FFB4B4B4FFB4B4
        B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FFB4B4B4FF5793A5FF5094A8FF5094A8FF5094A8FF5094A8FF5094
        A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5593A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFF99EDFFFF95ECFFFF90ECFFFF8CEBFFFF88EA
        FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
        FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
        FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
        FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
        73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
        FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
        C0417E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
        A8FF5094A8FF5094A8FF5896A8FA737373FF737373FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Tag = 117
      Left = 299
      Top = 51
      Width = 82
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      DrawDefaultFrame = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000AAAA
        B6FFAAAAB6FF000000000000000000000000AAAAB6FFAAAAB6FF000000000000
        0000000000000000000000000000000000000000000000000000AAAAB6FF0000
        4CFF00005DFF61616111737373FF7E7E7EFF00005DFF2E328FFFAAAAB6FF7070
        70FF707070FF707070FF707070FF737373FF737373FF000000002E328FFF6688
        EEFF1D41E8FF2E328FFF00005DFF2E328FFF2F55EDFF1235E6FF2E328FFFAAAA
        C3FFE4E4E4FFFFFFFFFF707070FFF2F2F2FF707070FF0000000000005DFF2E32
        8FFF1336E6FF1E42E8FF2E328FFF3559EDFF1235E6FF3C62F0FF00005DFFDBDB
        DBFFDADADAFFFFFFFFFF707070FFF2F2F2FF707070FF00000000000000000000
        5DFF6281EBFF1336E6FF1F42E8FF1235E6FF4165EFFF2E328FFFEAEAEAFFE9E9
        E9FFE8E8E8FFFFFFFFFF787878FFF2F2F2FF707070FF00000000000000007070
        70FF2E328FFF4D72F2FF163EEBFF2347EAFF2E328FFF00005DFF707070FF7070
        70FF707070FF707070FF787878FFF2F2F2FF707070FF00000000000000000000
        5DFF5E85F6FF1A48F0FF4E74F3FF1A42ECFF254CECFF2E328FFFB4B4B4FFB4B4
        B4FFB3B3B3FFB4B4B4FFB4B4B4FFF2F2F2FF707070FF0000000000005DFF2E32
        8FFF1F52F5FF5780F7FF2E328FFF83A0F0FF1C47EEFF2850EEFF00005DFF5094
        A8FF5094A8FF5094A8FF5293A7FFF2F2F2FF707070FF0000000000005DFF2E32
        8FFF2E328FFF00005DFFFFFFFFFF00005DFF2E328FFFB1C9F3FF01014DFFFFFF
        FFFFFFFFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000000000
        5DFF00005DFF5094A8FFFFFFFFFF99EDFFFF00005DFF2E328FFF8CEBFFFF88EA
        FFFF84EAFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFFA8F0FFFFA4EFFFFFA0EEFFFF9BEEFFFF97ED
        FFFF93ECFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFFB7F2FFFFB3F2FFFFAFF1FFFFAAF0FFFFA6EF
        FFFFA2EFFFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007070
        70FFF2F2F2FF5094A8FFFFFFFFFFC6F5FFFFC2F4FFFFBEF4FFFFBAF3FFFFB5F2
        FFFFB1F1FFFFFFFFFFFF5094A8FFF2F2F2FF707070FF00000000000000007373
        73FFF2F2F2FF5094A8FFF4FFFFFFD6F8FFFFD1F7FFFFCDF6FFFFC9F5FFFFC4F5
        FFFFC0F4FFFFFFFFFFFF5094A8FFE9E9E9FF737373FF0000000000000000C0C0
        C0417E7E7EFF5394A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094A8FF5094
        A8FF5094A8FF5094A8FF5896A8FA737373FF737373FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit1: TdxDBEdit
      Left = 265
      Top = 3
      Width = 270
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'SHORTNAME'
      DataSource = dsBranch
    end
    object dxDBEdit2: TdxDBEdit
      Left = 61
      Top = 3
      Width = 107
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'BRANCH_ID'
      DataSource = dsBranch
    end
    object dxDBEdit3: TdxDBEdit
      Left = 61
      Top = 27
      Width = 357
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'FULLNAME'
      DataSource = dsBranch
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locBranch: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #272#417'n v'#7883
            Control = dxDBEdit2
            ControlOptions.ShowBorder = False
          end
          object locName: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#234'n vi'#7871't t'#7855't'
            Control = dxDBEdit1
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'T'#234'n '#273#7847'y '#273#7911
          Control = dxDBEdit3
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Control = btnAddChild
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Control = btnAdd
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Control = btnDel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Control = btnPost
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Control = btnCancel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          ShowCaption = False
          Control = btnOK
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object grdHSCT: TdxDBTreeList
    Left = 0
    Top = 0
    Width = 605
    Height = 336
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'BRANCH_ID'
    ParentField = 'PBRANCH_ID'
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnDblClick = grdHSCTDblClick
    OnMouseUp = grdHSCTMouseUp
    DataSource = dsBranch
    DefaultRowHeight = 20
    LookAndFeel = lfFlat
    OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
    OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanInsert, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
    TreeLineColor = clGrayText
    TreeLineStyle = tlSolid
    object grdHSCTBRANCH_ID: TdxDBTreeListMaskColumn
      Caption = #272#417'n v'#7883
      HeaderAlignment = taCenter
      Width = 209
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BRANCH_ID'
      SummaryFooterType = cstCount
      Caption_UTF7 = '+ARABoQ-n v+Hss'
    end
    object grdHSCTFULLNAME: TdxDBTreeListMaskColumn
      Caption = 'T'#234'n '#273#7847'y '#273#7911
      HeaderAlignment = taCenter
      Width = 331
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FULLNAME'
      Caption_UTF7 = 'T+AOo-n +AREepw-y +AREe5w'
    end
    object grdHSCTSHORTNAME: TdxDBTreeListMaskColumn
      Caption = 'T'#234'n vi'#7871't t'#7855't'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHORTNAME'
      Caption_UTF7 = 'T+AOo-n vi+Hr8-t t+Hq8-t'
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
        Caption = 'SSP Accounting 5.0'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 300
    Top = 111
  end
  object dsBranch: TDataSource
    DataSet = qryBranch
    Left = 36
    Top = 78
  end
  object qryBranch: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'LOGIN_BRANCH_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM COMPANY_FILE'
      'WHERE'
      '   BRANCH_ID = :OLD_BRANCH_ID')
    EditSQL.Strings = (
      'UPDATE COMPANY_FILE SET'
      '   BRANCH_ID = :BRANCH_ID, /*PK*/'
      '   FULLNAME = :FULLNAME,'
      '   SHORTNAME = :SHORTNAME,'
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
    BeforeOpen = qryBranchBeforeOpen
    BeforePost = qryBranchBeforePost
    OnNewRecord = qryBranchNewRecord
    SQL.Strings = (
      'SELECT BRANCH_ID'
      '     , FULLNAME'
      '     , SHORTNAME'
      '     , ISMIN'
      '     , PBRANCH_ID'
      '     , COMPANY_ID'
      'FROM COMPANY_FILE '
      'WHERE BRANCH_ID STARTING WITH :LOGIN_BRANCH_ID'
      'order by BRANCH_ID')
    FieldOptions = []
    Left = 36
    Top = 66
    object qryBranchBRANCH_ID: TWideStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 6
    end
    object qryBranchFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Required = True
      Size = 126
    end
    object qryBranchSHORTNAME: TWideStringField
      FieldName = 'SHORTNAME'
      Size = 63
    end
    object qryBranchISMIN: TSmallintField
      FieldName = 'ISMIN'
    end
    object qryBranchPBRANCH_ID: TWideStringField
      FieldName = 'PBRANCH_ID'
      Size = 6
    end
    object qryBranchCOMPANY_ID: TSmallintField
      FieldName = 'COMPANY_ID'
    end
  end
  object ActionList1: TActionList
    Left = 210
    Top = 150
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      DataSource = dsBranch
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      DataSource = dsBranch
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      DataSource = dsBranch
    end
  end
end
