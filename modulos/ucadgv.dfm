object fcadgv: Tfcadgv
  Left = 83
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'cadgv'
  ClientHeight = 493
  ClientWidth = 790
  Color = 15790320
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object btngravar: TSpeedButton
    Left = 105
    Top = 436
    Width = 196
    Height = 56
    Caption = '&Gravar(Ins)'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btngravarClick
  end
  object btnsair: TSpeedButton
    Left = 307
    Top = 436
    Width = 235
    Height = 56
    Caption = '&Cancelar(Alt+F4)'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btnsairClick
  end
  object SpeedButton1: TSpeedButton
    Left = 592
    Top = 454
    Width = 145
    Height = 21
    Caption = 'Imprimir o formul'#225'rio'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object qalmax: TRLReport
    Left = -120
    Top = -2000
    Width = 794
    Height = 1123
    AdjustableMargins = True
    DataSource = fcadg.ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    BeforePrint = qalmaxBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 122
      Width = 718
      Height = 944
      AutoSize = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLDBMemo3: TRLDBMemo
        Left = 0
        Top = 514
        Width = 714
        Height = 46
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataField = 'CondPgto'
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 5
        Width = 98
        Height = 19
        Caption = 'N'#250'mero OS:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 312
        Top = 5
        Width = 45
        Height = 19
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 24
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 132
        Width = 115
        Height = 14
        Caption = 'DADOS DO PRODUTO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 0
        Top = 375
        Width = 75
        Height = 14
        Caption = 'OR'#199'AMENTO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 0
        Top = 392
        Width = 714
        Height = 98
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataField = 'Orcamento'
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 0
        Top = 497
        Width = 156
        Height = 14
        Caption = 'CONDI'#199#213'ES DE PAGAMENTO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 572
        Width = 99
        Height = 14
        Caption = 'Prazo de Entrega:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 0
        Top = 592
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 0
        Top = 610
        Width = 51
        Height = 14
        Caption = 'Garantia:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 0
        Top = 644
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 0
        Top = 661
        Width = 169
        Height = 14
        Caption = 'Data de Informa'#231#227'o ao Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 0
        Top = 726
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 0
        Top = 742
        Width = 88
        Height = 14
        Caption = 'Data Devolu'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 0
        Top = 808
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 0
        Top = 714
        Width = 163
        Height = 14
        Caption = 'Aprovado por (Nome/RG/CPF)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 0
        Top = 766
        Width = 92
        Height = 14
        Caption = 'Transportadora:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 0
        Top = 790
        Width = 25
        Height = 14
        Caption = 'N.F.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 32
        Top = 790
        Width = 21
        Height = 16
        DataField = 'NF'
        DataSource = fcadg.ds
      end
      object RLDBText2: TRLDBText
        Left = 98
        Top = 766
        Width = 90
        Height = 16
        DataField = 'Transportadora'
        DataSource = fcadg.ds
      end
      object RLDBText3: TRLDBText
        Left = 98
        Top = 742
        Width = 48
        Height = 16
        DataField = 'DtDevol'
        DataSource = fcadg.ds
      end
      object RLDBText4: TRLDBText
        Left = 176
        Top = 661
        Width = 59
        Height = 16
        DataField = 'DtInforma'
        DataSource = fcadg.ds
      end
      object RLDBText5: TRLDBText
        Left = 59
        Top = 610
        Width = 50
        Height = 16
        DataField = 'garantia'
        DataSource = fcadg.ds
      end
      object RLDBText6: TRLDBText
        Left = 106
        Top = 572
        Width = 90
        Height = 16
        DataField = 'Prazo_Entrega'
        DataSource = fcadg.ds
      end
      object RLDBText14: TRLDBText
        Left = 106
        Top = 5
        Width = 27
        Height = 19
        DataField = 'OS'
        DataSource = fcadg.ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 362
        Top = 5
        Width = 75
        Height = 18
        DataField = 'DtEntrada'
        DataSource = fcadg.ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 0
        Top = 633
        Width = 345
        Height = 14
        Caption = 'Obs: Garantia n'#227'o cobre despesas de transporte, visitas, etc...'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 0
        Top = 690
        Width = 104
        Height = 14
        Caption = 'Data da aprova'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 112
        Top = 690
        Width = 56
        Height = 16
        DataField = 'DtAprova'
        DataSource = fcadg.ds
      end
      object RLLabel33: TRLLabel
        Left = 0
        Top = 677
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object ldescricao: TRLMemo
        Left = 0
        Top = 149
        Width = 714
        Height = 181
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 0
        Top = 825
        Width = 264
        Height = 14
        Caption = 'CONTROLE T'#201'CNICO DE SA'#205'DA DO EQUIPAMENTO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 0
        Top = 846
        Width = 170
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tens'#227'o de entrada (volt):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 175
        Top = 846
        Width = 73
        Height = 16
        DataField = 'Tensao_Ent'
        DataSource = fcadg.ds
      end
      object RLDBText22: TRLDBText
        Left = 175
        Top = 862
        Width = 69
        Height = 16
        DataField = 'Corren_Ent'
        DataSource = fcadg.ds
      end
      object RLLabel37: TRLLabel
        Left = 0
        Top = 862
        Width = 170
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Corrente de entrada (amper):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 0
        Top = 878
        Width = 170
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tens'#227'o de Sa'#237'da (KVP):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 0
        Top = 894
        Width = 170
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Corrente de Sa'#237'da (mA):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 175
        Top = 894
        Width = 68
        Height = 16
        DataField = 'Corren_Sai'
        DataSource = fcadg.ds
      end
      object RLDBText24: TRLDBText
        Left = 175
        Top = 878
        Width = 72
        Height = 16
        DataField = 'Tensao_Sai'
        DataSource = fcadg.ds
      end
      object RLLabel40: TRLLabel
        Left = 0
        Top = 918
        Width = 170
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome do t'#233'cnico:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 175
        Top = 918
        Width = 49
        Height = 16
        DataField = 'Tecnico'
        DataSource = fcadg.ds
      end
      object RLLabel41: TRLLabel
        Left = 443
        Top = 918
        Width = 273
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Visto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 0
        Top = 332
        Width = 118
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'DEFEITO RECLAMADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 0
        Top = 348
        Width = 116
        Height = 16
        DataField = 'Defeito_Reclamado'
        DataSource = fcadg.ds
      end
      object RLLabel43: TRLLabel
        Left = 0
        Top = 362
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 0
        Top = 936
        Width = 718
        Height = 8
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object rlcli: TRLPanel
        Left = 0
        Top = 33
        Width = 721
        Height = 88
        object RLLabel4: TRLLabel
          Left = 0
          Top = -1
          Width = 90
          Height = 14
          Caption = 'DADOS CLIENTE:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 0
          Top = 18
          Width = 38
          Height = 14
          Caption = 'Nome:'
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
          Left = 400
          Top = 18
          Width = 58
          Height = 14
          Caption = 'Endere'#231'o:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 0
          Top = 34
          Width = 39
          Height = 14
          Caption = 'Bairro:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 192
          Top = 34
          Width = 45
          Height = 14
          Caption = 'Compl.:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 368
          Top = 34
          Width = 44
          Height = 14
          Caption = 'Cidade:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 0
          Top = 50
          Width = 28
          Height = 14
          Caption = 'Cep:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 152
          Top = 50
          Width = 43
          Height = 14
          Caption = 'Estado:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 0
          Top = 74
          Width = 718
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = ' '
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 203
          Top = 50
          Width = 29
          Height = 14
          AutoSize = False
          DataField = 'uf'
          DataSource = fcadg.ds
        end
        object RLDBText8: TRLDBText
          Left = 34
          Top = 50
          Width = 103
          Height = 14
          AutoSize = False
          DataField = 'cep'
          DataSource = fcadg.ds
        end
        object RLDBText9: TRLDBText
          Left = 245
          Top = 34
          Width = 111
          Height = 14
          AutoSize = False
          DataField = 'complemento'
          DataSource = fcadg.ds
        end
        object RLDBText10: TRLDBText
          Left = 421
          Top = 34
          Width = 290
          Height = 14
          AutoSize = False
          DataField = 'municipio'
          DataSource = fcadg.ds
        end
        object RLDBText11: TRLDBText
          Left = 46
          Top = 34
          Width = 132
          Height = 14
          AutoSize = False
          DataField = 'bairro'
          DataSource = fcadg.ds
        end
        object RLDBText12: TRLDBText
          Left = 466
          Top = 18
          Width = 244
          Height = 14
          AutoSize = False
          DataSource = fcadg.ds
          BeforePrint = RLDBText12BeforePrint
        end
        object RLDBText13: TRLDBText
          Left = 45
          Top = 18
          Width = 340
          Height = 14
          AutoSize = False
          DataField = 'nome'
          DataSource = fcadg.ds
        end
        object RLDBText16: TRLDBText
          Left = 248
          Top = 66
          Width = 465
          Height = 14
          AutoSize = False
          DataField = 'Email_Obs'
          DataSource = fcadg.ds
        end
        object RLLabel27: TRLLabel
          Left = 176
          Top = 66
          Width = 63
          Height = 14
          Caption = 'E-Mail/Obs:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 240
          Top = 50
          Width = 55
          Height = 14
          Caption = 'Telefone:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 302
          Top = 50
          Width = 163
          Height = 16
          AutoSize = False
          DataField = 'fone'
          DataSource = fcadg.ds
        end
        object RLLabel29: TRLLabel
          Left = 470
          Top = 50
          Width = 58
          Height = 14
          Caption = 'CNPJ/CPF:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 532
          Top = 50
          Width = 180
          Height = 14
          AutoSize = False
          DataField = 'cnpj'
          DataSource = fcadg.ds
        end
        object RLLabel30: TRLLabel
          Left = 0
          Top = 66
          Width = 33
          Height = 14
          Caption = 'RG/IE:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 39
          Top = 66
          Width = 130
          Height = 14
          AutoSize = False
          DataField = 'ie'
          DataSource = fcadg.ds
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 118
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
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 80
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object r1: TRLAngleLabel
        Left = 135
        Top = 4
        Width = 512
        Height = 29
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object r2: TRLLabel
        Left = 135
        Top = 29
        Width = 512
        Height = 16
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
      object r3: TRLLabel
        Left = 135
        Top = 41
        Width = 512
        Height = 13
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
      object r4: TRLLabel
        Left = 135
        Top = 55
        Width = 512
        Height = 16
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
      object i1: TRLImage
        Left = 9
        Top = 5
        Width = 125
        Height = 67
        Stretch = True
      end
    end
  end
  object pfor: TPanel
    Left = 94
    Top = -2000
    Width = 691
    Height = 34
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    Visible = False
    object lcombo: TLabel
      Left = 2
      Top = 0
      Width = 232
      Height = 13
      AutoSize = False
      Caption = 'Escolha a conta d'#233'bito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lcombo2: TLabel
      Left = 234
      Top = 0
      Width = 232
      Height = 13
      AutoSize = False
      Caption = 'Escolha a conta cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lcombo3: TLabel
      Left = 464
      Top = 0
      Width = 214
      Height = 13
      AutoSize = False
      Caption = 'Escolha a conta para baixa autom'#225'tica'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object combos: TDBLookupComboBox
      Left = 1
      Top = 13
      Width = 232
      Height = 22
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataSource = fcadg.ds
      TabOrder = 0
    end
    object combos2: TDBLookupComboBox
      Left = 233
      Top = 13
      Width = 232
      Height = 22
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataSource = fcadg.ds
      TabOrder = 1
    end
    object combos3: TDBLookupComboBox
      Left = 463
      Top = 13
      Width = 232
      Height = 22
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataSource = fcadg.ds
      TabOrder = 2
    end
  end
  object ActionList1: TActionList
    Left = 32
    Top = 312
    object INSERIR: TAction
      Caption = 'INSERIR'
      OnExecute = INSERIRExecute
    end
    object Alterar: TAction
      Caption = 'Alterar'
      OnExecute = AlterarExecute
    end
    object TC: TAction
      Caption = 'TC'
      ShortCut = 45
      OnExecute = TCExecute
    end
    object componente: TAction
      Caption = 'componente'
      OnExecute = componenteExecute
    end
    object regiao: TAction
      Caption = 'regiao'
      OnExecute = regiaoExecute
    end
    object produto: TAction
      Caption = 'produto'
      OnExecute = produtoExecute
    end
    object cliente: TAction
      Caption = 'cliente'
      OnExecute = clienteExecute
    end
    object funcionario: TAction
      Caption = 'funcionario'
      OnExecute = funcionarioExecute
    end
    object fornecedor: TAction
      Caption = 'fornecedor'
      OnExecute = fornecedorExecute
    end
    object servico: TAction
      Caption = 'servico'
      OnExecute = servicoExecute
    end
  end
end
