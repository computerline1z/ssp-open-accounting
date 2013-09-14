object ParamsFrm: TParamsFrm
  Left = 170
  Top = 101
  HelpContext = 14
  BorderStyle = bsDialog
  ClientHeight = 497
  ClientWidth = 647
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
    Width = 647
    Height = 497
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object BitBtn1: TElPopupButton
      Left = 490
      Top = 471
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Post'
      DrawDefaultFrame = False
      Default = True
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7845'p nh'#7853'n'
      TabOrder = 3
      OnClick = BitBtn1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn2: TElPopupButton
      Left = 571
      Top = 471
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
      OnClick = BitBtn2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object BitBtn3: TElPopupButton
      Left = 1
      Top = 471
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
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsTabs
      TabIndex = 1
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = TntTabSheet2
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
        Caption = '  &Nghi'#7879'p v'#7909
        Visible = False
        object GroupBox1: TElGroupBox
          Left = 5
          Top = 120
          Width = 626
          Height = 89
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'Ph'#432#417'ng ph'#225'p ph'#226'n b'#7893' chi ph'#237' s'#7843'n xu'#7845't chung khi t'#237'nh gi'#225' th'#224'nh '
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 1
          UseXPThemes = False
          object LblTyleNC: TElLabel
            Left = 469
            Top = 59
            Width = 87
            Height = 13
            AutoSize = False
            Caption = '% Nh'#226'n c'#244'ng'
          end
          object LblTyleNVL: TElLabel
            Left = 318
            Top = 59
            Width = 87
            Height = 13
            AutoSize = False
            Caption = '% Nguy'#234'n li'#7879'u'
          end
          object rbNVL: TElRadioButton
            Left = 12
            Top = 27
            Width = 175
            Height = 17
            Cursor = crDefault
            AutoSize = False
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo chi ph'#237' nguy'#234'n v'#7853't li'#7879'u'
            TabOrder = 0
            OnClick = rbNVLClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbNC: TElRadioButton
            Left = 188
            Top = 27
            Width = 175
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo chi ph'#237' nh'#226'n c'#244'ng'
            TabOrder = 1
            OnClick = rbNCClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbNVLNC: TElRadioButton
            Left = 349
            Top = 27
            Width = 220
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'C'#7843' hai ( Nguy'#234'n v'#7853't li'#7879'u v'#224' nh'#226'n c'#244'ng )'
            TabOrder = 2
            OnClick = rbNVLNCClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbKhac: TElRadioButton
            Left = 188
            Top = 59
            Width = 89
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'T'#7927' l'#7879' kh'#225'c'
            TabOrder = 4
            OnClick = rbKhacClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object spnTyleNVL: TdxDBSpinEdit
            Left = 269
            Top = 56
            Width = 44
            Cursor = crIBeam
            Enabled = False
            TabOrder = 5
            DataField = 'TYLECPNVL'
            DataSource = MainDM.dsParams
            MaxValue = 100.000000000000000000
            StoredValues = 48
          end
          object spnTyleNC: TdxDBSpinEdit
            Left = 421
            Top = 56
            Width = 46
            Cursor = crIBeam
            Enabled = False
            TabOrder = 6
            DataField = 'TYLECPNC'
            DataSource = MainDM.dsParams
            MaxValue = 100.000000000000000000
            StoredValues = 48
          end
          object rbDinhmuc: TElRadioButton
            Left = 12
            Top = 59
            Width = 138
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'H'#7879' s'#7889' '#273#7883'nh m'#7913'c t'#7927' l'#7879
            TabOrder = 3
            OnClick = rbDinhmucClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
        end
        object GroupBox2: TElGroupBox
          Left = 5
          Top = 270
          Width = 626
          Height = 166
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'C'#225'c th'#244'ng s'#7889' kh'#225'c'
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 2
          UseXPThemes = False
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 10
            Top = 84
            Width = 292
            Color = clBtnFace
            ParentColor = False
            TabOrder = 4
            Caption = 'S'#7917' d'#7909'ng gi'#225' b'#225'n '#273#432#7907'c duy'#7879't'
            DataField = 'SDGIABAN'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit2: TdxDBCheckEdit
            Left = 304
            Top = 84
            Width = 280
            Color = clBtnFace
            ParentColor = False
            TabOrder = 5
            Caption = 'Cho ph'#233'p nh'#226'n vi'#234'n b'#225'n h'#224'ng s'#7917'a gi'#225' b'#225'n'
            DataField = 'CHOSUAGIABAN'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit4: TdxDBCheckEdit
            Left = 10
            Top = 144
            Width = 292
            Color = clBtnFace
            ParentColor = False
            TabOrder = 8
            Caption = 'S'#7917' d'#7909'ng gi'#225' k'#7871' ho'#7841'ch khi nh'#7853'p kho th'#224'nh ph'#7849'm'
            DataField = 'SDGIAKH'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit8: TdxDBCheckEdit
            Left = 304
            Top = 53
            Width = 280
            Color = clBtnFace
            ParentColor = False
            TabOrder = 3
            Caption = 'Cho ph'#233'p thay '#273#7893'i lo'#7841'i phi'#7871'u hay kh'#244'ng (k'#233'o th'#7843')'
            DataField = 'ALLOWCHANGETYPE'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit3: TdxDBCheckEdit
            Left = 304
            Top = 144
            Width = 280
            Color = clBtnFace
            ParentColor = False
            TabOrder = 9
            Caption = 'Cho ph'#233'p s'#7917'a '#273#7893'i '#273#417'n gi'#225' k'#7871' ho'#7841'ch khi nh'#7853'p'
            DataField = 'CHOSUAGIAKH'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit5: TdxDBCheckEdit
            Left = 10
            Top = 23
            Width = 292
            Color = clBtnFace
            ParentColor = False
            TabOrder = 0
            Caption = 'S'#7917' d'#7909'ng '#273#417'n gi'#225' b'#236'nh qu'#226'n khi xu'#7845't kho'
            DataField = 'SDGIABQ'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit6: TdxDBCheckEdit
            Left = 304
            Top = 23
            Width = 280
            Color = clBtnFace
            ParentColor = False
            TabOrder = 1
            Caption = 'Cho ph'#233'p thay '#273#7893'i '#273#417'n gi'#225' b'#236'nh qu'#226'n'
            DataField = 'CHOSUAGIABQ'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit9: TdxDBCheckEdit
            Left = 10
            Top = 53
            Width = 292
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            Caption = 'Cho ph'#233'p thay '#273#7893'i th'#224'nh ti'#7873'n c'#7911'a t'#7915'ng chi ti'#7871't'
            DataField = 'CHOSUATHANHTIEN'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit11: TdxDBCheckEdit
            Left = 10
            Top = 114
            Width = 292
            Color = clBtnFace
            ParentColor = False
            TabOrder = 6
            Caption = 'S'#7917' d'#7909'ng gi'#225' mua '#273#432#7907'c duy'#7879't'
            DataField = 'SDGIAMUA'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit12: TdxDBCheckEdit
            Left = 304
            Top = 114
            Width = 280
            Color = clBtnFace
            ParentColor = False
            TabOrder = 7
            Caption = 'Cho ph'#233'p nh'#226'n vi'#234'n mua h'#224'ng s'#7917'a gi'#225' mua'
            DataField = 'CHOSUAGIAMUA'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TntGroupBox1: TElGroupBox
          Left = 5
          Top = 7
          Width = 626
          Height = 106
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = ' Ph'#432#417'ng ph'#225'p t'#237'nh gi'#225' xu'#7845't kho '
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 0
          UseXPThemes = False
          object rbBQTT: TElRadioButton
            Left = 10
            Top = 25
            Width = 137
            Height = 17
            Cursor = crDefault
            AutoSize = False
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'B'#236'nh qu'#226'n t'#7913'c th'#7901'i'
            TabOrder = 0
            OnClick = rbBQTTClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbBQCK: TElRadioButton
            Left = 131
            Top = 25
            Width = 133
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'B'#236'nh qu'#226'n cu'#7889'i k'#7923
            TabOrder = 1
            OnClick = rbBQCKClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbFIFO: TElRadioButton
            Left = 255
            Top = 25
            Width = 169
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Nh'#7853'p tr'#432#7899'c xu'#7845't tr'#432#7899'c (FIFO)'
            Enabled = False
            TabOrder = 2
            OnClick = rbFIFOClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbLIFO: TElRadioButton
            Left = 429
            Top = 25
            Width = 157
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Nh'#7853'p sau xu'#7845't tr'#432#7899'c (LIFO)'
            Enabled = False
            TabOrder = 3
            OnClick = rbLIFOClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBCheckEdit14: TdxDBCheckEdit
            Left = 9
            Top = 52
            Width = 296
            TabOrder = 4
            Caption = 'Kh'#244'ng cho ph'#233'p xu'#7845't kho l'#224'm t'#7891'n kho '#226'm'
            DataField = 'allow_neginstock'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object rbDDFIFO: TElRadioButton
            Left = 255
            Top = 54
            Width = 169
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = #272#237'ch danh v'#224' t'#7921'  '#273#7897'ng FIFO'
            Enabled = False
            TabOrder = 5
            OnClick = rbDDFIFOClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbDDLIFO: TElRadioButton
            Left = 429
            Top = 54
            Width = 157
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = #272#237'ch danh v'#224' t'#7921' '#273#7897'ng LIFO'
            Enabled = False
            TabOrder = 6
            OnClick = rbDDLIFOClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBCheckKCPNHTKA: TdxDBCheckEdit
            Left = 9
            Top = 76
            Width = 352
            TabOrder = 7
            Caption = 'Kh'#244'ng cho ph'#233'p s'#7889' l'#432#7907'ng t'#7891'n kho < s'#7889' l'#432#7907'ng t'#7891'n t'#7889'i thi'#7875'u'
            DataField = 'ALLOW_MIN_INSTOCK'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object ElGroupBox2: TElGroupBox
          Left = 5
          Top = 216
          Width = 626
          Height = 47
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Caption = 'Ph'#432#417'ng ph'#225'p t'#237'nh chi ph'#237' d'#7903' dang cu'#7889'i k'#7923
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 3
          UseXPThemes = False
          object rbPPDDCKNVL: TElRadioButton
            Left = 188
            Top = 23
            Width = 175
            Height = 17
            Cursor = crDefault
            AutoSize = False
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo chi ph'#237' nguy'#234'n v'#7853't li'#7879'u'
            TabOrder = 0
            OnClick = rbNVLClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object rbPPDDCKSPHTTD: TElRadioButton
            Left = 349
            Top = 23
            Width = 191
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo SP ho'#224'n th'#224'nh t'#432#417'ng '#273#432#417'ng'
            TabOrder = 1
            Visible = False
            OnClick = rbNCClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElRadioButton1: TElRadioButton
            Left = 12
            Top = 23
            Width = 109
            Height = 17
            Cursor = crDefault
            AutoSize = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Kh'#244'ng '#273#225'nh gi'#225
            TabStop = False
            TabOrder = 2
            OnClick = rbNVLClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
        end
      end
      object TntTabSheet2: TElTabSheet
        PageControl = TntPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = '  &Kh'#225'c'
        object ElGroupBox1: TElGroupBox
          Left = 6
          Top = 6
          Width = 625
          Height = 427
          AutoDisableChildren = False
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          Flat = False
          FlatAlways = False
          ShowFocus = False
          TabOrder = 0
          UseXPThemes = False
          object Label7: TElLabel
            Left = 16
            Top = 15
            Width = 337
            Height = 13
            AutoSize = False
            Caption = 
              'Th'#225'ng (k'#7923') '#273#7847'u ti'#234'n b'#7855't '#273#7847'u s'#7917' d'#7909'ng ph'#7847'm m'#7873'm n'#224'y (th'#225'ng / n'#259'm ) ' +
              ':'
          end
          object Label9: TElLabel
            Left = 16
            Top = 73
            Width = 393
            Height = 13
            Caption = 
              'Ph'#7847'n tr'#259'm thu'#7871' thu nh'#7853'p trong L'#7907'i nhu'#7853'n ho'#7841't '#273#7897'ng kinh doanh - L' +
              #7907'i nhu'#7853'n kh'#225'c :'
          end
          object ElLabel2: TElLabel
            Left = 16
            Top = 102
            Width = 392
            Height = 13
            Caption = 
              'S'#7889' ch'#7919' s'#7889' th'#7853'p ph'#226'n '#273#432#7907'c l'#224'm tr'#242'n trong d'#7919' li'#7879'u S'#7889' l'#432#7907'ng - '#272#417'n g' +
              'i'#225' - Th'#224'nh ti'#7873'n :'
          end
          object ElLabel1: TElLabel
            Left = 16
            Top = 44
            Width = 385
            Height = 13
            AutoSize = False
            Caption = 
              'Th'#7901'i gian (t'#237'nh b'#7857'ng th'#225'ng) h'#7871't kh'#7845'u hao c'#7911'a c'#244'ng c'#7909' d'#7909'ng c'#7909' m'#7863'c' +
              ' '#273#7883'nh l'#224' :'
          end
          object ElLabel3: TElLabel
            Left = 17
            Top = 130
            Width = 392
            Height = 30
            AutoSize = False
            Caption = 
              'N'#7871'u gi'#225' tr'#7883' c'#242'n l'#7841'i c'#7911'a t'#224'i s'#7843'n c'#7889' '#273#7883'nh sau khi tr'#237'ch '#273#7907't n'#224'y nh' +
              #7887' h'#417'n gi'#225' tr'#7883' n'#224'y s'#7869' '#273#432#7907'c '#273#432'a v'#224'o tr'#237'ch kh'#7845'u hao trong '#273#7907't n'#224'y l' +
              'u'#244'n : '
            WordWrap = True
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 414
            Top = 68
            Width = 55
            Cursor = crIBeam
            TabOrder = 4
            DataField = 'PTTHUEHDKD'
            DataSource = MainDM.dsParams
            MaxValue = 100.000000000000000000
            StoredValues = 48
          end
          object CheckBox1: TElCheckBox
            Left = 472
            Top = 15
            Width = 85
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'M'#7903' ra '#273#7875' s'#7917'a'
            TabOrder = 2
            OnClick = CheckBox1Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBCheckEdit7: TdxDBCheckEdit
            Left = 12
            Top = 290
            Width = 570
            Color = clBtnFace
            ParentColor = False
            TabOrder = 12
            Caption = 
              'Kh'#244'ng cho ph'#233'p ng'#224'y l'#7853'p c'#7911'a c'#225'c phi'#7871'u v'#432#7907't ra ngo'#224'i th'#225'ng d'#7919' li'#7879 +
              'u hi'#7879'n t'#7841'i'
            DataField = 'RANGBUOCNGAY'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBSpinEdit2: TdxDBSpinEdit
            Left = 471
            Top = 68
            Width = 55
            Cursor = crIBeam
            TabOrder = 5
            DataField = 'PTTHUEHDTC'
            DataSource = MainDM.dsParams
            MaxValue = 100.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit4: TdxDBSpinEdit
            Left = 370
            Top = 14
            Width = 41
            Cursor = crIBeam
            Enabled = False
            TabOrder = 0
            DataField = 'BEGIN_MONTH'
            DataSource = MainDM.dsParams
            MaxValue = 12.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit6: TdxDBSpinEdit
            Left = 414
            Top = 14
            Width = 55
            Cursor = crIBeam
            Enabled = False
            TabOrder = 1
            DataField = 'BEGIN_YEAR'
            DataSource = MainDM.dsParams
            MaxValue = 2700.000000000000000000
            MinValue = 2000.000000000000000000
            StoredValues = 48
          end
          object dxDBCheckEdit13: TdxDBCheckEdit
            Left = 12
            Top = 320
            Width = 490
            Color = clBtnFace
            ParentColor = False
            TabOrder = 13
            Caption = 
              'Ghi l'#7841'i nh'#7853't k'#253' vi'#7879'c thay '#273#7893'i s'#7889' li'#7879'u tr'#234'n c'#225'c ch'#7913'ng t'#7915' (click n' +
              #250't k'#7871' b'#234'n '#273#7875' x'#243'a h'#7871't nh'#7853't k'#253' '#273#227' ghi)'
            DataField = 'USEDOCUMENTLOG'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCheckEdit16: TdxDBCheckEdit
            Left = 13
            Top = 260
            Width = 570
            Color = clBtnFace
            Enabled = False
            ParentColor = False
            TabOrder = 11
            Caption = 
              'Thi'#7871't l'#7853'p ch'#7919' IN HOA cho t'#7845't c'#7843' m'#227' s'#7889' ( L'#432'u '#253' khi '#273#243' b'#7841'n s'#7869' kh'#244'n' +
              'g s'#7917' d'#7909'ng '#273#432#7907'c Ti'#7871'ng Vi'#7879't trong m'#227' s'#7889')'
            DataField = 'USEUPPERCASE'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object btnDeleteLog: TElPopupButton
            Left = 510
            Top = 320
            Width = 75
            Height = 25
            Cursor = crDefault
            Hint = 'X'#243'a to'#224'n b'#7897' nh'#7919'ng nh'#7853't k'#253' '#273#227' ghi l'#7841'i'
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'X'#243'a nh'#7853't &k'#253
            TabOrder = 14
            ParentShowHint = False
            ShowHint = True
            OnClick = btnDeleteLogClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBSpinEdit5: TdxDBSpinEdit
            Left = 414
            Top = 98
            Width = 55
            Cursor = crIBeam
            TabOrder = 6
            DataField = 'DECIMALSL_LEN'
            DataSource = MainDM.dsParams
            MaxValue = 5.000000000000000000
            MinValue = -5.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit7: TdxDBSpinEdit
            Left = 471
            Top = 98
            Width = 55
            Cursor = crIBeam
            TabOrder = 7
            DataField = 'DECIMALDG_LEN'
            DataSource = MainDM.dsParams
            MaxValue = 5.000000000000000000
            MinValue = -5.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit8: TdxDBSpinEdit
            Left = 528
            Top = 98
            Width = 55
            Cursor = crIBeam
            TabOrder = 8
            DataField = 'DECIMALTT_LEN'
            DataSource = MainDM.dsParams
            MaxValue = 5.000000000000000000
            MinValue = -5.000000000000000000
            StoredValues = 48
          end
          object dxDBSpinEdit3: TdxDBSpinEdit
            Left = 414
            Top = 40
            Width = 55
            Cursor = crIBeam
            TabOrder = 3
            DataField = 'TGSDCCDC'
            DataSource = MainDM.dsParams
            MaxValue = 240.000000000000000000
            MinValue = 1.000000000000000000
            StoredValues = 48
          end
          object dxDBCheckEdit10: TdxDBCheckEdit
            Left = 13
            Top = 230
            Width = 570
            Color = clBtnFace
            ParentColor = False
            TabOrder = 10
            Caption = 'B'#7855't bu'#7897'c nh'#7853'p y'#7871'u t'#7889' n'#7871'u t'#224'i kho'#7843'n c'#243' theo d'#245'i theo t'#7915'ng y'#7871'u t'#7889
            DataField = 'BBNHAPYT'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBCalcEdit1: TdxDBCalcEdit
            Left = 414
            Top = 128
            Width = 169
            TabOrder = 9
            DataField = 'GTCLKHAUHAO'
            DataSource = MainDM.dsParams
            OnValidate = dxDBCalcEdit1Validate
          end
          object dxDBCheckEdit17: TdxDBCheckEdit
            Left = 13
            Top = 198
            Width = 570
            TabOrder = 15
            Caption = 
              'S'#7917' d'#7909'ng ph'#432#417'ng ph'#225'p chi'#7871't kh'#7845'u tr'#7921'c ti'#7871'p (gi'#7843'm gi'#225' tr'#7921'c ti'#7871'p tr'#234 +
              'n doanh thu)'
            DataField = 'DIRECT_DISCOUNT'
            DataSource = MainDM.dsParams
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
    end
    object btnBanDau: TElPopupButton
      Left = 82
      Top = 471
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
      OnKeyDown = btnBanDauKeyDown
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 163
      Top = 471
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
      OnClick = ElPopupButton1Click
      OnKeyDown = btnBanDauKeyDown
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
        LayoutDirection = ldHorizontal
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
          Control = ElPopupButton1
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
    Left = 496
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
        Caption = 'C'#225'c th'#244'ng s'#7889' h'#7879' th'#7889'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 368
    Top = 8
  end
  object ActionList1: TActionList
    Left = 312
    Top = 6
    object acSave: TAction
      Caption = 'acSave'
      OnExecute = acSaveExecute
    end
  end
end
