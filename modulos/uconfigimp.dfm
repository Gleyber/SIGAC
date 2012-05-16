object fconfigimp: Tfconfigimp
  Left = 1
  Top = 1
  Width = 805
  Height = 568
  Caption = 'CONFIGURA'#199#195'O DE BOLETO BANC'#193'RIO'
  Color = 15987699
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 26
    Width = 797
    Height = 515
    ActivePage = boleto
    Align = alClient
    TabOrder = 0
    object boleto: TTabSheet
      Caption = 'imp'
      object ScrollBox1: TScrollBox
        Left = 130
        Top = 0
        Width = 659
        Height = 486
        Align = alClient
        TabOrder = 1
        object Label8: TLabel
          Left = 234
          Top = 387
          Width = 178
          Height = 13
          Caption = 'DIGITE AS INSTRU'#199#213'ES FIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label9: TLabel
          Left = 6
          Top = 463
          Width = 92
          Height = 13
          Caption = 'INSTRU'#199#195'OS 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object qboleto: TRLReport
          Left = 0
          Top = 0
          Width = 643
          Height = 378
          DataSource = ds
          DefaultFilter = fdm.filtro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Margins.LeftMargin = 5.000000000000000000
          Margins.TopMargin = 0.000000000000000000
          Margins.RightMargin = 5.000000000000000000
          Margins.BottomMargin = 0.000000000000000000
          PageSetup.PaperSize = fpCustom
          PageSetup.PaperWidth = 170.000000000000000000
          PageSetup.PaperHeight = 100.000000000000000000
          PreviewOptions.WindowState = wsNormal
          BeforePrint = qboletoBeforePrint
          object banda: TRLDetailGrid
            Left = 19
            Top = 0
            Width = 605
            Height = 365
          end
        end
        object bminstrucao: TMemo
          Left = 19
          Top = 400
          Width = 608
          Height = 49
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
          Visible = False
        end
        object beinstrcao2: TEdit
          Left = 103
          Top = 460
          Width = 522
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
          Text = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
          Visible = False
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 130
        Height = 486
        ActivePage = TabSheet2
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object tboleto: TTabSheet
          Caption = 'Boleto'
          object Button4: TButton
            Left = 144
            Top = 520
            Width = 75
            Height = 25
            Caption = '&Aplicar'
            TabOrder = 0
          end
          object brvencimento: TCheckBox
            Left = 4
            Top = 10
            Width = 111
            Height = 17
            Caption = 'Vencimento'
            TabOrder = 1
          end
          object brdata: TCheckBox
            Left = 4
            Top = 27
            Width = 111
            Height = 17
            Caption = 'Data'
            TabOrder = 2
          end
          object brdocumento: TCheckBox
            Left = 4
            Top = 44
            Width = 111
            Height = 17
            Caption = 'Documento'
            TabOrder = 3
          end
          object brvalor: TCheckBox
            Left = 4
            Top = 61
            Width = 111
            Height = 17
            Caption = 'Valor'
            TabOrder = 4
          end
          object brmora: TCheckBox
            Left = 4
            Top = 79
            Width = 111
            Height = 17
            Caption = 'Mora'
            TabOrder = 5
          end
          object brdesconto: TCheckBox
            Left = 4
            Top = 96
            Width = 111
            Height = 17
            Caption = 'Desconto'
            TabOrder = 6
          end
          object brobs: TCheckBox
            Left = 4
            Top = 130
            Width = 111
            Height = 17
            Caption = 'Obs'
            TabOrder = 7
          end
          object brinstrucao: TCheckBox
            Left = 4
            Top = 148
            Width = 111
            Height = 17
            Caption = 'Instru'#231#227'o'
            TabOrder = 8
          end
          object brinstrucao2: TCheckBox
            Left = 4
            Top = 165
            Width = 111
            Height = 17
            Caption = 'Instru'#231#227'o 2'
            TabOrder = 9
          end
          object brnome: TCheckBox
            Left = 4
            Top = 182
            Width = 111
            Height = 17
            Caption = 'Nome Cliente'
            TabOrder = 10
          end
          object brcnpj: TCheckBox
            Left = 4
            Top = 199
            Width = 111
            Height = 17
            Caption = 'CNPJ'
            TabOrder = 11
          end
          object brie: TCheckBox
            Left = 4
            Top = 217
            Width = 111
            Height = 17
            Caption = 'IE'
            TabOrder = 12
          end
          object brendereco: TCheckBox
            Left = 4
            Top = 234
            Width = 111
            Height = 17
            Caption = 'Endere'#231'o'
            TabOrder = 13
          end
          object brenderecocobranca: TCheckBox
            Left = 4
            Top = 251
            Width = 111
            Height = 17
            Caption = 'End. Cobranca'
            TabOrder = 14
          end
          object brsacado: TCheckBox
            Left = 4
            Top = 269
            Width = 111
            Height = 17
            Caption = 'Sacado Avalista'
            TabOrder = 15
          end
          object brtotal: TCheckBox
            Left = 4
            Top = 113
            Width = 111
            Height = 17
            Caption = 'Total'
            TabOrder = 16
          end
        end
        object tabpapel: TTabSheet
          Caption = 'Papel'
          ImageIndex = 14
          object Label4: TLabel
            Left = 1
            Top = 245
            Width = 54
            Height = 13
            Caption = 'Tm Fonte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 1
            Top = 297
            Width = 119
            Height = 24
          end
          object lbanco: TLabel
            Left = 2
            Top = 303
            Width = 115
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
          object Label10: TLabel
            Left = 1
            Top = 431
            Width = 119
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Caption = 'N'#227'o esque'#231'a de gravar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 1
            Top = 442
            Width = 119
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'antes de config outro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 16
            Width = 113
            Height = 81
            Caption = 'Tm do papel (mm)'
            TabOrder = 0
            object Label1: TLabel
              Left = 12
              Top = 32
              Width = 52
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Altura'
            end
            object Label2: TLabel
              Left = 12
              Top = 48
              Width = 52
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Largura'
            end
            object SAltura: TSpinEdit
              Left = 68
              Top = 24
              Width = 44
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 100
              OnChange = SAlturaChange
            end
            object SLargura: TSpinEdit
              Left = 68
              Top = 48
              Width = 44
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 170
              OnChange = SLarguraChange
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 104
            Width = 113
            Height = 125
            Caption = 'Margem (mm)'
            TabOrder = 1
            object Label3: TLabel
              Left = 12
              Top = 23
              Width = 52
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Inferior'
            end
            object Label5: TLabel
              Left = 12
              Top = 49
              Width = 52
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Superior'
            end
            object Label6: TLabel
              Left = 12
              Top = 78
              Width = 52
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Direita'
            end
            object Label7: TLabel
              Left = 12
              Top = 107
              Width = 52
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Esquerda'
            end
            object Label26: TLabel
              Left = 72
              Top = 23
              Width = 33
              Height = 14
              Caption = 'Pixels'
            end
            object SMInferior: TSpinEdit
              Left = 68
              Top = 16
              Width = 44
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 0
              OnChange = SMInferiorChange
            end
            object SMDireita: TSpinEdit
              Left = 68
              Top = 71
              Width = 44
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 5
              OnChange = SMDireitaChange
            end
            object SMsuperior: TSpinEdit
              Left = 68
              Top = 43
              Width = 44
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 2
              Value = 0
              OnChange = SMsuperiorChange
            end
            object SMEsquerda: TSpinEdit
              Left = 68
              Top = 99
              Width = 44
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 5
              OnChange = SMEsquerdaChange
            end
          end
          object efonte: TSpinEdit
            Left = 67
            Top = 240
            Width = 47
            Height = 23
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 10
            OnChange = efonteChange
          end
          object rnegrito: TCheckBox
            Left = 45
            Top = 267
            Width = 65
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Negrito?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = rnegritoClick
          end
          object rboleto: TRadioGroup
            Left = 1
            Top = 336
            Width = 120
            Height = 88
            Caption = 'Cinfigurar'
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
            ParentFont = False
            TabOrder = 4
            OnClick = rboletoClick
          end
        end
        object tcliente: TTabSheet
          Caption = 'cliente'
          ImageIndex = 2
          object GroupBox5: TGroupBox
            Left = 0
            Top = 120
            Width = 123
            Height = 89
            Caption = 'Imprimir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object rempresa1: TCheckBox
              Left = 0
              Top = 14
              Width = 118
              Height = 17
              Caption = 'Nome da Empresa'
              TabOrder = 0
              OnClick = rempresa1Click
            end
            object renderecoempresa1: TCheckBox
              Left = 0
              Top = 32
              Width = 118
              Height = 17
              Caption = 'End. Empresa'
              TabOrder = 1
              OnClick = rempresa1Click
            end
            object robs1: TCheckBox
              Left = 0
              Top = 66
              Width = 118
              Height = 17
              Caption = 'Obs'
              TabOrder = 2
              OnClick = rempresa1Click
            end
            object rnf1: TCheckBox
              Left = 0
              Top = 49
              Width = 118
              Height = 17
              Caption = 'N. Nota'
              TabOrder = 3
              OnClick = rempresa1Click
            end
          end
          object rempresa: TCheckBox
            Left = 4
            Top = 240
            Width = 107
            Height = 17
            Caption = 'Nome Empresa'
            TabOrder = 1
          end
          object renderecoempresa: TCheckBox
            Left = 4
            Top = 259
            Width = 107
            Height = 17
            Caption = 'End. Empresa'
            TabOrder = 2
          end
          object rnome: TCheckBox
            Left = 4
            Top = 279
            Width = 107
            Height = 17
            Caption = 'Nome Cliente'
            TabOrder = 3
          end
          object rendereco: TCheckBox
            Left = 4
            Top = 298
            Width = 107
            Height = 17
            Caption = 'Endere'#231'o'
            TabOrder = 4
          end
          object rbairro: TCheckBox
            Left = 4
            Top = 318
            Width = 107
            Height = 17
            Caption = 'Bairro'
            TabOrder = 5
          end
          object rmunicipio: TCheckBox
            Left = 4
            Top = 337
            Width = 107
            Height = 17
            Caption = 'Munic'#237'pio'
            TabOrder = 6
          end
          object rcep: TCheckBox
            Left = 4
            Top = 357
            Width = 107
            Height = 17
            Caption = 'Cep'
            TabOrder = 7
          end
          object ruf: TCheckBox
            Left = 4
            Top = 376
            Width = 107
            Height = 17
            Caption = 'UF'
            TabOrder = 8
          end
          object rnf: TCheckBox
            Left = 4
            Top = 396
            Width = 107
            Height = 17
            Caption = 'NF'
            TabOrder = 9
          end
          object robs: TCheckBox
            Left = 4
            Top = 416
            Width = 107
            Height = 17
            Caption = 'Obs'
            TabOrder = 10
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = -2
            Width = 132
            Height = 101
            Caption = 'Colunas'
            TabOrder = 11
            object Label12: TLabel
              Left = 5
              Top = 19
              Width = 67
              Height = 14
              Caption = 'Qtd Colunas'
            end
            object Label13: TLabel
              Left = 5
              Top = 71
              Width = 71
              Height = 14
              Caption = 'Espa'#231'o Entre'
            end
            object Label14: TLabel
              Left = 5
              Top = 46
              Width = 74
              Height = 14
              Caption = 'Altura Coluna'
            end
            object smqtd: TSpinEdit
              Left = 81
              Top = 16
              Width = 45
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 3
            end
            object smaltura: TSpinEdit
              Left = 80
              Top = 40
              Width = 45
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 78
            end
            object smespaco: TSpinEdit
              Left = 80
              Top = 64
              Width = 45
              Height = 23
              MaxValue = 0
              MinValue = 0
              TabOrder = 2
              Value = 2
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 3
        end
      end
    end
    object campos: TTabSheet
      Caption = 'campos'
      ImageIndex = 1
      object gboleto: TGroupBox
        Left = 264
        Top = 112
        Width = 585
        Height = 361
        Caption = 'boleto'
        TabOrder = 0
        object bLinstrucao2: TRLLabel
          Left = 8
          Top = 12
          Width = 272
          Height = 14
          Caption = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object bldata: TRLDBText
          Left = 8
          Top = 24
          Width = 52
          Height = 14
          Color = clWhite
          DataField = 'dtemissao'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object bldocumento: TRLDBText
          Left = 96
          Top = 24
          Width = 56
          Height = 14
          Color = clWhite
          DataField = 'documento'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object blvencimento: TRLDBText
          Left = 519
          Top = 12
          Width = 67
          Height = 14
          Color = clWhite
          DataField = 'dtvencimento'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object blvalor: TRLDBText
          Left = 515
          Top = 76
          Width = 66
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'vrdocumento'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object bLdesconto: TRLDBText
          Left = 531
          Top = 120
          Width = 48
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'desconto'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object bltotal: TRLDBText
          Left = 555
          Top = 160
          Width = 23
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'total'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object blmora: TRLLabel
          Left = 8
          Top = 104
          Width = 27
          Height = 14
          Caption = 'mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object blobs: TRLDBText
          Left = 8
          Top = 116
          Width = 21
          Height = 14
          Color = clWhite
          DataField = 'obs'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object bLinstrucao: TRLMemo
          Left = 8
          Top = 136
          Width = 405
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object blnome: TRLDBText
          Left = 52
          Top = 294
          Width = 29
          Height = 14
          Color = clWhite
          DataField = 'nome'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object bLEndereco: TRLDBText
          Left = 52
          Top = 308
          Width = 91
          Height = 14
          Color = clWhite
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Text = 'End.:  '
          Transparent = False
          BeforePrint = bLEnderecoBeforePrint
        end
        object blenderecocobranca: TRLDBText
          Left = 52
          Top = 324
          Width = 156
          Height = 14
          Color = clWhite
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Text = 'Cobran'#231'a: '
          Transparent = False
          BeforePrint = blenderecocobrancaBeforePrint
        end
        object blsacado: TRLDBText
          Left = 52
          Top = 340
          Width = 72
          Height = 14
          Color = clWhite
          DataField = 'nome'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Text = 'Sacado: '
          Transparent = False
        end
        object blie: TRLDBText
          Left = 492
          Top = 336
          Width = 11
          Height = 14
          Color = clWhite
          DataField = 'ie'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object blcnpj: TRLDBText
          Left = 492
          Top = 316
          Width = 23
          Height = 14
          Color = clWhite
          DataField = 'cnpj'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object gcliente: TGroupBox
        Left = 160
        Top = 160
        Width = 257
        Height = 153
        Caption = 'cliente'
        TabOrder = 1
        object lnome: TRLDBText
          Left = 2
          Top = 51
          Width = 29
          Height = 14
          DataField = 'nome'
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbairro: TRLDBText
          Left = 92
          Top = 69
          Width = 32
          Height = 14
          DataField = 'Bairro'
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lmunicipio: TRLDBText
          Left = 2
          Top = 87
          Width = 47
          Height = 14
          DataField = 'municipio'
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lcep: TRLDBText
          Left = 124
          Top = 87
          Width = 21
          Height = 14
          DataField = 'cep'
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object luf: TRLDBText
          Left = 156
          Top = 87
          Width = 13
          Height = 14
          DataField = 'uf'
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lempresa: TRLLabel
          Left = 2
          Top = 16
          Width = 246
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lobs: TRLDBText
          Left = 2
          Top = 127
          Width = 30
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lnf: TRLDBText
          Left = 2
          Top = 105
          Width = 15
          Height = 14
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lenderecoempresa: TRLMemo
          Left = 2
          Top = 32
          Width = 246
          Height = 14
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lendereco: TRLDBText
          Left = 2
          Top = 69
          Width = 51
          Height = 14
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = lenderecoBeforePrint
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 26
    Align = alTop
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 1
    object Label22: TLabel
      Left = 312
      Top = 7
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
    object Label21: TLabel
      Left = 3
      Top = 7
      Width = 120
      Height = 13
      Caption = 'Mover campos: Horiz'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lpv: TLabel
      Left = 486
      Top = 7
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
    object lph: TLabel
      Left = 274
      Top = 7
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
    object btnvisualiza: TSpeedButton
      Left = 664
      Top = 4
      Width = 68
      Height = 19
      Caption = '&Visualizar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnvisualizaClick
    end
    object btngravar: TSpeedButton
      Left = 736
      Top = 4
      Width = 59
      Height = 19
      Caption = '&Gravar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btngravarClick
    end
    object tkvert: TScrollBar
      Left = 340
      Top = 4
      Width = 141
      Height = 19
      Cursor = crHandPoint
      Max = 1000
      PageSize = 0
      TabOrder = 0
      OnChange = TkVertChange
      OnEnter = tkvertEnter
    end
    object TkHor: TScrollBar
      Left = 128
      Top = 4
      Width = 141
      Height = 19
      Cursor = crHandPoint
      Max = 1000
      PageSize = 0
      TabOrder = 1
      OnChange = TkHorChange
      OnEnter = TkHorEnter
    end
  end
  object qduplicata: TRLReport
    Left = -54
    Top = -2000
    Width = 794
    Height = 529
    AdjustableMargins = True
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = True
    Borders.DrawRight = False
    Borders.DrawBottom = False
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    Transparent = False
    BeforePrint = qduplicataBeforePrint
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
        DataSource = ds
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
        DataSource = ds
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
        Width = 64
        Height = 16
        Color = clWhite
        DataField = 'dtemissao'
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
      object ljuro: TRLLabel
        Left = 124
        Top = 82
        Width = 377
        Height = 16
        AutoSize = False
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
  object qcarne: TRLReport
    Left = -81
    Top = -2000
    Width = 794
    Height = 1123
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.BottomMargin = 0.000000000000000000
    PreviewOptions.ShowModal = True
    BeforePrint = qcarneBeforePrint
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
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
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLDBText10BeforePrint
      end
      object LCLIENTE1c: TRLMemo
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
        DataSource = ds
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
        Width = 108
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DATA DA COMPRA :'
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
        Width = 108
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
        Width = 108
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VALOR :'
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
      object RLLabel11: TRLLabel
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
      object er1c: TRLLabel
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
      object er2c: TRLLabel
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
      object er3c: TRLLabel
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
      object ltitulo1c: TRLAngleLabel
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
      object i1c: TRLImage
        Left = 7
        Top = 1
        Width = 74
        Height = 73
        Stretch = True
      end
      object ljuroc: TRLLabel
        Left = 216
        Top = 195
        Width = 34
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
  object qpromissoria: TRLReport
    Left = 2
    Top = -2000
    Width = 794
    Height = 529
    AdjustableMargins = True
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    Transparent = False
    BeforePrint = qpromissoriaBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 42
      Width = 718
      Height = 440
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel12: TRLLabel
        Left = 0
        Top = 211
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
      object RLDBText1: TRLDBText
        Left = 101
        Top = 224
        Width = 36
        Height = 16
        Color = clWhite
        DataField = 'nome'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lvencimentonp: TRLLabel
        Left = 295
        Top = 1
        Width = 128
        Height = 22
        Align = faCenterTop
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 0
        Top = 63
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
      object ldatanp: TRLLabel
        Left = 3
        Top = 76
        Width = 55
        Height = 18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lpagarei: TRLLabel
        Left = 3
        Top = 108
        Width = 327
        Height = 18
        Caption = 'PAGAREI (EMOS) POR ESTA '#218'NICA VIA DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lrodapenp: TRLMemo
        Left = 4
        Top = 137
        Width = 661
        Height = 48
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '1'
          '2'
          '3')
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 3
        Top = 224
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Emitente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 3
        Top = 240
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 3
        Top = 256
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 3
        Top = 272
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 3
        Top = 288
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RG/IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 3
        Top = 304
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fone Resp.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 283
        Top = 304
        Width = 84
        Height = 18
        Caption = 'Fone Trab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 101
        Top = 240
        Width = 57
        Height = 16
        Color = clWhite
        DataField = 'endereco'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 101
        Top = 256
        Width = 59
        Height = 16
        Color = clWhite
        DataField = 'municipio'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 101
        Top = 272
        Width = 28
        Height = 16
        Color = clWhite
        DataField = 'cnpj'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 101
        Top = 288
        Width = 14
        Height = 16
        Color = clWhite
        DataField = 'ie'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 101
        Top = 304
        Width = 28
        Height = 16
        Color = clWhite
        DataField = 'fone'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = 339
        Top = 256
        Width = 38
        Height = 18
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 384
        Top = 256
        Width = 25
        Height = 16
        Color = clWhite
        DataField = 'cep'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 284
        Top = 256
        Width = 14
        Height = 16
        Color = clWhite
        DataField = 'uf'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel21: TRLLabel
        Left = 251
        Top = 256
        Width = 29
        Height = 18
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 471
        Top = 272
        Width = 242
        Height = 18
        Caption = 'Ass:_______________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 104
        Top = 327
        Width = 640
        Height = 18
        Caption = '---------------------------------------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 3
        Top = 324
        Width = 96
        Height = 22
        Caption = 'Avalistas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel57: TRLLabel
        Left = 14
        Top = 341
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel58: TRLLabel
        Left = 14
        Top = 355
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel59: TRLLabel
        Left = 14
        Top = 369
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel60: TRLLabel
        Left = 14
        Top = 385
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 380
        Top = 304
        Width = 35
        Height = 16
        Color = clWhite
        DataField = 'fone2'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel61: TRLLabel
        Left = 475
        Top = 380
        Width = 242
        Height = 18
        Caption = 'Ass:_______________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lnumeronp: TRLAngleLabel
        Left = 4
        Top = 36
        Width = 132
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lvalornp: TRLAngleLabel
        Left = 581
        Top = 36
        Width = 102
        Height = 29
        Alignment = taRightJustify
        Caption = 'lnumero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lnpromissoria: TRLAngleLabel
        Left = 384
        Top = 103
        Width = 332
        Height = 29
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'NOTA PROMISS'#211'RIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lcidadenp: TRLLabel
        Left = 631
        Top = 200
        Width = 52
        Height = 18
        Alignment = taRightJustify
        Caption = 'cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lavalistanp: TRLMemo
        Left = 100
        Top = 345
        Width = 366
        Height = 70
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '*'
          '*'
          '*'
          '*'
          '*')
        ParentFont = False
      end
      object RLLabel62: TRLLabel
        Left = 14
        Top = 398
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
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
  end
  object ActionList2: TActionList
    Left = 312
    Top = 376
    object confinicial: TAction
      Caption = 'confinicial'
      OnExecute = confinicialExecute
    end
    object papelC: TAction
      Caption = 'papelC'
      OnExecute = papelCExecute
    end
    object papelG: TAction
      Caption = 'papelG'
      OnExecute = papelGExecute
    end
    object carrega: TAction
      Caption = 'carrega'
      OnExecute = carregaExecute
    end
    object boletoc: TAction
      Caption = 'boletoc'
      OnExecute = boletocExecute
    end
    object boletog: TAction
      Caption = 'boletog'
      OnExecute = boletogExecute
    end
    object ccliente: TAction
      Caption = 'ccliente'
      OnExecute = cclienteExecute
    end
    object cclienteg: TAction
      Caption = 'cclienteg'
      OnExecute = cclientegExecute
    end
    object mostrar: TAction
      Caption = 'mostrar'
      OnExecute = mostrarExecute
    end
    object npromissoriac: TAction
      Caption = 'npromissoriac'
      OnExecute = npromissoriacExecute
    end
  end
  object ds: TDataSource
    Left = 264
    Top = 384
  end
end
