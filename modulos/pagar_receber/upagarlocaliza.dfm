object fpagarlocaliza: Tfpagarlocaliza
  Left = -1
  Top = 3
  Width = 808
  Height = 578
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'CONTAS A PAGAR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 86
    Width = 800
    Height = 387
    Align = alClient
    Color = clWhite
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Credor'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 194
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'documento'
        Title.Caption = 'Documento'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'letra'
        Title.Caption = ' '
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 11
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrdocumento'
        Title.Caption = 'VrDocumento'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto'
        Title.Caption = 'Desconto'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'acrescimo'
        Title.Caption = 'Acr'#233'scimo'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Total'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'recebido'
        Title.Caption = 'Pago'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diferenca'
        Title.Caption = 'A Pagar'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvencimento'
        Title.Caption = 'Vencimento'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpagamento'
        Title.Caption = 'Pagamento'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mora'
        Title.Caption = 'Mora'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipoconta'
        Title.Caption = 'Conta'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cheque'
        Title.Caption = 'Cheque'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agencia'
        Title.Caption = 'Agencia'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Title.Caption = 'Conta'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contacontabil'
        Title.Caption = 'Cont. Cont'#225'bil'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'emitido'
        Title.Caption = 'Emitido para'
        Title.Color = 15395562
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 86
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 16056319
    TabOrder = 0
    object Label2: TLabel
      Left = 82
      Top = 55
      Width = 145
      Height = 14
      Alignment = taCenter
      Caption = 'Localizar por Credor (A~Z)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lqtd: TLabel
      Left = 536
      Top = 37
      Width = 247
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'qtd'
      Color = 9073514
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 540
      Top = 54
      Width = 241
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total           A Pagar          Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ltotal: TLabel
      Left = 542
      Top = 68
      Width = 71
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object larec: TLabel
      Left = 626
      Top = 68
      Width = 71
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lrec: TLabel
      Left = 710
      Top = 68
      Width = 71
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bfiltro: TRadioGroup
      Left = 3
      Top = 35
      Width = 78
      Height = 51
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'Cheques'
        'Outros'
        'Todos')
      ParentFont = False
      TabOrder = 2
      OnClick = bfiltroClick
    end
    object elocalizar: TEdit
      Left = 82
      Top = 69
      Width = 452
      Height = 16
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = elocalizarChange
      OnEnter = elocalizarEnter
      OnExit = elocalizarExit
      OnKeyDown = elocalizarKeyDown
      OnKeyPress = elocalizarKeyPress
    end
    object panel1: TPanel
      Left = 3
      Top = 1
      Width = 1000
      Height = 36
      BevelInner = bvLowered
      BiDiMode = bdRightToLeftReadingOnly
      BorderStyle = bsSingle
      Color = clSilver
      ParentBiDiMode = False
      TabOrder = 1
      object btnnovo: TSpeedButton
        Left = 3
        Top = 2
        Width = 89
        Height = 27
        Cursor = crHandPoint
        Hint = 'Abre um novo registro (Insert).'
        HelpType = htKeyword
        Caption = '&Nova Conta'
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
        Left = 92
        Top = 2
        Width = 92
        Height = 27
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = '&Alterar Conta'
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
        Left = 183
        Top = 2
        Width = 92
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
        Left = 547
        Top = 2
        Width = 92
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
        Left = 274
        Top = 2
        Width = 92
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Aplicar &Filtros'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object btndeletado: TSpeedButton
        Left = 456
        Top = 2
        Width = 91
        Height = 27
        Cursor = crHandPoint
        Caption = '&Estornar Conta'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btndeletadoClick
      end
      object SpeedButton1: TSpeedButton
        Left = 365
        Top = 2
        Width = 91
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = '&Pagar (F2)'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 638
        Top = 2
        Width = 92
        Height = 27
        Caption = 'Itens &da Comp'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton4: TSpeedButton
        Left = 730
        Top = 2
        Width = 65
        Height = 27
        Caption = 'Acert&o'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 473
    Width = 800
    Height = 71
    Align = alBottom
    BevelInner = bvLowered
    BiDiMode = bdRightToLeftReadingOnly
    BorderStyle = bsSingle
    Color = 15395562
    ParentBiDiMode = False
    TabOrder = 2
    object Label4: TLabel
      Left = 444
      Top = 0
      Width = 27
      Height = 14
      Caption = 'Fone'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 404
      Top = 0
      Width = 21
      Height = 14
      Caption = 'DDD'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 265
      Top = 0
      Width = 28
      Height = 14
      Caption = 'CNPJ'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 443
      Top = 11
      Width = 44
      Height = 14
      AutoSize = True
      DataField = 'fone'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 1
      Top = 23
      Width = 807
      Height = 7
      Shape = bsTopLine
    end
    object Label13: TLabel
      Left = 79
      Top = 0
      Width = 39
      Height = 14
      Cursor = crHandPoint
      Caption = 'Credor'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      Transparent = True
      OnClick = Label13Click
    end
    object DBText7: TDBText
      Left = 79
      Top = 11
      Width = 178
      Height = 13
      DataField = 'nomecurto'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText9: TDBText
      Left = 266
      Top = 11
      Width = 139
      Height = 13
      DataField = 'cnpj'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText10: TDBText
      Left = 406
      Top = 11
      Width = 31
      Height = 13
      DataField = 'ddd'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText12: TDBText
      Left = 534
      Top = 11
      Width = 95
      Height = 13
      DataField = 'municipio'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 534
      Top = 0
      Width = 38
      Height = 14
      Caption = 'Cidade'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 7
      Top = 36
      Width = 74
      Height = 13
      DataField = 'dtemissao'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 7
      Top = 24
      Width = 74
      Height = 13
      AutoSize = False
      Caption = 'Emissao'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 7
      Top = 51
      Width = 22
      Height = 14
      Caption = 'Obs'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText5: TDBText
      Left = 35
      Top = 51
      Width = 628
      Height = 13
      DataField = 'obs'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 101
      Top = 24
      Width = 135
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tipo conta'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      Transparent = True
      OnClick = Label12Click
    end
    object DBText6: TDBText
      Left = 101
      Top = 36
      Width = 135
      Height = 13
      Alignment = taCenter
      DataField = 'tipoconta'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText8: TDBText
      Left = 242
      Top = 36
      Width = 136
      Height = 13
      Alignment = taCenter
      DataField = 'contacontabil'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 242
      Top = 24
      Width = 136
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Conta cont'#225'bil'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      Transparent = True
      OnClick = Label14Click
    end
    object Label15: TLabel
      Left = 659
      Top = 24
      Width = 77
      Height = 14
      Caption = 'D'#233'bito Credor'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText11: TDBText
      Left = 660
      Top = 36
      Width = 90
      Height = 13
      DataField = 'saldo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel3: TBevel
      Left = 1
      Top = 48
      Width = 810
      Height = 6
      Shape = bsTopLine
    end
    object DBText13: TDBText
      Left = 537
      Top = 36
      Width = 99
      Height = 13
      Alignment = taCenter
      DataField = 'tpconta'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 537
      Top = 24
      Width = 99
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Conta'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lcheque: TLabel
      Left = 661
      Top = 51
      Width = 117
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13041663
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 630
      Top = 11
      Width = 166
      Height = 13
      DataField = 'email'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 630
      Top = 0
      Width = 32
      Height = 14
      Caption = 'E-Mail'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 9
      Top = 0
      Width = 44
      Height = 14
      Caption = 'VrT'#237'tulo'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 10
      Top = 11
      Width = 65
      Height = 13
      DataField = 'vrtitulo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 409
      Top = 24
      Width = 99
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Emitido para'
      Color = 3815994
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText14: TDBText
      Left = 409
      Top = 36
      Width = 99
      Height = 13
      Alignment = taCenter
      DataField = 'emitido'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
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
    end
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16507
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
    object total: TAction
      Caption = 'total'
      OnExecute = totalExecute
    end
    object pg: TAction
      Caption = 'pg'
      ShortCut = 113
      OnExecute = pgExecute
    end
    object grafico: TAction
      Caption = 'grafico'
      OnExecute = graficoExecute
    end
  end
  object opendialog: TOpenPictureDialog
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 416
    Top = 280
  end
  object tabela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'provedor'
    AfterScroll = tabelaAfterScroll
    Left = 312
    Top = 244
  end
  object sqlcli: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 256
    Top = 248
  end
end
