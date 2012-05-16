object fconfig: Tfconfig
  Left = 41
  Top = 111
  Width = 796
  Height = 567
  Caption = 'CONFIGURA'#199#213'ES'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 788
    Height = 540
    ActivePage = TabSheet7
    Align = alClient
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Configura'#231#245'es B'#225'sicas'
      Highlighted = True
      OnShow = TabSheet1Show
      object Label18: TLabel
        Left = 182
        Top = 364
        Width = 157
        Height = 24
        Caption = 'Senha Gerencial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label91: TLabel
        Left = 493
        Top = 245
        Width = 125
        Height = 13
        Caption = 'Caminho Logo no Site'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object SpeedButton6: TSpeedButton
        Left = 216
        Top = 57
        Width = 23
        Height = 18
        Caption = '...'
      end
      object SpeedButton4: TSpeedButton
        Left = 769
        Top = 301
        Width = 23
        Height = 18
        Caption = '...'
        OnClick = SpeedButton4Click
      end
      object Label90: TLabel
        Left = 493
        Top = 287
        Width = 116
        Height = 13
        Caption = 'Caminho do servidor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object etipoempresa: TDBRadioGroup
        Left = 0
        Top = 0
        Width = 780
        Height = 68
        Align = alTop
        Caption = 'Configurar o programa para tipo de empresa:'
        Columns = 7
        DataField = 'tipoempresa'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Supermercado'
          'Restaurante/Pizzaria'
          'Autope'#231'as/Mec'#226'nica'
          'Eletr'#244'nica'
          'Inform'#225'tica'
          'Confec'#231#227'o'
          'Pet Shop'
          'Dep. '#193'gua/G'#225's/Bebidas'
          'Mat. Constru'#231#227'o'
          'Madeireira'
          #211'tica'
          'Adesivo'
          'Cl'#237'nica M'#233'dica')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'R'
          'A'
          'E'
          'I'
          'C'
          'P'
          'D'
          'M'
          '9'
          'O'
          '1'
          '2')
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 68
        Width = 485
        Height = 221
        Caption = 'Produto/Estoque'
        TabOrder = 1
        object lcodigoproduto: TLabel
          Left = 4
          Top = 87
          Width = 116
          Height = 13
          Caption = #218'ltimo c'#243'digo usado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 272
          Top = 137
          Width = 116
          Height = 13
          Caption = #218'ltimo c'#243'digo usado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label77: TLabel
          Left = 276
          Top = 153
          Width = 109
          Height = 13
          Caption = 'N'#186' casas decimais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label78: TLabel
          Left = 277
          Top = 165
          Width = 43
          Height = 13
          Caption = 'Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label79: TLabel
          Left = 341
          Top = 165
          Width = 37
          Height = 13
          Caption = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object eestoquenegativo: TDBCheckBox
          Left = 4
          Top = 26
          Width = 253
          Height = 17
          Caption = 'Permitir Venda com o Estoque Negativo'
          Color = clBtnFace
          DataField = 'venderestoque'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = eestoquenegativoClick
        end
        object DBCheckBox2: TDBCheckBox
          Left = 272
          Top = 60
          Width = 169
          Height = 17
          Caption = 'Calcular estoque m'#237'nimo?'
          Color = clBtnFace
          DataField = 'estoqueminimo'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 4
          Top = 12
          Width = 181
          Height = 17
          Caption = 'Controlar Estoque Dep'#243'sito'
          Color = clBtnFace
          DataField = 'deposito'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Visible = False
        end
        object DBCheckBox7: TDBCheckBox
          Left = 272
          Top = 103
          Width = 181
          Height = 17
          Caption = 'Trabalha com Mat'#233'ria-Prima'
          Color = clBtnFace
          DataField = 'materiaprima'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 272
          Top = 12
          Width = 177
          Height = 17
          Caption = 'Controle de Vasilhame'
          DataField = 'vasilhame'
          DataSource = fdm.dsconfig
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 272
          Top = 89
          Width = 140
          Height = 17
          Caption = 'Controla SubEstoque'
          Color = clBtnFace
          DataField = 'subestoque'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object eestoqueavisar: TDBCheckBox
          Left = 4
          Top = 40
          Width = 156
          Height = 17
          Caption = 'Avisar estoque negativo'
          Color = clBtnFace
          DataField = 'venderestoqueavisar'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object ccodigoproduto: TDBCheckBox
          Left = 4
          Top = 69
          Width = 233
          Height = 17
          Caption = 'C'#243'digo do produto sequencial?'
          Color = clBtnFace
          DataField = 'codigoprodutosequencial'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 272
          Top = 117
          Width = 210
          Height = 17
          Caption = 'C'#243'digo mat'#233'ria-prima sequencial?'
          Color = clBtnFace
          DataField = 'codigoprodutosequencialMP'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object ecodigoproduto: TDBEdit
          Left = 126
          Top = 87
          Width = 71
          Height = 15
          BevelInner = bvLowered
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'codigoproduto'
          DataSource = fdm.dsconfig
          TabOrder = 9
        end
        object DBEdit32: TDBEdit
          Left = 394
          Top = 137
          Width = 71
          Height = 15
          BevelInner = bvLowered
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'codigoprodutoMP'
          DataSource = fdm.dsconfig
          TabOrder = 10
        end
        object DBEdit38: TDBEdit
          Left = 269
          Top = 178
          Width = 62
          Height = 21
          CharCase = ecUpperCase
          DataField = 'decimaiscompra'
          DataSource = fdm.dsconfig
          TabOrder = 11
        end
        object DBEdit39: TDBEdit
          Left = 334
          Top = 178
          Width = 62
          Height = 21
          CharCase = ecUpperCase
          DataField = 'decimaisvenda'
          DataSource = fdm.dsconfig
          TabOrder = 12
        end
        object DBCheckBox41: TDBCheckBox
          Left = 4
          Top = 53
          Width = 185
          Height = 17
          Caption = 'Vale tamb'#233'm para or'#231'amento'
          Color = clBtnFace
          DataField = 'venderestoqueorcamento'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox43: TDBCheckBox
          Left = 4
          Top = 121
          Width = 233
          Height = 17
          Caption = 'Usar C'#225'lculo de Custo'
          Color = clBtnFace
          DataField = 'calccusto'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox44: TDBCheckBox
          Left = 272
          Top = 73
          Width = 169
          Height = 17
          Caption = 'Avisar estoque m'#237'nimo'
          Color = clBtnFace
          DataField = 'avisaminimo'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox54: TDBCheckBox
          Left = 409
          Top = 162
          Width = 70
          Height = 17
          Caption = 'Estacina'
          Color = clBtnFace
          DataField = 'estacionamento'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox55: TDBCheckBox
          Left = 409
          Top = 178
          Width = 70
          Height = 17
          Caption = 'Painel'
          Color = clBtnFace
          DataField = 'painel'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox59: TDBCheckBox
          Left = 272
          Top = 28
          Width = 177
          Height = 17
          Caption = 'Ch'#227'o de f'#225'brica'
          DataField = 'chaofab'
          DataSource = fdm.dsconfig
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox61: TDBCheckBox
          Left = 4
          Top = 151
          Width = 117
          Height = 17
          Caption = 'Grade pre'#231'o'
          Color = clBtnFace
          DataField = 'gradepreco'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 19
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox63: TDBCheckBox
          Left = 4
          Top = 167
          Width = 117
          Height = 17
          Caption = 'Plano contas'
          Color = clBtnFace
          DataField = 'planocontas'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox66: TDBCheckBox
          Left = 4
          Top = 106
          Width = 233
          Height = 17
          Caption = 'Mult empresa'
          Color = clBtnFace
          DataField = 'multempresa'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox68: TDBCheckBox
          Left = 272
          Top = 44
          Width = 177
          Height = 17
          Caption = 'Monta ve'#237'culo'
          DataField = 'mveiculo'
          DataSource = fdm.dsconfig
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox5: TGroupBox
        Left = 484
        Top = 69
        Width = 308
        Height = 108
        Caption = 'Documentos - '#218'ltimo n'#250'mero do(a)'
        TabOrder = 2
        object Label21: TLabel
          Left = 136
          Top = 18
          Width = 37
          Height = 13
          Caption = 'Boleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 192
          Top = 18
          Width = 58
          Height = 13
          Caption = 'Vd Consig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 5
          Top = 18
          Width = 62
          Height = 13
          Caption = 'Or'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label72: TLabel
          Left = 261
          Top = 18
          Width = 34
          Height = 13
          Caption = 'Prova'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label82: TLabel
          Left = 69
          Top = 18
          Width = 60
          Height = 13
          Caption = 'Or'#231'. Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label94: TLabel
          Left = 5
          Top = 58
          Width = 69
          Height = 13
          Caption = 'Ped Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit5: TDBEdit
          Left = 133
          Top = 31
          Width = 59
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nboleto'
          DataSource = fdm.dsconfig
          TabOrder = 0
        end
        object DBEdit35: TDBEdit
          Left = 193
          Top = 31
          Width = 59
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nconsignada'
          DataSource = fdm.dsconfig
          TabOrder = 1
        end
        object DBEdit36: TDBEdit
          Left = 5
          Top = 31
          Width = 62
          Height = 21
          CharCase = ecUpperCase
          DataField = 'norcamento'
          DataSource = fdm.dsconfig
          TabOrder = 2
        end
        object DBEdit37: TDBEdit
          Left = 254
          Top = 31
          Width = 52
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nprova'
          DataSource = fdm.dsconfig
          TabOrder = 3
        end
        object DBEdit42: TDBEdit
          Left = 69
          Top = 31
          Width = 62
          Height = 21
          CharCase = ecUpperCase
          DataField = 'norcamentocaixa'
          DataSource = fdm.dsconfig
          TabOrder = 4
        end
        object DBEdit52: TDBEdit
          Left = 5
          Top = 71
          Width = 68
          Height = 21
          CharCase = ecUpperCase
          DataField = 'npedcompra'
          DataSource = fdm.dsconfig
          TabOrder = 5
        end
      end
      object DBEdit4: TDBEdit
        Left = 351
        Top = 360
        Width = 198
        Height = 32
        CharCase = ecUpperCase
        DataField = 'senhagerencial'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 3
      end
      object DBCheckBox49: TDBCheckBox
        Left = 4
        Top = 205
        Width = 117
        Height = 17
        Caption = 'Gera Sintegra?'
        Color = clBtnFace
        DataField = 'sintegra'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup7: TDBRadioGroup
        Left = 1
        Top = 307
        Width = 270
        Height = 32
        Caption = 'Abrir Vendas, NFs, Entradas Encerradas'
        Columns = 3
        DataField = 'abrirvenda'
        DataSource = fdm.dsconfig
        Items.Strings = (
          'Com Senha'
          'Sem Senha'
          'N'#227'o Abrir')
        TabOrder = 5
        Values.Strings = (
          'C'
          'S'
          'N')
      end
      object DBEdit50: TDBEdit
        Left = 493
        Top = 259
        Width = 292
        Height = 21
        DataField = 'caminhologo'
        DataSource = fdm.dsconfig
        TabOrder = 6
      end
      object DBCheckBox51: TDBCheckBox
        Left = 364
        Top = 297
        Width = 117
        Height = 17
        Caption = 'Atualiza site?'
        Color = clBtnFace
        DataField = 'site'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit3: TDBEdit
        Left = 493
        Top = 303
        Width = 276
        Height = 18
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'serv'
        DataSource = fdm.dsconfig
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Impressora Fiscal'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object b1: TSpeedButton
        Left = 4
        Top = 3
        Width = 219
        Height = 20
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'ATIVA/DESATIVA CUPOM FISCAL'
        OnClick = b1Click
      end
      object btef: TSpeedButton
        Left = 8
        Top = 350
        Width = 177
        Height = 20
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'ATIVA/DESATIVA O TEF'
        OnClick = btefClick
      end
      object PnConfECF: TPanel
        Left = 2
        Top = 29
        Width = 614
        Height = 298
        BevelInner = bvLowered
        FullRepaint = False
        TabOrder = 0
        object Bevel2: TBevel
          Left = 8
          Top = 68
          Width = 279
          Height = 69
        end
        object Label15: TLabel
          Left = 9
          Top = 208
          Width = 53
          Height = 13
          Caption = 'Lembrete'
        end
        object LNumEcf: TLabel
          Left = 11
          Top = 69
          Width = 77
          Height = 13
          Caption = 'N'#176' Caixa ECF'
        end
        object Label12: TLabel
          Left = 97
          Top = 69
          Width = 75
          Height = 13
          Caption = 'N'#176' S'#233'rie ECF'
        end
        object BtProgTrunc: TSpeedButton
          Left = 8
          Top = 184
          Width = 137
          Height = 25
          Caption = '&Prog. Arredondamento'
          Flat = True
          OnClick = BtProgTruncClick
        end
        object BtProgHorVerao: TSpeedButton
          Left = 146
          Top = 184
          Width = 117
          Height = 25
          Hint = 'Programa e Desprograma o Hor'#225'rio de Ver'#227'o'
          Caption = 'Prog. Hor. Ver'#227'o'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtProgHorVeraoClick
        end
        object Label95: TLabel
          Left = 11
          Top = 103
          Width = 68
          Height = 13
          Caption = 'C'#243'd Modelo'
        end
        object Label96: TLabel
          Left = 97
          Top = 103
          Width = 42
          Height = 13
          Caption = 'Modelo'
        end
        object CkConcumitante: TCheckBox
          Left = 9
          Top = 168
          Width = 97
          Height = 14
          Caption = 'Concumitante'
          TabOrder = 0
        end
        object RMarca: TRadioGroup
          Left = 10
          Top = 4
          Width = 113
          Height = 62
          Caption = 'Marca Impressora'
          Items.Strings = (
            'Bematech'
            'Yanco'
            'Daruma')
          TabOrder = 1
          OnClick = RMarcaClick
        end
        object RPorta: TRadioGroup
          Left = 121
          Top = 4
          Width = 98
          Height = 62
          Caption = 'Porta'
          Items.Strings = (
            'Autom'#225'tico'
            'COM1'
            'COM2')
          TabOrder = 2
        end
        object MmLembrete: TDBMemo
          Left = 8
          Top = 222
          Width = 285
          Height = 67
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'lembrete'
          DataSource = fdm.dsconfig
          TabOrder = 3
          OnEnter = MmLembreteEnter
          OnExit = MmLembreteExit
        end
        object EdNumCaixaEcf: TEdit
          Left = 11
          Top = 84
          Width = 81
          Height = 20
          BevelKind = bkSoft
          BorderStyle = bsNone
          TabOrder = 4
        end
        object EdNumSerieEcf: TEdit
          Left = 96
          Top = 84
          Width = 111
          Height = 20
          BevelKind = bkSoft
          BorderStyle = bsNone
          TabOrder = 5
        end
        object ckgaveta: TCheckBox
          Left = 9
          Top = 140
          Width = 137
          Height = 14
          Caption = 'Acionar Gaveta'
          TabOrder = 6
          OnClick = ckgavetaClick
        end
        object CkGavetaReverso: TCheckBox
          Left = 9
          Top = 154
          Width = 160
          Height = 14
          Caption = 'Gaveta Modo Reverso'
          Enabled = False
          TabOrder = 7
        end
        object BtCapturar: TButton
          Left = 209
          Top = 84
          Width = 75
          Height = 20
          Hint = 'Captura informa'#231#245'es da ECF'
          Caption = '&Capturar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BtCapturarClick
        end
        object GroupBox7: TGroupBox
          Left = 292
          Top = 3
          Width = 315
          Height = 286
          Caption = 'Formas de Pgto'
          TabOrder = 9
          object Bevel11: TBevel
            Left = 4
            Top = 251
            Width = 151
            Height = 25
          end
          object Bevel10: TBevel
            Left = 4
            Top = 224
            Width = 151
            Height = 25
          end
          object Bevel9: TBevel
            Left = 4
            Top = 198
            Width = 151
            Height = 25
          end
          object Bevel8: TBevel
            Left = 4
            Top = 173
            Width = 151
            Height = 25
          end
          object Bevel7: TBevel
            Left = 4
            Top = 147
            Width = 151
            Height = 25
          end
          object Bevel6: TBevel
            Left = 4
            Top = 121
            Width = 151
            Height = 25
          end
          object Bevel5: TBevel
            Left = 4
            Top = 95
            Width = 151
            Height = 25
          end
          object Bevel4: TBevel
            Left = 4
            Top = 69
            Width = 151
            Height = 25
          end
          object Bevel3: TBevel
            Left = 4
            Top = 43
            Width = 151
            Height = 25
          end
          object Bevel1: TBevel
            Left = 4
            Top = 17
            Width = 151
            Height = 25
          end
          object Label52: TLabel
            Left = 8
            Top = 25
            Width = 48
            Height = 13
            Caption = 'Dinheiro'
          end
          object Label53: TLabel
            Left = 8
            Top = 52
            Width = 44
            Height = 13
            Caption = 'Cheque'
          end
          object Label54: TLabel
            Left = 8
            Top = 78
            Width = 67
            Height = 13
            Caption = 'Cheque-Pr'#233
          end
          object Label55: TLabel
            Left = 8
            Top = 105
            Width = 82
            Height = 13
            Caption = 'Cart'#227'o Cr'#233'dito'
          end
          object Label56: TLabel
            Left = 8
            Top = 131
            Width = 79
            Height = 13
            Caption = 'Cart'#227'o D'#233'bito'
          end
          object Label57: TLabel
            Left = 8
            Top = 156
            Width = 44
            Height = 13
            Caption = 'A prazo'
          end
          object Label58: TLabel
            Left = 8
            Top = 182
            Width = 54
            Height = 13
            Caption = 'Conv'#234'nio'
          end
          object Label59: TLabel
            Left = 8
            Top = 207
            Width = 43
            Height = 13
            Caption = 'Tickets'
          end
          object Label60: TLabel
            Left = 8
            Top = 233
            Width = 73
            Height = 13
            Caption = 'Vale Transp.'
          end
          object Label61: TLabel
            Left = 160
            Top = 23
            Width = 101
            Height = 13
            Caption = 'Formas Disp. ECF'
          end
          object SpeedButton1: TSpeedButton
            Left = 166
            Top = 253
            Width = 65
            Height = 25
            Caption = '&Adicionar'
            Flat = True
            OnClick = SpeedButton1Click
          end
          object Label62: TLabel
            Left = 8
            Top = 260
            Width = 41
            Height = 13
            Caption = 'Cr'#233'dito'
          end
          object SpeedButton3: TSpeedButton
            Left = 236
            Top = 253
            Width = 65
            Height = 25
            Caption = '&Deletar'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object SpDinheiro: TSpinEdit
            Left = 112
            Top = 19
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpCheque: TSpinEdit
            Left = 112
            Top = 45
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpChequePre: TSpinEdit
            Left = 112
            Top = 71
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpCartaoCred: TSpinEdit
            Left = 112
            Top = 98
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 3
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpCartaoDeb: TSpinEdit
            Left = 112
            Top = 123
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 4
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpPrazo: TSpinEdit
            Left = 112
            Top = 149
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 5
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpConvenio: TSpinEdit
            Left = 112
            Top = 176
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 6
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpTicket: TSpinEdit
            Left = 112
            Top = 200
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 7
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object SpValeTransp: TSpinEdit
            Left = 112
            Top = 227
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 8
            Value = 0
            OnEnter = SpDinheiroEnter
          end
          object lsFormas: TListBox
            Left = 157
            Top = 37
            Width = 153
            Height = 212
            ItemHeight = 13
            TabOrder = 9
          end
          object SpCredito: TSpinEdit
            Left = 112
            Top = 254
            Width = 39
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 10
            Value = 0
            OnEnter = SpDinheiroEnter
          end
        end
        object CkImpOperador: TCheckBox
          Left = 162
          Top = 139
          Width = 104
          Height = 14
          Caption = 'Imp. Operador'
          TabOrder = 10
        end
        object CkECFPedido: TCheckBox
          Left = 161
          Top = 155
          Width = 130
          Height = 14
          Caption = 'Em. ECF no Pedido'
          TabOrder = 11
        end
        object CkMFD: TCheckBox
          Left = 228
          Top = 32
          Width = 55
          Height = 14
          Hint = 'MP-2000 TH FI, MP-6000 TH FI, MP-25 FI e MP-50 FI'
          Caption = 'MFD'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object ecod_mod: TEdit
          Left = 11
          Top = 116
          Width = 80
          Height = 20
          BevelKind = bkSoft
          BorderStyle = bsNone
          TabOrder = 13
        end
        object eecf_mod: TEdit
          Left = 96
          Top = 116
          Width = 110
          Height = 20
          BevelKind = bkSoft
          BorderStyle = bsNone
          TabOrder = 14
        end
      end
      object DBCheckBox47: TDBCheckBox
        Left = 244
        Top = 4
        Width = 184
        Height = 17
        Caption = 'Imprime cupom Fiscal'
        DataField = 'ecf'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Impress'#245'es'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Bevel12: TBevel
        Left = 16
        Top = 8
        Width = 413
        Height = 202
      end
      object Label6: TLabel
        Left = 32
        Top = 16
        Width = 238
        Height = 13
        Caption = 'Escolha a Impressora de cupon n'#227'o fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 32
        Top = 51
        Width = 177
        Height = 13
        Caption = 'Mensagem 1 no final do cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 32
        Top = 83
        Width = 177
        Height = 13
        Caption = 'Mensagem 2 no final do cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 32
        Top = 185
        Width = 138
        Height = 13
        Caption = 'Espa'#231'o entre os cupons'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 224
        Top = 185
        Width = 46
        Height = 13
        Caption = 'Linha(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 303
        Top = 16
        Width = 104
        Height = 13
        Caption = 'Quantas Colunas?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 32
        Top = 116
        Width = 177
        Height = 13
        Caption = 'Mensagem 3 no final do cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 32
        Top = 148
        Width = 177
        Height = 13
        Caption = 'Mensagem 4 no final do cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label64: TLabel
        Left = 30
        Top = 2
        Width = 121
        Height = 13
        Caption = 'CUPOM N'#195'O FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel13: TBevel
        Left = 16
        Top = 344
        Width = 419
        Height = 102
      end
      object Label65: TLabel
        Left = 18
        Top = 345
        Width = 358
        Height = 13
        Caption = 'IMPRESSOES FOLHA SOLTA E FORM. CONT'#205'NUO (Tm Papel)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 22
        Top = 364
        Width = 142
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'LARGURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label67: TLabel
        Left = 22
        Top = 386
        Width = 142
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ALTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label68: TLabel
        Left = 22
        Top = 411
        Width = 142
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MARGEM SUPERIOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label69: TLabel
        Left = 241
        Top = 364
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MARGEM INFERIOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label70: TLabel
        Left = 241
        Top = 386
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MARGEM DIREITA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label71: TLabel
        Left = 241
        Top = 408
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MARGEM ESQUERDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label84: TLabel
        Left = 15
        Top = 256
        Width = 149
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rodape Impress'#227'o Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label87: TLabel
        Left = 17
        Top = 300
        Width = 171
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rodape Impress'#227'o Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label93: TLabel
        Left = 360
        Top = 185
        Width = 33
        Height = 13
        Caption = 'Via(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cimpressao: TComboBox
        Left = 30
        Top = 29
        Width = 273
        Height = 21
        HelpType = htKeyword
        ItemHeight = 0
        TabOrder = 0
        Text = 'LPT1'
        OnDropDown = cimpressaoDropDown
      end
      object emensagem2: TEdit
        Left = 32
        Top = 95
        Width = 377
        Height = 21
        MaxLength = 48
        TabOrder = 3
        Text = 'emensagem2'
        OnChange = emensagem2Change
      end
      object elinha: TEdit
        Left = 176
        Top = 185
        Width = 41
        Height = 21
        MaxLength = 48
        TabOrder = 6
        Text = '1'
      end
      object emensagem1: TEdit
        Left = 32
        Top = 63
        Width = 377
        Height = 21
        MaxLength = 48
        TabOrder = 2
        Text = 'mensagem1'
        OnChange = emensagem1Change
      end
      object ecoluna: TComboBox
        Left = 304
        Top = 28
        Width = 105
        Height = 21
        HelpType = htKeyword
        ItemHeight = 13
        TabOrder = 1
        Text = '48'
        OnChange = ecolunaChange
        OnKeyPress = ecolunaKeyPress
        Items.Strings = (
          '40'
          '48'
          '80')
      end
      object emensagem3: TEdit
        Left = 32
        Top = 128
        Width = 377
        Height = 21
        MaxLength = 48
        TabOrder = 4
        Text = 'emensagem3'
        OnChange = emensagem2Change
      end
      object emensagem4: TEdit
        Left = 32
        Top = 160
        Width = 377
        Height = 21
        MaxLength = 48
        TabOrder = 5
        Text = 'emensagem2'
        OnChange = emensagem2Change
      end
      object DBEdit25: TDBEdit
        Left = 168
        Top = 364
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Lreport'
        DataSource = fdm.dsconfig
        TabOrder = 7
      end
      object DBEdit26: TDBEdit
        Left = 168
        Top = 386
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Areport'
        DataSource = fdm.dsconfig
        TabOrder = 8
      end
      object DBEdit27: TDBEdit
        Left = 168
        Top = 408
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MSreport'
        DataSource = fdm.dsconfig
        TabOrder = 9
      end
      object DBEdit28: TDBEdit
        Left = 372
        Top = 364
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MIreport'
        DataSource = fdm.dsconfig
        TabOrder = 10
      end
      object DBEdit29: TDBEdit
        Left = 372
        Top = 386
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MDreport'
        DataSource = fdm.dsconfig
        TabOrder = 11
      end
      object DBEdit30: TDBEdit
        Left = 372
        Top = 408
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MEreport'
        DataSource = fdm.dsconfig
        TabOrder = 12
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 16
        Top = 444
        Width = 413
        Height = 33
        Caption = 'Qual o c'#243'digo que deve sair nas impress'#244'es'
        Columns = 4
        DataField = 'codigoimpressao'
        DataSource = fdm.dsconfig
        Items.Strings = (
          'Interno'
          'Fornecedor'
          'Original'
          'Barras')
        TabOrder = 13
        Values.Strings = (
          'I'
          'F'
          'O'
          'B')
      end
      object DBCheckBox27: TDBCheckBox
        Left = 16
        Top = 210
        Width = 413
        Height = 17
        Caption = 
          'Imprimir o fabricante/fornecedor com a descri'#231#227'o do produto (ven' +
          'da)'
        DataField = 'fabricanteimpressao'
        DataSource = fdm.dsconfig
        TabOrder = 14
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 16
        Top = 480
        Width = 413
        Height = 33
        Caption = 'Impress'#227'o da "Entrada" imprimir Codigo Interno +'
        Columns = 4
        DataField = 'codigoimpressaoentrada'
        DataSource = fdm.dsconfig
        Items.Strings = (
          'S'#243' Interno'
          'Fornecedor'
          'Original')
        TabOrder = 15
        Values.Strings = (
          'I'
          'F'
          'O'
          'B')
      end
      object DBCheckBox17: TDBCheckBox
        Left = 16
        Top = 222
        Width = 413
        Height = 17
        Caption = 'Imprime Nota Fiscal de Formul'#225'rio Cont'#237'nuo'
        DataField = 'notacontinuo'
        DataSource = fdm.dsconfig
        TabOrder = 16
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 268
        Width = 409
        Height = 32
        DataField = 'rodape'
        DataSource = fdm.dsconfig
        ScrollBars = ssVertical
        TabOrder = 17
        OnEnter = DBMemo1Enter
        OnExit = DBMemo1Exit
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 312
        Width = 409
        Height = 32
        DataField = 'rodapeOrc'
        DataSource = fdm.dsconfig
        ScrollBars = ssVertical
        TabOrder = 18
        OnEnter = DBMemo1Enter
        OnExit = DBMemo1Exit
      end
      object DBCheckBox53: TDBCheckBox
        Left = 168
        Top = 430
        Width = 265
        Height = 14
        Caption = 'Aplicar tamb'#233'm em impress'#245'es meia p'#225'gina'
        DataField = 'meiapagina'
        DataSource = fdm.dsconfig
        TabOrder = 19
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox52: TDBCheckBox
        Left = 16
        Top = 237
        Width = 413
        Height = 17
        Caption = 'Imprime CNPJ/IE no pedido'
        DataField = 'cnpjie'
        DataSource = fdm.dsconfig
        TabOrder = 20
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object evia: TEdit
        Left = 312
        Top = 185
        Width = 41
        Height = 21
        MaxLength = 48
        TabOrder = 21
        Text = '1'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Balan'#231'a'
      ImageIndex = 3
      OnHide = TabSheet4Hide
      OnShow = TabSheet4Show
      object PnBalanca: TPanel
        Left = 2
        Top = 29
        Width = 489
        Height = 257
        BevelInner = bvLowered
        TabOrder = 0
        object Bevel16: TBevel
          Left = 16
          Top = 32
          Width = 433
          Height = 209
        end
        object Label13: TLabel
          Left = 25
          Top = 43
          Width = 67
          Height = 13
          Caption = 'Porta Serial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 25
          Top = 78
          Width = 57
          Height = 13
          Caption = 'BaudRate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 25
          Top = 113
          Width = 105
          Height = 13
          Caption = 'Protocolo Balan'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object ImgLogoBal: TImage
          Left = 25
          Top = 189
          Width = 183
          Height = 45
          Stretch = True
        end
        object LbDescricaobal: TLabel
          Left = 25
          Top = 151
          Width = 183
          Height = 36
          AutoSize = False
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label17: TLabel
          Left = 255
          Top = 43
          Width = 123
          Height = 13
          Caption = 'C'#243'digo de Barras tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lbDescCodbarras: TLabel
          Left = 253
          Top = 79
          Width = 183
          Height = 94
          AutoSize = False
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object CbPortaBal: TComboBox
          Left = 25
          Top = 56
          Width = 183
          Height = 21
          Style = csDropDownList
          Enabled = False
          ItemHeight = 0
          TabOrder = 0
        end
        object CbBaudRateBal: TComboBox
          Left = 25
          Top = 91
          Width = 183
          Height = 21
          Style = csDropDownList
          Enabled = False
          ItemHeight = 13
          ItemIndex = 3
          TabOrder = 1
          Text = '9600'
          Items.Strings = (
            '1200'
            '2400'
            '4800'
            '9600'
            '19200'
            '38400')
        end
        object CbProtoBal: TComboBox
          Left = 25
          Top = 127
          Width = 183
          Height = 21
          Style = csDropDownList
          Enabled = False
          ItemHeight = 13
          TabOrder = 2
          OnClick = CbProtoBalClick
          Items.Strings = (
            'IDSDemanda'
            'IDSContinuo'
            'IDC'
            'IDM'
            'IDU'
            'BP'
            'MF'
            'CS'
            'Toledo')
        end
        object CkBalanca: TCheckBox
          Left = 20
          Top = 7
          Width = 183
          Height = 17
          Caption = 'Utilizar Balan'#231'a Eletr'#244'nica'
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          OnClick = CkBalancaClick
        end
        object CbTipoBarcode: TComboBox
          Left = 253
          Top = 56
          Width = 183
          Height = 21
          Style = csDropDownList
          Enabled = False
          ItemHeight = 13
          TabOrder = 4
          Items.Strings = (
            '0: 2CCCC0TTTTTTD'
            '1: 2CCCC00PPPPPD'
            '2: 2CCCCC0PPPPPD'
            '3: 2CCCCCCPPPPPD'
            '4: 2CCCCCTTTTTTD'
            '5: 2CCCCTTTTTTTD'
            '6: 2CCCCCCTTTTTD'
            '7: 20CCCCCPPPPPD')
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Caixa'
      ImageIndex = 4
      object Label1: TLabel
        Left = 20
        Top = 41
        Width = 257
        Height = 13
        Caption = 'Tipo de Caixa (Altere-o com o caixa fechado)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label51: TLabel
        Left = 290
        Top = 41
        Width = 121
        Height = 13
        Caption = 'Valor Inicial do Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 100
        Top = 82
        Width = 235
        Height = 13
        Caption = 'IMPRIMIR NO FECHAMENTO DO CAIXA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ecaixa: TDBComboBox
        Left = 20
        Top = 54
        Width = 265
        Height = 19
        Cursor = crHandPoint
        HelpType = htKeyword
        Style = csOwnerDrawFixed
        BevelInner = bvLowered
        BevelKind = bkSoft
        CharCase = ecUpperCase
        DataField = 'fechamentocaixa'
        DataSource = fdm.dsconfig
        ItemHeight = 13
        Items.Strings = (
          'DI'#193'RIO'
          'PER'#205'ODO'
          'M'#218'LTIPLO')
        TabOrder = 1
      end
      object DBEdit24: TDBEdit
        Left = 291
        Top = 54
        Width = 119
        Height = 21
        CharCase = ecUpperCase
        DataField = 'valorinicial'
        DataSource = fdm.dsconfig
        TabOrder = 0
      end
      object DBCheckBox11: TDBCheckBox
        Left = 24
        Top = 99
        Width = 190
        Height = 17
        Caption = 'Rela'#231#227'o de Vendas'
        Color = 11967521
        DataField = 'caixarvenda'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox12: TDBCheckBox
        Left = 24
        Top = 121
        Width = 190
        Height = 17
        Caption = 'Resumo por Vendedor'
        Color = 11967521
        DataField = 'caixarvendedor'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox13: TDBCheckBox
        Left = 24
        Top = 144
        Width = 190
        Height = 17
        Caption = 'Inclus'#245'es no Cr'#233'di'#225'rio'
        Color = 11967521
        DataField = 'caixaicrediario'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 24
        Top = 188
        Width = 190
        Height = 17
        Caption = 'Cart'#245'es Detalhados'
        Color = 11967521
        DataField = 'caixacartaoD'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox15: TDBCheckBox
        Left = 24
        Top = 211
        Width = 190
        Height = 17
        Caption = 'Cheques Detalhados'
        Color = 11967521
        DataField = 'caixachequeD'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox19: TDBCheckBox
        Left = 224
        Top = 99
        Width = 190
        Height = 17
        Caption = 'Informa'#231#245'es Adicionais'
        Color = 11967521
        DataField = 'caixaiadicionais'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox21: TDBCheckBox
        Left = 224
        Top = 121
        Width = 190
        Height = 17
        Caption = 'Rela'#231#245'es de Mov. Deletados'
        Color = 11967521
        DataField = 'caixadeletado'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox22: TDBCheckBox
        Left = 224
        Top = 143
        Width = 190
        Height = 17
        Caption = 'Opera'#231#245'es Com Senha'
        Color = 11967521
        DataField = 'caixaosenha'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox23: TDBCheckBox
        Left = 24
        Top = 233
        Width = 189
        Height = 17
        Caption = 'Rel. Forma Recebimento'
        Color = 11967521
        DataField = 'caixafrecebimento'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox24: TDBCheckBox
        Left = 24
        Top = 166
        Width = 189
        Height = 17
        Caption = 'Recebimento Cr'#233'di'#225'rio'
        Color = 11967521
        DataField = 'caixarcrediario'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox20: TDBCheckBox
        Left = 224
        Top = 166
        Width = 190
        Height = 17
        Caption = 'Produtos Vendidos'
        Color = 11967521
        DataField = 'caixapvendido'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = ' '
      end
      object DBCheckBox37: TDBCheckBox
        Left = 224
        Top = 189
        Width = 190
        Height = 17
        Caption = 'Devolvidos Defeito'
        Color = 11967521
        DataField = 'devolvidodefeito'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 13
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox39: TDBCheckBox
        Left = 224
        Top = 211
        Width = 190
        Height = 17
        Caption = 'Devolvidos Outros'
        Color = 11967521
        DataField = 'devolvidooutros'
        DataSource = fdm.dsconfig
        ParentColor = False
        TabOrder = 14
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Compras'
      ImageIndex = 5
      object Label88: TLabel
        Left = 0
        Top = 139
        Width = 141
        Height = 13
        Caption = 'Ajustar a Entrada em at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCheckBox40: TDBCheckBox
        Left = 2
        Top = 23
        Width = 513
        Height = 17
        Caption = 
          'Pedir senha para fechar uma entrada que o valor dos itens n'#227'o co' +
          'nfere com o total'
        DataField = 'confereentrada'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup8: TDBRadioGroup
        Left = 1
        Top = 57
        Width = 512
        Height = 69
        Caption = 'Usar (no pedido de compra) o c'#243'digo interno + '
        Columns = 3
        DataField = 'imppedcompra'
        DataSource = fdm.dsconfig
        Items.Strings = (
          'Barras'
          'Original'
          'Fornecedor')
        TabOrder = 1
        Values.Strings = (
          'B'
          'O'
          'F')
      end
      object DBCheckBox46: TDBCheckBox
        Left = 2
        Top = 39
        Width = 513
        Height = 17
        Caption = 'Permitir fazer pedido de produto n'#227'o cadastrado'
        DataField = 'pedcad'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit46: TDBEdit
        Left = 148
        Top = 135
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ajusteentrada'
        DataSource = fdm.dsconfig
        TabOrder = 3
      end
      object DBCheckBox9: TDBCheckBox
        Left = 0
        Top = 158
        Width = 153
        Height = 17
        Caption = 'Entrada Simples'
        DataField = 'entsimp'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox56: TDBCheckBox
        Left = 0
        Top = 181
        Width = 205
        Height = 17
        Caption = 'Faz compra avulsa'
        DataField = 'compraavulsa'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox67: TDBCheckBox
        Left = 0
        Top = 205
        Width = 205
        Height = 17
        Caption = 'Entrada consignada'
        DataField = 'entradaconsignada'
        DataSource = fdm.dsconfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object Tabvenda: TTabSheet
      Caption = 'VENDA/OS'
      ImageIndex = 6
      object lpercent: TLabel
        Left = 522
        Top = 419
        Width = 63
        Height = 20
        Caption = 'Percent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pvalor: TGroupBox
        Left = 1
        Top = 397
        Width = 408
        Height = 105
        TabOrder = 0
        object Label38: TLabel
          Left = 5
          Top = 20
          Width = 37
          Height = 13
          Caption = '1 a 10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 70
          Top = 20
          Width = 44
          Height = 13
          Caption = '11 a 30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 135
          Top = 20
          Width = 53
          Height = 13
          Caption = '> 30 dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label41: TLabel
          Left = 6
          Top = 6
          Width = 103
          Height = 13
          Caption = 'Quanto ao n'#186' dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label42: TLabel
          Left = 4
          Top = 68
          Width = 45
          Height = 13
          Caption = 'At'#233' 400'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label43: TLabel
          Left = 97
          Top = 68
          Width = 78
          Height = 13
          Caption = 'De 400 a 500'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label44: TLabel
          Left = 5
          Top = 54
          Width = 92
          Height = 13
          Caption = 'Quanto ao valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label45: TLabel
          Left = 289
          Top = 67
          Width = 33
          Height = 13
          Caption = '> 600'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label46: TLabel
          Left = 196
          Top = 67
          Width = 78
          Height = 13
          Caption = 'De 500 a 600'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit14: TDBEdit
          Left = 6
          Top = 33
          Width = 64
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pz1a10'
          DataSource = fdm.dsconfig
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 70
          Top = 33
          Width = 64
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pz11a30'
          DataSource = fdm.dsconfig
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 135
          Top = 33
          Width = 61
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pza30'
          DataSource = fdm.dsconfig
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 4
          Top = 81
          Width = 88
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pz400'
          DataSource = fdm.dsconfig
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 97
          Top = 81
          Width = 92
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pz400a500'
          DataSource = fdm.dsconfig
          TabOrder = 4
        end
        object DBEdit19: TDBEdit
          Left = 289
          Top = 80
          Width = 92
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pza600'
          DataSource = fdm.dsconfig
          TabOrder = 5
        end
        object DBEdit20: TDBEdit
          Left = 196
          Top = 80
          Width = 88
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'pz500a600'
          DataSource = fdm.dsconfig
          TabOrder = 6
        end
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 301
        Width = 788
        Height = 94
        Caption = 'Percentagem e Prazo  para Devolu'#231#227'o sobre'
        TabOrder = 1
        object Label28: TLabel
          Left = 372
          Top = 12
          Width = 111
          Height = 13
          Caption = 'Venda Consignada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 372
          Top = 23
          Width = 33
          Height = 13
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 435
          Top = 23
          Width = 87
          Height = 13
          Caption = '% Devolver at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 5
          Top = 23
          Width = 33
          Height = 13
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 5
          Top = 12
          Width = 84
          Height = 13
          Caption = 'Venda Normal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 71
          Top = 23
          Width = 87
          Height = 13
          Caption = '% Devolver at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 192
          Top = 12
          Width = 114
          Height = 13
          Caption = 'Venda Promocional:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label34: TLabel
          Left = 192
          Top = 23
          Width = 33
          Height = 13
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label36: TLabel
          Left = 255
          Top = 23
          Width = 87
          Height = 13
          Caption = '% Devolver at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label49: TLabel
          Left = 554
          Top = 12
          Width = 34
          Height = 13
          Caption = 'Prova'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label48: TLabel
          Left = 554
          Top = 23
          Width = 33
          Height = 13
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit8: TDBEdit
          Left = 372
          Top = 37
          Width = 61
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'prazovendaconsignada'
          DataSource = fdm.dsconfig
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 433
          Top = 37
          Width = 94
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'percentvendaconsignada'
          DataSource = fdm.dsconfig
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 5
          Top = 37
          Width = 61
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'prazovendanormal'
          DataSource = fdm.dsconfig
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 68
          Top = 37
          Width = 94
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'percentvendanormal'
          DataSource = fdm.dsconfig
          TabOrder = 3
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 2
          Top = 62
          Width = 784
          Height = 30
          Align = alBottom
          Caption = 'A percentagem '#233' sobre o'
          Columns = 2
          DataField = 'percentdevolucao'
          DataSource = fdm.dsconfig
          Items.Strings = (
            'Valor'
            'Qtd P'#231)
          TabOrder = 4
          Values.Strings = (
            'V'
            'Q')
        end
        object DBEdit12: TDBEdit
          Left = 192
          Top = 37
          Width = 61
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'prazovendapromocional'
          DataSource = fdm.dsconfig
          TabOrder = 5
          Visible = False
        end
        object DBEdit13: TDBEdit
          Left = 253
          Top = 37
          Width = 94
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'percentvendapromocional'
          DataSource = fdm.dsconfig
          TabOrder = 6
          Visible = False
        end
        object DBEdit22: TDBEdit
          Left = 554
          Top = 37
          Width = 61
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'prova'
          DataSource = fdm.dsconfig
          TabOrder = 7
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 789
        Height = 242
        Caption = 'M'#243'dulos de Sa'#237'das'
        TabOrder = 2
        object Bevel15: TBevel
          Left = 431
          Top = 145
          Width = 358
          Height = 44
        end
        object Bevel14: TBevel
          Left = 431
          Top = 109
          Width = 358
          Height = 29
        end
        object lmesa: TLabel
          Left = 205
          Top = 118
          Width = 191
          Height = 13
          Caption = 'Mesa: Mudar Cor a cada        min'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label75: TLabel
          Left = 758
          Top = 119
          Width = 26
          Height = 13
          Caption = 'Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label74: TLabel
          Left = 645
          Top = 120
          Width = 80
          Height = 13
          Caption = '% c/ Pgto At'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label73: TLabel
          Left = 464
          Top = 120
          Width = 124
          Height = 13
          Caption = '% Para Venda '#192' Vista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 431
          Top = 102
          Width = 205
          Height = 13
          Caption = 'Desconto Autom'#225'tico Sobre Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label76: TLabel
          Left = 432
          Top = 87
          Width = 203
          Height = 13
          Caption = 'Venda Avulsa Acertar em         dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 433
          Top = 138
          Width = 228
          Height = 13
          Caption = 'Desconto Manual Sobre Total da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label80: TLabel
          Left = 437
          Top = 153
          Width = 97
          Height = 13
          Caption = 'Permitido At'#233' (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label81: TLabel
          Left = 564
          Top = 154
          Width = 185
          Height = 13
          Caption = 'Ou at'#233'  (%) perante esta SENHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label83: TLabel
          Left = 432
          Top = 192
          Width = 221
          Height = 13
          Caption = 'Senha de Desconto no Item da Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label85: TLabel
          Left = 132
          Top = 205
          Width = 150
          Height = 13
          Caption = 'Validade Or'#231'amento (dias)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label86: TLabel
          Left = 208
          Top = 187
          Width = 69
          Height = 13
          Caption = 'Percent ISS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 200
          Top = 170
          Width = 83
          Height = 13
          Caption = 'Cliente Balc'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label92: TLabel
          Left = 200
          Top = 134
          Width = 214
          Height = 13
          Caption = 'VrCouvert R$                    p/ pessoa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label99: TLabel
          Left = 480
          Top = 208
          Width = 172
          Height = 13
          Caption = 'Margem m'#237'nima para a venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object emesa: TDBEdit
          Left = 353
          Top = 118
          Width = 21
          Height = 15
          BevelInner = bvLowered
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'avisarmesa'
          DataSource = fdm.dsconfig
          TabOrder = 6
          Visible = False
        end
        object cpedidocliente: TDBCheckBox
          Left = 8
          Top = 11
          Width = 141
          Height = 17
          Caption = 'Pedido Cliente'
          DataField = 'pedido'
          DataSource = fdm.dsconfig
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = cpedidoclienteClick
        end
        object cos: TDBCheckBox
          Left = 8
          Top = 53
          Width = 133
          Height = 17
          Caption = 'Ordem de Servi'#231'o'
          DataField = 'os'
          DataSource = fdm.dsconfig
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = cosClick
        end
        object rbalcao: TDBCheckBox
          Left = 204
          Top = 11
          Width = 125
          Height = 17
          Caption = 'Venda Balc'#227'o'
          DataField = 'balcao'
          DataSource = fdm.dsconfig
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = rbalcaoClick
        end
        object Ccomissaovendedor: TDBCheckBox
          Left = 8
          Top = 24
          Width = 203
          Height = 17
          Caption = 'Calcular Comiss'#227'o'
          DataField = 'comissaovendedor'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object Ccomissaoservico: TDBCheckBox
          Left = 8
          Top = 66
          Width = 129
          Height = 17
          Caption = 'Calcular Comiss'#227'o'
          DataField = 'comissaoservico'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Visible = False
        end
        object rcomissaobalcao: TDBCheckBox
          Left = 204
          Top = 25
          Width = 129
          Height = 17
          HelpType = htKeyword
          Caption = 'Calcular Comiss'#227'o'
          DataField = 'comissaobalcao'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object rdescontobalcao: TDBCheckBox
          Left = 204
          Top = 66
          Width = 193
          Height = 17
          Caption = 'Desconto Item Balc'#227'o Ativo?'
          DataField = 'descontobalcao'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = ' '
        end
        object cmesa: TDBCheckBox
          Left = 204
          Top = 103
          Width = 133
          Height = 17
          Caption = 'Controle de Mesas'
          DataField = 'mesa'
          DataSource = fdm.dsconfig
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox5Click
        end
        object DBCheckBox26: TDBCheckBox
          Left = 8
          Top = 96
          Width = 153
          Height = 17
          Caption = 'Permite Alterar Vr Unit'
          DataField = 'Alteravrunit'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox28: TDBCheckBox
          Left = 8
          Top = 109
          Width = 153
          Height = 17
          Caption = 'Ativar leitor c. barras'
          DataField = 'leitorpedido'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox29: TDBCheckBox
          Left = 204
          Top = 51
          Width = 193
          Height = 17
          Caption = 'Permite apagar item'
          DataField = 'Apagaitembalcao'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = ' '
        end
        object DBCheckBox34: TDBCheckBox
          Left = 8
          Top = 123
          Width = 153
          Height = 17
          Caption = 'Controla Entrega?'
          DataField = 'entrega'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object cpp: TDBCheckBox
          Left = 8
          Top = 81
          Width = 169
          Height = 17
          Caption = 'Imprime Pe'#231'as Pendentes'
          DataField = 'pecapendente'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 432
          Top = 6
          Width = 193
          Height = 17
          Caption = 'Venda Consignada'
          DataField = 'consignada'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = ' '
        end
        object DBCheckBox25: TDBCheckBox
          Left = 432
          Top = 33
          Width = 245
          Height = 17
          Caption = 'Mostrar valor de custo na listagem'
          DataField = 'exibecustoproduto'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox35: TDBCheckBox
          Left = 432
          Top = 47
          Width = 205
          Height = 17
          Caption = 'Fecha troca com valor negativo'
          DataField = 'trocanegativa'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit34: TDBEdit
          Left = 727
          Top = 115
          Width = 26
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'descontoaprazoqtd'
          DataSource = fdm.dsconfig
          TabOrder = 21
        end
        object DBEdit33: TDBEdit
          Left = 615
          Top = 115
          Width = 26
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'descontoaprazo'
          DataSource = fdm.dsconfig
          TabOrder = 20
        end
        object DBEdit31: TDBEdit
          Left = 433
          Top = 115
          Width = 26
          Height = 21
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          DataField = 'descontoavista'
          DataSource = fdm.dsconfig
          TabOrder = 19
        end
        object DBEdit2: TDBEdit
          Left = 581
          Top = 88
          Width = 26
          Height = 13
          BevelEdges = [beLeft, beTop, beRight]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BorderStyle = bsNone
          DataField = 'avulsoprazo'
          DataSource = fdm.dsconfig
          TabOrder = 18
        end
        object DBCheckBox36: TDBCheckBox
          Left = 432
          Top = 19
          Width = 197
          Height = 17
          Caption = 'Prova'
          DataField = 'vendaprova'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit1: TDBEdit
          Left = 436
          Top = 167
          Width = 99
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'desconto'
          DataSource = fdm.dsconfig
          TabOrder = 23
        end
        object DBEdit40: TDBEdit
          Left = 563
          Top = 167
          Width = 64
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'desconto2'
          DataSource = fdm.dsconfig
          TabOrder = 24
        end
        object DBEdit41: TDBEdit
          Left = 632
          Top = 168
          Width = 117
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'senhadesconto'
          DataSource = fdm.dsconfig
          PasswordChar = '*'
          TabOrder = 25
        end
        object DBCheckBox38: TDBCheckBox
          Left = 432
          Top = 61
          Width = 205
          Height = 17
          Caption = 'Faz venda avulsa'
          DataField = 'vendaavulsa'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox16: TDBCheckBox
          Left = 204
          Top = 37
          Width = 129
          Height = 17
          HelpType = htKeyword
          Caption = 'Solicita Vendedor'
          DataField = 'vendedor'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox18: TDBCheckBox
          Left = 204
          Top = 80
          Width = 193
          Height = 17
          Caption = 'Imprime Mensagem Cupom'
          DataField = 'mensagem'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox42: TDBCheckBox
          Left = 432
          Top = 73
          Width = 281
          Height = 17
          Caption = 'Troca/Devolu'#231#227'o Autorizada Pedir Senha'
          DataField = 'trocaautorizada'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit43: TDBEdit
          Left = 656
          Top = 191
          Width = 93
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'senhadescontoitem'
          DataSource = fdm.dsconfig
          PasswordChar = '*'
          TabOrder = 29
        end
        object DBEdit44: TDBEdit
          Left = 284
          Top = 205
          Width = 93
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'validade'
          DataSource = fdm.dsconfig
          TabOrder = 30
        end
        object DBEdit45: TDBEdit
          Left = 284
          Top = 187
          Width = 68
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'percentiss'
          DataSource = fdm.dsconfig
          TabOrder = 31
        end
        object DBCheckBox45: TDBCheckBox
          Left = 8
          Top = 38
          Width = 129
          Height = 17
          Caption = 'Calcular Comiss'#227'o2'
          DataField = 'comissao2'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox50: TDBCheckBox
          Left = 8
          Top = 139
          Width = 161
          Height = 17
          Caption = 'Relat'#243'rio por N.F e ECF'
          DataField = 'tprelvd'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit49: TDBEdit
          Left = 284
          Top = 170
          Width = 68
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'codigobalcao'
          DataSource = fdm.dsconfig
          TabOrder = 34
        end
        object DBCheckBox57: TDBCheckBox
          Left = 8
          Top = 155
          Width = 161
          Height = 17
          Caption = 'Usar sistema caixa'
          DataField = 'siscaixa'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox58: TDBCheckBox
          Left = 8
          Top = 171
          Width = 161
          Height = 17
          Caption = 'Usar ISO9001'
          DataField = 'iso9001'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit51: TDBEdit
          Left = 284
          Top = 134
          Width = 68
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'vrcouvert'
          DataSource = fdm.dsconfig
          TabOrder = 37
        end
        object DBCheckBox60: TDBCheckBox
          Left = 8
          Top = 187
          Width = 146
          Height = 17
          Caption = 'Alterar forma de Pgto'
          DataField = 'perguntafecha'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 38
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox62: TDBCheckBox
          Left = 8
          Top = 203
          Width = 89
          Height = 17
          Caption = 'Loca'#231#227'o'
          DataField = 'locacao'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit53: TDBEdit
          Left = 656
          Top = 207
          Width = 93
          Height = 16
          BevelKind = bkSoft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'margemminima'
          DataSource = fdm.dsconfig
          TabOrder = 40
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 243
        Width = 405
        Height = 51
        Caption = 'Loclizar o produto por:'
        TabOrder = 3
        object DBCheckBox30: TDBCheckBox
          Left = 4
          Top = 16
          Width = 153
          Height = 17
          Caption = 'C'#243'digo Interno'
          DataField = 'VCInterno'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox31: TDBCheckBox
          Left = 220
          Top = 16
          Width = 153
          Height = 17
          Caption = 'C'#243'digo de Barras'
          DataField = 'VCBarras'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox32: TDBCheckBox
          Left = 4
          Top = 31
          Width = 153
          Height = 17
          Caption = 'C'#243'digo Original'
          DataField = 'VCOriginal'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox33: TDBCheckBox
          Left = 220
          Top = 31
          Width = 153
          Height = 17
          Caption = 'C'#243'digo Fornecedor'
          DataField = 'VCFornecedor'
          DataSource = fdm.dsconfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object epercent: TDBEdit
        Left = 523
        Top = 441
        Width = 61
        Height = 21
        BevelEdges = [beLeft, beTop, beRight]
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkSoft
        DataField = 'percent'
        DataSource = fdm.dsconfig
        TabOrder = 4
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 7
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 780
        Height = 217
        Align = alTop
        Caption = 'Recebimento'
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 16
          Width = 184
          Height = 13
          Caption = 'Movimentas o caixa nesta conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 6
          Top = 64
          Width = 172
          Height = 13
          Caption = 'Depositar cheque nesta conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 6
          Top = 112
          Width = 166
          Height = 13
          Caption = 'Depositar cart'#227'o nesta conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label50: TLabel
          Left = 549
          Top = 182
          Width = 231
          Height = 14
          Caption = 'Bloquear venda com              dias de atrazo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 543
          Top = 16
          Width = 81
          Height = 13
          Caption = 'Juro di'#225'rio (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 543
          Top = 85
          Width = 86
          Height = 13
          Caption = 'Car'#234'ncia (dias)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 543
          Top = 130
          Width = 92
          Height = 13
          Caption = 'Desconto Di'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label89: TLabel
          Left = 547
          Top = 56
          Width = 157
          Height = 14
          Caption = 'Ap'#243's             dias mudar para'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit23: TDBEdit
          Left = 664
          Top = 179
          Width = 29
          Height = 21
          DataField = 'diaatrazo'
          DataSource = fdm.dsconfig
          TabOrder = 0
        end
        object DBCheckBox5: TDBCheckBox
          Left = 316
          Top = 81
          Width = 220
          Height = 17
          Caption = 'Baixar os cheques automaticamente'
          Color = clBtnFace
          DataField = 'baixarconta'
          DataSource = fdm.dsconfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 317
          Top = 33
          Width = 183
          Height = 17
          Caption = 'Recebe tickts/vale transporte'
          DataField = 'tickts'
          DataSource = fdm.dsconfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit6: TDBEdit
          Left = 543
          Top = 27
          Width = 94
          Height = 21
          DataField = 'juro'
          DataSource = fdm.dsconfig
          TabOrder = 3
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 643
          Top = 126
          Width = 135
          Height = 38
          Columns = 2
          DataField = 'calculadesconto'
          DataSource = fdm.dsconfig
          Items.Strings = (
            'Manual'
            'Auto')
          TabOrder = 4
          Values.Strings = (
            'M'
            'A')
        end
        object DBEdit7: TDBEdit
          Left = 543
          Top = 96
          Width = 94
          Height = 21
          DataField = 'carencia'
          DataSource = fdm.dsconfig
          TabOrder = 5
        end
        object DBEdit21: TDBEdit
          Left = 543
          Top = 144
          Width = 94
          Height = 21
          DataField = 'descontodiario'
          DataSource = fdm.dsconfig
          TabOrder = 6
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 643
          Top = 11
          Width = 130
          Height = 38
          Columns = 2
          DataField = 'calculajuro'
          DataSource = fdm.dsconfig
          Items.Strings = (
            'Manual'
            'Auto')
          TabOrder = 7
          Values.Strings = (
            'M'
            'A')
        end
        object DBCheckBox48: TDBCheckBox
          Left = 316
          Top = 128
          Width = 220
          Height = 17
          Caption = 'Baixar os cart'#245'es automaticamente'
          Color = clBtnFace
          DataField = 'baixarcontaC'
          DataSource = fdm.dsconfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit47: TDBEdit
          Left = 579
          Top = 56
          Width = 31
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'djuro'
          DataSource = fdm.dsconfig
          TabOrder = 9
        end
        object DBEdit48: TDBEdit
          Left = 709
          Top = 56
          Width = 62
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkSoft
          BorderStyle = bsNone
          DataField = 'jurospc'
          DataSource = fdm.dsconfig
          TabOrder = 10
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 6
          Top = 29
          Width = 305
          Height = 21
          DataField = 'conta'
          DataSource = fdm.dsconfig
          DropDownRows = 40
          DropDownWidth = 400
          KeyField = 'chave'
          ListField = 'descricao;chave'
          ListSource = dsconta
          TabOrder = 11
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 6
          Top = 77
          Width = 305
          Height = 21
          DataField = 'contacheque'
          DataSource = fdm.dsconfig
          DropDownRows = 40
          DropDownWidth = 400
          KeyField = 'chave'
          ListField = 'descricao;chave'
          ListSource = dsconta
          TabOrder = 12
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 6
          Top = 125
          Width = 305
          Height = 21
          DataField = 'contacartao'
          DataSource = fdm.dsconfig
          DropDownRows = 40
          DropDownWidth = 400
          KeyField = 'chave'
          ListField = 'descricao;chave'
          ListSource = dsconta
          TabOrder = 13
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 264
        Width = 777
        Height = 121
        Caption = 'Pagamento'
        TabOrder = 1
        object Label98: TLabel
          Left = 6
          Top = 24
          Width = 151
          Height = 13
          Caption = 'Pagar cheque nesta conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label97: TLabel
          Left = 6
          Top = 64
          Width = 145
          Height = 13
          Caption = 'Pagar cart'#227'o nesta conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 6
          Top = 37
          Width = 305
          Height = 21
          DataField = 'contachequep'
          DataSource = fdm.dsconfig
          DropDownRows = 20
          DropDownWidth = 400
          KeyField = 'chave'
          ListField = 'descricao;chave'
          ListSource = dsconta
          TabOrder = 0
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 6
          Top = 77
          Width = 305
          Height = 21
          DataField = 'contacartaop'
          DataSource = fdm.dsconfig
          DropDownRows = 20
          DropDownWidth = 400
          KeyField = 'chave'
          ListField = 'descricao;chave'
          ListSource = dsconta
          TabOrder = 1
        end
        object DBCheckBox64: TDBCheckBox
          Left = 316
          Top = 38
          Width = 220
          Height = 17
          Caption = 'Baixar os cheques automaticamente'
          Color = clBtnFace
          DataField = 'baixarcontap'
          DataSource = fdm.dsconfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox65: TDBCheckBox
          Left = 316
          Top = 79
          Width = 220
          Height = 17
          Caption = 'Baixar os cart'#245'es automaticamente'
          Color = clBtnFace
          DataField = 'baixarcontaCp'
          DataSource = fdm.dsconfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  object sconta: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select chave, descricao from tbconta order by descricao')
    Params = <>
    Left = 104
    Top = 352
  end
  object dsconta: TDataSource
    DataSet = sconta
    Left = 164
    Top = 358
  end
end
