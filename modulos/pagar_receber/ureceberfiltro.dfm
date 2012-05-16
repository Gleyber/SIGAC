object freceberfiltro: Tfreceberfiltro
  Left = 255
  Top = 192
  BorderStyle = bsDialog
  Caption = 'FILTROS PERSONALIZADOS'
  ClientHeight = 310
  ClientWidth = 311
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
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label25: TLabel
    Left = 35
    Top = 222
    Width = 84
    Height = 13
    Hint = 'Localiza aproximadamente'
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 35
    Top = 242
    Width = 84
    Height = 13
    Hint = 'Localiza aproximadamente'
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 35
    Top = 113
    Width = 84
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'De:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label24: TLabel
    Left = 214
    Top = 113
    Width = 13
    Height = 13
    Caption = 'A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object SpeedButton1: TSpeedButton
    Left = 126
    Top = 262
    Width = 183
    Height = 18
    Caption = '&Cliente'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 35
    Top = 203
    Width = 84
    Height = 13
    Hint = 'Localiza aproximadamente'
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 35
    Top = 183
    Width = 84
    Height = 13
    Hint = 'Localiza aproximadamente'
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 38
    Top = 137
    Width = 81
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo de Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 65
    Top = 160
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta em'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object BitBtn1: TBitBtn
    Left = 126
    Top = 283
    Width = 91
    Height = 24
    Caption = '&Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 219
    Top = 283
    Width = 90
    Height = 24
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object rdata: TRadioGroup
    Left = 0
    Top = 73
    Width = 311
    Height = 34
    Align = alTop
    Caption = 'Per'#237'odo por data'
    Color = 11443863
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 1
    Items.Strings = (
      'Emiss'#227'o'
      'Vencto'
      'Pgto')
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    OnClick = rdataClick
  end
  object RTIPO: TRadioGroup
    Left = 0
    Top = 39
    Width = 311
    Height = 34
    Align = alTop
    Caption = 'Filtrar'
    Color = 10192509
    Columns = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 3
    Items.Strings = (
      'Pago'
      'N'#227'o Pago'
      'Vencido'
      'Todos')
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    OnClick = RTIPOClick
  end
  object MaskEdit1: TMaskEdit
    Left = 127
    Top = 111
    Width = 79
    Height = 19
    BevelInner = bvLowered
    BevelKind = bkSoft
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 231
    Top = 111
    Width = 79
    Height = 19
    BevelInner = bvLowered
    BevelKind = bkSoft
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    Text = '  /  /    '
  end
  object euf: TComboBox
    Left = 126
    Top = 242
    Width = 183
    Height = 18
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Style = csOwnerDrawFixed
    BiDiMode = bdRightToLeft
    Color = 15461355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
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
  end
  object bfiltro: TRadioGroup
    Left = 0
    Top = 0
    Width = 311
    Height = 39
    Align = alTop
    Caption = 'Filtrar'
    Color = 9073514
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 2
    Items.Strings = (
      'Cheque'
      'Devolvido'
      'Passado'
      'Cart'#227'o'
      'Outros'
      'Todos')
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    OnClick = bfiltroClick
  end
  object emunicipio: TComboBox
    Left = 126
    Top = 222
    Width = 183
    Height = 18
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Style = csOwnerDrawFixed
    BiDiMode = bdRightToLeft
    Color = 15461355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
  end
  object ebairro: TComboBox
    Left = 126
    Top = 203
    Width = 183
    Height = 18
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Style = csOwnerDrawFixed
    BiDiMode = bdRightToLeft
    Color = 15461355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
  end
  object evendedor: TComboBox
    Left = 126
    Top = 183
    Width = 183
    Height = 18
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Style = csOwnerDrawFixed
    BiDiMode = bdRightToLeft
    Color = 15461355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 10
  end
  object etipoconta: TDBLookupComboBox
    Left = 126
    Top = 132
    Width = 183
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
    ListSource = dsconta
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 11
  end
  object econtaposicao: TDBLookupComboBox
    Left = 126
    Top = 156
    Width = 183
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
    ListSource = dscontaem
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 12
  end
  object dscontaem: TDataSource
    DataSet = tbcontaem
    Left = 438
    Top = 290
  end
  object pcontaem: TDataSetProvider
    DataSet = scontaem
    Constraints = True
    Left = 436
    Top = 181
  end
  object tbcontaem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pcontaem'
    Left = 436
    Top = 236
  end
  object tbconta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pconta'
    Left = 372
    Top = 180
  end
  object pconta: TDataSetProvider
    DataSet = sconta
    Constraints = True
    Left = 364
    Top = 129
  end
  object dsconta: TDataSource
    DataSet = tbconta
    Left = 368
    Top = 284
  end
  object scontaem: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcontaposicao')
    Params = <>
    Left = 432
    Top = 120
  end
  object sconta: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select * from tbconta where pgrec = "REC" or pgrec = "AMBOS" or ' +
        'pgrec is null')
    Params = <>
    Left = 368
    Top = 232
  end
end
