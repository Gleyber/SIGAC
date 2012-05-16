object fsistema: Tfsistema
  Left = 48
  Top = 171
  BorderStyle = bsDialog
  Caption = 'SIGAC'
  ClientHeight = 466
  ClientWidth = 760
  Color = clWhite
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 760
    Height = 466
    ActivePage = consignada
    Align = alClient
    TabOrder = 0
    object atualizaprod: TTabSheet
      Caption = 'atualizaprod'
      ImageIndex = 5
      object Bevel8: TBevel
        Left = 1
        Top = 7
        Width = 352
        Height = 55
      end
      object lcodigo: TDBText
        Left = 51
        Top = 54
        Width = 48
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label83: TLabel
        Left = 2
        Top = 54
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label82: TLabel
        Left = 163
        Top = 36
        Width = 72
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label81: TLabel
        Left = 163
        Top = 23
        Width = 72
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lsubgrupo1: TDBText
        Left = 237
        Top = 23
        Width = 117
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lfornecedor1: TDBText
        Left = 237
        Top = 36
        Width = 117
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lproduto1: TDBText
        Left = 93
        Top = 54
        Width = 258
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label80: TLabel
        Left = 3
        Top = 36
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lgrupo1: TDBText
        Left = 51
        Top = 36
        Width = 105
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label79: TLabel
        Left = 3
        Top = 23
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Se'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lfamilia1: TDBText
        Left = 51
        Top = 23
        Width = 105
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label78: TLabel
        Left = 8
        Top = 0
        Width = 190
        Height = 14
        Alignment = taCenter
        Caption = 'DADOS DO PRODUTO SELECIONADO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 3
        Top = 52
        Width = 350
        Height = 2
        Shape = bsBottomLine
      end
      object Label115: TLabel
        Left = 3
        Top = 12
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Depart'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8026746
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ldepartamento1: TDBText
        Left = 51
        Top = 12
        Width = 105
        Height = 13
        DataSource = fcadg.ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object rtipo1: TRadioGroup
        Left = 1
        Top = 77
        Width = 352
        Height = 57
        Caption = 'Aplicar sobre o:'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 4
        Items.Strings = (
          'Departamento'
          'Se'#231#227'o'
          'Grupo'
          'SubGrupo'
          'Fornecedor'
          'Produto'
          'Todos')
        ParentFont = False
        TabOrder = 0
      end
      object rvalor: TRadioGroup
        Left = -1
        Top = 133
        Width = 354
        Height = 31
        Caption = 'Alterar o Valor de:'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Varejo'
          'Atacado'
          'Atacado1')
        ParentFont = False
        TabOrder = 1
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 165
        Width = 353
        Height = 48
        ActivePage = TabSheet5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object TabSheet4: TTabSheet
          Caption = 'VrVenda'
          object btnalterar: TSpeedButton
            Left = 294
            Top = 0
            Width = 51
            Height = 20
            Cursor = crHandPoint
            Caption = 'Alterar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnalterarClick
          end
          object Label87: TLabel
            Left = 4
            Top = 2
            Width = 201
            Height = 13
            Caption = 'Aumentar a margem em               %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edper: TEdit
            Left = 140
            Top = 0
            Width = 46
            Height = 16
            BevelKind = bkFlat
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = edperKeyPress
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Margem'
          ImageIndex = 1
          object Label91: TLabel
            Left = 74
            Top = 4
            Width = 212
            Height = 13
            Caption = 'Altera a margem de para                %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edperm: TEdit
            Left = 216
            Top = 1
            Width = 54
            Height = 16
            BevelKind = bkFlat
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = edpermKeyPress
          end
          object BitBtn36: TBitBtn
            Left = 289
            Top = 0
            Width = 57
            Height = 21
            Caption = 'Alterar'
            TabOrder = 1
            OnClick = BitBtn36Click
          end
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 218
        Width = 361
        Height = 97
        ActivePage = TabSheet2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object TabSheet2: TTabSheet
          Caption = 'Colocar'
          object Label76: TLabel
            Left = 111
            Top = 35
            Width = 146
            Height = 13
            Caption = 'In'#237'cio e Fim da Promo'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Edit1: TEdit
            Left = 1
            Top = 48
            Width = 71
            Height = 16
            BevelKind = bkFlat
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            Text = '0'
            OnKeyPress = Edit1KeyPress
          end
          object MaskEdit7: TMaskEdit
            Left = 108
            Top = 49
            Width = 77
            Height = 16
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
          end
          object MaskEdit8: TMaskEdit
            Left = 186
            Top = 49
            Width = 77
            Height = 16
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            Text = '  /  /    '
          end
          object BitBtn39: TBitBtn
            Left = 266
            Top = 49
            Width = 75
            Height = 16
            Caption = 'Confirmar'
            TabOrder = 3
            OnClick = BitBtn39Click
          end
          object RadioGroup1: TRadioGroup
            Left = 0
            Top = 0
            Width = 353
            Height = 31
            Align = alTop
            Caption = 'O desconto sobre o valor de venda '#233' em'
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              '%'
              'R$')
            ParentFont = False
            TabOrder = 4
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Tirar'
          ImageIndex = 1
          object BitBtn40: TBitBtn
            Left = 88
            Top = 24
            Width = 163
            Height = 25
            Caption = 'Tirar da Promo'#231#227'o'
            TabOrder = 0
            OnClick = BitBtn40Click
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Prorrogar/Diminuir'
          ImageIndex = 2
          object Label77: TLabel
            Left = -1
            Top = 5
            Width = 342
            Height = 13
            Caption = 'Desejo aumentar ou diminuir a promo'#231#227'o em                 dias'
          end
          object epromocao: TSpinEdit
            Left = 253
            Top = 2
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object BitBtn38: TBitBtn
            Left = 253
            Top = 32
            Width = 61
            Height = 25
            Caption = 'Confirmar'
            TabOrder = 1
            OnClick = BitBtn38Click
          end
        end
      end
    end
    object curva: TTabSheet
      Caption = 'curva'
      ImageIndex = 1
      object Label24: TLabel
        Left = 1
        Top = 1
        Width = 11
        Height = 94
        AutoSize = False
        Caption = 'A B C D E F '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object totalcurva: TLabel
        Left = 2
        Top = 96
        Width = 75
        Height = 13
        Caption = 'Total = 100%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 145
        Top = 2
        Width = 199
        Height = 13
        Caption = 'Entre com o per'#237'odo da curva ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 145
        Top = 26
        Width = 21
        Height = 13
        Caption = 'De:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 249
        Top = 26
        Width = 13
        Height = 13
        Caption = 'A:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lcurva: TLabel
        Left = 80
        Top = 46
        Width = 265
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #218'ltima Calssifica'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lspcurva: TLabel
        Left = 136
        Top = 60
        Width = 209
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Espere...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object ea: TEdit
        Left = 13
        Top = 0
        Width = 59
        Height = 16
        HelpType = htKeyword
        BevelEdges = [beLeft, beTop, beRight]
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 0
        Text = '20'
        OnChange = eaChange
        OnExit = eaExit
      end
      object eb: TEdit
        Left = 13
        Top = 16
        Width = 59
        Height = 16
        HelpType = htKeyword
        BevelEdges = [beLeft, beTop, beRight]
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 1
        Text = '30'
        OnChange = eaChange
        OnExit = eaExit
      end
      object ec: TEdit
        Left = 13
        Top = 32
        Width = 59
        Height = 16
        HelpType = htKeyword
        BevelEdges = [beLeft, beTop, beRight]
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 2
        Text = '50'
        OnChange = eaChange
        OnExit = eaExit
      end
      object ed: TEdit
        Left = 13
        Top = 48
        Width = 59
        Height = 16
        HelpType = htKeyword
        BevelEdges = [beLeft, beTop, beRight]
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 3
        Text = '0'
        OnChange = eaChange
        OnExit = eaExit
      end
      object ee: TEdit
        Left = 13
        Top = 64
        Width = 59
        Height = 16
        HelpType = htKeyword
        BevelEdges = [beLeft, beTop, beRight]
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 4
        Text = '0'
        OnChange = eaChange
        OnExit = eaExit
      end
      object ef: TEdit
        Left = 13
        Top = 80
        Width = 59
        Height = 16
        HelpType = htKeyword
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 5
        Text = '0'
        OnChange = eaChange
        OnExit = eaExit
      end
      object dtc1: TMaskEdit
        Left = 170
        Top = 24
        Width = 66
        Height = 16
        HelpType = htKeyword
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        Text = '  /  /    '
      end
      object dtc2: TMaskEdit
        Left = 274
        Top = 24
        Width = 67
        Height = 16
        HelpType = htKeyword
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
      end
      object BitBtn9: TBitBtn
        Left = 192
        Top = 82
        Width = 72
        Height = 22
        Caption = '&OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = BitBtn9Click
      end
    end
    object recpg: TTabSheet
      Caption = 'recpg'
      ImageIndex = 2
      object pgdocumento: TLabel
        Left = 329
        Top = 0
        Width = 73
        Height = 14
        HelpType = htKeyword
        Caption = 'Documento L'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgmora: TLabel
        Left = 486
        Top = 44
        Width = 28
        Height = 14
        Caption = 'Mora'
        FocusControl = emora
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        Visible = False
      end
      object pgtotal: TLabel
        Left = 0
        Top = 44
        Width = 28
        Height = 14
        Alignment = taCenter
        Caption = 'Valor'
        FocusControl = evrdocumento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgdesconto: TLabel
        Left = 85
        Top = 44
        Width = 76
        Height = 14
        Alignment = taCenter
        Caption = 'Desconto (R$)'
        FocusControl = evrdocumento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgacrescimo: TLabel
        Left = 170
        Top = 44
        Width = 60
        Height = 14
        Alignment = taCenter
        Caption = 'Acr'#233'scimo'
        FocusControl = evrdocumento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgvrdocumento: TLabel
        Left = 246
        Top = 44
        Width = 58
        Height = 14
        Alignment = taCenter
        Caption = 'Vr. L'#237'quido'
        FocusControl = evrdocumento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgrecebido: TLabel
        Left = 327
        Top = 44
        Width = 50
        Height = 14
        Alignment = taCenter
        Caption = 'Acertado'
        FocusControl = erecebido
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgdiferenca: TLabel
        Left = 406
        Top = 44
        Width = 52
        Height = 14
        Alignment = taCenter
        Caption = 'Diferen'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgdtvencimento: TLabel
        Left = 416
        Top = 0
        Width = 66
        Height = 14
        Alignment = taCenter
        Caption = 'Vencimento'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object pgobservacao: TLabel
        Left = 283
        Top = 85
        Width = 25
        Height = 14
        Caption = 'Obs:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 0
        Top = -2
        Width = 59
        Height = 14
        Caption = 'Tipo Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lposicao: TLabel
        Left = 197
        Top = -2
        Width = 78
        Height = 14
        Caption = 'Posi'#231#227'o Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit2: TDBEdit
        Left = 329
        Top = 12
        Width = 65
        Height = 20
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object eletra: TDBEdit
        Left = 394
        Top = 12
        Width = 19
        Height = 20
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'letra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object emora: TDBEdit
        Left = 486
        Top = 58
        Width = 32
        Height = 16
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'mora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        Visible = False
      end
      object pgevalor: TDBEdit
        Left = 0
        Top = 58
        Width = 81
        Height = 16
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrdocumento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnExit = pgevalorExit
      end
      object pgedesconto: TDBEdit
        Left = 85
        Top = 58
        Width = 76
        Height = 16
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnExit = pgevalorExit
      end
      object pgeacrescimo: TDBEdit
        Left = 166
        Top = 58
        Width = 76
        Height = 16
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'acrescimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = pgevalorExit
      end
      object evrdocumento: TDBEdit
        Left = 246
        Top = 58
        Width = 76
        Height = 16
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        OnExit = pgevalorExit
      end
      object erecebido: TDBEdit
        Left = 327
        Top = 58
        Width = 76
        Height = 16
        HelpType = htKeyword
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'recebido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        OnExit = pgevalorExit
      end
      object ediferenca: TDBEdit
        Left = 406
        Top = 58
        Width = 79
        Height = 16
        HelpType = htKeyword
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'diferenca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        OnExit = pgevalorExit
      end
      object DBEdit3: TDBEdit
        Left = 415
        Top = 12
        Width = 71
        Height = 20
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dtvencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 280
        Top = 97
        Width = 236
        Height = 16
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'obs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object pcheque: TPanel
        Left = 0
        Top = 85
        Width = 280
        Height = 33
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        object Label10: TLabel
          Left = 0
          Top = -2
          Width = 43
          Height = 14
          Caption = 'Cheque'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label47: TLabel
          Left = 148
          Top = -2
          Width = 44
          Height = 14
          Alignment = taCenter
          Caption = 'Agencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 200
          Top = -2
          Width = 32
          Height = 14
          Alignment = taCenter
          Caption = 'Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 66
          Top = -2
          Width = 33
          Height = 14
          Caption = 'Banco'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object DBEdit5: TDBEdit
          Left = 0
          Top = 12
          Width = 65
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 149
          Top = 12
          Width = 49
          Height = 16
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'agencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 199
          Top = 12
          Width = 81
          Height = 16
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 66
          Top = 12
          Width = 81
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object ppassado: TPanel
        Left = 0
        Top = 121
        Width = 361
        Height = 33
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        Visible = False
        object Label2: TLabel
          Left = 0
          Top = -2
          Width = 74
          Height = 14
          Caption = 'Passado para'
          FocusControl = enome
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label3: TLabel
          Left = 282
          Top = -2
          Width = 23
          Height = 14
          Alignment = taCenter
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object enome: TDBEdit
          Left = 0
          Top = 12
          Width = 281
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'passado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyDown = enomeKeyDown
        end
        object edata: TDBEdit
          Left = 282
          Top = 12
          Width = 72
          Height = 16
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'datapassado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object BitBtn16: TBitBtn
        Left = 360
        Top = 130
        Width = 81
        Height = 25
        HelpType = htKeyword
        Caption = '&Confirma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = BitBtn16Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 0
        Top = 12
        Width = 196
        Height = 22
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BiDiMode = bdRightToLeft
        Color = 15461355
        DataField = 'tipoconta_c'
        DropDownWidth = 300
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        KeyField = 'descricao'
        ListField = 'descricao'
        ListSource = d1
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object cposicao: TDBLookupComboBox
        Left = 196
        Top = 12
        Width = 112
        Height = 22
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BiDiMode = bdRightToLeft
        Color = 15461355
        DataField = 'posicaoconta'
        DropDownWidth = 300
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        KeyField = 'descricao'
        ListField = 'descricao'
        ListSource = d2
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object conta: TTabSheet
      Caption = 'conta'
      ImageIndex = 3
      object pconta: TPanel
        Left = 0
        Top = 413
        Width = 752
        Height = 24
        Align = alBottom
        Color = clWhite
        TabOrder = 2
        object btnok: TBitBtn
          Left = 444
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Ok(Ins)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnokClick
        end
      end
      object gradeconta: TDBGrid
        Left = 0
        Top = 103
        Width = 752
        Height = 310
        Align = alClient
        DataSource = ds
        FixedColor = 15395562
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnEnter = gradecontaEnter
        OnExit = gradecontaExit
        OnKeyDown = gradecontaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'numero'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'N Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'banco'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'agencia'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'Ag'#234'n.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conta'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'Conta'
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
            FieldName = 'documento'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'Doc'
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
            FieldName = 'contador'
            Title.Caption = 'N.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 15
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vencimento'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'Vencto'
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
            FieldName = 'valor'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            Title.Caption = 'Valor'
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
            FieldName = 'dia'
            Font.Charset = OEM_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Terminal'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Caption = 'Dia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 752
        Height = 103
        Align = alTop
        BevelOuter = bvNone
        Color = 16251643
        TabOrder = 0
        DesignSize = (
          752
          103)
        object Bevel5: TBevel
          Left = 0
          Top = 73
          Width = 364
          Height = 28
        end
        object Bevel4: TBevel
          Left = 368
          Top = 83
          Width = 227
          Height = 17
        end
        object Bevel3: TBevel
          Left = 368
          Top = 66
          Width = 227
          Height = 17
        end
        object Bevel2: TBevel
          Left = 472
          Top = 19
          Width = 124
          Height = 39
        end
        object ltipoconta: TLabel
          Left = 0
          Top = 20
          Width = 59
          Height = 14
          Cursor = crHandPoint
          Caption = 'Tipo Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = ltipocontaClick
        end
        object Label5: TLabel
          Left = 223
          Top = 20
          Width = 30
          Height = 14
          Caption = 'N Doc'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 276
          Top = 20
          Width = 46
          Height = 14
          Caption = 'Qtd Parc'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 328
          Top = 20
          Width = 96
          Height = 14
          Caption = 'Vencimento do 1'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lmora2: TLabel
          Left = 433
          Top = 20
          Width = 28
          Height = 14
          Caption = 'Mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object lintervalo: TLabel
          Left = 479
          Top = 41
          Width = 48
          Height = 14
          Caption = 'Intervalo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object SpeedButton16: TSpeedButton
          Left = 380
          Top = 67
          Width = 214
          Height = 13
          Caption = 'Alterar Vencimentos'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton16Click
        end
        object lobs: TLabel
          Left = 219
          Top = 72
          Width = 22
          Height = 14
          Caption = 'Obs'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edocumento: TEdit
          Left = 204
          Top = 34
          Width = 67
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkSoft
          BevelOuter = bvRaised
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
        object eqtd: TComboBox
          Left = 273
          Top = 34
          Width = 50
          Height = 21
          Cursor = crHandPoint
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkSoft
          BevelOuter = bvRaised
          Style = csOwnerDrawVariable
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemHeight = 15
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          OnChange = eqtdChange
          OnKeyPress = eqtdKeyPress
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '68'
            '69'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '76'
            '77'
            '78'
            '79'
            '80'
            '81'
            '82'
            '83'
            '84'
            '85'
            '86'
            '87'
            '88'
            '89'
            '90'
            '91'
            '92'
            '93'
            '94'
            '95'
            '96'
            '97'
            '98'
            '99'
            '100')
        end
        object lvencdia: TSpinEdit
          Left = 326
          Top = 34
          Width = 38
          Height = 23
          Cursor = crHandPoint
          HelpType = htKeyword
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxValue = 5000
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 30
          OnChange = lvencdiaChange
          OnKeyDown = lvencdiaKeyDown
        end
        object evencimento: TMaskEdit
          Left = 366
          Top = 34
          Width = 60
          Height = 20
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          Color = clWhite
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          Text = '  /  /    '
          OnKeyDown = evencimentoKeyDown
        end
        object emora2: TEdit
          Left = 428
          Top = 34
          Width = 40
          Height = 20
          BevelInner = bvLowered
          BevelKind = bkSoft
          BevelOuter = bvRaised
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnKeyPress = emora2KeyPress
        end
        object rcomercial: TCheckBox
          Left = 478
          Top = 20
          Width = 109
          Height = 17
          Caption = 'M'#234's Comercial?'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = rcomercialClick
        end
        object eintervalo: TSpinEdit
          Left = 534
          Top = 34
          Width = 54
          Height = 23
          Cursor = crHandPoint
          HelpType = htKeyword
          Color = clWhite
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxValue = 5000
          MinValue = 0
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Value = 30
          OnChange = eintervaloChange
          OnKeyDown = eintervaloKeyDown
        end
        object rbaixacheque: TCheckBox
          Left = 380
          Top = 88
          Width = 212
          Height = 13
          Caption = 'Baixar Conta(s) com Vencto <= Hoje'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3158064
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object pcheque2: TPanel
          Left = -1
          Top = 72
          Width = 218
          Height = 33
          BevelInner = bvLowered
          Color = 14017770
          TabOrder = 8
          object lconta: TLabel
            Left = 167
            Top = 0
            Width = 32
            Height = 14
            Caption = 'Conta'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3158064
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lagencia: TLabel
            Left = 122
            Top = 0
            Width = 15
            Height = 14
            Caption = 'Ag'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3158064
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 55
            Top = 0
            Width = 33
            Height = 14
            Cursor = crHandPoint
            Caption = 'Banco'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3158064
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = Label7Click
          end
          object Label42: TLabel
            Left = 2
            Top = 0
            Width = 39
            Height = 14
            Caption = 'N Cheq'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3158064
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object econta: TEdit
            Left = 149
            Top = 13
            Width = 67
            Height = 17
            HelpType = htKeyword
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvLowered
            BevelKind = bkSoft
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            OnKeyDown = nchequeKeyDown
          end
          object eagencia: TEdit
            Left = 108
            Top = 13
            Width = 41
            Height = 17
            HelpType = htKeyword
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvLowered
            BevelKind = bkSoft
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            OnKeyDown = nchequeKeyDown
          end
          object ebanco: TEdit
            Left = 38
            Top = 13
            Width = 70
            Height = 17
            HelpType = htKeyword
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvLowered
            BevelKind = bkSoft
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = ebancoKeyDown
          end
          object ncheque: TEdit
            Left = 1
            Top = 13
            Width = 37
            Height = 17
            HelpType = htKeyword
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvLowered
            BevelKind = bkSoft
            BevelOuter = bvRaised
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnKeyDown = nchequeKeyDown
          end
        end
        object etipoconta: TDBLookupComboBox
          Left = 27
          Top = 35
          Width = 202
          Height = 22
          HelpType = htKeyword
          Anchors = []
          BevelEdges = [beBottom]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          Color = clWhite
          DropDownRows = 20
          DropDownWidth = 300
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          KeyField = 'descricao'
          ListField = 'descricao'
          ListSource = d1
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnClick = etipocontaClick
          OnKeyDown = etipocontaKeyDown
        end
        object lnome: TPanel
          Left = 0
          Top = 0
          Width = 752
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          Color = 6118749
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          object ltot: TStaticText
            Left = 723
            Top = 1
            Width = 28
            Height = 18
            Align = alRight
            Alignment = taCenter
            BevelInner = bvNone
            BevelOuter = bvNone
            Caption = 'total'
            Color = 3355443
            Font.Charset = ANSI_CHARSET
            Font.Color = 14286847
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object eobs: TEdit
          Left = 217
          Top = 85
          Width = 146
          Height = 17
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkSoft
          BevelOuter = bvRaised
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 9
          OnExit = eobsExit
        end
      end
    end
    object frecpg: TTabSheet
      Caption = 'frecpg'
      ImageIndex = 4
      object Label8: TLabel
        Left = 38
        Top = 112
        Width = 84
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'De:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 214
        Top = 112
        Width = 11
        Height = 14
        Caption = 'A:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 38
        Top = 131
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo de Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 38
        Top = 151
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Conta Cont'#225'bil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 38
        Top = 230
        Width = 84
        Height = 13
        Hint = 'Localiza aproximadamente'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 38
        Top = 170
        Width = 84
        Height = 13
        Hint = 'Localiza aproximadamente'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 38
        Top = 190
        Width = 84
        Height = 13
        Hint = 'Localiza aproximadamente'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 38
        Top = 210
        Width = 84
        Height = 13
        Hint = 'Localiza aproximadamente'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object btnmrp: TSpeedButton
        Left = 126
        Top = 265
        Width = 183
        Height = 17
        Caption = '&Nome'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnmrpClick
      end
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 284
        Width = 85
        Height = 25
        Caption = 'Zerar combos'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Bevel6: TBevel
        Left = 0
        Top = 264
        Width = 309
        Height = 4
        Shape = bsTopLine
      end
      object Label154: TLabel
        Left = 38
        Top = 250
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Conta em'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bfiltro: TRadioGroup
        Left = 0
        Top = 0
        Width = 752
        Height = 39
        Align = alTop
        Caption = 'Filtrar'
        Color = clWhite
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object RTIPO: TRadioGroup
        Left = 0
        Top = 39
        Width = 752
        Height = 34
        Align = alTop
        Caption = 'Filtrar'
        Color = clWhite
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 3
        Items.Strings = (
          'Pago'
          'N'#227'o Pago'
          'Vencido'
          'Todos')
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object rdata: TRadioGroup
        Left = 0
        Top = 73
        Width = 752
        Height = 34
        Align = alTop
        Caption = 'Per'#237'odo por data'
        Color = clWhite
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Emiss'#227'o'
          'Vencto'
          'Pgto')
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object md1: TMaskEdit
        Left = 127
        Top = 110
        Width = 79
        Height = 16
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
      end
      object md2: TMaskEdit
        Left = 231
        Top = 110
        Width = 79
        Height = 16
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
      end
      object evendedor: TComboBox
        Left = 126
        Top = 227
        Width = 183
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
        TabOrder = 10
      end
      object ebairro: TComboBox
        Left = 126
        Top = 167
        Width = 183
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
        TabOrder = 7
      end
      object emunicipio: TComboBox
        Left = 126
        Top = 187
        Width = 183
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
        TabOrder = 8
      end
      object euf: TComboBox
        Left = 126
        Top = 207
        Width = 183
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
      object BitBtn1: TBitBtn
        Left = 126
        Top = 284
        Width = 91
        Height = 25
        Caption = '&Filtrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = BitBtn1Click
      end
      object cconta: TComboBox
        Left = 126
        Top = 128
        Width = 183
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
      end
      object ccontaem: TComboBox
        Left = 126
        Top = 148
        Width = 183
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
        TabOrder = 6
      end
      object ccontaem2: TComboBox
        Left = 126
        Top = 247
        Width = 183
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
        TabOrder = 12
      end
    end
    object tabprecoproduto: TTabSheet
      Caption = 'tabprecoproduto'
      ImageIndex = 5
      object Bevel11: TBevel
        Left = 167
        Top = 151
        Width = 201
        Height = 21
      end
      object Bevel14: TBevel
        Left = 167
        Top = 264
        Width = 202
        Height = 36
      end
      object Bevel13: TBevel
        Left = 167
        Top = 224
        Width = 202
        Height = 37
      end
      object Bevel12: TBevel
        Left = 167
        Top = 183
        Width = 202
        Height = 38
      end
      object Bevel10: TBevel
        Left = 167
        Top = 114
        Width = 202
        Height = 50
      end
      object Bevel9: TBevel
        Left = 167
        Top = 37
        Width = 202
        Height = 73
      end
      object Label27: TLabel
        Left = 187
        Top = 41
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = '&Vr Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 187
        Top = 57
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtd/Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 128
        Top = 158
        Width = 133
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr. Unit. Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lmaximo: TLabel
        Left = 187
        Top = 242
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Atacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 187
        Top = 186
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lminimo123: TLabel
        Left = 187
        Top = 202
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Varejo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 187
        Top = 226
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bnaltera: TSpeedButton
        Left = 286
        Top = 310
        Width = 81
        Height = 19
        Caption = 'N'#227'o Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bnalteraClick
      end
      object Label33: TLabel
        Left = 181
        Top = 90
        Width = 197
        Height = 14
        Caption = 'Custo Oper un                                    %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label98: TLabel
        Left = 187
        Top = 266
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percent 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label99: TLabel
        Left = 187
        Top = 282
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Atacado 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 209
        Top = 73
        Width = 169
        Height = 14
        Caption = 'Desconto                                    %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object evrcompra: TDBEdit
        Left = 287
        Top = 39
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrcompra'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = evrcompraExit
      end
      object efracao: TDBEdit
        Left = 287
        Top = 56
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fracao'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = evrcompraExit
      end
      object evrunit: TDBEdit
        Left = 287
        Top = 158
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunit'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object epercentatacado: TDBEdit
        Left = 287
        Top = 226
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'percentatacado'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnExit = epercentExit
      end
      object evratacado: TDBEdit
        Left = 287
        Top = 242
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacado'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnExit = evratacadoExit
      end
      object epercent: TDBEdit
        Left = 287
        Top = 186
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'percent'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnExit = epercentExit
      end
      object evrvarejo: TDBEdit
        Left = 287
        Top = 202
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvenda'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnExit = evrvarejoExit
      end
      object baltera: TButton
        Left = 221
        Top = 310
        Width = 65
        Height = 19
        Caption = 'Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = balteraClick
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = 37
        Width = 137
        Height = 17
        Caption = 'Acertar por M'#233'dia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = CheckBox1Click
      end
      object Panel1: TPanel
        Left = 0
        Top = 94
        Width = 165
        Height = 60
        Color = clWhite
        TabOrder = 17
        Visible = False
        object Label64: TLabel
          Left = 7
          Top = 1
          Width = 89
          Height = 14
          Cursor = crHandPoint
          Caption = 'Compras de     a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object MaskEdit5: TMaskEdit
          Left = 9
          Top = 19
          Width = 64
          Height = 16
          HelpType = htKeyword
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = 4194368
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEdit6: TMaskEdit
          Left = 89
          Top = 19
          Width = 64
          Height = 16
          HelpType = htKeyword
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = 4194368
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
        object Button7: TButton
          Left = 89
          Top = 42
          Width = 64
          Height = 17
          Caption = 'Calcular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button7Click
        end
      end
      object RadioGroup5: TRadioGroup
        Left = 0
        Top = 53
        Width = 166
        Height = 39
        Caption = 'M'#233'dia por'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Per'#237'odo'
          'Estoque')
        ParentFont = False
        TabOrder = 18
        Visible = False
        OnClick = RadioGroup5Click
      end
      object DBEdit6: TDBEdit
        Left = 287
        Top = 90
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'despesaacessoria'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = evrcompraExit
      end
      object DBEdit4: TDBEdit
        Left = 287
        Top = 114
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'imposto'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnExit = DBEdit4Exit
      end
      object DBEdit7: TDBEdit
        Left = 287
        Top = 131
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ipi'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = DBEdit4Exit
      end
      object DBCheckBox5: TDBCheckBox
        Left = 191
        Top = 116
        Width = 93
        Height = 13
        Alignment = taLeftJustify
        Caption = 'ICM Calcula?'
        Color = 15329769
        DataField = 'ativo'
        DataSource = dsproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4144959
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object eperc1: TDBEdit
        Left = 287
        Top = 266
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'percent3'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnExit = epercentExit
      end
      object evrperc1: TDBEdit
        Left = 287
        Top = 282
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'valor3'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnExit = evrperc1Exit
      end
      object ldescricao: TStaticText
        Left = 0
        Top = 0
        Width = 752
        Height = 14
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object DBEdit13: TDBEdit
        Left = 287
        Top = 73
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'desctotal'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = evrcompraExit
      end
      object DBCheckBox1: TDBCheckBox
        Left = 191
        Top = 132
        Width = 93
        Height = 13
        Alignment = taLeftJustify
        Caption = 'IPI  Calcula?'
        Color = 15329769
        DataField = 'ativoV'
        DataSource = dsproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4144959
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object ratuapreco: TCheckBox
        Left = 167
        Top = 17
        Width = 205
        Height = 17
        Caption = 'Alterar apenas o valor de compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
    end
    object inventario: TTabSheet
      Caption = 'inventario'
      ImageIndex = 6
      object Label32: TLabel
        Left = 208
        Top = 48
        Width = 136
        Height = 14
        Alignment = taRightJustify
        Caption = 'REGISTRO DE INVENT'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label155: TLabel
        Left = 11
        Top = 48
        Width = 34
        Height = 14
        Alignment = taRightJustify
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gradeinv: TDBGrid
        Left = 0
        Top = 53
        Width = 97
        Height = 384
        Cursor = crHandPoint
        Hint = 'Clique no cabe'#231'alho de uma coluna para indexar'
        Align = alLeft
        Color = 16382457
        FixedColor = 16384
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Reg em'
            Title.Color = 15329769
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end>
      end
      object ginv: TRadioGroup
        Left = 0
        Top = 0
        Width = 752
        Height = 21
        Align = alTop
        Caption = 'REGISTRO DE INVENT'#193'RIO POR'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Digitar uma data'
          'Estoque registrado')
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = ginvClick
      end
      object minv: TMaskEdit
        Left = 281
        Top = 67
        Width = 64
        Height = 17
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4194368
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
      end
      object btinv: TBitBtn
        Left = 188
        Top = 96
        Width = 75
        Height = 23
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btinvClick
      end
      object invcmedio: TRadioGroup
        Left = 0
        Top = 21
        Width = 752
        Height = 32
        Align = alTop
        Caption = 'INVENT'#193'RIO DO ESTOQUE ATUAL POR'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Valor unit'#225'rio'
          'Custo m'#233'dio')
        ParentFont = False
        TabOrder = 4
      end
      object invgrupo: TComboBox
        Left = 8
        Top = 64
        Width = 169
        Height = 22
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Style = csOwnerDrawVariable
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        ItemHeight = 16
        ParentBiDiMode = False
        TabOrder = 5
      end
    end
    object cep: TTabSheet
      Caption = 'cep'
      ImageIndex = 7
      object Label20: TLabel
        Left = 0
        Top = 0
        Width = 22
        Height = 14
        Caption = 'Cep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 113
        Top = 0
        Width = 38
        Height = 14
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 66
        Top = 0
        Width = 13
        Height = 14
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 0
        Top = 40
        Width = 52
        Height = 14
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 235
        Top = 40
        Width = 33
        Height = 14
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 289
        Top = 0
        Width = 52
        Height = 14
        Caption = 'Num IBGE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cep1: TEdit
        Left = 0
        Top = 16
        Width = 65
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 0
        OnKeyPress = cep1KeyPress
      end
      object cep3: TEdit
        Left = 112
        Top = 16
        Width = 175
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 2
        OnKeyDown = cep3KeyDown
      end
      object cep2: TComboBox
        Left = 66
        Top = 16
        Width = 45
        Height = 22
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        ItemHeight = 14
        ParentBiDiMode = False
        TabOrder = 1
        OnKeyPress = cep2KeyPress
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
      object cep6: TEdit
        Left = 232
        Top = 56
        Width = 116
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 5
      end
      object cep5: TEdit
        Left = 0
        Top = 56
        Width = 231
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 4
      end
      object cep4: TEdit
        Left = 288
        Top = 16
        Width = 60
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 3
        OnKeyPress = cep4KeyPress
      end
      object btcep: TButton
        Left = 200
        Top = 86
        Width = 75
        Height = 22
        Caption = 'Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btcepClick
      end
    end
    object municipio: TTabSheet
      Caption = 'municipio'
      ImageIndex = 8
      object Label37: TLabel
        Left = 1
        Top = 0
        Width = 38
        Height = 14
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 242
        Top = 0
        Width = 52
        Height = 14
        Caption = 'Num IBGE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 1
        Top = 56
        Width = 78
        Height = 14
        Cursor = crHandPoint
        Caption = 'Consultar site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Label39Click
      end
      object Label62: TLabel
        Left = 311
        Top = 2
        Width = 13
        Height = 14
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3682601
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cid1: TEdit
        Left = 0
        Top = 16
        Width = 238
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 0
      end
      object cid2: TEdit
        Left = 239
        Top = 16
        Width = 60
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentBiDiMode = False
        TabOrder = 1
        OnKeyPress = cid2KeyPress
      end
      object btmun: TButton
        Left = 200
        Top = 86
        Width = 75
        Height = 22
        Caption = 'Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btmunClick
      end
      object euibge: TDBComboBox
        Left = 301
        Top = 16
        Width = 41
        Height = 19
        Cursor = crHandPoint
        HelpType = htKeyword
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DataField = 'uf'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 13
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
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object obsos: TTabSheet
      Caption = 'obsos'
      ImageIndex = 9
      object StaticText1: TStaticText
        Left = 0
        Top = 0
        Width = 752
        Height = 16
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'DESCRI'#199#195'O DOS SERVI'#199'OS A EXECUTAR'
        Color = 15395562
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object M1: TDBMemo
        Left = 0
        Top = 16
        Width = 752
        Height = 193
        Align = alTop
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'servico'
        DataSource = fpedido.dspedido
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 0
        Top = 209
        Width = 752
        Height = 16
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'OBSERVA'#199#195'O/HIST'#211'RICO'
        Color = 15395562
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object M2: TDBMemo
        Left = 0
        Top = 225
        Width = 752
        Height = 212
        Align = alClient
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'obs1'
        DataSource = fpedido.dspedido
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object entrada: TTabSheet
      Caption = 'entrada'
      ImageIndex = 10
      object ppecaC: TPanel
        Left = 0
        Top = 0
        Width = 752
        Height = 87
        Align = alTop
        BevelInner = bvLowered
        Color = 16119285
        TabOrder = 0
        object btnapagarC: TSpeedButton
          Left = 618
          Top = 4
          Width = 68
          Height = 25
          Cursor = crHandPoint
          Hint = 'Apaga o registro selecionado (ALT+A).'
          HelpType = htKeyword
          Caption = 'Excl&uir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          OnClick = btnapagarCClick
        end
        object btncancelC: TSpeedButton
          Left = 536
          Top = 4
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Hint = 'Cancela as altera'#231#245'es n'#227'o gravadas (ALT+C).'
          Caption = '&Cancelar'
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          OnClick = btncancelCClick
        end
        object btngravarC: TSpeedButton
          Left = 453
          Top = 4
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Hint = 'Grava as altera'#231#245'es (ALT+G).'
          Caption = '&Gravar'
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          OnClick = btngravarCClick
        end
        object btneditarC: TSpeedButton
          Left = 374
          Top = 4
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Hint = 'Apaga o registro selecionado (ALT+A).'
          HelpType = htKeyword
          Caption = '&Editar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          OnClick = btneditarCClick
        end
        object btnnovoC: TSpeedButton
          Left = 291
          Top = 4
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Hint = 'Abre um novo registro (Insert).'
          Caption = '&Novo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          OnClick = btnnovoCClick
        end
        object Label50: TLabel
          Left = 6
          Top = 37
          Width = 103
          Height = 13
          Caption = 'Descri'#231#227'o/C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label53: TLabel
          Left = 230
          Top = 37
          Width = 21
          Height = 13
          Caption = 'Qtd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2955078
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label54: TLabel
          Left = 272
          Top = 37
          Width = 77
          Height = 13
          Caption = 'DtFabrica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2955078
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label56: TLabel
          Left = 356
          Top = 37
          Width = 58
          Height = 13
          Caption = 'V'#225'lido at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2955078
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label57: TLabel
          Left = 433
          Top = 37
          Width = 52
          Height = 13
          Caption = 'Peso L'#237'q'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2955078
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label59: TLabel
          Left = 495
          Top = 37
          Width = 63
          Height = 13
          Caption = 'Peso Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2955078
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label61: TLabel
          Left = 572
          Top = 37
          Width = 26
          Height = 13
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2955078
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btnimprimirC: TSpeedButton
          Left = 694
          Top = 4
          Width = 82
          Height = 25
          Cursor = crHandPoint
          Caption = '&Imprimir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnimprimirCClick
        end
        object btvC: TSpeedButton
          Left = 4
          Top = 6
          Width = 269
          Height = 22
          Cursor = crHandPoint
          Caption = '&Vender'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = btvCClick
        end
        object tbrelC: TSpeedButton
          Left = 632
          Top = 32
          Width = 145
          Height = 17
          Caption = 'Relat'#243'rio das Entradas'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 13434879
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = tbrelCClick
        end
        object Label40: TLabel
          Left = 6
          Top = 70
          Width = 90
          Height = 13
          Caption = 'Lote Mat. Prima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText
          Left = 104
          Top = 70
          Width = 674
          Height = 14
          Color = clWhite
          DataField = 'lotemp'
          ParentColor = False
        end
        object ent1: TDBEdit
          Left = 4
          Top = 51
          Width = 205
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'descricao'
          Enabled = False
          TabOrder = 0
          OnKeyDown = ent1KeyDown
        end
        object ent2: TDBEdit
          Left = 211
          Top = 51
          Width = 58
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'qtd'
          Enabled = False
          TabOrder = 1
          OnExit = ent2Exit
        end
        object ent3: TDBEdit
          Left = 269
          Top = 51
          Width = 80
          Height = 16
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'fabricacao'
          Enabled = False
          TabOrder = 2
          OnExit = ent3Exit
        end
        object ent4: TDBEdit
          Left = 351
          Top = 51
          Width = 80
          Height = 16
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'validade'
          Enabled = False
          TabOrder = 3
        end
        object ent5: TDBEdit
          Left = 432
          Top = 51
          Width = 61
          Height = 16
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pesol'
          Enabled = False
          TabOrder = 4
        end
        object ent6: TDBEdit
          Left = 494
          Top = 51
          Width = 74
          Height = 16
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pesob'
          Enabled = False
          TabOrder = 5
        end
        object ent7: TDBEdit
          Left = 570
          Top = 51
          Width = 127
          Height = 16
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'lote'
          Enabled = False
          ReadOnly = True
          TabOrder = 6
          OnKeyDown = ent7KeyDown
        end
      end
      object gradec: TDBGrid
        Left = 0
        Top = 87
        Width = 752
        Height = 350
        Align = alClient
        Color = 16382712
        DataSource = fdm.dg
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = gradecDblClick
        OnKeyDown = gradecKeyDown
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
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Qtd'
            Title.Color = 15395562
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
            FieldName = 'fabricacao'
            Title.Caption = 'Dt Fabrica'#231#227'o'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'validade'
            Title.Caption = 'Validade'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pesol'
            Title.Caption = 'Peso L'#237'q'
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
            FieldName = 'pesob'
            Title.Caption = 'Peso Bruto'
            Title.Color = 15395562
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
            FieldName = 'lote'
            Title.Caption = 'Lote'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usado'
            Title.Caption = 'Usado'
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
            FieldName = 'diferenca'
            Title.Caption = 'Diferen'#231'a'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end>
      end
    end
    object td: TTabSheet
      Caption = 'td'
      ImageIndex = 11
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 752
        Height = 117
        Align = alTop
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 0
        object btnconfD: TSpeedButton
          Left = 493
          Top = 33
          Width = 72
          Height = 22
          HelpType = htKeyword
          Caption = '&Confirmar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton11: TSpeedButton
          Left = 553
          Top = 100
          Width = 23
          Height = 15
          Flat = True
          Visible = False
        end
        object Label41: TLabel
          Left = 6
          Top = 101
          Width = 172
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Localizar por C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object StaticText5: TStaticText
          Left = 1
          Top = 24
          Width = 107
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'EMITIDA EM'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object StaticText6: TStaticText
          Left = 1
          Top = 1
          Width = 750
          Height = 18
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'INFORMA'#199#213'ES DA VENDA'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object StaticText7: TStaticText
          Left = 1
          Top = 43
          Width = 107
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TIPO VENDA'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object StaticText8: TStaticText
          Left = 218
          Top = 24
          Width = 105
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VENDEDOR'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object StaticText9: TStaticText
          Left = 1
          Top = 62
          Width = 107
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object StaticText10: TStaticText
          Left = 218
          Top = 43
          Width = 105
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DEVOLVIDO'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object ltddevolvidoD: TStaticText
          Left = 325
          Top = 43
          Width = 148
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object ltdvendedorD: TStaticText
          Left = 325
          Top = 24
          Width = 148
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VENDEDOR'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object ltdvalorD: TStaticText
          Left = 110
          Top = 62
          Width = 101
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object ltdtipovendaD: TStaticText
          Left = 110
          Top = 43
          Width = 101
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TIPO VENDA'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object ltddataD: TStaticText
          Left = 110
          Top = 24
          Width = 101
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = '10/10/2005'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object lstatic: TStaticText
          Left = 218
          Top = 62
          Width = 105
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PERMITIDO'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object ltdpermitidoD: TStaticText
          Left = 325
          Top = 62
          Width = 148
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object StaticText13: TStaticText
          Left = 218
          Top = 81
          Width = 105
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DEV. ATUAL'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object ltddevatualD: TStaticText
          Left = 325
          Top = 81
          Width = 148
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object StaticText11: TStaticText
          Left = 1
          Top = 81
          Width = 107
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Qtd Itens'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object ltqtdD: TStaticText
          Left = 110
          Top = 81
          Width = 101
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = 5131854
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object elocalizard: TEdit
          Left = 181
          Top = 100
          Width = 395
          Height = 16
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          ParentBiDiMode = False
          TabOrder = 17
          OnChange = elocalizardChange
        end
      end
      object gradetd: TDBGrid
        Left = 0
        Top = 117
        Width = 752
        Height = 320
        Align = alClient
        Color = 16382712
        DataSource = ds1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 273
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrunit'
            Title.Caption = 'VrUnit'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Qtd'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'devolvido'
            Title.Caption = 'Devolvido'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'devolver'
            Title.Caption = 'Devolver'
            Title.Color = 15395562
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object transfprod: TTabSheet
      Caption = 'transfprod'
      ImageIndex = 12
      object cfilial: TComboBox
        Left = 0
        Top = 48
        Width = 237
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
        TabOrder = 0
      end
      object btransf: TButton
        Left = 160
        Top = 74
        Width = 75
        Height = 23
        Caption = '&Transferir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btransfClick
      end
      object rtransf: TRadioGroup
        Left = 0
        Top = 0
        Width = 752
        Height = 30
        Align = alTop
        Caption = 'Transferir'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Da loja para'
          'De fora p/ loja')
        ParentFont = False
        TabOrder = 2
      end
    end
    object cedente: TTabSheet
      Caption = 'cedente'
      ImageIndex = 13
      object gcedente: TDBGrid
        Left = 0
        Top = 0
        Width = 752
        Height = 399
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        FixedColor = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 6049863
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = gcedenteDblClick
        OnKeyDown = gcedenteKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Nossonumero'
            Title.Caption = 'Nosso N'#186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codbanco'
            Title.Caption = 'CodBanco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Banco'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Agencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contadigito'
            Title.Caption = 'Dig'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCedente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CedenteDigito'
            Title.Caption = 'Dig'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Carteira'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EndNumero'
            Title.Caption = 'Num'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end>
      end
      object pcedente: TPanel
        Left = 0
        Top = 399
        Width = 752
        Height = 38
        Align = alBottom
        Alignment = taRightJustify
        Color = 15329769
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label94: TLabel
          Left = 5
          Top = 5
          Width = 60
          Height = 28
          Alignment = taRightJustify
          Caption = 'Instru'#231#245'es Boleto'
          WordWrap = True
        end
        object mcedente: TDBMemo
          Left = 68
          Top = 1
          Width = 573
          Height = 36
          BevelOuter = bvSpace
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'instrucoes'
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object registro: TTabSheet
      Caption = 'registro'
      ImageIndex = 14
      object Label43: TLabel
        Left = 20
        Top = 4
        Width = 66
        Height = 13
        Caption = 'Registro N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btregok: TSpeedButton
        Left = 316
        Top = 2
        Width = 31
        Height = 18
        Cursor = crHandPoint
        Hint = 'Altera o nome da empresa'
        Caption = 'OK'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btregokClick
      end
      object Label46: TLabel
        Left = 12
        Top = 21
        Width = 74
        Height = 13
        Caption = 'Respons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lvalidade: TLabel
        Left = 12
        Top = 55
        Width = 46
        Height = 14
        Caption = 'Validade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eregistro: TDBEdit
        Left = 88
        Top = 3
        Width = 225
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'registro'
        DataSource = fdm.dsconfig
        TabOrder = 0
      end
      object eresponsavel: TDBEdit
        Left = 88
        Top = 20
        Width = 225
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'responsavel'
        DataSource = fdm.dsconfig
        TabOrder = 1
      end
      object StaticText3: TStaticText
        Left = 0
        Top = 83
        Width = 358
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'ESCOLHA UMA FORMA DE LIBERA'#199#195'O'
        Color = 16119285
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object btregnet: TButton
        Left = 2
        Top = 101
        Width = 86
        Height = 25
        Caption = 'Pela Internet'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btregnetClick
      end
      object btregman: TBitBtn
        Left = 88
        Top = 101
        Width = 76
        Height = 25
        Caption = 'Manual'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btregmanClick
      end
      object btregemail: TBitBtn
        Left = 166
        Top = 101
        Width = 113
        Height = 25
        Caption = 'Solicitar p/ E-Mail'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btregemailClick
      end
    end
    object altusu: TTabSheet
      Caption = 'altusu'
      ImageIndex = 15
      object Bevel7: TBevel
        Left = 0
        Top = 8
        Width = 179
        Height = 62
      end
      object Bevel15: TBevel
        Left = 0
        Top = 80
        Width = 179
        Height = 62
      end
      object Label48: TLabel
        Left = 6
        Top = 1
        Width = 28
        Height = 14
        Caption = 'Atual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 11
        Top = 17
        Width = 42
        Height = 14
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 19
        Top = 40
        Width = 34
        Height = 14
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 11
        Top = 97
        Width = 42
        Height = 14
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label55: TLabel
        Left = 19
        Top = 120
        Width = 34
        Height = 14
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 6
        Top = 73
        Width = 65
        Height = 14
        Caption = 'Alterar para'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object USUARIOA: TEdit
        Left = 56
        Top = 16
        Width = 121
        Height = 15
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object SENHAA: TEdit
        Left = 56
        Top = 40
        Width = 121
        Height = 15
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        PasswordChar = '*'
        TabOrder = 1
      end
      object USUARION: TEdit
        Left = 56
        Top = 96
        Width = 121
        Height = 15
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object SENHAN: TEdit
        Left = 56
        Top = 120
        Width = 121
        Height = 15
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        PasswordChar = '*'
        TabOrder = 3
      end
      object btusu: TButton
        Left = 56
        Top = 144
        Width = 47
        Height = 22
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btusuClick
      end
    end
    object permissoes: TTabSheet
      Caption = 'permissoes'
      ImageIndex = 16
      object Bevel16: TBevel
        Left = 352
        Top = 8
        Width = 121
        Height = 89
      end
      object btptodas: TSpeedButton
        Left = 352
        Top = 107
        Width = 122
        Height = 26
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Todas as Permiss'#245'es '
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btptodasClick
      end
      object btpcopia: TSpeedButton
        Left = 352
        Top = 133
        Width = 122
        Height = 26
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Copiar um Usu'#225'rio'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btpcopiaClick
      end
      object btpnenhuma: TSpeedButton
        Left = 352
        Top = 159
        Width = 122
        Height = 26
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Nenhuma Permiss'#227'o'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btpnenhumaClick
      end
      object cinserir: TDBCheckBox
        Left = 356
        Top = 20
        Width = 110
        Height = 17
        Caption = 'Inserir'
        DataField = 'inserir'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object calterar: TDBCheckBox
        Left = 356
        Top = 37
        Width = 110
        Height = 17
        Caption = 'Alterar'
        DataField = 'alterar'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object capagar: TDBCheckBox
        Left = 356
        Top = 54
        Width = 110
        Height = 21
        Caption = 'Apagar'
        DataField = 'apagar'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object cconsultar: TDBCheckBox
        Left = 356
        Top = 73
        Width = 110
        Height = 17
        Caption = 'Consultar'
        DataField = 'consultar'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object Listpermissao: TListBox
        Left = 0
        Top = 0
        Width = 349
        Height = 437
        Cursor = crHandPoint
        Style = lbOwnerDrawFixed
        Align = alLeft
        BevelInner = bvLowered
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 15461355
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ItemHeight = 11
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnClick = ListpermissaoClick
      end
    end
    object tabip: TTabSheet
      Caption = 'tabip'
      ImageIndex = 17
      object Label60: TLabel
        Left = 4
        Top = 12
        Width = 93
        Height = 16
        Caption = 'Escolha a filial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eip: TDBLookupComboBox
        Left = 4
        Top = 32
        Width = 274
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        KeyField = 'ip'
        ListField = 'ip;nome'
        ParentFont = False
        TabOrder = 0
      end
      object btcadfilial: TBitBtn
        Left = 280
        Top = 32
        Width = 59
        Height = 21
        Caption = '&Cadastrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btcadfilialClick
      end
      object BitBtn2: TBitBtn
        Left = 218
        Top = 61
        Width = 121
        Height = 25
        Caption = 'Conectar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn2Click
      end
    end
    object comifun: TTabSheet
      Caption = 'comifun'
      ImageIndex = 18
      object l1: TLabel
        Left = 0
        Top = 64
        Width = 56
        Height = 13
        Caption = 'Margem 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l2: TLabel
        Left = 67
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l3: TLabel
        Left = 136
        Top = 64
        Width = 56
        Height = 13
        Caption = 'Margem 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l4: TLabel
        Left = 199
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l5: TLabel
        Left = 269
        Top = 64
        Width = 56
        Height = 13
        Caption = 'Margem 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l6: TLabel
        Left = 332
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label67: TLabel
        Left = 2
        Top = 104
        Width = 101
        Height = 13
        Caption = 'Comiss'#227'o Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l7: TLabel
        Left = 401
        Top = 64
        Width = 56
        Height = 13
        Caption = 'Margem 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l8: TLabel
        Left = 464
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l9: TLabel
        Left = 534
        Top = 64
        Width = 56
        Height = 13
        Caption = 'Margem 5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object l10: TLabel
        Left = 597
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object etipo: TDBRadioGroup
        Left = 0
        Top = 30
        Width = 752
        Height = 30
        Align = alTop
        Caption = 'Calcular Comiss'#227'o Baseado em'
        Color = 15987699
        Columns = 6
        DataField = 'tipocomissao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Items.Strings = (
          'Margem Venda'
          'Fixa'
          '% Vr Produto'
          'Forma Recebto'
          'Varejo/Atcado'
          'Desc Venda')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'M'
          'C'
          'P'
          'A'
          'V'
          'D')
        OnChange = etipoChange
      end
      object e1: TDBEdit
        Left = 0
        Top = 76
        Width = 62
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vr1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object e2: TDBEdit
        Left = 67
        Top = 76
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'comissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object e3: TDBEdit
        Left = 133
        Top = 76
        Width = 62
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vr2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object e4: TDBEdit
        Left = 200
        Top = 76
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'comissao2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object e5: TDBEdit
        Left = 266
        Top = 76
        Width = 62
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vr3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object e6: TDBEdit
        Left = 330
        Top = 76
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'comissao3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object ecomserv: TDBEdit
        Left = 2
        Top = 116
        Width = 120
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'comissaoservico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 0
        Top = 0
        Width = 752
        Height = 30
        Align = alTop
        Caption = 'Calcula ao'
        Color = 15987699
        Columns = 2
        DataField = 'modocalcula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Vender'
          'Receber')
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        Values.Strings = (
          '1'
          '2')
      end
      object e7: TDBEdit
        Left = 398
        Top = 76
        Width = 62
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vr4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object e8: TDBEdit
        Left = 462
        Top = 76
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'comissao4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object e9: TDBEdit
        Left = 531
        Top = 76
        Width = 62
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vr5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object e10: TDBEdit
        Left = 595
        Top = 76
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'comissao5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object Button1: TButton
        Left = 503
        Top = 112
        Width = 75
        Height = 25
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = Button1Click
      end
    end
    object iso: TTabSheet
      Caption = 'iso'
      ImageIndex = 19
      object miso2: TMemo
        Left = 0
        Top = 85
        Width = 752
        Height = 172
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        TabOrder = 0
      end
      object StaticText4: TStaticText
        Left = 0
        Top = 67
        Width = 96
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Notas do Rodap'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText12: TStaticText
        Left = 0
        Top = 0
        Width = 104
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Texto da proposta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object miso1: TMemo
        Left = 0
        Top = 18
        Width = 752
        Height = 49
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        TabOrder = 3
      end
      object BitBtn3: TBitBtn
        Left = 417
        Top = 257
        Width = 75
        Height = 22
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
      end
    end
    object nimport: TTabSheet
      Caption = 'nimport'
      ImageIndex = 20
      object Bevel17: TBevel
        Left = 0
        Top = 124
        Width = 353
        Height = 75
      end
      object Bevel19: TBevel
        Left = 0
        Top = 68
        Width = 353
        Height = 50
      end
      object Label66: TLabel
        Left = 2
        Top = 59
        Width = 125
        Height = 14
        Caption = 'Local do desembara'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3618615
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 46
        Top = 76
        Width = 29
        Height = 14
        Caption = 'Local'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label69: TLabel
        Left = 284
        Top = 76
        Width = 23
        Height = 14
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label70: TLabel
        Left = 4
        Top = 75
        Width = 13
        Height = 14
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3682601
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cnimport13: TDBText
        Left = 0
        Top = 0
        Width = 752
        Height = 17
        Align = alTop
        Alignment = taCenter
        Color = 6579300
        DataField = 'descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = 13828095
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label35: TLabel
        Left = 0
        Top = 18
        Width = 102
        Height = 14
        Caption = 'N'#250'mero DI/DSI/DSA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 135
        Top = 18
        Width = 61
        Height = 14
        Caption = 'Dt Registro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label65: TLabel
        Left = 208
        Top = 18
        Width = 102
        Height = 14
        Caption = 'C'#243'digo Exportador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label71: TLabel
        Left = 2
        Top = 116
        Width = 45
        Height = 14
        Caption = 'Adi'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3618615
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 2
        Top = 138
        Width = 44
        Height = 14
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label73: TLabel
        Left = 75
        Top = 138
        Width = 97
        Height = 14
        Caption = 'C'#243'digo fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label74: TLabel
        Left = 283
        Top = 138
        Width = 52
        Height = 14
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label85: TLabel
        Left = 283
        Top = 170
        Width = 52
        Height = 14
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label84: TLabel
        Left = 75
        Top = 170
        Width = 97
        Height = 14
        Caption = 'C'#243'digo fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label75: TLabel
        Left = 2
        Top = 170
        Width = 44
        Height = 14
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cnimport5: TDBEdit
        Left = 46
        Top = 88
        Width = 235
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'xLocDesemb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object cnimport6: TDBEdit
        Left = 284
        Top = 88
        Width = 68
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dDesemb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object cnimport4: TDBComboBox
        Left = 2
        Top = 89
        Width = 41
        Height = 17
        Cursor = crHandPoint
        HelpType = htKeyword
        Style = csOwnerDrawFixed
        BevelEdges = [beLeft, beTop, beRight]
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DataField = 'UFDesemb'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 11
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
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object BitBtn4: TBitBtn
        Left = 197
        Top = 208
        Width = 75
        Height = 25
        Caption = 'Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = BitBtn4Click
      end
      object cnimport1: TDBEdit
        Left = 0
        Top = 30
        Width = 133
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nDI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cnimport2: TDBEdit
        Left = 135
        Top = 30
        Width = 71
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dDi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cnimport3: TDBEdit
        Left = 208
        Top = 30
        Width = 142
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cExportador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cnimport7: TDBEdit
        Left = 2
        Top = 150
        Width = 71
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nAdicao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object cnimport8: TDBEdit
        Left = 75
        Top = 150
        Width = 204
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cFabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object cnimport9: TDBEdit
        Left = 283
        Top = 150
        Width = 68
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vDescDI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object cnimport12: TDBEdit
        Left = 283
        Top = 182
        Width = 68
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vDescDI2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object cnimport11: TDBEdit
        Left = 75
        Top = 182
        Width = 204
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cFabricante2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object cnimport10: TDBEdit
        Left = 2
        Top = 182
        Width = 71
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nAdicao2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
    end
    object tabplanalmed: TTabSheet
      Caption = 'tabplanalmed'
      ImageIndex = 21
      object Label86: TLabel
        Left = 0
        Top = 0
        Width = 103
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Prazo de Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label88: TLabel
        Left = 0
        Top = 16
        Width = 103
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Prazo de Pagto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label89: TLabel
        Left = 0
        Top = 32
        Width = 103
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Validade Proposta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label90: TLabel
        Left = 0
        Top = 48
        Width = 103
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Garantia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label92: TLabel
        Left = 0
        Top = 64
        Width = 103
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pm1: TEdit
        Left = 108
        Top = 0
        Width = 125
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '15 DIAS'
      end
      object pm5: TMemo
        Left = 234
        Top = 1
        Width = 247
        Height = 63
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Lines.Strings = (
          'Banco Nossa Caixa ag. 0427-8 c/c 04.002.517-4'
          'Estamos de acordo com a portaria GR 3161/99'
          'Empresa optante pelo simples nacional')
        TabOrder = 9
      end
      object pm2: TEdit
        Left = 108
        Top = 16
        Width = 125
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '10 '
      end
      object pm3: TEdit
        Left = 108
        Top = 32
        Width = 125
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '10 DIAS'
      end
      object pm4: TEdit
        Left = 108
        Top = 48
        Width = 125
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '12 MESES'
      end
      object pm6: TEdit
        Left = 108
        Top = 64
        Width = 125
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object pm10: TRadioGroup
        Left = 50
        Top = 81
        Width = 184
        Height = 33
        Caption = 'Frete'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'CIF'
          'FOB')
        ParentFont = False
        TabOrder = 4
      end
      object rimp: TCheckBox
        Left = 328
        Top = 66
        Width = 153
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Imprimir o texto acima?'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 10
      end
      object pm8: TMemo
        Left = 4
        Top = 116
        Width = 183
        Height = 33
        Alignment = taRightJustify
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Color = 15329769
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object pm9: TMemo
        Left = 188
        Top = 116
        Width = 125
        Height = 33
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        TabOrder = 6
      end
      object pm7: TMemo
        Left = 4
        Top = 150
        Width = 481
        Height = 47
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Lines.Strings = (
          '')
        TabOrder = 7
      end
      object rfabrica: TRadioGroup
        Left = 258
        Top = 190
        Width = 177
        Height = 33
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Escrit'#243'rio'
          'F'#225'brica')
        ParentFont = False
        TabOrder = 8
      end
      object planalbuttom: TButton
        Left = 438
        Top = 199
        Width = 43
        Height = 23
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = planalbuttomClick
      end
    end
    object clinf: TTabSheet
      Caption = 'clinf'
      ImageIndex = 22
      object Label93: TLabel
        Left = 66
        Top = 81
        Width = 59
        Height = 14
        Hint = 'Clique para LOCALIZAR/ORDENAR'
        Caption = 'Endere'#231'o *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label95: TLabel
        Left = 256
        Top = 81
        Width = 11
        Height = 14
        Caption = 'N'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label96: TLabel
        Left = 296
        Top = 81
        Width = 79
        Height = 14
        Caption = 'Complemento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lcid: TLabel
        Left = 514
        Top = 81
        Width = 45
        Height = 14
        Caption = 'Cidade *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label97: TLabel
        Left = 0
        Top = 81
        Width = 28
        Height = 14
        Caption = 'CEP *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label100: TLabel
        Left = 626
        Top = 81
        Width = 20
        Height = 14
        Caption = 'UF *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label101: TLabel
        Left = 396
        Top = 81
        Width = 40
        Height = 14
        Caption = 'Bairro *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label102: TLabel
        Left = 0
        Top = 35
        Width = 59
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para LOCALIZAR/ORDENAR'
        Caption = 'CNPJ/CPF *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label103: TLabel
        Left = 111
        Top = 35
        Width = 68
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para LOCALIZAR/ORDENAR'
        Caption = 'Inscri'#231#227'o/RG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label104: TLabel
        Left = 192
        Top = 35
        Width = 21
        Height = 14
        Caption = 'DDD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label105: TLabel
        Left = 213
        Top = 35
        Width = 34
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para LOCALIZAR/ORDENAR'
        Caption = 'Fone *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label106: TLabel
        Left = 278
        Top = 35
        Width = 78
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para LOCALIZAR/ORDENAR'
        Caption = 'N'#250'mero IBGE *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        OnClick = Label106Click
      end
      object Label107: TLabel
        Left = 359
        Top = 35
        Width = 32
        Height = 14
        Hint = 'Clique para LOCALIZAR/ORDENAR'
        Caption = 'E-Mail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object encep: TDBEdit
        Left = 0
        Top = 94
        Width = 65
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnKeyDown = encepKeyDown
      end
      object enendereco: TDBEdit
        Left = 66
        Top = 94
        Width = 189
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Endereco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object ennumero: TDBEdit
        Left = 256
        Top = 94
        Width = 39
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object encomplemento: TDBEdit
        Left = 296
        Top = 94
        Width = 99
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'complemento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object enbairro: TDBEdit
        Left = 396
        Top = 94
        Width = 117
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object encidade: TDBEdit
        Left = 514
        Top = 94
        Width = 111
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'municipio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object enuf: TDBComboBox
        Left = 625
        Top = 94
        Width = 38
        Height = 17
        Cursor = crHandPoint
        Style = csOwnerDrawVariable
        BevelOuter = bvRaised
        BevelKind = bkFlat
        DataField = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 11
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
        ParentFont = False
        TabOrder = 13
      end
      object encnpj: TDBEdit
        Left = 0
        Top = 48
        Width = 110
        Height = 17
        HelpType = htKeyword
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cnpj'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = encnpjExit
        OnKeyPress = encnpjKeyPress
      end
      object enie: TDBEdit
        Left = 111
        Top = 48
        Width = 80
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'IE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object enddd: TDBEdit
        Left = 192
        Top = 48
        Width = 20
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ddd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object efone: TDBEdit
        Left = 213
        Top = 48
        Width = 64
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText14: TStaticText
        Left = 0
        Top = 0
        Width = 752
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Dados para emiss'#227'o da NFe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object btclinf: TBitBtn
        Left = 512
        Top = 128
        Width = 75
        Height = 25
        Caption = '&Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = btclinfClick
      end
      object enibge: TDBEdit
        Left = 278
        Top = 48
        Width = 79
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'municipion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object enemail: TDBEdit
        Left = 359
        Top = 48
        Width = 301
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    object Tabcorrecal: TTabSheet
      Caption = 'Tabcorrecal'
      ImageIndex = 23
      object Label108: TLabel
        Left = 4
        Top = 0
        Width = 152
        Height = 14
        Caption = 'NF                  S'#233'rie           Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label109: TLabel
        Left = 4
        Top = 224
        Width = 46
        Height = 14
        Caption = 'C'#243'digos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label110: TLabel
        Left = 4
        Top = 236
        Width = 62
        Height = 14
        Caption = 'Irregulares'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label111: TLabel
        Left = 119
        Top = 236
        Width = 194
        Height = 14
        Caption = 'Retifica'#231#245'es a serem consideradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ec3: TMaskEdit
        Left = 131
        Top = 14
        Width = 63
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
      end
      object ec1: TEdit
        Left = 4
        Top = 14
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object ec2: TEdit
        Left = 68
        Top = 14
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ec4: TEdit
        Left = 4
        Top = 32
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object ec5: TEdit
        Left = 68
        Top = 32
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ec6: TMaskEdit
        Left = 131
        Top = 32
        Width = 63
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
      end
      object rc1: TCheckBox
        Left = 4
        Top = 56
        Width = 123
        Height = 17
        Caption = 'Raz'#227'o Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object rc2: TCheckBox
        Left = 4
        Top = 68
        Width = 123
        Height = 17
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object rc3: TCheckBox
        Left = 4
        Top = 81
        Width = 123
        Height = 17
        Caption = 'Munic'#237'pio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object rc4: TCheckBox
        Left = 4
        Top = 93
        Width = 123
        Height = 17
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object rc5: TCheckBox
        Left = 4
        Top = 106
        Width = 123
        Height = 17
        Caption = 'N'#176' Inscr. no CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object rc6: TCheckBox
        Left = 4
        Top = 118
        Width = 123
        Height = 17
        Caption = 'N'#176' Inscr. Estadual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object rc7: TCheckBox
        Left = 4
        Top = 131
        Width = 123
        Height = 17
        Caption = 'Natureza Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object rc8: TCheckBox
        Left = 4
        Top = 144
        Width = 123
        Height = 17
        Caption = 'C'#243'd. Fiscal Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object rc9: TCheckBox
        Left = 4
        Top = 158
        Width = 123
        Height = 17
        Caption = 'Via Transporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object rc10: TCheckBox
        Left = 4
        Top = 170
        Width = 123
        Height = 17
        Caption = 'Data Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object rc11: TCheckBox
        Left = 4
        Top = 183
        Width = 123
        Height = 17
        Caption = 'Data Sa'#237'da'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object rc12: TCheckBox
        Left = 4
        Top = 196
        Width = 123
        Height = 17
        Caption = 'Unidade (produto)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object rc13: TCheckBox
        Left = 132
        Top = 56
        Width = 123
        Height = 17
        Caption = 'Quantidade (produto)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object rc14: TCheckBox
        Left = 132
        Top = 68
        Width = 123
        Height = 17
        Caption = 'Descri'#231#227'o Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object rc15: TCheckBox
        Left = 132
        Top = 81
        Width = 123
        Height = 17
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
      object rc16: TCheckBox
        Left = 132
        Top = 93
        Width = 123
        Height = 17
        Caption = 'Valor Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object rc17: TCheckBox
        Left = 132
        Top = 106
        Width = 123
        Height = 17
        Caption = 'Valor Total Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object rc18: TCheckBox
        Left = 132
        Top = 118
        Width = 123
        Height = 17
        Caption = 'Al'#237'quota IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
      end
      object rc19: TCheckBox
        Left = 132
        Top = 131
        Width = 123
        Height = 17
        Caption = 'Valor IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
      end
      object rc20: TCheckBox
        Left = 132
        Top = 144
        Width = 123
        Height = 17
        Caption = 'Base C'#225'lculo IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
      end
      object rc21: TCheckBox
        Left = 132
        Top = 158
        Width = 123
        Height = 17
        Caption = 'Valor Total Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
      end
      object rc22: TCheckBox
        Left = 132
        Top = 170
        Width = 123
        Height = 17
        Caption = 'Al'#237'quota ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
      end
      object rc23: TCheckBox
        Left = 132
        Top = 183
        Width = 123
        Height = 17
        Caption = 'Valor ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
      end
      object rc24: TCheckBox
        Left = 132
        Top = 196
        Width = 123
        Height = 17
        Caption = 'Basde C'#225'lculo ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 29
      end
      object rc25: TCheckBox
        Left = 260
        Top = 56
        Width = 123
        Height = 17
        Caption = 'Nome Transportador '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 30
      end
      object rc26: TCheckBox
        Left = 260
        Top = 68
        Width = 123
        Height = 17
        Caption = 'Endere'#231'o Transportador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 31
      end
      object rc27: TCheckBox
        Left = 260
        Top = 81
        Width = 123
        Height = 17
        Caption = 'Termo Isen'#231#227'o IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 32
      end
      object rc28: TCheckBox
        Left = 260
        Top = 93
        Width = 123
        Height = 17
        Caption = 'Termo Isen'#231#227'o ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 33
      end
      object rc29: TCheckBox
        Left = 260
        Top = 106
        Width = 123
        Height = 17
        Caption = 'Peso-Bruto / L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 34
      end
      object rc30: TCheckBox
        Left = 260
        Top = 118
        Width = 123
        Height = 17
        Caption = 'Vol./Marca/Num/Quant.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 35
      end
      object rc31: TCheckBox
        Left = 260
        Top = 131
        Width = 123
        Height = 17
        Caption = 'Rasuras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 36
      end
      object rc32: TCheckBox
        Left = 260
        Top = 144
        Width = 123
        Height = 17
        Caption = 'Valor Duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 37
      end
      object rc33: TCheckBox
        Left = 260
        Top = 158
        Width = 123
        Height = 17
        Caption = 'Condi'#231#227'o Pagamento '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 38
      end
      object rc34: TCheckBox
        Left = 260
        Top = 170
        Width = 123
        Height = 17
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 39
      end
      object rc35: TCheckBox
        Left = 260
        Top = 183
        Width = 123
        Height = 17
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 40
      end
      object ec7: TEdit
        Left = 4
        Top = 254
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 42
      end
      object ec9: TEdit
        Left = 4
        Top = 270
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 43
      end
      object ec8: TEdit
        Left = 68
        Top = 254
        Width = 320
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 44
      end
      object ec10: TEdit
        Left = 68
        Top = 270
        Width = 320
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 45
      end
      object ec11: TEdit
        Left = 4
        Top = 286
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 46
      end
      object ec13: TEdit
        Left = 4
        Top = 302
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 47
      end
      object ec12: TEdit
        Left = 68
        Top = 286
        Width = 320
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 48
      end
      object ec14: TEdit
        Left = 68
        Top = 302
        Width = 320
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 49
      end
      object ec15: TEdit
        Left = 4
        Top = 318
        Width = 62
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 50
      end
      object ec16: TEdit
        Left = 68
        Top = 318
        Width = 320
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 51
      end
      object rc999: TCheckBox
        Left = 260
        Top = 196
        Width = 123
        Height = 17
        Caption = 'Outras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 41
      end
      object Button6: TButton
        Left = 240
        Top = 341
        Width = 75
        Height = 25
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 52
        OnClick = Button6Click
      end
    end
    object atuafiliais: TTabSheet
      Caption = 'atuafiliais'
      ImageIndex = 24
      object gradefilial: TDBGrid
        Left = 0
        Top = 32
        Width = 752
        Height = 380
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        FixedColor = 15395562
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            ReadOnly = True
            Title.Caption = 'Nome da filial'
            Width = 199
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            ReadOnly = True
            Title.Caption = 'Endere'#231'o IP'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Atualiza'
            PickList.Strings = (
              'S'
              'N')
            Title.Caption = 'Seleciona?'
            Width = 66
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 412
        Width = 752
        Height = 25
        Align = alBottom
        Color = 16382712
        TabOrder = 1
        object filatua: TSpeedButton
          Left = 287
          Top = 1
          Width = 72
          Height = 22
          Caption = '&OK'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = filatuaClick
        end
        object filenatua: TSpeedButton
          Left = 359
          Top = 1
          Width = 72
          Height = 22
          Caption = '&Sair'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = filenatuaClick
        end
        object filicad: TSpeedButton
          Left = 3
          Top = 1
          Width = 72
          Height = 22
          Caption = '&Cadastrar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = filicadClick
        end
      end
      object rfilial: TRadioGroup
        Left = 0
        Top = 0
        Width = 752
        Height = 32
        Align = alTop
        Caption = 'Atualizar cadastros'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Item selecionado'
          'Todos os cadastros')
        ParentFont = False
        TabOrder = 2
      end
    end
    object devconf: TTabSheet
      Caption = 'devconf'
      ImageIndex = 25
      object pdev: TPanel
        Left = 0
        Top = 0
        Width = 752
        Height = 117
        Align = alTop
        BevelOuter = bvLowered
        Color = 15921906
        Font.Charset = ANSI_CHARSET
        Font.Color = 15921906
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object btdevc: TSpeedButton
          Left = 503
          Top = 23
          Width = 72
          Height = 36
          HelpType = htKeyword
          Caption = '&Confirmar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btdevcClick
        end
        object SpeedButton1: TSpeedButton
          Left = 553
          Top = 100
          Width = 23
          Height = 15
          Flat = True
          Visible = False
        end
        object llocdev: TLabel
          Left = 6
          Top = 101
          Width = 172
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Localizar por C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object StaticText15: TStaticText
          Left = 1
          Top = 24
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Emitida em: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object StaticText16: TStaticText
          Left = 1
          Top = 1
          Width = 750
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'INFORMA'#199#213'ES DA VENDA'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object StaticText17: TStaticText
          Left = 1
          Top = 43
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tipo Venda: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object StaticText18: TStaticText
          Left = 242
          Top = 24
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object StaticText19: TStaticText
          Left = 1
          Top = 62
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object StaticText20: TStaticText
          Left = 242
          Top = 43
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Devolvido: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object ltddevolvido: TStaticText
          Left = 336
          Top = 43
          Width = 164
          Height = 18
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object ltdvendedor: TStaticText
          Left = 336
          Top = 24
          Width = 21
          Height = 18
          AutoSize = False
          Caption = 'VENDEDOR'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object ltdvalor: TStaticText
          Left = 94
          Top = 62
          Width = 122
          Height = 18
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object ltdtipovenda: TStaticText
          Left = 94
          Top = 43
          Width = 122
          Height = 18
          AutoSize = False
          Caption = 'TIPO VENDA'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object ltddata: TStaticText
          Left = 94
          Top = 24
          Width = 122
          Height = 18
          AutoSize = False
          Caption = '10/10/2005'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object StaticText21: TStaticText
          Left = 242
          Top = 62
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Permitido: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object ltdpermitido: TStaticText
          Left = 336
          Top = 62
          Width = 164
          Height = 18
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object StaticText22: TStaticText
          Left = 242
          Top = 81
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dev. Atual: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object ltddevatual: TStaticText
          Left = 336
          Top = 81
          Width = 164
          Height = 18
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object StaticText23: TStaticText
          Left = 1
          Top = 81
          Width = 89
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Qtd Itens: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15925247
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object ltqtd: TStaticText
          Left = 94
          Top = 81
          Width = 122
          Height = 18
          AutoSize = False
          Caption = '0,00 - 0%'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object elocalizar: TEdit
          Left = 181
          Top = 100
          Width = 393
          Height = 17
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 17
        end
        object devvendedor: TStaticText
          Left = 358
          Top = 24
          Width = 142
          Height = 18
          AutoSize = False
          Caption = 'VENDEDOR'
          Color = 3684408
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
      end
      object gradedev: TDBGrid
        Left = 0
        Top = 117
        Width = 752
        Height = 320
        Align = alClient
        Color = 16382712
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = gradedevDblClick
        OnTitleClick = gradedevTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 273
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrunit'
            Title.Caption = 'VrUnit'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Qtd'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'devolvido'
            Title.Caption = 'Devolvido'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'devolver'
            Title.Caption = 'Devolver'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object consignada: TTabSheet
      Caption = 'consignada'
      ImageIndex = 26
      object Panel5: TPanel
        Left = 0
        Top = 66
        Width = 752
        Height = 45
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object btconsigimp: TSpeedButton
          Left = 695
          Top = 18
          Width = 56
          Height = 23
          Caption = '&Imprimir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btconsigimpClick
        end
        object btconsapagar: TSpeedButton
          Left = 695
          Top = -2
          Width = 68
          Height = 23
          Caption = '&Apagar item'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btconsapagarClick
        end
        object btconsigvenda: TSpeedButton
          Left = 519
          Top = 20
          Width = 79
          Height = 22
          Caption = '&Gerar venda'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btconsigvendaClick
        end
        object Label114: TLabel
          Left = 315
          Top = 4
          Width = 121
          Height = 14
          Caption = 'Vendedor/Funcion'#225'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 0
          Top = 28
          Width = 24
          Height = 15
          Caption = 'S/N'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object consigt: TSpeedButton
          Left = 600
          Top = -1
          Width = 96
          Height = 22
          Caption = '&Mostrar tudo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = consigtClick
        end
        object consigvendedor: TSpeedButton
          Left = 600
          Top = 18
          Width = 96
          Height = 23
          Caption = '&Alterar Vendedor'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = consigvendedorClick
        end
        object Bevel18: TBevel
          Left = 596
          Top = -1
          Width = 3
          Height = 45
          Shape = bsLeftLine
          Style = bsRaised
        end
        object Bevel20: TBevel
          Left = 695
          Top = 0
          Width = 3
          Height = 45
          Shape = bsLeftLine
          Style = bsRaised
        end
        object conszera: TSpeedButton
          Left = 519
          Top = -1
          Width = 79
          Height = 22
          Caption = '&Zerar troca'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = conszeraClick
        end
        object consigp: TEdit
          Left = 25
          Top = 26
          Width = 287
          Height = 17
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnKeyDown = consigpKeyDown
        end
        object consiggp: TRadioGroup
          Left = 1
          Top = -2
          Width = 312
          Height = 29
          Caption = 'Escolha uma op'#231#227'o'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Localizar/Inserir item'
            'Devolver item')
          ParentFont = False
          TabOrder = 1
          OnClick = consiggpClick
        end
        object consvendedor: TComboBox
          Left = 316
          Top = 24
          Width = 204
          Height = 19
          BevelKind = bkFlat
          BevelOuter = bvRaised
          Style = csOwnerDrawVariable
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 2
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 752
        Height = 66
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 16579320
        TabOrder = 1
        object lconsig: TLabel
          Left = 3
          Top = 0
          Width = 76
          Height = 16
          Cursor = crHandPoint
          AutoSize = False
          Caption = ' Nome (F11)'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 15138815
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = lconsigClick
        end
        object lcons1: TLabel
          Left = 80
          Top = 0
          Width = 688
          Height = 16
          AutoSize = False
          Caption = 'Nenhum cliente'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 16579320
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lcons2: TLabel
          Left = 3
          Top = 19
          Width = 765
          Height = 16
          AutoSize = False
          Caption = ' Endere'#231'o: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 16579320
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lcons3: TLabel
          Left = 3
          Top = 39
          Width = 765
          Height = 16
          AutoSize = False
          Caption = ' Fone: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 16579320
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SpeedButton5: TSpeedButton
          Left = 733
          Top = 38
          Width = 18
          Height = 16
          Caption = 'vr'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton5Click
        end
      end
      object gconsigp: TDBGrid
        Left = 0
        Top = 111
        Width = 752
        Height = 310
        Align = alClient
        Color = 16382712
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = gconsigpDrawColumnCell
        OnDblClick = gconsigpDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'vencido'
            PickList.Strings = (
              'S'
              'N')
            Title.Caption = 'Venc?'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            ReadOnly = True
            Title.Caption = 'Data'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo'
            ReadOnly = True
            Title.Caption = 'C'#243'digo'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrunit'
            ReadOnly = True
            Title.Caption = 'VrUnit'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vendal'
            Title.Caption = 'QtdConsig'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'custol'
            Title.Caption = 'QtdDev'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            ReadOnly = True
            Title.Caption = 'TotQtd'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            ReadOnly = True
            Title.Caption = 'Total'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totdev'
            Title.Caption = 'TotDev'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datadevolucao'
            Title.Caption = 'DtDev'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fabricante'
            Title.Caption = 'Vendedor'
            Title.Color = 16119285
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object consigtotal: TPanel
        Left = 0
        Top = 421
        Width = 752
        Height = 16
        Align = alBottom
        Alignment = taRightJustify
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = 16579320
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object boletoe: TTabSheet
      Caption = 'boletoe'
      ImageIndex = 27
      object Label113: TLabel
        Left = 19
        Top = 3
        Width = 40
        Height = 14
        Caption = 'Layout:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label112: TLabel
        Left = 11
        Top = 27
        Width = 46
        Height = 14
        Caption = 'Esp'#233'cie:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox3: TComboBox
        Left = 61
        Top = -1
        Width = 108
        Height = 22
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Style = csDropDownList
        ItemHeight = 14
        ItemIndex = 0
        TabOrder = 0
        Text = 'BOLETO PADR'#195'O'
        Items.Strings = (
          'BOLETO PADR'#195'O'
          'CARN'#202)
      end
      object Edit2: TEdit
        Left = 57
        Top = 106
        Width = 311
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnKeyDown = consigpKeyDown
      end
      object ComboBox1: TComboBox
        Left = 61
        Top = 23
        Width = 260
        Height = 20
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Style = csOwnerDrawVariable
        ItemHeight = 14
        TabOrder = 2
        Items.Strings = (
          'edDuplicataMercantil'
          'CARN'#202)
      end
    end
    object combo: TTabSheet
      Caption = 'combo'
      ImageIndex = 28
      object lcombo: TLabel
        Left = 10
        Top = 0
        Width = 254
        Height = 32
        AutoSize = False
        Caption = 'Escolha e clique OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object combos: TDBLookupComboBox
        Left = 8
        Top = 33
        Width = 260
        Height = 22
        BevelOuter = bvRaised
        BevelKind = bkFlat
        ListSource = ds
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 191
        Top = 56
        Width = 75
        Height = 25
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn5Click
      end
    end
    object consultaprod: TTabSheet
      Caption = 'consultaprod'
      ImageIndex = 29
      object Label116: TLabel
        Left = 0
        Top = 25
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label117: TLabel
        Left = 0
        Top = 43
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Se'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label118: TLabel
        Left = 0
        Top = 62
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label119: TLabel
        Left = 0
        Top = 81
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Subgrupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label120: TLabel
        Left = 0
        Top = 100
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label121: TLabel
        Left = 0
        Top = 119
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label123: TLabel
        Left = 151
        Top = 138
        Width = 25
        Height = 14
        Alignment = taRightJustify
        Caption = 'Forn'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label124: TLabel
        Left = 2
        Top = 159
        Width = 78
        Height = 14
        Alignment = taRightJustify
        Caption = 'C'#243'digo Barras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label125: TLabel
        Left = 0
        Top = 0
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'd/Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label126: TLabel
        Left = 0
        Top = 195
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Unidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label127: TLabel
        Left = 147
        Top = 196
        Width = 29
        Height = 14
        Alignment = taRightJustify
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label128: TLabel
        Left = 0
        Top = 215
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CST/CSON'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label129: TLabel
        Left = 255
        Top = 25
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label130: TLabel
        Left = 161
        Top = 215
        Width = 13
        Height = 14
        Alignment = taRightJustify
        Caption = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label131: TLabel
        Left = 146
        Top = 176
        Width = 31
        Height = 14
        Alignment = taRightJustify
        Caption = 'Estoq'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label132: TLabel
        Left = -1
        Top = 176
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estoque Min.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label133: TLabel
        Left = 255
        Top = 120
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Peso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label134: TLabel
        Left = 410
        Top = 43
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Prat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label135: TLabel
        Left = 410
        Top = 62
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Box'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label136: TLabel
        Left = 410
        Top = 81
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Item'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label137: TLabel
        Left = 410
        Top = 100
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Comis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label139: TLabel
        Left = 255
        Top = 157
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '% Varejo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label140: TLabel
        Left = 410
        Top = 157
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Varejo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label141: TLabel
        Left = 255
        Top = 176
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '%Atacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label142: TLabel
        Left = 410
        Top = 176
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Atacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label143: TLabel
        Left = 255
        Top = 195
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '%Atacado1'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label144: TLabel
        Left = 410
        Top = 195
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VrAtacado1'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label145: TLabel
        Left = 410
        Top = 119
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Min'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label146: TLabel
        Left = 255
        Top = 62
        Width = 86
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para visualizar'
        Alignment = taRightJustify
        AutoSize = False
        Caption = #218'ltima Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label146Click
      end
      object Label147: TLabel
        Left = 255
        Top = 81
        Width = 86
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para visualizar'
        Alignment = taRightJustify
        AutoSize = False
        Caption = #218'ltima Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label147Click
      end
      object Label148: TLabel
        Left = 255
        Top = 100
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = #218'lt. Atualiza'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label149: TLabel
        Left = 37
        Top = 139
        Width = 42
        Height = 14
        Alignment = taRightJustify
        Caption = 'NCM/SH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label138: TLabel
        Left = 255
        Top = 44
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dt Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label150: TLabel
        Left = 255
        Top = 214
        Width = 86
        Height = 14
        Cursor = crHandPoint
        Hint = 'Movimento do produto'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtd Vendido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Label150Click
      end
      object Label151: TLabel
        Left = 410
        Top = 214
        Width = 63
        Height = 14
        Cursor = crHandPoint
        Hint = 'Movimento do produto'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtd Comp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Label150Click
      end
      object Label152: TLabel
        Left = 0
        Top = 231
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Aplica'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label122: TLabel
        Left = 255
        Top = 138
        Width = 86
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label153: TLabel
        Left = 410
        Top = 138
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C. M'#233'dio'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object SpeedButton6: TSpeedButton
        Left = 488
        Top = -4
        Width = 53
        Height = 22
        Caption = 'Imprimir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton6Click
      end
      object comp2: TDBEdit
        Left = 83
        Top = 24
        Width = 168
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object comp3: TDBEdit
        Left = 83
        Top = 43
        Width = 168
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'familia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object comp4: TDBEdit
        Left = 83
        Top = 62
        Width = 168
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object comp5: TDBEdit
        Left = 83
        Top = 81
        Width = 168
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'subgrupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object comp6: TDBEdit
        Left = 83
        Top = 100
        Width = 168
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object comp7: TDBEdit
        Left = 83
        Top = 119
        Width = 168
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object comp8: TDBEdit
        Left = 83
        Top = 0
        Width = 54
        Height = 18
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object comp9: TDBEdit
        Left = 178
        Top = 138
        Width = 73
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'codigofornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object comp27: TDBEdit
        Left = 83
        Top = 138
        Width = 54
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'ncmsh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object comp1: TDBEdit
        Left = 136
        Top = 0
        Width = 351
        Height = 18
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object comp14: TDBEdit
        Left = 177
        Top = 195
        Width = 73
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'cfop'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object comp15: TDBEdit
        Left = 83
        Top = 214
        Width = 54
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'st'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object comp17: TDBEdit
        Left = 346
        Top = 24
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'imposto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object comp16: TDBEdit
        Left = 177
        Top = 214
        Width = 73
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'ipi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object comp12: TDBEdit
        Left = 177
        Top = 176
        Width = 73
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object comp11: TDBEdit
        Left = 82
        Top = 176
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'minimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object comp13: TDBEdit
        Left = 83
        Top = 195
        Width = 54
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'un'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
      object comp22: TDBEdit
        Left = 346
        Top = 119
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'peso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object comp28: TDBEdit
        Left = 474
        Top = 43
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'prateleira'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      object comp29: TDBEdit
        Left = 474
        Top = 62
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'box'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      object comp30: TDBEdit
        Left = 474
        Top = 81
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'item'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
      end
      object comp31: TDBEdit
        Left = 474
        Top = 100
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'comissao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
      end
      object comp23: TDBEdit
        Left = 346
        Top = 157
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'percent'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
      end
      object comp33: TDBEdit
        Left = 474
        Top = 157
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'vrvenda'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
      end
      object comp24: TDBEdit
        Left = 346
        Top = 176
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'percentatacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 24
      end
      object comp34: TDBEdit
        Left = 474
        Top = 176
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'vratacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
      end
      object comp35: TDBEdit
        Left = 474
        Top = 195
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'valor3'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 26
      end
      object comp32: TDBEdit
        Left = 474
        Top = 119
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'vrminimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 27
      end
      object comp19: TDBEdit
        Left = 346
        Top = 62
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'ultimavenda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 28
      end
      object comp20: TDBEdit
        Left = 346
        Top = 81
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'ultimacompra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 29
      end
      object comp21: TDBEdit
        Left = 346
        Top = 100
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'ultalteracao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 30
      end
      object comp18: TDBEdit
        Left = 346
        Top = 43
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 31
      end
      object comp25: TDBEdit
        Left = 347
        Top = 195
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'percent3'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 32
      end
      object StaticText24: TStaticText
        Left = 3
        Top = 305
        Width = 249
        Height = 16
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        BevelOuter = bvNone
        Caption = #218'ltimas vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object StaticText25: TStaticText
        Left = 291
        Top = 305
        Width = 247
        Height = 16
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        BevelOuter = bvNone
        Caption = #218'ltimas compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
        Visible = False
      end
      object gvenda: TDBGrid
        Left = 3
        Top = 321
        Width = 249
        Height = 91
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Color = 16382712
        FixedColor = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 35
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 6049863
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
      end
      object gcompra: TDBGrid
        Left = 291
        Top = 320
        Width = 249
        Height = 91
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Color = 16382712
        FixedColor = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 36
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 6049863
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Visible = False
      end
      object comp10: TDBEdit
        Left = 82
        Top = 157
        Width = 169
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'codigobarras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 37
      end
      object comp26: TDBEdit
        Left = 347
        Top = 214
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'qtdvendido'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 38
      end
      object comp36: TDBEdit
        Left = 474
        Top = 214
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'qtdcompra'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 39
      end
      object comp37: TDBRichEdit
        Left = 83
        Top = 232
        Width = 457
        Height = 54
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = 15794175
        DataField = 'aplicacao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 40
      end
      object comp38: TDBEdit
        Left = 346
        Top = 138
        Width = 58
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'vrunit'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 41
        Visible = False
      end
      object comp39: TDBEdit
        Left = 474
        Top = 138
        Width = 66
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15794175
        DataField = 'cmedio'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3881787
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 42
        Visible = False
      end
    end
  end
  object qinventario: TRLReport
    Left = -600
    Top = -2000
    Width = 794
    Height = 1123
    DataSource = ds1
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = fdm.RLExpressionParser1
    Transparent = False
    BeforePrint = qinventarioBeforePrint
    OnPageEnding = qinventarioPageEnding
    object RLGroup2: TRLGroup
      Left = 38
      Top = 311
      Width = 718
      Height = 46
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLBand8: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 23
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLLabel18: TRLLabel
          Left = 0
          Top = 0
          Width = 60
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object RLLabel19: TRLLabel
          Left = 60
          Top = -2
          Width = 323
          Height = 23
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object RLLabel20: TRLLabel
          Left = 383
          Top = 0
          Width = 60
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object RLLabel21: TRLLabel
          Left = 518
          Top = 0
          Width = 81
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object RLLabel22: TRLLabel
          Left = 592
          Top = 0
          Width = 126
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object RLLabel25: TRLLabel
          Left = 58
          Top = -1
          Width = 90
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'A Transportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object linv2: TRLLabel
          Left = 598
          Top = -1
          Width = 120
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 443
          Top = 0
          Width = 76
          Height = 21
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        AutoExpand = False
        Color = clWhite
        ParentColor = False
        Transparent = False
        AfterPrint = RLBand9AfterPrint
        object RLDBMemo2: TRLDBMemo
          Left = 0
          Top = 0
          Width = 60
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'Codigo'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBMemo3: TRLDBMemo
          Left = 60
          Top = 0
          Width = 323
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'Descricao'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBMemo4: TRLDBMemo
          Left = 383
          Top = 0
          Width = 60
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'Unidade'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 518
          Top = 0
          Width = 81
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'Unitario'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 598
          Top = 0
          Width = 120
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'Total'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 443
          Top = 0
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'Quantidade'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 273
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLMemo8: TRLMemo
        Left = 518
        Top = 206
        Width = 200
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'VALORES')
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 0
        Top = 0
        Width = 718
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'ANEXO 56'
          'REGISTRO DE INVENT'#193'RIO')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 0
        Top = 32
        Width = 718
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'RI - Modelo P7'
          '(Processamento de Dados)')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 0
        Top = 66
        Width = 718
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Lines.Strings = (
          'a que se refere o art. 701')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 0
        Top = 80
        Width = 718
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'LIVRO REGISTRO DE INVENT'#193'RIO - RI - MODELO P7')
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 104
        Width = 718
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'REGISTRO DE INVENT'#193'RIO'
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 205
        Width = 718
        Height = 4
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLLabel9: TRLLabel
        Left = 371
        Top = 158
        Width = 347
        Height = 48
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLMemo5: TRLMemo
        Left = 0
        Top = 206
        Width = 60
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'C'#243'digo')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 60
        Top = 206
        Width = 324
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'DISCRIMINA'#199#195'O')
        ParentFont = False
      end
      object RLMemo7: TRLMemo
        Left = 383
        Top = 206
        Width = 60
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'UNIDADE')
        ParentFont = False
      end
      object linv1hhhhh: TRLLabel
        Left = 598
        Top = 222
        Width = 120
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 518
        Top = 222
        Width = 81
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 239
        Width = 60
        Height = 34
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLLabel14: TRLLabel
        Left = 60
        Top = 239
        Width = 323
        Height = 34
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLLabel15: TRLLabel
        Left = 383
        Top = 239
        Width = 60
        Height = 34
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLLabel16: TRLLabel
        Left = 518
        Top = 239
        Width = 81
        Height = 34
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLLabel17: TRLLabel
        Left = 598
        Top = 239
        Width = 120
        Height = 34
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object RLLabel23: TRLLabel
        Left = 58
        Top = 255
        Width = 93
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'De Transporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object linv1: TRLLabel
        Left = 598
        Top = 255
        Width = 120
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 158
        Width = 249
        Height = 48
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPagePreview
        ParentColor = False
        ParentFont = False
        Text = 'FOLHA: # de #'
      end
      object RLMemo9: TRLMemo
        Left = 443
        Top = 206
        Width = 76
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'QUANTIDADE')
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 443
        Top = 239
        Width = 76
        Height = 34
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = ' '
      end
      object linvt1: TRLLabel
        Left = 0
        Top = 126
        Width = 35
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
      object linvt2: TRLLabel
        Left = 0
        Top = 142
        Width = 35
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
      object linvt5: TRLLabel
        Left = 371
        Top = 142
        Width = 347
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
      end
      object linvt4: TRLLabel
        Left = 371
        Top = 126
        Width = 347
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
      end
    end
  end
  object correcao: TRLReport
    Left = -581
    Top = -2000
    Width = 816
    Height = 1056
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpLetter
    Transparent = False
    object RLBand15: TRLBand
      Left = 38
      Top = 20
      Width = 740
      Height = 1
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
    object RLDetailGrid3: TRLDetailGrid
      Left = 38
      Top = 19
      Width = 740
      Height = 1
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
    object RLBand51: TRLBand
      Left = 38
      Top = 21
      Width = 740
      Height = 846
      AutoSize = True
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Style = bsDiagCross
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLMemo10: TRLMemo
        Left = 0
        Top = 0
        Width = 740
        Height = 846
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          
            '                                                                ' +
            '                                          '
          ''
          'A '
          ''
          'Prezados Senhor(es)'
          ''
          
            '               REF: CONFER'#202'NCIA DE DOCUMENTO FISCAL E COMUNICA'#199#195 +
            'O DE INCORRE'#199#213'ES'
          
            '               S/ NOTA FISCAL N'#176' ________________S'#201'RIE__________' +
            'DE______________'
          
            '               N/ NOTA FISCAL N'#176' ________________S'#201'RIE__________' +
            'DE______________'
          '             '
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          
            'Para evitar-se qualquer sans'#227'o fiscal, solicitamos acusarem o re' +
            'cebimento desta, na c'#243'pia que a acompanha, devendo esta via de V' +
            '.S.as. Ficar arquivada juntamente com a NOTA FISCAL em quest'#227'o.'
          'Sem outro motivo para o momento subscrevemo-nos'
          ''
          
            '                                                                ' +
            '                                                     Atenciosame' +
            'nte'
          'Acusamos recebimento da 1'#170' via'
          ''
          
            '_____________________________                                   ' +
            '           __________________________'
          '(Local e data) '
          ''
          ''
          
            '                                                                ' +
            '                                        ________________________' +
            '_____'
          
            '                                                                ' +
            '                                                       (Carimbo ' +
            'e assinatura)')
        ParentFont = False
      end
      object RLMemo11: TRLMemo
        Left = 251
        Top = 232
        Width = 42
        Height = 182
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24')
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 208
        Width = 51
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 51
        Top = 208
        Width = 189
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Especifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 240
        Top = 208
        Width = 51
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 531
        Top = 208
        Width = 189
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'Especifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 480
        Top = 208
        Width = 51
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 291
        Top = 208
        Width = 189
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'Especifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo12: TRLMemo
        Left = 11
        Top = 232
        Width = 40
        Height = 182
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
        ParentFont = False
      end
      object RLMemo13: TRLMemo
        Left = 51
        Top = 232
        Width = 191
        Height = 182
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Raz'#227'o Social'
          'Endere'#231'o'
          'Munic'#237'pio'
          'Estado'
          'N'#176' Inscr. no CNPJ'
          'N'#176' Inscr. Estadual'
          'Natureza Opera'#231#227'o'
          'C'#243'd. Fiscal Opera'#231#227'o'
          'Via Transporte'
          'Data Emiss'#227'o'
          'Data Sa'#237'da'
          'Unidade (produto)')
        ParentFont = False
      end
      object RLMemo14: TRLMemo
        Left = 531
        Top = 232
        Width = 189
        Height = 182
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Nome Transportador '
          'Endere'#231'o Transportador'
          'Termo Isen'#231#227'o IPI'
          'Termo Isen'#231#227'o ICMS'
          'Peso-Bruto / L'#237'quido'
          'Vol./Marca/Num/Quant.'
          'Rasuras'
          'Valor Duplicata'
          'Condi'#231#227'o Pagamento '
          'Vencimento'
          'Desconto'
          'Outras ')
        ParentFont = False
      end
      object RLMemo15: TRLMemo
        Left = 291
        Top = 232
        Width = 191
        Height = 182
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Quantidade (produto)'
          'Descri'#231#227'o Produtos'
          'Valor Unit'#225'rio'
          'Valor Total'
          'Valor Total Produtos'
          'Al'#237'quota IPI'
          'Valor IPI'
          'Base C'#225'lculo IPI'
          'Valor Total Nota'
          'Al'#237'quota ICMS'
          'Valor ICMS'
          'Base C'#225'lculo ICMS')
        ParentFont = False
      end
      object rl1: TRLMemo
        Left = 0
        Top = 232
        Width = 13
        Height = 182
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ' '
          ' '
          ' '
          ' '
          ' '
          ' '
          ' '
          ' '
          ' '
          ' '
          ' '
          ' ')
        ParentFont = False
      end
      object rl2: TRLMemo
        Left = 240
        Top = 232
        Width = 13
        Height = 182
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl3: TRLMemo
        Left = 480
        Top = 232
        Width = 13
        Height = 182
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo16: TRLMemo
        Left = 491
        Top = 232
        Width = 40
        Height = 182
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '999 ')
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 448
        Width = 106
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'C'#243'digos com '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 105
        Top = 448
        Width = 616
        Height = 35
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'RETIFICA'#199#213'ES A SEREM CONSIDERADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 465
        Width = 106
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Irregularidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo17: TRLMemo
        Left = 105
        Top = 483
        Width = 60
        Height = 77
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Correto:'
          'Correto:'
          'Correto:'
          'Correto:'
          'Correto:')
        ParentFont = False
      end
      object rl4: TRLMemo
        Left = 0
        Top = 483
        Width = 105
        Height = 77
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl5: TRLMemo
        Left = 165
        Top = 483
        Width = 556
        Height = 77
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ec1_: TRLLabel
        Left = 211
        Top = 127
        Width = 32
        Height = 16
      end
      object ec2_: TRLLabel
        Left = 408
        Top = 127
        Width = 32
        Height = 16
      end
      object ec3_: TRLLabel
        Left = 521
        Top = 127
        Width = 32
        Height = 16
      end
      object ec4_: TRLLabel
        Left = 211
        Top = 145
        Width = 32
        Height = 16
      end
      object ec5_: TRLLabel
        Left = 408
        Top = 145
        Width = 32
        Height = 16
      end
      object ec6_: TRLLabel
        Left = 521
        Top = 145
        Width = 32
        Height = 16
      end
      object ecdt: TRLLabel
        Left = 1
        Top = 738
        Width = 18
        Height = 16
        Caption = 'L8'
      end
      object RLLabel35: TRLLabel
        Left = 3
        Top = 1
        Width = 183
        Height = 16
        Caption = 'Carimbo Padronizado do CNPJ'
      end
      object lcempresa: TRLLabel
        Left = 20
        Top = 37
        Width = 59
        Height = 16
        Caption = 'empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object qentrada: TRLReport
    Left = -18
    Top = -2000
    Width = 794
    Height = 1123
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 297.000000000000000000
    Transparent = False
    BeforePrint = qentradaBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 272
      Width = 718
      Height = 1
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
    object RLDetailGrid2: TRLDetailGrid
      Left = 38
      Top = 271
      Width = 718
      Height = 1
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 199
      Color = clWhite
      ParentColor = False
      Transparent = False
      object los1: TRLLabel
        Left = 0
        Top = 87
        Width = 718
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Entrada'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 0
        Top = 183
        Width = 718
        Height = 16
        Align = faBottom
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'obs'
        DataSource = ds
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Obs: '
      end
      object fltitulo1: TRLLabel
        Left = 0
        Top = 111
        Width = 718
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'endereco1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 64
        Top = 129
        Width = 28
        Height = 16
        DataField = 'cnpj'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 250
        Top = 129
        Width = 14
        Height = 16
        DataField = 'ie'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 425
        Top = 129
        Width = 289
        Height = 15
        AutoSize = False
        DataField = 'endereco'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 43
        Top = 143
        Width = 127
        Height = 15
        AutoSize = False
        DataField = 'bairro'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 221
        Top = 143
        Width = 137
        Height = 15
        AutoSize = False
        DataField = 'municipio'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 395
        Top = 143
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 499
        Top = 143
        Width = 14
        Height = 16
        DataField = 'uf'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel118: TRLLabel
        Left = 480
        Top = 143
        Width = 20
        Height = 15
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel119: TRLLabel
        Left = 368
        Top = 143
        Width = 28
        Height = 15
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel120: TRLLabel
        Left = 176
        Top = 143
        Width = 45
        Height = 15
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel121: TRLLabel
        Left = 1
        Top = 143
        Width = 41
        Height = 15
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel122: TRLLabel
        Left = 1
        Top = 129
        Width = 62
        Height = 15
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel123: TRLLabel
        Left = 209
        Top = 129
        Width = 38
        Height = 15
        Caption = 'IE/RG: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel124: TRLLabel
        Left = 361
        Top = 129
        Width = 60
        Height = 15
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel125: TRLLabel
        Left = 544
        Top = 143
        Width = 33
        Height = 15
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText46: TRLDBText
        Left = 580
        Top = 143
        Width = 28
        Height = 16
        DataField = 'fone'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object flendereco2: TRLLabel
        Left = 1
        Top = 159
        Width = 712
        Height = 17
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 81
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object im1: TImage
          Left = 4
          Top = 1
          Width = 158
          Height = 74
          Stretch = True
          Transparent = True
        end
        object ltitulo1: TRLLabel
          Left = 175
          Top = 2
          Width = 543
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'tit'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object er1: TRLLabel
          Left = 175
          Top = 23
          Width = 543
          Height = 11
          AutoSize = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object er2: TRLLabel
          Left = 175
          Top = 36
          Width = 543
          Height = 11
          AutoSize = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object er3: TRLLabel
          Left = 175
          Top = 50
          Width = 543
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 273
      Width = 718
      Height = 296
      Color = clWhite
      DataSource = ds1
      Margins.LeftMargin = 1.000000000000000000
      ParentColor = False
      Transparent = False
      object RLBand11: TRLBand
        Left = 4
        Top = 0
        Width = 714
        Height = 7
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
      object RLBand12: TRLBand
        Left = 4
        Top = 7
        Width = 714
        Height = 17
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBText39: TRLDBText
          Left = 492
          Top = -2
          Width = 34
          Height = 16
          Alignment = taRightJustify
          DataField = 'vrunit'
          DataSource = ds1
          DisplayMask = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ltcod1: TRLDBText
          Left = 0
          Top = -2
          Width = 55
          Height = 16
          AutoSize = False
          DataField = 'codigo'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 529
          Top = -2
          Width = 43
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'frete'
          DataSource = ds1
          DisplayMask = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 56
          Top = -2
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'codigofornecedor'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 665
          Top = -2
          Width = 46
          Height = 16
          Alignment = taRightJustify
          DataField = 'vrvenda'
          DataSource = ds1
          DisplayMask = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo18: TRLMemo
          Left = 127
          Top = -1
          Width = 299
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLMemo18BeforePrint
        end
        object RLDBText38: TRLDBText
          Left = 429
          Top = -2
          Width = 22
          Height = 16
          Alignment = taRightJustify
          DataField = 'qtd'
          DataSource = ds1
          DisplayMask = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText40: TRLDBText
          Left = 618
          Top = -2
          Width = 29
          Height = 16
          Alignment = taRightJustify
          DataField = 'total'
          DataSource = ds1
          DisplayMask = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand13: TRLBand
        Left = 4
        Top = 24
        Width = 714
        Height = 47
        AutoSize = True
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 0
          Top = 28
          Width = 54
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'totalitem'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 0
          Top = 10
          Width = 54
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtd'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 54
          Top = 10
          Width = 70
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Base ICMS'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 54
          Top = 28
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'basecalculo'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 124
          Top = 10
          Width = 70
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'ICMS'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 124
          Top = 28
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'valoricms'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 194
          Top = 10
          Width = 70
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'IPI'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 194
          Top = 28
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'valoripi'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 264
          Top = 10
          Width = 70
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Frete'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 264
          Top = 28
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'frete'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 333
          Top = 28
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'ValorIcmsS'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 333
          Top = 10
          Width = 70
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Substitui'#231#227'o'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 403
          Top = 28
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'totalparcial'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 403
          Top = 10
          Width = 80
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Vr Produtos'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 483
          Top = 28
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'descontoReal'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 483
          Top = 10
          Width = 70
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Desconto'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 552
          Top = 28
          Width = 82
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'total'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 552
          Top = 10
          Width = 82
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Total'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 635
          Top = 10
          Width = 78
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'TotalVd'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object ltotvd: TRLLabel
          Left = 636
          Top = 28
          Width = 78
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'TotalVd'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object lpgto: TRLLabel
        Left = 4
        Top = 72
        Width = 714
        Height = 19
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Prazo de Entrega: 20 dias       Cond Pgto: 30, 40 e 90 dias'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object mpgto: TRLMemo
        Left = 4
        Top = 281
        Width = 714
        Height = 15
        Align = faBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 237
      Width = 718
      Height = 34
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel38: TRLLabel
        Left = 4
        Top = 18
        Width = 184
        Height = 14
        Caption = 'Codigo I / Cod. For         Descri'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel59: TRLLabel
        Left = 433
        Top = 18
        Width = 22
        Height = 14
        Alignment = taRightJustify
        Caption = 'Qtd'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel60: TRLLabel
        Left = 493
        Top = 18
        Width = 37
        Height = 14
        Alignment = taRightJustify
        Caption = 'VrUnit'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel61: TRLLabel
        Left = 622
        Top = 18
        Width = 30
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 537
        Top = 18
        Width = 49
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Frete/un'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 665
        Top = 18
        Width = 51
        Height = 14
        Alignment = taRightJustify
        Caption = 'VrVenda'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object btnsair: TBitBtn
    Left = 614
    Top = 408
    Width = 72
    Height = 25
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnsairClick
  end
  object ActionList1: TActionList
    Left = 368
    Top = 168
    object preenche: TAction
      Caption = 'preenche'
      OnExecute = preencheExecute
    end
    object nbanco: TAction
      Caption = 'nbanco'
      OnExecute = nbancoExecute
    end
    object preenchecheque: TAction
      Caption = 'preenchecheque'
      OnExecute = preenchechequeExecute
    end
    object curvaproduto: TAction
      Caption = 'curvaproduto'
      OnExecute = curvaprodutoExecute
    end
    object preencheproduto: TAction
      Caption = 'preencheproduto'
      OnExecute = preencheprodutoExecute
    end
    object totalizar: TAction
      Caption = 'totalizar'
      OnExecute = totalizarExecute
    end
    object atualizaprod_: TAction
      Caption = 'atualizaprod_'
      OnExecute = atualizaprod_Execute
    end
    object curva_: TAction
      Caption = 'curva_'
      OnExecute = curva_Execute
    end
    object recpg_: TAction
      Caption = 'recpg_'
      OnExecute = recpg_Execute
    end
    object conta_: TAction
      Caption = 'conta_'
      OnExecute = conta_Execute
    end
    object frecpg_: TAction
      Caption = 'frecpg_'
      OnExecute = frecpg_Execute
    end
    object tabprecoproduto_: TAction
      Caption = 'tabprecoproduto_'
      OnExecute = tabprecoproduto_Execute
    end
    object inventario_: TAction
      Caption = 'inventario_'
      OnExecute = inventario_Execute
    end
    object cep_: TAction
      Caption = 'cep_'
      OnExecute = cep_Execute
    end
    object municipio_: TAction
      Caption = 'municipio_'
      OnExecute = municipio_Execute
    end
    object obsos_: TAction
      Caption = 'obsos_'
      OnExecute = obsos_Execute
    end
    object entrada_: TAction
      Caption = 'entrada_'
      OnExecute = entrada_Execute
    end
    object td_: TAction
      Caption = 'td_'
      OnExecute = td_Execute
    end
    object transfprod_: TAction
      Caption = 'transfprod_'
      OnExecute = transfprod_Execute
    end
    object cedente_: TAction
      Caption = 'cedente_'
      OnExecute = cedente_Execute
    end
    object registro_: TAction
      Caption = 'registro_'
      OnExecute = registro_Execute
    end
    object altusu_: TAction
      Caption = 'altusu_'
      OnExecute = altusu_Execute
    end
    object permissoes_: TAction
      Caption = 'permissoes_'
      OnExecute = permissoes_Execute
    end
    object tabip_: TAction
      Caption = 'tabip_'
      OnExecute = tabip_Execute
    end
    object comifun_: TAction
      Caption = 'comifun_'
      OnExecute = comifun_Execute
    end
    object iso_: TAction
      Caption = 'iso_'
      OnExecute = iso_Execute
    end
    object f11: TAction
      Caption = 'f11'
      ShortCut = 122
      OnExecute = f11Execute
    end
    object mcabrasivos: TAction
      Caption = 'mcabrasivos'
      OnExecute = mcabrasivosExecute
    end
    object nimport_: TAction
      Caption = 'nimport_'
      OnExecute = nimport_Execute
    end
    object tabplanalmed_: TAction
      Caption = 'tabplanalmed_'
      OnExecute = tabplanalmed_Execute
    end
    object clinf_: TAction
      Caption = 'clinf_'
      OnExecute = clinf_Execute
    end
    object tabcorrecal_: TAction
      Caption = 'tabcorrecal_'
      OnExecute = tabcorrecal_Execute
    end
    object atuafiliais_: TAction
      Caption = 'atuafiliais_'
      OnExecute = atuafiliais_Execute
    end
    object devconf_: TAction
      Caption = 'devconf_'
      OnExecute = devconf_Execute
    end
    object somatd: TAction
      Caption = 'somatd'
      OnExecute = somatdExecute
    end
    object consigsel: TAction
      Caption = 'consigsel'
      OnExecute = consigselExecute
    end
    object consignada_: TAction
      Caption = 'consignada_'
      OnExecute = consignada_Execute
    end
    object impentrada_: TAction
      Caption = 'impentrada_'
      OnExecute = impentrada_Execute
    end
    object combo_: TAction
      Caption = 'combo_'
      OnExecute = combo_Execute
    end
    object consultaprod_: TAction
      Caption = 'consultaprod_'
      OnExecute = consultaprod_Execute
    end
  end
  object ds: TDataSource
    DataSet = fcadg.tabela
    Left = 120
    Top = 528
  end
  object tabela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'vencimento'
    Params = <>
    Left = 538
    Top = 266
    object tabelacontador: TIntegerField
      FieldName = 'contador'
    end
    object tabelanumero: TStringField
      FieldName = 'numero'
    end
    object tabelavencimento: TDateField
      FieldName = 'vencimento'
      EditMask = '99/99/9999'
    end
    object tabelavalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
    end
    object tabelabanco: TStringField
      FieldName = 'banco'
    end
    object tabelaagencia: TStringField
      FieldName = 'agencia'
      Size = 15
    end
    object tabelaconta: TStringField
      FieldName = 'conta'
      Size = 15
    end
    object tabelandocumento: TStringField
      FieldName = 'ndocumento'
    end
    object tabelaletra: TStringField
      FieldName = 'letra'
      Size = 4
    end
    object tabeladocumento: TStringField
      FieldName = 'documento'
      Size = 60
    end
    object tabeladata: TDateField
      FieldName = 'data'
    end
    object tabeladia: TStringField
      FieldName = 'dia'
      Size = 10
    end
  end
  object t2: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select tbm.uf, tbm.uf as estado, sum(tbs.totnf) as vrcontabil,  ' +
        'sum(tbs.baseicm) as basecalc,  sum(tbs.VrIcms) as icms,  sum(tbs' +
        '.baseicmisento) as isento,  sum(tbs.baseoutros) as outros,'
      
        ' sum(tbs.totnf-tbs.totnf)as debito,   sum(tbs.totnf-tbs.totnf)as' +
        ' estorno '
      
        'from tbentrada tbm, tbentradaitem   tbs where (tbm.data between ' +
        #39'2008/09/01'#39' and '#39'2008/09/13'#39') and tbm.modo = "F"  and tbs.link=' +
        'tbm.chave group by tbm.uf order by tbm.uf')
    Params = <>
    Left = 680
    Top = 272
  end
  object t1: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbpedido')
    Params = <>
    Left = 480
    Top = 264
  end
  object d1: TDataSource
    DataSet = t1
    Left = 8
    Top = 528
  end
  object d2: TDataSource
    DataSet = t2
    Left = 48
    Top = 528
  end
  object dsproduto: TDataSource
    DataSet = produto
    Left = 160
    Top = 552
  end
  object produto: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provedor'
    StoreDefs = True
    Left = 204
    Top = 552
    object produtocodigo: TStringField
      FieldName = 'codigo'
    end
    object produtofracao: TFloatField
      FieldName = 'fracao'
      DisplayFormat = '###,##0.00'
    end
    object produtovrcompra: TFloatField
      FieldName = 'vrcompra'
      DisplayFormat = '###,##0.000'
    end
    object produtovrunit: TFloatField
      FieldName = 'vrunit'
      DisplayFormat = '###,##0.000'
    end
    object produtovrvenda: TFloatField
      FieldName = 'vrvenda'
      DisplayFormat = '###,##0.000'
    end
    object produtovratacado: TFloatField
      FieldName = 'vratacado'
      DisplayFormat = '###,##0.000'
    end
    object produtopercent: TFloatField
      FieldName = 'percent'
      DisplayFormat = '###,##0.000'
    end
    object produtochave: TIntegerField
      FieldName = 'chave'
    end
    object produtopercentatacado: TFloatField
      FieldName = 'percentatacado'
      DisplayFormat = '###,##0.000'
    end
    object produtopercent3: TFloatField
      FieldName = 'percent3'
      DisplayFormat = '###,##0.000'
    end
    object produtovalor3: TFloatField
      FieldName = 'valor3'
      DisplayFormat = '###,##0.000'
    end
    object produtoestoque: TFloatField
      FieldName = 'estoque'
    end
    object produtodespesaacessoria: TFloatField
      FieldName = 'despesaacessoria'
      DisplayFormat = '###,##0.000'
    end
    object produtodesctotal: TFloatField
      FieldName = 'desctotal'
      DisplayFormat = '###,##0.000'
    end
    object produtoipi: TFloatField
      FieldName = 'ipi'
      DisplayFormat = '###,##0.000'
    end
    object produtoativoV: TStringField
      FieldName = 'ativoV'
      Size = 1
    end
    object produtoativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
    object produtoimposto: TFloatField
      FieldName = 'imposto'
    end
    object produtofabricante: TStringField
      FieldName = 'fabricante'
      Size = 60
    end
  end
  object peitem: TDataSetProvider
    DataSet = fentrada.tbentradaitem
    Left = 504
    Top = 320
  end
  object tbentradaitem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'peitem'
    Left = 584
    Top = 288
  end
  object tb1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p1'
    Left = 432
    Top = 280
  end
  object p1: TDataSetProvider
    Left = 648
    Top = 264
  end
  object ds1: TDataSource
    DataSet = tb1
    Left = 88
    Top = 528
  end
  object tbtd: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 608
    Top = 268
    object tbtdchave: TIntegerField
      FieldName = 'chave'
    end
    object tbtdcodigo: TStringField
      FieldName = 'codigo'
      Size = 13
    end
    object tbtddescricao: TStringField
      FieldName = 'descricao'
      Size = 90
    end
    object tbtdqtd: TFloatField
      FieldName = 'qtd'
    end
    object tbtdvrunit: TFloatField
      FieldName = 'vrunit'
      DisplayFormat = '###,##0.00'
    end
    object tbtddevolvido: TFloatField
      FieldName = 'devolvido'
    end
    object tbtddevolver: TFloatField
      FieldName = 'devolver'
    end
    object tbtdcor: TStringField
      FieldName = 'cor'
      Size = 15
    end
    object tbtdtamanho: TStringField
      FieldName = 'tamanho'
      Size = 15
    end
    object tbtddefeito: TStringField
      FieldName = 'defeito'
      Size = 1
    end
  end
end
