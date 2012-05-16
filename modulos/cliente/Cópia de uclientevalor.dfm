object fclientevalor: Tfclientevalor
  Left = -1
  Top = 68
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CADASTRO DE CLIENTES'
  ClientHeight = 415
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 187
    Top = 39
    Width = 28
    Height = 13
    Caption = 'Data'
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
    Left = 253
    Top = 38
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
    Left = 506
    Top = 39
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
    Left = 228
    Top = 71
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
  object Label16: TLabel
    Left = 347
    Top = 138
    Width = 34
    Height = 13
    Caption = 'Cargo'
    FocusControl = econtato
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
    Top = 71
    Width = 67
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Nome Curto'
    FocusControl = econtato
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
    Left = 386
    Top = 103
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
    Left = 502
    Top = 103
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
  object Label11: TLabel
    Left = 225
    Top = 138
    Width = 45
    Height = 13
    Cursor = crHandPoint
    Hint = 'Clique para LOCALIZAR/ORDENAR'
    Caption = 'Contato'
    FocusControl = econtato
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
    Left = 296
    Top = 37
    Width = 109
    Height = 13
    Caption = 'Tipo Cliente/Grupo'
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
    Left = 270
    Top = 216
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
    Left = 476
    Top = 105
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
    Left = 422
    Top = 71
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
    Left = 478
    Top = 71
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
    Left = 176
    Top = 138
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
    Left = 662
    Top = 103
    Width = 83
    Height = 13
    Cursor = crHandPoint
    Caption = 'Fone Trabalho'
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
    Left = 675
    Top = 181
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
    Left = 743
    Top = 180
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
  object Label12: TLabel
    Left = 657
    Top = 71
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
    Left = 96
    Top = 104
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
    Left = 165
    Top = 104
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
    Left = 275
    Top = 104
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
    Left = 203
    Top = 104
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
    Left = 557
    Top = 71
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
    Left = 582
    Top = 103
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
    Top = 216
    Width = 36
    Height = 13
    Caption = 'E-Mail'
    FocusControl = econtato
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
    Top = 320
    Width = 27
    Height = 13
    Caption = 'Obs:'
    FocusControl = econtato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object SpeedButton1: TSpeedButton
    Left = 97
    Top = 356
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
  object SpeedButton2: TSpeedButton
    Left = 324
    Top = 356
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
  object Label8: TLabel
    Left = 11
    Top = 97
    Width = 71
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = 'Grupo/Tipo'
    FocusControl = econtato
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label8Click
  end
  object Label22: TLabel
    Left = 628
    Top = 139
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
    Left = 269
    Top = 180
    Width = 181
    Height = 13
    Caption = 'Endere'#231'o de Cobran'#231'a/Entrega'
    FocusControl = eendereco
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
    Top = 180
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
    Left = 96
    Top = 138
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
  object Label6: TLabel
    Left = 440
    Top = 138
    Width = 87
    Height = 13
    Caption = 'Transportadora'
    FocusControl = econtato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label36: TLabel
    Left = 412
    Top = 38
    Width = 80
    Height = 13
    Caption = 'Status Cliente'
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
    Top = 151
    Width = 71
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = 'Vendedor'
    FocusControl = econtato
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label15Click
  end
  object Label19: TLabel
    Left = 11
    Top = 206
    Width = 71
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = 'Transport.'
    FocusControl = econtato
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label19Click
  end
  object Label21: TLabel
    Left = 11
    Top = 261
    Width = 71
    Height = 16
    Cursor = crHandPoint
    HelpType = htKeyword
    Alignment = taCenter
    AutoSize = False
    Caption = 'Status'
    FocusControl = econtato
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
    Left = 96
    Top = 288
    Width = 96
    Height = 13
    Caption = 'Limite de Cr'#233'dito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 581
    Top = 287
    Width = 203
    Height = 12
    Alignment = taCenter
    AutoSize = False
    Caption = 'A ESTE CLIENTE N'#195'O VENDER'
    Color = 14803425
    FocusControl = efone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label34: TLabel
    Left = 236
    Top = 287
    Width = 299
    Height = 12
    Alignment = taCenter
    AutoSize = False
    Caption = 'CONSIDERAR COMO LIMITE DE CR'#201'DITO'
    Color = 14803425
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 590
    Top = 375
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
    Left = 446
    Top = 216
    Width = 28
    Height = 13
    Caption = 'MSN'
    FocusControl = econtato
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
    Top = 216
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
  object Label33: TLabel
    Left = 713
    Top = 250
    Width = 57
    Height = 13
    Caption = 'Fone Ref.'
    FocusControl = efone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label35: TLabel
    Left = 95
    Top = 251
    Width = 51
    Height = 13
    Caption = 'Trabalho'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label56: TLabel
    Left = 447
    Top = 251
    Width = 63
    Height = 13
    Caption = 'Refer'#234'ncia'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label38: TLabel
    Left = 299
    Top = 251
    Width = 47
    Height = 13
    Caption = 'C'#244'njuge'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label40: TLabel
    Left = 631
    Top = 251
    Width = 45
    Height = 13
    Caption = 'V'#237'nculo'
    FocusControl = eendereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBEdit1: TDBEdit
    Left = 187
    Top = 52
    Width = 64
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Data'
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
    Left = 502
    Top = 117
    Width = 78
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 18
  end
  object ecodigo: TDBEdit
    Left = 253
    Top = 52
    Width = 44
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    ShowHint = True
    TabOrder = 2
  end
  object enomecurto: TDBEdit
    Left = 96
    Top = 84
    Width = 131
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 6
    OnExit = enomecurtoExit
  end
  object enome: TDBEdit
    Left = 506
    Top = 52
    Width = 279
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 5
    OnExit = enomeExit
  end
  object eendereco: TDBEdit
    Left = 230
    Top = 84
    Width = 187
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 7
    OnExit = eenderecoExit
    OnKeyDown = eenderecoKeyDown
  end
  object ebairro: TDBEdit
    Left = 557
    Top = 84
    Width = 97
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 10
  end
  object emunicipio: TDBEdit
    Left = 654
    Top = 84
    Width = 131
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 11
    OnExit = emunicipioExit
  end
  object ecep: TDBEdit
    Left = 96
    Top = 117
    Width = 65
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 12
  end
  object eie: TDBEdit
    Left = 386
    Top = 117
    Width = 87
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 16
    OnExit = eieExit
  end
  object econtato: TDBEdit
    Left = 224
    Top = 152
    Width = 122
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Contato'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
  end
  object ecargo: TDBEdit
    Left = 347
    Top = 152
    Width = 88
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'cargo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object eemail: TDBEdit
    Left = 96
    Top = 230
    Width = 173
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 32
  end
  object euf: TDBComboBox
    Left = 164
    Top = 117
    Width = 38
    Height = 17
    Cursor = crHandPoint
    Style = csOwnerDrawFixed
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 13
  end
  object enascimento: TDBEdit
    Left = 203
    Top = 117
    Width = 67
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 14
  end
  object etipocliente: TDBComboBox
    Left = 301
    Top = 50
    Width = 110
    Height = 21
    Cursor = crHandPoint
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
    CharCase = ecUpperCase
    DataField = 'tipocliente'
    DataSource = fclientelocaliza.ds
    ItemHeight = 13
    TabOrder = 3
  end
  object esite: TDBEdit
    Left = 271
    Top = 230
    Width = 173
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 33
  end
  object DBEdit2: TDBEdit
    Left = 476
    Top = 117
    Width = 23
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 17
  end
  object enumero: TDBEdit
    Left = 420
    Top = 84
    Width = 54
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 8
  end
  object ecomplemento: TDBEdit
    Left = 476
    Top = 84
    Width = 80
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 9
  end
  object eramal: TDBEdit
    Left = 176
    Top = 152
    Width = 45
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    Left = 274
    Top = 117
    Width = 110
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 15
    OnExit = ecnpjExit
    OnKeyPress = ecnpjKeyPress
  end
  object DBEdit12: TDBEdit
    Left = 661
    Top = 117
    Width = 124
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 20
  end
  object DBEdit13: TDBEdit
    Left = 582
    Top = 117
    Width = 77
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 19
  end
  object ecepcobranca: TDBEdit
    Left = 675
    Top = 193
    Width = 65
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 30
  end
  object DBComboBox1: TDBComboBox
    Left = 742
    Top = 192
    Width = 45
    Height = 18
    Style = csOwnerDrawFixed
    BevelInner = bvLowered
    BevelKind = bkSoft
    DataField = 'UFcobranca'
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
    TabOrder = 31
  end
  object rfisjur: TDBRadioGroup
    Left = 96
    Top = 36
    Width = 88
    Height = 32
    Color = 13948116
    Columns = 2
    DataField = 'FisJur'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'F'#237's'
      'Jur')
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Values.Strings = (
      'F'
      'J')
  end
  object DBRadioGroup2: TDBRadioGroup
    Left = 96
    Top = 179
    Width = 169
    Height = 31
    Caption = 'Est. Civil'
    Color = 16053751
    Columns = 4
    DataField = 'estadocivil'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Solt.'
      'Cas.'
      'Div.'
      'Out.')
    ParentColor = False
    ParentFont = False
    TabOrder = 27
    Values.Strings = (
      'S'
      'C'
      'D'
      'O')
  end
  object DBEdit5: TDBEdit
    Left = 123
    Top = 319
    Width = 474
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 48
  end
  object evendedor: TDBComboBox
    Left = 626
    Top = 152
    Width = 162
    Height = 21
    Cursor = crHandPoint
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
    CharCase = ecUpperCase
    DataField = 'vendedor'
    DataSource = fclientelocaliza.ds
    ItemHeight = 13
    TabOrder = 26
  end
  object DBEdit6: TDBEdit
    Left = 270
    Top = 193
    Width = 269
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 28
  end
  object DBEdit7: TDBEdit
    Left = 542
    Top = 193
    Width = 131
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 29
  end
  object DBEdit10: TDBEdit
    Left = 96
    Top = 152
    Width = 75
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 21
  end
  object etransportadora: TDBComboBox
    Left = 440
    Top = 152
    Width = 185
    Height = 21
    Cursor = crHandPoint
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
    CharCase = ecUpperCase
    DataField = 'transportadora'
    DataSource = fclientelocaliza.ds
    ItemHeight = 13
    TabOrder = 25
  end
  object estatus: TDBComboBox
    Left = 411
    Top = 50
    Width = 92
    Height = 21
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelKind = bkSoft
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
  object ENP: TDBCheckBox
    Left = 749
    Top = 319
    Width = 37
    Height = 15
    Caption = 'NP'
    Color = 14803425
    DataField = 'np'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 50
    ValueChecked = 'N'
    ValueUnchecked = 'S'
    Visible = False
  end
  object DBCheckBox2: TDBCheckBox
    Left = 581
    Top = 300
    Width = 70
    Height = 15
    Caption = 'A Prazo'
    Color = 14803425
    DataField = 'vendaaprazo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 45
    ValueChecked = 'N'
    ValueUnchecked = 'S'
  end
  object DBCheckBox3: TDBCheckBox
    Left = 655
    Top = 300
    Width = 66
    Height = 15
    Caption = 'Cheque'
    Color = 14803425
    DataField = 'vendacheque'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 46
    ValueChecked = 'N'
    ValueUnchecked = 'S'
  end
  object DBCheckBox6: TDBCheckBox
    Left = 725
    Top = 300
    Width = 59
    Height = 15
    Caption = 'Cart'#227'o'
    Color = 14803425
    DataField = 'vendacartao'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 47
    ValueChecked = 'N'
    ValueUnchecked = 'S'
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 300
    Width = 97
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 41
  end
  object DBCheckBox1: TDBCheckBox
    Left = 602
    Top = 319
    Width = 142
    Height = 15
    Caption = #201' Cliente Fidelidade?'
    Color = 14803425
    DataField = 'fidelidade'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 49
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox4: TDBCheckBox
    Left = 236
    Top = 300
    Width = 109
    Height = 15
    Caption = 'Contas a Prazo'
    Color = 14803425
    DataField = 'laprazo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 42
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox5: TDBCheckBox
    Left = 348
    Top = 300
    Width = 112
    Height = 15
    Caption = 'Vendas Avulsas'
    Color = 14803425
    DataField = 'lavulsa'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 43
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox7: TDBCheckBox
    Left = 463
    Top = 300
    Width = 72
    Height = 15
    Caption = 'Cheques'
    Color = 14803425
    DataField = 'lcheque'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 44
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBEdit4: TDBEdit
    Left = 446
    Top = 230
    Width = 173
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 34
  end
  object DBEdit8: TDBEdit
    Left = 618
    Top = 230
    Width = 168
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 35
  end
  object efax: TDBEdit
    Left = 713
    Top = 264
    Width = 72
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'foneconjuge'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 40
  end
  object dbedit100: TDBEdit
    Left = 95
    Top = 264
    Width = 200
    Height = 17
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'trabalho'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 36
  end
  object DBEdit9: TDBEdit
    Left = 446
    Top = 264
    Width = 179
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 38
  end
  object DBEdit11: TDBEdit
    Left = 298
    Top = 264
    Width = 145
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
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
    TabOrder = 37
  end
  object DBEdit14: TDBEdit
    Left = 630
    Top = 264
    Width = 83
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'vinculo'
    DataSource = fclientelocaliza.ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 39
  end
  object ActionList1: TActionList
    Left = 28
    Top = 304
    object formatar: TAction
      Caption = 'formatar'
    end
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
    object lacrebr: TAction
      Caption = 'lacrebr'
      OnExecute = lacrebrExecute
    end
  end
end
