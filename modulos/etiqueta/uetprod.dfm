object fetqprod: Tfetqprod
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
  Caption = 'ETIQUETAS'
  Color = 15790320
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 26
    Width = 1024
    Height = 686
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Imprimir'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 56
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = 15790320
        TabOrder = 0
        object Label2: TLabel
          Left = 14
          Top = 37
          Width = 139
          Height = 14
          Alignment = taRightJustify
          Caption = 'Localizar/ Inserir Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = Label2Click
        end
        object Label11: TLabel
          Left = 2
          Top = 10
          Width = 50
          Height = 14
          Alignment = taRightJustify
          Caption = 'Validade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = Label2Click
        end
        object Label12: TLabel
          Left = 134
          Top = 10
          Width = 28
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lote:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = Label2Click
        end
        object Label13: TLabel
          Left = 268
          Top = 10
          Width = 178
          Height = 14
          Caption = 'Come'#231'ar Imprimir na Etiqueta n'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = Label2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 492
          Top = 10
          Width = 105
          Height = 22
          Caption = 'Dividir o pre'#231'o em'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object edescricao: TEdit
          Left = 160
          Top = 33
          Width = 630
          Height = 23
          BevelInner = bvNone
          BevelKind = bkFlat
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = edescricaoChange
          OnEnter = edescricaoEnter
          OnExit = edescricaoExit
          OnKeyDown = edescricaoKeyDown
        end
        object eval: TEdit
          Left = 59
          Top = 10
          Width = 65
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15857144
          ParentBiDiMode = False
          TabOrder = 0
        end
        object elote: TEdit
          Left = 166
          Top = 10
          Width = 91
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15857144
          ParentBiDiMode = False
          TabOrder = 1
        end
        object eini: TSpinEdit
          Left = 439
          Top = 10
          Width = 45
          Height = 22
          MaxValue = 1000
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object rmargem: TCheckBox
          Left = 608
          Top = 10
          Width = 104
          Height = 17
          Caption = 'Folha cortada'
          Color = 9073514
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object argox: TCheckBox
          Left = 724
          Top = 10
          Width = 60
          Height = 17
          Caption = 'Argox'
          Color = 9073514
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
      end
      object grade: TDBGrid
        Left = 0
        Top = 56
        Width = 1016
        Height = 602
        Align = alClient
        DataSource = ds
        FixedColor = 9073514
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnTitleClick = gradeTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'qtd'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Qtd Etiq'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Validade'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configurar'
      ImageIndex = 1
      object Bevel1: TBevel
        Left = 0
        Top = 447
        Width = 383
        Height = 42
      end
      object Label8: TLabel
        Left = 0
        Top = 430
        Width = 72
        Height = 11
        Caption = 'Texto Rodap'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Bevel6: TBevel
        Left = 0
        Top = 8
        Width = 233
        Height = 57
      end
      object Label3: TLabel
        Left = 572
        Top = -15
        Width = 147
        Height = 13
        Caption = 'ETIQUETA C'#211'D BARRAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 473
        Width = 61
        Height = 11
        Caption = 'Tipo Barras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel7: TBevel
        Left = 235
        Top = 8
        Width = 149
        Height = 58
      end
      object Label17: TLabel
        Left = 1
        Top = 11
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Altura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 1
        Top = 27
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Largura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 1
        Top = -2
        Width = 63
        Height = 13
        Caption = 'Papel (mm)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 290
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Altura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 260
        Top = 29
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Colunas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 296
        Top = 18
        Width = 21
        Height = 10
        Caption = 'Pixels'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 1
        Top = 43
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Esquerda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 113
        Top = 11
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Direita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 113
        Top = 27
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Topo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 113
        Top = 43
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rodap'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 236
        Top = 45
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Espa'#231'o Coluna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 114
        Top = 81
        Width = 32
        Height = 11
        Caption = 'Altura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 149
        Top = 81
        Width = 58
        Height = 11
        Caption = 'H. Posi'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 208
        Top = 81
        Width = 57
        Height = 11
        Caption = 'V. Posi'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 266
        Top = 81
        Width = 53
        Height = 11
        Caption = 'Tm. Fonte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 325
        Top = 81
        Width = 9
        Height = 11
        Caption = 'N'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 337
        Top = 82
        Width = 20
        Height = 10
        Caption = 'Cod'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 236
        Top = -2
        Width = 48
        Height = 13
        Caption = 'Etiqueta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 82
        Top = 81
        Width = 31
        Height = 11
        Caption = 'Comp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object SpeedButton1: TSpeedButton
        Left = 388
        Top = 0
        Width = 73
        Height = 33
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -37
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 464
        Top = 0
        Width = 73
        Height = 33
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -37
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Label9: TLabel
        Left = 541
        Top = -1
        Width = 115
        Height = 11
        Caption = 'Tabela de Codifica'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 541
        Top = 9
        Width = 138
        Height = 11
        Caption = 'A=Nulo, Z=0, U=1, D=2, T=3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 542
        Top = 20
        Width = 148
        Height = 11
        Caption = 'Q=4, C=5, S=6, 7=7, O=8, N=9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 359
        Top = 82
        Width = 25
        Height = 10
        Caption = 'Float'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object painel: TPanel
        Left = 400
        Top = 96
        Width = 193
        Height = 9
        BevelInner = bvRaised
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clWhite
        TabOrder = 131
        object barras: TRLDBBarcode
          Left = 32
          Top = 24
          Width = 30
          Height = 71
          BarcodeType = bcCodaBar
          DataField = 'codigobarras'
          DataSource = dsitem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlBottom
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          ParentFont = False
          Ratio = 2.250000000000000000
          Transparent = False
        end
        object lrodape: TRLDBMemo
          Left = 0
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'textorodape'
          DataSource = dsg
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lempresal: TRLImage
          Left = 64
          Top = -8
          Width = 130
          Height = 43
          Center = True
          Stretch = True
          Transparent = False
        end
        object lempresa: TRLLabel
          Left = 48
          Top = 0
          Width = 146
          Height = 15
          HelpType = htKeyword
          Alignment = taCenter
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object ldata: TRLDBText
          Left = 40
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          BeforePrint = ldataBeforePrint
        end
        object lcodigo: TRLDBText
          Left = 56
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'codigo'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lcodigofornecedor: TRLDBText
          Left = 89
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'codigofornecedor'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lcodigooriginal: TRLDBText
          Left = 105
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'codigooriginal'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lcodigobarras: TRLDBText
          Left = 113
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'codigobarras'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lfabricante: TRLDBText
          Left = 145
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'fabricante'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lvrunit: TRLDBText
          Left = 161
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'vrunit'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lvrvarejo: TRLDBText
          Left = 169
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'vrvenda'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lvratacado: TRLDBText
          Left = 185
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'vratacado'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object lnetiqueta: TRLDBText
          Left = 201
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'netiqueta'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object llote: TRLDBText
          Left = 209
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'lote'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = 'Lot '
        end
        object lvalidade: TRLDBText
          Left = 225
          Top = 0
          Width = 148
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'Validade'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = 'Val.: # dias'
        end
        object ldescricao: TRLDBMemo
          Left = 0
          Top = -1
          Width = 148
          Height = 15
          Alignment = taCenter
          DataField = 'descricao'
          DataSource = dsitem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
      end
      object rtipocod: TDBRadioGroup
        Left = 265
        Top = 448
        Width = 115
        Height = 40
        Hint = '0'
        HelpType = htKeyword
        Caption = 'Usar o C'#243'digo'
        Columns = 2
        DataField = 'tipocod'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Items.Strings = (
          'Barras'
          'Interno'
          'Original'
          'Fornecedor')
        ParentFont = False
        TabOrder = 127
        Values.Strings = (
          'codigobarras'
          'codigo'
          'codigooriginal'
          'codigofornecedor')
      end
      object rimpempresaL: TDBCheckBox
        Left = 0
        Top = 387
        Width = 49
        Height = 16
        HelpType = htKeyword
        Caption = 'Logo'
        DataField = 'impempresaL'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 110
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object etamanhoempresaL: TDBEdit
        Left = 81
        Top = 387
        Width = 32
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tamanhoempresaL'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 111
        OnExit = ealturaExit
      end
      object ehempresaL: TDBEdit
        Left = 149
        Top = 387
        Width = 60
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'hempresaL'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 113
        OnExit = ealturaExit
      end
      object evempresaL: TDBEdit
        Left = 208
        Top = 387
        Width = 57
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vempresaL'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 114
        OnExit = ealturaExit
      end
      object rimpempresa: TDBCheckBox
        Left = 0
        Top = 366
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'Empresa'
        DataField = 'impempresa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 103
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rnegritoempresa: TDBCheckBox
        Left = 323
        Top = 366
        Width = 15
        Height = 17
        HelpType = htKeyword
        Caption = '          '
        DataField = 'negritoempresa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 109
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rnegritorodape: TDBCheckBox
        Left = 323
        Top = 409
        Width = 15
        Height = 17
        HelpType = htKeyword
        Caption = '          '
        DataField = 'negritorodape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 121
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rimprodape: TDBCheckBox
        Left = 0
        Top = 409
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'Rodap'#233
        DataField = 'improdape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 115
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object etamanhoempresa: TDBEdit
        Left = 81
        Top = 366
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tamanhoempresa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 104
        OnExit = ealturaExit
      end
      object ehempresa: TDBEdit
        Left = 149
        Top = 366
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'hempresa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 106
        OnExit = ealturaExit
      end
      object evempresa: TDBEdit
        Left = 208
        Top = 366
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vempresa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 107
        OnExit = ealturaExit
      end
      object efonteempresa: TDBEdit
        Left = 266
        Top = 366
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fonteempresa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 108
        OnExit = ealturaExit
      end
      object etextorodape: TDBMemo
        Left = 81
        Top = 426
        Width = 256
        Height = 19
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'textorodape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 122
        OnEnter = etextorodapeEnter
        OnExit = etextorodapeExit
      end
      object qetiqueta: TRLReport
        Left = 386
        Top = 35
        Width = 794
        Height = 1123
        DataSource = dsitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 0.000000000000000000
        Margins.TopMargin = 0.000000000000000000
        Margins.RightMargin = 0.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 297.000000000000000000
        object qcoluna: TRLDetailGrid
          Left = 0
          Top = 0
          Width = 794
          Height = 190
          AutoExpand = False
          ColCount = 5
          ColSpacing = 1.000000000000000000
          BeforePrint = qcolunaBeforePrint
        end
      end
      object combo: TDBComboBox
        Left = 80
        Top = 470
        Width = 188
        Height = 19
        Style = csOwnerDrawVariable
        BevelInner = bvLowered
        BevelKind = bkSoft
        DataField = 'codbar'
        DataSource = dsg
        ItemHeight = 13
        Items.Strings = (
          'bcCodaBar'
          'bcCode128A'
          'bcCode128B'
          'bcCode128C'
          'bcCode2OF5Industry'
          'bcCode2OF5Interleaved'
          'bcCode2OF5Matrix'
          'bcCode39'
          'bcCode39Extended'
          'bcCode93'
          'bcCode93Extended'
          'bcEAN128A'
          'bcEAN128B'
          'bcEAN128C'
          'bcEAN13'
          'bcEAN8'
          'bcMSI'
          'bcPostNet'
          'bcUPC_A'
          'bcUPC_E0'
          'bcUPC_E1'
          'bcUPC_Supp2'
          'bcUPC_Supp5')
        TabOrder = 128
        OnChange = comboChange
      end
      object evbarra: TDBEdit
        Left = 208
        Top = 453
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vbarra'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 126
        OnExit = ealturaExit
      end
      object ehbarra: TDBEdit
        Left = 149
        Top = 453
        Width = 60
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'hbarra'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 125
        OnExit = ealturaExit
      end
      object ealturabarra: TDBEdit
        Left = 113
        Top = 453
        Width = 32
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'alturabarra'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 124
        OnExit = ealturaExit
      end
      object eespacocoluna: TDBEdit
        Left = 326
        Top = 46
        Width = 53
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'espacocoluna'
        DataSource = dsg
        TabOrder = 8
        OnExit = ealturaExit
      end
      object eqtdcoluna: TDBEdit
        Left = 326
        Top = 28
        Width = 53
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'qtdcolona'
        DataSource = dsg
        TabOrder = 7
        OnExit = ealturaExit
      end
      object ealturaE: TDBEdit
        Left = 326
        Top = 10
        Width = 53
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'alturaE'
        DataSource = dsg
        TabOrder = 6
        OnExit = ealturaExit
      end
      object erodape: TDBEdit
        Left = 171
        Top = 43
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'rodape'
        DataSource = dsg
        TabOrder = 5
        OnExit = ealturaExit
      end
      object etopo: TDBEdit
        Left = 171
        Top = 27
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'topo'
        DataSource = dsg
        TabOrder = 4
        OnExit = ealturaExit
      end
      object edireita: TDBEdit
        Left = 171
        Top = 11
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'direita'
        DataSource = dsg
        TabOrder = 3
        OnExit = ealturaExit
      end
      object eesquerda: TDBEdit
        Left = 59
        Top = 43
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'esquerda'
        DataSource = dsg
        TabOrder = 2
        OnExit = ealturaExit
      end
      object elargura: TDBEdit
        Left = 59
        Top = 27
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'largura'
        DataSource = dsg
        TabOrder = 1
        OnExit = ealturaExit
      end
      object ealtura: TDBEdit
        Left = 59
        Top = 11
        Width = 57
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'altura'
        DataSource = dsg
        TabOrder = 0
        OnExit = ealturaExit
      end
      object Rimpbarra: TDBCheckBox
        Left = 0
        Top = 448
        Width = 77
        Height = 12
        HelpType = htKeyword
        Caption = 'C'#243'd Barras'
        DataField = 'impbarra'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 123
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rdata: TDBCheckBox
        Left = 0
        Top = 93
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'Data'
        DataField = 'data'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rcodigo: TDBCheckBox
        Left = 0
        Top = 114
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'C'#243'd Int'
        DataField = 'codigo'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rcodigooriginal: TDBCheckBox
        Left = 0
        Top = 156
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'C'#243'd Ori'
        DataField = 'codigooriginal'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rcodigofornecedor: TDBCheckBox
        Left = 0
        Top = 135
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'C'#243'd For'
        DataField = 'codigofornecedor'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rdescricao: TDBCheckBox
        Left = 0
        Top = 198
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'Descri'#231#227'o'
        DataField = 'descricao'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 44
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rcodigobarras: TDBCheckBox
        Left = 0
        Top = 177
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'N'#186' C'#243'd Bar'
        DataField = 'codigobarras'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 37
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit75: TDBEdit
        Left = 81
        Top = 93
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'datat'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnExit = ealturaExit
      end
      object DBEdit76: TDBEdit
        Left = 149
        Top = 93
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'datah'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnExit = ealturaExit
      end
      object DBEdit77: TDBEdit
        Left = 208
        Top = 93
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'datav'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnExit = ealturaExit
      end
      object DBEdit78: TDBEdit
        Left = 266
        Top = 93
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dataF'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnExit = ealturaExit
      end
      object rdataN: TDBCheckBox
        Left = 323
        Top = 91
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'dataN'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit79: TDBEdit
        Left = 81
        Top = 114
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigot'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnExit = ealturaExit
      end
      object DBEdit80: TDBEdit
        Left = 149
        Top = 114
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigoh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnExit = ealturaExit
      end
      object DBEdit81: TDBEdit
        Left = 208
        Top = 114
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigov'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        OnExit = ealturaExit
      end
      object DBEdit82: TDBEdit
        Left = 266
        Top = 114
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigof'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        OnExit = ealturaExit
      end
      object rcodigon: TDBCheckBox
        Left = 323
        Top = 114
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'codigon'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit83: TDBEdit
        Left = 81
        Top = 135
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigofornecedort'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
        OnExit = ealturaExit
      end
      object DBEdit84: TDBEdit
        Left = 149
        Top = 135
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigofornecedorh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
        OnExit = ealturaExit
      end
      object DBEdit85: TDBEdit
        Left = 208
        Top = 135
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigofornecedorv'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
        OnExit = ealturaExit
      end
      object DBEdit86: TDBEdit
        Left = 266
        Top = 135
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigofornecedorf'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
        OnExit = ealturaExit
      end
      object rcodigofornecedorn: TDBCheckBox
        Left = 323
        Top = 136
        Width = 15
        Height = 13
        HelpType = htKeyword
        Caption = '          '
        DataField = 'codigofornecedorn'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit87: TDBEdit
        Left = 81
        Top = 156
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigooriginalt'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
        OnExit = ealturaExit
      end
      object DBEdit88: TDBEdit
        Left = 149
        Top = 156
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigooriginalh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
        OnExit = ealturaExit
      end
      object DBEdit89: TDBEdit
        Left = 208
        Top = 156
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigooriginalv'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
        OnExit = ealturaExit
      end
      object DBEdit90: TDBEdit
        Left = 266
        Top = 156
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigooriginalf'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 35
        OnExit = ealturaExit
      end
      object rcodigooriginaln: TDBCheckBox
        Left = 323
        Top = 156
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'codigooriginaln'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit91: TDBEdit
        Left = 81
        Top = 177
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigobarrast'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 38
        OnExit = ealturaExit
      end
      object DBEdit92: TDBEdit
        Left = 149
        Top = 177
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigobarrash'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 40
        OnExit = ealturaExit
      end
      object DBEdit93: TDBEdit
        Left = 208
        Top = 177
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigobarrasv'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 41
        OnExit = ealturaExit
      end
      object DBEdit94: TDBEdit
        Left = 266
        Top = 177
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigobarrasf'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 42
        OnExit = ealturaExit
      end
      object rcodigobarran: TDBCheckBox
        Left = 323
        Top = 177
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'codigobarrasn'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 43
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit95: TDBEdit
        Left = 81
        Top = 198
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricaoT'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 45
        OnExit = ealturaExit
      end
      object DBEdit96: TDBEdit
        Left = 149
        Top = 198
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricaoh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 47
        OnExit = ealturaExit
      end
      object DBEdit97: TDBEdit
        Left = 208
        Top = 198
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricaov'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 48
        OnExit = ealturaExit
      end
      object DBEdit98: TDBEdit
        Left = 266
        Top = 198
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricaof'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 49
        OnExit = ealturaExit
      end
      object rdescricaon: TDBCheckBox
        Left = 323
        Top = 198
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'descricaon'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 50
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvrunit: TDBCheckBox
        Left = 0
        Top = 240
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'VrComp'
        DataField = 'vrunit'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 58
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvrvenda: TDBCheckBox
        Left = 0
        Top = 261
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'VrVenda'
        DataField = 'vrvarejo'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 66
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rnetiqueta: TDBCheckBox
        Left = 0
        Top = 303
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'N'#186' Etiq'
        DataField = 'netiqueta'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 82
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvratacado: TDBCheckBox
        Left = 0
        Top = 282
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'VrAtacado'
        DataField = 'vratacado'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 74
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvalidade: TDBCheckBox
        Left = 0
        Top = 345
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'Validade'
        DataField = 'Validade'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 96
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rlote: TDBCheckBox
        Left = 0
        Top = 324
        Width = 77
        Height = 15
        HelpType = htKeyword
        Caption = 'Lote'
        DataField = 'lote'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 89
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit99: TDBEdit
        Left = 81
        Top = 240
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunitt'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 59
        OnExit = ealturaExit
      end
      object DBEdit100: TDBEdit
        Left = 149
        Top = 240
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunith'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 61
        OnExit = ealturaExit
      end
      object DBEdit101: TDBEdit
        Left = 208
        Top = 240
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunitv'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 62
        OnExit = ealturaExit
      end
      object DBEdit102: TDBEdit
        Left = 266
        Top = 240
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunitf'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 63
        OnExit = ealturaExit
      end
      object rvrunitn: TDBCheckBox
        Left = 323
        Top = 240
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vrunitn'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 64
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvrvarejon: TDBCheckBox
        Left = 323
        Top = 261
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vrvarejon'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 72
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvratacadon: TDBCheckBox
        Left = 323
        Top = 282
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vratacadon'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 80
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit111: TDBEdit
        Left = 81
        Top = 303
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'netiquetat'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 83
        OnExit = ealturaExit
      end
      object DBEdit112: TDBEdit
        Left = 149
        Top = 303
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'netiquetah'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 85
        OnExit = ealturaExit
      end
      object DBEdit113: TDBEdit
        Left = 208
        Top = 303
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'netiquetav'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 86
        OnExit = ealturaExit
      end
      object DBEdit114: TDBEdit
        Left = 266
        Top = 303
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'netiquetaf'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 87
        OnExit = ealturaExit
      end
      object rnetiquetan: TDBCheckBox
        Left = 323
        Top = 303
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'netiquetan'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 88
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit115: TDBEdit
        Left = 81
        Top = 324
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'lotet'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 90
        OnExit = ealturaExit
      end
      object DBEdit116: TDBEdit
        Left = 149
        Top = 324
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'loteh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 92
        OnExit = ealturaExit
      end
      object DBEdit117: TDBEdit
        Left = 208
        Top = 324
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'lotev'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 93
        OnExit = ealturaExit
      end
      object DBEdit118: TDBEdit
        Left = 266
        Top = 324
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'lotef'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 94
        OnExit = ealturaExit
      end
      object rloten: TDBCheckBox
        Left = 323
        Top = 324
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'loten'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 95
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rValidaden: TDBCheckBox
        Left = 323
        Top = 345
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'Validaden'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 102
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvrunite: TDBCheckBox
        Left = 339
        Top = 240
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vrunite'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 65
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvrvarejoe: TDBCheckBox
        Left = 339
        Top = 261
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vrvarejoe'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 73
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvratacadoe: TDBCheckBox
        Left = 339
        Top = 282
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vratacadoe'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 81
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit119: TDBEdit
        Left = 81
        Top = 345
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Validadet'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 97
        OnExit = ealturaExit
      end
      object DBEdit120: TDBEdit
        Left = 149
        Top = 345
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Validadeh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 99
        OnExit = ealturaExit
      end
      object DBEdit121: TDBEdit
        Left = 208
        Top = 345
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Validadev'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 100
        OnExit = ealturaExit
      end
      object DBEdit122: TDBEdit
        Left = 266
        Top = 345
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Validadef'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 101
        OnExit = ealturaExit
      end
      object rfabricante: TDBCheckBox
        Left = 0
        Top = 219
        Width = 77
        Height = 13
        HelpType = htKeyword
        Caption = 'Fornecedor'
        DataField = 'fabricante'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 51
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit1: TDBEdit
        Left = 81
        Top = 219
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fabricantet'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 52
        OnExit = ealturaExit
      end
      object DBEdit2: TDBEdit
        Left = 149
        Top = 219
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fabricanteh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 54
        OnExit = ealturaExit
      end
      object DBEdit3: TDBEdit
        Left = 208
        Top = 219
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fabricantev'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 55
        OnExit = ealturaExit
      end
      object DBEdit4: TDBEdit
        Left = 266
        Top = 219
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fabricantef'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 56
        OnExit = ealturaExit
      end
      object rfabricanten: TDBCheckBox
        Left = 323
        Top = 219
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'fabricanten'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 57
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object DBEdit103: TDBEdit
        Left = 81
        Top = 261
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvarejot'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 67
        OnExit = ealturaExit
      end
      object DBEdit104: TDBEdit
        Left = 149
        Top = 261
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvarejoh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 69
        OnExit = ealturaExit
      end
      object DBEdit105: TDBEdit
        Left = 208
        Top = 261
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvarejov'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 70
        OnExit = ealturaExit
      end
      object DBEdit106: TDBEdit
        Left = 266
        Top = 261
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvarejof'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 71
        OnExit = ealturaExit
      end
      object DBEdit107: TDBEdit
        Left = 81
        Top = 282
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacadot'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 75
        OnExit = ealturaExit
      end
      object DBEdit108: TDBEdit
        Left = 149
        Top = 282
        Width = 60
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacadoh'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 77
        OnExit = ealturaExit
      end
      object DBEdit109: TDBEdit
        Left = 208
        Top = 282
        Width = 57
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacadov'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 78
        OnExit = ealturaExit
      end
      object DBEdit110: TDBEdit
        Left = 266
        Top = 282
        Width = 54
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacadof'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 79
        OnExit = ealturaExit
      end
      object etamanhorodape: TDBEdit
        Left = 81
        Top = 409
        Width = 32
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tamanhorodape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 116
        OnExit = ealturaExit
      end
      object ehrodape: TDBEdit
        Left = 149
        Top = 409
        Width = 60
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'hrodape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 118
        OnExit = ealturaExit
      end
      object evrodape: TDBEdit
        Left = 208
        Top = 409
        Width = 57
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrodape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 119
        OnExit = ealturaExit
      end
      object efonterodape: TDBEdit
        Left = 266
        Top = 409
        Width = 54
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fonterodape'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 120
        OnExit = ealturaExit
      end
      object StaticText3: TStaticText
        Left = 0
        Top = 68
        Width = 384
        Height = 6
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        Color = 9073514
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 129
      end
      object DBEdit5: TDBEdit
        Left = 115
        Top = 93
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dataa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnExit = ealturaExit
      end
      object DBEdit6: TDBEdit
        Left = 115
        Top = 114
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigoa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        OnExit = ealturaExit
      end
      object DBEdit7: TDBEdit
        Left = 115
        Top = 135
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigofornecedora'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
        OnExit = ealturaExit
      end
      object DBEdit8: TDBEdit
        Left = 115
        Top = 156
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigooriginala'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 32
        OnExit = ealturaExit
      end
      object DBEdit9: TDBEdit
        Left = 115
        Top = 177
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigobarrasa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 39
        OnExit = ealturaExit
      end
      object DBEdit10: TDBEdit
        Left = 115
        Top = 198
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricaoa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 46
        OnExit = ealturaExit
      end
      object DBEdit11: TDBEdit
        Left = 115
        Top = 219
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fabricantea'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 53
        OnExit = ealturaExit
      end
      object DBEdit12: TDBEdit
        Left = 115
        Top = 387
        Width = 32
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tamanhoempresaLa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 112
        OnExit = ealturaExit
      end
      object DBEdit13: TDBEdit
        Left = 115
        Top = 366
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tamanhoempresaa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 105
        OnExit = ealturaExit
      end
      object DBEdit14: TDBEdit
        Left = 115
        Top = 240
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunita'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 60
        OnExit = ealturaExit
      end
      object DBEdit15: TDBEdit
        Left = 115
        Top = 303
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'netiquetaa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 84
        OnExit = ealturaExit
      end
      object DBEdit16: TDBEdit
        Left = 115
        Top = 324
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'lotea'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 91
        OnExit = ealturaExit
      end
      object DBEdit17: TDBEdit
        Left = 115
        Top = 345
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Validadea'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 98
        OnExit = ealturaExit
      end
      object DBEdit18: TDBEdit
        Left = 115
        Top = 261
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvarejoa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 68
        OnExit = ealturaExit
      end
      object DBEdit19: TDBEdit
        Left = 115
        Top = 282
        Width = 32
        Height = 15
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacadoa'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 76
        OnExit = ealturaExit
      end
      object DBEdit20: TDBEdit
        Left = 115
        Top = 409
        Width = 32
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tamanhorodapea'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 117
        OnExit = ealturaExit
      end
      object rvrunitf: TDBCheckBox
        Left = 355
        Top = 240
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vrunitf_'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 132
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvrvarejof: TDBCheckBox
        Left = 355
        Top = 261
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vrvarejof_'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 133
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object rvratacadof: TDBCheckBox
        Left = 355
        Top = 282
        Width = 15
        Height = 18
        HelpType = htKeyword
        Caption = '          '
        DataField = 'vratacadof_'
        DataSource = dsg
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 134
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = rdataClick
      end
      object tpcod: TCheckBox
        Left = 1
        Top = 460
        Width = 74
        Height = 12
        Caption = 'N'#250'mero?'
        TabOrder = 135
      end
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 6
    Width = 1024
    Height = 14
    Cursor = crHandPoint
    Align = alTop
    AllowDelete = False
    AllowInsert = False
    ColCount = 10
    DataSource = dsg
    PanelHeight = 14
    PanelWidth = 100
    TabOrder = 1
    RowCount = 1
    SelectedColor = 13759228
    OnClick = DBCtrlGrid1Click
    object DBText1: TDBText
      Left = 0
      Top = 0
      Width = 100
      Height = 14
      Cursor = crHandPoint
      Align = alClient
      Alignment = taCenter
      Color = 9073514
      DataField = 'nome'
      DataSource = dsg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 1024
    Height = 6
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    BevelKind = bkFlat
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 0
    Top = 20
    Width = 1024
    Height = 6
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    BevelKind = bkFlat
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object btnnovo: TBitBtn
    Left = 338
    Top = 26
    Width = 126
    Height = 19
    Caption = 'Criar Novo Padr'#227'o'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnnovoClick
  end
  object btndeletar: TBitBtn
    Left = 578
    Top = 26
    Width = 99
    Height = 19
    Caption = 'Deletar Padr'#227'o'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btndeletarClick
  end
  object btnimp: TBitBtn
    Left = 679
    Top = 26
    Width = 114
    Height = 19
    Caption = 'Visualizar/Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnimpClick
  end
  object btnalterar: TBitBtn
    Left = 469
    Top = 26
    Width = 104
    Height = 19
    Caption = 'Alterar o Nome'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnalterarClick
  end
  object btndelitem: TBitBtn
    Left = 136
    Top = 26
    Width = 99
    Height = 19
    Caption = 'Deleta Item'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btndelitemClick
  end
  object btnzerar: TBitBtn
    Left = 241
    Top = 26
    Width = 94
    Height = 19
    Caption = 'Zera Tabela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 416
    Top = 404
  end
  object ActionList1: TActionList
    Left = 556
    Top = 324
    object config: TAction
      Caption = 'config'
      OnExecute = configExecute
    end
    object gravar: TAction
      Caption = 'gravar'
      OnExecute = gravarExecute
    end
    object bloqueio: TAction
      Caption = 'bloqueio'
    end
    object tpbarcode: TAction
      Caption = 'tpbarcode'
      OnExecute = tpbarcodeExecute
    end
    object parent: TAction
      Caption = 'parent'
      OnExecute = parentExecute
    end
    object criagrade: TAction
      Caption = 'criagrade'
      OnExecute = criagradeExecute
    end
  end
  object tabela: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'link'
    MasterFields = 'nome'
    MasterSource = dsg
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 328
    object tabelaqtd: TIntegerField
      FieldName = 'qtd'
    end
    object tabelacodigo: TStringField
      FieldName = 'codigo'
      Size = 13
    end
    object tabelacodigofornecedor: TStringField
      FieldName = 'codigofornecedor'
      Size = 13
    end
    object tabelacodigooriginal: TStringField
      FieldName = 'codigooriginal'
      Size = 13
    end
    object tabelacodigobarras: TStringField
      FieldName = 'codigobarras'
      Size = 13
    end
    object tabeladescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
    object tabelafabricante: TStringField
      FieldName = 'fabricante'
    end
    object tabelavrunit: TFloatField
      DisplayWidth = 30
      FieldName = 'vrunit'
      DisplayFormat = '###,##0.00'
    end
    object tabelalote: TStringField
      FieldName = 'lote'
      Size = 6
    end
    object tabelaValidade: TStringField
      FieldName = 'Validade'
      Size = 12
    end
    object tabelalink: TStringField
      FieldName = 'link'
      Size = 10
    end
    object tabelanetiqueta: TStringField
      FieldName = 'netiqueta'
      Size = 11
    end
    object tabeladata: TDateField
      FieldName = 'data'
    end
    object tabeladividir: TIntegerField
      FieldName = 'dividir'
    end
    object tabelavratacado: TFloatField
      FieldName = 'vratacado'
      DisplayFormat = '###,##0.00'
    end
    object tabelavrvenda: TFloatField
      FieldName = 'vrvenda'
      DisplayFormat = '###,##0.00'
    end
    object tabelavratacado1: TFloatField
      FieldName = 'vratacado1'
      DisplayFormat = '###,##0.00'
    end
    object tabelavrpromocao: TFloatField
      FieldName = 'vrpromocao'
      DisplayFormat = '###,##0.00'
    end
  end
  object tbg: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'nome'
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 408
    object tbgnome: TStringField
      DisplayWidth = 10
      FieldName = 'nome'
      Size = 10
    end
    object tbgaltura: TFloatField
      DisplayWidth = 6
      FieldName = 'altura'
    end
    object tbglargura: TFloatField
      DisplayWidth = 7
      FieldName = 'largura'
    end
    object tbgesquerda: TFloatField
      DisplayWidth = 9
      FieldName = 'esquerda'
    end
    object tbgdireita: TFloatField
      DisplayWidth = 8
      FieldName = 'direita'
    end
    object tbgtopo: TFloatField
      DisplayWidth = 8
      FieldName = 'topo'
    end
    object tbgrodape: TFloatField
      DisplayWidth = 8
      FieldName = 'rodape'
    end
    object tbgalturaE: TFloatField
      DisplayWidth = 8
      FieldName = 'alturaE'
    end
    object tbgqtdcolona: TIntegerField
      DisplayWidth = 10
      FieldName = 'qtdcolona'
    end
    object tbgespacocoluna: TFloatField
      DisplayWidth = 13
      FieldName = 'espacocoluna'
    end
    object tbgimpbarra: TBooleanField
      DisplayWidth = 8
      FieldName = 'impbarra'
    end
    object tbgcodbar: TStringField
      DisplayWidth = 30
      FieldName = 'codbar'
      Size = 30
    end
    object tbgdata: TBooleanField
      FieldName = 'data'
    end
    object tbgdataT: TFloatField
      FieldName = 'dataT'
    end
    object tbgdatah: TFloatField
      FieldName = 'datah'
    end
    object tbgdatav: TFloatField
      FieldName = 'datav'
    end
    object tbgdataF: TFloatField
      FieldName = 'dataF'
    end
    object tbgdatan: TBooleanField
      FieldName = 'datan'
    end
    object tbgcodigo: TBooleanField
      FieldName = 'codigo'
    end
    object tbgcodigot: TFloatField
      FieldName = 'codigot'
    end
    object tbgcodigoh: TFloatField
      FieldName = 'codigoh'
    end
    object tbgcodigov: TFloatField
      FieldName = 'codigov'
    end
    object tbgcodigof: TFloatField
      FieldName = 'codigof'
    end
    object tbgcodigofornecedor: TBooleanField
      FieldName = 'codigofornecedor'
    end
    object tbgcodigofornecedort: TFloatField
      FieldName = 'codigofornecedort'
    end
    object tbgcodigofornecedorh: TFloatField
      FieldName = 'codigofornecedorh'
    end
    object tbgcodigofornecedorv: TFloatField
      FieldName = 'codigofornecedorv'
    end
    object tbgcodigofornecedorf: TFloatField
      FieldName = 'codigofornecedorf'
    end
    object tbgcodigooriginal: TBooleanField
      FieldName = 'codigooriginal'
    end
    object tbgcodigooriginalt: TFloatField
      FieldName = 'codigooriginalt'
    end
    object tbgcodigooriginalh: TFloatField
      FieldName = 'codigooriginalh'
    end
    object tbgcodigooriginalv: TFloatField
      FieldName = 'codigooriginalv'
    end
    object tbgcodigooriginalf: TFloatField
      FieldName = 'codigooriginalf'
    end
    object tbgcodigobarras: TBooleanField
      FieldName = 'codigobarras'
    end
    object tbgcodigobarrast: TFloatField
      FieldName = 'codigobarrast'
    end
    object tbgcodigobarrash: TFloatField
      FieldName = 'codigobarrash'
    end
    object tbgcodigobarrasv: TFloatField
      FieldName = 'codigobarrasv'
    end
    object tbgcodigobarrasf: TFloatField
      FieldName = 'codigobarrasf'
    end
    object tbgdescricao: TBooleanField
      FieldName = 'descricao'
    end
    object tbgdescricaoT: TFloatField
      FieldName = 'descricaoT'
    end
    object tbgdescricaoh: TFloatField
      FieldName = 'descricaoh'
    end
    object tbgdescricaov: TFloatField
      FieldName = 'descricaov'
    end
    object tbgdescricaof: TFloatField
      FieldName = 'descricaof'
    end
    object tbgfabricante: TBooleanField
      FieldName = 'fabricante'
    end
    object tbgfabricantet: TFloatField
      FieldName = 'fabricantet'
    end
    object tbgfabricanteh: TFloatField
      FieldName = 'fabricanteh'
    end
    object tbgfabricantev: TFloatField
      FieldName = 'fabricantev'
    end
    object tbgfabricantef: TFloatField
      FieldName = 'fabricantef'
    end
    object tbgvrunit: TBooleanField
      FieldName = 'vrunit'
    end
    object tbgvrunitt: TFloatField
      FieldName = 'vrunitt'
    end
    object tbgvrunith: TFloatField
      FieldName = 'vrunith'
    end
    object tbgvrunitv: TFloatField
      FieldName = 'vrunitv'
    end
    object tbgvrunitf: TFloatField
      FieldName = 'vrunitf'
    end
    object tbgvrvarejo: TBooleanField
      FieldName = 'vrvarejo'
    end
    object tbgvrvarejot: TFloatField
      FieldName = 'vrvarejot'
    end
    object tbgvrvarejoh: TFloatField
      FieldName = 'vrvarejoh'
    end
    object tbgvrvarejov: TFloatField
      FieldName = 'vrvarejov'
    end
    object tbgvrvarejof: TFloatField
      FieldName = 'vrvarejof'
    end
    object tbgvratacadot: TFloatField
      FieldName = 'vratacadot'
    end
    object tbgvratacadoh: TFloatField
      FieldName = 'vratacadoh'
    end
    object tbgvratacadov: TFloatField
      FieldName = 'vratacadov'
    end
    object tbgvratacadof: TFloatField
      FieldName = 'vratacadof'
    end
    object tbgvratacado: TBooleanField
      FieldName = 'vratacado'
    end
    object tbgnetiqueta: TBooleanField
      FieldName = 'netiqueta'
    end
    object tbgnetiquetat: TFloatField
      FieldName = 'netiquetat'
    end
    object tbgnetiquetah: TFloatField
      FieldName = 'netiquetah'
    end
    object tbgnetiquetav: TFloatField
      FieldName = 'netiquetav'
    end
    object tbgnetiquetaf: TFloatField
      FieldName = 'netiquetaf'
    end
    object tbglote: TBooleanField
      FieldName = 'lote'
    end
    object tbglotet: TFloatField
      FieldName = 'lotet'
    end
    object tbgloteh: TFloatField
      FieldName = 'loteh'
    end
    object tbglotev: TFloatField
      FieldName = 'lotev'
    end
    object tbglotef: TFloatField
      FieldName = 'lotef'
    end
    object tbgValidadef: TFloatField
      FieldName = 'Validadef'
    end
    object tbgValidadev: TFloatField
      FieldName = 'Validadev'
    end
    object tbgValidadeh: TFloatField
      FieldName = 'Validadeh'
    end
    object tbgValidadet: TFloatField
      FieldName = 'Validadet'
    end
    object tbgValidade: TBooleanField
      FieldName = 'Validade'
    end
    object tbgalturabarra: TFloatField
      DisplayWidth = 10
      FieldName = 'alturabarra'
    end
    object tbghbarra: TFloatField
      DisplayWidth = 10
      FieldName = 'hbarra'
    end
    object tbgvbarra: TFloatField
      DisplayWidth = 10
      FieldName = 'vbarra'
    end
    object tbgimprodape: TBooleanField
      DisplayWidth = 10
      FieldName = 'improdape'
    end
    object tbgtamanhorodape: TFloatField
      DisplayWidth = 15
      FieldName = 'tamanhorodape'
    end
    object tbghrodape: TFloatField
      DisplayWidth = 10
      FieldName = 'hrodape'
    end
    object tbgvrodape: TFloatField
      DisplayWidth = 10
      FieldName = 'vrodape'
    end
    object tbgfonterodape: TFloatField
      DisplayWidth = 11
      FieldName = 'fonterodape'
    end
    object tbgnegritorodape: TBooleanField
      DisplayWidth = 13
      FieldName = 'negritorodape'
    end
    object tbgtextorodape: TMemoField
      DisplayWidth = 11
      FieldName = 'textorodape'
      BlobType = ftMemo
    end
    object tbgtipocod: TStringField
      DisplayWidth = 16
      FieldName = 'tipocod'
      Size = 16
    end
    object tbgimpempresa: TBooleanField
      DisplayWidth = 11
      FieldName = 'impempresa'
    end
    object tbgtamanhoempresa: TFloatField
      DisplayWidth = 16
      FieldName = 'tamanhoempresa'
    end
    object tbghempresa: TFloatField
      DisplayWidth = 10
      FieldName = 'hempresa'
    end
    object tbgvempresa: TFloatField
      DisplayWidth = 10
      FieldName = 'vempresa'
    end
    object tbgfonteempresa: TFloatField
      DisplayWidth = 13
      FieldName = 'fonteempresa'
    end
    object tbgnegritoempresa: TBooleanField
      DisplayWidth = 14
      FieldName = 'negritoempresa'
    end
    object tbgimpempresaL: TBooleanField
      DisplayWidth = 12
      FieldName = 'impempresaL'
    end
    object tbgtamanhoempresaL: TFloatField
      DisplayWidth = 17
      FieldName = 'tamanhoempresaL'
    end
    object tbghempresaL: TFloatField
      DisplayWidth = 10
      FieldName = 'hempresaL'
    end
    object tbgvempresaL: TFloatField
      DisplayWidth = 10
      FieldName = 'vempresaL'
    end
    object tbgcodigon: TBooleanField
      FieldName = 'codigon'
    end
    object tbgcodigofornecedorn: TBooleanField
      FieldName = 'codigofornecedorn'
    end
    object tbgcodigooriginaln: TBooleanField
      FieldName = 'codigooriginaln'
    end
    object tbgcodigobarrasn: TBooleanField
      FieldName = 'codigobarrasn'
    end
    object tbgdescricaon: TBooleanField
      FieldName = 'descricaon'
    end
    object tbgfabricanten: TBooleanField
      FieldName = 'fabricanten'
    end
    object tbgvrunitn: TBooleanField
      FieldName = 'vrunitn'
    end
    object tbgvrvarejon: TBooleanField
      FieldName = 'vrvarejon'
    end
    object tbgvratacadon: TBooleanField
      FieldName = 'vratacadon'
    end
    object tbgnetiquetan: TBooleanField
      FieldName = 'netiquetan'
    end
    object tbgvrunite: TBooleanField
      FieldName = 'vrunite'
    end
    object tbgloten: TBooleanField
      FieldName = 'loten'
    end
    object tbgValidaden: TBooleanField
      FieldName = 'Validaden'
    end
    object tbgdataa: TFloatField
      FieldName = 'dataa'
    end
    object tbgcodigoa: TFloatField
      FieldName = 'codigoa'
    end
    object tbgcodigofornecedora: TFloatField
      FieldName = 'codigofornecedora'
    end
    object tbgcodigooriginala: TFloatField
      FieldName = 'codigooriginala'
    end
    object tbgcodigobarrasa: TFloatField
      FieldName = 'codigobarrasa'
    end
    object tbgdescricaoa: TFloatField
      FieldName = 'descricaoa'
    end
    object tbgfabricantea: TFloatField
      FieldName = 'fabricantea'
    end
    object tbgvrunita: TFloatField
      FieldName = 'vrunita'
    end
    object tbgvrvarejoa: TFloatField
      FieldName = 'vrvarejoa'
    end
    object tbgvratacadoa: TFloatField
      FieldName = 'vratacadoa'
    end
    object tbgnetiquetaa: TFloatField
      FieldName = 'netiquetaa'
    end
    object tbglotea: TFloatField
      FieldName = 'lotea'
    end
    object tbgValidadea: TFloatField
      FieldName = 'Validadea'
    end
    object tbgtamanhoempresaa: TFloatField
      FieldName = 'tamanhoempresaa'
    end
    object tbgtamanhoempresaLa: TFloatField
      FieldName = 'tamanhoempresaLa'
    end
    object tbgtamanhorodapea: TFloatField
      FieldName = 'tamanhorodapea'
    end
    object tbgvrvarejoe: TBooleanField
      FieldName = 'vrvarejoe'
    end
    object tbgvratacadoe: TBooleanField
      FieldName = 'vratacadoe'
    end
    object tbgvrunitf_: TBooleanField
      FieldName = 'vrunitf_'
    end
    object tbgvrvarejof_: TBooleanField
      FieldName = 'vrvarejof_'
    end
    object tbgvratacadof_: TBooleanField
      FieldName = 'vratacadof_'
    end
  end
  object dsg: TDataSource
    DataSet = tbg
    Left = 360
    Top = 472
  end
  object tbitem: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 272
    object IntegerField1: TIntegerField
      FieldName = 'qtd'
    end
    object StringField1: TStringField
      FieldName = 'codigo'
      Size = 13
    end
    object StringField2: TStringField
      FieldName = 'codigofornecedor'
      Size = 13
    end
    object StringField3: TStringField
      FieldName = 'codigooriginal'
      Size = 13
    end
    object StringField4: TStringField
      FieldName = 'codigobarras'
      Size = 13
    end
    object StringField5: TStringField
      FieldName = 'descricao'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'fabricante'
    end
    object StringField7: TStringField
      FieldName = 'lote'
      Size = 6
    end
    object StringField8: TStringField
      FieldName = 'Validade'
      Size = 12
    end
    object StringField9: TStringField
      FieldName = 'link'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'netiqueta'
      Size = 11
    end
    object DateField1: TDateField
      FieldName = 'data'
    end
    object tbitemvrunit: TStringField
      FieldName = 'vrunit'
      Size = 13
    end
    object tbitemchave: TIntegerField
      FieldName = 'chave'
    end
    object tbitemvrvenda: TStringField
      FieldName = 'vrvenda'
      Size = 30
    end
    object tbitemvratacado: TStringField
      FieldName = 'vratacado'
      Size = 30
    end
    object tbitemvratacado1: TStringField
      FieldName = 'vratacado1'
      Size = 30
    end
    object tbitemvrpromocao: TStringField
      FieldName = 'vrpromocao'
      Size = 30
    end
  end
  object dsitem: TDataSource
    DataSet = tbitem
    Left = 400
    Top = 308
  end
  object FTable: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 272
    object FTablecodigo: TStringField
      FieldName = 'codigo'
      Size = 13
    end
    object FTabledescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object FTablevrvenda: TStringField
      FieldName = 'vrvenda'
    end
    object FTableqtd: TIntegerField
      FieldName = 'qtd'
    end
  end
end
