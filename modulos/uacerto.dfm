object facerto: Tfacerto
  Left = 150
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 561
  ClientWidth = 454
  Color = 15790320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ptotal: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 152
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 15790320
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = -3
      Width = 222
      Height = 28
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total Parcial'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 0
      Top = 26
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LACRESCIMO: TLabel
      Left = 0
      Top = 55
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Acr'#233'scimo'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 9
      Top = 28
      Width = 223
      Height = 1
    end
    object ltotal: TLabel
      Left = 0
      Top = 114
      Width = 222
      Height = 26
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 9
      Top = 58
      Width = 223
      Height = 1
    end
    object Bevel6: TBevel
      Left = 9
      Top = 87
      Width = 223
      Height = 1
    end
    object Label3: TLabel
      Left = 423
      Top = 32
      Width = 17
      Height = 24
      Alignment = taRightJustify
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LFRETE: TLabel
      Left = 4
      Top = 85
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object BFRETE: TBevel
      Left = 9
      Top = 116
      Width = 223
      Height = 1
    end
    object Label5: TLabel
      Left = 423
      Top = 64
      Width = 17
      Height = 24
      Alignment = taRightJustify
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object epeca: TDBEdit
      Left = 229
      Top = 0
      Width = 214
      Height = 27
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'totalparcial'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = epecaEnter
      OnExit = epecaExit
    end
    object edescontoreal: TDBEdit
      Left = 229
      Top = 30
      Width = 118
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'descontoreal'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = epecaEnter
      OnExit = edescontorealExit
      OnKeyPress = edescontorealKeyPress
    end
    object edescontopercent: TDBEdit
      Left = 354
      Top = 29
      Width = 65
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'descontopercent'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = epecaEnter
      OnExit = edescontopercentExit
      OnKeyPress = edescontorealKeyPress
    end
    object eacrescimo: TDBEdit
      Left = 229
      Top = 60
      Width = 118
      Height = 27
      HelpType = htKeyword
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'acrescimo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = epecaEnter
      OnExit = eacrescimoExit
      OnKeyPress = edescontorealKeyPress
    end
    object etotalpedido: TDBEdit
      Left = 229
      Top = 118
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'total'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnEnter = epecaEnter
      OnExit = etotalpedidoExit
    end
    object efrete: TDBEdit
      Left = 229
      Top = 89
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'frete'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = efreteEnter
      OnExit = efreteExit
      OnKeyPress = edescontorealKeyPress
    end
    object acrescimopercent: TDBEdit
      Left = 354
      Top = 61
      Width = 65
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'acrescimopercent'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = epecaEnter
      OnExit = acrescimopercentExit
      OnKeyPress = edescontorealKeyPress
    end
  end
  object ptickts: TPanel
    Left = 0
    Top = 396
    Width = 454
    Height = 63
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 15790320
    TabOrder = 3
    object lvrtransp: TLabel
      Left = -12
      Top = 24
      Width = 218
      Height = 32
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vl. Transporte'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ltickts: TLabel
      Left = -16
      Top = -3
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tickets'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 9
      Top = 28
      Width = 223
      Height = 1
    end
    object evltransp: TDBEdit
      Left = 229
      Top = 30
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'vltransp'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = epecaEnter
      OnExit = evltranspExit
      OnKeyPress = edescontorealKeyPress
    end
    object etikets: TDBEdit
      Left = 229
      Top = 2
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'tickts'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = epecaEnter
      OnExit = etiketsExit
      OnKeyPress = edescontorealKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 454
    Height = 102
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 15790320
    TabOrder = 4
    object Image2: TImage
      Left = 2
      Top = 67
      Width = 446
      Height = 43
      Center = True
    end
    object ltroco: TLabel
      Left = 0
      Top = 29
      Width = 222
      Height = 30
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TROCO'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 0
      Top = 1
      Width = 222
      Height = 30
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RECEBIDO'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel5: TBevel
      Left = 9
      Top = 30
      Width = 223
      Height = 1
    end
    object Bevel10: TBevel
      Left = 9
      Top = 60
      Width = 433
      Height = 1
    end
    object btnfinalizar: TSpeedButton
      Left = 198
      Top = 68
      Width = 140
      Height = 24
      Caption = '&Finalizar (INS)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnfinalizarClick
    end
    object btncancelar: TSpeedButton
      Left = 341
      Top = 68
      Width = 105
      Height = 24
      Caption = '&Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btncancelarClick
    end
    object llocaliza: TLabel
      Left = 6
      Top = 66
      Width = 173
      Height = 15
      AutoSize = False
      Caption = 'F9 = localiza cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lclisemcadastro: TLabel
      Left = 6
      Top = 78
      Width = 159
      Height = 15
      AutoSize = False
      Caption = 'F10 = Cli n'#227'o Cadastrado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object etroco: TDBEdit
      Left = 229
      Top = 32
      Width = 213
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'troco'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = epecaEnter
      OnExit = etrocoExit
    end
    object erecebido: TDBEdit
      Left = 229
      Top = 2
      Width = 213
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'recebido'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = epecaEnter
      OnExit = erecebidoExit
      OnKeyDown = erecebidoKeyDown
    end
  end
  object precebimento: TPanel
    Left = 0
    Top = 330
    Width = 454
    Height = 66
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 15790320
    TabOrder = 2
    object Label14: TLabel
      Left = -16
      Top = -3
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cart'#227'o Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = -16
      Top = 28
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cart'#227'o D'#233'bito'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel12: TBevel
      Left = 5
      Top = 29
      Width = 223
      Height = 1
    end
    object ECARTAO: TDBEdit
      Left = 228
      Top = 1
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'cartao'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = epecaEnter
      OnExit = ECARTAOExit
      OnKeyPress = edescontorealKeyPress
    end
    object ecartaod: TDBEdit
      Left = 228
      Top = 30
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'cartaod'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = epecaEnter
      OnExit = ecartaodExit
      OnKeyPress = edescontorealKeyPress
    end
    object StaticText1: TStaticText
      Left = 212
      Top = 10
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F7'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText7: TStaticText
      Left = 212
      Top = 38
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F8'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 178
    Width = 454
    Height = 152
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 15790320
    TabOrder = 1
    object Label9: TLabel
      Left = -16
      Top = 26
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dinheiro'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = -16
      Top = 55
      Width = 222
      Height = 33
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lcheque: TLabel
      Left = -16
      Top = 87
      Width = 222
      Height = 29
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cheque Pr'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = -16
      Top = 117
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'A Prazo'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 9
      Top = 57
      Width = 223
      Height = 1
    end
    object Bevel8: TBevel
      Left = 9
      Top = 88
      Width = 223
      Height = 1
    end
    object Bevel13: TBevel
      Left = 9
      Top = 118
      Width = 223
      Height = 1
    end
    object SpeedButton2: TSpeedButton
      Left = 415
      Top = 90
      Width = 26
      Height = 27
      Hint = 'Clique para escolher os cheques'
      Caption = 'OK'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object lcredito: TLabel
      Left = -16
      Top = -3
      Width = 222
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = 11008
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel9: TBevel
      Left = 9
      Top = 28
      Width = 223
      Height = 1
    end
    object edinheiro: TDBEdit
      Left = 228
      Top = 30
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'dinheiro'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = epecaEnter
      OnExit = edinheiroExit
      OnKeyPress = edescontorealKeyPress
    end
    object echeque: TDBEdit
      Left = 228
      Top = 60
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'cheque'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = epecaEnter
      OnExit = echequeExit
      OnKeyPress = edescontorealKeyPress
    end
    object echequepre: TDBEdit
      Left = 228
      Top = 90
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'chequepre'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = epecaEnter
      OnExit = echequepreExit
      OnKeyPress = edescontorealKeyPress
    end
    object efiado: TDBEdit
      Left = 228
      Top = 119
      Width = 214
      Height = 27
      HelpType = htKeyword
      BevelEdges = [beLeft, beTop, beRight]
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'fiado'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = epecaEnter
      OnExit = efiadoExit
      OnKeyPress = edescontorealKeyPress
    end
    object ecredito: TDBEdit
      Left = 228
      Top = 2
      Width = 214
      Height = 27
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16056319
      DataField = 'credito'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = epecaEnter
      OnExit = ecreditoExit
      OnKeyPress = edescontorealKeyPress
    end
    object rconvenio: TCheckBox
      Left = 5
      Top = 35
      Width = 77
      Height = 17
      Caption = 'Conv'#234'nio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = rconvenioClick
    end
    object StaticText2: TStaticText
      Left = 212
      Top = 9
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F2'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText3: TStaticText
      Left = 212
      Top = 38
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText4: TStaticText
      Left = 212
      Top = 68
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object StaticText5: TStaticText
      Left = 212
      Top = 98
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object StaticText6: TStaticText
      Left = 212
      Top = 127
      Width = 16
      Height = 12
      AutoSize = False
      BevelInner = bvSpace
      BevelKind = bkTile
      Caption = 'F6'
      Font.Charset = ANSI_CHARSET
      Font.Color = 2649162
      Font.Height = -8
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 152
    Width = 454
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    Color = 15790320
    TabOrder = 5
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 454
      Height = 43
      Align = alTop
      Center = True
    end
    object Label4: TLabel
      Left = 158
      Top = 5
      Width = 149
      Height = 16
      Caption = 'TIPO DE RECEBIMENTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object ActionList1: TActionList
    Left = 24
    Top = 216
    object localizarcliente: TAction
      Caption = 'localizarcliente'
      ShortCut = 120
      OnExecute = localizarclienteExecute
    end
    object parcvenda: TAction
      Caption = 'parcvenda'
      OnExecute = parcvendaExecute
    end
    object totalizar: TAction
      Caption = 'totalizar'
      OnExecute = totalizarExecute
    end
    object frete: TAction
      Caption = 'frete'
      OnExecute = freteExecute
    end
    object caixa: TAction
      Caption = 'caixa'
      OnExecute = caixaExecute
    end
    object comissao: TAction
      Caption = 'comissao'
      OnExecute = comissaoExecute
    end
    object acertovenda: TAction
      Caption = 'acertovenda'
      OnExecute = acertovendaExecute
    end
    object acertopedido: TAction
      Caption = 'acertopedido'
      OnExecute = acertopedidoExecute
    end
    object acertobalcao: TAction
      Caption = 'acertobalcao'
      OnExecute = acertobalcaoExecute
    end
    object gravavenda: TAction
      Caption = 'gravavenda'
      OnExecute = gravavendaExecute
    end
    object acertoentrada: TAction
      Caption = 'acertoentrada'
      OnExecute = acertoentradaExecute
    end
    object acertopagar_receber: TAction
      Caption = 'acertopagar_receber'
      OnExecute = acertopagar_receberExecute
    end
    object acertofuncionario: TAction
      Caption = 'acertofuncionario'
      OnExecute = acertofuncionarioExecute
    end
    object fidelidade: TAction
      Caption = 'fidelidade'
      OnExecute = fidelidadeExecute
    end
    object clisemcadastro: TAction
      Caption = 'clisemcadastro'
      ShortCut = 121
      OnExecute = clisemcadastroExecute
    end
    object chequeterceiro: TAction
      Caption = 'chequeterceiro'
      OnExecute = chequeterceiroExecute
    end
    object atualizacheque: TAction
      Caption = 'atualizacheque'
      OnExecute = atualizachequeExecute
    end
    object verificadesconto: TAction
      Caption = 'verificadesconto'
      OnExecute = verificadescontoExecute
    end
    object creditotrocofor: TAction
      Caption = 'creditotrocofor'
      OnExecute = creditotrocoforExecute
    end
    object convenio: TAction
      Caption = 'convenio'
      OnExecute = convenioExecute
    end
    object inserecredito: TAction
      Caption = 'inserecredito'
      OnExecute = inserecreditoExecute
    end
    object brword: TAction
      Caption = 'brword'
      OnExecute = brwordExecute
    end
    object acresdesc: TAction
      Caption = 'acresdesc'
      OnExecute = acresdescExecute
    end
    object tipo: TAction
      Caption = 'tipo'
    end
  end
  object tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ppedido'
    Left = 20
    Top = 313
    object tabelacodigo: TIntegerField
      FieldName = 'codigo'
      DisplayFormat = '000000'
    end
    object tabelanome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object tabelatotalparcial: TFloatField
      FieldName = 'totalparcial'
      DisplayFormat = '###,##0.00'
    end
    object tabeladescontoReal: TFloatField
      FieldName = 'descontoReal'
      DisplayFormat = '###,##0.00'
    end
    object tabeladescontoPercent: TFloatField
      FieldName = 'descontoPercent'
      DisplayFormat = '###,##0.00'
    end
    object tabelatotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,##0.00'
    end
    object tabeladinheiro: TFloatField
      FieldName = 'dinheiro'
      DisplayFormat = '###,##0.00'
    end
    object tabelacheque: TFloatField
      FieldName = 'cheque'
      DisplayFormat = '###,##0.00'
    end
    object tabelachequepre: TFloatField
      FieldName = 'chequepre'
      DisplayFormat = '###,##0.00'
    end
    object tabelacartao: TFloatField
      FieldName = 'cartao'
      DisplayFormat = '###,##0.00'
    end
    object tabelacartaod: TFloatField
      FieldName = 'cartaod'
      DisplayFormat = '###,##0.00'
    end
    object tabelatickts: TFloatField
      FieldName = 'tickts'
      DisplayFormat = '###,##0.00'
    end
    object tabelavltransp: TFloatField
      FieldName = 'vltransp'
      DisplayFormat = '###,##0.00'
    end
    object tabelafiado: TFloatField
      FieldName = 'fiado'
      DisplayFormat = '###,##0.00'
    end
    object tabelarecebido: TFloatField
      FieldName = 'recebido'
      DisplayFormat = '###,##0.00'
    end
    object tabelatroco: TFloatField
      FieldName = 'troco'
      DisplayFormat = '###,##0.00'
    end
    object tabelafrete: TFloatField
      FieldName = 'frete'
      DisplayFormat = '###,##0.00'
    end
    object tabelaacrescimo: TFloatField
      FieldName = 'acrescimo'
      DisplayFormat = '###,##0.00'
    end
    object tabelaacrescimopercent: TFloatField
      FieldName = 'acrescimopercent'
    end
    object tabeladata: TDateField
      FieldName = 'data'
    end
    object tabelanumero: TStringField
      FieldName = 'numero'
      Size = 15
    end
    object tabelacredito: TFloatField
      FieldName = 'credito'
      DisplayFormat = '###,##0.00'
    end
    object tabelatipodesconto: TStringField
      FieldName = 'tipodesconto'
      Size = 1
    end
    object tabelanomecartao: TStringField
      FieldName = 'nomecartao'
      Size = 15
    end
    object tabelalinkvenda: TIntegerField
      FieldName = 'linkvenda'
    end
    object tabelachequeterceiro: TFloatField
      FieldName = 'chequeterceiro'
      DisplayFormat = '###,##0.00'
    end
    object tabelafiltro: TMemoField
      FieldName = 'filtro'
      BlobType = ftMemo
    end
    object tabelavendedor: TStringField
      FieldName = 'vendedor'
      Size = 60
    end
    object tabelafiltropagar: TMemoField
      FieldName = 'filtropagar'
      BlobType = ftMemo
    end
    object tabelamodo: TStringField
      FieldName = 'modo'
      Size = 15
    end
    object tabelanlancamento: TIntegerField
      FieldName = 'nlancamento'
    end
    object tabelaformapgto: TStringField
      FieldName = 'formapgto'
      Size = 30
    end
    object tabeladocumento: TStringField
      FieldName = 'documento'
      Size = 60
    end
    object tabelaobs: TStringField
      FieldName = 'obs'
      Size = 255
    end
    object tabelanomeconvenio: TStringField
      FieldName = 'nomeconvenio'
      Size = 60
    end
    object tabelaconvenio: TFloatField
      FieldName = 'convenio'
    end
    object tabelacodigovendedor: TIntegerField
      FieldName = 'codigovendedor'
    end
    object tabelatd: TStringField
      FieldName = 'td'
      Size = 1
    end
    object tabelaavulso: TStringField
      FieldName = 'avulso'
      Size = 1
    end
    object tabelavaloricmsS: TFloatField
      FieldName = 'valoricmsS'
    end
    object tabelachave: TIntegerField
      FieldName = 'chave'
    end
    object tabelachavepedido: TIntegerField
      FieldName = 'chavepedido'
    end
    object tabelatotalpeca: TFloatField
      FieldName = 'totalpeca'
    end
    object tabelavaloricmsubstituicao: TFloatField
      FieldName = 'valoricmsubstituicao'
    end
    object tabelavrcouvert: TFloatField
      FieldName = 'vrcouvert'
    end
    object tabelatipovenda: TStringField
      FieldName = 'tipovenda'
      Size = 1
    end
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 28
    Top = 264
  end
  object tbcomissao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 12
    Top = 385
    object tbcomissaochave: TIntegerField
      FieldName = 'chave'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbcomissaodocumento: TStringField
      FieldName = 'documento'
    end
    object tbcomissaodtemissao: TDateField
      FieldName = 'dtemissao'
    end
    object tbcomissaonome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object tbcomissaovrvenda: TFloatField
      FieldName = 'vrvenda'
    end
    object tbcomissaomargem: TFloatField
      FieldName = 'margem'
    end
    object tbcomissaocomissao: TFloatField
      FieldName = 'comissao'
    end
    object tbcomissaototalcomissao: TFloatField
      FieldName = 'totalcomissao'
    end
    object tbcomissaopago: TStringField
      FieldName = 'pago'
      FixedChar = True
      Size = 1
    end
    object tbcomissaomodalidade: TStringField
      FieldName = 'modalidade'
    end
    object tbcomissaolinkvenda: TIntegerField
      FieldName = 'linkvenda'
    end
    object tbcomissaomodulo: TStringField
      FieldName = 'modulo'
      Size = 1
    end
    object tbcomissaousuario: TIntegerField
      FieldName = 'usuario'
    end
    object tbcomissaocodigocliente: TIntegerField
      FieldName = 'codigocliente'
    end
    object tbcomissaocodigo: TIntegerField
      FieldName = 'codigo'
    end
  end
end
