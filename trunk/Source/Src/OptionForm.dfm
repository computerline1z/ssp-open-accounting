object OptionFrm: TOptionFrm
  Left = 263
  Top = 164
  HelpContext = 9
  BorderStyle = bsDialog
  ClientHeight = 428
  ClientWidth = 549
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
  OnKeyDown = TntFormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 549
    Height = 428
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object BitBtn1: TElPopupButton
      Left = 392
      Top = 402
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ti'#7871'ng Vi'#7879't'
      DrawDefaultFrame = False
      Default = True
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7845'p nh'#7853'n'
      TabOrder = 3
      ParentShowHint = False
      ShowHint = False
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 473
      Top = 402
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Cancel'
      DrawDefaultFrame = False
      Cancel = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 4
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 1
      Top = 402
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 0
      OnClick = BitBtn3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object TntPageControl1: TElPageControl
      Left = 1
      Top = 1
      Width = 560
      Height = 716
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = TntTabSheet1
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 5
      object TntTabSheet1: TElTabSheet
        PageControl = TntPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'Tu'#7923' ch'#7885'n chung'
        object GroupBox2: TElGroupBox
          Left = 9
          Top = 3
          Width = 530
          Height = 181
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'Tu'#7923' ch'#7885'n'
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 0
          UseXPThemes = False
          object chkConfirmDelete: TdxCheckEdit
            Left = 16
            Top = 37
            Width = 512
            Color = clBtnFace
            ParentColor = False
            TabOrder = 0
            Caption = 
              'Hi'#7879'n l'#234'n h'#7897'p h'#7897'i tho'#7841'i, y'#234'u c'#7847'u b'#7841'n x'#225'c nh'#7853'n tr'#432#7899'c khi xo'#225' d'#7919' li' +
              #7879'u n'#224'o '#273#243' '
            State = cbsChecked
          end
          object chkAutoRemindInstock: TdxCheckEdit
            Left = 16
            Top = 58
            Width = 512
            Color = clBtnFace
            ParentColor = False
            TabOrder = 1
            Caption = 
              'Hi'#7879'n th'#244'ng b'#225'o nh'#7855'c nh'#7903' b'#7841'n khi b'#7841'n xu'#7845't l'#432#7907'ng h'#224'ng l'#7899'n h'#417'n l'#432#7907'n' +
              'g t'#7891'n kho'
            State = cbsChecked
          end
          object chkRemindBeforeSave: TdxCheckEdit
            Left = 16
            Top = 80
            Width = 512
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            Caption = 
              'Hi'#7879'n th'#244'ng b'#225'o nh'#7855'c nh'#7903' b'#7841'n tr'#432#7899'c khi l'#432'u l'#7841'i nh'#7919'ng thay '#273#7893'i khi' +
              ' s'#7917'a ch'#7913'ng t'#7915
            State = cbsChecked
          end
          object chkAutoUpdVATValue: TdxCheckEdit
            Left = 16
            Top = 103
            Width = 512
            Color = clBtnFace
            ParentColor = False
            TabOrder = 3
            Caption = 
              'T'#7921' '#273#7897'ng c'#7853'p nh'#7853't b'#250't to'#225'n thu'#7871' GTGT theo s'#7889' ti'#7873'n thu'#7871' trong c'#225'c ' +
              'h'#243'a '#273#417'n t'#224'i ch'#237'nh'
            State = cbsChecked
          end
          object chkNotShowMsgBox: TdxCheckEdit
            Left = 16
            Top = 126
            Width = 512
            Color = clBtnFace
            ParentColor = False
            TabOrder = 4
            Caption = 
              'Kh'#244'ng hi'#7879'n l'#234'n h'#7897'p tho'#7841'i ch'#7881' c'#243' 1 l'#7921'a ch'#7885'n, m'#224' hi'#7879'n l'#234'n l'#7901'i nh'#7855'c' +
              ' tr'#234'n ti'#234'u '#273#7873' m'#224'n h'#236'nh ch'#237'nh'
            State = cbsChecked
          end
          object chkSDGIAMUAGANNHAT: TdxCheckEdit
            Left = 16
            Top = 149
            Width = 512
            Color = clBtnFace
            ParentColor = False
            TabOrder = 5
            Caption = 'T'#7921' '#273#7897'ng l'#7845'y gi'#225' nh'#7853'p h'#224'ng h'#243'a m'#7899'i nh'#7845't khi h'#7841'ch to'#225'n nh'#7853'p kho'
            State = cbsChecked
          end
        end
        object GroupBox4: TElGroupBox
          Left = 9
          Top = 185
          Width = 530
          Height = 61
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = ' D'#7841'ng phi'#7871'u m'#7851'u in ra '
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 1
          UseXPThemes = False
          object rbIndangNC: TElRadioButton
            Left = 16
            Top = 18
            Width = 231
            Height = 17
            Cursor = crDefault
            AutoSize = False
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'C'#225'c t'#224'i kho'#7843'n n'#7907', C'#225'c t'#224'i kho'#7843'n c'#243' '
            TabOrder = 0
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbIndangDK: TElRadioButton
            Left = 257
            Top = 18
            Width = 267
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'D'#7841'ng c'#225'c d'#242'ng '#273#7883'nh kho'#7843'n N'#7907', C'#243' , S'#7889' ti'#7873'n'
            TabOrder = 1
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object chkInCoMaSoChitiet: TdxCheckEdit
            Left = 112
            Top = 37
            Width = 361
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            Caption = 'In t'#224'i kho'#7843'n v'#7899'i m'#227' s'#7889' chi ti'#7871't '#273#7889'i t'#432#7907'ng ph'#225't sinh'
          end
        end
        object ElGroupBox1: TElGroupBox
          Left = 9
          Top = 247
          Width = 529
          Height = 99
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'C'#225'c tu'#7923' ch'#7885'n kh'#225'c'
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 2
          UseXPThemes = False
          object ElLabel16: TElLabel
            Left = 9
            Top = 63
            Width = 462
            Height = 13
            AutoSize = False
            Caption = 
              'T'#7921' '#273#7897'ng hi'#7875'n th'#7883' c'#244'ng n'#7907' (ph'#7843'i thu, ph'#7843'i tr'#7843') '#273#227' qu'#225' h'#7841'n thanh t' +
              'o'#225'n n'#7871'u v'#432#7907't qu'#225' s'#7889' ng'#224'y :'
          end
          object ElLabel17: TElLabel
            Left = 9
            Top = 45
            Width = 462
            Height = 13
            AutoSize = False
            Caption = 
              'D'#7919' li'#7879'u trong th'#225'ng '#273#7885'c l'#234'n m'#224'n h'#236'nh ch'#237'nh c'#225'ch (tr'#432#7899'c/sau) ng'#224'y' +
              ' l'#224'm vi'#7879'c bao nhi'#234'u ng'#224'y ?'
          end
          object ElLabel12: TElLabel
            Left = 3
            Top = 78
            Width = 469
            Height = 13
            AutoSize = False
            Caption = 
              'N'#7871'u mu'#7889'n xem c'#244'ng n'#7907' ph'#7843'i thanh to'#225'n tr'#432#7899'c ng'#224'y hi'#7879'n t'#7841'i m'#7845'y ng'#224 +
              'y th'#236' g'#245' v'#224'o '#273#226'y v'#7899'i s'#7889' '#226'm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object ElLabel11: TElLabel
            Left = 9
            Top = 21
            Width = 462
            Height = 13
            AutoSize = False
            Caption = 
              'T'#7921' '#273#7897'ng gi'#7919' li'#234'n l'#7841'c '#273#7875' ch'#7841'y l'#7841'i ch'#432#417'ng tr'#236'nh sau khi '#273#7913't k'#7871't n'#7889 +
              'i theo '#273#7883'nh k'#7923' ? (t'#237'nh b'#7857'ng gi'#226'y)'
          end
          object spnKhoangcach: TdxSpinEdit
            Left = 463
            Top = 40
            Width = 59
            TabOrder = 1
            Alignment = taRightJustify
            MaxValue = 31.000000000000000000
            Value = 31.000000000000000000
            StoredValues = 49
          end
          object spnTuoino: TdxSpinEdit
            Left = 463
            Top = 65
            Width = 59
            TabOrder = 2
            Alignment = taRightJustify
            MaxValue = 500.000000000000000000
            MinValue = -500.000000000000000000
            Value = -500.000000000000000000
            StoredValues = 49
          end
          object spnReConnectTime: TdxSpinEdit
            Left = 463
            Top = 16
            Width = 59
            TabOrder = 0
            Alignment = taRightJustify
            MaxValue = 32000.000000000000000000
            Value = 31.000000000000000000
            StoredValues = 49
          end
        end
        object chkAutoGenDocNo: TdxCheckEdit
          Left = 27
          Top = 19
          Width = 417
          Color = clBtnFace
          ParentColor = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Caption = 'T'#7921' '#273#7897'ng ph'#225't sinh s'#7889' phi'#7871'u (Theo '#273#259'ng k'#253' c'#7911'a ng'#432#7901'i d'#249'ng)'
          State = cbsChecked
        end
      end
      object TntTabSheet2: TElTabSheet
        PageControl = TntPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = #272#7883'nh d'#7841'ng'
        Visible = False
        object GroupBox3: TElGroupBox
          Left = 8
          Top = 8
          Width = 243
          Height = 150
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = #272#7883'nh d'#7841'ng d'#7919' li'#7879'u'
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 0
          UseXPThemes = False
          object Label3: TElLabel
            Left = 10
            Top = 44
            Width = 110
            Height = 13
            AutoSize = False
            Caption = 'D'#7919' li'#7879'u ti'#7873'n n'#7897'i t'#7879
          end
          object Label4: TElLabel
            Left = 10
            Top = 20
            Width = 110
            Height = 13
            AutoSize = False
            Caption = 'D'#7919' li'#7879'u s'#7889' l'#432#7907'ng '
          end
          object Label5: TElLabel
            Left = 10
            Top = 116
            Width = 110
            Height = 13
            AutoSize = False
            Caption = 'D'#7919' li'#7879'u ng'#224'y th'#225'ng '
          end
          object ElLabel14: TElLabel
            Left = 10
            Top = 92
            Width = 110
            Height = 13
            AutoSize = False
            Caption = 'C'#225'c h'#7879' s'#7889', th'#244'ng s'#7889
          end
          object ElLabel15: TElLabel
            Left = 10
            Top = 68
            Width = 110
            Height = 13
            AutoSize = False
            Caption = 'D'#7919' li'#7879'u ti'#7873'n ngo'#7841'i t'#7879
          end
          object edtTienteFormat: TdxEdit
            Left = 120
            Top = 40
            Width = 110
            Cursor = crIBeam
            TabOrder = 1
          end
          object edtSLFormat: TdxEdit
            Left = 120
            Top = 16
            Width = 110
            Cursor = crIBeam
            TabOrder = 0
          end
          object edtNgayThangFormat: TdxEdit
            Left = 120
            Top = 113
            Width = 110
            Cursor = crIBeam
            TabOrder = 4
          end
          object edtHesoFormat: TdxEdit
            Left = 120
            Top = 88
            Width = 110
            Cursor = crIBeam
            TabOrder = 3
          end
          object edtNgoaiteFormat: TdxEdit
            Left = 120
            Top = 64
            Width = 110
            Cursor = crIBeam
            TabOrder = 2
          end
        end
        object GroupBox5: TElGroupBox
          Left = 260
          Top = 8
          Width = 279
          Height = 150
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'Tu'#7923' ch'#7885'n '
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 1
          UseXPThemes = False
          object Label8: TElLabel
            Left = 10
            Top = 20
            Width = 183
            Height = 13
            Caption = 'S'#7889' d'#242'ng trang '#273#7847'u c'#7911'a nh'#7853't k'#253' chung '
          end
          object Label9: TElLabel
            Left = 10
            Top = 44
            Width = 139
            Height = 13
            Caption = 'S'#7889' d'#242'ng trong c'#225'c trang sau '
          end
          object Label7: TElLabel
            Left = 10
            Top = 68
            Width = 184
            Height = 13
            Caption = 'C'#7905' ch'#7919' '#273#432#7907'c d'#249'ng trong ch'#432#417'ng tr'#236'nh '
          end
          object Label10: TElLabel
            Left = 10
            Top = 92
            Width = 190
            Height = 13
            AutoSize = False
            Caption = 'S'#7889' S'#234'ri d'#249'ng m'#7863'c '#273#7883'nh trong ho'#225' '#273#417'n '
          end
          object ElLabel13: TElLabel
            Left = 10
            Top = 116
            Width = 190
            Height = 13
            AutoSize = False
            Caption = 'M'#7851'u h'#243'a '#273#417'n '#273#432#7907'c d'#249'ng m'#7863'c '#273#7883'nh'
          end
          object spnRowCountFirstPage: TdxSpinEdit
            Left = 200
            Top = 16
            Width = 70
            Cursor = crIBeam
            TabOrder = 0
            MaxValue = 100.000000000000000000
            MinValue = 5.000000000000000000
            Value = 5.000000000000000000
            StoredValues = 48
          end
          object spnRowCountOtherPage: TdxSpinEdit
            Left = 200
            Top = 40
            Width = 70
            Cursor = crIBeam
            TabOrder = 1
            MaxValue = 100.000000000000000000
            MinValue = 5.000000000000000000
            Value = 5.000000000000000000
            StoredValues = 48
          end
          object spnFontSize: TdxSpinEdit
            Left = 200
            Top = 64
            Width = 70
            Cursor = crIBeam
            TabOrder = 2
            MaxValue = 20.000000000000000000
            MinValue = 8.000000000000000000
            Value = 8.000000000000000000
            StoredValues = 48
          end
          object edtSeriNo: TdxEdit
            Left = 200
            Top = 88
            Width = 70
            Cursor = crIBeam
            TabOrder = 3
          end
          object edtMauHDGTGT: TdxEdit
            Left = 200
            Top = 112
            Width = 70
            Cursor = crIBeam
            TabOrder = 4
          end
        end
        object GroupBox1: TElGroupBox
          Left = 8
          Top = 172
          Width = 531
          Height = 172
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'Lo'#7841'i t'#236'm ki'#7871'm '
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 2
          UseXPThemes = False
          object rbSearchNormal: TElRadioButton
            Left = 20
            Top = 22
            Width = 200
            Height = 17
            Cursor = crDefault
            AutoSize = False
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'T'#236'm ki'#7871'm b'#236'nh th'#432#7901'ng'
            TabOrder = 0
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbSearchScript: TElRadioButton
            Left = 156
            Top = 22
            Width = 285
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'T'#236'm ki'#7871'm cao c'#7845'p (B'#7857'ng ng'#244'n ng'#7919' SQL)'
            TabOrder = 1
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object Panel1: TPanel
            Left = 100
            Top = 41
            Width = 423
            Height = 79
            BevelOuter = bvNone
            TabOrder = 2
            object ElLabel9: TElLabel
              Left = 5
              Top = 62
              Width = 200
              Height = 17
              AutoSize = False
              Caption = 'SUBINFO : Th'#244'ng tin ph'#7909' th'#7913' 1'
            end
            object ElLabel8: TElLabel
              Left = 188
              Top = 47
              Width = 281
              Height = 17
              AutoSize = False
              Caption = 'TKCO          :  S'#7889' hi'#7879'u t'#224'i kho'#7843'n c'#243
            end
            object ElLabel7: TElLabel
              Left = 188
              Top = 32
              Width = 281
              Height = 17
              AutoSize = False
              Caption = 'TKNO          :  S'#7889' hi'#7879'u t'#224'i kho'#7843'n n'#7907
            end
            object ElLabel6: TElLabel
              Left = 188
              Top = 17
              Width = 281
              Height = 17
              AutoSize = False
              Caption = 'TONGTIEN  :  T'#7893'ng ti'#7873'n c'#7911'a phi'#7871'u'
            end
            object ElLabel5: TElLabel
              Left = 188
              Top = 2
              Width = 281
              Height = 17
              AutoSize = False
              Caption = 'NOIDUNG   :   N'#7897'i dung ghi ch'#250' c'#7911'a phi'#7871'u '
            end
            object ElLabel4: TElLabel
              Left = 5
              Top = 47
              Width = 200
              Height = 17
              AutoSize = False
              Caption = 'TENDT     : T'#234'n '#273#7889'i t'#432#7907'ng'
            end
            object ElLabel3: TElLabel
              Left = 5
              Top = 32
              Width = 200
              Height = 17
              AutoSize = False
              Caption = 'MADT       : M'#227' s'#7889' '#273#7889'i t'#432#7907'ng'
            end
            object ElLabel2: TElLabel
              Left = 5
              Top = 17
              Width = 200
              Height = 17
              AutoSize = False
              Caption = 'NGAYLAP : Ng'#224'y l'#7853'p'
            end
            object ElLabel10: TElLabel
              Left = 188
              Top = 62
              Width = 281
              Height = 17
              AutoSize = False
              Caption = 'SOTIEN       :  S'#7889' ti'#7873'n ph'#225't sinh c'#7863'p N'#7907'/ C'#243' tr'#234'n'
            end
            object ElLabel1: TElLabel
              Left = 5
              Top = 2
              Width = 200
              Height = 17
              AutoSize = False
              Caption = 'SOPHIEU : S'#7889' phi'#7871'u '
            end
          end
        end
        object TntGroupBox2: TElGroupBox
          Left = 10
          Top = 307
          Width = 527
          Height = 26
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'Trao '#273#7893'i th'#244'ng tin'
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 3
          UseXPThemes = False
          Visible = False
          object TntLabel1: TElLabel
            Left = 17
            Top = 23
            Width = 235
            Height = 13
            Caption = 'B'#7887' '#273#225'nh d'#7845'u '#273#7853'm c'#7911'a tin m'#7899'i nh'#7853'n sau th'#7901'i gian :'
          end
          object TntLabel2: TElLabel
            Left = 17
            Top = 55
            Width = 245
            Height = 13
            Caption = 'T'#7921' '#273#7897'ng ki'#7875'm tra tin g'#7917'i '#273#7871'n theo chu k'#7923' th'#7901'i gian :'
          end
          object TntLabel3: TElLabel
            Left = 457
            Top = 23
            Width = 37
            Height = 13
            Caption = 'mili gi'#226'y'
          end
          object TntLabel4: TElLabel
            Left = 457
            Top = 55
            Width = 22
            Height = 13
            Caption = 'ph'#250't'
          end
          object spnDelayMsg: TdxSpinEdit
            Left = 371
            Top = 19
            Width = 81
            Cursor = crIBeam
            TabOrder = 0
            Alignment = taRightJustify
            MaxValue = 1000000.000000000000000000
            MinValue = 100.000000000000000000
            Value = 100.000000000000000000
            StoredValues = 49
          end
          object ChkCheckMsgOnLoad: TdxCheckEdit
            Left = 13
            Top = 79
            Width = 503
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            Alignment = taLeftJustify
            Caption = 'T'#7921' '#273#7897'ng ki'#7875'm tra xem c'#243' tin m'#7899'i hay kh'#244'ng khi ch'#7841'y ch'#432#417'ng tr'#236'nh'
            StoredValues = 1
          end
          object spnChuKyChkMsg: TdxSpinEdit
            Left = 371
            Top = 51
            Width = 81
            Cursor = crIBeam
            TabOrder = 1
            Alignment = taRightJustify
            MaxValue = 1000.000000000000000000
            MinValue = 5.000000000000000000
            Value = 5.000000000000000000
            StoredValues = 49
          end
        end
      end
    end
    object btnBanDau: TElPopupButton
      Left = 82
      Top = 402
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ti'#7871'ng Vi'#7879't'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&M'#7863'c '#273#7883'nh'
      TabOrder = 1
      ParentShowHint = False
      ShowHint = False
      OnClick = btnBanDauClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnSetDefault: TElPopupButton
      Left = 163
      Top = 402
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Ti'#7871'ng Vi'#7879't'
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#7853'p m'#7863'c '#273#7883'nh'
      TabOrder = 2
      ParentShowHint = False
      ShowHint = False
      OnClick = btnSetDefaultClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'GroupPage'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'TntPageControl1'
          ShowCaption = False
          Control = TntPageControl1
          ControlOptions.AutoColor = True
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
        object dxLayoutControl1Item17: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'BitBtn3'
          ShowCaption = False
          Control = BitBtn3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          ShowCaption = False
          Control = btnBanDau
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          ShowCaption = False
          Control = btnSetDefault
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn1'
          ShowCaption = False
          Control = BitBtn1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'BitBtn2'
          ShowCaption = False
          Control = BitBtn2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 404
    Top = 65532
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 4
      Offsets.ControlOffsetVert = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
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
        Caption = 'Tu'#7923' ch'#7885'n c'#225' nh'#226'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 65528
  end
end
