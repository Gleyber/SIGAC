object fvidacliente: Tfvidacliente
  Left = -4
  Top = -4
  Width = 808
  Height = 578
  Caption = 'Vida do Cliente'
  Color = 14342874
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 82
    Width = 800
    Height = 462
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Vendas'
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 792
        Height = 434
        ActivePage = TabSheet3
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabIndex = 0
        TabOrder = 0
        TabPosition = tpLeft
        OnChange = PageControl2Change
        object TabSheet3: TTabSheet
          Caption = 'Vendas'
          object dbgrid1: TDBGrid
            Left = 0
            Top = 28
            Width = 765
            Height = 398
            Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
            Align = alClient
            Color = 16382712
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnTitleClick = dbgrid1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'data'
                Title.Caption = 'Data'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'numero'
                Title.Caption = 'N'#250'mero'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'codigovendedor'
                Title.Caption = 'Vendedor'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Title.Caption = 'Total'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dinheiro'
                Title.Caption = 'Dinheiro'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'credito'
                Title.Caption = 'Cr'#233'dito'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cheque'
                Title.Caption = 'Cheque'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chequepre'
                Title.Caption = 'Chequepre'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cartao'
                Title.Caption = 'CartaoC'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cartaod'
                Title.Caption = 'Cart'#227'oD'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fiado'
                Title.Caption = 'A Prazo'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object rtpvenda: TRadioGroup
            Left = 0
            Top = 0
            Width = 765
            Height = 28
            Align = alTop
            Caption = 'Exibir'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'Encerradas'
              'Em Andamento'
              'Or'#231'amento')
            TabOrder = 1
            OnClick = rtpvendaClick
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Itens da venda'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 765
            Height = 426
            Align = alClient
            Color = 16382712
            DataSource = dspedidoitem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 304
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Title.Caption = 'Qtd'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrunit'
                Title.Caption = 'VrUnit'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descontoReal'
                Title.Caption = 'Desc'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'totalparcial'
                Title.Caption = 'Valor'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Title.Caption = 'Total'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 76
                Visible = True
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Servicos'
          ImageIndex = 2
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 765
            Height = 426
            Align = alClient
            Color = 16382712
            DataSource = dsservico
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 477
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Title.Caption = 'Qtd'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrunit'
                Title.Caption = 'VrUnit'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Title.Caption = 'Total'
                Title.Color = 14342874
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 76
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contas a Receber'
      ImageIndex = 1
      object gridbalcao: TDBGrid
        Left = 0
        Top = 35
        Width = 792
        Height = 378
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        DataSource = dsreceber
        FixedColor = 11454160
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = OEM_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Terminal'
        TitleFont.Style = [fsBold]
        OnTitleClick = gridbalcaoTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tipoconta'
            Title.Caption = 'Tipo conta'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'documento'
            Title.Caption = 'Doc.'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'letra'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 17
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtemissao'
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvencimento'
            Title.Caption = 'Vencto.'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtpagamento'
            Title.Caption = 'Dt. Receb.'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrdocumento'
            Title.Caption = 'A Receber'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desconto'
            Title.Caption = 'Desconto'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'acrescimo'
            Title.Caption = 'Acr'#233'scimo'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Caption = 'Total'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'juro'
            Title.Caption = 'Juros'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalgeral'
            Title.Caption = 'Vr. c/ Juros'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recebido'
            Title.Caption = 'Recebido'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diferenca'
            Title.Caption = 'Diferen'#231'a'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 413
        Width = 792
        Height = 21
        Align = alBottom
        Color = 14342874
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 35
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object RTIPO: TRadioGroup
          Left = 447
          Top = 1
          Width = 344
          Height = 33
          Align = alClient
          Caption = 'Filtrar'
          Color = 14342874
          Columns = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 3
          Items.Strings = (
            'Recebido'
            'N Recebido'
            'Vencido'
            'Todos')
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnClick = RTIPOClick
        end
        object bfiltro: TRadioGroup
          Left = 1
          Top = 1
          Width = 446
          Height = 33
          Align = alLeft
          Caption = 'Tipo conta'
          Color = 14342874
          Columns = 6
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 5
          Items.Strings = (
            'Cheque'
            'Devolvido'
            'Passado'
            'Cart'#227'o'
            'Outros'
            'Todos')
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          OnClick = bfiltroClick
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Comiss'#245'es Venda'
      ImageIndex = 2
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 0
        Width = 792
        Height = 31
        Align = alTop
        Color = 9073514
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Pago'
          'N'#227'o Pago'
          'Ambos')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object gridmesas: TDBGrid
        Left = 0
        Top = 31
        Width = 792
        Height = 375
        Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
        Align = alClient
        Color = 16382712
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'documento'
            Title.Caption = 'Documento'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtemissao'
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrvenda'
            Title.Caption = 'Tot. Venda'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'devolucao'
            Title.Caption = 'Devolu'#231#227'o'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Caption = 'Total'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'margem'
            Title.Caption = 'Margem'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 51
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'comissao'
            Title.Caption = '      %'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalcomissao'
            Title.Caption = 'Total'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14548991
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 406
        Width = 792
        Height = 28
        Align = alBottom
        BevelInner = bvLowered
        BorderStyle = bsSingle
        Caption = 'panel'
        Color = 9073514
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Comiss'#245'es Servi'#231'o'
      ImageIndex = 3
      object RadioGroup2: TRadioGroup
        Left = 0
        Top = 0
        Width = 792
        Height = 31
        Align = alTop
        Color = 9073514
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Pago'
          'N'#227'o Pago'
          'Ambos')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 31
        Width = 792
        Height = 375
        Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
        Align = alClient
        Color = 16382712
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'doc'
            Title.Caption = 'Pedido/OS'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrunit'
            Title.Caption = 'Valor'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Qtd'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Caption = 'Tot. Servi'#231'o'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comissao'
            Title.Caption = 'Comiss.'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrcomissao'
            Title.Caption = 'Total'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Cliente'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Servi'#231'o'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14811135
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 406
        Width = 792
        Height = 28
        Align = alBottom
        BevelInner = bvLowered
        BorderStyle = bsSingle
        Caption = 'panel'
        Color = 9073514
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 82
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object m1: TMemo
      Left = 1
      Top = 1
      Width = 494
      Height = 76
      Align = alClient
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object m3: TMemo
      Left = 645
      Top = 1
      Width = 150
      Height = 76
      Align = alRight
      Alignment = taRightJustify
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object m2: TMemo
      Left = 495
      Top = 1
      Width = 150
      Height = 76
      Align = alRight
      Alignment = taRightJustify
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 406
    Top = 83
    Width = 58
    Height = 20
    Caption = '&Imprimir...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object rcp: TCheckBox
    Left = 588
    Top = 84
    Width = 205
    Height = 17
    Caption = 'Escolher campos para impress'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object dspedidoitem: TDataSource
    DataSet = vendaitem
    Left = 644
    Top = 269
  end
  object ppedidoitem: TDataSetProvider
    DataSet = spedidoitem
    Constraints = True
    Left = 500
    Top = 271
  end
  object venda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'provedor'
    Left = 348
    Top = 276
  end
  object provedor: TDataSetProvider
    DataSet = sql
    Constraints = True
    Left = 304
    Top = 276
  end
  object ds: TDataSource
    DataSet = venda
    Left = 244
    Top = 280
  end
  object vendaitem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ppedidoitem'
    Left = 440
    Top = 272
  end
  object preceber: TDataSetProvider
    DataSet = sreceber
    Constraints = True
    Left = 300
    Top = 364
  end
  object tbreceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'preceber'
    Left = 348
    Top = 364
  end
  object dsreceber: TDataSource
    DataSet = tbreceber
    Left = 402
    Top = 364
  end
  object ActionList1: TActionList
    Left = 200
    Top = 184
    object vendas: TAction
      Caption = 'vendas'
      OnExecute = vendasExecute
    end
    object contas: TAction
      Caption = 'contas'
      OnExecute = contasExecute
    end
    object totalizar: TAction
      Caption = 'totalizar'
      OnExecute = totalizarExecute
    end
  end
  object dsservico: TDataSource
    DataSet = tbservico
    Left = 644
    Top = 317
  end
  object pservico: TDataSetProvider
    DataSet = sservico
    Constraints = True
    Left = 500
    Top = 319
  end
  object tbservico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pservico'
    Left = 440
    Top = 320
  end
  object sql: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 392
    Top = 280
  end
  object spedidoitem: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 576
    Top = 272
  end
  object sservico: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 576
    Top = 328
  end
  object sreceber: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 240
    Top = 360
  end
end
