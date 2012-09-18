object fclientevalor1: Tfclientevalor1
  Left = 111
  Top = 105
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CADASTRO DE CLIENTES'
  ClientHeight = 494
  ClientWidth = 789
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 324
    Top = 436
    Width = 211
    Height = 57
    Caption = '&Cancelar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton1: TSpeedButton
    Left = 97
    Top = 436
    Width = 218
    Height = 57
    Caption = '&Gravar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 212
    Top = 63
    Width = 54
    Height = 13
    Caption = 'Dt Venda'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 278
    Top = 62
    Width = 40
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    HelpType = htKeyword
    Caption = 'C'#243'digo'
    FocusControl = ecodigo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label4: TLabel
    Left = 555
    Top = 63
    Width = 114
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Raz'#227'o Social/Nome'
    FocusControl = enome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 506
    Top = 97
    Width = 55
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Endere'#231'o'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 96
    Top = 164
    Width = 164
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Nome da Cl'#237'nica/Consult'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label25: TLabel
    Left = 416
    Top = 97
    Width = 77
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Inscri'#231#227'o/RG'
    FocusControl = eie
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label10: TLabel
    Left = 542
    Top = 131
    Width = 29
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Fone'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label30: TLabel
    Left = 325
    Top = 61
    Width = 80
    Height = 13
    Caption = 'Especialidade'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label39: TLabel
    Left = 240
    Top = 266
    Width = 23
    Height = 13
    Caption = 'Site'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label37: TLabel
    Left = 516
    Top = 133
    Width = 21
    Height = 14
    Caption = 'DDD'
    FocusControl = efone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label45: TLabel
    Left = 696
    Top = 96
    Width = 15
    Height = 13
    Caption = 'N'#186
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label46: TLabel
    Left = 96
    Top = 131
    Width = 76
    Height = 13
    Caption = 'Complemento'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label47: TLabel
    Left = 701
    Top = 129
    Width = 36
    Height = 13
    Caption = 'Ramal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label52: TLabel
    Left = 442
    Top = 233
    Width = 79
    Height = 13
    Cursor = crHandPoint
    Caption = 'Fone Consult.'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label57: TLabel
    Left = 328
    Top = 233
    Width = 25
    Height = 13
    Caption = 'CEP'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label58: TLabel
    Left = 396
    Top = 233
    Width = 17
    Height = 13
    Caption = 'UF'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lcid: TLabel
    Left = 279
    Top = 131
    Width = 57
    Height = 13
    Caption = 'Munic'#237'pio'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 408
    Top = 131
    Width = 25
    Height = 13
    Caption = 'CEP'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 477
    Top = 131
    Width = 17
    Height = 13
    Caption = 'UF'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 305
    Top = 97
    Width = 61
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'CNPJ/CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label27: TLabel
    Left = 167
    Top = 97
    Width = 67
    Height = 13
    Caption = 'Nascido em'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 178
    Top = 131
    Width = 34
    Height = 13
    Caption = 'Bairro'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 622
    Top = 131
    Width = 40
    Height = 13
    Caption = 'Fone 2'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 96
    Top = 266
    Width = 36
    Height = 13
    Caption = 'E-Mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 96
    Top = 400
    Width = 27
    Height = 13
    Caption = 'Obs:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 7
    Top = 93
    Width = 81
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = 'Especialidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label8Click
  end
  object Label22: TLabel
    Left = 606
    Top = 233
    Width = 55
    Height = 13
    Caption = 'Vendedor'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label24: TLabel
    Left = 96
    Top = 198
    Width = 55
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lcid1: TLabel
    Left = 196
    Top = 233
    Width = 57
    Height = 13
    Caption = 'Munic'#237'pio'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 528
    Top = 233
    Width = 21
    Height = 13
    Cursor = crHandPoint
    Caption = 'Fax'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label36: TLabel
    Left = 418
    Top = 62
    Width = 87
    Height = 13
    Caption = 'Cad Org Oficial'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 11
    Top = 127
    Width = 71
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = 'Vendedor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label15Click
  end
  object Label21: TLabel
    Left = 11
    Top = 161
    Width = 71
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = #211'rg'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label21Click
  end
  object Label29: TLabel
    Left = 303
    Top = 329
    Width = 68
    Height = 13
    Caption = 'Lim. Cr'#233'dito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label31: TLabel
    Left = 626
    Top = 331
    Width = 159
    Height = 12
    Alignment = taCenter
    AutoSize = False
    Caption = 'A ESTE CLIENTE N'#195'O VENDER'
    Color = 14803425
    FocusControl = efone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object SpeedButton3: TSpeedButton
    Left = 590
    Top = 453
    Width = 146
    Height = 22
    Caption = '&Ficha Adicional'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object Label28: TLabel
    Left = 379
    Top = 266
    Width = 45
    Height = 13
    Caption = 'Carteira'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label32: TLabel
    Left = 617
    Top = 266
    Width = 36
    Height = 13
    Caption = 'Skype'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label41: TLabel
    Left = 584
    Top = 198
    Width = 15
    Height = 13
    Caption = 'N'#186
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label42: TLabel
    Left = 640
    Top = 198
    Width = 76
    Height = 13
    Caption = 'Complemento'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label43: TLabel
    Left = 96
    Top = 233
    Width = 34
    Height = 13
    Caption = 'Bairro'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 509
    Top = 62
    Width = 44
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    HelpType = htKeyword
    Caption = 'N'#250'mero'
    FocusControl = DBEdit18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label26: TLabel
    Left = 96
    Top = 97
    Width = 69
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    HelpType = htKeyword
    Caption = 'Ano Format.'
    FocusControl = DBEdit19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label6: TLabel
    Left = 450
    Top = 296
    Width = 68
    Height = 13
    Cursor = crHandPoint
    Caption = 'Banco/Num'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label6Click
  end
  object Label11: TLabel
    Left = 161
    Top = 296
    Width = 91
    Height = 13
    Caption = 'Titular da conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 574
    Top = 296
    Width = 47
    Height = 13
    Caption = 'Ag'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 624
    Top = 296
    Width = 34
    Height = 13
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label35: TLabel
    Left = 96
    Top = 328
    Width = 61
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'CNPJ/CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label38: TLabel
    Left = 208
    Top = 328
    Width = 77
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Inscri'#231#227'o/RG'
    FocusControl = DBEdit23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object lbanco: TDBText
    Left = 531
    Top = 295
    Width = 39
    Height = 13
    AutoSize = True
    DataField = 'nbanco'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label40: TLabel
    Left = 392
    Top = 164
    Width = 117
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Nome Pessoa F'#237'sica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label44: TLabel
    Left = 621
    Top = 164
    Width = 74
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Respons'#225'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object Label33: TLabel
    Left = 96
    Top = 297
    Width = 52
    Height = 13
    Caption = 'Tipo Usu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object SpeedButton4: TSpeedButton
    Left = 760
    Top = 456
    Width = 23
    Height = 22
    Flat = True
  end
  object Label34: TLabel
    Left = 483
    Top = 263
    Width = 44
    Height = 13
    Caption = 'Usu'#225'rio'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label48: TLabel
    Left = 96
    Top = 369
    Width = 153
    Height = 13
    Caption = 'Escolha o grupo do cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBEdit1: TDBEdit
    Left = 212
    Top = 76
    Width = 64
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'dtvenda'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object efone: TDBEdit
    Left = 542
    Top = 145
    Width = 78
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'fone'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object ecodigo: TDBEdit
    Left = 278
    Top = 76
    Width = 44
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Codigo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object enomecurto: TDBEdit
    Left = 96
    Top = 177
    Width = 227
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'nomecurto'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnExit = enomecurtoExit
  end
  object enome: TDBEdit
    Left = 556
    Top = 76
    Width = 227
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'nome'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnExit = enomeExit
  end
  object eendereco: TDBEdit
    Left = 506
    Top = 110
    Width = 187
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Endereco'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnExit = eenderecoExit
  end
  object ebairro: TDBEdit
    Left = 178
    Top = 144
    Width = 97
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Bairro'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object emunicipio: TDBEdit
    Left = 276
    Top = 144
    Width = 131
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'municipio'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnExit = emunicipioExit
  end
  object ecep: TDBEdit
    Left = 408
    Top = 144
    Width = 65
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'cep'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object eie: TDBEdit
    Left = 416
    Top = 110
    Width = 87
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'IE'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnExit = eieExit
  end
  object eemail: TDBEdit
    Left = 96
    Top = 279
    Width = 145
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecLowerCase
    DataField = 'Email'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 37
  end
  object euf: TDBComboBox
    Left = 473
    Top = 144
    Width = 41
    Height = 17
    Cursor = crHandPoint
    Style = csOwnerDrawFixed
    BevelInner = bvLowered
    BevelKind = bkFlat
    DataField = 'UF'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 11
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    ParentFont = False
    TabOrder = 18
  end
  object enascimento: TDBEdit
    Left = 167
    Top = 110
    Width = 67
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'nascimento'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object etipocliente: TDBComboBox
    Left = 324
    Top = 74
    Width = 91
    Height = 21
    Cursor = crHandPoint
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'tipocliente'
    DataSource = fclientelocaliza.ds
    ItemHeight = 13
    TabOrder = 3
  end
  object esite: TDBEdit
    Left = 241
    Top = 279
    Width = 137
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecLowerCase
    DataField = 'site'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 38
  end
  object DBEdit2: TDBEdit
    Left = 516
    Top = 145
    Width = 23
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ddd'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object enumero: TDBEdit
    Left = 694
    Top = 109
    Width = 54
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'numero'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object ecomplemento: TDBEdit
    Left = 96
    Top = 145
    Width = 80
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'complemento'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object eramal: TDBEdit
    Left = 701
    Top = 143
    Width = 45
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ramal'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
  end
  object ecnpj: TDBEdit
    Left = 304
    Top = 110
    Width = 110
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'cnpj'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnExit = ecnpjExit
    OnKeyPress = ecnpjKeyPress
  end
  object DBEdit12: TDBEdit
    Left = 441
    Top = 247
    Width = 84
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'fone3'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
  end
  object DBEdit13: TDBEdit
    Left = 622
    Top = 145
    Width = 77
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'fone2'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
  end
  object ecepcobranca: TDBEdit
    Left = 328
    Top = 247
    Width = 65
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'cepcobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 32
  end
  object DBComboBox1: TDBComboBox
    Left = 395
    Top = 247
    Width = 45
    Height = 18
    Style = csOwnerDrawFixed
    BevelInner = bvLowered
    BevelKind = bkFlat
    DataField = 'ufcobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    ParentFont = False
    TabOrder = 33
  end
  object rfisjur: TDBRadioGroup
    Left = 96
    Top = 60
    Width = 57
    Height = 32
    Caption = 'S'#243'c APCD'
    Color = 13948116
    Columns = 2
    DataField = 'socio'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    Items.Strings = (
      'S'
      'N')
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Values.Strings = (
      'S'
      'N')
  end
  object DBEdit5: TDBEdit
    Left = 123
    Top = 399
    Width = 662
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'obs'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 56
  end
  object evendedor: TDBComboBox
    Left = 604
    Top = 247
    Width = 181
    Height = 21
    Cursor = crHandPoint
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'vendedor'
    DataSource = fclientelocaliza.ds
    ItemHeight = 13
    TabOrder = 36
  end
  object DBEdit6: TDBEdit
    Left = 96
    Top = 212
    Width = 484
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'enderecocobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
  end
  object dbedit7: TDBEdit
    Left = 195
    Top = 247
    Width = 131
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'municipiocobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 31
  end
  object DBEdit10: TDBEdit
    Left = 528
    Top = 247
    Width = 75
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'fax'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 35
  end
  object estatus: TDBComboBox
    Left = 417
    Top = 74
    Width = 92
    Height = 21
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'statu'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
  end
  object DBCheckBox2: TDBCheckBox
    Left = 627
    Top = 344
    Width = 56
    Height = 15
    Caption = 'A Prazo'
    Color = 14803425
    DataField = 'vendaaprazo'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 53
    ValueChecked = 'N'
    ValueUnchecked = 'S'
    Visible = False
  end
  object DBCheckBox3: TDBCheckBox
    Left = 681
    Top = 344
    Width = 56
    Height = 15
    Caption = 'Cheque'
    Color = 14803425
    DataField = 'vendacheque'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 54
    ValueChecked = 'N'
    ValueUnchecked = 'S'
    Visible = False
  end
  object DBCheckBox6: TDBCheckBox
    Left = 735
    Top = 344
    Width = 50
    Height = 15
    Caption = 'Cart'#227'o'
    Color = 14803425
    DataField = 'vendacartao'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 55
    ValueChecked = 'N'
    ValueUnchecked = 'S'
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 299
    Top = 341
    Width = 80
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'limitecredito'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 49
    Visible = False
  end
  object DBCheckBox4: TDBCheckBox
    Left = 381
    Top = 344
    Width = 90
    Height = 15
    Caption = 'Contas a Prazo'
    Color = 14803425
    DataField = 'laprazo'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 50
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object DBCheckBox5: TDBCheckBox
    Left = 470
    Top = 344
    Width = 93
    Height = 15
    Caption = 'Vendas Avulsas'
    Color = 14803425
    DataField = 'lavulsa'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 51
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object DBCheckBox7: TDBCheckBox
    Left = 562
    Top = 344
    Width = 59
    Height = 15
    Caption = 'Cheques'
    Color = 14803425
    DataField = 'lcheque'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 52
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 379
    Top = 279
    Width = 102
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecLowerCase
    DataField = 'msn'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 39
  end
  object DBEdit8: TDBEdit
    Left = 618
    Top = 279
    Width = 168
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecLowerCase
    DataField = 'skype'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 41
  end
  object DBEdit15: TDBEdit
    Left = 584
    Top = 212
    Width = 54
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'numerocobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
  end
  object DBEdit16: TDBEdit
    Left = 640
    Top = 212
    Width = 145
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'complementocobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 29
  end
  object DBEdit17: TDBEdit
    Left = 96
    Top = 247
    Width = 97
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'bairrocobranca'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
  end
  object DBEdit18: TDBEdit
    Left = 509
    Top = 76
    Width = 45
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CRO'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object DBEdit19: TDBEdit
    Left = 96
    Top = 110
    Width = 68
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'anoformatura'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 236
    Top = 96
    Width = 67
    Height = 32
    Caption = 'Sexo'
    Color = 13948116
    Columns = 2
    DataField = 'sexo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'M'
      'F')
    ParentColor = False
    ParentFont = False
    TabOrder = 9
    Values.Strings = (
      'M'
      'F')
  end
  object DBRadioGroup3: TDBRadioGroup
    Left = 325
    Top = 162
    Width = 67
    Height = 32
    Caption = 'F'#237's/Jur'
    Color = 15658734
    Columns = 2
    DataField = 'FisJur'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'F'
      'J')
    ParentColor = False
    ParentFont = False
    TabOrder = 24
    Values.Strings = (
      'F'
      'J')
  end
  object DBEdit9: TDBEdit
    Left = 159
    Top = 310
    Width = 291
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Titular'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 42
  end
  object DBEdit14: TDBEdit
    Left = 574
    Top = 310
    Width = 48
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'agencia'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 44
  end
  object DBEdit20: TDBEdit
    Left = 624
    Top = 310
    Width = 68
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'conta'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 45
  end
  object DBRadioGroup2: TDBRadioGroup
    Left = 694
    Top = 295
    Width = 92
    Height = 32
    Caption = 'Conta'
    Color = 15658734
    Columns = 2
    DataField = 'tpconta'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Cor'
      'Pou')
    ParentColor = False
    ParentFont = False
    TabOrder = 46
    Values.Strings = (
      'C'
      'P')
  end
  object ecnpjb: TDBEdit
    Left = 96
    Top = 341
    Width = 110
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'cnpjconta'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 47
    OnExit = ecnpjbExit
    OnKeyPress = ecnpjKeyPress
  end
  object DBEdit23: TDBEdit
    Left = 208
    Top = 341
    Width = 87
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'IEconta'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 48
  end
  object DBEdit21: TDBEdit
    Left = 393
    Top = 177
    Width = 227
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'conjuge'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnExit = enomecurtoExit
  end
  object DBEdit22: TDBEdit
    Left = 622
    Top = 177
    Width = 162
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'referencia'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    OnExit = enomecurtoExit
  end
  object DBComboBox2: TDBComboBox
    Left = 96
    Top = 311
    Width = 57
    Height = 18
    Style = csOwnerDrawFixed
    BevelInner = bvLowered
    BevelKind = bkFlat
    DataField = 'vinculo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    Items.Strings = (
      'A'
      'C'
      'V'
      'O')
    ParentFont = False
    TabOrder = 57
  end
  object DBRadioGroup4: TDBRadioGroup
    Left = 152
    Top = 60
    Width = 57
    Height = 32
    Caption = 'Prom'#231#227'o'
    Color = 13948116
    Columns = 2
    DataField = 'promocao'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    Items.Strings = (
      'S'
      'N')
    ParentColor = False
    ParentFont = False
    TabOrder = 58
    Values.Strings = (
      'S'
      'N')
  end
  object DBRadioGroup5: TDBRadioGroup
    Left = 3
    Top = 224
    Width = 88
    Height = 105
    Caption = 'Cliente'
    DataField = 'np'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Items.Strings = (
      'Ativo'
      'Inativo'
      'Cancelado')
    ParentFont = False
    TabOrder = 59
    Values.Strings = (
      'A'
      'I'
      'C')
    OnChange = DBRadioGroup5Change
  end
  object ebanco: TDBLookupComboBox
    Left = 450
    Top = 309
    Width = 122
    Height = 21
    DataField = 'Banco'
    DataSource = fclientelocaliza.ds
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'nome'
    ListField = 'nome;numero'
    ListSource = ds
    TabOrder = 43
    OnClick = cgpClick
  end
  object eusucart: TDBComboBox
    Left = 483
    Top = 275
    Width = 131
    Height = 21
    Cursor = crHandPoint
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'usucart'
    DataSource = fclientelocaliza.ds
    ItemHeight = 13
    TabOrder = 40
  end
  object cgp: TDBLookupComboBox
    Left = 256
    Top = 366
    Width = 217
    Height = 21
    DataField = 'gp'
    DataSource = fclientelocaliza.ds
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'descricao'
    ListField = 'descricao;sper;taxa'
    ListSource = dsgp
    TabOrder = 60
    OnClick = cgpClick
  end
  object DBCheckBox1: TDBCheckBox
    Left = 479
    Top = 368
    Width = 162
    Height = 15
    Caption = 'Paga taxa transfer'#234'ncia banco'
    Color = 14803425
    DataField = 'txbc'
    DataSource = fclientelocaliza.ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 61
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object ActionList1: TActionList
    Left = 552
    Top = 432
    object INSERIR: TAction
      Caption = 'INSERIR'
      OnExecute = INSERIRExecute
    end
    object Alterar: TAction
      Caption = 'Alterar'
      OnExecute = AlterarExecute
    end
    object combos: TAction
      Caption = 'combos'
      OnExecute = combosExecute
    end
    object TC: TAction
      Caption = 'TC'
      ShortCut = 45
      OnExecute = TCExecute
    end
    object cnpjie: TAction
      Caption = 'cnpjie'
    end
  end
  object tbbc: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbnbanco order by nome')
    Params = <>
    Properties.Strings = (
      'select * from tbnbanco order by nome')
    Left = 56
    Top = 32
  end
  object ds: TDataSource
    DataSet = tbbc
    Left = 12
    Top = 28
  end
  object gp: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbconffin where tp = 10 order by descricao')
    Params = <>
    Properties.Strings = (
      'select * from tbnbanco order by nome')
    Left = 176
    Top = 16
  end
  object dsgp: TDataSource
    DataSet = gp
    Left = 132
    Top = 12
  end
end
