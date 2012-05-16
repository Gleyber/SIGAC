object fboletoconfig: Tfboletoconfig
  Left = 3
  Top = 24
  Width = 808
  Height = 580
  Caption = 'CONFIGURA'#199#195'O DE BOLETO BANC'#193'RIO'
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
    Height = 546
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 158
      Height = 320
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
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
          object SAltura: TSpinEdit
            Left = 44
            Top = 24
            Width = 81
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 100
          end
          object SLargura: TSpinEdit
            Left = 44
            Top = 48
            Width = 81
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 170
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
        object rvencimento: TRadioButton
          Left = 16
          Top = 2
          Width = 113
          Height = 17
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = rvencimentoClick
        end
        object rdata: TRadioButton
          Left = 16
          Top = 19
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
        object rdocumento: TRadioButton
          Left = 16
          Top = 36
          Width = 113
          Height = 17
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = rdocumentoClick
        end
        object rmora: TRadioButton
          Left = 16
          Top = 71
          Width = 113
          Height = 17
          Caption = 'Mora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = rmoraClick
        end
        object robs: TRadioButton
          Left = 16
          Top = 122
          Width = 113
          Height = 17
          Caption = 'Obs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = robsClick
        end
        object rinstrucao: TRadioButton
          Left = 16
          Top = 140
          Width = 113
          Height = 17
          Caption = 'Instru'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = rinstrucaoClick
        end
        object rnome: TRadioButton
          Left = 16
          Top = 174
          Width = 113
          Height = 17
          Caption = 'Nome Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = rnomeClick
        end
        object rcnpj: TRadioButton
          Left = 16
          Top = 191
          Width = 113
          Height = 17
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = rcnpjClick
        end
        object rie: TRadioButton
          Left = 16
          Top = 209
          Width = 113
          Height = 17
          Caption = 'IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = rieClick
        end
        object rendereco: TRadioButton
          Left = 16
          Top = 226
          Width = 113
          Height = 17
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = renderecoClick
        end
        object renderecocobranca: TRadioButton
          Left = 16
          Top = 243
          Width = 113
          Height = 17
          Caption = 'End. Cobranca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = renderecocobrancaClick
        end
        object Button3: TButton
          Left = 65
          Top = 300
          Width = 75
          Height = 25
          Caption = '&Visualizar'
          TabOrder = 11
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 144
          Top = 520
          Width = 75
          Height = 25
          Caption = '&Aplicar'
          TabOrder = 12
          OnClick = Button1Click
        end
        object rvalor: TRadioButton
          Left = 16
          Top = 53
          Width = 113
          Height = 17
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnClick = rvalorClick
        end
        object rinstrucao2: TRadioButton
          Left = 16
          Top = 157
          Width = 113
          Height = 17
          Caption = 'Instru'#231#227'o 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnClick = rinstrucao2Click
        end
        object rsacado: TRadioButton
          Left = 16
          Top = 261
          Width = 113
          Height = 17
          Caption = 'Sacado Avalista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = rsacadoClick
        end
        object rdesconto: TRadioButton
          Left = 16
          Top = 88
          Width = 113
          Height = 17
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = rdescontoClick
        end
        object rtotal: TRadioButton
          Left = 16
          Top = 105
          Width = 113
          Height = 17
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnClick = rtotalClick
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 321
      Width = 158
      Height = 224
      Align = alBottom
      TabOrder = 1
      object lph: TLabel
        Left = 135
        Top = 155
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
        Top = 155
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
        Top = 175
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
        Top = 176
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
      object Bevel1: TBevel
        Left = 4
        Top = 8
        Width = 149
        Height = 24
      end
      object lbanco: TLabel
        Left = 5
        Top = 14
        Width = 148
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 4
        Top = 124
        Width = 149
        Height = 22
        Caption = 'Deletar Configura'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object TkHor: TScrollBar
        Left = 34
        Top = 153
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
        Top = 174
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
        Top = 195
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
        Top = 195
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
      object rb6: TRadioButton
        Left = 4
        Top = 105
        Width = 70
        Height = 17
        Caption = 'Boleto 6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = rb6Click
      end
      object rb5: TRadioButton
        Left = 4
        Top = 90
        Width = 70
        Height = 17
        Caption = 'Boleto 5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = rb5Click
      end
      object rb4: TRadioButton
        Left = 4
        Top = 76
        Width = 70
        Height = 17
        Caption = 'Boleto 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = rb4Click
      end
      object rb3: TRadioButton
        Left = 4
        Top = 61
        Width = 70
        Height = 17
        Caption = 'Boleto 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = rb3Click
      end
      object rb2: TRadioButton
        Left = 4
        Top = 47
        Width = 70
        Height = 17
        Caption = 'Boleto 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = rb2Click
      end
      object rb1: TRadioButton
        Left = 4
        Top = 33
        Width = 70
        Height = 17
        Caption = 'Boleto 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = rb1Click
      end
    end
  end
  object ScrollBox1: TScrollBox
    Left = 160
    Top = 0
    Width = 640
    Height = 546
    Align = alClient
    TabOrder = 1
    object Label8: TLabel
      Left = 7
      Top = 419
      Width = 253
      Height = 13
      Caption = 'DIGITE AS INSTRU'#199#213'ES FIXA DO BOLETO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 11
      Top = 495
      Width = 92
      Height = 13
      Caption = 'INSTRU'#199#195'OS 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object qboleto: TRLReport
      Left = 0
      Top = 0
      Width = 643
      Height = 378
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
      PageSetup.PaperWidth = 170
      PageSetup.PaperHeight = 100
      PreviewOptions.WindowState = wsNormal
      BeforePrint = qboletoBeforePrint
      object banda: TRLBand
        Left = 19
        Top = 0
        Width = 605
        Height = 354
        AlignToBottom = True
        AutoExpand = False
        AutoSize = True
        BeforePrint = bandaBeforePrint
        object lvencimento: TRLDBText
          Left = 519
          Top = 12
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
        object lobs: TRLDBText
          Left = 8
          Top = 116
          Width = 24
          Height = 14
          Color = clWhite
          DataField = 'obs'
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
        object LEndereco: TRLDBText
          Left = 52
          Top = 308
          Width = 94
          Height = 14
          Color = clWhite
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = 'End.:  '
          Transparent = False
          BeforePrint = LEnderecoBeforePrint
        end
        object lie: TRLDBText
          Left = 492
          Top = 336
          Width = 13
          Height = 14
          Color = clWhite
          DataField = 'ie'
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
        object lnome: TRLDBText
          Left = 52
          Top = 294
          Width = 35
          Height = 14
          Color = clWhite
          DataField = 'nome'
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
        object lcnpj: TRLDBText
          Left = 492
          Top = 316
          Width = 26
          Height = 14
          Color = clWhite
          DataField = 'cnpj'
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
        object ldocumento: TRLDBText
          Left = 96
          Top = 24
          Width = 66
          Height = 14
          Color = clWhite
          DataField = 'documento'
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
          Left = 8
          Top = 24
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
        object lenderecocobranca: TRLDBText
          Left = 52
          Top = 324
          Width = 167
          Height = 14
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = 'Cobran'#231'a: '
          Transparent = False
          BeforePrint = lenderecocobrancaBeforePrint
        end
        object lvalor: TRLDBText
          Left = 504
          Top = 76
          Width = 77
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'vrdocumento'
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
        object Linstrucao: TRLMemo
          Left = 8
          Top = 136
          Width = 405
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Linstrucao2: TRLLabel
          Left = 8
          Top = 4
          Width = 284
          Height = 14
          Caption = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lmora: TRLLabel
          Left = 8
          Top = 104
          Width = 32
          Height = 14
          Caption = 'mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lsacado: TRLDBText
          Left = 52
          Top = 340
          Width = 80
          Height = 14
          Color = clWhite
          DataField = 'nome'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = 'Sacado: '
          Transparent = False
        end
        object Ldesconto: TRLDBText
          Left = 524
          Top = 120
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'desconto'
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
        object ltotal: TRLDBText
          Left = 551
          Top = 160
          Width = 27
          Height = 14
          Alignment = taRightJustify
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
      end
    end
    object minstrucao: TMemo
      Left = 8
      Top = 432
      Width = 393
      Height = 53
      TabOrder = 1
    end
    object einstrcao2: TEdit
      Left = 108
      Top = 492
      Width = 293
      Height = 21
      TabOrder = 2
      Text = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    end
  end
  object ActionList2: TActionList
    Left = 472
    Top = 152
    object boleto1: TAction
      Caption = 'boleto1'
      OnExecute = boleto1Execute
    end
    object boleto2: TAction
      Caption = 'boleto2'
      OnExecute = boleto2Execute
    end
    object boleto3: TAction
      Caption = 'boleto3'
      OnExecute = boleto3Execute
    end
    object boleto4: TAction
      Caption = 'boleto4'
      OnExecute = boleto4Execute
    end
    object boleto5: TAction
      Caption = 'boleto5'
      OnExecute = boleto5Execute
    end
    object boleto6: TAction
      Caption = 'boleto6'
      OnExecute = boleto6Execute
    end
    object Gboleto1: TAction
      Caption = 'Gboleto1'
      OnExecute = Gboleto1Execute
    end
    object Gboleto2: TAction
      Caption = 'Gboleto2'
      OnExecute = Gboleto2Execute
    end
    object Gboleto3: TAction
      Caption = 'Gboleto3'
      OnExecute = Gboleto3Execute
    end
    object GBoleto4: TAction
      Caption = 'GBoleto4'
      OnExecute = GBoleto4Execute
    end
    object GBoleto5: TAction
      Caption = 'GBoleto5'
      OnExecute = GBoleto5Execute
    end
    object Gboleto6: TAction
      Caption = 'Gboleto6'
      OnExecute = Gboleto6Execute
    end
    object padrao: TAction
      Caption = 'padrao'
      OnExecute = padraoExecute
    end
  end
end
