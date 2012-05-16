object falterapgrec: Tfalterapgrec
  Left = 166
  Top = 112
  BorderStyle = bsDialog
  Caption = 'Alterar a conta'
  ClientHeight = 147
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 0
    Width = 84
    Height = 13
    Cursor = crHandPoint
    Caption = 'C'#243'digo   Nome'
    FocusControl = emora
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object DBText1: TDBText
    Left = 1
    Top = 14
    Width = 65
    Height = 17
    DataField = 'codigo'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label44: TLabel
    Left = 290
    Top = -2
    Width = 63
    Height = 13
    Cursor = crHandPoint
    Caption = 'Tipo Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = Label44Click
  end
  object pgdocumento: TLabel
    Left = 509
    Top = 0
    Width = 65
    Height = 13
    Cursor = crHandPoint
    HelpType = htKeyword
    Caption = 'Documento'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgmora: TLabel
    Left = 1
    Top = 40
    Width = 29
    Height = 13
    Cursor = crHandPoint
    Caption = 'Mora'
    FocusControl = emora
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    Visible = False
  end
  object pgtotal: TLabel
    Left = 58
    Top = 40
    Width = 30
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Valor'
    FocusControl = evrdocumento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgdesconto: TLabel
    Left = 119
    Top = 40
    Width = 83
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Desconto (R$)'
    FocusControl = evrdocumento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgacrescimo: TLabel
    Left = 204
    Top = 40
    Width = 59
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Acr'#233'scimo'
    FocusControl = evrdocumento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgvrdocumento: TLabel
    Left = 280
    Top = 40
    Width = 64
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Vr. L'#237'quido'
    FocusControl = evrdocumento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgrecebido: TLabel
    Left = 361
    Top = 40
    Width = 52
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Acertado'
    FocusControl = erecebido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgdiferenca: TLabel
    Left = 440
    Top = 40
    Width = 56
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Diferen'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgdtvencimento: TLabel
    Left = 521
    Top = 40
    Width = 67
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Caption = 'Vencimento'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pgobservacao: TLabel
    Left = 258
    Top = 76
    Width = 27
    Height = 13
    Cursor = crHandPoint
    Caption = 'Obs:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lposicao: TLabel
    Left = 397
    Top = -2
    Width = 83
    Height = 13
    Cursor = crHandPoint
    Caption = 'Posi'#231#227'o Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object epgcodigo: TDBEdit
    Left = 171
    Top = 165
    Width = 46
    Height = 16
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'codigo'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Visible = False
  end
  object epgnome: TDBEdit
    Left = 52
    Top = 13
    Width = 237
    Height = 16
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'nome'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = epgnomeKeyDown
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 289
    Top = 12
    Width = 107
    Height = 24
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BiDiMode = bdRightToLeft
    Color = 15461355
    DropDownWidth = 300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'codigo'
    ListField = 'codigo;descricao'
    ListSource = dsconta
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 509
    Top = 14
    Width = 65
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'documento'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object eletra: TDBEdit
    Left = 574
    Top = 14
    Width = 19
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'letra'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object emora: TDBEdit
    Left = 1
    Top = 54
    Width = 32
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object pgevalor: TDBEdit
    Left = 34
    Top = 54
    Width = 81
    Height = 17
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'vrdocumento'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnExit = pgevalorExit
  end
  object pgedesconto: TDBEdit
    Left = 119
    Top = 54
    Width = 76
    Height = 17
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'desconto'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnExit = pgevalorExit
  end
  object pgeacrescimo: TDBEdit
    Left = 200
    Top = 54
    Width = 76
    Height = 17
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'acrescimo'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnExit = pgevalorExit
  end
  object evrdocumento: TDBEdit
    Left = 280
    Top = 54
    Width = 76
    Height = 17
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'total'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object erecebido: TDBEdit
    Left = 361
    Top = 54
    Width = 76
    Height = 17
    HelpType = htKeyword
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'recebido'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object ediferenca: TDBEdit
    Left = 440
    Top = 54
    Width = 76
    Height = 17
    HelpType = htKeyword
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'diferenca'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit3: TDBEdit
    Left = 520
    Top = 54
    Width = 72
    Height = 17
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 16250871
    DataField = 'dtvencimento'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit12: TDBEdit
    Left = 256
    Top = 88
    Width = 335
    Height = 16
    BevelInner = bvLowered
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'obs'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object BitBtn16: TBitBtn
    Left = 416
    Top = 117
    Width = 100
    Height = 25
    HelpType = htKeyword
    Caption = '&Confirma (INS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = BitBtn16Click
  end
  object BitBtn17: TBitBtn
    Left = 518
    Top = 117
    Width = 75
    Height = 25
    Caption = 'C&ancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = BitBtn17Click
  end
  object pcheque: TPanel
    Left = 0
    Top = 77
    Width = 253
    Height = 33
    BevelOuter = bvNone
    TabOrder = 13
    object Label10: TLabel
      Left = 0
      Top = -2
      Width = 44
      Height = 13
      Cursor = crHandPoint
      Caption = 'Cheque'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label47: TLabel
      Left = 87
      Top = -2
      Width = 108
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      Caption = 'Agencia       Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEdit5: TDBEdit
      Left = 0
      Top = 12
      Width = 83
      Height = 17
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cheque'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 88
      Top = 12
      Width = 70
      Height = 17
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16250871
      DataField = 'agencia'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 163
      Top = 12
      Width = 89
      Height = 17
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16250871
      DataField = 'conta'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object ppassado: TPanel
    Left = 0
    Top = 112
    Width = 406
    Height = 33
    BevelOuter = bvNone
    TabOrder = 15
    Visible = False
    object Label2: TLabel
      Left = 0
      Top = -2
      Width = 78
      Height = 13
      Cursor = crHandPoint
      Caption = 'Passado para'
      FocusControl = enome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label3: TLabel
      Left = 328
      Top = -2
      Width = 28
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object enome: TDBEdit
      Left = 0
      Top = 12
      Width = 326
      Height = 17
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'passado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = enomeKeyDown
    end
    object DBEdit4: TDBEdit
      Left = 328
      Top = 12
      Width = 72
      Height = 17
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16250871
      DataField = 'datapassado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object cposicao: TDBLookupComboBox
    Left = 396
    Top = 12
    Width = 112
    Height = 24
    HelpType = htKeyword
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BiDiMode = bdRightToLeft
    Color = 15461355
    DropDownWidth = 300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'descricao'
    ListField = 'descricao'
    ListSource = dsposicao
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 18
  end
  object tbconta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pconta'
    Left = 16
    Top = 208
  end
  object dsconta: TDataSource
    DataSet = tbconta
    Left = 64
    Top = 204
  end
  object pconta: TDataSetProvider
    DataSet = sconta
    Constraints = True
    Left = 156
    Top = 209
  end
  object ds: TDataSource
    Left = 220
    Top = 204
  end
  object tbposicao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pposicao'
    Left = 16
    Top = 272
  end
  object dsposicao: TDataSource
    DataSet = tbposicao
    Left = 64
    Top = 268
  end
  object pposicao: TDataSetProvider
    DataSet = sposicao
    Constraints = True
    Left = 172
    Top = 289
  end
  object sconta: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbpergunta')
    Params = <>
    Left = 112
    Top = 208
  end
  object sposicao: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcontaposicao')
    Params = <>
    Left = 112
    Top = 272
  end
  object ActionList1: TActionList
    Left = 408
    Top = 72
    object preenche: TAction
      Caption = 'preenche'
      OnExecute = preencheExecute
    end
    object preenche2: TAction
      Caption = 'preenche2'
      OnExecute = preenche2Execute
    end
  end
end
