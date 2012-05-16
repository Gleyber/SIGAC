object freceberlocaliza: Tfreceberlocaliza
  Left = -4
  Top = -4
  Width = 808
  Height = 578
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'CONTAS A RECEBER'
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
    Top = 82
    Width = 800
    Height = 391
    Align = alClient
    Color = clWhite
    DataSource = ds
    FixedColor = 15987699
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        Title.Caption = 'C'#243'dCli'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Cliente'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'documento'
        Title.Caption = 'Documento'
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
        FieldName = 'dtemissao'
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvencimento'
        Title.Caption = 'Vencimento'
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
        FieldName = 'vrdocumento'
        Title.Caption = 'VrDocumento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto'
        Title.Caption = 'Desconto'
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
        Title.Caption = 'Recebido'
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
        Title.Caption = 'A Receber'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juro'
        Title.Caption = 'Juros'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'totalgeral'
        Title.Caption = 'Total/Juros'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dia'
        Title.Caption = 'QtdDia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aliq'
        Title.Caption = 'Taxa_d'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juro_dia'
        Title.Caption = 'Juro_Dia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpagamento'
        Title.Caption = 'Pagamento'
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
        FieldName = 'ie'
        Title.Caption = 'IE/RG'
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
        FieldName = 'vrtitulo'
        Title.Caption = 'VrTitulo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cheque'
        Title.Caption = 'Cheque'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'banco'
        Title.Caption = 'Banco'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agencia'
        Title.Caption = 'Agencia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Title.Caption = 'Conta'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vendedor'
        Title.Caption = 'Vendedor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Title.Caption = 'Endere'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        Title.Caption = 'N'#250'mero'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complemento'
        Title.Caption = 'Complemento'
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
        FieldName = 'bairro'
        Title.Caption = 'Bairro'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Title.Caption = 'UF'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'municipio'
        Title.Caption = 'Cidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'extenso'
        Title.Caption = 'Doc Imp'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passado'
        Title.Caption = 'Passado para'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datapassado'
        Title.Caption = 'Data'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipoconta'
        Title.Caption = 'Tipo Conta'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDD'
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
        FieldName = 'Fone'
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
        FieldName = 'Fone2'
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
        FieldName = 'Fax'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end>
  end
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 82
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 16056319
    TabOrder = 0
    object Label2: TLabel
      Left = 158
      Top = 52
      Width = 145
      Height = 14
      Alignment = taRightJustify
      Caption = 'Localizar por Cliente (A~Z)'
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
      Top = 33
      Width = 259
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
      Top = 50
      Width = 241
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total          A Receber          Recebido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ltotal: TLabel
      Left = 539
      Top = 64
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
      Left = 615
      Top = 63
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
      Left = 722
      Top = 63
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
      Left = -4
      Top = 22
      Width = 162
      Height = 61
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 4
      Items.Strings = (
        'Cheque'
        'Devolvido'
        'Passado'
        'Cart'#227'o'
        'Outros'
        'Todos')
      ParentFont = False
      TabOrder = 1
      OnClick = bfiltroClick
    end
    object elocalizar: TEdit
      Left = 156
      Top = 66
      Width = 377
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
      Left = 1
      Top = 1
      Width = 798
      Height = 35
      Align = alTop
      BevelInner = bvLowered
      BiDiMode = bdRightToLeftReadingOnly
      BorderStyle = bsSingle
      Color = clSilver
      ParentBiDiMode = False
      TabOrder = 2
      object btnnovo: TSpeedButton
        Left = 2
        Top = 2
        Width = 90
        Height = 27
        Cursor = crHandPoint
        Hint = 'Abre um novo registro (Insert).'
        HelpType = htKeyword
        Caption = '&Nova Conta'
        Flat = True
        Font.Charset = ANSI_CHARSET
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
        Left = 91
        Top = 2
        Width = 92
        Height = 27
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = '&Alterar Conta'
        Flat = True
        Font.Charset = ANSI_CHARSET
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
        Left = 182
        Top = 2
        Width = 93
        Height = 27
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = 'Apa&gar'
        Flat = True
        Font.Charset = ANSI_CHARSET
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
        Left = 548
        Top = 2
        Width = 90
        Height = 27
        Cursor = crHandPoint
        Hint = 'Imprimir (Ctrl+P).'
        Caption = '&Imprimir'
        Flat = True
        Font.Charset = ANSI_CHARSET
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
        Left = 275
        Top = 2
        Width = 91
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Aplicar &Filtros'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object btndeletado: TSpeedButton
        Left = 458
        Top = 2
        Width = 90
        Height = 27
        Cursor = crHandPoint
        Caption = '&Estornar Conta'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btndeletadoClick
      end
      object SpeedButton1: TSpeedButton
        Left = 366
        Top = 2
        Width = 92
        Height = 27
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = '&Baixar (F2)'
        Flat = True
        Font.Charset = ANSI_CHARSET
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
        Width = 91
        Height = 27
        Caption = 'Itens &da Conta'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton4: TSpeedButton
        Left = 729
        Top = 2
        Width = 63
        Height = 27
        Caption = 'Menus'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
      end
      object StaticText1: TStaticText
        Left = 336
        Top = 40
        Width = 58
        Height = 17
        Caption = 'StaticText1'
        TabOrder = 0
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
    object Bevel1: TBevel
      Left = 1
      Top = 23
      Width = 776
      Height = 7
      Shape = bsTopLine
    end
    object DBText4: TDBText
      Left = 2
      Top = 36
      Width = 74
      Height = 13
      DataField = 'dtemissao'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 2
      Top = 24
      Width = 74
      Height = 13
      AutoSize = False
      Caption = 'Emissao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 3
      Top = 52
      Width = 22
      Height = 14
      Caption = 'Obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText5: TDBText
      Left = 30
      Top = 51
      Width = 448
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
      Left = 85
      Top = 24
      Width = 147
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tipo conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label12Click
    end
    object DBText6: TDBText
      Left = 85
      Top = 36
      Width = 147
      Height = 13
      Alignment = taCenter
      DataField = 'tipoconta'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
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
      Width = 152
      Height = 13
      Alignment = taCenter
      DataField = 'posicaoconta'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
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
      Width = 152
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Posi'#231#227'o da conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label14Click
    end
    object Label15: TLabel
      Left = 523
      Top = 24
      Width = 99
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'D'#233'bito do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText11: TDBText
      Left = 524
      Top = 36
      Width = 99
      Height = 13
      Alignment = taCenter
      DataField = 'saldo'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
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
      Width = 779
      Height = 6
      Shape = bsTopLine
    end
    object DBText13: TDBText
      Left = 413
      Top = 36
      Width = 79
      Height = 13
      Alignment = taCenter
      DataField = 'refinanciado'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 413
      Top = 24
      Width = 79
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Refinanc.?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lcheque: TLabel
      Left = 677
      Top = 51
      Width = 101
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
    object Label4: TLabel
      Left = 358
      Top = 0
      Width = 27
      Height = 14
      Caption = 'Fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 328
      Top = 0
      Width = 21
      Height = 14
      Caption = 'DDD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 193
      Top = 0
      Width = 127
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CNPJ/CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 357
      Top = 11
      Width = 96
      Height = 13
      DataField = 'fone'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 3
      Top = 0
      Width = 32
      Height = 14
      Cursor = crHandPoint
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label13Click
    end
    object DBText7: TDBText
      Left = 3
      Top = 11
      Width = 182
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
      Left = 194
      Top = 11
      Width = 127
      Height = 13
      Alignment = taCenter
      DataField = 'cnpj'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText10: TDBText
      Left = 330
      Top = 11
      Width = 31
      Height = 13
      DataField = 'ddd'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText12: TDBText
      Left = 454
      Top = 11
      Width = 155
      Height = 13
      DataField = 'municipio'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 454
      Top = 0
      Width = 38
      Height = 14
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 610
      Top = 11
      Width = 179
      Height = 13
      DataField = 'email'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 610
      Top = 0
      Width = 32
      Height = 14
      Caption = 'E-Mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ljuro: TLabel
      Left = 488
      Top = 51
      Width = 180
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13041663
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 675
      Top = 24
      Width = 99
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Status Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 676
      Top = 36
      Width = 99
      Height = 13
      Alignment = taCenter
      DataField = 'statu'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SpeedButton5: TSpeedButton
      Left = 779
      Top = 3
      Width = 15
      Height = 15
      Flat = True
      OnClick = SpeedButton5Click
    end
  end
  object qpromissoria: TRLReport
    Left = -114
    Top = -2000
    Width = 794
    Height = 529
    AdjustableMargins = True
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    Transparent = False
    BeforePrint = qpromissoriaBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 42
      Width = 718
      Height = 440
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel4: TRLLabel
        Left = 0
        Top = 211
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 101
        Top = 224
        Width = 36
        Height = 16
        Color = clWhite
        DataField = 'nome'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lvencimentonp: TRLLabel
        Left = 295
        Top = 1
        Width = 128
        Height = 22
        Align = faCenterTop
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 0
        Top = 63
        Width = 750
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '----------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object ldatanp: TRLLabel
        Left = 3
        Top = 76
        Width = 55
        Height = 18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lpagarei: TRLLabel
        Left = 3
        Top = 108
        Width = 327
        Height = 18
        Caption = 'PAGAREI (EMOS) POR ESTA '#218'NICA VIA DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lrodapenp: TRLMemo
        Left = 4
        Top = 137
        Width = 661
        Height = 48
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '1'
          '2'
          '3')
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 224
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Emitente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 3
        Top = 240
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 256
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 3
        Top = 272
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 288
        Width = 85
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RG/IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 3
        Top = 304
        Width = 92
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fone Resp.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 283
        Top = 304
        Width = 84
        Height = 18
        Caption = 'Fone Trab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 101
        Top = 240
        Width = 57
        Height = 16
        Color = clWhite
        DataField = 'endereco'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 101
        Top = 256
        Width = 59
        Height = 16
        Color = clWhite
        DataField = 'municipio'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 101
        Top = 272
        Width = 28
        Height = 16
        Color = clWhite
        DataField = 'cnpj'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 101
        Top = 288
        Width = 14
        Height = 16
        Color = clWhite
        DataField = 'ie'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 101
        Top = 304
        Width = 28
        Height = 16
        Color = clWhite
        DataField = 'fone'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 339
        Top = 256
        Width = 38
        Height = 18
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 384
        Top = 256
        Width = 25
        Height = 16
        Color = clWhite
        DataField = 'cep'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 284
        Top = 256
        Width = 14
        Height = 16
        Color = clWhite
        DataField = 'uf'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 251
        Top = 256
        Width = 29
        Height = 18
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 471
        Top = 272
        Width = 242
        Height = 18
        Caption = 'Ass:_______________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 104
        Top = 327
        Width = 640
        Height = 18
        Caption = '---------------------------------------------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 3
        Top = 324
        Width = 96
        Height = 22
        Caption = 'Avalistas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 14
        Top = 341
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 14
        Top = 355
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 14
        Top = 369
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 14
        Top = 385
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 380
        Top = 304
        Width = 35
        Height = 16
        Color = clWhite
        DataField = 'fone2'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel22: TRLLabel
        Left = 475
        Top = 380
        Width = 242
        Height = 18
        Caption = 'Ass:_______________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lnumeronp: TRLAngleLabel
        Left = 4
        Top = 36
        Width = 132
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lvalornp: TRLAngleLabel
        Left = 581
        Top = 36
        Width = 102
        Height = 29
        Alignment = taRightJustify
        Caption = 'lnumero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lnpromissoria: TRLAngleLabel
        Left = 398
        Top = 104
        Width = 251
        Height = 29
        Alignment = taRightJustify
        Caption = 'NOTA PROMISS'#211'RIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lcidadenp: TRLLabel
        Left = 631
        Top = 200
        Width = 52
        Height = 18
        Alignment = taRightJustify
        Caption = 'cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lavalistanp: TRLMemo
        Left = 100
        Top = 345
        Width = 366
        Height = 70
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'REI'
          'DAI'
          'FAI'
          'LAI'
          'RG')
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 14
        Top = 398
        Width = 81
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
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
  end
  object provedor: TDataSetProvider
    DataSet = sqlcli
    Left = 216
    Top = 180
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 168
    Top = 180
  end
  object ActionList1: TActionList
    Left = 376
    Top = 180
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
    object Gboleto: TAction
      Caption = 'Gboleto'
      OnExecute = GboletoExecute
    end
    object gboletop: TAction
      Caption = 'gboletop'
      OnExecute = gboletopExecute
    end
    object Gduplicata: TAction
      Caption = 'Gduplicata'
      OnExecute = GduplicataExecute
    end
    object gcarne: TAction
      Caption = 'gcarne'
      OnExecute = gcarneExecute
    end
    object gnpromissoria: TAction
      Caption = 'gnpromissoria'
      OnExecute = gnpromissoriaExecute
    end
    object gcobranca: TAction
      Caption = 'gcobranca'
      OnExecute = gcobrancaExecute
    end
    object grafico: TAction
      Caption = 'grafico'
      OnExecute = graficoExecute
    end
    object dadoscliente: TAction
      Caption = 'dadoscliente'
      OnExecute = dadosclienteExecute
    end
  end
  object opendialog: TOpenPictureDialog
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 468
    Top = 160
  end
  object tabela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'provedor'
    AfterScroll = tabelaAfterScroll
    Left = 324
    Top = 180
  end
  object sqlcli: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 272
    Top = 184
  end
  object menu: TPopupMenu
    Left = 616
    Top = 228
    object Acerto1: TMenuItem
      Caption = 'Acerto'
      OnClick = Acerto1Click
    end
    object CadastrodeCedente1: TMenuItem
      Caption = 'Cadastro de Cedente'
      OnClick = CadastrodeCedente1Click
    end
  end
  object RBoleto: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edRecibo
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN11
    Versao = '1.1.5'
    Left = 464
    Top = 280
  end
end
