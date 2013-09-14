object UserFrm: TUserFrm
  Left = 252
  Top = 200
  HelpContext = 11
  BorderStyle = bsDialog
  ClientHeight = 330
  ClientWidth = 536
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
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 536
    Height = 330
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object dxDBEdit1: TdxDBEdit
      Left = 97
      Top = 3
      Width = 151
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'USER_NAME'
      DataSource = UserManagerFrm.dsUser
    end
    object dxDBEdit2: TdxDBEdit
      Left = 97
      Top = 28
      Width = 151
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'FULL_NAME'
      DataSource = UserManagerFrm.dsUser
    end
    object dxDBEdit3: TdxDBEdit
      Left = 97
      Top = 53
      Width = 151
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      DataField = 'LAST_ACCESS'
      DataSource = UserManagerFrm.dsUser
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit5: TdxDBEdit
      Left = 365
      Top = 53
      Width = 176
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 9
      DataField = 'ACCESSCOUNT'
      DataSource = UserManagerFrm.dsUser
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBGrid6: TdxDBGrid
      Left = 5
      Top = 102
      Width = 527
      Height = 174
      Bands = <
        item
          Caption = 'Ng'#432#7901'i d'#249'ng kh'#244'ng thu'#7897'c nh'#243'm'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'GROUP_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alLeft
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      DataSource = dsUserGroup
      DefaultRowHeight = 19
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGridColumn6: TdxDBGridColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_ID'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object dxDBGridColumn7: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NAME'
        Caption_UTF7 = 'T+AOo-n nh+APM-m'
      end
      object dxDBGrid6Column3: TdxDBGridColumn
        Caption = 'M'#244' t'#7843', ghi ch'#250' v'#7873' nh'#243'm'
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NOTES'
        Caption_UTF7 = 'M+APQ t+HqM, ghi ch+APo v+HsE nh+APM-m'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 458
      Top = 302
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 7
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 379
      Top = 302
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7845'p nh'#7853'n'
      TabOrder = 6
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 265
      Top = 302
      Width = 100
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem nh'#7853't k'#253
      TabOrder = 5
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtPwd: TdxEdit
      Left = 365
      Top = 3
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      PasswordChar = '*'
    end
    object edtRePwd: TdxEdit
      Left = 365
      Top = 28
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      PasswordChar = '*'
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup3: TdxLayoutGroup
        ShowCaption = False
        ShowBorder = False
        object locFormGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#234'n '#273#259'ng nh'#7853'p '
            Control = dxDBEdit1
            ControlOptions.ShowBorder = False
          end
          object locFormItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'M'#7853't kh'#7849'u m'#7899'i (n'#7871'u c'#243') '
            Control = edtPwd
            ControlOptions.ShowBorder = False
          end
        end
        object locFormGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem2: TdxLayoutItem
            Caption = 'T'#234'n ng'#432#7901'i s'#7917' d'#7909'ng'
            Control = dxDBEdit2
            ControlOptions.ShowBorder = False
          end
          object locFormItem10: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'G'#245' l'#7841'i m'#7853't kh'#7849'u '
            Control = edtRePwd
            ControlOptions.ShowBorder = False
          end
        end
        object locFormGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'L'#7847'n cu'#7889'i truy c'#7853'p'
            Control = dxDBEdit3
            ControlOptions.ShowBorder = False
          end
          object locFormItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'S'#7889' l'#7847'n '#273#227' '#273#259'ng nh'#7853'p'
            Control = dxDBEdit5
            ControlOptions.ShowBorder = False
          end
        end
      end
      object locFormItem6: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'C'#225'c nh'#243'm m'#224' ng'#432#7901'i s'#7917' d'#7909'ng n'#224'y tr'#7921'c thu'#7897'c'
        CaptionOptions.Layout = clTop
        Offsets.Top = 2
        Control = dxDBGrid6
      end
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          Offsets.Right = 10
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = btnOK
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
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
        Caption = 'Th'#244'ng tin ng'#432#7901'i d'#249'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 320
    Top = 192
  end
  object qryUserGroup: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Ketoan\Acc50\DB\accounting.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_GROUP'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    EditSQL.Strings = (
      'UPDATE USER_GROUP SET'
      '   GROUP_ID = :GROUP_ID, /*PK*/'
      '   USER_NAME = :USER_NAME  /*PK*/'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   USER_NAME = :OLD_USER_NAME')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    InsertSQL.Strings = (
      'INSERT INTO USER_GROUP('
      '   GROUP_ID, /*PK*/'
      '   USER_NAME) /*PK*/'
      'VALUES ('
      '   :GROUP_ID,'
      '   :USER_NAME)')
    KeyLinks.Strings = (
      'USER_GROUP.USER_NAME'
      'USER_GROUP.GROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = UserManagerFrm.dsUser
    SQL.Strings = (
      'SELECT USER_NAME'
      '     , USER_GROUP.GROUP_ID'
      '     , GROUP_NAME'
      '     , GROUP_NOTES'
      ''
      'FROM USER_GROUP'
      'JOIN GROUP_LIST on (USER_GROUP.GROUP_ID=GROUP_LIST.GROUP_ID)'
      'where USER_NAME=:USER_NAME order by USER_GROUP.GROUP_ID')
    FieldOptions = []
    Left = 196
    Top = 156
    object qryUserGroupUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 15
    end
    object qryUserGroupGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 15
    end
    object qryUserGroupGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 126
    end
    object qryUserGroupGROUP_NOTES: TWideStringField
      FieldName = 'GROUP_NOTES'
      Size = 126
    end
  end
  object dsUserGroup: TDataSource
    DataSet = qryUserGroup
    Left = 196
    Top = 184
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 252
    Top = 56
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 4
      Offsets.ItemOffset = 3
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
end
