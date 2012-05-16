object ficliente: Tficliente
  Left = -15
  Top = 119
  Width = 798
  Height = 568
  Caption = 'ETIQUETAS'
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
    Height = 534
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 158
      Height = 411
      ActivePage = TabSheet2
      Align = alClient
      TabIndex = 1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Papel'
        object Bevel1: TBevel
          Left = 4
          Top = 306
          Width = 131
          Height = 36
        end
        object Label11: TLabel
          Left = 17
          Top = 317
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
        object GroupBox1: TGroupBox
          Left = 0
          Top = -2
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
            Value = 297
          end
          object SLargura: TSpinEdit
            Left = 44
            Top = 48
            Width = 81
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 216
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 80
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
        object GroupBox4: TGroupBox
          Left = 4
          Top = 206
          Width = 132
          Height = 101
          Caption = 'Colunas'
          TabOrder = 2
          object Label8: TLabel
            Left = 5
            Top = 19
            Width = 58
            Height = 13
            Caption = 'Qtd Colunas'
          end
          object Label9: TLabel
            Left = 5
            Top = 71
            Width = 64
            Height = 13
            Caption = 'Espa'#231'o Entre'
          end
          object Label10: TLabel
            Left = 5
            Top = 46
            Width = 63
            Height = 13
            Caption = 'Altura Coluna'
          end
          object smqtd: TSpinEdit
            Left = 81
            Top = 16
            Width = 45
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 3
          end
          object smaltura: TSpinEdit
            Left = 80
            Top = 40
            Width = 45
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 78
          end
          object smespaco: TSpinEdit
            Left = 80
            Top = 64
            Width = 45
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 2
          end
        end
        object efonte: TSpinEdit
          Left = 84
          Top = 312
          Width = 47
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 10
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
        object rbairro: TRadioButton
          Left = 17
          Top = 207
          Width = 113
          Height = 17
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = rbairroClick
        end
        object rmunicipio: TRadioButton
          Left = 16
          Top = 232
          Width = 113
          Height = 17
          Caption = 'Munic'#237'pio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = rmunicipioClick
        end
        object rcep: TRadioButton
          Left = 16
          Top = 257
          Width = 113
          Height = 17
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = rcepClick
        end
        object ruf: TRadioButton
          Left = 16
          Top = 282
          Width = 113
          Height = 17
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = rufClick
        end
        object rnome: TRadioButton
          Left = 17
          Top = 157
          Width = 113
          Height = 17
          Caption = 'Nome Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = rnomeClick
        end
        object rendereco: TRadioButton
          Left = 17
          Top = 182
          Width = 113
          Height = 17
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = renderecoClick
        end
        object rempresa: TRadioButton
          Left = 17
          Top = 107
          Width = 113
          Height = 17
          Caption = 'Nome Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = rempresaClick
        end
        object renderecoempresa: TRadioButton
          Left = 18
          Top = 132
          Width = 129
          Height = 12
          Caption = 'Endere'#231'o Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = renderecoempresaClick
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 151
          Height = 89
          Caption = 'Imprimir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object rempresa1: TCheckBox
            Left = 8
            Top = 14
            Width = 137
            Height = 17
            Caption = 'Nome da Empresa'
            TabOrder = 0
            OnClick = rempresa1Click
          end
          object renderecoempresa1: TCheckBox
            Left = 8
            Top = 32
            Width = 137
            Height = 17
            Caption = 'Endere'#231'o da Empresa'
            TabOrder = 1
            OnClick = rempresa1Click
          end
          object robs1: TCheckBox
            Left = 8
            Top = 66
            Width = 137
            Height = 17
            Caption = 'Obs'
            TabOrder = 2
            OnClick = rempresa1Click
          end
          object rnf1: TCheckBox
            Left = 8
            Top = 49
            Width = 137
            Height = 17
            Caption = 'N. Nota'
            TabOrder = 3
            OnClick = rempresa1Click
          end
        end
        object robs: TRadioButton
          Left = 16
          Top = 332
          Width = 113
          Height = 17
          Caption = 'Obs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = robsClick
        end
        object rnf: TRadioButton
          Left = 16
          Top = 307
          Width = 113
          Height = 17
          Caption = 'NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = rnfClick
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 412
      Width = 158
      Height = 121
      Align = alBottom
      TabOrder = 1
      object lph: TLabel
        Left = 135
        Top = 13
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
        Top = 13
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
        Top = 33
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
        Top = 34
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
        Top = 11
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
        Top = 32
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
        Left = 4
        Top = 54
        Width = 76
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
        Left = 83
        Top = 54
        Width = 70
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
    Width = 630
    Height = 534
    Align = alClient
    TabOrder = 1
    object qetiqueta: TRLReport
      Left = 2
      Top = 0
      Width = 816
      Height = 1123
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
      PageSetup.PaperWidth = 216
      PageSetup.PaperHeight = 297
      PreviewOptions.ShowModal = True
      BeforePrint = qetiquetaBeforePrint
      object RLDetailGrid1: TRLDetailGrid
        Left = 19
        Top = 0
        Width = 778
        Height = 1
      end
      object qcolunas: TRLDetailGrid
        Left = 19
        Top = 1
        Width = 778
        Height = 143
        ColCount = 3
        ColSpacing = 2
        object lnome: TRLDBText
          Left = 2
          Top = 51
          Width = 29
          Height = 14
          DataField = 'nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lendereco: TRLDBText
          Left = 3
          Top = 69
          Width = 51
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = lenderecoBeforePrint
        end
        object lbairro: TRLDBText
          Left = 92
          Top = 69
          Width = 32
          Height = 14
          DataField = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lmunicipio: TRLDBText
          Left = 4
          Top = 87
          Width = 47
          Height = 14
          DataField = 'municipio'
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lempresa: TRLLabel
          Left = 0
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
          Left = 0
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
          Left = 1
          Top = 105
          Width = 15
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lenderecoempresa: TRLMemo
          Left = 0
          Top = 32
          Width = 246
          Height = 18
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
      end
    end
  end
  object ActionList1: TActionList
    Left = 324
    Top = 412
    object abre: TAction
      Caption = 'abre'
      OnExecute = abreExecute
    end
    object padrao: TAction
      Caption = 'padrao'
      OnExecute = padraoExecute
    end
    object mostrar: TAction
      Caption = 'mostrar'
      OnExecute = mostrarExecute
    end
  end
  object tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 184
  end
end
