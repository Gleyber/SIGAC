object fmenu: Tfmenu
  Left = 9
  Top = 19
  Width = 1032
  Height = 732
  Caption = 'Fmenu'
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lestacionamento: TLabel
    Left = 292
    Top = 5
    Width = 3
    Height = 14
    Caption = ' '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object imagelogo: TImage
    Left = 0
    Top = 136
    Width = 121
    Height = 121
    Center = True
    Transparent = True
  end
  object SpeedButton4: TSpeedButton
    Left = 14
    Top = 117
    Width = 99
    Height = 18
    Caption = 'Cliente'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object SpeedButton6: TSpeedButton
    Left = 126
    Top = 117
    Width = 99
    Height = 18
    Caption = 'Financeiro'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 238
    Top = 117
    Width = 99
    Height = 18
    Caption = 'A Pagar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton7Click
  end
  object SpeedButton8: TSpeedButton
    Left = 350
    Top = 117
    Width = 99
    Height = 18
    Caption = 'A Receber'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton8Click
  end
  object SpeedButton9: TSpeedButton
    Left = 462
    Top = 117
    Width = 99
    Height = 18
    Caption = 'Credor'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton9Click
  end
  object SpeedButton10: TSpeedButton
    Left = 574
    Top = 117
    Width = 99
    Height = 18
    Caption = 'Agenda'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton10Click
  end
  object SpeedButton11: TSpeedButton
    Left = 686
    Top = 117
    Width = 99
    Height = 18
    Caption = 'Agenda Fone'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton11Click
  end
  object lfantasia1: TLabel
    Left = 95
    Top = 10
    Width = 124
    Height = 31
    HelpType = htKeyword
    AutoSize = False
    Caption = 'PagPop'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Georgia'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object lfantasia: TLabel
    Left = 97
    Top = 12
    Width = 124
    Height = 31
    HelpType = htKeyword
    AutoSize = False
    Caption = 'PagPop'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Georgia'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object prodape: TPanel
    Left = 0
    Top = 647
    Width = 1024
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label13: TLabel
      Left = 633
      Top = 5
      Width = 44
      Height = 14
      HelpType = htKeyword
      Alignment = taCenter
      Caption = 'Suporte'
      Font.Charset = ANSI_CHARSET
      Font.Color = 15460830
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lreg: TLabel
      Left = 0
      Top = 22
      Width = 168
      Height = 13
      HelpType = htKeyword
      Alignment = taCenter
      AutoSize = False
      Caption = 'Reg N '#186' 45642312'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lemailfone: TLabel
      Left = 471
      Top = 22
      Width = 368
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = '(16) 3975-2014'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = lemailfoneClick
    end
    object Label18: TLabel
      Left = 297
      Top = 5
      Width = 87
      Height = 14
      HelpType = htKeyword
      Alignment = taCenter
      Caption = 'Usu'#225'rio/Acesso'
      Font.Charset = ANSI_CHARSET
      Font.Color = 15460830
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lusu: TLabel
      Left = 263
      Top = 22
      Width = 159
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Supervisor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 60
      Top = 5
      Width = 47
      Height = 14
      HelpType = htKeyword
      Alignment = taCenter
      Caption = 'Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = 15460830
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 144
    Top = 216
  end
  object ActionList1: TActionList
    Left = 120
    Top = 168
    object conf: TAction
      Caption = 'conf'
      OnExecute = confExecute
    end
    object produto: TAction
      Caption = 'produto'
      OnExecute = produtoExecute
    end
    object estoque: TAction
      Caption = 'estoque'
    end
    object caixafechado: TAction
      Caption = 'caixafechado'
      OnExecute = caixafechadoExecute
    end
    object btapagar: TAction
      Caption = 'btapagar'
      ShortCut = 115
    end
    object dempresa: TAction
      Caption = 'dempresa'
      OnExecute = dempresaExecute
    end
    object caixa: TAction
      Caption = 'caixa'
      OnExecute = caixaExecute
    end
    object mov: TAction
      Caption = 'mov'
      ShortCut = 45
    end
    object senha: TAction
      Caption = 'senha'
      OnExecute = senhaExecute
    end
    object f4: TAction
      Caption = 'f4'
      ShortCut = 115
    end
    object estacion: TAction
      Caption = 'estacion'
      OnExecute = estacionExecute
    end
    object fatura: TAction
      Caption = 'fatura'
    end
    object faturacompra: TAction
      Caption = 'faturacompra'
    end
    object dcod: TAction
      Caption = 'dcod'
      ShortCut = 16471
      OnExecute = dcodExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 72
    Top = 232
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      object Caoxa1: TMenuItem
        Caption = 'Caixa'
        object Abrirocaixa1: TMenuItem
          Caption = 'Abrir o caixa'
        end
        object Fecharocaixa1: TMenuItem
          Caption = 'Visualizar/Fechar o caixa'
        end
        object CaixasAnteriores1: TMenuItem
          Caption = 'Visualizar caixas anteriores'
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object Entradacaixa1: TMenuItem
          Caption = 'Entrada caixa'
        end
        object Sadacaixa1: TMenuItem
          Caption = 'Sa'#237'da caixa'
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object Fluxodecaixa1: TMenuItem
          Caption = 'Fluxo de caixa'
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object ransferirocaixa1: TMenuItem
          Caption = 'Transferir o caixa'
        end
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ContasaReceber1: TMenuItem
        Caption = 'Contas a receber'
        OnClick = ContasaReceber1Click
      end
      object Recebimentos1: TMenuItem
        Caption = 'Recebimentos'
        OnClick = Recebimentos1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Contasagar1: TMenuItem
        Caption = 'Contas a pagar'
        OnClick = Contasagar1Click
      end
      object Pagamentos1: TMenuItem
        Caption = 'Pagamentos'
        OnClick = Pagamentos1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object ControleFinanceiro1: TMenuItem
        Caption = 'Controle Financeiro'
        OnClick = ControleFinanceiro1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Movimentobancrios1: TMenuItem
        Caption = 'Movimento de contas/bancos'
        object Lancamentodecontas1: TMenuItem
          Caption = 'Lancamento de contas'
          OnClick = Lancamentodecontas1Click
        end
        object consultarcontas1: TMenuItem
          Caption = 'Consultar contas'
          OnClick = consultarcontas1Click
        end
      end
      object Movimentodecontas1: TMenuItem
        Caption = 'Movimento de contas'
        object Lanamentodecontas1: TMenuItem
          Caption = 'Lan'#231'amento de contas'
        end
        object Consultarconta1: TMenuItem
          Caption = 'Consultar conta'
          OnClick = Consultarconta1Click
        end
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        object Cadastro1: TMenuItem
          Caption = 'Cadastro'
          OnClick = Cadastro1Click
        end
        object Listagem1: TMenuItem
          Caption = 'Listagem'
          OnClick = Listagem1Click
        end
      end
      object Contato1: TMenuItem
        Caption = 'Contato'
        OnClick = Contato1Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Credor'
        object Cadastro3: TMenuItem
          Caption = 'Cadastro'
          OnClick = Cadastro3Click
        end
        object Listagem3: TMenuItem
          Caption = 'Listagem'
          OnClick = Listagem3Click
        end
      end
      object Funcionrio1: TMenuItem
        Caption = 'Funcion'#225'rio'
        object Cadastro4: TMenuItem
          Caption = 'Cadastro'
          OnClick = Cadastro4Click
        end
        object Listagem4: TMenuItem
          Caption = 'Listagem'
          OnClick = Listagem4Click
        end
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object Contas1: TMenuItem
        Caption = 'Plano de Contas'
        OnClick = Contas1Click
      end
      object Bancos1: TMenuItem
        Caption = 'Bancos'
        OnClick = Bancos1Click
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object Cep1: TMenuItem
        Caption = 'Cep/IBGE'
        object Cep2: TMenuItem
          Caption = 'Cep'
          OnClick = Cep2Click
        end
        object IBGE1: TMenuItem
          Caption = 'Cidades IBGE'
          OnClick = IBGE1Click
        end
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object N15: TMenuItem
        Caption = '-'
      end
      object Dedoduro1: TMenuItem
        Caption = 'Dedo duro'
        OnClick = Dedoduro1Click
      end
      object Operaescomsenha1: TMenuItem
        Caption = 'Opera'#231#245'es com senha'
        OnClick = Operaescomsenha1Click
      end
    end
    object Manuteno1: TMenuItem
      Caption = 'Manuten'#231#227'o'
      object Alterarasenha1: TMenuItem
        Caption = 'Alterar a senha'
        OnClick = Alterarasenha1Click
      end
      object Backup1: TMenuItem
        Caption = 'Backup'
        OnClick = Backup1Click
      end
      object Logar1: TMenuItem
        Caption = 'Logar'
        OnClick = Logar1Click
      end
      object abelas1: TMenuItem
        Caption = 'Tabelas'
        OnClick = abelas1Click
      end
      object UsurioPermisses1: TMenuItem
        Caption = 'Usu'#225'rio/Permiss'#245'es'
        OnClick = UsurioPermisses1Click
      end
      object Dadosdaempresa1: TMenuItem
        Caption = 'Dados da empresa'
        OnClick = Dadosdaempresa1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Cadastrarfiliais1: TMenuItem
        Caption = 'Cadastrar filiais'
        OnClick = Cadastrarfiliais1Click
      end
      object ConectarLocal1: TMenuItem
        Caption = 'Conectar a uma filial'
        OnClick = ConectarLocal1Click
      end
      object ConectaraumaFilial1: TMenuItem
        Caption = 'Voltar a conex'#227'o local'
        Enabled = False
        OnClick = ConectaraumaFilial1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Configuraes1: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = Configuraes1Click
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object Configfinanceiro1: TMenuItem
        Caption = 'Config financeiro'
        OnClick = Configfinanceiro1Click
      end
    end
    object Utilitrios1: TMenuItem
      Caption = 'Utilit'#225'rios'
      object ConsultarCNPJIE1: TMenuItem
        Caption = 'Consultar CNPJ/IE'
        OnClick = ConsultarCNPJIE1Click
      end
      object Meuip1: TMenuItem
        Caption = 'Meu ip'
        OnClick = Meuip1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Aniversariantes1: TMenuItem
        Caption = 'Aniversariantes'
        OnClick = Aniversariantes1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object AgendaPessoal1: TMenuItem
        Caption = 'Agenda Pessoal'
        OnClick = AgendaPessoal1Click
      end
      object AgendaFone1: TMenuItem
        Caption = 'Agenda fone'
        OnClick = AgendaFone1Click
      end
      object Recibo1: TMenuItem
        Caption = 'Recibo'
        OnClick = Recibo1Click
      end
      object Feriados1: TMenuItem
        Caption = 'Feriados'
        OnClick = Feriados1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ltimidiadoms1: TMenuItem
        Caption = #218'ltimo dia do m'#234's'
        OnClick = ltimidiadoms1Click
      end
      object Clculodecalendrio1: TMenuItem
        Caption = 'C'#225'lculo de calend'#225'rio'
        OnClick = Clculodecalendrio1Click
      end
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        OnClick = Calculadora1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object Sadaparaexplorer1: TMenuItem
        Caption = 'Sa'#237'da para explorer'
        OnClick = Sadaparaexplorer1Click
      end
      object SadaparaDOS1: TMenuItem
        Caption = 'Sa'#237'da para modo DOS'
        OnClick = SadaparaDOS1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sair1Click
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      OnClick = Sair2Click
    end
  end
end
