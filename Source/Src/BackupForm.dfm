object BackupFrm: TBackupFrm
  Left = 349
  Top = 128
  HelpContext = 8
  BorderStyle = bsDialog
  ClientHeight = 133
  ClientWidth = 313
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
    Left = 0
    Top = 0
    Width = 313
    Height = 133
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object btnCancel: TElPopupButton
      Left = 228
      Top = 98
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
      TabOrder = 4
      OnClick = btnCancelClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnOK: TElPopupButton
      Left = 147
      Top = 98
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#7921'c hi'#7879'n'
      TabOrder = 3
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDateEdit1: TdxDateEdit
      Left = 67
      Top = 10
      Width = 108
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
    object dxDateEdit2: TdxDateEdit
      Left = 214
      Top = 10
      Width = 107
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
    object dxButtonEdit1: TdxButtonEdit
      Left = 67
      Top = 37
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxButtonEdit1ButtonClick
      ExistButtons = True
    end
    object ProgressBar1: TProgressBar
      Left = 10
      Top = 64
      Width = 150
      Height = 17
      Max = 1000000
      TabOrder = 8
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'T'#7915' ng'#224'y'
          Control = dxDateEdit1
          ControlOptions.ShowBorder = False
        end
        object locFormItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = #272#7871'n ng'#224'y'
          Control = dxDateEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object locFormItem1: TdxLayoutItem
        Caption = 'V'#224'o t'#7853'p tin'
        Control = dxButtonEdit1
        ControlOptions.ShowBorder = False
      end
      object locProgress: TdxLayoutItem
        Control = ProgressBar1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Offsets.Top = 10
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = btnOK
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = btnCancel
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
        Caption = 'Sao l'#432'u d'#7919' li'#7879'u d'#7921' ph'#242'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 120
    Top = 88
  end
  object SaveDlg: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Files|*.sql'
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 21
    Top = 88
  end
  object qryTableList: TIBOQuery
    Params = <>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'TABLE_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TABLE_ID'
      '     , TABLE_NAME'
      '     , ALIAS_NAME'
      '     , SQL_WHERE'
      'FROM BACKUP_INFO'
      'Order by TABLE_ID')
    FieldOptions = []
    Left = 68
    Top = 84
    object qryTableListTABLE_ID: TSmallintField
      FieldName = 'TABLE_ID'
      Required = True
    end
    object qryTableListTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Size = 30
    end
    object qryTableListALIAS_NAME: TWideStringField
      FieldName = 'ALIAS_NAME'
      Size = 63
    end
    object qryTableListSQL_WHERE: TWideStringField
      FieldName = 'SQL_WHERE'
      Size = 126
    end
  end
  object qryFieldList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TABLE_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\My Project\Accounting\Acc Advanced 5.0\db\accounting.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = MainDM.cnMain
    IB_Transaction = MainDM.tsMain
    KeyLinks.Strings = (
      'TENFIELD')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsTableList
    SQL.Strings = (
      
        'select rdb$field_name TENFIELD from rdb$relation_fields where rd' +
        'b$system_flag=0'
      'and rdb$relation_name=:TABLE_NAME'
      'order by rdb$field_name')
    FieldOptions = []
    Left = 108
    Top = 84
    object qryFieldListTENFIELD: TWideStringField
      FieldName = 'TENFIELD'
      Size = 31
    end
  end
  object dsTableList: TDataSource
    DataSet = qryTableList
    Left = 68
    Top = 113
  end
end
