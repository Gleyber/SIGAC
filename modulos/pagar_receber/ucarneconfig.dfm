object fcarneconfig: Tfcarneconfig
  Left = -4
  Top = -4
  Width = 808
  Height = 578
  Caption = 'CONFIGURA'#199#195'O DE CARN'#202'S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 160
    Height = 544
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 158
      Height = 456
      ActivePage = TabSheet2
      Align = alClient
      TabIndex = 1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Papel'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 16
          Width = 128
          Height = 81
          Caption = 'Tamanho do papel (mm)'
          TabOrder = 0
          object Label1: TLabel
            Left = 12
            Top = 32
            Width = 27
            Height = 13
            Caption = 'Altura'
          end
          object Label2: TLabel
            Left = 3
            Top = 56
            Width = 36
            Height = 13
            Caption = 'Largura'
          end
          object SLargura: TSpinEdit
            Left = 44
            Top = 48
            Width = 81
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 145
          end
          object SALTURA: TEdit
            Left = 44
            Top = 27
            Width = 78
            Height = 21
            TabOrder = 1
            Text = '76.6'
            OnExit = SALTURAExit
            OnKeyPress = SALTURAKeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 104
          Width = 131
          Height = 125
          Caption = 'Margem (mil'#237'metro)'
          TabOrder = 1
          object Label3: TLabel
            Left = 36
            Top = 23
            Width = 32
            Height = 13
            Caption = 'Inferior'
          end
          object Label5: TLabel
            Left = 29
            Top = 49
            Width = 39
            Height = 13
            Caption = 'Superior'
          end
          object Label6: TLabel
            Left = 38
            Top = 78
            Width = 30
            Height = 13
            Caption = 'Direita'
          end
          object Label7: TLabel
            Left = 23
            Top = 107
            Width = 45
            Height = 13
            Caption = 'Esquerda'
          end
          object Label26: TLabel
            Left = 72
            Top = 23
            Width = 27
            Height = 13
            Caption = 'Pixels'
          end
          object SMInferior: TSpinEdit
            Left = 72
            Top = 16
            Width = 57
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object SMDireita: TSpinEdit
            Left = 72
            Top = 71
            Width = 58
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 5
          end
          object SMsuperior: TSpinEdit
            Left = 72
            Top = 43
            Width = 57
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object SMEsquerda: TSpinEdit
            Left = 72
            Top = 99
            Width = 58
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 3
            Value = 5
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Posi'#231#227'o'
        ImageIndex = 1
        object Label4: TLabel
          Left = 193
          Top = 283
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Horizontal'
        end
        object rparcela: TRadioButton
          Left = 16
          Top = 58
          Width = 113
          Height = 17
          Caption = 'Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = rparcelaClick
        end
        object rdata: TRadioButton
          Left = 16
          Top = 83
          Width = 113
          Height = 17
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = rdataClick
        end
        object rvencimento: TRadioButton
          Left = 16
          Top = 108
          Width = 113
          Height = 17
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = rvencimentoClick
        end
        object rvalor: TRadioButton
          Left = 16
          Top = 133
          Width = 113
          Height = 17
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = rvalorClick
        end
        object rcliente: TRadioButton
          Left = 16
          Top = 186
          Width = 113
          Height = 17
          Caption = 'Dados Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = rclienteClick
        end
        object rdata1: TRadioButton
          Left = 16
          Top = 232
          Width = 113
          Height = 17
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = rdata1Click
        end
        object rparcela1: TRadioButton
          Left = 16
          Top = 257
          Width = 113
          Height = 17
          Caption = 'Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = rparcela1Click
        end
        object rvencimento1: TRadioButton
          Left = 16
          Top = 282
          Width = 113
          Height = 17
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = rvencimento1Click
        end
        object rValor1: TRadioButton
          Left = 16
          Top = 307
          Width = 113
          Height = 17
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = rValor1Click
        end
        object Button3: TButton
          Left = 65
          Top = 520
          Width = 75
          Height = 25
          Caption = '&Visualizar'
          TabOrder = 9
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 144
          Top = 520
          Width = 75
          Height = 25
          Caption = '&Aplicar'
          TabOrder = 10
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 457
      Width = 158
      Height = 86
      Align = alBottom
      TabOrder = 1
      object lph: TLabel
        Left = 135
        Top = 15
        Width = 8
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 1
        Top = 15
        Width = 30
        Height = 13
        Caption = 'Horiz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 6
        Top = 35
        Width = 24
        Height = 13
        Caption = 'Vert'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lpv: TLabel
        Left = 135
        Top = 36
        Width = 8
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TkHor: TScrollBar
        Left = 34
        Top = 13
        Width = 99
        Height = 17
        Cursor = crHandPoint
        Max = 1000
        PageSize = 0
        TabOrder = 0
        OnChange = TkHorChange
        OnEnter = TkHorEnter
      end
      object tkvert: TScrollBar
        Left = 34
        Top = 34
        Width = 99
        Height = 16
        Cursor = crHandPoint
        Max = 1000
        PageSize = 0
        TabOrder = 1
        OnChange = TkVertChange
        OnEnter = tkvertEnter
      end
      object Button2: TButton
        Left = 16
        Top = 55
        Width = 62
        Height = 25
        Caption = '&Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 80
        Top = 55
        Width = 64
        Height = 25
        Caption = '&Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  object ScrollBox1: TScrollBox
    Left = 160
    Top = 0
    Width = 640
    Height = 544
    Align = alClient
    TabOrder = 1
    object Qcarne: TRLReport
      Left = 0
      Top = 0
      Width = 548
      Height = 290
      DataSource = freceberlocaliza.ds
      DefaultFilter = fdm.filtro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Margins.LeftMargin = 5
      Margins.TopMargin = 0
      Margins.RightMargin = 5
      Margins.BottomMargin = 0
      PageSetup.PaperSize = fpCustom
      PageSetup.PaperWidth = 145
      PageSetup.PaperHeight = 76.6
      PreviewOptions.WindowState = wsNormal
      object banda: TRLBand
        Left = 19
        Top = 0
        Width = 510
        Height = 254
        AlignToBottom = True
        AutoExpand = False
        AutoSize = True
        object lvencimento: TRLDBText
          Left = 23
          Top = 190
          Width = 79
          Height = 14
          Color = clWhite
          DataField = 'dtvencimento'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object ldata: TRLDBText
          Left = 23
          Top = 145
          Width = 62
          Height = 14
          Color = clWhite
          DataField = 'dtemissao'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lparcela: TRLDBText
          Left = 23
          Top = 94
          Width = 46
          Height = 14
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          BeforePrint = lparcelaBeforePrint
        end
        object lvalor: TRLDBText
          Left = 15
          Top = 240
          Width = 27
          Height = 14
          Color = clWhite
          DataField = 'total'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lvalor1: TRLDBText
          Left = 348
          Top = 186
          Width = 27
          Height = 14
          Color = clWhite
          DataField = 'total'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lvencimento1: TRLDBText
          Left = 207
          Top = 190
          Width = 79
          Height = 14
          Color = clWhite
          DataField = 'dtvencimento'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object ldata1: TRLDBText
          Left = 208
          Top = 145
          Width = 62
          Height = 14
          Color = clWhite
          DataField = 'dtemissao'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lparcela1: TRLDBText
          Left = 396
          Top = 145
          Width = 52
          Height = 14
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          BeforePrint = lparcela1BeforePrint
        end
        object lcliente: TRLMemo
          Left = 228
          Top = 81
          Width = 277
          Height = 42
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            'NOME CLIENTE'
            'ENDERECO'
            'CEP - FONE')
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 71
          Top = 94
          Width = 49
          Height = 14
          Color = clWhite
          DataField = 'chave'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = 'N'#186' '
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 443
          Top = 146
          Width = 49
          Height = 14
          Color = clWhite
          DataField = 'chave'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = 'N'#186' '
          Transparent = False
        end
      end
    end
  end
  object qcarneG: TRLReport
    Left = -57
    Top = -2000
    Width = 794
    Height = 1123
    DataSource = freceberlocaliza.ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.BottomMargin = 0
    PreviewOptions.ShowModal = True
    BeforePrint = qcarneGBeforePrint
    object RLDetailGrid2: TRLDetailGrid
      Left = 38
      Top = 38
      Width = 718
      Height = 1
    end
    object qcolunas: TRLDetailGrid
      Left = 38
      Top = 39
      Width = 718
      Height = 240
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = qcolunasBeforePrint
      object RLLabel1: TRLLabel
        Left = -33
        Top = 76
        Width = 775
        Height = 11
        AutoSize = False
        Caption = 
          '================================================================' +
          '==============='
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 4
        Top = 103
        Width = 333
        Height = 11
        AutoSize = False
        Caption = '--------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 124
        Top = 195
        Width = 81
        Height = 14
        AutoSize = False
        Color = clWhite
        DataField = 'total'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 124
        Top = 181
        Width = 81
        Height = 14
        AutoSize = False
        Color = clWhite
        DataField = 'dtvencimento'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 124
        Top = 168
        Width = 81
        Height = 14
        AutoSize = False
        Color = clWhite
        DataField = 'dtemissao'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 260
        Top = 92
        Width = 101
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLDBText10BeforePrint
      end
      object LCLIENTE1: TRLMemo
        Left = 8
        Top = 120
        Width = 705
        Height = 42
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'NOME CLIENTE'
          'ENDERECO'
          'CEP - FONE')
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 75
        Top = 92
        Width = 72
        Height = 19
        DataField = 'chave'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'N'#186' '
      end
      object RLLabel2: TRLLabel
        Left = 8
        Top = 168
        Width = 105
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DATA DA COMPRA:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 8
        Top = 181
        Width = 105
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VENCIMENTO :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 8
        Top = 195
        Width = 105
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VALOR:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 164
        Top = 92
        Width = 88
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PARCELA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 8
        Top = 92
        Width = 64
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CARN'#202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 380
        Top = 155
        Width = 334
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = '------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 500
        Top = 165
        Width = 97
        Height = 11
        Caption = 'A U T '#202' N T I C A '#199' '#195' O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = -17
        Top = 207
        Width = 775
        Height = 10
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '---------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object er1: TRLLabel
        Left = 91
        Top = 24
        Width = 642
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object er2: TRLLabel
        Left = 91
        Top = 39
        Width = 642
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object er3: TRLLabel
        Left = 91
        Top = 54
        Width = 642
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object ltitulo1: TRLAngleLabel
        Left = 91
        Top = 1
        Width = 642
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object i1: TRLImage
        Left = 7
        Top = 1
        Width = 74
        Height = 73
        Stretch = True
      end
      object ljuro: TRLLabel
        Left = 216
        Top = 195
        Width = 28
        Height = 14
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object ActionList2: TActionList
    Left = 488
    Top = 452
    object abre: TAction
      Caption = 'abre'
      OnExecute = abreExecute
    end
    object grava: TAction
      Caption = 'grava'
      OnExecute = gravaExecute
    end
  end
end
