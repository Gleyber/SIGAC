object ffinanceirovalor: Tffinanceirovalor
  Left = 16
  Top = 59
  Width = 782
  Height = 462
  Caption = 'Opera'#231#245'es'
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
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 774
    Height = 40
    Align = alTop
    Caption = 'Escolha o tipo de opera'#231#227'o'
    Columns = 9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Items.Strings = (
      'Emp. CDC'
      'Consig.'
      'Cart'#227'o C.'
      'Boleto'
      'Mens/Rec'
      'Adiant.'
      'Cred Pess.'
      'Gnatus'
      'Cart'#227'o D.')
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 774
    Height = 39
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object lemprestimo: TLabel
      Left = 328
      Top = 1
      Width = 165
      Height = 14
      Caption = 'Escolha o tipo de empr'#233'stimo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 683
      Top = 15
      Width = 87
      Height = 21
      Caption = '&Informa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object lpgto: TLabel
      Left = 5
      Top = 1
      Width = 106
      Height = 14
      Cursor = crHandPoint
      Caption = 'Tipo de pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object combo: TDBLookupComboBox
      Left = 328
      Top = 15
      Width = 350
      Height = 21
      KeyField = 'descricao'
      ListField = 'descricao'
      TabOrder = 1
      OnClick = comboClick
    end
    object epgto: TDBLookupComboBox
      Left = 6
      Top = 15
      Width = 195
      Height = 21
      KeyField = 'descricao'
      ListField = 'descricao'
      ListSource = dsconta
      TabOrder = 0
      Visible = False
      OnClick = comboClick
    end
    object rmensalidade: TCheckBox
      Left = 206
      Top = 13
      Width = 119
      Height = 17
      Caption = #201' Mensalidadede?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object rabater: TCheckBox
      Left = 206
      Top = 14
      Width = 116
      Height = 17
      Caption = 'Abater cliente?'
      TabOrder = 3
    end
  end
  object pboleto: TPanel
    Left = 0
    Top = 79
    Width = 774
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = 15658734
    TabOrder = 2
    object Label14: TLabel
      Left = 85
      Top = 4
      Width = 60
      Height = 14
      Caption = 'Valor Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 178
      Top = 4
      Width = 68
      Height = 14
      Caption = 'N'#186' Parcelas?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 278
      Top = 4
      Width = 44
      Height = 14
      Caption = 'Dia Pgto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 350
      Top = 4
      Width = 91
      Height = 14
      Caption = 'Nome do Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 5
      Top = 5
      Width = 57
      Height = 14
      Caption = 'Data Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SpeedButton2: TSpeedButton
      Left = 700
      Top = 18
      Width = 70
      Height = 21
      Caption = '&Imprimir...'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object cboletovr: TEdit
      Left = 80
      Top = 19
      Width = 97
      Height = 21
      BevelKind = bkFlat
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = cdcvrKeyPress
    end
    object cboletoqtd: TSpinEdit
      Left = 178
      Top = 19
      Width = 97
      Height = 22
      MaxValue = 360
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object boletodia: TMaskEdit
      Left = 277
      Top = 19
      Width = 70
      Height = 21
      BevelKind = bkFlat
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object cboletodoc: TEdit
      Left = 349
      Top = 19
      Width = 276
      Height = 21
      BevelKind = bkFlat
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 627
      Top = 18
      Width = 70
      Height = 21
      Caption = '&Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn4Click
    end
    object edbase: TMaskEdit
      Left = 5
      Top = 19
      Width = 76
      Height = 21
      BevelKind = bkFlat
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = edbaseExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 120
    Width = 774
    Height = 34
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 3
    object Label2: TLabel
      Left = 6
      Top = 7
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Observa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eobs: TEdit
      Left = 80
      Top = 7
      Width = 593
      Height = 21
      BevelKind = bkFlat
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 683
      Top = 5
      Width = 95
      Height = 25
      Caption = 'Gerar Conta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 154
    Width = 774
    Height = 281
    Align = alClient
    Color = clWhite
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = 9073514
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'dtvencimento'
        Title.Caption = 'Pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpagamento'
        Title.Caption = 'DtRcbtoBco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrtitulo'
        Title.Caption = 'VrT'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrcliente'
        Title.Caption = 'VrCliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LiqEmpresa'
        Title.Caption = 'L'#237'qEmpresa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LiqBanco'
        Title.Caption = 'L'#237'qBanco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpmf'
        Title.Caption = 'CPMF%'
        Title.Color = 15658734
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'txem'
        Title.Caption = 'Empresa%'
        Title.Color = 15658734
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'txbc'
        Title.Caption = 'Banco%'
        Title.Color = 15658734
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrem'
        Title.Caption = 'EmpresaR$'
        Title.Color = 15658734
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrbc'
        Title.Caption = 'BancoR$'
        Title.Color = 15658734
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'retorno'
        Title.Caption = 'Tx Retorno'
        Title.Color = 15658734
        Visible = True
      end>
  end
  object tb: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'pg'
    StoreDefs = True
    Left = 196
    Top = 336
    object tbchave: TIntegerField
      FieldName = 'chave'
    end
    object tbtipoconta: TStringField
      FieldName = 'tipoconta'
      Size = 15
    end
    object tbcodigoconta: TIntegerField
      FieldName = 'codigoconta'
    end
    object tbdocumento: TStringField
      FieldName = 'documento'
      Size = 15
    end
    object tbletra: TStringField
      FieldName = 'letra'
      Size = 11
    end
    object tbcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tbnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object tbdtemissao: TDateField
      FieldName = 'dtemissao'
    end
    object tbdtvencimento: TDateField
      FieldName = 'dtvencimento'
    end
    object tbvrtitulo: TFloatField
      FieldName = 'vrtitulo'
      DisplayFormat = '###,##0.00'
    end
    object tbvrcalc: TFloatField
      FieldName = 'vrcalc'
      DisplayFormat = '###,##0.00'
    end
    object tbcpmf: TFloatField
      FieldName = 'cpmf'
      DisplayFormat = '###,##0.00'
    end
    object tbtxem: TFloatField
      FieldName = 'txem'
      DisplayFormat = '###,##0.00'
    end
    object tbtxbc: TFloatField
      FieldName = 'txbc'
      DisplayFormat = '###,##0.00'
    end
    object tbvrem: TFloatField
      FieldName = 'vrem'
      DisplayFormat = '###,##0.00'
    end
    object tbvrbc: TFloatField
      FieldName = 'vrbc'
      DisplayFormat = '###,##0.00'
    end
    object tbretorno: TFloatField
      FieldName = 'retorno'
      DisplayFormat = '###,##0.00'
    end
    object tbvrcliente: TFloatField
      FieldName = 'vrcliente'
      DisplayFormat = '###,##0.00'
    end
    object tbLiqEmpresa: TFloatField
      FieldName = 'LiqEmpresa'
      DisplayFormat = '###,##0.00'
    end
    object tbLiqBanco: TFloatField
      FieldName = 'LiqBanco'
      DisplayFormat = '###,##0.00'
    end
    object tbtp: TStringField
      FieldName = 'tp'
      Size = 1
    end
    object tbobs: TStringField
      FieldName = 'obs'
      Size = 255
    end
    object tbcliente: TStringField
      FieldName = 'cliente'
      Size = 60
    end
    object tbdtpagamento: TDateField
      FieldName = 'dtpagamento'
    end
    object tbflag: TStringField
      FieldName = 'flag'
      Size = 1
    end
    object tbnbanco: TStringField
      FieldName = 'nbanco'
      Size = 10
    end
    object tbtipopgto: TStringField
      FieldName = 'tipopgto'
      Size = 15
    end
    object tbdata: TDateField
      FieldName = 'data'
    end
    object tbautorizacao: TStringField
      FieldName = 'autorizacao'
      Size = 30
    end
    object tbcarteira: TStringField
      FieldName = 'carteira'
      Size = 30
    end
    object tbcanal: TStringField
      FieldName = 'canal'
      Size = 7
    end
    object tbgp: TStringField
      FieldName = 'gp'
      Size = 15
    end
  end
  object ds: TDataSource
    DataSet = tb
    Left = 384
    Top = 296
  end
  object dg: TDataSource
    DataSet = sg
    Left = 88
    Top = 208
  end
  object sg: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbdatacomemorativa')
    Params = <>
    Left = 192
    Top = 208
  end
  object dsconta: TDataSource
    DataSet = tbconta
    Left = 88
    Top = 272
  end
  object tbconta: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcontar')
    Params = <>
    Left = 192
    Top = 272
  end
  object gp: TZQuery
    Connection = fdm.conector
    Params = <>
    Left = 400
    Top = 208
  end
end
