object fpagarfiltro: Tfpagarfiltro
  Left = 440
  Top = 146
  BorderStyle = bsDialog
  Caption = 'FILTROS PERSONALIZADOS'
  ClientHeight = 301
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
    Left = 27
    Top = 198
    Width = 95
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
    Left = 26
    Top = 226
    Width = 95
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
    Left = 105
    Top = 113
    Width = 21
    Height = 13
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
  object Label1: TLabel
    Left = 40
    Top = 171
    Width = 84
    Height = 13
    Caption = 'Conta Cont'#225'bil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 42
    Top = 140
    Width = 81
    Height = 13
    Caption = 'Tipo de Conta'
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
    Top = 244
    Width = 183
    Height = 22
    Caption = '&Credor'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object BitBtn1: TBitBtn
    Left = 126
    Top = 273
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
    Top = 273
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
    Top = 68
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
    Top = 34
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
    Left = 128
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
  object etipoconta: TDBLookupComboBox
    Left = 128
    Top = 135
    Width = 182
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
    TabOrder = 6
  end
  object etipodespesa: TDBLookupComboBox
    Left = 128
    Top = 164
    Width = 182
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
    ListSource = dsdespesa
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
  end
  object ecidade: TDBLookupComboBox
    Left = 127
    Top = 193
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
    KeyField = 'municipio'
    ListField = 'municipio'
    ListSource = dsfornecedor
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
  end
  object EUF: TComboBox
    Left = 126
    Top = 223
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
  object rcheque: TRadioGroup
    Left = 0
    Top = 0
    Width = 311
    Height = 34
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
      'Outros'
      'Todos')
    ParentColor = False
    ParentFont = False
    TabOrder = 10
    OnClick = rchequeClick
  end
  object dsdespesa: TDataSource
    DataSet = tbdespesa
    Left = 246
    Top = 386
  end
  object pdespesa: TDataSetProvider
    DataSet = sdespesa
    Constraints = True
    Left = 180
    Top = 385
  end
  object tbdespesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdespesa'
    Left = 128
    Top = 400
  end
  object tbconta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pconta'
    Left = 88
    Top = 380
  end
  object pconta: TDataSetProvider
    DataSet = sconta
    Constraints = True
    Left = 40
    Top = 297
  end
  object dsconta: TDataSource
    DataSet = tbconta
    Left = 40
    Top = 336
  end
  object dsfornecedor: TDataSource
    DataSet = tbfornecedor
    Left = 346
    Top = 370
  end
  object pfornecedor: TDataSetProvider
    DataSet = sfornecedor
    Constraints = True
    Left = 412
    Top = 345
  end
  object tbfornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pfornecedor'
    Left = 488
    Top = 384
  end
  object sfornecedor: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select distinct municipio from tbfornecedor where municipio is n' +
        'ot null')
    Params = <>
    Left = 416
    Top = 304
  end
  object sdespesa: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbdespesa')
    Params = <>
    Left = 248
    Top = 336
  end
  object sconta: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbconta')
    Params = <>
    Left = 176
    Top = 320
  end
end
