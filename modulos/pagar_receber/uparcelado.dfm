object fparcelado: Tfparcelado
  Left = 17
  Top = 14
  BorderStyle = bsDialog
  Caption = 'PAGAMENTO/RECEBIMENTO'
  ClientHeight = 525
  ClientWidth = 779
  Color = 15395562
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object btnnovo: TSpeedButton
    Left = 1
    Top = 12
    Width = 122
    Height = 50
    Cursor = crHandPoint
    HelpType = htKeyword
    Caption = '&Pagar/Receber'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btnnovoClick
  end
  object Label1: TLabel
    Left = 0
    Top = -1
    Width = 777
    Height = 11
    Alignment = taCenter
    AutoSize = False
    Caption = 'Selecione as parcelas com a tecla CTRL pressionada'
    Font.Charset = ANSI_CHARSET
    Font.Color = 14680063
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object btnitem: TSpeedButton
    Left = 226
    Top = 12
    Width = 117
    Height = 50
    Cursor = crHandPoint
    HelpType = htKeyword
    Caption = '&Itens da Conta'
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
    OnClick = btnitemClick
  end
  object btnrefinanciar: TSpeedButton
    Left = 125
    Top = 12
    Width = 99
    Height = 50
    Caption = 'Refinanciar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Layout = blGlyphTop
    ParentFont = False
    OnClick = btnrefinanciarClick
  end
  object btnimprimir: TSpeedButton
    Left = 345
    Top = 12
    Width = 99
    Height = 50
    Cursor = crHandPoint
    Caption = 'Imprimir'
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
  object Label4: TLabel
    Left = 3
    Top = 120
    Width = 49
    Height = 14
    Caption = 'Localizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 531
    Top = 24
    Width = 76
    Height = 14
    Caption = 'Tipo de Conta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lnome: TLabel
    Left = 3
    Top = 65
    Width = 774
    Height = 14
    Alignment = taCenter
    AutoSize = False
    Caption = 'lnome'
    Font.Charset = ANSI_CHARSET
    Font.Color = 15269887
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 779
    Height = 299
    Align = alBottom
    Color = 16382712
    DataSource = ds
    FixedColor = 15395562
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnEnter = DBGrid1Enter
    OnExit = DBGrid1Exit
    Columns = <
      item
        Expanded = False
        FieldName = 'chave'
        Title.Caption = 'N'#250'm'
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
        FieldName = 'documento'
        Title.Caption = 'Doc.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 59
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
        Width = 12
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
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvencimento'
        Title.Caption = 'Vencto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Vr. Parcela'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 68
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
        Width = 59
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
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrdocumento'
        Title.Caption = 'Total'
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
        FieldName = 'recebido'
        Title.Caption = 'Recebido'
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
        FieldName = 'diferenca'
        Title.Caption = 'Diferen'#231'a'
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
        FieldName = 'cheque'
        Title.Caption = 'Cheque'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agencia'
        Title.Caption = 'Ag'#234'ncia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 68
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
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ch'
        Visible = True
      end>
  end
  object prodape: TPanel
    Left = 0
    Top = 435
    Width = 779
    Height = 90
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 2
    object DBText2: TDBText
      Left = 200
      Top = 38
      Width = 137
      Height = 16
      Alignment = taCenter
      Color = clBlue
      DataField = 'saldo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 200
      Top = 22
      Width = 137
      Height = 16
      Cursor = crHandPoint
      Hint = 'Clique para atualizar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'D'#233'bito Total:'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = Label3Click
    end
    object ljuro: TLabel
      Left = 4
      Top = 49
      Width = 214
      Height = 14
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 632
      Top = 22
      Width = 137
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total Selecio.:'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object ltot: TLabel
      Left = 632
      Top = 38
      Width = 137
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 416
      Top = 22
      Width = 137
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Soma:'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lsoma: TLabel
      Left = 416
      Top = 38
      Width = 137
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 113
      Top = 66
      Width = 665
      Height = 14
      Color = clBlack
      DataField = 'obs'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lcredito: TLabel
      Left = 4
      Top = 24
      Width = 196
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 0
      Top = 37
      Width = 779
      Height = 6
      Shape = bsTopLine
    end
  end
  object rvisualiza: TCheckBox
    Left = 353
    Top = 48
    Width = 13
    Height = 12
    Hint = 'Escolher os campos'
    Alignment = taLeftJustify
    Color = 16056319
    Font.Charset = ANSI_CHARSET
    Font.Color = 6049863
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object enome: TEdit
    Left = 56
    Top = 120
    Width = 721
    Height = 16
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = enomeKeyDown
  end
  object rativo: TRadioGroup
    Left = 0
    Top = 90
    Width = 778
    Height = 30
    Caption = 'Modalidade'
    Color = 6049863
    Columns = 4
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnClick = rativoClick
  end
  object cconta: TComboBox
    Left = 491
    Top = 37
    Width = 158
    Height = 18
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Style = csOwnerDrawFixed
    BiDiMode = bdRightToLeft
    Color = 16316664
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 12
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = ccontaClick
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 168
    Top = 192
  end
  object ActionList1: TActionList
    Left = 384
    Top = 140
    object totalizar: TAction
      Caption = 'totalizar'
    end
    object imprimir: TAction
      Caption = 'imprimir'
      OnExecute = imprimirExecute
    end
    object tcins: TAction
      Caption = 'tcins'
      ShortCut = 45
      OnExecute = tcinsExecute
    end
    object parcelas: TAction
      Caption = 'parcelas'
      OnExecute = parcelasExecute
    end
    object calculajurototal: TAction
      Caption = 'calculajurototal'
      OnExecute = calculajurototalExecute
    end
    object calculadesconto: TAction
      Caption = 'calculadesconto'
      OnExecute = calculadescontoExecute
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
    object somaparcelas: TAction
      Caption = 'somaparcelas'
      OnExecute = somaparcelasExecute
    end
    object tc: TAction
      Caption = 'tc'
      ShortCut = 113
      OnExecute = tcExecute
    end
    object totsel: TAction
      Caption = 'totsel'
      OnExecute = totselExecute
    end
    object abrir: TAction
      Caption = 'abrir'
      OnExecute = abrirExecute
    end
    object credcli: TAction
      Caption = 'credcli'
      OnExecute = credcliExecute
    end
  end
  object tbcomissao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 233
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
  end
  object tabela: TZQuery
    Connection = fdm.conector
    SortedFields = 'dtvencimento;letra'
    AfterScroll = tabelaAfterScroll
    SQL.Strings = (
      'select *  from tbreceber order by dtvencimento')
    Params = <>
    IndexFieldNames = 'dtvencimento Asc;letra Asc'
    Left = 168
    Top = 232
  end
end
