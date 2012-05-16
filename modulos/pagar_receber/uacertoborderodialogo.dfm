object facertoborderodialogo: Tfacertoborderodialogo
  Left = 255
  Top = 25
  BorderStyle = bsDialog
  Caption = 'INFORMA'#199#213'ES '
  ClientHeight = 474
  ClientWidth = 313
  Color = 15921906
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    313
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 1
    Width = 313
    Height = 143
  end
  object lvalor: TLabel
    Left = 204
    Top = 43
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'lvalor'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ldataacerto: TLabel
    Left = 204
    Top = 63
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ldataacerto'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ldatamedio: TLabel
    Left = 204
    Top = 83
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ldatamedio'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ldataantiga: TLabel
    Left = 204
    Top = 103
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ldataantiga'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lprazomedio: TLabel
    Left = 204
    Top = 123
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'lprazomedio'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 5
    Top = 123
    Width = 199
    Height = 18
    AutoSize = False
    Caption = 'Prazo m'#233'dio concedido = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 5
    Top = 103
    Width = 199
    Height = 18
    AutoSize = False
    Caption = 'Data mais antiga               = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 5
    Top = 83
    Width = 200
    Height = 18
    AutoSize = False
    Caption = 'Data m'#233'dia de compra    = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 5
    Top = 63
    Width = 199
    Height = 18
    AutoSize = False
    Caption = 'Data do acerto                   = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 5
    Top = 43
    Width = 199
    Height = 18
    AutoSize = False
    Caption = 'Valor do acerto                  = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ltotal: TLabel
    Left = 228
    Top = 398
    Width = 85
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Color = 3692158
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13434879
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lprazodata: TLabel
    Left = 88
    Top = 420
    Width = 85
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 3692158
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13434879
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 188
    Top = 398
    Width = 37
    Height = 16
    Caption = 'Soma'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 6
    Top = 398
    Width = 80
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Prazo M'#233'dio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 6
    Top = 420
    Width = 80
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Dt. M'#233'dia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lprazo: TLabel
    Left = 88
    Top = 398
    Width = 85
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 3692158
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13434879
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 6
    Top = 441
    Width = 80
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Permitido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lpermitido: TLabel
    Left = 88
    Top = 441
    Width = 85
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 3692158
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13434879
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 280
    Top = 162
    Width = 32
    Height = 21
    Hint = 'APAGAR REGISTRO SELECIONADO'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777777777771F77771F7777777777777111F777777
      1F7777111F777771F777777111F77711F7777777111F711F77777777711111F7
      7777777777111F7777777777711111F777777777111F71F77777771111F77711
      F77771111F7777711F77711F7777777711F77777777777777777}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Label9: TLabel
    Left = 2
    Top = 148
    Width = 100
    Height = 14
    Caption = 'Tipo Recebimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 18
    Top = 195
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
  object Label12: TLabel
    Left = 80
    Top = 195
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
  object SpeedButton2: TSpeedButton
    Left = 281
    Top = 448
    Width = 30
    Height = 25
    Hint = 'Calendario'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
      777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
      79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
      777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
      79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
      CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton2Click
  end
  object Label13: TLabel
    Left = 5
    Top = 3
    Width = 199
    Height = 18
    AutoSize = False
    Caption = 'Soma das Vendas            = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lsoma: TLabel
    Left = 204
    Top = 3
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'soma'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label15: TLabel
    Left = 5
    Top = 23
    Width = 199
    Height = 18
    AutoSize = False
    Caption = 'Desconto                            = '
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ldesconto: TLabel
    Left = 204
    Top = 23
    Width = 103
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'desconto'
    Color = 15269887
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object ldiferenca: TLabel
    Left = 228
    Top = 419
    Width = 85
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Color = 3692158
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13434879
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label16: TLabel
    Left = 180
    Top = 419
    Width = 44
    Height = 16
    Cursor = crHandPoint
    Caption = 'Faltam'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = Label16Click
  end
  object Label14: TLabel
    Left = 110
    Top = 148
    Width = 84
    Height = 14
    Cursor = crHandPoint
    Caption = 'Escolha a conta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = Label14Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 231
    Width = 312
    Height = 161
    DataSource = ds
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'recebimento'
        PickList.Strings = (
          '')
        Title.Caption = 'Recebimento'
        Title.Color = clNavy
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Title.Color = clNavy
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Title.Color = clNavy
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cheque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ag'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codconta'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 448
    Width = 40
    Height = 25
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 225
    Top = 448
    Width = 56
    Height = 25
    Caption = 'C&ancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object ComboBox1: TComboBox
    Left = 2
    Top = 162
    Width = 107
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnEnter = ComboBox1Enter
    OnExit = ComboBox1Exit
    OnKeyPress = ComboBox1KeyPress
    Items.Strings = (
      #192' VISTA'
      'A PRAZO'
      'CHEQUE'
      'CART'#195'O')
  end
  object MaskEdit1: TMaskEdit
    Left = -1
    Top = 207
    Width = 65
    Height = 17
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999'
    MaxLength = 10
    ParentBiDiMode = False
    TabOrder = 2
    Text = '  /  /    '
    OnEnter = MaskEdit1Enter
    OnExit = MaskEdit1Exit
  end
  object Edit1: TEdit
    Left = 65
    Top = 207
    Width = 58
    Height = 17
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    ParentBiDiMode = False
    TabOrder = 3
    OnEnter = Edit1Enter
    OnExit = Edit1Exit
    OnKeyDown = Edit1KeyDown
  end
  object pcheque2: TPanel
    Left = 123
    Top = 193
    Width = 192
    Height = 31
    BevelInner = bvLowered
    Color = 14017770
    TabOrder = 4
    Visible = False
    object lconta: TLabel
      Left = 152
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
      Left = 115
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
    object Label17: TLabel
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
      OnClick = Label17Click
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
      Left = 139
      Top = 13
      Width = 50
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
      OnKeyDown = econtaKeyDown
    end
    object eagencia: TEdit
      Left = 101
      Top = 13
      Width = 38
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
    end
    object ebanco: TEdit
      Left = 38
      Top = 13
      Width = 64
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
    end
  end
  object etipoconta: TDBLookupComboBox
    Left = 111
    Top = 162
    Width = 166
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
    TabOrder = 1
  end
  object tabela: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'data'
    Params = <>
    StoreDefs = True
    Left = 156
    Top = 293
    object tabelarecebimento: TStringField
      DisplayWidth = 25
      FieldName = 'recebimento'
    end
    object tabelavalor: TFloatField
      DisplayWidth = 14
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
    end
    object tabeladata: TDateField
      DisplayWidth = 13
      FieldName = 'data'
      EditMask = '99/99/9999'
    end
    object tabelacheque: TStringField
      FieldName = 'cheque'
    end
    object tabelabanco: TStringField
      FieldName = 'banco'
    end
    object tabelaag: TStringField
      FieldName = 'ag'
    end
    object tabelaconta: TStringField
      FieldName = 'conta'
    end
    object tabelacodconta: TIntegerField
      FieldName = 'codconta'
    end
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 244
    Top = 276
  end
  object ActionList1: TActionList
    Left = 76
    Top = 288
    object avista: TAction
      Caption = 'avista'
      OnExecute = avistaExecute
    end
    object cartao: TAction
      Caption = 'cartao'
      OnExecute = cartaoExecute
    end
    object chequepre: TAction
      Caption = 'chequepre'
      OnExecute = chequepreExecute
    end
    object aprazo: TAction
      Caption = 'aprazo'
      OnExecute = aprazoExecute
    end
    object TOTAL: TAction
      Caption = 'TOTAL'
      OnExecute = TOTALExecute
    end
  end
  object t1: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbconta order by descricao')
    Params = <>
    Left = 240
    Top = 328
  end
  object d1: TDataSource
    DataSet = t1
    Left = 164
    Top = 340
  end
end
