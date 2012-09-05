object fperiodo2: Tfperiodo2
  Left = 215
  Top = 204
  BorderStyle = bsDialog
  Caption = 'SIGAC'
  ClientHeight = 293
  ClientWidth = 615
  Color = 15329769
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
    Width = 615
    Height = 293
    ActivePage = vitalcred1
    Align = alClient
    TabOrder = 0
    object Tababrecaixa: TTabSheet
      Caption = 'Tababrecaixa'
      object Label2: TLabel
        Left = 107
        Top = 42
        Width = 48
        Height = 16
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 7
        Top = 4
        Width = 29
        Height = 16
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 158
        Top = 4
        Width = 55
        Height = 16
        Caption = 'N'#186' Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 87
        Top = 4
        Width = 30
        Height = 16
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 2
        Top = 42
        Width = 76
        Height = 16
        Caption = 'Valor Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object MaskEdit1: TMaskEdit
        Left = 1
        Top = 19
        Width = 79
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '  /  /    '
      end
      object MaskEdit3: TMaskEdit
        Left = 82
        Top = 19
        Width = 75
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '00:00:00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Text = '  :  :  '
      end
      object BitBtn1: TBitBtn
        Left = 83
        Top = 81
        Width = 75
        Height = 22
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object Edit2: TEdit
        Left = 107
        Top = 56
        Width = 124
        Height = 17
        HelpType = htKeyword
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = 'EUSUARIO'
      end
      object encaixa: TEdit
        Left = 158
        Top = 19
        Width = 74
        Height = 17
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
      end
      object evrinicial: TEdit
        Left = 1
        Top = 56
        Width = 102
        Height = 17
        HelpType = htKeyword
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        Text = '0'
      end
    end
    object tabbanco: TTabSheet
      Caption = 'tabbanco'
      ImageIndex = 1
      object Label4: TLabel
        Left = 106
        Top = 0
        Width = 34
        Height = 13
        Caption = 'Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 5
        Top = 34
        Width = 28
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 3
        Top = 71
        Width = 51
        Height = 13
        Caption = 'Hist'#243'rico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 3
        Top = 0
        Width = 99
        Height = 13
        Caption = 'Tipo Lan'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 146
        Top = 34
        Width = 24
        Height = 13
        Caption = 'Doc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 68
        Top = 34
        Width = 74
        Height = 13
        Caption = 'Deb./Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 194
        Top = 34
        Width = 30
        Height = 13
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 4
        Top = 109
        Width = 96
        Height = 22
        Caption = 'Cadastrar banco'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object Label7: TLabel
        Left = 256
        Top = 34
        Width = 80
        Height = 13
        Caption = 'Compensa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 221
        Top = 0
        Width = 84
        Height = 13
        Caption = 'Transferir para'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object bc2: TDBEdit
        Left = 3
        Top = 47
        Width = 64
        Height = 17
        HelpType = htKeyword
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'data'
        DataSource = dsbanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object bc7: TDBEdit
        Left = 3
        Top = 85
        Width = 334
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'historico'
        DataSource = dsbanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object bc3: TDBComboBox
        Left = 3
        Top = 13
        Width = 101
        Height = 17
        Cursor = crHandPoint
        HelpType = htKeyword
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'tipo'
        DataSource = dsbanco
        ItemHeight = 11
        Items.Strings = (
          'DINHEIRO'
          'CHEQUE'
          'CART'#195'O'
          'DOC'
          'TRANSFER'#202'NCIA')
        TabOrder = 0
        OnChange = bc3Change
      end
      object bc5: TDBEdit
        Left = 145
        Top = 47
        Width = 45
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'documento'
        DataSource = dsbanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object bc6: TDBEdit
        Left = 191
        Top = 47
        Width = 63
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'valor'
        DataSource = dsbanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object bc4: TDBComboBox
        Left = 68
        Top = 47
        Width = 76
        Height = 17
        Cursor = crHandPoint
        HelpType = htKeyword
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'dc'
        DataSource = dsbanco
        ItemHeight = 11
        Items.Strings = (
          'D'#201'BITO'
          'CR'#201'DITO')
        TabOrder = 4
      end
      object bc1: TDBComboBox
        Left = 106
        Top = 13
        Width = 114
        Height = 17
        Cursor = crHandPoint
        HelpType = htKeyword
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'conta'
        DataSource = dsbanco
        ItemHeight = 11
        TabOrder = 1
      end
      object Button1: TButton
        Left = 175
        Top = 109
        Width = 72
        Height = 22
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = Button1Click
      end
      object DBEdit1: TDBEdit
        Left = 255
        Top = 47
        Width = 82
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dtcompensacao'
        DataSource = dsbanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object bc01: TComboBox
        Left = 221
        Top = 13
        Width = 114
        Height = 17
        Cursor = crHandPoint
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Style = csOwnerDrawVariable
        CharCase = ecUpperCase
        ItemHeight = 11
        TabOrder = 2
        Visible = False
      end
    end
    object tabbancoc: TTabSheet
      Caption = 'tabbancoc'
      ImageIndex = 2
      object Label19: TLabel
        Left = 0
        Top = 0
        Width = 607
        Height = 14
        Align = alTop
        Alignment = taCenter
        Caption = 'ESCOLHA A CONTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 254
        Top = 53
        Width = 141
        Height = 14
        Caption = 'Per'#237'odo de:                        a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button2: TButton
        Left = 320
        Top = 85
        Width = 63
        Height = 22
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Button2Click
      end
      object cconta: TDBLookupComboBox
        Left = 0
        Top = 17
        Width = 465
        Height = 24
        BevelOuter = bvRaised
        BevelKind = bkFlat
        DropDownWidth = 600
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        KeyField = 'conta'
        ListField = 'conta;agencia;nome;titular'
        ParentFont = False
        TabOrder = 0
      end
      object d1: TMaskEdit
        Left = 320
        Top = 53
        Width = 63
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
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
      object d2: TMaskEdit
        Left = 402
        Top = 53
        Width = 63
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
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
      object BitBtn4: TBitBtn
        Left = 402
        Top = 85
        Width = 63
        Height = 22
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btnsairClick
      end
      object r1: TRadioGroup
        Left = 0
        Top = 48
        Width = 129
        Height = 61
        Caption = 'Exibir Movimenta'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Items.Strings = (
          'Hoje'
          #218'lt. 5 dias'
          #218'lt. M'#234's'
          'Informar')
        ParentFont = False
        TabOrder = 1
        OnClick = r1Click
      end
      object rvisualiza: TCheckBox
        Left = 223
        Top = 110
        Width = 160
        Height = 12
        Alignment = taLeftJustify
        Caption = 'Ver campos antes de imprimir'
        TabOrder = 6
      end
    end
    object taborcqtd: TTabSheet
      Caption = 'taborcqtd'
      ImageIndex = 3
      object DBText1: TDBText
        Left = 0
        Top = 0
        Width = 591
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 180
        Top = 17
        Width = 215
        Height = 14
        Alignment = taRightJustify
        Caption = 'Digite a quantidade que vai gerar venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button3: TButton
        Left = 336
        Top = 45
        Width = 63
        Height = 22
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object eqtd: TDBEdit
        Left = 401
        Top = 17
        Width = 64
        Height = 16
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'gerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 402
        Top = 45
        Width = 64
        Height = 22
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnsairClick
      end
    end
    object tabponto: TTabSheet
      Caption = 'tabponto'
      ImageIndex = 4
      object Label15: TLabel
        Left = 0
        Top = 34
        Width = 607
        Height = 17
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nome do Funcion'#225'rio'
        Color = 13434879
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object enome: TComboBox
        Left = 1
        Top = 48
        Width = 300
        Height = 20
        BevelInner = bvLowered
        BevelKind = bkSoft
        BevelOuter = bvRaised
        Style = csOwnerDrawVariable
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 14
        ParentFont = False
        TabOrder = 1
      end
      object etipo: TRadioGroup
        Left = 0
        Top = 0
        Width = 607
        Height = 34
        Align = alTop
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Hora Normal'
          'Hora Extra')
        ParentFont = False
        TabOrder = 0
      end
      object Button4: TButton
        Left = 142
        Top = 77
        Width = 82
        Height = 22
        Caption = '&Confirmar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object tabempresa: TTabSheet
      Caption = 'tabempresa'
      ImageIndex = 5
      object Label16: TLabel
        Left = 87
        Top = 40
        Width = 32
        Height = 14
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 100
        Top = 102
        Width = 52
        Height = 14
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 25
        Top = 149
        Width = 33
        Height = 14
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 151
        Top = 149
        Width = 38
        Height = 14
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 24
        Top = 165
        Width = 13
        Height = 14
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 86
        Top = 165
        Width = 28
        Height = 14
        Caption = 'CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 25
        Top = 183
        Width = 15
        Height = 14
        Caption = 'I.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 201
        Top = 183
        Width = 35
        Height = 13
        Caption = 'Fones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 125
        Top = 199
        Width = 29
        Height = 14
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 25
        Top = 199
        Width = 18
        Height = 14
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 25
        Top = 216
        Width = 21
        Height = 14
        Caption = 'Site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 141
        Top = 183
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
      object Label31: TLabel
        Left = 25
        Top = 102
        Width = 22
        Height = 14
        Caption = 'Cep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 25
        Top = 133
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
      object Label33: TLabel
        Left = 129
        Top = 134
        Width = 39
        Height = 14
        Caption = 'Compl.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 266
        Top = 134
        Width = 43
        Height = 14
        Caption = 'Contato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 88
        Top = 69
        Width = 45
        Height = 14
        Caption = 'Fantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 293
        Top = 165
        Width = 19
        Height = 14
        Caption = 'I.M.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 260
        Top = 69
        Width = 76
        Height = 14
        Caption = 'Tipo Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 304
        Top = 149
        Width = 23
        Height = 15
        Caption = 'IBGE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object btetqE: TSpeedButton
        Left = 339
        Top = 285
        Width = 54
        Height = 22
        Caption = 'Etiqueta'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btetqEClick
      end
      object btnnovoE: TSpeedButton
        Left = 14
        Top = 280
        Width = 43
        Height = 41
        Caption = 'Novo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnnovoEClick
      end
      object btngravarE: TSpeedButton
        Left = 145
        Top = 280
        Width = 43
        Height = 41
        Caption = 'Gravar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btngravarEClick
      end
      object btnapagarE: TSpeedButton
        Left = 188
        Top = 280
        Width = 43
        Height = 41
        Caption = 'Apagar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnapagarEClick
      end
      object btvE: TSpeedButton
        Left = 247
        Top = 280
        Width = 17
        Height = 41
        Caption = '<'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btvEClick
      end
      object btiE: TSpeedButton
        Left = 264
        Top = 280
        Width = 17
        Height = 41
        Caption = '>'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btiEClick
      end
      object btnalterarE: TSpeedButton
        Left = 57
        Top = 280
        Width = 40
        Height = 41
        Caption = 'Alterar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnalterarEClick
      end
      object btncancelarE: TSpeedButton
        Left = 97
        Top = 280
        Width = 49
        Height = 41
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btncancelarEClick
      end
      object Label49: TLabel
        Left = 351
        Top = 69
        Width = 24
        Height = 14
        Caption = 'Emp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 25
        Top = 257
        Width = 54
        Height = 14
        Caption = 'Dir da NFe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object btnfeE: TSpeedButton
        Left = 341
        Top = 257
        Width = 50
        Height = 15
        Caption = 'Buscar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnfeEClick
      end
      object Label29: TLabel
        Left = 24
        Top = 232
        Width = 53
        Height = 13
        Caption = 'Lembrete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Panel1: TPanel
        Left = 19
        Top = 39
        Width = 63
        Height = 59
        Caption = 'Logotipo'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        object vimage: TImage
          Left = 1
          Top = 1
          Width = 61
          Height = 57
          Cursor = crHandPoint
          Hint = 'logotipo'
          Align = alClient
          DragCursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          OnClick = vimageClick
        end
      end
      object enempresa: TDBEdit
        Left = 87
        Top = 53
        Width = 302
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Nome'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object eendereco: TDBEdit
        Left = 99
        Top = 114
        Width = 289
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Endereco'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object ebairro: TDBEdit
        Left = 62
        Top = 149
        Width = 82
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Bairro'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object emunicipio: TDBEdit
        Left = 192
        Top = 149
        Width = 109
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'municipio'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object euf: TDBComboBox
        Left = 43
        Top = 165
        Width = 41
        Height = 17
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = fdm.dsempresa
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
        TabOrder = 11
      end
      object ecnpj: TDBEdit
        Left = 121
        Top = 165
        Width = 131
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cnpj'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnExit = ecnpjExit
        OnKeyPress = ecnpjKeyPress
      end
      object eie: TDBEdit
        Left = 43
        Top = 181
        Width = 96
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ie'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object efone1: TDBEdit
        Left = 238
        Top = 181
        Width = 73
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fone1'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object efone2: TDBEdit
        Left = 314
        Top = 181
        Width = 74
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fone2'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object eemail: TDBEdit
        Left = 157
        Top = 197
        Width = 231
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'email'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object efax: TDBEdit
        Left = 49
        Top = 197
        Width = 73
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fax'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object esite: TDBEdit
        Left = 50
        Top = 214
        Width = 338
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'site'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object eddd: TDBEdit
        Left = 170
        Top = 181
        Width = 28
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ddd'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object ecep: TDBEdit
        Left = 25
        Top = 114
        Width = 73
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cep'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyDown = ecepKeyDown
      end
      object ENumero: TDBEdit
        Left = 71
        Top = 133
        Width = 55
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'numero'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object EComplemento: TDBEdit
        Left = 173
        Top = 132
        Width = 89
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'complemento'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object EContato: TDBEdit
        Left = 313
        Top = 132
        Width = 75
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'contato'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object EFantasia: TDBEdit
        Left = 88
        Top = 81
        Width = 169
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fantasia'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 313
        Top = 165
        Width = 75
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'rjcomercial'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object DBComboBox1: TDBComboBox
        Left = 259
        Top = 81
        Width = 85
        Height = 17
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'tipo'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 11
        Items.Strings = (
          'SIMPLES'
          'NORMAL')
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 329
        Top = 149
        Width = 58
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'municipion'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object eemp: TDBComboBox
        Left = 346
        Top = 81
        Width = 42
        Height = 17
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'emp'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 11
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        ParentFont = False
        TabOrder = 25
      end
      object DBEdit2: TDBEdit
        Left = 87
        Top = 257
        Width = 253
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dirnfe'
        DataSource = fdm.dsempresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object DBEdit3: TDBEdit
        Left = 82
        Top = 230
        Width = 253
        Height = 15
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'lembrete'
        DataSource = fdm.dsempresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object DBCheckBox1: TDBCheckBox
        Left = 337
        Top = 230
        Width = 50
        Height = 15
        Caption = 'Exibir?'
        Color = 10485760
        DataField = 'legenda'
        DataSource = fdm.dsempresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object tabsel: TTabSheet
      Caption = 'tabsel'
      ImageIndex = 6
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 368
        Height = 204
        Align = alTop
        ColCount = 2
        DataSource = fdm.dsquery1
        PanelHeight = 17
        PanelWidth = 176
        TabOrder = 0
        RowCount = 12
        OnKeyDown = DBCtrlGrid1KeyDown
        object DBText2: TDBText
          Left = 2
          Top = 2
          Width = 175
          Height = 15
          DataField = 'nome'
          DataSource = fdm.dsquery1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = DBText2Click
        end
      end
    end
    object Tabcorrecal: TTabSheet
      Caption = 'Tabcorrecal'
      ImageIndex = 7
      object Label38: TLabel
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
      object Label39: TLabel
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
      object Label40: TLabel
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
      object Label41: TLabel
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
      object Button6: TButton
        Left = 240
        Top = 341
        Width = 75
        Height = 22
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
        TabOrder = 41
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
        TabOrder = 42
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
        TabOrder = 44
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
        TabOrder = 45
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
        TabOrder = 46
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
        TabOrder = 48
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
        TabOrder = 49
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
        TabOrder = 50
      end
      object correcao: TRLReport
        Left = -512
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
        ExpressionParser = fdm.Expressao
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
          Height = 954
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
          object RLMemo1: TRLMemo
            Left = 0
            Top = 0
            Width = 740
            Height = 954
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
                '                                                                ' +
                '                        Atenciosamente'
              'Acusamos recebimento da 1'#170' via'
              ''
              '_____________________________'
              '(Local e data)'
              ''
              ''
              ''
              ''
              
                '                                                                ' +
                '                                                    ____________' +
                '______________'
              ''
              ''
              ''
              '______________________________'
              '(Carimbo e assinatura)')
            ParentFont = False
          end
          object RLMemo6: TRLMemo
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
          object RLMemo2: TRLMemo
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
          object RLMemo3: TRLMemo
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
          object RLMemo5: TRLMemo
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
              ' ')
            ParentFont = False
          end
          object RLMemo7: TRLMemo
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
          object RLMemo10: TRLMemo
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
              ' ')
            ParentFont = False
          end
          object RLLabel8: TRLLabel
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
          object RLLabel9: TRLLabel
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
          object RLLabel10: TRLLabel
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
          object RLMemo11: TRLMemo
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
          object l2: TRLLabel
            Left = 211
            Top = 127
            Width = 14
            Height = 16
          end
          object l3: TRLLabel
            Left = 408
            Top = 127
            Width = 14
            Height = 16
          end
          object l4: TRLLabel
            Left = 521
            Top = 127
            Width = 14
            Height = 16
          end
          object l5: TRLLabel
            Left = 211
            Top = 145
            Width = 14
            Height = 16
          end
          object l6: TRLLabel
            Left = 408
            Top = 145
            Width = 14
            Height = 16
          end
          object l7: TRLLabel
            Left = 521
            Top = 145
            Width = 14
            Height = 16
          end
          object l8: TRLLabel
            Left = 1
            Top = 738
            Width = 18
            Height = 16
            Caption = 'L8'
          end
          object l1: TRLLabel
            Left = 3
            Top = 1
            Width = 183
            Height = 16
            Caption = 'Carimbo Padronizado do CNPJ'
          end
        end
      end
    end
    object vitalcred: TTabSheet
      Caption = 'vitalcred'
      ImageIndex = 9
      object gradevital: TDBGrid
        Left = 0
        Top = 18
        Width = 607
        Height = 271
        Align = alTop
        FixedColor = 15857656
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
      end
      object Button5: TButton
        Left = 208
        Top = 291
        Width = 72
        Height = 22
        Caption = 'Processar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button5Click
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 0
        Width = 258
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Selecione com CTRL pressionada  e processe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object vitalcred1: TTabSheet
      Caption = 'vitalcred1'
      ImageIndex = 10
      object pmenu1: TPanel
        Left = 0
        Top = 0
        Width = 607
        Height = 55
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label51: TLabel
          Left = 245
          Top = 12
          Width = 17
          Height = 14
          Caption = 'De:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label52: TLabel
          Left = 253
          Top = 33
          Width = 11
          Height = 14
          Caption = 'A:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btvitaltransf: TSpeedButton
          Left = 435
          Top = 6
          Width = 126
          Height = 22
          Caption = 'Transferir/Atualizar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btvitaltransfClick
        end
        object btvitalimp: TSpeedButton
          Left = 435
          Top = 30
          Width = 126
          Height = 22
          Caption = 'Imprimir...'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btvitalimpClick
        end
        object mvital2: TMaskEdit
          Left = 265
          Top = 31
          Width = 74
          Height = 19
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          EditMask = '99/99/9999'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnKeyDown = mvital2KeyDown
        end
        object mvital1: TMaskEdit
          Left = 265
          Top = 10
          Width = 74
          Height = 19
          HelpType = htKeyword
          BevelInner = bvLowered
          BevelKind = bkSoft
          BiDiMode = bdRightToLeft
          BorderStyle = bsNone
          CharCase = ecUpperCase
          EditMask = '99/99/9999'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object rgvital2: TRadioGroup
          Left = 113
          Top = 2
          Width = 120
          Height = 51
          Align = alLeft
          Caption = 'Mostrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o Importados'
            'Importados')
          ParentFont = False
          TabOrder = 2
          OnClick = rgvital2Click
        end
        object rgvital: TRadioGroup
          Left = 2
          Top = 2
          Width = 111
          Height = 51
          Align = alLeft
          Caption = 'Mostrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Cart'#227'o Cr'#233'dito'
            'Cart'#227'o D'#233'bito')
          ParentFont = False
          TabOrder = 3
          OnClick = rgvital2Click
        end
      end
      object gradevital1: TDBGrid
        Left = 0
        Top = 55
        Width = 607
        Height = 209
        Align = alClient
        FixedColor = 15857656
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnEnter = gradevital1Enter
        OnExit = gradevital1Exit
        OnTitleClick = gradevital1TitleClick
      end
    end
    object Tabpaf: TTabSheet
      Caption = 'Tabpaf'
      ImageIndex = 10
      object Label43: TLabel
        Left = 313
        Top = 14
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'User'
      end
      object Label44: TLabel
        Left = 313
        Top = -1
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Senha'
      end
      object lhostpaf: TLabel
        Left = 1
        Top = 14
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'host'
      end
      object Label46: TLabel
        Left = 1
        Top = -1
        Width = 60
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Base'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label46Click
      end
      object paf1: TBitBtn
        Left = 8
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = paf1Click
      end
      object paf2: TBitBtn
        Left = 92
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Banco*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object paf3: TBitBtn
        Left = 176
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Caixas*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object paf4: TBitBtn
        Left = 260
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Contador*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object paf5: TBitBtn
        Left = 344
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Conv'#234'nio*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object paf6: TBitBtn
        Left = 428
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = paf6Click
      end
      object paf7: TBitBtn
        Left = 512
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Prazo Pgto*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object paf8: TBitBtn
        Left = 8
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Froma Pgto*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object paf9: TBitBtn
        Left = 175
        Top = 88
        Width = 75
        Height = 25
        Caption = 'ECFs*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object paf10: TBitBtn
        Left = 259
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Cart'#245'es*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object paf11: TBitBtn
        Left = 343
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Un Medida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = paf11Click
      end
      object paf12: TBitBtn
        Left = 427
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Usu'#225'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object paf15: TBitBtn
        Left = 427
        Top = 136
        Width = 75
        Height = 22
        Caption = 'Exportar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = paf15Click
      end
      object paf13: TBitBtn
        Left = 511
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = paf13Click
      end
      object paf14: TBitBtn
        Left = 92
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = paf14Click
      end
      object luser: TEdit
        Left = 376
        Top = 14
        Width = 150
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 15
        Text = 'SYSDBA'
      end
      object lpassword: TEdit
        Left = 376
        Top = -1
        Width = 150
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 16
        Text = 'masterkey'
      end
      object lhostname: TEdit
        Left = 64
        Top = 14
        Width = 267
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 17
        Text = 'LOCALHOST'
      end
      object ldatabase: TEdit
        Left = 64
        Top = -1
        Width = 267
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 18
        Text = 'C:/Sistemas Axial/Dados/AXIAL_PAF.FDB'
      end
      object BitBtn2: TBitBtn
        Left = 528
        Top = 1
        Width = 42
        Height = 27
        Caption = 'Testar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnClick = BitBtn2Click
      end
      object paf16: TBitBtn
        Left = 511
        Top = 136
        Width = 75
        Height = 22
        Caption = 'Importar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        OnClick = paf16Click
      end
    end
  end
  object btnsair: TBitBtn
    Left = 434
    Top = 203
    Width = 72
    Height = 22
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnsairClick
  end
  object tbcaixagrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 184
    object tbcaixagrupochave: TIntegerField
      FieldName = 'chave'
      Required = True
    end
    object tbcaixagrupomodo: TStringField
      FieldName = 'modo'
      Size = 8
    end
    object tbcaixagruponumerocaixa: TIntegerField
      FieldName = 'numerocaixa'
    end
    object tbcaixagrupodatainicial: TDateField
      FieldName = 'datainicial'
    end
    object tbcaixagrupodatafinal: TDateField
      FieldName = 'datafinal'
    end
    object tbcaixagrupohoraabertura: TTimeField
      FieldName = 'horaabertura'
    end
    object tbcaixagrupohorafechamento: TTimeField
      FieldName = 'horafechamento'
    end
    object tbcaixagrupousuario: TStringField
      FieldName = 'usuario'
    end
    object tbcaixagrupovalorinicial: TFloatField
      FieldName = 'valorinicial'
    end
    object tbcaixagrupoemp: TIntegerField
      FieldName = 'emp'
    end
  end
  object ActionList1: TActionList
    Left = 80
    Top = 184
    object imemp: TAction
      Caption = 'imemp'
      OnExecute = imempExecute
    end
    object periodovital1: TAction
      Caption = 'periodovital1'
      OnExecute = periodovital1Execute
    end
    object _tababrecaixa: TAction
      Caption = '_tababrecaixa'
      OnExecute = _tababrecaixaExecute
    end
    object _tabbanco: TAction
      Caption = '_tabbanco'
      OnExecute = _tabbancoExecute
    end
    object _tabbancoc: TAction
      Caption = '_tabbancoc'
      OnExecute = _tabbancocExecute
    end
    object _taborcqtd: TAction
      Caption = '_taborcqtd'
    end
    object _tabponto: TAction
      Caption = '_tabponto'
      OnExecute = _tabpontoExecute
    end
    object _tabempresa: TAction
      Caption = '_tabempresa'
      OnExecute = _tabempresaExecute
    end
    object _tabsel: TAction
      Caption = '_tabsel'
      OnExecute = _tabselExecute
    end
    object _Tabcorrecal: TAction
      Caption = '_Tabcorrecal'
      OnExecute = _TabcorrecalExecute
    end
    object _tabplanalmed: TAction
      Caption = '_tabplanalmed'
    end
    object _vitalcred: TAction
      Caption = '_vitalcred'
      OnExecute = _vitalcredExecute
    end
    object _vitalcred1: TAction
      Caption = '_vitalcred1'
      OnExecute = _vitalcred1Execute
    end
    object _Tabpaf: TAction
      Caption = '_Tabpaf'
      OnExecute = _TabpafExecute
    end
  end
  object tbbanco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 196
    Top = 184
    object tbbancochave: TIntegerField
      FieldName = 'chave'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbbancoconta: TStringField
      FieldName = 'conta'
      Size = 9
    end
    object tbbancodata: TDateField
      FieldName = 'data'
      EditMask = '99/99/9999'
    end
    object tbbancohora: TTimeField
      FieldName = 'hora'
      EditMask = '99:99'
    end
    object tbbancodc: TStringField
      FieldName = 'dc'
      Size = 9
    end
    object tbbancodocumento: TStringField
      FieldName = 'documento'
      Size = 15
    end
    object tbbancovalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
    end
    object tbbancohistorico: TStringField
      FieldName = 'historico'
      Size = 100
    end
    object tbbancomodulo: TStringField
      FieldName = 'modulo'
      Size = 1
    end
    object tbbancolinkvenda: TIntegerField
      FieldName = 'linkvenda'
    end
    object tbbancotipo: TStringField
      FieldName = 'tipo'
    end
    object tbbancousu: TIntegerField
      FieldName = 'usu'
    end
    object tbbancodtcompensacao: TDateField
      FieldName = 'dtcompensacao'
      EditMask = '99/99/9999'
    end
  end
  object dsbanco: TDataSource
    DataSet = tbbanco
    Left = 136
    Top = 184
  end
  object tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 372
    Top = 184
    object tabelacont: TIntegerField
      FieldName = 'cont'
    end
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 316
    Top = 184
  end
  object q: TZQuery
    Connection = conector
    Params = <>
    Left = 56
    Top = 152
  end
  object conector: TZConnection
    Protocol = 'firebird-2.0'
    HostName = 'localhost'
    Database = 'D:\mysql\AXIAL_PAF.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Left = 16
    Top = 152
  end
end
