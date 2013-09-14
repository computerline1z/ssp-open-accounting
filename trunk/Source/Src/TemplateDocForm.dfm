object TemplateDocFrm: TTemplateDocFrm
  Left = 190
  Top = 167
  HelpContext = 22
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 350
  ClientWidth = 521
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
    Width = 521
    Height = 350
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBMemo1: TdxDBMemo
      Left = 61
      Top = 182
      Width = 490
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 12
      DataField = 'TEMPLATE_NOTES'
      DataSource = MainDM.dsTemplateList
      Height = 103
    end
    object dxDBEdit2: TdxDBEdit
      Left = 61
      Top = 134
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      DataField = 'TEMPLATE_PERSON'
      DataSource = MainDM.dsTemplateList
    end
    object btnIns: TElPopupButton
      Left = 3
      Top = 322
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
      TabOrder = 16
      Action = acIns
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 81
      Top = 322
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
      TabOrder = 17
      Action = acDel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn4: TElPopupButton
      Left = 169
      Top = 322
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
      TabOrder = 18
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn5: TElPopupButton
      Left = 247
      Top = 322
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng'
      TabOrder = 19
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn7: TElPopupButton
      Left = 365
      Top = 322
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 20
      OnClick = BitBtn7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn8: TElPopupButton
      Left = 443
      Top = 322
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
      TabOrder = 21
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBEdit3: TdxDBEdit
      Left = 247
      Top = 158
      Width = 135
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 11
      DataField = 'TEMPLATE_VOUCHER'
      DataSource = MainDM.dsTemplateList
    end
    object dxDBEdit5: TdxDBEdit
      Left = 247
      Top = 134
      Width = 284
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      DataField = 'TEMPLATE_ADDR'
      DataSource = MainDM.dsTemplateList
    end
    object dxDBPopupEdit1: TdxDBPopupEdit
      Left = 61
      Top = 158
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      OnExit = dxDBPopupEdit1Exit
      DataField = 'WAREHOUSE_ID'
      DataSource = MainDM.dsTemplateList
      PopupControl = PopupFrm.PnlWare
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit1CloseUp
    end
    object dxDBPopupEdit4: TdxDBPopupEdit
      Left = 61
      Top = 86
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      OnExit = dxDBPopupEdit4Exit
      DataField = 'TKNO'
      DataSource = MainDM.dsTemplateList
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit4CloseUp
      OnInitPopup = dxDBPopupEdit4InitPopup
    end
    object dxDBPopupEdit5: TdxDBPopupEdit
      Left = 247
      Top = 86
      Width = 112
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      OnExit = dxDBPopupEdit5Exit
      DataField = 'TKCO'
      DataSource = MainDM.dsTemplateList
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit5CloseUp
      OnInitPopup = dxDBPopupEdit5InitPopup
    end
    object dxDBPopupEdit6: TdxDBPopupEdit
      Left = 403
      Top = 86
      Width = 87
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      OnExit = dxDBPopupEdit6Exit
      DataField = 'TKVAT'
      DataSource = MainDM.dsTemplateList
      PopupControl = PopupFrm.PnlTK
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit6CloseUp
      OnInitPopup = dxDBPopupEdit6InitPopup
    end
    object dxDBCheckEdit8: TdxDBCheckEdit
      Left = 15
      Top = 281
      Width = 354
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 14
      Caption = 'N'#7871'u mu'#7889'n nh'#7853'p v'#224'o '#273#417'n gi'#225' c'#243' thu'#7871' th'#236' check v'#224'o '#273#226'y '
      DataField = 'NHAPGIACOTHUE'
      DataSource = MainDM.dsTemplateList
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dxDBCheckEdit9: TdxDBCheckEdit
      Left = 372
      Top = 281
      Width = 128
      Color = clBtnFace
      ParentColor = False
      Style.ButtonStyle = bts3D
      TabOrder = 15
      Caption = 'H'#7841'ch to'#225'n ngo'#7841'i t'#7879
      DataField = 'HACHTOANNT'
      DataSource = MainDM.dsTemplateList
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dxDBExtLookupEdit1: TdxDBExtLookupEdit
      Left = 61
      Top = 62
      Width = 130
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      DataField = 'SHOTCUT_NAME'
      DataSource = MainDM.dsTemplateList
      PopupFormBorderStyle = pbsSimple
      PopupWidth = 135
      OnCloseUp = dxDBExtLookupEdit1CloseUp
      DBGridLayout = dxDBGridLayoutList1Item1
    end
    object dxDBMemo2: TdxDBMemo
      Left = 61
      Top = 24
      Width = 490
      TabOrder = 0
      DataField = 'TEMPLATE_NAME'
      DataSource = MainDM.dsTemplateList
      Height = 35
    end
    object dxDBCheckEdit2: TdxDBCheckEdit
      Left = 15
      Top = 254
      Width = 490
      TabOrder = 13
      Caption = 
        'N'#7871'u l'#224' lo'#7841'i ch'#7913'ng t'#7915' c'#243' 1 n'#7907' (nhi'#7873'u c'#243') th'#236' ch'#7885'n m'#7909'c n'#224'y, ng'#432#7907'c ' +
        'l'#7841'i nhi'#7873'u n'#7907' th'#236' b'#7887' kh'#244'ng ch'#7885'n'
      DataField = 'CTMOTNO'
      DataSource = MainDM.dsTemplateList
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dxDBPopupEdit2: TdxDBPopupEdit
      Left = 61
      Top = 110
      Width = 130
      TabOrder = 6
      OnEnter = dxDBPopupEdit2Enter
      DataField = 'DTNO'
      DataSource = MainDM.dsTemplateList
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit2CloseUp
    end
    object dxDBPopupEdit3: TdxDBPopupEdit
      Left = 247
      Top = 110
      Width = 112
      TabOrder = 7
      OnEnter = dxDBPopupEdit3Enter
      DataField = 'DTCO'
      DataSource = MainDM.dsTemplateList
      PopupControl = PopupFrm.PnlCommonObj
      PopupFormBorderStyle = pbsSimple
      OnCloseUp = dxDBPopupEdit2CloseUp
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 194
      Top = 62
      Width = 121
      TabOrder = 2
      Caption = 'T'#7841'o ra phi'#7871'u ph'#7843'i ch'#7901' duy'#7879't m'#7899'i c'#7853'p nh'#7853't s'#7893' s'#225'ch'
      DataField = 'CHODUYET'
      DataSource = MainDM.dsTemplateList
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object locFrmGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFrmItem1: TdxLayoutItem
      end
      object locFrmGroup1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'Th'#171'ng tin tr'#170'n phi'#213'u '
        ShowCaption = False
        object locFrmItem9: TdxLayoutItem
          Caption = 'T'#234'n m'#7851'u'
          Control = dxDBMemo2
          ControlOptions.ShowBorder = False
        end
        object locFrmGroup7: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object locFrmGroup3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object locFrmItem24: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Ph'#237'm t'#7855't'
              Control = dxDBExtLookupEdit1
              ControlOptions.ShowBorder = False
            end
            object locFrmItem10: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'dxDBCheckEdit1'
              ShowCaption = False
              Control = dxDBCheckEdit1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object locFrmGroup10: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object locFrmDoituong: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object locFrmItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'TK N'#7907
                Control = dxDBPopupEdit4
                ControlOptions.ShowBorder = False
              end
              object locFrmItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = '  TK C'#243'   '
                Control = dxDBPopupEdit5
                ControlOptions.ShowBorder = False
              end
              object locFrmVATAcc: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = ' TK VAT '
                Control = dxDBPopupEdit6
                ControlOptions.ShowBorder = False
              end
            end
            object locFrmGroup15: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object locFrmGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locFrmItem4: TdxLayoutItem
                  Caption = 'M'#7863'c '#273#7883'nh'
                  Control = dxDBPopupEdit2
                  ControlOptions.ShowBorder = False
                end
                object locFrmItem7: TdxLayoutItem
                  Caption = 'M'#7863'c '#273#7883'nh'
                  Control = dxDBPopupEdit3
                  ControlOptions.ShowBorder = False
                end
              end
              object locFrmGroup9: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locFrmHoten: TdxLayoutItem
                  Caption = 'H'#7885' t'#234'n '
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object locFrmItem5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = '  '#272#7883'a ch'#7881
                  Control = dxDBEdit5
                  ControlOptions.ShowBorder = False
                end
              end
              object locFrmGroup16: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object locWare: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Kho h'#224'ng'
                  Control = dxDBPopupEdit1
                  ControlOptions.ShowBorder = False
                end
                object locFrmItem15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = ' Ch'#7913'ng t'#7915' '
                  Control = dxDBEdit3
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object locFrmItem3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'Ghi ch'#250
          CaptionOptions.AlignVert = tavTop
          Control = dxDBMemo1
          ControlOptions.ShowBorder = False
        end
        object locFrmItem2: TdxLayoutItem
          Caption = 'dxDBCheckEdit2'
          Offsets.Top = 5
          ShowCaption = False
          Control = dxDBCheckEdit2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFrmGroup22: TdxLayoutGroup
          Offsets.Top = 3
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locGIACOTHUE: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'dxDBCheckEdit8'
            ShowCaption = False
            Control = dxDBCheckEdit8
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFrmItem23: TdxLayoutItem
            Caption = 'dxDBCheckEdit9'
            ShowCaption = False
            Control = dxDBCheckEdit9
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
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
        object locFrmItem14: TdxLayoutItem
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
        object locFrmItem16: TdxLayoutItem
          Caption = 'BitBtn4'
          Offsets.Left = 10
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
    Left = 332
    Top = 304
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ActionList1: TActionList
    Left = 248
    Top = 212
    object acIns: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Th'#170'm'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = MainDM.dsTemplateList
    end
    object acDel: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Xo'#184
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = MainDM.dsTemplateList
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = '&L'#173'u'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = MainDM.dsTemplateList
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Kh'#171'ng'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = MainDM.dsTemplateList
    end
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 352
    Top = 192
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        2E020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060A53484F544355545F49440D53
        756D6D61727947726F7570730E001053756D6D617279536570617261746F7206
        022C200A44617461536F75726365071854656D706C617465446F6346726D2E64
        7353686F744375741044656661756C74526F7748656967687402140F46696C74
        65722E43726974657269610A04000000000000000F4F7074696F6E7342656861
        76696F720B0C6564676F4175746F536F72740E6564676F447261675363726F6C
        6C136564676F456E74657253686F77456469746F72136564676F496D6D656469
        617465456469746F720E6564676F5461625468726F7567680F6564676F566572
        745468726F75676800094F7074696F6E7344420B116564676F43616E4E617669
        676174696F6E116564676F436F6E6669726D44656C657465126564676F4C6F61
        64416C6C5265636F726473106564676F557365426F6F6B6D61726B73000B4F70
        74696F6E73566965770B0D6564676F4175746F5769647468136564676F42616E
        6448656164657257696474680D6564676F5573654269746D6170000A53686F77
        48656164657208000F546478444247726964436F6C756D6E07436F6C756D6E31
        0942616E64496E646578020008526F77496E6465780200094669656C644E616D
        65060C53484F544355545F4E414D45000000}
    end
  end
  object qryShotCut: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\Acc V1.0\db\Db.gdb'
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsPopup
    KeyLinks.Strings = (
      'SHOTCUT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SHOTCUT_ID'
      '     , SHOTCUT_NAME'
      'FROM SHOTCUT_LIST order by  SHOTCUT_ID')
    FieldOptions = []
    Left = 326
    Top = 190
    object qryShotCutSHOTCUT_ID: TSmallintField
      FieldName = 'SHOTCUT_ID'
      Required = True
    end
    object qryShotCutSHOTCUT_NAME: TWideStringField
      FieldName = 'SHOTCUT_NAME'
      Size = 15
    end
  end
  object dsShotCut: TDataSource
    DataSet = qryShotCut
    Left = 326
    Top = 188
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
        Caption = 'Phi'#7871'u m'#7851'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 65512
  end
end
