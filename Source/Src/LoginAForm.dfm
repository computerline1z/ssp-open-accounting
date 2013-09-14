object LoginAFrm: TLoginAFrm
  Left = 246
  Top = 227
  BorderIcons = []
  BorderStyle = bsSingle
  BorderWidth = 1
  ClientHeight = 169
  ClientWidth = 382
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
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 382
    Height = 169
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object edt_User: TdxEdit
      Left = 87
      Top = 95
      Width = 98
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 6
      MaxLength = 50
      OnChange = edt_UserChange
      StoredValues = 2
    end
    object edt_Pwd: TdxEdit
      Left = 243
      Top = 95
      Width = 248
      Cursor = crIBeam
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      MaxLength = 50
      PasswordChar = '*'
      StoredValues = 2
    end
    object Btn_OK: TElPopupButton
      Left = 210
      Top = 132
      Width = 82
      Height = 27
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#259'ng &nh'#7853'p'
      TabOrder = 8
      OnClick = Btn_OKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object Btn_Cancel: TElPopupButton
      Left = 298
      Top = 132
      Width = 74
      Height = 27
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Tho'#225't'
      TabOrder = 9
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDateEdit1: TdxDateEdit
      Left = 87
      Top = 68
      Width = 98
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Alignment = taCenter
      Date = -700000.000000000000000000
      DateButtons = [btnToday]
      DateOnError = deToday
      UseEditMask = True
      StoredValues = 5
    end
    object chkDownLoad: TdxCheckEdit
      Left = 191
      Top = 68
      Width = 186
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Caption = 'Ch'#233'p v'#7873' m'#225'y tr'#7841'm '#273#7875' thao t'#225'c'
    end
    object edtUserName: TdxDBExtLookupEdit
      Left = 87
      Top = 38
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'USER_NAME'
      DataSource = dsUser
      OnChange = edtUserNameChange
      PopupFormBorderStyle = pbsSimple
      DBGridLayout = dxDBGridLayoutList1Item1
      PickListField = 'USER_NAME'
    end
    object btnChgPass: TElPopupButton
      Left = 297
      Top = 37
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7893'i &m'#7853't kh'#7849'u'
      TabOrder = 3
      OnClick = btnChgPassClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbSinhvien: TElRadioButton
      Left = 10
      Top = 39
      Width = 71
      Height = 17
      Cursor = crDefault
      AutoSize = False
      Checked = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'Sinh vi'#234'n'
      TabOrder = 1
      OnClick = rbSinhvienClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object rbBlank: TElRadioButton
      Left = 10
      Top = 10
      Width = 71
      Height = 17
      Cursor = crDefault
      AutoSize = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      Caption = 'L'#7899'p h'#7885'c'
      TabOrder = 0
      OnClick = rbBlankClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtGrp: TdxDBExtLookupEdit
      Left = 87
      Top = 10
      Width = 218
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      DataField = 'GROUP_NAME'
      DataSource = dsGrp
      PopupFormBorderStyle = pbsSimple
      DBGridLayout = dxDBGridLayoutList1Item2
      PickListField = 'GROUP_NAME'
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
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'ElRadioButton2'
            ShowCaption = False
            Control = rbBlank
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = edtGrp
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'ElRadioButton1'
            Offsets.Top = 2
            ShowCaption = False
            Control = rbSinhvien
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Offsets.Top = 1
            Control = edtUserName
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Caption = #272#7893'i m'#7853't kh'#7849'u'
            ShowCaption = False
            Control = btnChgPass
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item9: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ng'#224'y l'#224'm vi'#7879'c'
          Control = dxDateEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Ch'#233'p v'#7873' m'#225'y tr'#7841'm '#273#7875' thao t'#225'c'
          ShowCaption = False
          Control = chkDownLoad
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group6: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
          Control = edt_User
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'M'#7853't kh'#7849'u '
          Control = edt_Pwd
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'Btn_OK'
          Offsets.Top = 5
          ShowCaption = False
          Control = Btn_OK
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'Btn_Cancel'
          Offsets.Top = 5
          ShowCaption = False
          Control = Btn_Cancel
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
        Caption = 'SSP Accounting - '#272#259'ng nh'#7853'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 280
    Top = 96
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'VK Sans Serif'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 256
    Top = 96
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cnSys: TIB_Connection
    PasswordStorage = psKeyFromUserReg
    SQLDialect = 3
    Params.Strings = (
      'PATH=D:\Projects\MayHai\Db\DBLIST.GDB'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3'
      'CHARACTER SET=UNICODE_FSS')
    Left = 4
    Top = 84
    SavedPassword = '.JuMbLe.01.11003876AA273AA6F3'
  end
  object tsSys: TIB_Transaction
    IB_Connection = cnSys
    ServerAutoCommit = True
    Isolation = tiCommitted
    Left = 4
    Top = 116
  end
  object qryUser: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\Db\DBLIST.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM USER_LIST'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   USER_ID = :OLD_USER_ID')
    EditSQL.Strings = (
      'UPDATE USER_LIST SET'
      '   GROUP_ID = :GROUP_ID, /*PK*/'
      '   USER_ID = :USER_ID, /*PK*/'
      '   USER_NAME = :USER_NAME,'
      '   USER_PASS = :USER_PASS'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID AND'
      '   USER_ID = :OLD_USER_ID')
    IB_Connection = cnSys
    IB_Transaction = tsSys
    InsertSQL.Strings = (
      'INSERT INTO USER_LIST('
      '   GROUP_ID, /*PK*/'
      '   USER_ID, /*PK*/'
      '   USER_NAME,'
      '   USER_PASS)'
      'VALUES ('
      '   :GROUP_ID,'
      '   :USER_ID,'
      '   :USER_NAME,'
      '   :USER_PASS)')
    KeyLinks.Strings = (
      'USER_ID'
      'USER_LIST.GROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT USER_ID'
      '     , USER_LIST.GROUP_ID'
      '     , USER_NAME'
      '     , USER_ID||USER_LIST.GROUP_ID KF'
      '     , USER_PASS'
      '     , DBNAME'
      'FROM USER_LIST'
      'JOIN GROUP_LIST on (USER_LIST.GROUP_ID= GROUP_LIST.GROUP_ID)'
      'where IS_ACTIVE<>1'
      'order by USER_LIST.GROUP_ID,USER_ID')
    FieldOptions = []
    Left = 76
    Top = 86
    object qryUserUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Required = True
      Size = 30
    end
    object qryUserGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 30
    end
    object qryUserUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Size = 126
    end
    object qryUserKF: TWideStringField
      FieldName = 'KF'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qryUserUSER_PASS: TWideStringField
      FieldName = 'USER_PASS'
      Size = 30
    end
    object qryUserDBNAME: TWideStringField
      FieldName = 'DBNAME'
      Size = 126
    end
  end
  object dsUser: TDataSource
    DataSet = qryUser
    Left = 76
    Top = 120
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 128
    Top = 120
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        5C050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C6406024B460D53756D6D6172794772
        6F7570730E001053756D6D617279536570617261746F7206022C200C466F6E74
        2E43686172736574070C414E53495F434841525345540A466F6E742E436F6C6F
        72070C636C57696E646F77546578740B466F6E742E48656967687402F509466F
        6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B000A506172
        656E74466F6E74081042616E64466F6E742E43686172736574070F4445464155
        4C545F434841525345540E42616E64466F6E742E436F6C6F72070C636C57696E
        646F77546578740F42616E64466F6E742E48656967687402F50D42616E64466F
        6E742E4E616D6506065461686F6D610E42616E64466F6E742E5374796C650B00
        0A44617461536F7572636507104C6F67696E4146726D2E647355736572104465
        6661756C74526F7748656967687402140F46696C7465722E4372697465726961
        0A040000000000000012486561646572466F6E742E43686172736574070C414E
        53495F4348415253455410486561646572466F6E742E436F6C6F72070C636C57
        696E646F775465787411486561646572466F6E742E48656967687402F50F4865
        61646572466F6E742E4E616D6506065461686F6D6110486561646572466F6E74
        2E5374796C650B00094F7074696F6E7344420B106564676F43616E63656C4F6E
        457869740D6564676F43616E44656C6574650D6564676F43616E496E73657274
        116564676F43616E4E617669676174696F6E116564676F436F6E6669726D4465
        6C657465126564676F4C6F6164416C6C5265636F726473106564676F55736542
        6F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F4175746F57
        69647468136564676F42616E6448656164657257696474680D6564676F557365
        4269746D6170001350726576696577466F6E742E43686172736574070F444546
        41554C545F434841525345541150726576696577466F6E742E436F6C6F720706
        636C426C75651250726576696577466F6E742E48656967687402F51050726576
        696577466F6E742E4E616D65060D4D532053616E732053657269661150726576
        696577466F6E742E5374796C650B00000F546478444247726964436F6C756D6E
        07555345525F49440743617074696F6E14080000004DC3A32073E1BB910F4865
        61646572416C69676E6D656E740708746143656E746572055769647468024509
        42616E64496E646578020008526F77496E6465780200094669656C644E616D65
        0607555345525F49440C43617074696F6E5F55544637060B4D2B414F4D20732B
        48744500000F546478444247726964436F6C756D6E0847524F55505F49440743
        617074696F6E14050000004CE1BB9B700F486561646572416C69676E6D656E74
        0708746143656E74657206536F727465640704637355700756697369626C6508
        05576964746802540942616E64496E646578020008526F77496E646578020009
        4669656C644E616D65060847524F55505F49440A47726F7570496E6465780200
        0C43617074696F6E5F5554463706074C2B4874732D7000000F54647844424772
        6964436F6C756D6E09555345525F4E414D450743617074696F6E140D00000048
        E1BB8D2076C3A02074C3AA6E0F486561646572416C69676E6D656E7407087461
        43656E74657205576964746803E5000942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D650609555345525F4E414D450C43617074
        696F6E5F555446370613482B48733020762B414F4120742B414F6F2D6E000000}
    end
    object dxDBGridLayoutList1Item2: TdxDBGridLayout
      Data = {
        5A050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060847524F55505F49440D53756D
        6D61727947726F7570730E001053756D6D617279536570617261746F7206022C
        200C466F6E742E43686172736574070C414E53495F434841525345540A466F6E
        742E436F6C6F72070C636C57696E646F77546578740B466F6E742E4865696768
        7402F509466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C65
        0B000A506172656E74466F6E74081042616E64466F6E742E4368617273657407
        0C414E53495F434841525345540E42616E64466F6E742E436F6C6F72070C636C
        57696E646F77546578740F42616E64466F6E742E48656967687402F50D42616E
        64466F6E742E4E616D6506065461686F6D610E42616E64466F6E742E5374796C
        650B000A44617461536F75726365070F4C6F67696E4146726D2E647347727010
        44656661756C74526F7748656967687402140F46696C7465722E437269746572
        69610A040000000000000012486561646572466F6E742E43686172736574070C
        414E53495F4348415253455410486561646572466F6E742E436F6C6F72070C63
        6C57696E646F775465787411486561646572466F6E742E48656967687402F50F
        486561646572466F6E742E4E616D6506065461686F6D6110486561646572466F
        6E742E5374796C650B00094F7074696F6E7344420B106564676F43616E63656C
        4F6E457869740D6564676F43616E44656C6574650D6564676F43616E496E7365
        7274116564676F43616E4E617669676174696F6E116564676F436F6E6669726D
        44656C657465126564676F4C6F6164416C6C5265636F726473106564676F5573
        65426F6F6B6D61726B73000B4F7074696F6E73566965770B0D6564676F417574
        6F5769647468136564676F42616E6448656164657257696474680D6564676F55
        73654269746D6170001350726576696577466F6E742E43686172736574070C41
        4E53495F434841525345541150726576696577466F6E742E436F6C6F72070663
        6C426C75651250726576696577466F6E742E48656967687402F5105072657669
        6577466F6E742E4E616D6506065461686F6D611150726576696577466F6E742E
        5374796C650B0000135464784442477269644D61736B436F6C756D6E0847524F
        55505F49440743617074696F6E140E0000004DC3A32073E1BB91206CE1BB9B70
        0F486561646572416C69676E6D656E740708746143656E746572055769647468
        02540942616E64496E646578020008526F77496E6465780200094669656C644E
        616D65060847524F55505F49440C43617074696F6E5F5554463706134D2B414F
        4D20732B487445206C2B4874732D700000135464784442477269644D61736B43
        6F6C756D6E0A47524F55505F4E414D450743617074696F6E140A00000054C3AA
        6E206CE1BB9B700F486561646572416C69676E6D656E740708746143656E7465
        7205576964746803C6000942616E64496E646578020008526F77496E64657802
        00094669656C644E616D65060A47524F55505F4E414D450C43617074696F6E5F
        55544637060F542B414F6F2D6E206C2B4874732D700000135464784442477269
        644D61736B436F6C756D6E0644424E414D450743617074696F6E140F00000054
        E1BAAD702074696E206DE1BAAB750F486561646572416C69676E6D656E740708
        746143656E74657205576964746802640942616E64496E646578020008526F77
        496E6465780200094669656C644E616D65060644424E414D450C43617074696F
        6E5F555446370613542B4871302D702074696E206D2B4871732D75000000}
    end
  end
  object qrySys: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\Db\DBLIST.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYSTEM_INFO'
      'WHERE'
      '   SYSTEM_ID = :OLD_SYSTEM_ID')
    EditSQL.Strings = (
      'UPDATE SYSTEM_INFO SET'
      '   SYSTEM_ID = :SYSTEM_ID, /*PK*/'
      '   SYSTEM_PASS = :SYSTEM_PASS'
      'WHERE'
      '   SYSTEM_ID = :OLD_SYSTEM_ID')
    IB_Connection = cnSys
    IB_Transaction = tsSys
    InsertSQL.Strings = (
      'INSERT INTO SYSTEM_INFO('
      '   SYSTEM_ID, /*PK*/'
      '   SYSTEM_PASS)'
      'VALUES ('
      '   :SYSTEM_ID,'
      '   :SYSTEM_PASS)')
    KeyLinks.Strings = (
      'SYSTEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SYSTEM_ID'
      '     , SYSTEM_PASS'
      'FROM SYSTEM_INFO')
    FieldOptions = []
    Left = 44
    Top = 102
    object qrySysSYSTEM_ID: TSmallintField
      FieldName = 'SYSTEM_ID'
      Required = True
    end
    object qrySysSYSTEM_PASS: TWideStringField
      FieldName = 'SYSTEM_PASS'
      Size = 30
    end
  end
  object ZipForge1: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clFastest
    CompressionMode = 1
    CurrentVersion = '2.55 '
    SpanningMode = smNone
    SpanningOptions.AdvancedNaming = True
    SpanningOptions.VolumeSize = vsAutoDetect
    Options.FlushBuffers = True
    Options.OEMFileNames = True
    InMemory = False
    Zip64Mode = zmDisabled
    Left = 344
    Top = 48
  end
  object qryGrp: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Projects\MayHai\Db\DBLIST.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM GROUP_LIST'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID')
    EditSQL.Strings = (
      'UPDATE GROUP_LIST SET'
      '   GROUP_ID = :GROUP_ID, /*PK*/'
      '   GROUP_NAME = :GROUP_NAME,'
      '   IS_ACTIVE = :IS_ACTIVE,'
      '   DBNAME = :DBNAME'
      'WHERE'
      '   GROUP_ID = :OLD_GROUP_ID')
    IB_Connection = cnSys
    IB_Transaction = tsSys
    InsertSQL.Strings = (
      'INSERT INTO GROUP_LIST('
      '   GROUP_ID, /*PK*/'
      '   GROUP_NAME,'
      '   IS_ACTIVE,'
      '   DBNAME)'
      'VALUES ('
      '   :GROUP_ID,'
      '   :GROUP_NAME,'
      '   :IS_ACTIVE,'
      '   :DBNAME)')
    KeyLinks.Strings = (
      'GROUP_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT GROUP_ID'
      '     , GROUP_NAME'
      '     , IS_ACTIVE'
      '     , DBNAME'
      'FROM GROUP_LIST'
      'where IS_ACTIVE<>1'
      'order by GROUP_ID')
    FieldOptions = []
    Left = 180
    Top = 150
    object qryGrpGROUP_ID: TWideStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 30
    end
    object qryGrpGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Size = 126
    end
    object qryGrpIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
    end
    object qryGrpDBNAME: TWideStringField
      FieldName = 'DBNAME'
      Size = 126
    end
  end
  object dsGrp: TDataSource
    DataSet = qryGrp
    Left = 172
    Top = 152
  end
end
