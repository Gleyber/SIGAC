object fduplicataconfig: Tfduplicataconfig
  Left = -10
  Top = 32
  Width = 808
  Height = 580
  Caption = 'CONFIGURA'#199#195'O DE DUPLICATA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
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
      Height = 453
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
          Top = 70
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
        end
        object rdata: TRadioButton
          Left = 16
          Top = 96
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
        end
        object rdocumento: TRadioButton
          Left = 16
          Top = 123
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
        end
        object rmora: TRadioButton
          Left = 16
          Top = 150
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
        end
        object robs: TRadioButton
          Left = 16
          Top = 177
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
        end
        object rinstrucao: TRadioButton
          Left = 16
          Top = 204
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
        end
        object rnome: TRadioButton
          Left = 16
          Top = 230
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
        end
        object rcnpj: TRadioButton
          Left = 16
          Top = 257
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
        end
        object rie: TRadioButton
          Left = 16
          Top = 284
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
        end
        object rendereco: TRadioButton
          Left = 16
          Top = 311
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
        end
        object renderecocobranca: TRadioButton
          Left = 16
          Top = 338
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
        end
        object Button3: TButton
          Left = 65
          Top = 520
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
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 454
      Width = 158
      Height = 91
      Align = alBottom
      TabOrder = 1
      object lph: TLabel
        Left = 135
        Top = 11
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
        Top = 11
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
        Top = 31
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
        Top = 32
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
        Top = 9
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
        Top = 30
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
        Top = 62
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
        Top = 62
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
    Height = 546
    Align = alClient
    TabOrder = 1
    object qduplicata: TRLReport
      Left = 0
      Top = 0
      Width = 794
      Height = 590
      DataSource = freceberlocaliza.ds
      DefaultFilter = fdm.filtro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Margins.TopMargin = 0
      Margins.BottomMargin = 0
      PageSetup.PaperSize = fpCustom
      PageSetup.PaperWidth = 210
      PageSetup.PaperHeight = 156
      PreviewOptions.ShowModal = True
      object RLBand1: TRLBand
        Left = 38
        Top = 0
        Width = 718
        Height = 529
        object lvencimento: TRLDBText
          Left = 152
          Top = 150
          Width = 77
          Height = 14
          Color = clWhite
          DataField = 'vrdocumento'
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
          Left = 440
          Top = 150
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
        object ldocumento: TRLDBText
          Left = 28
          Top = 150
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
          Left = 152
          Top = 150
          Width = 77
          Height = 14
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
        object lvalor: TRLDBText
          Left = 316
          Top = 150
          Width = 35
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
          Transparent = False
        end
        object lnome: TRLDBText
          Left = 232
          Top = 232
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
        object RLDBText1: TRLDBText
          Left = 232
          Top = 248
          Width = 56
          Height = 14
          Color = clWhite
          DataField = 'endereco'
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
        object RLDBText2: TRLDBText
          Left = 232
          Top = 297
          Width = 106
          Height = 14
          Color = clWhite
          DataField = 'enderecocobranca'
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
        object RLDBText3: TRLDBText
          Left = 232
          Top = 281
          Width = 107
          Height = 14
          Color = clWhite
          DataField = 'municipiocobranca'
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
        object RLDBText4: TRLDBText
          Left = 232
          Top = 314
          Width = 26
          Height = 14
          DataField = 'cnpj'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 232
          Top = 264
          Width = 57
          Height = 14
          Color = clWhite
          DataField = 'municipio'
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
        object RLDBText7: TRLDBText
          Left = 516
          Top = 264
          Width = 14
          Height = 14
          Color = clWhite
          DataField = 'uf'
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
          Left = 484
          Top = 297
          Width = 73
          Height = 14
          Color = clWhite
          DataField = 'cepcobranca'
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
          Left = 632
          Top = 264
          Width = 23
          Height = 14
          Color = clWhite
          DataField = 'cep'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 536
          Top = 314
          Width = 13
          Height = 14
          DataField = 'ie'
          DataSource = freceberlocaliza.ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lextenso: TRLLabel
          Left = 232
          Top = 352
          Width = 441
          Height = 14
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          BeforePrint = lextensoBeforePrint
        end
        object RLDBText10: TRLDBText
          Left = 448
          Top = 91
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
      end
    end
  end
  object qduplicataG: TRLReport
    Left = -74
    Top = -2000
    Width = 794
    Height = 529
    AdjustableMargins = True
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = True
    Borders.DrawRight = False
    Borders.DrawBottom = False
    DataSource = freceberlocaliza.ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210
    PageSetup.PaperHeight = 140
    Transparent = False
    BeforePrint = qduplicataGBeforePrint
    object RLBand4: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 364
      AutoSize = True
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel29: TRLLabel
        Left = -1
        Top = 53
        Width = 570
        Height = 18
        Caption = '--------------------------------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 115
        Top = 102
        Width = 9
        Height = 162
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':')
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = -1
        Top = 37
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = -1
        Top = 22
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = -1
        Top = 5
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 482
        Top = 46
        Width = 30
        Height = 16
        Alignment = taCenter
        Color = clWhite
        DataField = 'total'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText26: TRLDBText
        Left = 592
        Top = 30
        Width = 80
        Height = 16
        Color = clWhite
        DataField = 'dtvencimento'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = 462
        Top = 30
        Width = 65
        Height = 18
        Caption = 'Valor R$'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 571
        Top = 15
        Width = 108
        Height = 18
        Alignment = taCenter
        Caption = 'VENCIMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLDBText27: TRLDBText
        Left = 623
        Top = -3
        Width = 53
        Height = 16
        Color = clWhite
        DataField = 'emissao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel27: TRLLabel
        Left = 31
        Top = 15
        Width = 160
        Height = 18
        Alignment = taCenter
        Caption = 'FATURA DUPLICATA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 284
        Top = 15
        Width = 94
        Height = 18
        Alignment = taCenter
        Caption = 'DUPLICATA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 22
        Top = 30
        Width = 59
        Height = 18
        Caption = 'N'#250'mero'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 146
        Top = 30
        Width = 65
        Height = 18
        Caption = 'Valor R$'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 286
        Top = 30
        Width = 94
        Height = 18
        Caption = 'N'#186' de Ordem'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLDBText28: TRLDBText
        Left = 14
        Top = 46
        Width = 68
        Height = 16
        Alignment = taCenter
        Color = clWhite
        DataField = 'documento'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText29: TRLDBText
        Left = 163
        Top = 46
        Width = 30
        Height = 16
        Alignment = taCenter
        Color = clWhite
        DataField = 'total'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText30: TRLDBText
        Left = 314
        Top = 46
        Width = 38
        Height = 16
        Alignment = taCenter
        Color = clWhite
        DataField = 'chave'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel34: TRLLabel
        Left = 552
        Top = -3
        Width = 66
        Height = 18
        Caption = 'Emiss'#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object ljuro: TRLLabel
        Left = 124
        Top = 82
        Width = 377
        Height = 16
        AutoSize = False
        Caption = 'endereco'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 124
        Top = 105
        Width = 63
        Height = 18
        Caption = 'Sacado:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText32: TRLDBText
        Left = 208
        Top = 105
        Width = 36
        Height = 16
        Color = clWhite
        DataField = 'nome'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel36: TRLLabel
        Left = 124
        Top = 121
        Width = 76
        Height = 18
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText33: TRLDBText
        Left = 208
        Top = 121
        Width = 57
        Height = 16
        Color = clWhite
        DataField = 'endereco'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 124
        Top = 156
        Width = 77
        Height = 18
        Caption = 'P'#231'a. Pgto:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText34: TRLDBText
        Left = 208
        Top = 156
        Width = 59
        Height = 16
        Color = clWhite
        DataField = 'municipio'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel38: TRLLabel
        Left = 124
        Top = 139
        Width = 70
        Height = 18
        Caption = 'Munic'#237'pio'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText35: TRLDBText
        Left = 208
        Top = 139
        Width = 59
        Height = 16
        Color = clWhite
        DataField = 'municipio'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel39: TRLLabel
        Left = 124
        Top = 174
        Width = 76
        Height = 18
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText36: TRLDBText
        Left = 208
        Top = 174
        Width = 110
        Height = 16
        Color = clWhite
        DataField = 'enderecocobranca'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel40: TRLLabel
        Left = 124
        Top = 191
        Width = 74
        Height = 18
        Caption = 'Munic'#237'pio:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText37: TRLDBText
        Left = 208
        Top = 191
        Width = 112
        Height = 16
        Color = clWhite
        DataField = 'municipiocobranca'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel41: TRLLabel
        Left = 124
        Top = 209
        Width = 40
        Height = 18
        Caption = 'Cnpj:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText38: TRLDBText
        Left = 208
        Top = 209
        Width = 28
        Height = 16
        Color = clWhite
        DataField = 'cnpj'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = 492
        Top = 139
        Width = 38
        Height = 18
        Caption = 'Cep:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText39: TRLDBText
        Left = 528
        Top = 139
        Width = 25
        Height = 16
        Color = clWhite
        DataField = 'cep'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel43: TRLLabel
        Left = 628
        Top = 139
        Width = 29
        Height = 18
        Caption = 'UF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText42: TRLDBText
        Left = 660
        Top = 139
        Width = 14
        Height = 16
        Behavior = [beSiteExpander]
        Color = clWhite
        DataField = 'uf'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 492
        Top = 191
        Width = 38
        Height = 18
        Caption = 'Cep:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText44: TRLDBText
        Left = 528
        Top = 191
        Width = 78
        Height = 16
        Color = clWhite
        DataField = 'cepcobranca'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText45: TRLDBText
        Left = 660
        Top = 191
        Width = 67
        Height = 16
        Behavior = [beSiteExpander]
        Color = clWhite
        DataField = 'ufcobranca'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel45: TRLLabel
        Left = 628
        Top = 191
        Width = 29
        Height = 18
        Caption = 'UF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 492
        Top = 209
        Width = 22
        Height = 18
        Caption = 'IE:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText46: TRLDBText
        Left = 528
        Top = 209
        Width = 14
        Height = 16
        Color = clWhite
        DataField = 'ie'
        DataSource = freceberlocaliza.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel47: TRLLabel
        Left = 124
        Top = 233
        Width = 128
        Height = 18
        Caption = 'Valor por Extenso'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lvrextenso: TRLLabel
        Left = 124
        Top = 248
        Width = 493
        Height = 19
        AutoSize = False
        Caption = 'vrextenso'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = -1
        Top = 296
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lrodapeduplicata: TRLMemo
        Left = 3
        Top = 271
        Width = 707
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = -1
        Top = 259
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 4
        Top = 323
        Width = 703
        Height = 18
        Caption = 
          'Aceita em:___/__/____/. Ass: Emitente _________________ Ass. Sac' +
          'ado(s):_________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 602
        Top = 48
        Width = 70
        Height = 10
        Alignment = taCenter
        Caption = 'Uso inst. financeira'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 111
        Top = 219
        Width = 630
        Height = 18
        Caption = '--------------------------------------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 114
        Top = 93
        Width = 630
        Height = 18
        Caption = '--------------------------------------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 94
        Top = 29
        Width = 9
        Height = 36
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ':'
          ':')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 234
        Top = 11
        Width = 9
        Height = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ':'
          ':'
          ':')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 414
        Top = 29
        Width = 9
        Height = 36
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ':'
          ':')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 549
        Top = 13
        Width = 9
        Height = 90
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ':'
          ':'
          ':'
          ':'
          ':')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 708
        Top = 0
        Width = 4
        Height = 342
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':'
          ':')
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = -32
        Top = 346
        Width = 750
        Height = 18
        Caption = 
          '================================================================' +
          '=========='
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 124
        Top = 70
        Width = 377
        Height = 16
        AutoSize = False
        Color = clWhite
        DataField = 'observacao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 93
      Width = 718
      Height = 4
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 20
      Width = 718
      Height = 73
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object er1: TRLLabel
        Left = 0
        Top = 24
        Width = 718
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
        Left = 0
        Top = 39
        Width = 718
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
        Left = 0
        Top = 54
        Width = 718
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
        Left = 0
        Top = 1
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
