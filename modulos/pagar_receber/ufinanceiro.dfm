object ffinanceiro: Tffinanceiro
  Left = 62
  Top = 103
  Width = 808
  Height = 578
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Controle Financeiro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 146
    Width = 800
    Height = 374
    Align = alClient
    Color = clWhite
    DataSource = ds
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
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tipoconta'
        Title.Caption = 'Tipo'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtemissao'
        Title.Caption = 'Emiss'#227'o'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvencimento'
        Title.Caption = 'Pagar em'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpagamento'
        Title.Caption = 'Receb Bco'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrtitulo'
        Title.Caption = 'VrT'#237'tulo'
        Title.Color = 15724527
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
        FieldName = 'vrcliente'
        Title.Caption = 'VrCliente'
        Title.Color = 15724527
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
        FieldName = 'LiqEmpresa'
        Title.Caption = 'L'#237'qEmpresa'
        Title.Color = 15724527
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
        FieldName = 'adiantamento'
        Title.Caption = 'Adiant.'
        Title.Color = 15724527
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
        FieldName = 'totalempresa'
        Title.Caption = 'TotEmpresa'
        Title.Color = 15724527
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
        FieldName = 'LiqBanco'
        Title.Caption = 'L'#237'qBanco'
        Title.Color = 15724527
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
        FieldName = 'cpmf'
        Title.Caption = 'CPMF'
        Title.Color = 15724527
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
        FieldName = 'txem'
        Title.Caption = 'Empresa%'
        Title.Color = 15724527
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
        FieldName = 'txbc'
        Title.Caption = 'Banco%'
        Title.Color = 15724527
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
        FieldName = 'vrem'
        Title.Caption = 'EmpresaR$'
        Title.Color = 15724527
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
        FieldName = 'vrbc'
        Title.Caption = 'BancoR$'
        Title.Color = 15724527
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
        FieldName = 'retorno'
        Title.Caption = 'TaxaRetorno'
        Title.Color = 15724527
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
        FieldName = 'documento'
        Title.Caption = 'N'#186' Doc'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'letra'
        Title.Caption = ' '
        Title.Color = 15724527
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
        FieldName = 'obs'
        Title.Caption = 'Obs'
        Title.Color = 15724527
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
        FieldName = 'cliente'
        Title.Caption = 'Nome Cliente (do cliente)'
        Title.Color = 15724527
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
        FieldName = 'tipopgto'
        Title.Caption = 'TipoPgto'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bloq'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bloqmotivo'
        Title.Color = 15724527
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
        FieldName = 'Autorizacao'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Canal'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Carteira'
        Title.Color = 15724527
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
        FieldName = 'gp'
        Title.Caption = 'Grupo cart'#227'o'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nboleto'
        Title.Color = 15724527
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object panel2: TPanel
    Left = 0
    Top = 95
    Width = 800
    Height = 51
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 15925247
    TabOrder = 0
    object Label2: TLabel
      Left = 3
      Top = 12
      Width = 149
      Height = 15
      Alignment = taRightJustify
      Caption = 'Localizar por Cliente (A~Z)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lqtd: TLabel
      Left = 536
      Top = 1
      Width = 261
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
      Left = 576
      Top = 18
      Width = 52
      Height = 16
      Alignment = taCenter
      Caption = 'Total Bc'
      Color = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = 179
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lbc: TLabel
      Left = 539
      Top = 31
      Width = 122
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lemp: TLabel
      Left = 664
      Top = 31
      Width = 132
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 684
      Top = 18
      Width = 91
      Height = 16
      Alignment = taCenter
      Caption = 'Total Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = 179
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object rcampo: TRadioGroup
      Left = 317
      Top = -5
      Width = 217
      Height = 33
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Inicio Campo '
        'Toda Parte')
      ParentFont = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 357
      Top = -1
      Width = 84
      Height = 13
      AutoSize = False
      Caption = 'F3 = Localizar no'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object elocalizar: TEdit
      Left = 2
      Top = 26
      Width = 315
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = elocalizarChange
      OnEnter = elocalizarEnter
      OnExit = elocalizarExit
      OnKeyDown = elocalizarKeyDown
      OnKeyPress = elocalizarKeyPress
    end
    object rmensalidades: TCheckBox
      Left = 319
      Top = 33
      Width = 211
      Height = 17
      Caption = 'Mostrar Mensalidades Futuras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = rmensalidadesClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 520
    Width = 800
    Height = 24
    Align = alBottom
    BevelInner = bvLowered
    BiDiMode = bdRightToLeftReadingOnly
    BorderStyle = bsSingle
    Color = 9073514
    ParentBiDiMode = False
    TabOrder = 2
    object Label11: TLabel
      Left = 3
      Top = 4
      Width = 23
      Height = 13
      Cursor = crHandPoint
      Hint = 'Clique para digitar'
      Caption = 'Obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13041663
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = DBText5Click
    end
    object DBText5: TDBText
      Left = 30
      Top = 3
      Width = 467
      Height = 13
      Cursor = crHandPoint
      Hint = 'Clique para digitar'
      DataField = 'obs'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnClick = DBText5Click
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
    object Label3: TLabel
      Left = 507
      Top = 4
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13041663
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 553
      Top = 3
      Width = 236
      Height = 13
      DataField = 'cliente'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object qpromissoria: TRLReport
    Left = -74
    Top = -2000
    Width = 794
    Height = 529
    AdjustableMargins = True
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
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lvencimento: TRLLabel
        Left = 306
        Top = 1
        Width = 106
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
      object ldata: TRLLabel
        Left = 3
        Top = 76
        Width = 38
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
      object lmemo: TRLMemo
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
      object lnumero: TRLAngleLabel
        Left = 4
        Top = 36
        Width = 102
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lvalor: TRLAngleLabel
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
      object lcidade: TRLLabel
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
      object lavalista: TRLMemo
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
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftReadingOnly
    BorderStyle = bsSingle
    Color = clSilver
    ParentBiDiMode = False
    TabOrder = 4
    object btnnovo: TSpeedButton
      Left = 2
      Top = 8
      Width = 102
      Height = 27
      Cursor = crHandPoint
      Hint = 'Abre um novo registro (Insert).'
      HelpType = htKeyword
      Caption = '&Nova(s) Conta(s)'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnnovoClick
    end
    object btnapagar: TSpeedButton
      Left = 112
      Top = 8
      Width = 53
      Height = 27
      Cursor = crHandPoint
      Hint = 'Apaga o registro selecionado (ALT+A).'
      HelpType = htKeyword
      Caption = 'Apa&gar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnapagarClick
    end
    object btnimprimir: TSpeedButton
      Left = 664
      Top = 8
      Width = 63
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir (Ctrl+P).'
      HelpType = htKeyword
      Caption = '&Imprimir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnimprimirClick
    end
    object SpeedButton3: TSpeedButton
      Left = 172
      Top = 8
      Width = 86
      Height = 27
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Aplicar &Filtros'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object btndeletado: TSpeedButton
      Left = 361
      Top = 8
      Width = 95
      Height = 27
      Cursor = crHandPoint
      Caption = '&Estornar Conta'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btndeletadoClick
    end
    object SpeedButton1: TSpeedButton
      Left = 266
      Top = 8
      Width = 74
      Height = 27
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = '&Baixar (F2)'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object btnmenu: TSpeedButton
      Left = 726
      Top = 8
      Width = 67
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir (Ctrl+P).'
      HelpType = htKeyword
      Caption = '+Menus'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnmenuClick
    end
    object SpeedButton2: TSpeedButton
      Left = 473
      Top = 8
      Width = 93
      Height = 27
      Caption = 'Alterar Vr Emp'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton4: TSpeedButton
      Left = 568
      Top = 8
      Width = 93
      Height = 27
      Caption = 'Antecipa'#231#227'o'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 800
    Height = 54
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 16056319
    TabOrder = 5
    object rpg: TRadioGroup
      Left = 2
      Top = 26
      Width = 796
      Height = 30
      Color = 15724527
      Columns = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Pg'
        'N Pg'
        'Isen'
        'Pg_Is')
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = rpgClick
    end
    object rtipo: TRadioGroup
      Left = 2
      Top = 2
      Width = 796
      Height = 32
      Align = alTop
      Caption = 'Exibir'
      Color = 15724527
      Columns = 11
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'CDC'
        'Consig.'
        'Cart C.'
        'Boleto'
        'Mens/Rec'
        'Adiant.'
        'C. Pess'
        'Gnatus'
        'Cart D.'
        'Cheque')
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = rpgClick
    end
  end
  object ActionList1: TActionList
    Left = 336
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
    object focus: TAction
      Caption = 'focus'
      ShortCut = 114
      OnExecute = focusExecute
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
    object envemail: TAction
      Caption = 'envemail'
      OnExecute = envemailExecute
    end
    object mensalidades: TAction
      Caption = 'mensalidades'
      OnExecute = mensalidadesExecute
    end
  end
  object opendialog: TOpenPictureDialog
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 412
    Top = 240
  end
  object menu: TPopupMenu
    Left = 472
    Top = 244
    object BaixarImprimirparcelas1: TMenuItem
      Caption = 'Baixar/Imprimir parcelas'
      OnClick = BaixarImprimirparcelas1Click
    end
    object Isentar1: TMenuItem
      Caption = 'Isentar'
      OnClick = Isentar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      OnClick = Clientes1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Bloquearparcela1: TMenuItem
      Caption = 'Bloquear parcela'
      OnClick = Bloquearparcela1Click
    end
    object Desbloquearparcela1: TMenuItem
      Caption = 'Desbloquear parcela'
      OnClick = Desbloquearparcela1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Lanarmensalidades1: TMenuItem
      Caption = 'Lan'#231'ar mensalidades'
      OnClick = Lanarmensalidades1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Relatrioporvencimentobanco1: TMenuItem
      Caption = 'Relat'#243'rio por recebimento (banco)'
      OnClick = Relatrioporvencimentobanco1Click
    end
    object Emitidosdeumperodo1: TMenuItem
      Caption = 'Relat'#243'rio por emiss'#227'o'
      OnClick = Emitidosdeumperodo1Click
    end
    object ComVencimentoem1: TMenuItem
      Caption = 'Relat'#243'rio por vencimento/pagamento'
      OnClick = ComVencimentoem1Click
    end
    object RelatrioCarteiras1: TMenuItem
      Caption = 'Relat'#243'rio Carteiras'
      OnClick = RelatrioCarteiras1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Importardosite1: TMenuItem
      Caption = 'Importar do site '
      OnClick = Importardosite1Click
    end
    object exportarparaosite1: TMenuItem
      Caption = 'Exportar para o site'
      OnClick = exportarparaosite1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Cadastrocedente1: TMenuItem
      Caption = 'Cadastro cedente'
      OnClick = Cadastrocedente1Click
    end
    object ImprimirExportarboleto1: TMenuItem
      Caption = 'Enviar boleto por E-Mail'
      OnClick = ImprimirExportarboleto1Click
    end
    object Gerarboletoparaossememail1: TMenuItem
      Caption = 'Gerar boleto para os sem e-mail'
      OnClick = Gerarboletoparaossememail1Click
    end
    object GerarRemessa1: TMenuItem
      Caption = 'Gerar Remessa'
      Visible = False
      OnClick = GerarRemessa1Click
    end
    object ClientessemEMail1: TMenuItem
      Caption = 'Clientes sem E-Mail'
      OnClick = ClientessemEMail1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Alterarvencimentos1: TMenuItem
      Caption = 'Alterar vencimentos'
      OnClick = Alterarvencimentos1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
  end
  object sqld: TZQuery
    Connection = fdm.conector
    AfterScroll = sqldAfterScroll
    Params = <>
    Left = 264
    Top = 240
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 200
    Top = 240
  end
  object provedor: TDataSetProvider
    DataSet = sqld
    Left = 216
    Top = 320
  end
  object tabela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'provedor'
    Left = 336
    Top = 320
  end
end
