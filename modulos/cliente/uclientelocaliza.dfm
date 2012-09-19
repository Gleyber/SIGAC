object fclientelocaliza: Tfclientelocaliza
  Left = 65
  Top = 54
  Width = 798
  Height = 568
  Caption = 'LISTAGEM/CADASTRO DE CLIENTES'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBGrid1: TDBGrid
    Left = 0
    Top = 149
    Width = 782
    Height = 333
    Align = alClient
    Color = clWhite
    DataSource = ds
    FixedColor = 15001833
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGrid1KeyDown
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomecurto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Nome Curto'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Nome/Raz'#227'o'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtativacao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Ativado em'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtcancelamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cancelado em'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipocliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Grupo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Grupo Cart'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Endere'#231'o'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'N'#250'mero'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complemento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Compl'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Bairro'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'municipio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cidade'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'regiao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Regi'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nascimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Nascido em'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'CPF_CNPJ'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'RG_IE'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ddd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'DDD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Fone'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Fone2'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Fone3'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Fax'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ramal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Ramal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Contato'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cargo'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Email'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Site'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'msn'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cateira'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usucart'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Usu'#225'rio Cart'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'skype'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Skype'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'enderecocobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'EndCobran'#231'a'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numerocobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'N'#250'm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complementocobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Compl'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairrocobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'BairroCob'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'municipiocobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'CidadeCob'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cepcobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'CepCob'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ufcobranca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'UF'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'transportadora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Transp'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'D'#233'bito'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ultimacompra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = #218'ltCompra'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'DtCad'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'credito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cr'#233'dito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Vendedor'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'avulsa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'VdAvulsa'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FisJur'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'statu'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estadocivil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'EstCiv'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'trabalho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Trabalho'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conjuge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'C'#244'njuge'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vinculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'V'#237'nculo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'foneconjuge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'FoneC'#244'nj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diamensalidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'DiaMensal'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrmensalidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'VrMensal'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Obs'
        Width = 355
        Visible = True
      end>
  end
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 119
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 16056319
    TabOrder = 0
    object Label2: TLabel
      Left = 98
      Top = 82
      Width = 161
      Height = 16
      Alignment = taCenter
      Caption = 'Localizar por Nome (A~Z)'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5523009
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object litem: TLabel
      Left = 3
      Top = 97
      Width = 91
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = '40000O Itens'
      Color = 8938325
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object rcampo: TRadioGroup
      Left = 523
      Top = 69
      Width = 273
      Height = 35
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Inicio Campo (F2)'
        'Qualquer Parte (F2)')
      ParentFont = False
      TabOrder = 2
      OnClick = rcampoClick
    end
    object elocalizar: TEdit
      Left = 95
      Top = 99
      Width = 702
      Height = 24
      BevelKind = bkSoft
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = elocalizarChange
      OnKeyDown = elocalizarKeyDown
      OnKeyPress = elocalizarKeyPress
    end
    object panel4: TPanel
      Left = 97
      Top = 1
      Width = 1000
      Height = 83
      BevelInner = bvLowered
      BiDiMode = bdRightToLeftReadingOnly
      BorderStyle = bsSingle
      Color = 15066597
      ParentBiDiMode = False
      TabOrder = 1
      object btnnovo: TSpeedButton
        Left = 1
        Top = 3
        Width = 93
        Height = 27
        Cursor = crHandPoint
        Hint = 'Abre um novo registro (Insert).'
        HelpType = htKeyword
        Caption = '&Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnnovoClick
      end
      object btneditar: TSpeedButton
        Left = 94
        Top = 3
        Width = 90
        Height = 27
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = '&Alterar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btneditarClick
      end
      object btnapagar: TSpeedButton
        Left = 184
        Top = 3
        Width = 90
        Height = 27
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = 'Apa&gar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnapagarClick
      end
      object btnimprimir: TSpeedButton
        Left = 274
        Top = 3
        Width = 91
        Height = 27
        Cursor = crHandPoint
        Hint = 'Imprimir (Ctrl+P).'
        Caption = '&Imprimir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnimprimirClick
      end
      object SpeedButton3: TSpeedButton
        Left = 366
        Top = 3
        Width = 91
        Height = 27
        Cursor = crHandPoint
        Caption = '&Filtros'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object SpeedButton1: TSpeedButton
        Left = 16
        Top = 44
        Width = 105
        Height = 24
        Cursor = crHandPoint
        Caption = 'Alterar Cr'#233'dito'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton4: TSpeedButton
        Left = 149
        Top = 44
        Width = 105
        Height = 24
        Cursor = crHandPoint
        Caption = 'Vida Cliente'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 282
        Top = 44
        Width = 105
        Height = 24
        Cursor = crHandPoint
        Caption = 'Consumo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 417
        Top = 44
        Width = 105
        Height = 24
        Cursor = crHandPoint
        Caption = 'Transf. Filial'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 549
        Top = 3
        Width = 90
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Anota'#231#245'es'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 457
        Top = 3
        Width = 91
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'E-Mail'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton8Click
      end
      object SpeedButton9: TSpeedButton
        Left = 550
        Top = 44
        Width = 105
        Height = 24
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Ficha Adicional'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton10: TSpeedButton
        Left = 640
        Top = 3
        Width = 62
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = '+ Menus'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton10Click
      end
      object SpeedButton11: TSpeedButton
        Left = 680
        Top = 42
        Width = 16
        Height = 21
        Flat = True
        OnClick = SpeedButton11Click
      end
    end
    object vimage: TDBImage
      Left = 1
      Top = 1
      Width = 97
      Height = 89
      Cursor = crHandPoint
      Hint = 'Clique para adicionar a imagem do produto'
      BorderStyle = bsNone
      Color = 2955078
      Stretch = True
      TabOrder = 3
      OnClick = vimageClick
    end
  end
  object prodape: TPanel
    Left = 0
    Top = 482
    Width = 782
    Height = 48
    Align = alBottom
    BevelInner = bvLowered
    BiDiMode = bdRightToLeftReadingOnly
    BorderStyle = bsSingle
    Color = 15790320
    ParentBiDiMode = False
    TabOrder = 2
    object Label4: TLabel
      Left = 424
      Top = 4
      Width = 29
      Height = 13
      Caption = 'Fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 365
      Top = 4
      Width = 21
      Height = 15
      Caption = 'DDD'
      Font.Charset = ANSI_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 492
      Top = 4
      Width = 21
      Height = 13
      Caption = 'Fax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 364
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'DDD'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 423
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'fone'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 490
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'fax'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 395
      Top = 4
      Width = 26
      Height = 13
      Caption = 'Ram'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText6: TDBText
      Left = 406
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'ramal'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 558
      Top = 4
      Width = 40
      Height = 13
      Caption = 'Celular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText8: TDBText
      Left = 557
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'fone3'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 29
      Top = 4
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText12: TDBText
      Left = 10
      Top = 16
      Width = 57
      Height = 13
      AutoSize = True
      DataField = 'DATA'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText7: TDBText
      Left = 83
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'ultimacompra'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 84
      Top = 4
      Width = 61
      Height = 13
      Caption = 'Ult. Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 634
      Top = 4
      Width = 42
      Height = 13
      Caption = 'E-MAIL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText9: TDBText
      Left = 153
      Top = 16
      Width = 72
      Height = 13
      Alignment = taCenter
      DataField = 'vrmensalidade'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 152
      Top = 4
      Width = 72
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Mensalidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 633
      Top = 16
      Width = 160
      Height = 13
      DataField = 'email'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 217
      Top = 4
      Width = 72
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label11Click
    end
    object DBText10: TDBText
      Left = 217
      Top = 16
      Width = 72
      Height = 13
      Alignment = taCenter
      DataField = 'credito'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText11: TDBText
      Left = 287
      Top = 16
      Width = 72
      Height = 13
      Alignment = taCenter
      DataField = 'avulsa'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 287
      Top = 4
      Width = 72
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Vd. Avulsas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 4
      Top = 29
      Width = 31
      Height = 13
      AutoSize = False
      Caption = 'Obs'
      Color = 6180680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11468799
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object DBText5: TDBText
      Left = 35
      Top = 29
      Width = 759
      Height = 13
      Color = 6180680
      DataField = 'obs'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = 11468799
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object rativo: TRadioGroup
    Left = 0
    Top = 119
    Width = 782
    Height = 30
    Align = alTop
    Color = 16056319
    Columns = 5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Ativos'
      'Inativos'
      'Cancelados'
      'Todos'
      'Duplica'#231#227'o For'#231'ada')
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    OnClick = rcampoClick
  end
  object provedor: TDataSetProvider
    DataSet = sqlcli
    Left = 204
    Top = 244
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 156
    Top = 244
  end
  object ActionList1: TActionList
    Left = 364
    Top = 244
    object filtro: TAction
      Caption = 'filtro'
      OnExecute = filtroExecute
    end
    object tc: TAction
      Caption = 'tc'
      ShortCut = 45
      OnExecute = tcExecute
    end
    object image: TAction
      Caption = 'image'
      OnExecute = imageExecute
    end
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16507
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
    object focus: TAction
      Caption = 'focus'
      ShortCut = 113
      OnExecute = focusExecute
    end
    object impcontrato: TAction
      Caption = 'impcontrato'
    end
    object fisjur: TAction
      Caption = 'fisjur'
      ShortCut = 122
      OnExecute = fisjurExecute
    end
    object lacrebr: TAction
      Caption = 'lacrebr'
      OnExecute = lacrebrExecute
    end
    object vitalcred: TAction
      Caption = 'vitalcred'
      OnExecute = vitalcredExecute
    end
    object atuabase: TAction
      Caption = 'atuabase'
      OnExecute = atuabaseExecute
    end
  end
  object opendialog: TOpenPictureDialog
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 480
    Top = 244
  end
  object tabela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'provedor'
    AfterOpen = tabelaAfterOpen
    AfterScroll = tabelaAfterScroll
    Left = 308
    Top = 244
  end
  object menu: TPopupMenu
    Left = 424
    Top = 244
    object lanimal: TMenuItem
      Caption = 'Cadastro de Animal'
      Visible = False
    end
    object CadastrodeEquipamento1: TMenuItem
      Caption = 'Cadastro de Equipamento'
    end
    object FuncionarioAutorizado1: TMenuItem
      Caption = 'Funcionario Autorizado'
    end
    object ransformaremCliente1: TMenuItem
      Caption = 'Transformar em Cliente'
      OnClick = ransformaremCliente1Click
    end
    object RetornodeAnotaes1: TMenuItem
      Caption = 'Retorno de Clientes (todos)'
      OnClick = RetornodeAnotaes1Click
    end
    object RetornodeClientesVendedorAtual1: TMenuItem
      Caption = 'Retorno de Clientes (Vendedor Atual)'
      OnClick = RetornodeClientesVendedorAtual1Click
    end
    object Filtrarclientescomretornohoje1: TMenuItem
      Caption = 'Filtrar clientes com retorno hoje'
      OnClick = Filtrarclientescomretornohoje1Click
    end
    object CadastrarMensalidade1: TMenuItem
      Caption = 'Cadastrar Mensalidade'
      OnClick = CadastrarMensalidade1Click
    end
    object ReceberMensalidades1: TMenuItem
      Caption = 'Receber/Consultar Mensalidades'
      Visible = False
      OnClick = ReceberMensalidades1Click
    end
    object MensalidadesVencidas1: TMenuItem
      Caption = 'Mensalidades Vencidas'
      Visible = False
      OnClick = MensalidadesVencidas1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mnuPainelAtualiza: TMenuItem
      Caption = '&Painel de Atualiza'#231#227'o'
      OnClick = mnuPainelAtualizaClick
    end
    object Atualizarosite1: TMenuItem
      Caption = 'Atualizar o Site'
      Visible = False
      OnClick = Atualizarosite1Click
    end
    object Verificarinconsistnciaentrebaselocal1: TMenuItem
      Caption = 'Verificar inconsist'#234'ncia entre bases'
      OnClick = Verificarinconsistnciaentrebaselocal1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object AtualizarUsurio1: TMenuItem
      Caption = 'Atualizar Usu'#225'rio'
      Visible = False
      OnClick = AtualizarUsurio1Click
    end
    object Deletados1: TMenuItem
      Caption = 'Deletados'
      OnClick = Deletados1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Alterarusurioesenha1: TMenuItem
      Caption = 'Alterar usu'#225'rio e senha'
      OnClick = Alterarusurioesenha1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Filtrarclientessemmovimento1: TMenuItem
      Caption = 'Filtrar clientes sem movimento'
      OnClick = Filtrarclientessemmovimento1Click
    end
    object Filtrarclientessemmovimentodeumperodo1: TMenuItem
      Caption = 'Filtrar clientes sem movimento de um per'#237'odo'
      OnClick = Filtrarclientessemmovimentodeumperodo1Click
    end
    object Filtrarclientescommovimentodeumperodo1: TMenuItem
      Caption = 'Filtrar clientes com movimento de um per'#237'odo'
      OnClick = Filtrarclientescommovimentodeumperodo1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CNPJduplicados1: TMenuItem
      Caption = 'CNPJ duplicados'
      OnClick = CNPJduplicados1Click
    end
  end
  object pgrupo: TDataSetProvider
    DataSet = sgrupo
    Left = 158
    Top = 402
  end
  object tbgrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'link'
    MasterFields = 'chave'
    MasterSource = ds
    PacketRecords = 0
    Params = <>
    ProviderName = 'pgrupo'
    Left = 222
    Top = 402
  end
  object dsgrupo: TDataSource
    DataSet = tbgrupo
    Left = 350
    Top = 402
  end
  object sqlcli: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 256
    Top = 244
  end
  object sgrupo: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'SELECT * FROM tbmaquina')
    Params = <>
    Left = 288
    Top = 402
  end
end
